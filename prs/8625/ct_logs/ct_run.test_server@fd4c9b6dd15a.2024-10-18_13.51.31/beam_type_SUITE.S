{module, beam_type_SUITE}.  %% version = 0

{exports, [{all,0},
           {arity_checks,1},
           {bad_binary_unit,1},
           {binary_float,1},
           {binary_unit,1},
           {booleans,1},
           {connected_tuple_elements,1},
           {cons,1},
           {container_subtraction,1},
           {cover_convert_ext,1},
           {cover_lists_functions,1},
           {cover_maps_functions,1},
           {coverage,1},
           {elixir_binaries,1},
           {end_per_group,2},
           {end_per_suite,1},
           {failures,1},
           {find_best,1},
           {float_compare,1},
           {float_confusion,1},
           {float_overflow,1},
           {funs,1},
           {groups,0},
           {id,1},
           {infer_relops,1},
           {init_per_group,2},
           {init_per_suite,1},
           {integers,1},
           {is_list_opt,1},
           {list_append,1},
           {min_max_mixed_types,1},
           {module_info,0},
           {module_info,1},
           {none_argument,1},
           {not_equal,1},
           {numbers,1},
           {premature_concretization,1},
           {record_float,1},
           {setelement,1},
           {success_type_oscillation,1},
           {suite,0},
           {switch_fail_inference,1},
           {test_size,1},
           {tuple,1},
           {type_subtraction,1},
           {will_succeed,1}]}.

{attributes, []}.

{labels, 942}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_type_SUITE.erl",40}]}.
    {func_info,{atom,beam_type_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_type_SUITE.erl",42}]}.
    {func_info,{atom,beam_type_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_type_SUITE.erl",45}]}.
    {func_info,{atom,beam_type_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [integers,numbers,coverage,booleans,setelement,cons,
                        tuple,record_float,binary_float,float_compare,
                        float_overflow,arity_checks,elixir_binaries,find_best,
                        test_size,cover_lists_functions,list_append,
                        bad_binary_unit,none_argument,
                        success_type_oscillation,type_subtraction,
                        container_subtraction,is_list_opt,
                        connected_tuple_elements,switch_fail_inference,
                        failures,cover_maps_functions,min_max_mixed_types,
                        not_equal,infer_relops,binary_unit,
                        premature_concretization,funs,will_succeed,
                        float_confusion,cover_convert_ext]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_type_SUITE.erl",85}]}.
    {func_info,{atom,beam_type_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_type_SUITE},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",86}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_type_SUITE.erl",89}]}.
    {func_info,{atom,beam_type_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_type_SUITE.erl",92}]}.
    {func_info,{atom,beam_type_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_type_SUITE.erl",95}]}.
    {func_info,{atom,beam_type_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, integers, 1, 16}.
  {label,15}.
    {line,[{location,"beam_type_SUITE.erl",98}]}.
    {func_info,{atom,beam_type_SUITE},{atom,integers},1}.
  {label,16}.
    {allocate,11,0}.
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
                       {y,10}]}}.
    {move,{integer,24},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",99}]}.
    {call,1,{f,48}}. % do_integers_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,46},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {move,{integer,25},{x,0}}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",100}]}.
    {call,1,{f,48}}. % do_integers_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,45},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",102}]}.
    {call,1,{f,51}}. % do_integers_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'catch',{y,10},{f,17}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",103}]}.
    {call,1,{f,51}}. % do_integers_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,17}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,44},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,44},[{x,1}]}.
    {test,test_arity,{f,44},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,44},[{x,1},{literal,{case_clause,-1}}]}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",105}]}.
    {call,0,{f,55}}. % do_integers_3/0
    {'%',{var_info,{x,0},[{type,{t_atom,[college]}}]}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",107}]}.
    {call,2,{f,57}}. % do_integers_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,other,zero]}}]}}.
    {test,is_eq_exact,
          {f,43},
          [{tr,{x,0},{t_atom,[one,other,zero]}},{atom,zero}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",108}]}.
    {call,2,{f,57}}. % do_integers_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,other,zero]}}]}}.
    {test,is_eq_exact,
          {f,42},
          [{tr,{x,0},{t_atom,[one,other,zero]}},{atom,one}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",109}]}.
    {call,2,{f,57}}. % do_integers_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,other,zero]}}]}}.
    {test,is_eq_exact,
          {f,41},
          [{tr,{x,0},{t_atom,[one,other,zero]}},{atom,other}]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",111}]}.
    {call,2,{f,65}}. % do_integers_5/2
    {'%',{var_info,{x,0},[{type,{t_atom,[zero]}}]}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",112}]}.
    {call,2,{f,65}}. % do_integers_5/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",113}]}.
    {call,2,{f,65}}. % do_integers_5/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{integer,3},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",114}]}.
    {call,2,{f,65}}. % do_integers_5/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {'catch',{y,9},{f,18}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",116}]}.
    {call,0,{f,71}}. % do_integers_6/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,18}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,40},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,40},[{x,1},2,{atom,badarith}]}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",118}]}.
    {call,0,{f,73}}. % do_integers_7/0
    {'%',{var_info,{x,0},[{type,{t_atom,[house]}}]}}.
    {'catch',{y,8},{f,19}}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",120}]}.
    {call,0,{f,77}}. % do_integers_8/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
  {label,19}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,39},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,39},[{x,1},2,{atom,badarith}]}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",122}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,10}}.
    {move,{integer,1},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,10},{x,0}}.
    {init_yregs,{list,[{y,10}]}}.
    {call,2,{f,79}}. % do_integers_9/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,38},[{tr,{x,0},{t_number,any}},{integer,-693}]}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",124}]}.
    {call,2,{f,81}}. % do_integers_10/2
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,37},[{tr,{x,0},{t_integer,any}},{integer,3}]}.
    {move,{integer,-5},{x,1}}.
    {move,{integer,-2},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",125}]}.
    {call,2,{f,81}}. % do_integers_10/2
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,36},[{tr,{x,0},{t_integer,any}},{integer,10}]}.
    {'catch',{y,7},{f,20}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",127}]}.
    {call,1,{f,84}}. % do_integers_11/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,20}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,35},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,35},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,6},{f,21}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",128}]}.
    {call,1,{f,84}}. % do_integers_11/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,21}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,34},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,34},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,5},{f,22}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",130}]}.
    {call,1,{f,86}}. % do_integers_12/1
    {'%',{var_info,{x,0},[{type,{t_integer,{42,'+inf'}}}]}}.
  {label,22}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,33},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,33},[{x,1},2,{atom,system_limit}]}.
    {'catch',{y,4},{f,23}}.
    {move,nil,{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",131}]}.
    {call,1,{f,86}}. % do_integers_12/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,23}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,32},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,32},[{x,1},2,{atom,system_limit}]}.
    {'catch',{y,3},{f,24}}.
    {move,{integer,-43},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",133}]}.
    {call,1,{f,88}}. % do_integers_13/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,24}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,31},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,31},[{x,1}]}.
    {test,test_arity,{f,31},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,31},[{x,1},{literal,{badmatch,42}}]}.
    {'catch',{y,2},{f,25}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",134}]}.
    {call,1,{f,88}}. % do_integers_13/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,25}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,30},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,30},[{x,1}]}.
    {test,test_arity,{f,30},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,30},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,1},{f,26}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",135}]}.
    {call,1,{f,88}}. % do_integers_13/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,26}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,29},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,29},[{x,1}]}.
    {test,test_arity,{f,29},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,29},[{x,1},{literal,{badmatch,-1}}]}.
    {'catch',{y,0},{f,27}}.
    {move,{integer,17},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",136}]}.
    {call,1,{f,88}}. % do_integers_13/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,27}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,28},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,28},[{x,1}]}.
    {test,test_arity,{f,28},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,28},[{x,1},{literal,{badmatch,-18}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,11}.
    return.
  {label,28}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",136}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",135}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",134}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",133}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",131}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",130}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",128}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",127}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",125}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",124}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",116}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",108}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",107}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",103}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",100}]}.
    {badmatch,{atom,a}}.
  {label,46}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",99}]}.
    {badmatch,{atom,b}}.


{function, do_integers_1, 1, 48}.
  {label,47}.
    {line,[{location,"beam_type_SUITE.erl",140}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_1},1}.
  {label,48}.
    {'%',{var_info,{x,0},[{type,{t_integer,{24,25}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",141}]}.
    {gc_bif,'band',{f,0},1,[{tr,{x,0},{t_integer,{24,25}}},{integer,1}],{x,0}}.
    {test,is_eq_exact,{f,49},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,49}.
    {move,{atom,b},{x,0}}.
    return.


{function, do_integers_2, 1, 51}.
  {label,50}.
    {line,[{location,"beam_type_SUITE.erl",147}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_2},1}.
  {label,51}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,52},
              {x,0},
              {commands,[{ensure_exactly,1},
                         {integer,2,{literal,[signed]},1,1,{x,2}}]}}.
    {test,is_eq_exact,{f,53},[{x,2},{integer,0}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,52}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"beam_type_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{location,"beam_type_SUITE.erl",149}]}.
    {case_end,{integer,-1}}.


{function, do_integers_3, 0, 55}.
  {label,54}.
    {line,[{location,"beam_type_SUITE.erl",154}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_3},0}.
  {label,55}.
    {move,{atom,college},{x,0}}.
    return.


{function, do_integers_4, 2, 57}.
  {label,56}.
    {line,[{location,"beam_type_SUITE.erl",160}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_4},2}.
  {label,57}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,2}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,61},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}},
                         {get_tail,3,1,{x,0}}]}}.
    {line,[{location,"beam_type_SUITE.erl",164}]}.
    {gc_bif,'bor',
            {f,0},
            3,
            [{tr,{x,2},{t_integer,{0,1}}},{tr,{x,1},{t_integer,{0,2}}}],
            {x,2}}.
    {select_val,{tr,{x,2},{t_integer,{0,3}}},
                {f,60},
                {list,[{integer,0},{f,59},{integer,1},{f,58}]}}.
  {label,58}.
    {move,{atom,one},{x,2}}.
    {call_only,3,{f,63}}. % do_integers_4/3
  {label,59}.
    {move,{atom,zero},{x,2}}.
    {call_only,3,{f,63}}. % do_integers_4/3
  {label,60}.
    {move,{atom,other},{x,2}}.
    {call_only,3,{f,63}}. % do_integers_4/3
  {label,61}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,56}}.


{function, do_integers_4, 3, 63}.
  {label,62}.
    {line,[{location,"beam_type_SUITE.erl",170}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_4},3}.
  {label,63}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,2}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[one,other,zero]}}]}}.
    {move,{x,2},{x,0}}.
    return.


{function, do_integers_5, 2, 65}.
  {label,64}.
    {line,[{location,"beam_type_SUITE.erl",173}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_5},2}.
  {label,65}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {select_val,{tr,{x,1},{t_integer,{0,3}}},
                {f,69},
                {list,[{integer,0},
                       {f,68},
                       {integer,1},
                       {f,67},
                       {integer,2},
                       {f,66}]}}.
  {label,66}.
    {move,{atom,two},{x,0}}.
    return.
  {label,67}.
    {move,{atom,one},{x,0}}.
    return.
  {label,68}.
    {move,{atom,zero},{x,0}}.
    return.
  {label,69}.
    {move,{atom,three},{x,0}}.
    return.


{function, do_integers_6, 0, 71}.
  {label,70}.
    {line,[{location,"beam_type_SUITE.erl",184}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_6},0}.
  {label,71}.
    {line,[{location,"beam_type_SUITE.erl",185}]}.
    {gc_bif,'band',{f,0},0,[{atom,b},{integer,0}],{x,0}}.
    return.


{function, do_integers_7, 0, 73}.
  {label,72}.
    {line,[{location,"beam_type_SUITE.erl",187}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_7},0}.
  {label,73}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,75}}.
    {'try',{y,0},{f,74}}.
    {move,{atom,any},{x,1}}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",192}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {try_end,{y,0}}.
    {line,[{location,"beam_type_SUITE.erl",190}]}.
    {gc_bif,'band',{f,0},0,[{atom,ok},{integer,0}],{x,0}}.
    {jump,{f,75}}.
  {label,74}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,75}.
    {try_case,{y,1}}.
    {move,{atom,house},{x,0}}.
    {deallocate,2}.
    return.


{function, do_integers_8, 0, 77}.
  {label,76}.
    {line,[{location,"beam_type_SUITE.erl",203}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_8},0}.
  {label,77}.
    {line,[{location,"beam_type_SUITE.erl",204}]}.
    {gc_bif,'div',{f,0},0,[{integer,0},{integer,0}],{x,0}}.
    {move,{integer,0},{x,0}}.
    return.


{function, do_integers_9, 2, 79}.
  {label,78}.
    {line,[{location,"beam_type_SUITE.erl",206}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_9},2}.
  {label,79}.
    {line,[{location,"beam_type_SUITE.erl",207}]}.
    {gc_bif,'band',{f,0},2,[{x,1},{integer,1}],{x,1}}.
    {gc_bif,'bor',{f,0},2,[{tr,{x,1},{t_integer,{0,1}}},{integer,-100}],{x,1}}.
    {gc_bif,'*',{f,0},2,[{x,0},{tr,{x,1},{t_integer,{'-inf',-99}}}],{x,0}}.
    return.


{function, do_integers_10, 2, 81}.
  {label,80}.
    {line,[{location,"beam_type_SUITE.erl",209}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_10},2}.
  {label,81}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-2,1}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{-5,2}}}]}}.
    {test,is_lt,
          {f,82},
          [{tr,{x,0},{t_integer,{-2,1}}},{tr,{x,1},{t_integer,{-5,2}}}]}.
    {line,[{location,"beam_type_SUITE.erl",211}]}.
    {gc_bif,'+',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{-2,1}}},{tr,{x,1},{t_integer,{-1,2}}}],
            {x,0}}.
    return.
  {label,82}.
    {line,[{location,"beam_type_SUITE.erl",212}]}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{-2,1}}},{tr,{x,1},{t_integer,{-5,1}}}],
            {x,0}}.
    return.


{function, do_integers_11, 1, 84}.
  {label,83}.
    {line,[{location,"beam_type_SUITE.erl",215}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_11},1}.
  {label,84}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"beam_type_SUITE.erl",216}]}.
    {gc_bif,'-',
            {f,0},
            1,
            [{atom,true},
             {tr,{x,0},
                 {t_union,none,none,
                          {t_integer,{42,42}},
                          [{{2,{t_atom,[a]}},
                            {t_tuple,2,true,
                                     #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                          none}}],
            {x,0}}.
    return.


{function, do_integers_12, 1, 86}.
  {label,85}.
    {line,[{location,"beam_type_SUITE.erl",218}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_12},1}.
  {label,86}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,none}}]}}.
    {line,[{location,"beam_type_SUITE.erl",219}]}.
    {gc_bif,'bsl',
            {f,0},
            1,
            [{integer,1},{integer,1267650600228229401496703205376}],
            {x,1}}.
    {gc_bif,'+',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,'+inf'}}},
             {tr,{x,0},{t_union,none,nil,{t_integer,{42,42}},none,none}}],
            {x,0}}.
    return.


{function, do_integers_13, 1, 88}.
  {label,87}.
    {line,[{location,"beam_type_SUITE.erl",222}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_13},1}.
  {label,88}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-43,17}}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {'try',{y,3},{f,89}}.
    {line,[{location,"beam_type_SUITE.erl",223}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,0},{t_integer,{-43,17}}},
                          {integer,8}]}}.
    {call,1,{f,94}}. % do_integers_13_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {try_end,{y,3}}.
    {move,{atom,should_fail},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",224}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,89}.
    {try_case,{y,3}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {'try',{y,3},{f,90}}.
    {move,{y,2},{x,0}}.
    {line,[{scope,"\t"},{location,"beam_type_SUITE.erl",227}]}.
    {call,1,{f,98}}. % do_integers_13_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{-42,'+inf'}}}]}}.
    {try_end,{y,3}}.
    {move,{atom,should_fail},{x,0}}.
    {line,[{scope,"\t"},{location,"beam_type_SUITE.erl",228}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,90}.
    {try_case,{y,3}}.
    {test,is_eq_exact,
          {f,92},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,1},{t_atom,[error,exit,throw]}}]}.
    {test,is_eq_exact,{f,92},[{x,1},{y,0}]}.
    {'try',{y,3},{f,91}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[3]},{location,"beam_type_SUITE.erl",231}]}.
    {call,1,{f,101}}. % do_integers_13_3/1
    {'%',{var_info,{x,0},[{type,{t_integer,{-42,'+inf'}}}]}}.
    {try_end,{y,3}}.
    {move,{atom,should_fail},{x,0}}.
    {line,[{scope,[3]},{location,"beam_type_SUITE.erl",232}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,91}.
    {try_case,{y,3}}.
    {test,is_eq_exact,
          {f,92},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,1},{t_atom,[error,exit,throw]}}]}.
    {test,is_eq_exact,{f,92},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    raw_raise.
    {deallocate,4}.
    return.
  {label,92}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, do_integers_13_1, 1, 94}.
  {label,93}.
    {line,[{location,"beam_type_SUITE.erl",240}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_13_1},1}.
  {label,94}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,95},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {line,[{location,"beam_type_SUITE.erl",241}]}.
    {gc_bif,'bnot',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}}],{x,0}}.
    {test,is_eq_exact,
          {f,96},
          [{tr,{x,0},{t_integer,{-256,-1}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,0},{t_integer,{0,255}}},
                          {integer,8}]}}.
    return.
  {label,95}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,93}}.
  {label,96}.
    {badmatch,{x,0}}.


{function, do_integers_13_2, 1, 98}.
  {label,97}.
    {line,[{location,"beam_type_SUITE.erl",243}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_13_2},1}.
  {label,98}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-43,17}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",244}]}.
    {gc_bif,'bnot',{f,0},1,[{tr,{x,0},{t_integer,{-43,17}}}],{x,1}}.
    {test,is_eq_exact,
          {f,99},
          [{tr,{x,1},{t_integer,{-18,42}}},{tr,{x,0},{t_integer,{-43,17}}}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{-18,17}}},{integer,1}],{x,0}}.
    return.
  {label,99}.
    {badmatch,{x,1}}.


{function, do_integers_13_3, 1, 101}.
  {label,100}.
    {line,[{location,"beam_type_SUITE.erl",246}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_13_3},1}.
  {label,101}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-43,17}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",247}]}.
    {gc_bif,'bnot',{f,0},1,[{tr,{x,0},{t_integer,{-43,17}}}],{x,1}}.
    {test,is_eq_exact,
          {f,102},
          [{tr,{x,1},{t_integer,{-18,42}}},{tr,{x,0},{t_integer,{-43,17}}}]}.
    {line,[{location,"beam_type_SUITE.erl",248}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_integer,{-43,17}}},{integer,1}],{x,0}}.
    return.
  {label,102}.
    {line,[{location,"beam_type_SUITE.erl",247}]}.
    {badmatch,{x,1}}.


{function, numbers, 1, 104}.
  {label,103}.
    {line,[{location,"beam_type_SUITE.erl",250}]}.
    {func_info,{atom,beam_type_SUITE},{atom,numbers},1}.
  {label,104}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",251}]}.
    {call,1,{f,838}}. % id/1
    {test,is_integer,{f,122},[{x,0}]}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",256}]}.
    {call,1,{f,838}}. % id/1
    {test,is_float,{f,121},[{x,0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",261}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,838}}. % id/1
    {gc_bif,'+',{f,0},1,[{y,0},{x,0}],{x,0}}.
    {test,is_integer,{f,120},[{tr,{x,0},{t_number,any}}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{float,99.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",266}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {call,1,{f,838}}. % id/1
    {gc_bif,'+',{f,0},1,[{y,0},{x,0}],{x,0}}.
    {test,is_float,{f,119},[{tr,{x,0},{t_number,any}}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",271}]}.
    {call,1,{f,838}}. % id/1
    {test,is_atom,{f,118},[{x,0}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",284}]}.
    {call,1,{f,838}}. % id/1
    {select_val,{x,0},{f,117},{list,[{atom,a},{f,106},{atom,b},{f,105}]}}.
  {label,105}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",286}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,838}}. % id/1
    {fconv,{y,0},{fr,0}}.
    {fconv,{x,0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {jump,{f,107}}.
  {label,106}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",285}]}.
    {call,1,{f,838}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,3}],{x,0}}.
  {label,107}.
    {test,is_integer,{f,116},[{tr,{x,0},{t_number,any}}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",290}]}.
    {call,1,{f,838}}. % id/1
    {select_val,{x,0},{f,115},{list,[{atom,a},{f,109},{atom,b},{f,108}]}}.
  {label,108}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",292}]}.
    {call,1,{f,838}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,110}}.
  {label,109}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",291}]}.
    {call,1,{f,838}}. % id/1
    {fconv,{x,0},{fr,0}}.
    {fmove,{float,2.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
  {label,110}.
    {test,is_float,{f,114},[{tr,{x,0},{t_number,any}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",298}]}.
    {call,1,{f,838}}. % id/1
    {fconv,{x,0},{fr,0}}.
    {fmove,{float,-10.0},{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",299}]}.
    {gc_bif,abs,{f,0},1,[{tr,{x,0},{t_float,any}}],{x,0}}.
    {test,is_eq_exact,{f,113},[{tr,{x,0},{t_float,any}},{float,10.0}]}.
    {move,{float,1.0},{x,1}}.
    {move,{float,0.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",302}]}.
    {call,2,{f,124}}. % fcmp/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,112},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{float,0.0},{x,1}}.
    {move,{float,1.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",303}]}.
    {call,2,{f,124}}. % fcmp/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,111},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,111}.
    {badmatch,{atom,ok}}.
  {label,112}.
    {line,[{location,"beam_type_SUITE.erl",302}]}.
    {badmatch,{atom,error}}.
  {label,113}.
    {line,[{location,"beam_type_SUITE.erl",299}]}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{location,"beam_type_SUITE.erl",294}]}.
    {badmatch,{atom,false}}.
  {label,115}.
    {line,[{location,"beam_type_SUITE.erl",290}]}.
    {case_end,{x,0}}.
  {label,116}.
    {line,[{location,"beam_type_SUITE.erl",288}]}.
    {badmatch,{atom,false}}.
  {label,117}.
    {line,[{location,"beam_type_SUITE.erl",284}]}.
    {case_end,{x,0}}.
  {label,118}.
    {line,[{location,"beam_type_SUITE.erl",272}]}.
    {badmatch,{atom,false}}.
  {label,119}.
    {line,[{location,"beam_type_SUITE.erl",267}]}.
    {badmatch,{atom,false}}.
  {label,120}.
    {line,[{location,"beam_type_SUITE.erl",263}]}.
    {badmatch,{atom,false}}.
  {label,121}.
    {line,[{location,"beam_type_SUITE.erl",257}]}.
    {badmatch,{atom,false}}.
  {label,122}.
    {line,[{location,"beam_type_SUITE.erl",252}]}.
    {badmatch,{atom,false}}.


{function, fcmp, 2, 124}.
  {label,123}.
    {line,[{location,"beam_type_SUITE.erl",307}]}.
    {func_info,{atom,beam_type_SUITE},{atom,fcmp},2}.
  {label,124}.
    {'%',{var_info,{x,0},[{type,{t_float,{0.0,1.0}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_float,{0.0,1.0}}}]}}.
    {test,is_eq_exact,{f,125},[{tr,{x,0},{t_float,{0.0,1.0}}},{float,0.0}]}.
    {test,is_ne_exact,{f,126},[{tr,{x,1},{t_float,{0.0,1.0}}},{float,0.0}]}.
  {label,125}.
    {gc_bif,'-',
            {f,127},
            2,
            [{tr,{x,0},{t_float,{0.0,1.0}}},{tr,{x,1},{t_float,{0.0,1.0}}}],
            {x,0}}.
    {gc_bif,'/',
            {f,127},
            2,
            [{tr,{x,0},{t_float,any}},{tr,{x,1},{t_float,{0.0,1.0}}}],
            {x,0}}.
    {test,is_lt,{f,127},[{tr,{x,0},{t_float,any}},{float,1.0e-7}]}.
  {label,126}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,127}.
    {move,{atom,error},{x,0}}.
    return.


{function, coverage, 1, 129}.
  {label,128}.
    {line,[{location,"beam_type_SUITE.erl",311}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage},1}.
  {label,129}.
    {allocate,16,1}.
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
                       {y,11},
                       {y,12},
                       {y,13},
                       {y,14}]}}.
    {move,{x,0},{y,10}}.
    {'catch',{y,15},{f,130}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",312}]}.
    {call,1,{f,838}}. % id/1
    {gc_bif,'bsl',{f,0},1,[{x,0},{float,0.5}],{x,0}}.
  {label,130}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,168},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,168},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,14},{f,131}}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,[31,32]},{location,"beam_type_SUITE.erl",313}]}.
    {call,1,{f,838}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",313}]}.
    {gc_bif,'bsl',{f,0},1,[{x,0},{integer,2}],{x,0}}.
  {label,131}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,167},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,167},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,13},{f,132}}.
    {line,[{location,"beam_type_SUITE.erl",314}]}.
    {gc_bif,'+',{f,0},0,[{atom,a},{float,0.5}],{x,0}}.
  {label,132}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,166},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,166},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,12},{f,133}}.
    {line,[{location,"beam_type_SUITE.erl",315}]}.
    {gc_bif,'*',{f,0},0,[{float,2.0},{atom,b}],{x,0}}.
  {label,133}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,165},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,11},{f,134}}.
    {move,{float,42.0},{x,0}}.
    {line,[{scope,[25,26]},{location,"beam_type_SUITE.erl",317}]}.
    {call,1,{f,838}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",317}]}.
    {fconv,{x,0},{fr,0}}.
    {fconv,{integer,114813069527425452423283320117768198402231770208869520047764273682576626139237031385665948631650626991844596463898746277344711896086305533142593135616665318539129989145312280000688779148240044871428926990063486244781615463646388363947317026040466353970904996558162398808944629605623311649536164221970332681344168908984458505602379484807914058900934776500429002716706625830522008132236281291761267883317206598995396418127021779858404042159853183251540889433902091920554957783589672039160081957216630582755380425583726015528348786419432054508915275783882625175435528800822842770817965453762184851149029376},
           {fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
  {label,134}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,164},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,164},[{x,1},2,{atom,badarith}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",319}]}.
    {call,1,{f,838}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",319}]}.
    {gc_bif,'band',
            {f,0},
            1,
            [{x,0},{integer,387439739874298734983787934283479243879}],
            {x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",319}]}.
    {call,1,{f,838}}. % id/1
    {move,{integer,13},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",320}]}.
    {call,1,{f,838}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",320}]}.
    {gc_bif,'band',{f,0},1,[{x,0},{integer,-1}],{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",320}]}.
    {call,1,{f,838}}. % id/1
    {test,bs_start_match3,{f,135},0,[{y,10}],{x,0}}.
    {bs_match,{f,163},{x,0},{commands,[{ensure_exactly,8}]}}.
    {test,is_binary,{f,163},[{tr,{y,10},{t_bs_matchable,1}}]}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",339}]}.
    {badmatch,{atom,impossible}}.
  {label,135}.
    {test,is_nonempty_list,{f,163},[{y,10}]}.
    {'catch',{y,10},{f,136}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",347}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,15}}.
    {move,{integer,1},{x,0}}.
    {call,1,{f,838}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",347}]}.
    {fconv,{y,15},{fr,0}}.
    {fconv,{x,0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {gc_bif,'band',{f,0},1,[{tr,{x,0},{t_float,any}},{integer,255}],{x,0}}.
  {label,136}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,162},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,9},{f,137}}.
    {init_yregs,{list,[{y,10}]}}.
    {line,[{scope,[21,22]},{location,"beam_type_SUITE.erl",351}]}.
    {call,0,{f,170}}. % coverage_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,137}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,161},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,161},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,8},{f,138}}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",353}]}.
    {call,0,{f,172}}. % coverage_2/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,138}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,160},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,160},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,7},{f,139}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",355}]}.
    {call,1,{f,174}}. % coverage_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,139}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,159},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,159},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,6},{f,140}}.
    {move,{literal,"b"},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",356}]}.
    {call,1,{f,174}}. % coverage_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,140}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,158},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,158},[{x,1},2,{atom,function_clause}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",358}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,15}}.
    {test,is_ge,{f,157},[{x,0},{integer,0}]}.
    {test,is_lt,
          {f,157},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,any,any},
                        {t_number,{0,'+inf'}},
                        {t_tuple,0,false,#{}},
                        other}},
           {integer,10}]}.
    {move,{x,0},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",361}]}.
    {call,2,{f,176}}. % coverage_4/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,156},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {move,{y,15},{x,1}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",362}]}.
    {call,2,{f,176}}. % coverage_4/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,155},[{tr,{x,0},{t_number,any}},{integer,10}]}.
    {move,{y,15},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",363}]}.
    {call,2,{f,176}}. % coverage_4/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,154},[{tr,{x,0},{t_number,any}},{integer,20}]}.
    {move,{y,15},{x,1}}.
    {init_yregs,{list,[{y,15}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",364}]}.
    {call,2,{f,176}}. % coverage_4/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,153},[{tr,{x,0},{t_number,any}},{integer,30}]}.
    {'catch',{y,5},{f,141}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",367}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
  {label,141}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,152},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,152},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,4},{f,142}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",368}]}.
    {call_ext,2,{extfunc,erlang,'--',2}}.
  {label,142}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,151},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,151},[{x,1},2,{atom,badarg}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",370}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,178}}. % coverage_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,143}}.
    {move,{float,0.0},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",371}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,178}}. % coverage_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,143}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,150},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,150},[{x,1},2,{atom,function_clause}]}.
    {move,{integer,16},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",372}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,178}}. % coverage_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,144}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",373}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,178}}. % coverage_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,144}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,149},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,149},[{x,1}]}.
    {test,test_arity,{f,149},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,149},[{x,1},{literal,{case_clause,false}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",375}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,181}}. % coverage_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,145}}.
    {move,{float,0.0},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",376}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,181}}. % coverage_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,145}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,148},[{x,0},{atom,ok}]}.
    {move,{integer,16},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",377}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,181}}. % coverage_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,146}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",378}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,181}}. % coverage_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,146}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,147},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,147},[{x,1}]}.
    {test,test_arity,{f,147},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,147},[{x,1},{literal,{case_clause,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,16}.
    return.
  {label,147}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",378}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",376}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",373}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",371}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",368}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",367}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",364}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",363}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",362}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",361}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",359}]}.
    if_end.
  {label,158}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",356}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",355}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",339}]}.
    {case_end,{y,10}}.
  {label,164}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",317}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",315}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",314}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,[28]},{location,"beam_type_SUITE.erl",313}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{scope,[30]},{location,"beam_type_SUITE.erl",312}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 0, 170}.
  {label,169}.
    {line,[{location,"beam_type_SUITE.erl",382}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage_1},0}.
  {label,170}.
    {line,[{location,"beam_type_SUITE.erl",389}]}.
    {gc_bif,'*',{f,0},0,[nil,nil],{x,0}}.
    return.


{function, coverage_2, 0, 172}.
  {label,171}.
    {line,[{location,"beam_type_SUITE.erl",392}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage_2},0}.
  {label,172}.
    {line,[{location,"beam_type_SUITE.erl",393}]}.
    {gc_bif,'bsr',{f,0},0,[{literal,"bc"},nil],{x,0}}.
    return.


{function, coverage_3, 1, 174}.
  {label,173}.
    {line,[{location,"beam_type_SUITE.erl",396}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage_3},1}.
  {label,174}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{97,98}},nil}}]}}.
    {jump,{f,173}}.


{function, coverage_4, 2, 176}.
  {label,175}.
    {line,[{location,"beam_type_SUITE.erl",399}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage_4},2}.
  {label,176}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-1,2}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{0,10}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",400}]}.
    {gc_bif,'+',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{-1,2}}},{tr,{x,1},{t_number,{0,10}}}],
            {x,0}}.
    {gc_bif,'*',{f,0},1,[{tr,{x,0},{t_number,{-1,12}}},{integer,10}],{x,0}}.
    return.


{function, coverage_5, 1, 178}.
  {label,177}.
    {line,[{location,"beam_type_SUITE.erl",402}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage_5},1}.
  {label,178}.
    {test,is_integer,{f,177},[{x,0}]}.
    {test,is_ge,{f,179},[{tr,{x,0},{t_integer,any}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,179}.
    {line,[{location,"beam_type_SUITE.erl",403}]}.
    {case_end,{atom,false}}.


{function, coverage_6, 1, 181}.
  {label,180}.
    {line,[{location,"beam_type_SUITE.erl",410}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage_6},1}.
  {label,181}.
    {test,is_ge,{f,182},[{x,0},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,182}.
    {line,[{location,"beam_type_SUITE.erl",411}]}.
    {case_end,{atom,false}}.


{function, booleans, 1, 184}.
  {label,183}.
    {line,[{location,"beam_type_SUITE.erl",419}]}.
    {func_info,{atom,beam_type_SUITE},{atom,booleans},1}.
  {label,184}.
    {allocate,9,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {'catch',{y,8},{f,185}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",420}]}.
    {call,1,{f,217}}. % do_booleans_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,185}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,215},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,215},[{x,1}]}.
    {test,test_arity,{f,215},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,215},[{x,1},2,{atom,case_clause}]}.
    {move,{integer,41},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",422}]}.
    {call,2,{f,219}}. % do_booleans_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,214},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{integer,42},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",423}]}.
    {call,2,{f,219}}. % do_booleans_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,213},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",425}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{atom,false},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,8}]}}.
    {call,2,{f,224}}. % do_booleans_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,212},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",426}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,8}]}}.
    {call,2,{f,224}}. % do_booleans_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,211},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",427}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{atom,false},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,8}]}}.
    {call,2,{f,224}}. % do_booleans_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,210},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",428}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,8}]}}.
    {call,2,{f,224}}. % do_booleans_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,209},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",430}]}.
    {call,1,{f,838}}. % id/1
    {test,is_atom,{f,208},[{x,0}]}.
    {test,is_boolean,{f,186},[{tr,{x,0},{t_atom,any}}]}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",432}]}.
    {badmatch,{atom,true}}.
  {label,186}.
    {move,{atom,'maybe'},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",434}]}.
    {call,1,{f,838}}. % id/1
    {select_val,{x,0},
                {f,207},
                {list,[{atom,false},
                       {f,206},
                       {atom,'maybe'},
                       {f,187},
                       {atom,true},
                       {f,206}]}}.
  {label,187}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",442}]}.
    {call,1,{f,838}}. % id/1
    {select_val,{x,0},
                {f,205},
                {list,[{atom,a},{f,188},{atom,b},{f,188},{atom,c},{f,188}]}}.
  {label,188}.
    {'catch',{y,7},{f,189}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",450}]}.
    {call,1,{f,227}}. % do_booleans_4/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,189}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,204},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,204},[{x,1}]}.
    {test,test_arity,{f,204},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,204},[{x,1},{literal,{case_clause,false}}]}.
    {'catch',{y,6},{f,190}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",451}]}.
    {call,1,{f,227}}. % do_booleans_4/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,190}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,203},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,203},[{x,1}]}.
    {test,test_arity,{f,203},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,203},[{x,1},{literal,{case_clause,true}}]}.
    {'catch',{y,5},{f,191}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",452}]}.
    {call,1,{f,227}}. % do_booleans_4/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,191}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,202},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,202},[{x,1}]}.
    {test,test_arity,{f,202},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,202},[{x,1},{literal,{case_clause,true}}]}.
    {'catch',{y,4},{f,192}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",453}]}.
    {call,1,{f,227}}. % do_booleans_4/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,192}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,201},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,201},[{x,1}]}.
    {test,test_arity,{f,201},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,201},[{x,1},{literal,{badmatch,true}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",455}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{y,7},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,7},{y,8}]}}.
    {call,3,{f,230}}. % do_booleans_5/3
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {'catch',{y,3},{f,193}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",456}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{y,7},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,7},{y,8}]}}.
    {call,3,{f,233}}. % do_booleans_6/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,193}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,200},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,200},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,194}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",458}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,235}}. % do_booleans_7/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,194}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,199},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,199},[{x,1}]}.
    {test,test_arity,{f,199},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,199},[{x,1},2,{atom,bad_filter}]}.
    {'catch',{y,1},{f,195}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",459}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,243}}. % do_booleans_8/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false,true]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
  {label,195}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,198},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,198},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,196}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",460}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,248}}. % do_booleans_9/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,196}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,197},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,197},[{x,1}]}.
    {test,test_arity,{f,197},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,197},[{x,1},2,{atom,try_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,9}.
    return.
  {label,197}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",460}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",459}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",458}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",456}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",453}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",452}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",451}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",450}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",443}]}.
    {case_end,{x,0}}.
  {label,206}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",440}]}.
    {badmatch,{atom,true}}.
  {label,207}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",435}]}.
    {case_end,{x,0}}.
  {label,208}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",431}]}.
    {badmatch,{atom,false}}.
  {label,209}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",428}]}.
    {badmatch,{atom,ok}}.
  {label,210}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",427}]}.
    {badmatch,{atom,ok}}.
  {label,211}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",426}]}.
    {badmatch,{atom,ok}}.
  {label,212}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",425}]}.
    {badmatch,{atom,error}}.
  {label,213}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",423}]}.
    {badmatch,{atom,ok}}.
  {label,214}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",422}]}.
    {badmatch,{atom,error}}.
  {label,215}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",420}]}.
    {badmatch,{x,0}}.


{function, do_booleans_1, 1, 217}.
  {label,216}.
    {line,[{location,"beam_type_SUITE.erl",464}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_1},1}.
  {label,217}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",465}]}.
    {case_end,{atom,true}}.


{function, do_booleans_2, 2, 219}.
  {label,218}.
    {line,[{location,"beam_type_SUITE.erl",470}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_2},2}.
  {label,219}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{41,42}}}]}}.
    {allocate,0,2}.
    {line,[{location,"beam_type_SUITE.erl",471}]}.
    {call,2,{f,222}}. % do_booleans_cmp/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,220},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,220}.
    {move,{atom,error},{x,0}}.
    {deallocate,0}.
    return.


{function, do_booleans_cmp, 2, 222}.
  {label,221}.
    {line,[{location,"beam_type_SUITE.erl",481}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_cmp},2}.
  {label,222}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{41,42}}}]}}.
    {bif,'>=',{f,0},[{integer,41},{tr,{x,1},{t_integer,{41,42}}}],{x,0}}.
    return.


{function, do_booleans_3, 2, 224}.
  {label,223}.
    {line,[{location,"beam_type_SUITE.erl",483}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_3},2}.
  {label,224}.
    {test,is_nil,{f,225},[{x,0}]}.
    {test,is_eq_exact,{f,225},[{x,1},{atom,false}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,225}.
    {move,{atom,error},{x,0}}.
    return.


{function, do_booleans_4, 1, 227}.
  {label,226}.
    {line,[{location,"beam_type_SUITE.erl",490}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_4},1}.
  {label,227}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a,false,true]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,none}}]}}.
    {bif,is_atom,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[a,false,true]},
                       none,
                       {t_integer,{42,42}},
                       none,none}}],
         {x,1}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,0},
               {t_union,{t_atom,[a,false,true]},
                        none,
                        {t_integer,{42,42}},
                        none,none}},
           {atom,true}]}.
    {line,[{location,"beam_type_SUITE.erl",493}]}.
    {badmatch,{atom,true}}.
  {label,228}.
    {line,[{location,"beam_type_SUITE.erl",491}]}.
    {case_end,{x,1}}.


{function, do_booleans_5, 3, 230}.
  {label,229}.
    {line,[{location,"beam_type_SUITE.erl",497}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_5},3}.
  {label,230}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,229},3,[{x,1}],{x,3}}.
    {bs_get_position,{x,3},{x,1},4}.
    {bs_match,{f,231},
              {x,3},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_eq_exact,{f,231},[{tr,{x,4},{t_integer,{0,255}}},{x,0}]}.
    {test,is_eq_exact,{f,231},[{x,2},{tr,{x,0},{t_integer,{0,255}}}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,231}.
    {bs_set_position,{x,3},{x,1}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {jump,{f,229}}.


{function, do_booleans_6, 3, 233}.
  {label,232}.
    {line,[{location,"beam_type_SUITE.erl",500}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_6},3}.
  {label,233}.
    {test,is_nonempty_list,{f,232},[{x,2}]}.
    {get_tl,{x,2},{x,3}}.
    {bif,'=:=',{f,0},[{x,1},{x,0}],{x,4}}.
    {bif,'=:=',{f,0},[{tr,{x,2},{t_cons,any,any}},{x,0}],{x,5}}.
    {bif,'=:=',{f,0},[{x,3},{x,0}],{x,3}}.
    {bif,'and',
         {f,0},
         [{tr,{x,5},{t_atom,[false,true]}},{tr,{x,3},{t_atom,[false,true]}}],
         {x,3}}.
    {test,is_eq_exact,{f,232},[{tr,{x,4},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,232},[{tr,{x,3},{t_atom,[false,true]}},{atom,true}]}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {call_only,1,{f,941}}. % '-do_booleans_6/3-lc$^0/1-0-'/1


{function, do_booleans_7, 1, 235}.
  {label,234}.
    {line,[{location,"beam_type_SUITE.erl",506}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_7},1}.
  {label,235}.
    {allocate,2,1}.
    {move,{x,0},{y,0}}.
    {'try',{y,1},{f,238}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",508}]}.
    {call_ext,1,{extfunc,beam_type_SUITE,id,1}}.
    {move,nil,{x,1}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,nil,{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,2,{extfunc,erlang,'--',2}}.
    {bif,'=/=',{f,0},[{tr,{x,0},{t_list,any,nil}},{atom,ok}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}],{x,0}}.
    {test,is_eq_exact,{f,236},[{x,0},{atom,true}]}.
    {move,{literal,[0]},{x,0}}.
    {jump,{f,237}}.
  {label,236}.
    {move,nil,{x,0}}.
  {label,237}.
    {try_end,{y,1}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",510}]}.
    {call,1,{f,241}}. % do_booleans_7_a/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},nil]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,238}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,239},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_nil,{f,239},[{x,1}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,241},2}. % do_booleans_7_a/1
  {label,239}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, do_booleans_7_a, 1, 241}.
  {label,240}.
    {line,[{location,"beam_type_SUITE.erl",517}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_7_a},1}.
  {label,241}.
    {move,nil,{x,0}}.
    return.


{function, do_booleans_8, 1, 243}.
  {label,242}.
    {line,[{location,"beam_type_SUITE.erl",520}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_8},1}.
  {label,243}.
    {test,is_nonempty_list,{f,242},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,1},{x,0}}.
    {'try',{y,2},{f,245}}.
    {line,[{location,"beam_type_SUITE.erl",522}]}.
    {call,1,{f,937}}. % '-do_booleans_8/1-lc$^0/1-0-'/1
    {move,{x,0},{y,0}}.
    {'%',{var_info,{y,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {'catch',{y,1},{f,244}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,244}.
    {catch_end,{y,1}}.
    {bif,'<',{f,0},[{x,0},{tr,{y,0},{t_list,{t_atom,[ok]},nil}}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {try_end,{y,2}}.
    {deallocate,3}.
    return.
  {label,245}.
    {try_case,{y,2}}.
    {test,bs_start_match3,{f,246},3,[{x,1}],{x,3}}.
    {test,bs_get_integer2,
          {f,246},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {y,1},
           1,
           {field_flags,[{anno,[524,{file,"beam_type_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,246},{x,3},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,246},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{x,4},{x,0}}.
    {deallocate,3}.
    return.
  {label,246}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, do_booleans_9, 1, 248}.
  {label,247}.
    {line,[{location,"beam_type_SUITE.erl",528}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_9},1}.
  {label,248}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {'try',{y,2},{f,250}}.
    {line,[{location,"beam_type_SUITE.erl",530}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
    {bif,'or',{f,0},[{x,0},{atom,true}],{y,0}}.
    {fmove,{float,1.0},{fr,0}}.
    {fmove,{float,0.0},{fr,1}}.
    {'catch',{y,1},{f,249}}.
    {line,[{location,"beam_type_SUITE.erl",531}]}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
  {label,249}.
    {catch_end,{y,1}}.
    {bif,is_tuple,{f,0},[{x,0}],{x,0}}.
    {bif,'xor',
         {f,0},
         [{tr,{y,0},{t_atom,[false,true]}},{tr,{x,0},{t_atom,[false,true]}}],
         {x,0}}.
    {try_end,{y,2}}.
    {line,[{scope,[4,5]},{location,"beam_type_SUITE.erl",529}]}.
    {try_case_end,{x,0}}.
  {label,250}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,251},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {bif,'<',{f,0},[{atom,ok},{y,1}],{x,0}}.
    {deallocate,3}.
    return.
  {label,251}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, setelement, 1, 253}.
  {label,252}.
    {line,[{location,"beam_type_SUITE.erl",543}]}.
    {func_info,{atom,beam_type_SUITE},{atom,setelement},1}.
  {label,253}.
    {allocate,12,0}.
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
                       {y,11}]}}.
    {move,{literal,{a,42}},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",544}]}.
    {call,1,{f,838}}. % id/1
    {test,is_tagged_tuple,{f,293},[{x,0},2,{atom,a}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",547}]}.
    {call,1,{f,838}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,32,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,32}]}}.
    {move,{atom,z},{x,2}}.
    {move,{literal,{a,b}},{x,1}}.
    {call,3,{f,301}}. % do_setelement_1/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,292},
          [{tr,{x,0},{t_tuple,2,true,#{}}},{literal,{z,b}}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",548}]}.
    {call,1,{f,838}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,1}]}}.
    {move,{atom,new},{x,2}}.
    {move,{literal,{one,two}},{x,1}}.
    {call,3,{f,304}}. % do_setelement_2/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[new]},
                                     2 => {t_atom,[two]}}}}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",549}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,11}}.
    {move,{literal,{a,b}},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{atom,x},{x,2}}.
    {move,{y,11},{x,0}}.
    {init_yregs,{list,[{y,11}]}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {test,is_eq_exact,
          {f,291},
          [{tr,{x,0},{t_tuple,1,false,#{}}},{literal,{x,b}}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",551}]}.
    {call,1,{f,838}}. % id/1
    {select_val,{x,0},
                {f,290},
                {list,[{integer,0},{f,255},{integer,1},{f,254}]}}.
  {label,254}.
    {move,{integer,2},{x,0}}.
    {jump,{f,256}}.
  {label,255}.
    {move,{integer,1},{x,0}}.
  {label,256}.
    {move,{atom,x},{x,2}}.
    {move,{literal,{a,b,c}},{x,1}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",555}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {test,is_eq_exact,
          {f,289},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{a,x,c}}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",557}]}.
    {call,1,{f,838}}. % id/1
    {select_val,{x,0},
                {f,288},
                {list,[{integer,0},{f,258},{integer,1},{f,257}]}}.
  {label,257}.
    {move,{integer,5},{x,0}}.
    {jump,{f,259}}.
  {label,258}.
    {move,{integer,4},{x,0}}.
  {label,259}.
    {'catch',{y,11},{f,260}}.
    {move,{atom,y},{x,2}}.
    {move,{literal,{a,b,c}},{x,1}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",561}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,260}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,287},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,287},[{x,1},2,{atom,badarg}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",565}]}.
    {call,1,{f,298}}. % tuple_or_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,any},
                                   {t_tuple,1,true,#{}},
                                   none}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,1},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",566}]}.
    {call,1,{f,295}}. % record_or_integer/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,any},
                     [{{1,{t_atom,[tuple]}},
                       {t_tuple,1,true,#{1 => {t_atom,[tuple]}}}}],
                     none}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,1},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {'catch',{y,10},{f,261}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",567}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,298}}. % tuple_or_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,any},
                                   {t_tuple,1,true,#{}},
                                   none}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,2},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,261}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,286},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,286},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,9},{f,262}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[21,22]},{location,"beam_type_SUITE.erl",568}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,298}}. % tuple_or_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,any},
                                   {t_tuple,1,true,#{}},
                                   none}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,2},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,262}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,285},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,285},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,8},{f,263}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",569}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,295}}. % record_or_integer/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,any},
                     [{{1,{t_atom,[tuple]}},
                       {t_tuple,1,true,#{1 => {t_atom,[tuple]}}}}],
                     none}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,2},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,263}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,284},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,284},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,7},{f,264}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",570}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,295}}. % record_or_integer/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,any},
                     [{{1,{t_atom,[tuple]}},
                       {t_tuple,1,true,#{1 => {t_atom,[tuple]}}}}],
                     none}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,2},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,264}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,283},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,283},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,6},{f,265}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",571}]}.
    {call,1,{f,838}}. % id/1
    {move,{atom,y},{x,2}}.
    {move,{atom,not_a_tuple},{x,1}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,265}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,282},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,282},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,5},{f,266}}.
    {move,{atom,not_a_tuple},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",574}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,266}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,281},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,281},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,4},{f,267}}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{atom,not_an_index},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",575}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,267}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,280},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,280},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,3},{f,268}}.
    {move,{literal,{out_of_range}},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",576}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,268}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,279},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,279},[{x,1},2,{atom,badarg}]}.
    {move,{atom,y},{x,1}}.
    {move,{literal,{update_tuple_a,undefined,undefined}},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",577}]}.
    {call,2,{f,307}}. % update_tuple_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,false,
                                   #{1 => {t_atom,[y]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[undefined]}}}}]}}.
    {test,is_tagged_tuple,
          {f,278},
          [{tr,{x,0},
               {t_tuple,3,false,
                        #{1 => {t_atom,[y]},
                          2 => {t_atom,[undefined]},
                          3 => {t_atom,[undefined]}}}},
           3,
           {atom,y}]}.
    {move,{atom,y},{x,1}}.
    {move,{literal,{update_tuple_b,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",578}]}.
    {call,2,{f,307}}. % update_tuple_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,false,
                                   #{1 => {t_atom,[y]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[undefined]}}}}]}}.
    {test,is_tagged_tuple,
          {f,277},
          [{tr,{x,0},
               {t_tuple,3,false,
                        #{1 => {t_atom,[y]},
                          2 => {t_atom,[undefined]},
                          3 => {t_atom,[undefined]}}}},
           4,
           {atom,y}]}.
    {move,{atom,y},{x,1}}.
    {move,{literal,{update_tuple_a,undefined,undefined}},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",579}]}.
    {call,2,{f,311}}. % update_tuple_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[update_tuple_a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[update_tuple_a]},
                             2 => {t_atom,[y]},
                             3 => {t_atom,[undefined]}}}},
                      {{4,{t_atom,[update_tuple_b]}},
                       {t_tuple,4,true,
                           #{1 => {t_atom,[update_tuple_b]},
                             2 => {t_atom,[y]},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]}}}}],
                     none}}]}}.
    {test,test_arity,{f,276},[{x,0},3]}.
    {move,{atom,y},{x,1}}.
    {move,{literal,{update_tuple_b,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",580}]}.
    {call,2,{f,311}}. % update_tuple_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[update_tuple_a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[update_tuple_a]},
                             2 => {t_atom,[y]},
                             3 => {t_atom,[undefined]}}}},
                      {{4,{t_atom,[update_tuple_b]}},
                       {t_tuple,4,true,
                           #{1 => {t_atom,[update_tuple_b]},
                             2 => {t_atom,[y]},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]}}}}],
                     none}}]}}.
    {test,test_arity,{f,275},[{x,0},4]}.
    {'catch',{y,2},{f,269}}.
    {move,{literal,{update_tuple_a,undefined,undefined}},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",581}]}.
    {call,1,{f,838}}. % id/1
    {move,{atom,y},{x,1}}.
    {call,2,{f,315}}. % update_tuple_3/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,269}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,274},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,274},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,1},{f,270}}.
    {move,{literal,{update_tuple_b,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",582}]}.
    {call,1,{f,838}}. % id/1
    {move,{atom,y},{x,1}}.
    {call,2,{f,315}}. % update_tuple_3/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,270}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,273},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,273},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,271}}.
    {move,{literal,{update_tuple_a,undefined,undefined}},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",583}]}.
    {call,1,{f,838}}. % id/1
    {move,{atom,y},{x,1}}.
    {call,2,{f,321}}. % update_tuple_4/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_atom,[update_tuple_b]},
                                     4 => {t_atom,[y]}}}}]}}.
  {label,271}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,272},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,272},[{x,1},2,{atom,badarg}]}.
    {move,{literal,{update_tuple_b,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[1,2]},{location,"beam_type_SUITE.erl",584}]}.
    {call,1,{f,838}}. % id/1
    {move,{atom,y},{x,1}}.
    {call,2,{f,321}}. % update_tuple_4/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_atom,[update_tuple_b]},
                                     4 => {t_atom,[y]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,12}.
    return.
  {label,272}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",583}]}.
    {badmatch,{x,0}}.
  {label,273}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",582}]}.
    {badmatch,{x,0}}.
  {label,274}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",581}]}.
    {badmatch,{x,0}}.
  {label,275}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",580}]}.
    {badmatch,{literal,{update_tuple_a,y,undefined}}}.
  {label,276}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",579}]}.
    {badmatch,{literal,{update_tuple_b,y,undefined,undefined}}}.
  {label,277}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",578}]}.
    {badmatch,{x,0}}.
  {label,278}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",577}]}.
    {badmatch,{x,0}}.
  {label,279}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",576}]}.
    {badmatch,{x,0}}.
  {label,280}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,281}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,282}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,283}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,284}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",569}]}.
    {badmatch,{x,0}}.
  {label,285}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",568}]}.
    {badmatch,{x,0}}.
  {label,286}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",567}]}.
    {badmatch,{x,0}}.
  {label,287}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",561}]}.
    {badmatch,{x,0}}.
  {label,288}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",557}]}.
    {case_end,{x,0}}.
  {label,289}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",555}]}.
    {badmatch,{x,0}}.
  {label,290}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",551}]}.
    {case_end,{x,0}}.
  {label,291}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",549}]}.
    {badmatch,{x,0}}.
  {label,292}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",547}]}.
    {badmatch,{x,0}}.
  {label,293}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",545}]}.
    {badmatch,{x,0}}.


{function, record_or_integer, 1, 295}.
  {label,294}.
    {line,[{location,"beam_type_SUITE.erl",588}]}.
    {func_info,{atom,beam_type_SUITE},{atom,record_or_integer},1}.
  {label,295}.
    {test,is_eq_exact,{f,296},[{x,0},{integer,0}]}.
    {move,{literal,{tuple}},{x,0}}.
    return.
  {label,296}.
    {test,is_integer,{f,294},[{x,0}]}.
    return.


{function, tuple_or_integer, 1, 298}.
  {label,297}.
    {line,[{location,"beam_type_SUITE.erl",593}]}.
    {func_info,{atom,beam_type_SUITE},{atom,tuple_or_integer},1}.
  {label,298}.
    {test,is_eq_exact,{f,299},[{x,0},{integer,0}]}.
    {allocate,0,0}.
    {move,{atom,tuple},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",594}]}.
    {call,1,{f,838}}. % id/1
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {deallocate,0}.
    return.
  {label,299}.
    {test,is_integer,{f,297},[{x,0}]}.
    return.


{function, do_setelement_1, 3, 301}.
  {label,300}.
    {line,[{location,"beam_type_SUITE.erl",598}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_setelement_1},3}.
  {label,301}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[z]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,302},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {line,[{location,"beam_type_SUITE.erl",599}]}.
    {bif,element,
         {f,0},
         [{tr,{x,4},{t_integer,{0,4294967295}}},{literal,{a,b}}],
         {x,0}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",602}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,302}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,300}}.


{function, do_setelement_2, 3, 304}.
  {label,303}.
    {line,[{location,"beam_type_SUITE.erl",604}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_setelement_2},3}.
  {label,304}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[one]},
                                     2 => {t_atom,[two]}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[new]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,305},
              {x,0},
              {commands,[{ensure_exactly,1},
                         {integer,4,{literal,[]},1,1,{x,4}}]}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",608}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,305}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,303}}.


{function, update_tuple_1, 2, 307}.
  {label,306}.
    {line,[{location,"beam_type_SUITE.erl",610}]}.
    {func_info,{atom,beam_type_SUITE},{atom,update_tuple_1},2}.
  {label,307}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[update_tuple_a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[update_tuple_a]},
                             2 => {t_atom,[undefined]},
                             3 => {t_atom,[undefined]}}}},
                      {{4,{t_atom,[update_tuple_b]}},
                       {t_tuple,4,true,
                           #{1 => {t_atom,[update_tuple_b]},
                             2 => {t_atom,[undefined]},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]}}}}],
                     none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[y]}}]}}.
    {select_tuple_arity,
        {tr,{x,0},
            {t_union,none,none,none,
                [{{3,{t_atom,[update_tuple_a]}},
                  {t_tuple,3,true,
                      #{1 => {t_atom,[update_tuple_a]},
                        2 => {t_atom,[undefined]},
                        3 => {t_atom,[undefined]}}}},
                 {{4,{t_atom,[update_tuple_b]}},
                  {t_tuple,4,true,
                      #{1 => {t_atom,[update_tuple_b]},
                        2 => {t_atom,[undefined]},
                        3 => {t_atom,[undefined]},
                        4 => {t_atom,[undefined]}}}}],
                none}},
        {f,309},
        {list,[3,{f,308},4,{f,308}]}}.
  {label,308}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",615}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,309}.
    {line,[{location,"beam_type_SUITE.erl",611}]}.
    {case_end,{x,0}}.


{function, update_tuple_2, 2, 311}.
  {label,310}.
    {line,[{location,"beam_type_SUITE.erl",617}]}.
    {func_info,{atom,beam_type_SUITE},{atom,update_tuple_2},2}.
  {label,311}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[update_tuple_a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[update_tuple_a]},
                             2 => {t_atom,[undefined]},
                             3 => {t_atom,[undefined]}}}},
                      {{4,{t_atom,[update_tuple_b]}},
                       {t_tuple,4,true,
                           #{1 => {t_atom,[update_tuple_b]},
                             2 => {t_atom,[undefined]},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]}}}}],
                     none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[y]}}]}}.
    {select_tuple_arity,
        {tr,{x,0},
            {t_union,none,none,none,
                [{{3,{t_atom,[update_tuple_a]}},
                  {t_tuple,3,true,
                      #{1 => {t_atom,[update_tuple_a]},
                        2 => {t_atom,[undefined]},
                        3 => {t_atom,[undefined]}}}},
                 {{4,{t_atom,[update_tuple_b]}},
                  {t_tuple,4,true,
                      #{1 => {t_atom,[update_tuple_b]},
                        2 => {t_atom,[undefined]},
                        3 => {t_atom,[undefined]},
                        4 => {t_atom,[undefined]}}}}],
                none}},
        {f,313},
        {list,[3,{f,312},4,{f,312}]}}.
  {label,312}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",622}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,313}.
    {line,[{location,"beam_type_SUITE.erl",618}]}.
    {case_end,{x,0}}.


{function, update_tuple_3, 2, 315}.
  {label,314}.
    {line,[{location,"beam_type_SUITE.erl",624}]}.
    {func_info,{atom,beam_type_SUITE},{atom,update_tuple_3},2}.
  {label,315}.
    {'%',{var_info,{x,1},[{type,{t_atom,[y]}}]}}.
    {test,is_tuple,{f,319},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,319},
                        {list,[3,{f,317},4,{f,316}]}}.
  {label,316}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,319},[{x,1},{atom,update_tuple_b}]}.
    {jump,{f,318}}.
  {label,317}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,319},[{x,1},{atom,update_tuple_a}]}.
  {label,318}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,47},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",629}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,319}.
    {line,[{location,"beam_type_SUITE.erl",625}]}.
    {case_end,{x,0}}.


{function, update_tuple_4, 2, 321}.
  {label,320}.
    {line,[{location,"beam_type_SUITE.erl",631}]}.
    {func_info,{atom,beam_type_SUITE},{atom,update_tuple_4},2}.
  {label,321}.
    {'%',{var_info,{x,1},[{type,{t_atom,[y]}}]}}.
    {test,is_tuple,{f,325},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,325},
                        {list,[3,{f,323},4,{f,322}]}}.
  {label,322}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,325},[{x,1},{atom,update_tuple_b}]}.
    {jump,{f,324}}.
  {label,323}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,325},[{x,1},{atom,update_tuple_a}]}.
  {label,324}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",638}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,325}.
    {line,[{location,"beam_type_SUITE.erl",632}]}.
    {case_end,{x,0}}.


{function, cons, 1, 327}.
  {label,326}.
    {line,[{location,"beam_type_SUITE.erl",640}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cons},1}.
  {label,327}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{atom,did},{x,1}}.
    {move,{atom,assigned},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",641}]}.
    {call,2,{f,340}}. % cons/2
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[did]},nil}}]}}.
    {test,is_eq_exact,
          {f,338},
          [{tr,{x,0},{t_cons,{t_atom,[did]},nil}},{literal,[did]}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",643}]}.
    {call,1,{f,342}}. % cons_is_empty_list/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,337},[{x,0},{atom,true}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",644}]}.
    {call,1,{f,342}}. % cons_is_empty_list/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,328},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,328}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",646}]}.
    {call,1,{f,349}}. % cons_not/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,329},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,329}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",647}]}.
    {call,1,{f,349}}. % cons_not/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,336},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",649}]}.
    {call,1,{f,356}}. % cons_hdtl/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,335},
          [{tr,{x,0},{t_tuple,2,true,#{}}},{literal,{97,"bc"}}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",650}]}.
    {call,1,{f,356}}. % cons_hdtl/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,334},
          [{tr,{x,0},{t_tuple,2,true,#{}}},{literal,{100,"ef"}}]}.
    {'catch',{y,1},{f,330}}.
    {bif,hd,{f,0},[{atom,ok}],{x,0}}.
  {label,330}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,333},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,333},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,331}}.
    {bif,tl,{f,0},[{atom,ok}],{x,0}}.
  {label,331}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,332},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,332},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,332}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",653}]}.
    {badmatch,{x,0}}.
  {label,333}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",652}]}.
    {badmatch,{x,0}}.
  {label,334}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",650}]}.
    {badmatch,{x,0}}.
  {label,335}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",649}]}.
    {badmatch,{x,0}}.
  {label,336}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",647}]}.
    {badmatch,{atom,false}}.
  {label,337}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",643}]}.
    {badmatch,{atom,false}}.
  {label,338}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",641}]}.
    {badmatch,{x,0}}.


{function, cons, 2, 340}.
  {label,339}.
    {line,[{location,"beam_type_SUITE.erl",657}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cons},2}.
  {label,340}.
    {'%',{var_info,{x,0},[{type,{t_atom,[assigned]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[did]}}]}}.
    {move,{literal,[did]},{x,0}}.
    return.


{function, cons_is_empty_list, 1, 342}.
  {label,341}.
    {line,[{location,"beam_type_SUITE.erl",660}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cons_is_empty_list},1}.
  {label,342}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a]},nil}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {test,is_nil,{f,343},[{tr,{x,0},{t_list,{t_atom,[a]},nil}}]}.
    {move,{literal,"true"},{y,0}}.
    {jump,{f,344}}.
  {label,343}.
    {move,{literal,"false"},{y,0}}.
  {label,344}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",665}]}.
    {call,1,{f,838}}. % id/1
    {get_list,{y,0},{x,0},{x,1}}.
    {select_val,{tr,{x,0},{t_integer,{97,117}}},
                {f,347},
                {list,[{integer,102},{f,346},{integer,116},{f,345}]}}.
  {label,345}.
    {test,is_eq_exact,
          {f,347},
          [{tr,{x,1},{t_list,{t_integer,{97,117}},nil}},{literal,"rue"}]}.
    {move,{atom,true},{x,0}}.
    {deallocate,1}.
    return.
  {label,346}.
    {test,is_eq_exact,
          {f,347},
          [{tr,{x,1},{t_list,{t_integer,{97,117}},nil}},{literal,"alse"}]}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,347}.
    {line,[{location,"beam_type_SUITE.erl",666}]}.
    {case_end,{y,0}}.


{function, cons_not, 1, 349}.
  {label,348}.
    {line,[{location,"beam_type_SUITE.erl",671}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cons_not},1}.
  {label,349}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {test,is_eq_exact,{f,350},[{x,0},{atom,true}]}.
    {move,{literal,"true"},{y,0}}.
    {jump,{f,351}}.
  {label,350}.
    {move,{literal,"false"},{y,0}}.
  {label,351}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",676}]}.
    {call,1,{f,838}}. % id/1
    {get_list,{y,0},{x,0},{x,1}}.
    {select_val,{tr,{x,0},{t_integer,{97,117}}},
                {f,354},
                {list,[{integer,102},{f,353},{integer,116},{f,352}]}}.
  {label,352}.
    {test,is_eq_exact,
          {f,354},
          [{tr,{x,1},{t_list,{t_integer,{97,117}},nil}},{literal,"rue"}]}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,353}.
    {test,is_eq_exact,
          {f,354},
          [{tr,{x,1},{t_list,{t_integer,{97,117}},nil}},{literal,"alse"}]}.
    {move,{atom,true},{x,0}}.
    {deallocate,1}.
    return.
  {label,354}.
    {line,[{location,"beam_type_SUITE.erl",677}]}.
    {case_end,{y,0}}.


{function, cons_hdtl, 1, 356}.
  {label,355}.
    {line,[{location,"beam_type_SUITE.erl",682}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cons_hdtl},1}.
  {label,356}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {test,is_eq_exact,{f,357},[{x,0},{atom,true}]}.
    {move,{literal,"abc"},{y,0}}.
    {jump,{f,358}}.
  {label,357}.
    {move,{literal,"def"},{y,0}}.
  {label,358}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",687}]}.
    {call,1,{f,838}}. % id/1
    {get_hd,{y,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",688}]}.
    {call,1,{f,838}}. % id/1
    {get_tl,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,838}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, tuple, 1, 360}.
  {label,359}.
    {line,[{location,"beam_type_SUITE.erl",692}]}.
    {func_info,{atom,beam_type_SUITE},{atom,tuple},1}.
  {label,360}.
    {allocate,9,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {'catch',{y,8},{f,361}}.
    {line,[{location,"beam_type_SUITE.erl",693}]}.
    {call,0,{f,384}}. % do_tuple/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,361}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,382},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,382},[{x,1}]}.
    {test,test_arity,{f,382},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,382},[{x,1},{literal,{badmatch,{necessary}}}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",695}]}.
    {call,1,{f,935}}. % '-tuple/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",696}]}.
    {call,1,{f,933}}. % '-tuple/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",697}]}.
    {call,1,{f,931}}. % '-tuple/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",699}]}.
    {call,1,{f,386}}. % do_literal_tuple_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {move,{integer,20},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",700}]}.
    {call,1,{f,386}}. % do_literal_tuple_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {'catch',{y,7},{f,362}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",701}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,386}}. % do_literal_tuple_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
  {label,362}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,381},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,6},{f,363}}.
    {move,{atom,bad},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",702}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,386}}. % do_literal_tuple_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
  {label,363}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,380},[{x,0},2,{atom,'EXIT'}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",704}]}.
    {call,1,{f,388}}. % do_literal_tuple_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{integer,15},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",705}]}.
    {call,1,{f,388}}. % do_literal_tuple_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{integer,20},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",706}]}.
    {call,1,{f,388}}. % do_literal_tuple_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{literal,{0,0,0}},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",708}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",709}]}.
    {call,2,{f,390}}. % increment_element/2
    {'%',{var_info,{x,0},[{type,{t_tuple,1,false,#{}}}]}}.
    {test,is_eq_exact,
          {f,379},
          [{tr,{x,0},{t_tuple,1,false,#{}}},{literal,{1,0,0}}]}.
    {move,{literal,{1,0,0}},{x,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",710}]}.
    {call,2,{f,390}}. % increment_element/2
    {'%',{var_info,{x,0},[{type,{t_tuple,1,false,#{}}}]}}.
    {test,is_eq_exact,
          {f,378},
          [{tr,{x,0},{t_tuple,1,false,#{}}},{literal,{1,1,0}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",712}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,838}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{y,8},{list,[{y,8},{y,7},{x,0}]}}.
    {move,{y,8},{x,1}}.
    {init_yregs,{list,[{y,7}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",713}]}.
    {call,2,{f,392}}. % decrement_element/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,377},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{0,-1,0}}]}.
    {move,{y,8},{x,1}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",714}]}.
    {call,2,{f,392}}. % decrement_element/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,376},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{0,0,-1}}]}.
    {'catch',{y,5},{f,364}}.
    {move,{y,8},{x,1}}.
    {init_yregs,{list,[{y,8}]}}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",715}]}.
    {call,2,{f,392}}. % decrement_element/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
  {label,364}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,375},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,375},[{x,1},2,{atom,badarg}]}.
    {move,{literal,{true}},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",717}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,394}}. % gh_6458/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,4},{f,365}}.
    {move,{literal,{false}},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",718}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,394}}. % gh_6458/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,365}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,374},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,374},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,3},{f,366}}.
    {move,{literal,{42}},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",719}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,394}}. % gh_6458/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,366}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,373},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,373},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,367}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",720}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,394}}. % gh_6458/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,367}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,372},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,372},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,368}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",722}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,400}}. % gh_6927/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,368}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,371},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,371},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,369}}.
    {move,nil,{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",723}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,400}}. % gh_6927/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,369}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,370},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,370},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,9}.
    return.
  {label,370}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",723}]}.
    {badmatch,{x,0}}.
  {label,371}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",722}]}.
    {badmatch,{x,0}}.
  {label,372}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",720}]}.
    {badmatch,{x,0}}.
  {label,373}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",719}]}.
    {badmatch,{x,0}}.
  {label,374}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",718}]}.
    {badmatch,{x,0}}.
  {label,375}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",715}]}.
    {badmatch,{x,0}}.
  {label,376}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",714}]}.
    {badmatch,{x,0}}.
  {label,377}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",713}]}.
    {badmatch,{x,0}}.
  {label,378}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",710}]}.
    {badmatch,{x,0}}.
  {label,379}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",709}]}.
    {badmatch,{x,0}}.
  {label,380}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",702}]}.
    {badmatch,{x,0}}.
  {label,381}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",701}]}.
    {badmatch,{x,0}}.
  {label,382}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",693}]}.
    {badmatch,{x,0}}.


{function, do_tuple, 0, 384}.
  {label,383}.
    {line,[{location,"beam_type_SUITE.erl",727}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_tuple},0}.
  {label,384}.
    {line,[{location,"beam_type_SUITE.erl",728}]}.
    {badmatch,{literal,{necessary}}}.


{function, do_literal_tuple_1, 1, 386}.
  {label,385}.
    {line,[{location,"beam_type_SUITE.erl",730}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_literal_tuple_1},1}.
  {label,386}.
    {line,[{location,"beam_type_SUITE.erl",731}]}.
    {bif,element,
         {f,0},
         [{x,0},{literal,{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}}],
         {x,0}}.
    {move,{integer,1},{x,0}}.
    return.


{function, do_literal_tuple_2, 1, 388}.
  {label,387}.
    {line,[{location,"beam_type_SUITE.erl",733}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_literal_tuple_2},1}.
  {label,388}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,20}}}]}}.
    {move,{integer,2},{x,0}}.
    return.


{function, increment_element, 2, 390}.
  {label,389}.
    {line,[{location,"beam_type_SUITE.erl",736}]}.
    {func_info,{atom,beam_type_SUITE},{atom,increment_element},2}.
  {label,390}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,2}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",737}]}.
    {bif,element,{f,0},[{tr,{x,0},{t_integer,{1,2}}},{x,1}],{x,2}}.
    {line,[{location,"beam_type_SUITE.erl",738}]}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,1}],{x,2}}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.


{function, decrement_element, 2, 392}.
  {label,391}.
    {line,[{location,"beam_type_SUITE.erl",740}]}.
    {func_info,{atom,beam_type_SUITE},{atom,decrement_element},2}.
  {label,392}.
    {'%',{var_info,{x,0},[{type,{t_integer,{2,4}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,3,true,#{}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",741}]}.
    {bif,element,
         {f,0},
         [{tr,{x,0},{t_integer,{2,4}}},{tr,{x,1},{t_tuple,3,true,#{}}}],
         {x,2}}.
    {line,[{location,"beam_type_SUITE.erl",742}]}.
    {gc_bif,'-',{f,0},3,[{x,2},{integer,1}],{x,2}}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.


{function, gh_6458, 1, 394}.
  {label,393}.
    {line,[{location,"beam_type_SUITE.erl",744}]}.
    {func_info,{atom,beam_type_SUITE},{atom,gh_6458},1}.
  {label,394}.
    {test,is_tuple,{f,393},[{x,0}]}.
    {test,test_arity,{f,393},[{x,0},1]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {bif,'=:=',{f,0},[{x,1},{atom,true}],{x,2}}.
    {test,is_eq_exact,{f,395},[{x,1},{atom,true}]}.
    {move,{atom,true},{x,3}}.
    {jump,{f,396}}.
  {label,395}.
    {move,{atom,false},{x,3}}.
  {label,396}.
    {test,is_eq_exact,{f,397},[{tr,{x,2},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,393},[{tr,{x,3},{t_atom,[false,true]}},{atom,true}]}.
  {label,397}.
    {test,is_boolean,{f,398},[{x,1}]}.
    {move,{x,1},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {call_only,3,{f,929}}. % '-gh_6458/1-lc$^0/1-0-'/3
  {label,398}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,1}]}}.
    {line,[{location,"beam_type_SUITE.erl",745}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, gh_6927, 1, 400}.
  {label,399}.
    {line,[{location,"beam_type_SUITE.erl",756}]}.
    {func_info,{atom,beam_type_SUITE},{atom,gh_6927},1}.
  {label,400}.
    {test,is_tuple,{f,401},[{x,0}]}.
    {test,test_arity,{f,401},[{x,0},2]}.
    {jump,{f,402}}.
  {label,401}.
    {move,{atom,ok},{x,0}}.
  {label,402}.
    {bif,element,
         {f,0},
         [{integer,42},
          {tr,{x,0},
              {t_union,{t_atom,[ok]},none,none,{t_tuple,2,true,#{}},none}}],
         {x,0}}.
    return.


{function, record_float, 1, 404}.
  {label,403}.
    {line,[{location,"beam_type_SUITE.erl",767}]}.
    {func_info,{atom,beam_type_SUITE},{atom,record_float},1}.
  {label,404}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,1700},{x,1}}.
    {move,{literal,{x,{0}}},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",768}]}.
    {call,2,{f,414}}. % record_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,412},[{tr,{x,0},{t_float,any}},{float,17.0}]}.
    {move,{float,2.3e3},{x,1}}.
    {move,{literal,{x,{0}}},{x,0}}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",769}]}.
    {call,2,{f,414}}. % record_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,411},[{tr,{x,0},{t_float,any}},{float,23.0}]}.
    {'catch',{y,2},{f,405}}.
    {move,{integer,88},{x,1}}.
    {move,{literal,{x,{1}}},{x,0}}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",770}]}.
    {call,2,{f,414}}. % record_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
  {label,405}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,410},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,410},[{x,1},2,{atom,if_clause}]}.
    {'catch',{y,1},{f,406}}.
    {move,{integer,88},{x,1}}.
    {move,{literal,{x,{}}},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",771}]}.
    {call,2,{f,414}}. % record_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
  {label,406}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,409},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,409},[{x,1},2,{atom,if_clause}]}.
    {'catch',{y,0},{f,407}}.
    {move,{integer,88},{x,1}}.
    {move,{literal,{x,undefined}},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",772}]}.
    {call,2,{f,414}}. % record_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
  {label,407}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,408},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,408},[{x,1},2,{atom,if_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,408}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",772}]}.
    {badmatch,{x,0}}.
  {label,409}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",771}]}.
    {badmatch,{x,0}}.
  {label,410}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",770}]}.
    {badmatch,{x,0}}.
  {label,411}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",769}]}.
    {badmatch,{x,0}}.
  {label,412}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",768}]}.
    {badmatch,{x,0}}.


{function, record_float, 2, 414}.
  {label,413}.
    {line,[{location,"beam_type_SUITE.erl",775}]}.
    {func_info,{atom,beam_type_SUITE},{atom,record_float},2}.
  {label,414}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[x]},
                       2 =>
                           {t_union,
                               {t_atom,[undefined]},
                               none,none,
                               {t_tuple,0,false,#{}},
                               none}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{88,2300}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",776}]}.
    {fconv,{tr,{x,1},{t_number,{88,2300}}},{fr,0}}.
    {fmove,{float,100.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},1}.
    {fmove,{fr,0},{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,element,
         {f,415},
         [{integer,1},
          {tr,{x,0},
              {t_union,{t_atom,[undefined]},
                       none,none,
                       {t_tuple,0,false,#{}},
                       none}}],
         {x,0}}.
    {test,is_eq_exact,{f,415},[{x,0},{integer,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,415}.
    {line,[{location,"beam_type_SUITE.erl",777}]}.
    if_end.


{function, binary_float, 1, 417}.
  {label,416}.
    {line,[{location,"beam_type_SUITE.erl",781}]}.
    {func_info,{atom,beam_type_SUITE},{atom,binary_float},1}.
  {label,417}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<63,240,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",782}]}.
    {call,1,{f,422}}. % binary_negate_float/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_float2,
          {f,420},
          2,
          [{tr,{x,1},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[782,{file,"beam_type_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,420},[{tr,{x,2},{t_float,any}},{float,-1.0}]}.
    {bs_match,{f,420},{x,1},{commands,[{ensure_exactly,0}]}}.
    {'catch',{y,1},{f,418}}.
    {move,{float,64.0},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",783}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,425}}. % binary_float_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,418}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,419},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,419},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,419}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",783}]}.
    {badmatch,{x,0}}.
  {label,420}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",782}]}.
    {badmatch,{x,0}}.


{function, binary_negate_float, 1, 422}.
  {label,421}.
    {line,[{location,"beam_type_SUITE.erl",786}]}.
    {func_info,{atom,beam_type_SUITE},{atom,binary_negate_float},1}.
  {label,422}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,64,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_float2,
          {f,423},
          2,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[786,{file,"beam_type_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,423},{x,0},{commands,[{ensure_exactly,0}]}}.
    {fmove,{x,2},{fr,0}}.
    {line,[{location,"beam_type_SUITE.erl",787}]}.
    {bif,fnegate,{f,0},[{fr,0}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {bs_create_bin,{f,0},
                   0,1,64,
                   {x,0},
                   {list,[{atom,float},
                          1,1,nil,
                          {tr,{x,0},{t_float,any}},
                          {integer,64}]}}.
    return.
  {label,423}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,421}}.


{function, binary_float_1, 2, 425}.
  {label,424}.
    {line,[{location,"beam_type_SUITE.erl",790}]}.
    {func_info,{atom,beam_type_SUITE},{atom,binary_float_1},2}.
  {label,425}.
    {test,is_eq_exact,{f,426},[{x,0},{float,64.0}]}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",791}]}.
    {call_ext_only,1,{extfunc,erlang,binary_to_integer,1}}.
  {label,426}.
    {badmatch,{x,0}}.


{function, float_compare, 1, 428}.
  {label,427}.
    {line,[{location,"beam_type_SUITE.erl",794}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_compare},1}.
  {label,428}.
    {allocate,0,0}.
    {move,{float,-42.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",795}]}.
    {call,1,{f,434}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{integer,-42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",796}]}.
    {call,1,{f,434}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",797}]}.
    {call,1,{f,434}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,429},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,429}.
    {move,{float,0.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",798}]}.
    {call,1,{f,434}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,430},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,430}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",799}]}.
    {call,1,{f,434}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,432},[{x,0},{atom,true}]}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",800}]}.
    {call,1,{f,434}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,431},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,431}.
    {badmatch,{atom,false}}.
  {label,432}.
    {line,[{location,"beam_type_SUITE.erl",799}]}.
    {badmatch,{atom,false}}.


{function, do_float_compare, 1, 434}.
  {label,433}.
    {line,[{location,"beam_type_SUITE.erl",803}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_float_compare},1}.
  {label,434}.
    {'%',{var_info,{x,0},[{type,{t_number,{-42,42}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",807}]}.
    {fconv,{tr,{x,0},{t_number,{-42,42}}},{fr,0}}.
    {fmove,{float,1.0},{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},1}.
    {fmove,{fr,0},{x,1}}.
    {test,is_lt,{f,435},[{integer,0},{tr,{x,0},{t_number,{-42,42}}}]}.
    {bif,'<',{f,0},[{integer,0},{tr,{x,1},{t_float,any}}],{x,0}}.
    return.
  {label,435}.
    {move,{atom,false},{x,0}}.
    return.


{function, float_overflow, 1, 437}.
  {label,436}.
    {line,[{location,"beam_type_SUITE.erl",813}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_overflow},1}.
  {label,437}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_type_SUITE.erl",814}]}.
    {call,0,{f,451}}. % two/0
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{integer,179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216},
          {x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_type_SUITE.erl",815}]}.
    {call,0,{f,443}}. % float_overflow_1/0
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,441},[{tr,{x,0},{t_integer,any}},{y,0}]}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",817}]}.
    {call,0,{f,451}}. % two/0
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{integer,-179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216},
          {x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",818}]}.
    {call,0,{f,447}}. % float_overflow_2/0
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,440},[{tr,{x,0},{t_integer,any}},{y,0}]}.
    {'catch',{y,0},{f,438}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",820}]}.
    {call,0,{f,453}}. % float_overflow_3/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,438}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,439},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,439},[{x,1}]}.
    {test,test_arity,{f,439},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,439},[{x,1},{literal,{bad_filter,[0]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,439}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",820}]}.
    {badmatch,{x,0}}.
  {label,440}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",818}]}.
    {badmatch,{x,0}}.
  {label,441}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",815}]}.
    {badmatch,{x,0}}.


{function, float_overflow_1, 0, 443}.
  {label,442}.
    {line,[{location,"beam_type_SUITE.erl",826}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_overflow_1},0}.
  {label,443}.
    {allocate,1,0}.
    {'try',{y,0},{f,444}}.
    {line,[{location,"beam_type_SUITE.erl",829}]}.
    {call,0,{f,451}}. % two/0
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {try_end,{y,0}}.
    {move,{integer,179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216},
          {x,0}}.
    {jump,{f,445}}.
  {label,444}.
    {try_case,{y,0}}.
    {move,{float,0.0},{x,0}}.
  {label,445}.
    {line,[{location,"beam_type_SUITE.erl",827}]}.
    {gc_bif,round,
            {f,0},
            1,
            [{tr,{x,0},
                 {t_number,{0,
                            179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216}}}],
            {x,0}}.
    {deallocate,1}.
    return.


{function, float_overflow_2, 0, 447}.
  {label,446}.
    {line,[{location,"beam_type_SUITE.erl",836}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_overflow_2},0}.
  {label,447}.
    {allocate,1,0}.
    {'try',{y,0},{f,448}}.
    {line,[{location,"beam_type_SUITE.erl",839}]}.
    {call,0,{f,451}}. % two/0
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {try_end,{y,0}}.
    {move,{integer,-179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216},
          {x,0}}.
    {jump,{f,449}}.
  {label,448}.
    {try_case,{y,0}}.
    {move,{float,0.0},{x,0}}.
  {label,449}.
    {line,[{location,"beam_type_SUITE.erl",837}]}.
    {gc_bif,round,
            {f,0},
            1,
            [{tr,{x,0},
                 {t_number,{-179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216,
                            0}}}],
            {x,0}}.
    {deallocate,1}.
    return.


{function, two, 0, 451}.
  {label,450}.
    {line,[{location,"beam_type_SUITE.erl",846}]}.
    {func_info,{atom,beam_type_SUITE},{atom,two},0}.
  {label,451}.
    {move,{integer,2},{x,0}}.
    return.


{function, float_overflow_3, 0, 453}.
  {label,452}.
    {line,[{location,"beam_type_SUITE.erl",848}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_overflow_3},0}.
  {label,453}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,1,{f,925}}. % '-float_overflow_3/0-lc$^0/1-0-'/1


{function, arity_checks, 1, 455}.
  {label,454}.
    {line,[{location,"beam_type_SUITE.erl",853}]}.
    {func_info,{atom,beam_type_SUITE},{atom,arity_checks},1}.
  {label,455}.
    {allocate,0,0}.
    {move,{literal,{rgb,255,255,255,1}},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",856}]}.
    {call,1,{f,457}}. % do_record_arity_check/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{255,255,255,1}},{x,0}}.
    {call_last,1,{f,459},0}. % do_tuple_arity_check/1


{function, do_record_arity_check, 1, 457}.
  {label,456}.
    {line,[{location,"beam_type_SUITE.erl",861}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_record_arity_check},1}.
  {label,457}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[rgb]},
                                     2 => {t_integer,{255,255}},
                                     3 => {t_integer,{255,255}},
                                     4 => {t_integer,{255,255}},
                                     5 => {t_integer,{1,1}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_tuple_arity_check, 1, 459}.
  {label,458}.
    {line,[{location,"beam_type_SUITE.erl",870}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_tuple_arity_check},1}.
  {label,459}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{255,255}},
                                     2 => {t_integer,{255,255}},
                                     3 => {t_integer,{255,255}},
                                     4 => {t_integer,{1,1}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, elixir_binaries, 1, 461}.
  {label,460}.
    {line,[{location,"beam_type_SUITE.erl",879}]}.
    {func_info,{atom,beam_type_SUITE},{atom,elixir_binaries},1}.
  {label,461}.
    {allocate,0,0}.
    {move,{literal,<<"blitzky">>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",880}]}.
    {call,1,{f,466}}. % elixir_binary_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,464},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"foo blitzky baz">>}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",881}]}.
    {call,1,{f,468}}. % elixir_binary_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,463},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"foo * baz">>}]}.
    {move,{literal,<<188,3:2>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",882}]}.
    {call,1,{f,470}}. % elixir_bitstring_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,2,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,462},
              {x,1},
              {commands,[{ensure_exactly,14},{'=:=',nil,14,7923}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,462}.
    {badmatch,{x,0}}.
  {label,463}.
    {line,[{location,"beam_type_SUITE.erl",881}]}.
    {badmatch,{x,0}}.
  {label,464}.
    {line,[{location,"beam_type_SUITE.erl",880}]}.
    {badmatch,{x,0}}.


{function, elixir_binary_1, 1, 466}.
  {label,465}.
    {line,[{location,"beam_type_SUITE.erl",885}]}.
    {func_info,{atom,beam_type_SUITE},{atom,elixir_binary_1},1}.
  {label,466}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"beam_type_SUITE.erl",886}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"foo ">>},
                          {integer,4},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<" baz">>},
                          {integer,4}]}}.
    return.


{function, elixir_binary_2, 1, 468}.
  {label,467}.
    {line,[{location,"beam_type_SUITE.erl",895}]}.
    {func_info,{atom,beam_type_SUITE},{atom,elixir_binary_2},1}.
  {label,468}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,<<"foo * baz">>},{x,0}}.
    return.


{function, elixir_bitstring_3, 1, 470}.
  {label,469}.
    {line,[{location,"beam_type_SUITE.erl",906}]}.
    {func_info,{atom,beam_type_SUITE},{atom,elixir_bitstring_3},1}.
  {label,470}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,2,false}}]}}.
    {line,[{location,"beam_type_SUITE.erl",907}]}.
    {bs_create_bin,{f,0},
                   0,1,2,
                   {x,0},
                   {list,[{atom,integer},
                          0,1,nil,
                          {integer,7},
                          {integer,4},
                          {atom,binary},
                          2,1,nil,
                          {tr,{x,0},{t_bitstring,2,false}},
                          {atom,all}]}}.
    return.


{function, find_best, 1, 472}.
  {label,471}.
    {line,[{location,"beam_type_SUITE.erl",915}]}.
    {func_info,{atom,beam_type_SUITE},{atom,find_best},1}.
  {label,472}.
    {allocate,0,0}.
    {move,{atom,nil},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",916}]}.
    {call,2,{f,476}}. % find_best/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,474},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {atom,ok}]}.
    {move,{atom,nil},{x,1}}.
    {move,{literal,[<<"a">>]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",917}]}.
    {call,2,{f,476}}. % find_best/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,473},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {atom,ok}]}.
    {move,{atom,nil},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",918}]}.
    {call,2,{f,476}}. % find_best/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,473}.
    {line,[{location,"beam_type_SUITE.erl",917}]}.
    {badmatch,{x,0}}.
  {label,474}.
    {line,[{location,"beam_type_SUITE.erl",916}]}.
    {badmatch,{x,0}}.


{function, find_best, 2, 476}.
  {label,475}.
    {line,[{location,"beam_type_SUITE.erl",923}]}.
    {func_info,{atom,beam_type_SUITE},{atom,find_best},2}.
  {label,476}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         none,none,none,
                         {t_bitstring,8,false}},
                     nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[a,nil]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_nonempty_list,{f,479},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_eq_exact,
          {f,477},
          [{tr,{x,2},
               {t_union,{t_atom,[a]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<"a">>}]}.
    {test,is_eq_exact,
          {f,478},
          [{tr,{x,1},
               {t_union,{t_atom,[a,nil]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,nil}]}.
    {move,{literal,<<"a">>},{x,1}}.
    {jump,{f,478}}.
  {label,477}.
    {test,is_eq_exact,
          {f,479},
          [{tr,{x,2},
               {t_union,{t_atom,[a]},none,none,none,{t_bitstring,8,false}}},
           {atom,a}]}.
    {test,is_eq_exact,
          {f,478},
          [{tr,{x,1},
               {t_union,{t_atom,[a,nil]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,nil}]}.
    {move,{atom,a},{x,1}}.
  {label,478}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,476}}. % find_best/2
  {label,479}.
    {test,is_ne_exact,
          {f,481},
          [{tr,{x,1},
               {t_union,{t_atom,[a,nil]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"a">>}]}.
    {select_val,{tr,{x,1},
                    {t_union,{t_atom,[a,nil]},
                             none,none,none,
                             {t_bitstring,8,false}}},
                {f,475},
                {list,[{atom,a},{f,481},{atom,nil},{f,480}]}}.
  {label,480}.
    {test,is_nil,
          {f,475},
          [{tr,{x,0},
               {t_list,{t_union,{t_atom,[a]},
                                none,none,none,
                                {t_bitstring,8,false}},
                       nil}}]}.
    {move,{literal,{error,<<"should not get here">>}},{x,0}}.
    return.
  {label,481}.
    {test,is_nil,
          {f,475},
          [{tr,{x,0},
               {t_list,{t_union,{t_atom,[a]},
                                none,none,none,
                                {t_bitstring,8,false}},
                       nil}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, test_size, 1, 483}.
  {label,482}.
    {line,[{location,"beam_type_SUITE.erl",942}]}.
    {func_info,{atom,beam_type_SUITE},{atom,test_size},1}.
  {label,483}.
    {allocate,0,0}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",943}]}.
    {call,1,{f,486}}. % do_test_size/1
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",944}]}.
    {call,1,{f,486}}. % do_test_size/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,484},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,4}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,484}.
    {badmatch,{x,0}}.


{function, do_test_size, 1, 486}.
  {label,485}.
    {line,[{location,"beam_type_SUITE.erl",947}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_test_size},1}.
  {label,486}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,32,false}}}]}}.
    {test,is_tuple,
          {f,487},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        {t_bitstring,32,false}}}]}.
    {move,{integer,2},{x,0}}.
    return.
  {label,487}.
    {line,[{location,"beam_type_SUITE.erl",950}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,32,false}}],{x,0}}.
    return.


{function, cover_lists_functions, 1, 489}.
  {label,488}.
    {line,[{location,"beam_type_SUITE.erl",952}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cover_lists_functions},1}.
  {label,489}.
    {allocate_heap,14,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {init_yregs,{list,[{y,0},
                       {y,1},
                       {y,2},
                       {y,3},
                       {y,4},
                       {y,6},
                       {y,7},
                       {y,8},
                       {y,9},
                       {y,10},
                       {y,11},
                       {y,12},
                       {y,13}]}}.
    {move,{x,0},{y,5}}.
    {make_fun3,{f,923},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[foo]}}]}}.
    {line,[{location,"beam_type_SUITE.erl",953}]}.
    {call,1,{f,838}}. % id/1
    {move,{y,5},{x,2}}.
    {move,{atom,foo},{x,1}}.
    {call_ext,3,{extfunc,lists,foldl,3}}.
    {test,is_eq_exact,{f,524},[{x,0},{atom,foo}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,921},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[foo]}}]}}.
    {move,{y,5},{x,2}}.
    {move,{atom,foo},{x,1}}.
    {line,[{scope,[28]},{location,"beam_type_SUITE.erl",954}]}.
    {call_ext,3,{extfunc,lists,foldl,3}}.
    {'catch',{y,13},{f,490}}.
    {move,{atom,foo},{x,1}}.
    {move,{y,5},{x,2}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[28]},{location,"beam_type_SUITE.erl",955}]}.
    {call_ext,3,{extfunc,lists,foldl,3}}.
  {label,490}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,523},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,919},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[foo]}}]}}.
    {line,[{scope,[27,28]},{location,"beam_type_SUITE.erl",957}]}.
    {call,1,{f,838}}. % id/1
    {move,{y,5},{x,2}}.
    {move,{atom,foo},{x,1}}.
    {call_ext,3,{extfunc,lists,foldr,3}}.
    {test,is_eq_exact,{f,522},[{x,0},{atom,foo}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,917},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[foo]}}]}}.
    {move,{y,5},{x,2}}.
    {move,{atom,foo},{x,1}}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",958}]}.
    {call_ext,3,{extfunc,lists,foldr,3}}.
    {'catch',{y,12},{f,491}}.
    {move,{atom,foo},{x,1}}.
    {move,{y,5},{x,2}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",959}]}.
    {call_ext,3,{extfunc,lists,foldr,3}}.
  {label,491}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,521},[{x,0},2,{atom,'EXIT'}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[25,26]},{location,"beam_type_SUITE.erl",961}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,2}}.
    {move,{atom,data_dir},{x,0}}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_tagged_tuple,
          {f,520},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,
                        {t_tuple,0,false,#{}},
                        none}},
           2,
           {atom,data_dir}]}.
    {'catch',{y,11},{f,492}}.
    {move,{atom,not_a_position},{x,1}}.
    {move,{y,5},{x,2}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{scope,[25,26]},{location,"beam_type_SUITE.erl",962}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {move,{atom,false},{x,0}}.
  {label,492}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,519},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,10},{f,493}}.
    {move,{integer,1},{x,1}}.
    {move,{atom,not_a_list},{x,2}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",963}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
  {label,493}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,518},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,9},{f,494}}.
    {move,{y,5},{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[21,22]},{location,"beam_type_SUITE.erl",965}]}.
    {call_ext,2,{extfunc,lists,map,2}}.
  {label,494}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,517},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,8},{f,495}}.
    {move,nil,{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",966}]}.
    {call_ext,2,{extfunc,lists,map,2}}.
  {label,495}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,516},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,838},0,0,{x,0},{list,[]}}.
    {'catch',{y,7},{f,496}}.
    {move,{atom,not_a_list},{x,1}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",967}]}.
    {call_ext,2,{extfunc,lists,map,2}}.
  {label,496}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,515},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,838},0,0,{x,0},{list,[]}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",968}]}.
    {call,1,{f,838}}. % id/1
    {move,{y,5},{x,1}}.
    {call_ext,2,{extfunc,lists,map,2}}.
    {test,is_eq_exact,{f,514},[{tr,{x,0},{t_list,any,nil}},{y,5}]}.
    {test_heap,2,0}.
    {put_list,{atom,no},{y,5},{x,0}}.
    {move,{y,5},{x,1}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",970}]}.
    {call_ext,2,{extfunc,lists,suffix,2}}.
    {test,is_eq_exact,{f,497},[{x,0},{atom,true}]}.
    {move,{atom,should_be_false},{x,0}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",972}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,497}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",977}]}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {'catch',{y,6},{f,498}}.
    {move,{literal,[b]},{x,1}}.
    {move,{atom,not_list},{x,0}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",978}]}.
    {call_ext,2,{extfunc,lists,zip,2}}.
  {label,498}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,513},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,915},0,0,{y,13},{list,[]}}.
    {'%',{var_info,{y,13},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,13},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",982}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
    {line,[{location,"beam_type_SUITE.erl",985}]}.
    {gc_bif,length,{f,0},0,[{tr,{y,5},{t_list,any,nil}}],{x,0}}.
    {move,{atom,zip},{x,1}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",985}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,2}}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{y,13},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",984}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
    {move,{x,0},{y,12}}.
    {test,is_nonempty_list,{f,512},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {test,is_tagged_tuple,
          {f,512},
          [{tr,{x,0},{t_tuple,2,true,#{}}},2,{atom,zip}]}.
    {move,{y,13},{x,0}}.
    {init_yregs,{list,[{y,13}]}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",989}]}.
    {call,1,{f,838}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",990}]}.
    {gc_bif,length,
            {f,0},
            1,
            [{tr,{y,12},{t_cons,{t_tuple,2,true,#{}},nil}}],
            {x,1}}.
    {move,{x,0},{y,13}}.
    {move,{x,1},{x,0}}.
    {move,{atom,zip_zip},{x,1}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",990}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,12},{x,2}}.
    {move,{y,13},{x,0}}.
    {init_yregs,{list,[{y,13}]}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",989}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,511},[{x,1},2,{atom,zip_zip}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,511},[{x,1},2,{atom,zip}]}.
    {'catch',{y,5},{f,499}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,[b]},{x,2}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",994}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
  {label,499}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,510},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,913},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {'catch',{y,4},{f,500}}.
    {move,{literal,[b]},{x,2}}.
    {move,{literal,[a]},{x,1}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",995}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
  {label,500}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,509},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,509},[{x,1},2,{atom,bad}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,911},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {'catch',{y,3},{f,501}}.
    {move,{literal,[b]},{x,2}}.
    {move,{atom,not_list},{x,1}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",997}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
  {label,501}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,508},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,909},0,0,{y,13},{list,[]}}.
    {'%',{var_info,{y,13},[{fun_type,none}]}}.
    {line,[{location,"beam_type_SUITE.erl",1000}]}.
    {gc_bif,length,
            {f,0},
            0,
            [{tr,{y,12},{t_cons,{t_tuple,2,true,#{}},nil}}],
            {x,0}}.
    {'catch',{y,2},{f,502}}.
    {move,{atom,zip_zip},{x,1}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",1000}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,12},{x,2}}.
    {move,{y,13},{x,0}}.
    {init_yregs,{list,[{y,13}]}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",999}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
  {label,502}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,507},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,507},[{x,1},2,{atom,bad}]}.
    {'catch',{y,1},{f,503}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1003}]}.
    {call_ext,1,{extfunc,lists,unzip,1}}.
  {label,503}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,506},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,504}}.
    {move,{literal,[not_a_tuple]},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1004}]}.
    {call_ext,1,{extfunc,lists,unzip,1}}.
  {label,504}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,505},[{x,0},2,{atom,'EXIT'}]}.
    {move,{y,12},{x,0}}.
    {trim,14,0}.
    {line,[{scope,[1,2]},{location,"beam_type_SUITE.erl",1005}]}.
    {call_ext,1,{extfunc,lists,unzip,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,505}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1004}]}.
    {badmatch,{x,0}}.
  {label,506}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1003}]}.
    {badmatch,{x,0}}.
  {label,507}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",999}]}.
    {badmatch,{x,0}}.
  {label,508}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",997}]}.
    {badmatch,{x,0}}.
  {label,509}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",995}]}.
    {badmatch,{x,0}}.
  {label,510}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",994}]}.
    {badmatch,{x,0}}.
  {label,511}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",992}]}.
    {badmatch,{x,0}}.
  {label,512}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",987}]}.
    {badmatch,{y,12}}.
  {label,513}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",978}]}.
    {badmatch,{x,0}}.
  {label,514}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",968}]}.
    {badmatch,{x,0}}.
  {label,515}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",967}]}.
    {badmatch,{x,0}}.
  {label,516}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",966}]}.
    {badmatch,{x,0}}.
  {label,517}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",965}]}.
    {badmatch,{x,0}}.
  {label,518}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",963}]}.
    {badmatch,{x,0}}.
  {label,519}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",962}]}.
    {badmatch,{x,0}}.
  {label,520}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",961}]}.
    {badmatch,{x,0}}.
  {label,521}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",959}]}.
    {badmatch,{x,0}}.
  {label,522}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",957}]}.
    {badmatch,{x,0}}.
  {label,523}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",955}]}.
    {badmatch,{x,0}}.
  {label,524}.
    {line,[{scope,[28]},{location,"beam_type_SUITE.erl",953}]}.
    {badmatch,{x,0}}.


{function, list_append, 1, 526}.
  {label,525}.
    {line,[{location,"beam_type_SUITE.erl",1009}]}.
    {func_info,{atom,beam_type_SUITE},{atom,list_append},1}.
  {label,526}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1012}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{atom,hello},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test,is_eq_exact,{f,527},[{x,0},{atom,hello}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,527}.
    {badmatch,{x,0}}.


{function, bad_binary_unit, 1, 529}.
  {label,528}.
    {line,[{location,"beam_type_SUITE.erl",1018}]}.
    {func_info,{atom,beam_type_SUITE},{atom,bad_binary_unit},1}.
  {label,529}.
    {allocate,0,0}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1019}]}.
    {call,1,{f,838}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",1020}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {x,0},
                          {atom,all},
                          {atom,integer},
                          0,1,nil,
                          {integer,1},
                          {integer,1}]}}.
    {test,is_binary,{f,530},[{tr,{x,0},{t_bitstring,1,false}}]}.
    {line,[{location,"beam_type_SUITE.erl",1021}]}.
    {badmatch,{atom,true}}.
  {label,530}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, none_argument, 1, 532}.
  {label,531}.
    {line,[{location,"beam_type_SUITE.erl",1025}]}.
    {func_info,{atom,beam_type_SUITE},{atom,none_argument},1}.
  {label,532}.
    {allocate,0,0}.
    {move,{literal,<<0,3,42>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1026}]}.
    {call,1,{f,838}}. % id/1
    {move,{atom,error},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1027}]}.
    {call,1,{f,838}}. % id/1
    {test,is_eq_exact,{f,533},[{x,0},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,533}.
    {badmatch,{x,0}}.


{function, success_type_oscillation, 1, 535}.
  {label,534}.
    {line,[{location,"beam_type_SUITE.erl",1051}]}.
    {func_info,{atom,beam_type_SUITE},{atom,success_type_oscillation},1}.
  {label,535}.
    {allocate,0,0}.
    {move,{atom,case_1_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1054}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,540}}. % sto_1/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[a]}},{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
          {{2,{t_atom,[b]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[b]},
              2 =>
               {t_cons,
                {t_union,none,none,none,
                 [{{2,{t_atom,[a]}},
                   {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
                  {{2,{t_atom,[b]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[b]},
                      2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
                 none},
                nil}}}}],
         none}}]}}.
    {test,is_eq_exact,
     {f,538},
     [{tr,
       {x,0},
       {t_union,none,none,none,
        [{{2,{t_atom,[a]}},{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
         {{2,{t_atom,[b]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[b]},
             2 =>
              {t_cons,
               {t_union,none,none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
                 {{2,{t_atom,[b]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[b]},
                     2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
                none},
               nil}}}}],
        none}},
      {literal,{a,[]}}]}.
    {move,{atom,case_2_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1055}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,540}}. % sto_1/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[a]}},{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
          {{2,{t_atom,[b]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[b]},
              2 =>
               {t_cons,
                {t_union,none,none,none,
                 [{{2,{t_atom,[a]}},
                   {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
                  {{2,{t_atom,[b]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[b]},
                      2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
                 none},
                nil}}}}],
         none}}]}}.
    {test,is_eq_exact,
     {f,537},
     [{tr,
       {x,0},
       {t_union,none,none,none,
        [{{2,{t_atom,[a]}},{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
         {{2,{t_atom,[b]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[b]},
             2 =>
              {t_cons,
               {t_union,none,none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
                 {{2,{t_atom,[b]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[b]},
                     2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
                none},
               nil}}}}],
        none}},
      {literal,{a,[]}}]}.
    {move,{atom,case_2_2},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1056}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,540}}. % sto_1/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[a]}},{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
          {{2,{t_atom,[b]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[b]},
              2 =>
               {t_cons,
                {t_union,none,none,none,
                 [{{2,{t_atom,[a]}},
                   {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
                  {{2,{t_atom,[b]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[b]},
                      2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
                 none},
                nil}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
     {f,536},
     [{tr,
       {x,0},
       {t_union,none,none,none,
        [{{2,{t_atom,[a]}},{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
         {{2,{t_atom,[b]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[b]},
             2 =>
              {t_cons,
               {t_union,none,none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
                 {{2,{t_atom,[b]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[b]},
                     2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
                none},
               nil}}}}],
        none}},
      2,
      {atom,b}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,
        {f,536},
        [{tr,{x,1},
             {t_list,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
                      {{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},
                             2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
                     none},
                 nil}}]}.
    {test,is_eq_exact,
        {f,536},
        [{tr,{x,2},
             {t_union,none,none,none,
                 [{{2,{t_atom,[a]}},
                   {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}},
                  {{2,{t_atom,[b]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[b]},
                         2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
                 none}},
         {literal,{a,[]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,536}.
    {badmatch,{x,0}}.
  {label,537}.
    {line,[{location,"beam_type_SUITE.erl",1055}]}.
    {badmatch,{x,0}}.
  {label,538}.
    {line,[{location,"beam_type_SUITE.erl",1054}]}.
    {badmatch,{x,0}}.


{function, sto_1, 1, 540}.
  {label,539}.
    {line,[{location,"beam_type_SUITE.erl",1060}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sto_1},1}.
  {label,540}.
    {select_val,{x,0},
                {f,539},
                {list,[{atom,case_1_1},
                       {f,552},
                       {atom,case_1_2},
                       {f,552},
                       {atom,case_2_1},
                       {f,551},
                       {atom,case_2_2},
                       {f,550},
                       {atom,case_2_3},
                       {f,549},
                       {atom,case_2_4},
                       {f,548},
                       {atom,case_3_1},
                       {f,547},
                       {atom,case_3_2},
                       {f,546},
                       {atom,case_3_3},
                       {f,545},
                       {atom,case_3_4},
                       {f,544},
                       {atom,case_4_1},
                       {f,543},
                       {atom,case_4_2},
                       {f,542},
                       {atom,step_4_3},
                       {f,541}]}}.
  {label,541}.
    {allocate,0,0}.
    {move,{atom,case_3_3},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1072}]}.
    {call,1,{f,540}}. % sto_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[b]},
                       2 =>
                           {t_cons,
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_cons,{t_tuple,0,false,#{}},nil}}},
                               nil}}}}]}}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,542}.
    {allocate,0,0}.
    {move,{atom,case_3_2},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1071}]}.
    {call,1,{f,540}}. % sto_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[b]},
                       2 =>
                           {t_cons,
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_cons,{t_tuple,0,false,#{}},nil}}},
                               nil}}}}]}}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,543}.
    {allocate,0,0}.
    {move,{atom,case_3_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1070}]}.
    {call,1,{f,540}}. % sto_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[b]},
                       2 =>
                           {t_cons,
                               {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}},
                               nil}}}}]}}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,544}.
    {allocate,0,0}.
    {move,{atom,case_2_4},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1069}]}.
    {call,1,{f,540}}. % sto_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[b]},
                       2 =>
                           {t_cons,
                               {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}},
                               nil}}}}]}}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,545}.
    {allocate,0,0}.
    {move,{atom,case_2_3},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1068}]}.
    {call,1,{f,540}}. % sto_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[b]},
                       2 =>
                           {t_cons,
                               {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}},
                               nil}}}}]}}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,546}.
    {allocate,0,0}.
    {move,{atom,case_2_2},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1067}]}.
    {call,1,{f,540}}. % sto_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[b]},
                       2 =>
                           {t_cons,
                               {t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}},
                               nil}}}}]}}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,547}.
    {allocate,0,0}.
    {move,{atom,case_2_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1066}]}.
    {call,1,{f,540}}. % sto_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}}]}}.
    {move,{literal,{b,[{a,[]}]}},{x,0}}.
    {deallocate,0}.
    return.
  {label,548}.
    {allocate,0,0}.
    {move,{atom,case_1_2},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1065}]}.
    {call,1,{f,540}}. % sto_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}}]}}.
    {move,{literal,{b,[{a,[]}]}},{x,0}}.
    {deallocate,0}.
    return.
  {label,549}.
    {allocate,0,0}.
    {move,{atom,case_1_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1064}]}.
    {call,1,{f,540}}. % sto_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}}]}}.
    {move,{literal,{b,[{a,[]}]}},{x,0}}.
    {deallocate,0}.
    return.
  {label,550}.
    {allocate,0,0}.
    {move,{atom,case_1_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1063}]}.
    {call,1,{f,540}}. % sto_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}}]}}.
    {move,{literal,{b,[{a,[]}]}},{x,0}}.
    {deallocate,0}.
    return.
  {label,551}.
    {move,{atom,case_1_1},{x,0}}.
    {call_only,1,{f,540}}. % sto_1/1
  {label,552}.
    {move,{literal,{a,[]}},{x,0}}.
    return.


{function, type_subtraction, 1, 554}.
  {label,553}.
    {line,[{location,"beam_type_SUITE.erl",1082}]}.
    {func_info,{atom,beam_type_SUITE},{atom,type_subtraction},1}.
  {label,554}.
    {test,is_list,{f,553},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"A">>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1083}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,565}}. % type_subtraction_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,false,true]}}]}}.
    {test,is_eq_exact,
          {f,563},
          [{tr,{x,0},{t_atom,[error,false,true]}},{atom,true}]}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1085}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,575}}. % type_subtraction_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,32,false}}}]}}.
    {test,is_eq_exact,
          {f,562},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,32,false}}},
           {atom,ok}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1086}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,575}}. % type_subtraction_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,32,false}}}]}}.
    {test,is_eq_exact,
          {f,561},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,32,false}}},
           {literal,<<"aaaa">>}]}.
    {'catch',{y,2},{f,555}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1087}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,583}}. % type_subtraction_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,555}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,560},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,556}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1088}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,585}}. % type_subtraction_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,256,true}}}]}}.
  {label,556}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,559},[{x,0},{atom,ok}]}.
    {'catch',{y,0},{f,557}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1089}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,585}}. % type_subtraction_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,256,true}}}]}}.
  {label,557}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,558},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,558}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1089}]}.
    {badmatch,{x,0}}.
  {label,559}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1088}]}.
    {badmatch,{x,0}}.
  {label,560}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1087}]}.
    {badmatch,{x,0}}.
  {label,561}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1086}]}.
    {badmatch,{x,0}}.
  {label,562}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1085}]}.
    {badmatch,{x,0}}.
  {label,563}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1083}]}.
    {badmatch,{x,0}}.


{function, type_subtraction_1, 1, 565}.
  {label,564}.
    {line,[{location,"beam_type_SUITE.erl",1094}]}.
    {func_info,{atom,beam_type_SUITE},{atom,type_subtraction_1},1}.
  {label,565}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_type_SUITE.erl",1095}]}.
    {call,1,{f,569}}. % ts_12/1
    {'%',{var_info,{x,0},[{type,{t_integer,{2,3}}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1096}]}.
    {call,1,{f,572}}. % ts_23/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,2}}}]}}.
    {test,is_eq_exact,
          {f,566},
          [{tr,{y,0},{t_integer,{2,3}}},{tr,{x,0},{t_integer,{1,2}}}]}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.
  {label,566}.
    {test,is_eq_exact,{f,567},[{tr,{y,0},{t_integer,{2,3}}},{integer,3}]}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{1,2}}},{integer,2}],{x,0}}.
    {deallocate,1}.
    return.
  {label,567}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.


{function, ts_12, 1, 569}.
  {label,568}.
    {line,[{location,"beam_type_SUITE.erl",1102}]}.
    {func_info,{atom,beam_type_SUITE},{atom,ts_12},1}.
  {label,569}.
    {test,is_eq_exact,{f,570},[{x,0},{literal,<<"A">>}]}.
    {move,{integer,3},{x,0}}.
    return.
  {label,570}.
    {move,{integer,2},{x,0}}.
    return.


{function, ts_23, 1, 572}.
  {label,571}.
    {line,[{location,"beam_type_SUITE.erl",1110}]}.
    {func_info,{atom,beam_type_SUITE},{atom,ts_23},1}.
  {label,572}.
    {test,is_eq_exact,{f,573},[{x,0},{literal,<<"A">>}]}.
    {move,{integer,2},{x,0}}.
    return.
  {label,573}.
    {move,{integer,1},{x,0}}.
    return.


{function, type_subtraction_2, 1, 575}.
  {label,574}.
    {line,[{location,"beam_type_SUITE.erl",1118}]}.
    {func_info,{atom,beam_type_SUITE},{atom,type_subtraction_2},1}.
  {label,575}.
    {allocate,0,1}.
    {line,[{location,"beam_type_SUITE.erl",1119}]}.
    {call,1,{f,578}}. % ts_34/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{1,{t_atom,[ok]}},
                       {t_tuple,1,true,#{1 => {t_atom,[ok]}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 => {t_bitstring,32,false}}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,576},[{tr,{x,1},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,576}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,0}.
    return.


{function, ts_34, 1, 578}.
  {label,577}.
    {line,[{location,"beam_type_SUITE.erl",1126}]}.
    {func_info,{atom,beam_type_SUITE},{atom,ts_34},1}.
  {label,578}.
    {select_val,{x,0},
                {f,581},
                {list,[{atom,false},{f,580},{atom,true},{f,579}]}}.
  {label,579}.
    {move,{literal,{ok}},{x,0}}.
    return.
  {label,580}.
    {move,{literal,{error,<<"aaaa">>}},{x,0}}.
    return.
  {label,581}.
    {line,[{location,"beam_type_SUITE.erl",1127}]}.
    {case_end,{x,0}}.


{function, type_subtraction_3, 1, 583}.
  {label,582}.
    {line,[{location,"beam_type_SUITE.erl",1132}]}.
    {func_info,{atom,beam_type_SUITE},{atom,type_subtraction_3},1}.
  {label,583}.
    {jump,{f,582}}.


{function, type_subtraction_4, 1, 585}.
  {label,584}.
    {line,[{location,"beam_type_SUITE.erl",1135}]}.
    {func_info,{atom,beam_type_SUITE},{atom,type_subtraction_4},1}.
  {label,585}.
    {allocate,1,1}.
    {'try',{y,0},{f,586}}.
    {test,is_eq_exact,{f,589},[{x,0},{atom,ok}]}.
    {try_end,{y,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,586}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,588},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1142}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,587},[{x,0}]}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,587}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,904},1}. % '-type_subtraction_4/1-lbc$^0/2-0-'/2
  {label,588}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,589}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1137}]}.
    {badmatch,{atom,ok}}.


{function, container_subtraction, 1, 591}.
  {label,590}.
    {line,[{location,"beam_type_SUITE.erl",1154}]}.
    {func_info,{atom,beam_type_SUITE},{atom,container_subtraction},1}.
  {label,591}.
    {test,is_list,{f,590},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,baz},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1155}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{foo,[]}},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1157}]}.
    {call,1,{f,593}}. % cs_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bar},{y,0}]}}.
    {line,[{location,"beam_type_SUITE.erl",1158}]}.
    {call,1,{f,593}}. % cs_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bar},{y,0}]}}.
    {call_last,1,{f,596},1}. % cs_2/1


{function, cs_1, 1, 593}.
  {label,592}.
    {line,[{location,"beam_type_SUITE.erl",1163}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cs_1},1}.
  {label,593}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[bar]}},
                       {t_tuple,2,true,#{1 => {t_atom,[bar]}}}},
                      {{2,{t_atom,[foo]}},
                       {t_tuple,2,true,#{1 => {t_atom,[foo]},2 => nil}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nil,{f,594},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,594}.
    {call_only,1,{f,596}}. % cs_2/1


{function, cs_2, 1, 596}.
  {label,595}.
    {line,[{location,"beam_type_SUITE.erl",1168}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cs_2},1}.
  {label,596}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[bar]}}}}]}}.
    {test,is_eq_exact,
          {f,595},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[bar]}}}},
           {literal,{bar,baz}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, is_list_opt, 1, 598}.
  {label,597}.
    {line,[{location,"beam_type_SUITE.erl",1171}]}.
    {func_info,{atom,beam_type_SUITE},{atom,is_list_opt},1}.
  {label,598}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"application/a2l">>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1172}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,606}}. % is_list_opt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,604},[{x,0},{atom,true}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1173}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,606}}. % is_list_opt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,599},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,599}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1175}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,611}}. % is_list_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,ok,true]}}]}}.
    {test,is_eq_exact,{f,603},[{tr,{x,0},{t_atom,[false,ok,true]}},{atom,ok}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1176}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,611}}. % is_list_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,ok,true]}}]}}.
    {test,is_eq_exact,
          {f,602},
          [{tr,{x,0},{t_atom,[false,ok,true]}},{atom,true}]}.
    {'catch',{y,0},{f,600}}.
    {move,{atom,no_list},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1177}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,611}}. % is_list_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,ok,true]}}]}}.
  {label,600}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,601},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,601},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,601}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1177}]}.
    {badmatch,{x,0}}.
  {label,602}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1176}]}.
    {badmatch,{x,0}}.
  {label,603}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1175}]}.
    {badmatch,{x,0}}.
  {label,604}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1172}]}.
    {badmatch,{atom,false}}.


{function, is_list_opt_1, 1, 606}.
  {label,605}.
    {line,[{location,"beam_type_SUITE.erl",1181}]}.
    {func_info,{atom,beam_type_SUITE},{atom,is_list_opt_1},1}.
  {label,606}.
    {allocate,0,1}.
    {line,[{location,"beam_type_SUITE.erl",1185}]}.
    {call,1,{f,608}}. % is_list_opt_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[nil]},
                                   {t_cons,{t_bitstring,8,false},nil},
                                   none,none,none}}]}}.
    {bif,is_list,{f,0},[{x,0}],{x,0}}.
    {deallocate,0}.
    return.


{function, is_list_opt_2, 1, 608}.
  {label,607}.
    {line,[{location,"beam_type_SUITE.erl",1187}]}.
    {func_info,{atom,beam_type_SUITE},{atom,is_list_opt_2},1}.
  {label,608}.
    {test,is_eq_exact,{f,609},[{x,0},{literal,<<"application/a2l">>}]}.
    {move,{literal,[<<"a2l">>]},{x,0}}.
    return.
  {label,609}.
    {move,{atom,nil},{x,0}}.
    return.


{function, is_list_opt_3, 1, 611}.
  {label,610}.
    {line,[{location,"beam_type_SUITE.erl",1190}]}.
    {func_info,{atom,beam_type_SUITE},{atom,is_list_opt_3},1}.
  {label,611}.
    {test,is_nil,{f,612},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,612}.
    {allocate,1,1}.
    {bif,is_list,{f,613},[{x,0}],{y,0}}.
    {test,is_ne_exact,{f,614},[{y,0},{atom,true}]}.
  {label,613}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1196}]}.
    {call_ext,1,{extfunc,erlang,binary_to_integer,1}}.
  {label,614}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, connected_tuple_elements, 1, 616}.
  {label,615}.
    {line,[{location,"beam_type_SUITE.erl",1240}]}.
    {func_info,{atom,beam_type_SUITE},{atom,connected_tuple_elements},1}.
  {label,616}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1241}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,624}}. % cte_generate/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},{t_tuple,3,true,#{1 => {t_atom,[a]}}}},
                      {{3,{t_atom,[b]}},{t_tuple,3,true,#{1 => {t_atom,[b]}}}},
                      {{3,{t_atom,[c]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[c]},
                             3 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_tuple,1,true,#{}},
                                       2 => {t_tuple,1,true,#{}}}}}}}],
                     none}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,619}}. % cte_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,none,
                                   [{{3,{t_atom,[a]}},
                                     {t_tuple,3,true,#{1 => {t_atom,[a]}}}},
                                    {{3,{t_atom,[b]}},
                                     {t_tuple,3,true,#{1 => {t_atom,[b]}}}},
                                    {{4,{t_atom,[c]}},
                                     {t_tuple,4,true,#{1 => {t_atom,[c]}}}}],
                                   none}}]}}.
    {test,is_eq_exact,
          {f,617},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,#{1 => {t_atom,[a]}}}},
                         {{3,{t_atom,[b]}},
                          {t_tuple,3,true,#{1 => {t_atom,[b]}}}},
                         {{4,{t_atom,[c]}},
                          {t_tuple,4,true,#{1 => {t_atom,[c]}}}}],
                        none}},
           {literal,{c,1,2,3}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,617}.
    {badmatch,{x,0}}.


{function, cte_match, 2, 619}.
  {label,618}.
    {line,[{location,"beam_type_SUITE.erl",1244}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cte_match},2}.
  {label,619}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},{t_tuple,3,true,#{1 => {t_atom,[a]}}}},
                      {{3,{t_atom,[b]}},{t_tuple,3,true,#{1 => {t_atom,[b]}}}},
                      {{3,{t_atom,[c]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[c]},
                             3 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_tuple,1,true,#{}},
                                       2 => {t_tuple,1,true,#{}}}}}}}],
                     none}}]}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {get_tuple_element,{x,1},2,{x,4}}.
    {select_val,{tr,{x,2},{t_atom,[a,b,c]}},
                {f,622},
                {list,[{atom,a},{f,621},{atom,b},{f,620}]}}.
  {label,620}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1247}]}.
    {call,1,{f,838}}. % id/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,838}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,b},{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,621}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1245}]}.
    {call,1,{f,838}}. % id/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,838}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,a},{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,622}.
    {test,is_eq_exact,{f,618},[{x,0},{atom,gurka}]}.
    {allocate,2,5}.
    {move,{x,4},{y,1}}.
    {get_tuple_element,{x,4},1,{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1249}]}.
    {call,1,{f,838}}. % id/1
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,838}}. % id/1
    {get_tuple_element,{y,0},0,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,838}}. % id/1
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{atom,c},{y,1},{y,0},{x,0}]}}.
    {deallocate,2}.
    return.


{function, cte_generate, 1, 624}.
  {label,623}.
    {line,[{location,"beam_type_SUITE.erl",1251}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cte_generate},1}.
  {label,624}.
    {select_val,{x,0},
                {f,623},
                {list,[{integer,0},
                       {f,627},
                       {integer,1},
                       {f,626},
                       {integer,2},
                       {f,625}]}}.
  {label,625}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1256}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,3},{x,0}}.
    {call,1,{f,838}}. % id/1
    {test_heap,11,1}.
    {put_tuple2,{x,1},{list,[{y,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,c},{y,1},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,626}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1254}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,838}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,b},{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,627}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1252}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,838}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,a},{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, switch_fail_inference, 1, 629}.
  {label,628}.
    {line,[{location,"beam_type_SUITE.erl",1261}]}.
    {func_info,{atom,beam_type_SUITE},{atom,switch_fail_inference},1}.
  {label,629}.
    {allocate,0,0}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1262}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,637}}. % sfi/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{3,{t_atom,[error]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[error]},2 => {t_atom,[gaffel]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,635},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},
                        none,none,
                        [{{3,{t_atom,[error]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_atom,[gaffel]}}}}],
                        none}},
           {atom,ok}]}.
    {move,{literal,[{twiddle,frobnitz},eof]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1263}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,637}}. % sfi/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{3,{t_atom,[error]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[error]},2 => {t_atom,[gaffel]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,634},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},
                        none,none,
                        [{{3,{t_atom,[error]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_atom,[gaffel]}}}}],
                        none}},
           {atom,ok}]}.
    {move,{literal,[{twiddle,frobnitz},{error,gurka}]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1264}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,637}}. % sfi/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{3,{t_atom,[error]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[error]},2 => {t_atom,[gaffel]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,633},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},
                        none,none,
                        [{{3,{t_atom,[error]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_atom,[gaffel]}}}}],
                        none}},
           {literal,{error,gaffel,gurka}}]}.
    {move,{literal,[{ok,frobnitz},{error,gurka}]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1265}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,637}}. % sfi/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{3,{t_atom,[error]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[error]},2 => {t_atom,[gaffel]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,632},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},
                        none,none,
                        [{{3,{t_atom,[error]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_atom,[gaffel]}}}}],
                        none}},
           {literal,{error,gaffel,gurka}}]}.
    {move,{literal,"GET"},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1267}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,655}}. % sfi_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,631},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,"OTHER"},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1268}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,655}}. % sfi_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,630},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,630}.
    {badmatch,{atom,ok}}.
  {label,631}.
    {line,[{location,"beam_type_SUITE.erl",1267}]}.
    {badmatch,{atom,error}}.
  {label,632}.
    {line,[{location,"beam_type_SUITE.erl",1265}]}.
    {badmatch,{x,0}}.
  {label,633}.
    {line,[{location,"beam_type_SUITE.erl",1264}]}.
    {badmatch,{x,0}}.
  {label,634}.
    {line,[{location,"beam_type_SUITE.erl",1263}]}.
    {badmatch,{x,0}}.
  {label,635}.
    {line,[{location,"beam_type_SUITE.erl",1262}]}.
    {badmatch,{x,0}}.


{function, sfi, 1, 637}.
  {label,636}.
    {line,[{location,"beam_type_SUITE.erl",1272}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi},1}.
  {label,637}.
    {allocate,0,1}.
    {line,[{location,"beam_type_SUITE.erl",1273}]}.
    {call,1,{f,640}}. % sfi_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 =>
                                 {t_tuple,2,true,#{1 => {t_atom,[gaffel]}}}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_atom,[done]}}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,638},[{x,1},{atom,ok}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,638}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{atom,gaffel},{x,0}]}}.
    {deallocate,0}.
    return.


{function, sfi_1, 1, 640}.
  {label,639}.
    {line,[{location,"beam_type_SUITE.erl",1278}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_1},1}.
  {label,640}.
    {call_only,1,{f,642}}. % sfi_2/1


{function, sfi_2, 1, 642}.
  {label,641}.
    {line,[{location,"beam_type_SUITE.erl",1284}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_2},1}.
  {label,642}.
    {test,is_nonempty_list,{f,644},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"beam_type_SUITE.erl",1285}]}.
    {call,1,{f,646}}. % sfi_3/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 =>
                                 {t_tuple,2,true,#{1 => {t_atom,[gaffel]}}}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},
                             2 => {t_atom,[eof,twiddle]}}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,643},[{x,1},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,642},1}. % sfi_2/1
  {label,643}.
    {deallocate,1}.
    return.
  {label,644}.
    {test,is_nil,{f,641},[{x,0}]}.
    {move,{literal,{ok,done}},{x,0}}.
    return.


{function, sfi_3, 1, 646}.
  {label,645}.
    {line,[{location,"beam_type_SUITE.erl",1292}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_3},1}.
  {label,646}.
    {test,is_tagged_tuple,{f,647},[{x,0},2,{atom,twiddle}]}.
    {move,{literal,{ok,twiddle}},{x,0}}.
    return.
  {label,647}.
    {allocate,0,1}.
    {line,[{location,"beam_type_SUITE.erl",1295}]}.
    {call,1,{f,650}}. % sfi_4/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 =>
                                 {t_tuple,2,true,#{1 => {t_atom,[gaffel]}}}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_atom,[eof]}}}},
                      {{2,{t_atom,[twiddle]}},
                       {t_tuple,2,true,#{1 => {t_atom,[twiddle]}}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,648},[{x,1},{atom,twiddle}]}.
    {call_last,1,{f,646},0}. % sfi_3/1
  {label,648}.
    {deallocate,0}.
    return.


{function, sfi_4, 1, 650}.
  {label,649}.
    {line,[{location,"beam_type_SUITE.erl",1301}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_4},1}.
  {label,650}.
    {test,is_tuple,{f,653},[{x,0}]}.
    {test,test_arity,{f,649},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {select_val,{x,1},{f,649},{list,[{atom,error},{f,652},{atom,ok},{f,651}]}}.
  {label,651}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,twiddle},{x,2}]}}.
    return.
  {label,652}.
    {test_heap,6,3}.
    {put_tuple2,{x,0},{list,[{atom,gaffel},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    return.
  {label,653}.
    {test,is_eq_exact,{f,649},[{x,0},{atom,eof}]}.
    {move,{literal,{ok,eof}},{x,0}}.
    return.


{function, sfi_5, 1, 655}.
  {label,654}.
    {line,[{location,"beam_type_SUITE.erl",1308}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_5},1}.
  {label,655}.
    {test,is_eq_exact,{f,656},[{x,0},{literal,"GET"}]}.
    {move,{literal,{304}},{x,0}}.
    {jump,{f,657}}.
  {label,656}.
    {move,{literal,{412}},{x,0}}.
  {label,657}.
    {call_only,1,{f,659}}. % sfi_send_return_value/1


{function, sfi_send_return_value, 1, 659}.
  {label,658}.
    {line,[{location,"beam_type_SUITE.erl",1317}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_send_return_value},1}.
  {label,659}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{1,{t_integer,{304,304}}},
                       {t_tuple,1,true,#{1 => {t_integer,{304,304}}}}},
                      {{1,{t_integer,{412,412}}},
                       {t_tuple,1,true,#{1 => {t_integer,{412,412}}}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,660},[{x,0},{integer,412}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,660}.
    {move,{atom,ok},{x,0}}.
    return.


{function, failures, 1, 662}.
  {label,661}.
    {line,[{location,"beam_type_SUITE.erl",1322}]}.
    {func_info,{atom,beam_type_SUITE},{atom,failures},1}.
  {label,662}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'catch',{y,2},{f,663}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1323}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,b},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{atom,c},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{y,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call,3,{f,670}}. % failures_1/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,663}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,668},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,668},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,664}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,3},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1324}]}.
    {call,3,{f,670}}. % failures_1/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,664}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,667},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,667},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,0},{f,665}}.
    {move,{atom,x},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1325}]}.
    {call,3,{f,670}}. % failures_1/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,665}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,666},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,666},[{x,1},2,{atom,badarith}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,666}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1325}]}.
    {badmatch,{x,0}}.
  {label,667}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1324}]}.
    {badmatch,{x,0}}.
  {label,668}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1323}]}.
    {badmatch,{x,0}}.


{function, failures_1, 3, 670}.
  {label,669}.
    {line,[{location,"beam_type_SUITE.erl",1328}]}.
    {func_info,{atom,beam_type_SUITE},{atom,failures_1},3}.
  {label,670}.
    {test,is_nil,{f,669},[{x,0}]}.
    {line,[{location,"beam_type_SUITE.erl",1335}]}.
    {gc_bif,'-',{f,0},3,[nil,{x,2}],{x,0}}.
    return.


{function, cover_maps_functions, 1, 672}.
  {label,671}.
    {line,[{location,"beam_type_SUITE.erl",1338}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cover_maps_functions},1}.
  {label,672}.
    {allocate_heap,27,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
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
    {make_fun3,{f,902},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[true]}}]}}.
    {'catch',{y,26},{f,673}}.
    {move,{atom,not_a_map},{x,1}}.
    {line,[{location,"beam_type_SUITE.erl",1339}]}.
    {call_ext,2,{extfunc,maps,filter,2}}.
  {label,673}.
    {catch_end,{y,26}}.
    {test,is_tagged_tuple,{f,728},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,25},{f,674}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,not_a_predicate},{x,0}}.
    {line,[{scope,"56"},{location,"beam_type_SUITE.erl",1340}]}.
    {call_ext,2,{extfunc,maps,filter,2}}.
    {move,{literal,#{}},{x,0}}.
  {label,674}.
    {catch_end,{y,25}}.
    {test,is_tagged_tuple,{f,727},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,key_not_present},{x,0}}.
    {line,[{scope,"34"},{location,"beam_type_SUITE.erl",1342}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,900},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[true]}}]}}.
    {'catch',{y,24},{f,675}}.
    {move,{atom,not_a_map},{x,2}}.
    {move,{atom,init},{x,1}}.
    {line,[{scope,"34"},{location,"beam_type_SUITE.erl",1344}]}.
    {call_ext,3,{extfunc,maps,fold,3}}.
  {label,675}.
    {catch_end,{y,24}}.
    {test,is_tagged_tuple,{f,726},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,23},{f,676}}.
    {move,{atom,init},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,"12"},{location,"beam_type_SUITE.erl",1345}]}.
    {call_ext,3,{extfunc,maps,fold,3}}.
    {move,{atom,init},{x,0}}.
  {label,676}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,725},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,gurka},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,"/0"},{location,"beam_type_SUITE.erl",1347}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
    {move,{atom,gurka},{x,1}}.
    {move,{literal,[hello]},{x,0}}.
    {line,[{scope,"/0"},{location,"beam_type_SUITE.erl",1348}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
    {test,has_map_fields,{f,724},{x,0},{list,[{atom,hello}]}}.
    {'catch',{y,22},{f,677}}.
    {move,{atom,gurka},{x,1}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,"/0"},{location,"beam_type_SUITE.erl",1349}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
  {label,677}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,723},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,21},{f,678}}.
    {move,nil,{x,0}}.
    {line,[{scope,"-."},{location,"beam_type_SUITE.erl",1351}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{literal,#{}},{x,0}}.
  {label,678}.
    {catch_end,{y,21}}.
    {test,is_map,{f,722},[{x,0}]}.
    {'catch',{y,20},{f,679}}.
    {move,{literal,[not_a_tuple]},{x,0}}.
    {line,[{scope,"+,"},{location,"beam_type_SUITE.erl",1352}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
  {label,679}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,721},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,19},{f,680}}.
    {bif,map_get,{f,0},[{atom,key_not_present},{literal,#{}}],{x,0}}.
  {label,680}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,720},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"'("},{location,"beam_type_SUITE.erl",1357}]}.
    {call_ext,1,{extfunc,maps,keys,1}}.
    {'catch',{y,18},{f,681}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,"'("},{location,"beam_type_SUITE.erl",1358}]}.
    {call_ext,1,{extfunc,maps,keys,1}}.
  {label,681}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,719},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,898},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,17},{f,682}}.
    {move,{literal,#{a => a}},{x,1}}.
    {line,[{scope,"%&"},{location,"beam_type_SUITE.erl",1360}]}.
    {call_ext,2,{extfunc,maps,map,2}}.
  {label,682}.
    {catch_end,{y,17}}.
    {test,is_map,{f,718},[{x,0}]}.
    {get_map_elements,{f,718},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,718},[{x,1},{atom,ok}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,896},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {'catch',{y,16},{f,683}}.
    {move,{literal,#{a => a}},{x,1}}.
    {line,[{scope,"\""},{location,"beam_type_SUITE.erl",1361}]}.
    {call_ext,2,{extfunc,maps,map,2}}.
  {label,683}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,717},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,15},{f,684}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,"!\""},{location,"beam_type_SUITE.erl",1362}]}.
    {call_ext,2,{extfunc,maps,map,2}}.
    {move,{literal,#{}},{x,0}}.
  {label,684}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,716},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,894},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,14},{f,685}}.
    {move,{atom,not_a_map},{x,1}}.
    {line,[{scope,[31,32]},{location,"beam_type_SUITE.erl",1363}]}.
    {call_ext,2,{extfunc,maps,map,2}}.
  {label,685}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,715},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,13},{f,686}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[29,30]},{location,"beam_type_SUITE.erl",1365}]}.
    {call_ext,2,{extfunc,maps,merge,2}}.
  {label,686}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,714},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,12},{f,687}}.
    {move,{atom,value},{x,1}}.
    {move,{atom,not_a_map},{x,2}}.
    {move,{atom,key},{x,0}}.
    {line,[{scope,[27,28]},{location,"beam_type_SUITE.erl",1369}]}.
    {call_ext,3,{extfunc,maps,put,3}}.
  {label,687}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,713},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{a => a}},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[25,26]},{location,"beam_type_SUITE.erl",1371}]}.
    {call_ext,2,{extfunc,maps,remove,2}}.
    {'catch',{y,11},{f,688}}.
    {move,{atom,not_a_map},{x,1}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{scope,[25,26]},{location,"beam_type_SUITE.erl",1372}]}.
    {call_ext,2,{extfunc,maps,remove,2}}.
  {label,688}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,712},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,key_not_present},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",1374}]}.
    {call_ext,2,{extfunc,maps,take,2}}.
    {'catch',{y,10},{f,689}}.
    {move,{atom,not_a_map},{x,1}}.
    {move,{atom,key},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",1375}]}.
    {call_ext,2,{extfunc,maps,take,2}}.
  {label,689}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,711},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,9},{f,690}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[21,22]},{location,"beam_type_SUITE.erl",1377}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
  {label,690}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,710},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,892},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{literal,#{a => a}},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",1379}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
    {get_map_elements,{f,709},
                      {tr,{x,0},{t_map,{t_atom,[a]},{t_atom,[a,ok]}}},
                      {list,[{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,709},[{tr,{x,1},{t_atom,[a,ok]}},{atom,ok}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,890},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,none}]}}.
    {'catch',{y,8},{f,691}}.
    {move,{literal,#{a => a}},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",1380}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,691}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,708},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,888},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,7},{f,692}}.
    {move,{literal,#{}},{x,2}}.
    {move,{atom,key_not_present},{x,0}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",1381}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,692}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,707},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,6},{f,693}}.
    {move,{atom,not_a_fun},{x,1}}.
    {move,{atom,not_a_map},{x,2}}.
    {move,{atom,key},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",1382}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,693}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,706},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",1384}]}.
    {call_ext,1,{extfunc,maps,values,1}}.
    {'catch',{y,5},{f,694}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",1385}]}.
    {call_ext,1,{extfunc,maps,values,1}}.
  {label,694}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,705},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,[key_not_present]},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",1387}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
    {'catch',{y,4},{f,695}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",1388}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,695}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,704},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,696}}.
    {move,{atom,not_a_map},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",1389}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,696}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,703},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,697}}.
    {move,{atom,not_a_map},{x,1}}.
    {move,{literal,[foobar]},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",1390}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,697}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,702},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,698}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1392}]}.
    {call_ext,2,{extfunc,maps,without,2}}.
  {label,698}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,701},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,699}}.
    {move,{atom,not_a_map},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1393}]}.
    {call_ext,2,{extfunc,maps,without,2}}.
  {label,699}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,700},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,27}.
    return.
  {label,700}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1393}]}.
    {badmatch,{x,0}}.
  {label,701}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1392}]}.
    {badmatch,{x,0}}.
  {label,702}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1390}]}.
    {badmatch,{x,0}}.
  {label,703}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1389}]}.
    {badmatch,{x,0}}.
  {label,704}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",1388}]}.
    {badmatch,{x,0}}.
  {label,705}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",1385}]}.
    {badmatch,{x,0}}.
  {label,706}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",1382}]}.
    {badmatch,{x,0}}.
  {label,707}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",1381}]}.
    {badmatch,{x,0}}.
  {label,708}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",1380}]}.
    {badmatch,{x,0}}.
  {label,709}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",1379}]}.
    {badmatch,{x,0}}.
  {label,710}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",1377}]}.
    {badmatch,{x,0}}.
  {label,711}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",1375}]}.
    {badmatch,{x,0}}.
  {label,712}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",1372}]}.
    {badmatch,{x,0}}.
  {label,713}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",1369}]}.
    {badmatch,{x,0}}.
  {label,714}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",1365}]}.
    {badmatch,{x,0}}.
  {label,715}.
    {line,[{scope,[28]},{location,"beam_type_SUITE.erl",1363}]}.
    {badmatch,{x,0}}.
  {label,716}.
    {line,[{scope,[30]},{location,"beam_type_SUITE.erl",1362}]}.
    {badmatch,{x,0}}.
  {label,717}.
    {line,[{scope," "},{location,"beam_type_SUITE.erl",1361}]}.
    {badmatch,{x,0}}.
  {label,718}.
    {line,[{scope,"\""},{location,"beam_type_SUITE.erl",1360}]}.
    {badmatch,{x,0}}.
  {label,719}.
    {line,[{scope,"$"},{location,"beam_type_SUITE.erl",1358}]}.
    {badmatch,{x,0}}.
  {label,720}.
    {line,[{scope,"&"},{location,"beam_type_SUITE.erl",1355}]}.
    {badmatch,{x,0}}.
  {label,721}.
    {line,[{scope,"("},{location,"beam_type_SUITE.erl",1352}]}.
    {badmatch,{x,0}}.
  {label,722}.
    {line,[{scope,"*"},{location,"beam_type_SUITE.erl",1351}]}.
    {badmatch,{x,0}}.
  {label,723}.
    {line,[{scope,","},{location,"beam_type_SUITE.erl",1349}]}.
    {badmatch,{x,0}}.
  {label,724}.
    {line,[{scope,"."},{location,"beam_type_SUITE.erl",1348}]}.
    {badmatch,{x,0}}.
  {label,725}.
    {line,[{scope,"."},{location,"beam_type_SUITE.erl",1345}]}.
    {badmatch,{x,0}}.
  {label,726}.
    {line,[{scope,"0"},{location,"beam_type_SUITE.erl",1344}]}.
    {badmatch,{x,0}}.
  {label,727}.
    {line,[{scope,"2"},{location,"beam_type_SUITE.erl",1340}]}.
    {badmatch,{x,0}}.
  {label,728}.
    {line,[{scope,"4"},{location,"beam_type_SUITE.erl",1339}]}.
    {badmatch,{x,0}}.


{function, min_max_mixed_types, 1, 730}.
  {label,729}.
    {line,[{location,"beam_type_SUITE.erl",1399}]}.
    {func_info,{atom,beam_type_SUITE},{atom,min_max_mixed_types},1}.
  {label,730}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,12},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1400}]}.
    {call,1,{f,838}}. % id/1
    {bif,min,{f,0},[{x,0},{float,100.0}],{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1401}]}.
    {fconv,{tr,{x,0},{t_number,any}},{fr,0}}.
    {fmove,{float,0.5},{fr,1}}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{float,12.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1403}]}.
    {call,1,{f,838}}. % id/1
    {bif,max,{f,0},[{x,0},{integer,100}],{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1404}]}.
    {fconv,{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,any,any},
                        {t_number,{100,'+inf'}},
                        {t_tuple,0,false,#{}},
                        other}},
           {fr,0}}.
    {fmove,{float,0.5},{fr,1}}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1407}]}.
    {call,1,{f,838}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {bif,min,{f,0},[{tr,{x,0},{t_number,any}},{integer,42}],{x,0}}.
    {call,1,{f,838}}. % id/1
    {test,is_eq_exact,{f,735},[{x,0},{integer,1}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1408}]}.
    {call,1,{f,838}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {bif,min,{f,0},[{tr,{x,0},{t_number,any}},{integer,-10}],{x,0}}.
    {call,1,{f,838}}. % id/1
    {test,is_eq_exact,{f,734},[{x,0},{integer,-10}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1409}]}.
    {call,1,{f,838}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {bif,max,{f,0},[{integer,3},{tr,{x,0},{t_number,any}}],{x,0}}.
    {call,1,{f,838}}. % id/1
    {test,is_eq_exact,{f,733},[{x,0},{integer,43}]}.
    {move,{integer,41},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1410}]}.
    {call,1,{f,838}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {bif,max,{f,0},[{integer,-99},{tr,{x,0},{t_number,any}}],{x,0}}.
    {call,1,{f,838}}. % id/1
    {test,is_eq_exact,{f,732},[{x,0},{integer,42}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1411}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,838}}. % id/1
    {gc_bif,'-',{f,0},1,[{x,0}],{x,0}}.
    {bif,min,{f,0},[{y,0},{tr,{x,0},{t_number,any}}],{x,0}}.
    {trim,1,0}.
    {call,1,{f,838}}. % id/1
    {test,is_eq_exact,{f,731},[{x,0},{integer,-42}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,731}.
    {badmatch,{x,0}}.
  {label,732}.
    {line,[{location,"beam_type_SUITE.erl",1410}]}.
    {badmatch,{x,0}}.
  {label,733}.
    {line,[{location,"beam_type_SUITE.erl",1409}]}.
    {badmatch,{x,0}}.
  {label,734}.
    {line,[{location,"beam_type_SUITE.erl",1408}]}.
    {badmatch,{x,0}}.
  {label,735}.
    {line,[{location,"beam_type_SUITE.erl",1407}]}.
    {badmatch,{x,0}}.


{function, not_equal, 1, 737}.
  {label,736}.
    {line,[{location,"beam_type_SUITE.erl",1421}]}.
    {func_info,{atom,beam_type_SUITE},{atom,not_equal},1}.
  {label,737}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1422}]}.
    {call,1,{f,747}}. % do_not_equal/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {'catch',{y,3},{f,738}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1423}]}.
    {call,1,{f,747}}. % do_not_equal/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
  {label,738}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,745},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,745},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,739}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",1424}]}.
    {call,1,{f,747}}. % do_not_equal/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,739}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,744},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,744},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,740}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1425}]}.
    {call,1,{f,747}}. % do_not_equal/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,740}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,743},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,743},[{x,1},2,{atom,function_clause}]}.
    {bif,self,{f,0},[],{x,0}}.
    {'catch',{y,0},{f,741}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1426}]}.
    {call,1,{f,747}}. % do_not_equal/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,741}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,742},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,742},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,742}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1426}]}.
    {badmatch,{x,0}}.
  {label,743}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1425}]}.
    {badmatch,{x,0}}.
  {label,744}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1424}]}.
    {badmatch,{x,0}}.
  {label,745}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1423}]}.
    {badmatch,{x,0}}.


{function, do_not_equal, 1, 747}.
  {label,746}.
    {line,[{location,"beam_type_SUITE.erl",1430}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_not_equal},1}.
  {label,747}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false,true]},
                                   none,
                                   {t_integer,{0,42}},
                                   none,pid}}]}}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,true]},
                       none,
                       {t_integer,{0,42}},
                       none,pid}},
          {atom,true}],
         {x,1}}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,true]},
                       none,
                       {t_integer,{0,42}},
                       none,pid}},
          {atom,true}],
         {x,2}}.
    {test,is_eq_exact,{f,748},[{tr,{x,1},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,746},[{tr,{x,2},{t_atom,[false,true]}},{atom,true}]}.
  {label,748}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,true]},
                       none,
                       {t_integer,{0,42}},
                       none,pid}},
          {atom,a}],
         {x,1}}.
    {test,is_eq_exact,
          {f,749},
          [{tr,{x,1},{t_atom,[false,true]}},
           {tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        none,
                        {t_integer,{0,42}},
                        none,pid}}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,749}.
    {line,[{location,"beam_type_SUITE.erl",1431}]}.
    {badmatch,{x,1}}.


{function, infer_relops, 1, 751}.
  {label,750}.
    {line,[{location,"beam_type_SUITE.erl",1434}]}.
    {func_info,{atom,beam_type_SUITE},{atom,infer_relops},1}.
  {label,751}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'catch',{y,2},{f,752}}.
    {line,[{location,"beam_type_SUITE.erl",1435}]}.
    {call,0,{f,759}}. % infer_relops_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,752}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,757},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,757},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,1},{f,753}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1436}]}.
    {call,0,{f,761}}. % infer_relops_2/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,753}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,756},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,756},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,0},{f,754}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1437}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,763}}. % infer_relops_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,754}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,755},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,755},[{x,1},2,{atom,badarith}]}.
    {line,[{scope,[1,2]},{location,"beam_type_SUITE.erl",1438}]}.
    {call,0,{f,766}}. % infer_relops_4/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,755}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1437}]}.
    {badmatch,{x,0}}.
  {label,756}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1436}]}.
    {badmatch,{x,0}}.
  {label,757}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1435}]}.
    {badmatch,{x,0}}.


{function, infer_relops_1, 0, 759}.
  {label,758}.
    {line,[{location,"beam_type_SUITE.erl",1444}]}.
    {func_info,{atom,beam_type_SUITE},{atom,infer_relops_1},0}.
  {label,759}.
    {line,[{location,"beam_type_SUITE.erl",1445}]}.
    {gc_bif,'rem',{f,0},0,[{integer,0},{integer,0}],{x,0}}.
    {bif,node,{f,0},[],{x,0}}.
    {call_only,1,{f,884}}. % '-infer_relops_1/0-lc$^0/1-0-'/1


{function, infer_relops_2, 0, 761}.
  {label,760}.
    {line,[{location,"beam_type_SUITE.erl",1447}]}.
    {func_info,{atom,beam_type_SUITE},{atom,infer_relops_2},0}.
  {label,761}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1448}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},pid},{integer,0}],{x,0}}.
    return.


{function, infer_relops_3, 1, 763}.
  {label,762}.
    {line,[{location,"beam_type_SUITE.erl",1451}]}.
    {func_info,{atom,beam_type_SUITE},{atom,infer_relops_3},1}.
  {label,763}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {call_ext,0,{extfunc,erlang,is_alive,0}}.
    {line,[{location,"beam_type_SUITE.erl",1452}]}.
    {gc_bif,'+',{f,0},1,[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,764},[{y,0},{atom,true}]}.
    {move,{integer,0},{x,0}}.
    {call_last,1,{f,763},1}. % infer_relops_3/1
  {label,764}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{atom,ok}]}}.
    {line,[{location,"beam_type_SUITE.erl",1456}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.


{function, infer_relops_4, 0, 766}.
  {label,765}.
    {line,[{location,"beam_type_SUITE.erl",1459}]}.
    {func_info,{atom,beam_type_SUITE},{atom,infer_relops_4},0}.
  {label,766}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,1,{f,878}}. % '-infer_relops_4/0-lc$^1/1-0-'/1


{function, binary_unit, 1, 768}.
  {label,767}.
    {line,[{location,"beam_type_SUITE.erl",1474}]}.
    {func_info,{atom,beam_type_SUITE},{atom,binary_unit},1}.
  {label,768}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_type_SUITE.erl",1475}]}.
    {call,0,{f,772}}. % binary_unit_1/0
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,
                                 {'-binary_unit_1/0-Foo/1-0-',1},
                                 {t_bitstring,16,false}}}]}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1477}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,770},[{x,0},{literal,<<0,1>>}]}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{literal,[0,1]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1478}]}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,any}}}.
    {test,is_eq_exact,{f,769},[{x,0},{literal,<<0,0>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,769}.
    {badmatch,{x,0}}.
  {label,770}.
    {line,[{location,"beam_type_SUITE.erl",1477}]}.
    {badmatch,{x,0}}.


{function, binary_unit_1, 0, 772}.
  {label,771}.
    {line,[{location,"beam_type_SUITE.erl",1482}]}.
    {func_info,{atom,beam_type_SUITE},{atom,binary_unit_1},0}.
  {label,772}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,867},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_bitstring,16,false}}]}}.
    return.


{function, premature_concretization, 1, 774}.
  {label,773}.
    {line,[{location,"beam_type_SUITE.erl",1491}]}.
    {func_info,{atom,beam_type_SUITE},{atom,premature_concretization},1}.
  {label,774}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,tagged},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1492}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{tagged,foo}},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,778}}. % pm_concretization_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,776},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,flurb},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1493}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{tagged,foo}},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,778}}. % pm_concretization_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,775},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,775}.
    {badmatch,{atom,ok}}.
  {label,776}.
    {line,[{location,"beam_type_SUITE.erl",1492}]}.
    {badmatch,{atom,error}}.


{function, pm_concretization_1, 2, 778}.
  {label,777}.
    {line,[{location,"beam_type_SUITE.erl",1496}]}.
    {func_info,{atom,beam_type_SUITE},{atom,pm_concretization_1},2}.
  {label,778}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"beam_type_SUITE.erl",1497}]}.
    {call,2,{f,781}}. % pm_concretization_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[tagged]}}}}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},0,{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1498}]}.
    {call,1,{f,784}}. % pm_concretization_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test,is_eq_exact,{f,779},[{y,1},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,786},2}. % pm_concretization_4/1
  {label,779}.
    {move,{atom,error},{x,0}}.
    {deallocate,2}.
    return.


{function, pm_concretization_2, 2, 781}.
  {label,780}.
    {line,[{location,"beam_type_SUITE.erl",1504}]}.
    {func_info,{atom,beam_type_SUITE},{atom,pm_concretization_2},2}.
  {label,781}.
    {test,is_eq_exact,{f,782},[{x,0},{atom,tagged}]}.
    {test,is_tagged_tuple,{f,782},[{x,1},2,{atom,tagged}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,1}]}}.
    return.
  {label,782}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1}]}}.
    return.


{function, pm_concretization_3, 1, 784}.
  {label,783}.
    {line,[{location,"beam_type_SUITE.erl",1507}]}.
    {func_info,{atom,beam_type_SUITE},{atom,pm_concretization_3},1}.
  {label,784}.
    {move,{atom,ok},{x,0}}.
    return.


{function, pm_concretization_4, 1, 786}.
  {label,785}.
    {line,[{location,"beam_type_SUITE.erl",1508}]}.
    {func_info,{atom,beam_type_SUITE},{atom,pm_concretization_4},1}.
  {label,786}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[tagged]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, funs, 1, 788}.
  {label,787}.
    {line,[{location,"beam_type_SUITE.erl",1510}]}.
    {func_info,{atom,beam_type_SUITE},{atom,funs},1}.
  {label,788}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,789}}.
    {line,[{location,"beam_type_SUITE.erl",1511}]}.
    {call,0,{f,794}}. % gh_7179/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,789}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,792},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,792},[{x,1},2,{atom,badarg}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,865},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1512}]}.
    {call,1,{f,838}}. % id/1
    {'catch',{y,0},{f,790}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1514}]}.
    {call,0,{f,796}}. % gh_7197/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,790}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,791},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,791},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,791}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1514}]}.
    {badmatch,{x,0}}.
  {label,792}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1511}]}.
    {badmatch,{x,0}}.


{function, gh_7179, 0, 794}.
  {label,793}.
    {line,[{location,"beam_type_SUITE.erl",1519}]}.
    {func_info,{atom,beam_type_SUITE},{atom,gh_7179},0}.
  {label,794}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1520}]}.
    {call,1,{f,862}}. % '-gh_7179/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {bif,is_function,
         {f,0},
         [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{integer,-1}],
         {x,0}}.
    {deallocate,0}.
    return.


{function, gh_7197, 0, 796}.
  {label,795}.
    {line,[{location,"beam_type_SUITE.erl",1524}]}.
    {func_info,{atom,beam_type_SUITE},{atom,gh_7197},0}.
  {label,796}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1525}]}.
    {call,1,{f,859}}. % '-gh_7197/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {move,{x,0},{y,0}}.
    {call_ext,0,{extfunc,erlang,get_keys,0}}.
    {bif,is_function,
         {f,0},
         [{tr,{y,0},{t_list,{t_atom,[ok]},nil}},{x,0}],
         {x,0}}.
    {move,nil,{x,0}}.
    {deallocate,1}.
    return.


{function, will_succeed, 1, 798}.
  {label,797}.
    {line,[{location,"beam_type_SUITE.erl",1530}]}.
    {func_info,{atom,beam_type_SUITE},{atom,will_succeed},1}.
  {label,798}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1531}]}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{}},{x,0}}.
    {call,1,{f,838}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,801}}. % will_succeed_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,799},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,799}.
    {badmatch,{atom,a}}.


{function, will_succeed_1, 2, 801}.
  {label,800}.
    {line,[{location,"beam_type_SUITE.erl",1536}]}.
    {func_info,{atom,beam_type_SUITE},{atom,will_succeed_1},2}.
  {label,801}.
    {gc_bif,map_size,{f,802},2,[{x,1}],{x,1}}.
    {line,[{location,"beam_type_SUITE.erl",1537}]}.
    {gc_bif,'bxor',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,288230376151711743}}},
             {integer,288230376151711743}],
            {x,1}}.
    {gc_bif,'bsl',
            {f,802},
            2,
            [{integer,1},{tr,{x,1},{t_integer,{0,288230376151711743}}}],
            {x,1}}.
    {test,is_eq_exact,{f,802},[{tr,{x,1},{t_integer,{1,'+inf'}}},{x,0}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,802}.
    {move,{atom,b},{x,0}}.
    return.


{function, float_confusion, 1, 804}.
  {label,803}.
    {line,[{location,"beam_type_SUITE.erl",1544}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion},1}.
  {label,804}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {'catch',{y,4},{f,805}}.
    {line,[{location,"beam_type_SUITE.erl",1545}]}.
    {badmatch,{atom,ok}}.
  {label,805}.
    {catch_end,{y,4}}.
    {move,{float,-0.0},{x,1}}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",1545}]}.
    {call,2,{f,815}}. % float_confusion_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{float,0.0},{x,1}}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",1546}]}.
    {call,2,{f,815}}. % float_confusion_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,806}}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",1547}]}.
    {call,0,{f,817}}. % float_confusion_2/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,806}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,813},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,807}}.
    {move,{float,0.0},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",1548}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,822}}. % float_confusion_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,807}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,812},[{x,0},2,{atom,'EXIT'}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1549}]}.
    {call,1,{f,838}}. % id/1
    {call,1,{f,825}}. % float_confusion_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,808}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1550}]}.
    {call,0,{f,827}}. % float_confusion_5/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,808}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,811},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,809}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1551}]}.
    {call,0,{f,832}}. % float_confusion_6/0
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,809}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,810},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,810}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1551}]}.
    {badmatch,{x,0}}.
  {label,811}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1550}]}.
    {badmatch,{x,0}}.
  {label,812}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1548}]}.
    {badmatch,{x,0}}.
  {label,813}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1547}]}.
    {badmatch,{x,0}}.


{function, float_confusion_1, 2, 815}.
  {label,814}.
    {line,[{location,"beam_type_SUITE.erl",1554}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_1},2}.
  {label,815}.
    {'%',{var_info,{x,1},[{type,{t_float,{-0.0,0.0}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, float_confusion_2, 0, 817}.
  {label,816}.
    {line,[{location,"beam_type_SUITE.erl",1557}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_2},0}.
  {label,817}.
    {allocate,0,0}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1558}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,818},[{x,0}]}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,818}.
    {call_last,1,{f,854},0}. % '-float_confusion_2/0-lc$^0/1-0-'/1


{function, float_confusion_crash, 2, 820}.
  {label,819}.
    {line,[{location,"beam_type_SUITE.erl",1561}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_crash},2}.
  {label,820}.
    {'%',{var_info,{x,1},[{type,{t_number,{-1,0}}}]}}.
    {jump,{f,819}}.


{function, float_confusion_3, 1, 822}.
  {label,821}.
    {line,[{location,"beam_type_SUITE.erl",1564}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_3},1}.
  {label,822}.
    {line,[{location,"beam_type_SUITE.erl",1565}]}.
    {gc_bif,abs,{f,0},1,[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,823},[{tr,{x,0},{t_number,{0,'+inf'}}},{float,-0.0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,823}.
    {badmatch,{x,0}}.


{function, float_confusion_4, 1, 825}.
  {label,824}.
    {line,[{location,"beam_type_SUITE.erl",1568}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_4},1}.
  {label,825}.
    {gc_bif,'band',{f,824},1,[{x,0},{integer,1}],{x,1}}.
    {test,is_lt,{f,824},[{float,-0.0},{tr,{x,1},{t_integer,{0,1}}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, float_confusion_5, 0, 827}.
  {label,826}.
    {line,[{location,"beam_type_SUITE.erl",1571}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_5},0}.
  {label,827}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,852},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {test,is_lt,
          {f,828},
          [{atom,ok},
           {tr,{x,0},
               {t_fun,0,{'-float_confusion_5/0-fun-0-',0},{t_atom,[ok]}}}]}.
    {move,{float,2147483647.0},{x,0}}.
    {jump,{f,829}}.
  {label,828}.
    {move,{integer,-2147483648},{x,0}}.
  {label,829}.
    {line,[{location,"beam_type_SUITE.erl",1582}]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_number,{-2147483648,2147483647}}},{integer,0}],
            {x,0}}.
    {test,is_eq_exact,{f,830},[{tr,{x,0},{t_number,{0,0}}},{float,-0.0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,830}.
    {line,[{location,"beam_type_SUITE.erl",1572}]}.
    {badmatch,{x,0}}.


{function, float_confusion_6, 0, 832}.
  {label,831}.
    {line,[{location,"beam_type_SUITE.erl",1587}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_6},0}.
  {label,832}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1590}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,833},[{x,0}]}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,833}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,844},1}. % '-float_confusion_6/0-lbc$^0/2-0-'/2


{function, cover_convert_ext, 1, 835}.
  {label,834}.
    {line,[{location,"beam_type_SUITE.erl",1601}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cover_convert_ext},1}.
  {label,835}.
    {allocate,0,0}.
    {move,{literal,<<15,255,255,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1>>},
          {x,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1606}]}.
    {call_ext,2,{extfunc,beam_types,convert_ext,2}}.
    {call_ext,1,{extfunc,beam_types,decode_ext,1}}.
    {move,{literal,<<15,255,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,15,255,0,0,0,0,0,
                     0,0,7,0,0,0,0,0,0,0,10>>},
          {x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1611}]}.
    {call_ext,2,{extfunc,beam_types,convert_ext,2}}.
    {call_ext,1,{extfunc,beam_types,decode_ext,1}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1613}]}.
    {call_ext,2,{extfunc,beam_types,convert_ext,2}}.
    {test,is_eq_exact,{f,836},[{x,0},{atom,none}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,836}.
    {badmatch,{x,0}}.


{function, id, 1, 838}.
  {label,837}.
    {line,[{location,"beam_type_SUITE.erl",1622}]}.
    {func_info,{atom,beam_type_SUITE},{atom,id},1}.
  {label,838}.
    return.


{function, module_info, 0, 840}.
  {label,839}.
    {line,[]}.
    {func_info,{atom,beam_type_SUITE},{atom,module_info},0}.
  {label,840}.
    {move,{atom,beam_type_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 842}.
  {label,841}.
    {line,[]}.
    {func_info,{atom,beam_type_SUITE},{atom,module_info},1}.
  {label,842}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_type_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-float_confusion_6/0-lbc$^0/2-0-', 2, 844}.
  {label,843}.
    {line,[{location,"beam_type_SUITE.erl",1588}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-float_confusion_6/0-lbc$^0/2-0-'},
               2}.
  {label,844}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_tuple,{f,849},[{x,0}]}.
    {test,test_arity,{f,850},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,848},[{x,2}]}.
    {test,test_arity,{f,848},[{x,2},1]}.
    {get_tuple_element,{x,2},0,{x,0}}.
    {test,is_ne_exact,{f,846},[{x,0},{literal,{}}]}.
    {select_val,{x,0},
                {f,847},
                {list,[{float,0.0},{f,845},{float,-0.0},{f,845}]}}.
  {label,845}.
    {move,nil,{x,0}}.
  {label,846}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"beam_type_SUITE.erl",1591}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,847}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,else_clause},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,848}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,2,{f,844}}. % '-float_confusion_6/0-lbc$^0/2-0-'/2
  {label,849}.
    {test,is_eq_exact,{f,850},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,850}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"beam_type_SUITE.erl",1590}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,844},1}. % '-float_confusion_6/0-lbc$^0/2-0-'/2


{function, '-float_confusion_5/0-fun-0-', 0, 852}.
  {label,851}.
    {line,[{location,"beam_type_SUITE.erl",1574}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-float_confusion_5/0-fun-0-'},0}.
  {label,852}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-float_confusion_2/0-lc$^0/1-0-', 1, 854}.
  {label,853}.
    {line,[{location,"beam_type_SUITE.erl",1558}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-float_confusion_2/0-lc$^0/1-0-'},
               1}.
  {label,854}.
    {test,is_tuple,{f,856},[{x,0}]}.
    {test,test_arity,{f,857},[{x,0},3]}.
    {allocate,1,0}.
    {'catch',{y,0},{f,855}}.
    {move,{integer,-1},{x,1}}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1559}]}.
    {call,2,{f,820}}. % float_confusion_crash/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,855}.
    {catch_end,{y,0}}.
    {move,{float,-0.0},{x,1}}.
    {call_last,2,{f,820},1}. % float_confusion_crash/2
  {label,856}.
    {test,is_eq_exact,{f,857},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,857}.
    {allocate,0,1}.
    {line,[{scope,[0,2]},{location,"beam_type_SUITE.erl",1558}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,854},0}. % '-float_confusion_2/0-lc$^0/1-0-'/1


{function, '-gh_7197/0-lc$^0/1-0-', 1, 859}.
  {label,858}.
    {line,[{location,"beam_type_SUITE.erl",1525}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-gh_7197/0-lc$^0/1-0-'},1}.
  {label,859}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,860},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {allocate,0,1}.
    {call,1,{f,859}}. % '-gh_7197/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,860}.
    {move,nil,{x,0}}.
    return.


{function, '-gh_7179/0-lc$^0/1-0-', 1, 862}.
  {label,861}.
    {line,[{location,"beam_type_SUITE.erl",1520}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-gh_7179/0-lc$^0/1-0-'},1}.
  {label,862}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,863},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {allocate,0,1}.
    {call,1,{f,862}}. % '-gh_7179/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,863}.
    {move,nil,{x,0}}.
    return.


{function, '-funs/1-fun-0-', 0, 865}.
  {label,864}.
    {line,[{location,"beam_type_SUITE.erl",1512}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-funs/1-fun-0-'},0}.
  {label,865}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_unit_1/0-Foo/1-0-', 1, 867}.
  {label,866}.
    {line,[{location,"beam_type_SUITE.erl",1483}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-binary_unit_1/0-Foo/1-0-'},1}.
  {label,867}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,867},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_bitstring,16,false}}]}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"beam_type_SUITE.erl",1484}]}.
    {call,3,{f,869}}. % '-binary_unit_1/0-lc$^0/1-1-'/3
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {bif,hd,{f,0},[{tr,{x,0},{t_list,any,nil}}],{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1485}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1},
                          {atom,integer},
                          2,1,nil,
                          {x,0},
                          {integer,8}]}}.
    {deallocate,0}.
    return.


{function, '-binary_unit_1/0-lc$^0/1-1-', 3, 869}.
  {label,868}.
    {line,[{location,"beam_type_SUITE.erl",1484}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-binary_unit_1/0-lc$^0/1-1-'},3}.
  {label,869}.
    {'%',{var_info,{x,2},
                   [{type,{t_fun,1,
                                 {'-binary_unit_1/0-Foo/1-0-',1},
                                 {t_bitstring,16,false}}}]}}.
    {test,is_nonempty_list,{f,870},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {move,{x,2},{x,4}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,5,{f,873}}. % '-binary_unit_1/0-lc$^1/1-2-'/5
  {label,870}.
    {test,is_nil,{f,871},[{x,0}]}.
    return.
  {label,871}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_unit_1/0-lc$^1/1-2-', 5, 873}.
  {label,872}.
    {line,[{location,"beam_type_SUITE.erl",1484}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-binary_unit_1/0-lc$^1/1-2-'},5}.
  {label,873}.
    {'%',{var_info,{x,4},
                   [{type,{t_fun,1,
                                 {'-binary_unit_1/0-Foo/1-0-',1},
                                 {t_bitstring,16,false}}}]}}.
    {test,is_nonempty_list,{f,875},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {test,is_ge,
          {f,874},
          [{tr,{x,4},
               {t_fun,1,
                      {'-binary_unit_1/0-Foo/1-0-',1},
                      {t_bitstring,16,false}}},
           {atom,ok}]}.
    {allocate,1,5}.
    {move,{x,3},{y,0}}.
    {call,5,{f,873}}. % '-binary_unit_1/0-lc$^1/1-2-'/5
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,874}.
    {call_only,5,{f,873}}. % '-binary_unit_1/0-lc$^1/1-2-'/5
  {label,875}.
    {test,is_nil,{f,876},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {move,{x,4},{x,2}}.
    {call_only,3,{f,869}}. % '-binary_unit_1/0-lc$^0/1-1-'/3
  {label,876}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-infer_relops_4/0-lc$^1/1-0-', 1, 878}.
  {label,877}.
    {line,[{location,"beam_type_SUITE.erl",1462}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-infer_relops_4/0-lc$^1/1-0-'},1}.
  {label,878}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,879},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,3,{f,881}}. % '-infer_relops_4/0-lc$^2/1-1-'/3
  {label,879}.
    {move,nil,{x,0}}.
    return.


{function, '-infer_relops_4/0-lc$^2/1-1-', 3, 881}.
  {label,880}.
    {line,[{location,"beam_type_SUITE.erl",1463}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-infer_relops_4/0-lc$^2/1-1-'},3}.
  {label,881}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,882},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[1460,{file,"beam_type_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,3,{f,881}}. % '-infer_relops_4/0-lc$^2/1-1-'/3
  {label,882}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,878}}. % '-infer_relops_4/0-lc$^1/1-0-'/1


{function, '-infer_relops_1/0-lc$^0/1-0-', 1, 884}.
  {label,883}.
    {line,[{location,"beam_type_SUITE.erl",1445}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-infer_relops_1/0-lc$^0/1-0-'},1}.
  {label,884}.
    {test,is_nonempty_list,{f,885},[{x,0}]}.
    {allocate,0,1}.
    {get_tl,{x,0},{x,0}}.
    {call,1,{f,884}}. % '-infer_relops_1/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,885}.
    {test,is_nil,{f,886},[{x,0}]}.
    return.
  {label,886}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_maps_functions/1-fun-7-', 1, 888}.
  {label,887}.
    {line,[{location,"beam_type_SUITE.erl",1381}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-7-'},
               1}.
  {label,888}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cover_maps_functions/1-fun-6-', 1, 890}.
  {label,889}.
    {line,[{location,"beam_type_SUITE.erl",1380}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-6-'},
               1}.
  {label,890}.
    {move,{atom,a},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_maps_functions/1-fun-5-', 1, 892}.
  {label,891}.
    {line,[{location,"beam_type_SUITE.erl",1379}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-5-'},
               1}.
  {label,892}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cover_maps_functions/1-fun-4-', 2, 894}.
  {label,893}.
    {line,[{location,"beam_type_SUITE.erl",1363}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-4-'},
               2}.
  {label,894}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cover_maps_functions/1-fun-3-', 2, 896}.
  {label,895}.
    {line,[{location,"beam_type_SUITE.erl",1361}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-3-'},
               2}.
  {label,896}.
    {move,{atom,crash},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_maps_functions/1-fun-2-', 2, 898}.
  {label,897}.
    {line,[{location,"beam_type_SUITE.erl",1360}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-2-'},
               2}.
  {label,898}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cover_maps_functions/1-fun-1-', 3, 900}.
  {label,899}.
    {line,[{location,"beam_type_SUITE.erl",1344}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-1-'},
               3}.
  {label,900}.
    {move,{atom,true},{x,0}}.
    return.


{function, '-cover_maps_functions/1-fun-0-', 2, 902}.
  {label,901}.
    {line,[{location,"beam_type_SUITE.erl",1339}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-0-'},
               2}.
  {label,902}.
    {move,{atom,true},{x,0}}.
    return.


{function, '-type_subtraction_4/1-lbc$^0/2-0-', 2, 904}.
  {label,903}.
    {line,[{location,"beam_type_SUITE.erl",1140}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-type_subtraction_4/1-lbc$^0/2-0-'},
               2}.
  {label,904}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_tuple,{f,905},[{x,0}]}.
    {test,test_arity,{f,906},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,907},[{x,0},{atom,true}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{atom,ok}]}}.
    {line,[{scope,[1]},{location,"beam_type_SUITE.erl",1143}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,905}.
    {test,is_eq_exact,{f,906},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,906}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{scope,[0,1]},{location,"beam_type_SUITE.erl",1142}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,904},1}. % '-type_subtraction_4/1-lbc$^0/2-0-'/2
  {label,907}.
    {line,[{scope,[1]},{location,"beam_type_SUITE.erl",1143}]}.
    {try_case_end,{atom,ok}}.


{function, '-cover_lists_functions/1-fun-7-', 2, 909}.
  {label,908}.
    {line,[{location,"beam_type_SUITE.erl",999}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-7-'},
               2}.
  {label,909}.
    {move,{atom,bad},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_lists_functions/1-fun-6-', 2, 911}.
  {label,910}.
    {line,[{location,"beam_type_SUITE.erl",997}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-6-'},
               2}.
  {label,911}.
    {move,{atom,bad},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_lists_functions/1-fun-5-', 2, 913}.
  {label,912}.
    {line,[{location,"beam_type_SUITE.erl",995}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-5-'},
               2}.
  {label,913}.
    {move,{atom,bad},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_lists_functions/1-fun-4-', 2, 915}.
  {label,914}.
    {line,[{location,"beam_type_SUITE.erl",980}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-4-'},
               2}.
  {label,915}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-cover_lists_functions/1-fun-3-', 2, 917}.
  {label,916}.
    {line,[{location,"beam_type_SUITE.erl",958}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-3-'},
               2}.
  {label,917}.
    {move,{atom,foo},{x,0}}.
    return.


{function, '-cover_lists_functions/1-fun-2-', 2, 919}.
  {label,918}.
    {line,[{location,"beam_type_SUITE.erl",957}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-2-'},
               2}.
  {label,919}.
    {move,{atom,foo},{x,0}}.
    return.


{function, '-cover_lists_functions/1-fun-1-', 2, 921}.
  {label,920}.
    {line,[{location,"beam_type_SUITE.erl",954}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-1-'},
               2}.
  {label,921}.
    {move,{atom,foo},{x,0}}.
    return.


{function, '-cover_lists_functions/1-fun-0-', 2, 923}.
  {label,922}.
    {line,[{location,"beam_type_SUITE.erl",953}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-0-'},
               2}.
  {label,923}.
    {move,{atom,foo},{x,0}}.
    return.


{function, '-float_overflow_3/0-lc$^0/1-0-', 1, 925}.
  {label,924}.
    {line,[{location,"beam_type_SUITE.erl",849}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-float_overflow_3/0-lc$^0/1-0-'},
               1}.
  {label,925}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,true}},accepts_match_context]}}.
    {line,[{location,"beam_type_SUITE.erl",850}]}.
    {gc_bif,map_size,{f,0},0,[{literal,#{}}],{x,0}}.
    {gc_bif,'+',
            {f,926},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{float,1.0}],
            {x,0}}.
    {test,is_ge,
          {f,926},
          [{integer,359538626972463141629054847463408713596141135051689993197834953606314521560057077521179117265533756343080917907028764928468642653778928365536935093407075033972099821153102564152490980180778657888151737016910267884609166473806445896331617118664246696549595652408289446337476354361838599762500808052368249716736},
           {tr,{x,0},{t_float,any}}]}.
    {move,{literal,[0]},{x,0}}.
    {jump,{f,927}}.
  {label,926}.
    {move,nil,{x,0}}.
  {label,927}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gh_6458/1-lc$^0/1-0-', 3, 929}.
  {label,928}.
    {line,[{location,"beam_type_SUITE.erl",750}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-gh_6458/1-lc$^0/1-0-'},3}.
  {label,929}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,none,
                     [{{1,{t_atom,[false]}},
                       {t_tuple,1,true,#{1 => {t_atom,[false]}}}},
                      {{1,{t_atom,[true]}},
                       {t_tuple,1,true,#{1 => {t_atom,[true]}}}}],
                     none}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[false,true]}}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-tuple/1-lc$^2/1-2-', 1, 931}.
  {label,930}.
    {line,[{location,"beam_type_SUITE.erl",697}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-tuple/1-lc$^2/1-2-'},1}.
  {label,931}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-tuple/1-lc$^1/1-1-', 1, 933}.
  {label,932}.
    {line,[{location,"beam_type_SUITE.erl",696}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-tuple/1-lc$^1/1-1-'},1}.
  {label,933}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-tuple/1-lc$^0/1-0-', 1, 935}.
  {label,934}.
    {line,[{location,"beam_type_SUITE.erl",695}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-tuple/1-lc$^0/1-0-'},1}.
  {label,935}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-do_booleans_8/1-lc$^0/1-0-', 1, 937}.
  {label,936}.
    {line,[{location,"beam_type_SUITE.erl",522}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-do_booleans_8/1-lc$^0/1-0-'},1}.
  {label,937}.
    {test,is_nonempty_list,{f,938},[{x,0}]}.
    {allocate,0,1}.
    {get_tl,{x,0},{x,0}}.
    {call,1,{f,937}}. % '-do_booleans_8/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,938}.
    {test,is_nil,{f,939},[{x,0}]}.
    return.
  {label,939}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_booleans_6/3-lc$^0/1-0-', 1, 941}.
  {label,940}.
    {line,[{location,"beam_type_SUITE.erl",501}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-do_booleans_6/3-lc$^0/1-0-'},1}.
  {label,941}.
    {'%',{var_info,{x,0},[{type,{t_tuple,1,true,#{1 => {t_cons,any,any}}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
