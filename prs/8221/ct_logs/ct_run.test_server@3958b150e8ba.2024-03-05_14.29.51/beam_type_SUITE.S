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

{labels, 920}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_type_SUITE.erl",39}]}.
    {func_info,{atom,beam_type_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_type_SUITE.erl",41}]}.
    {func_info,{atom,beam_type_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_type_SUITE.erl",44}]}.
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
                        float_confusion]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_type_SUITE.erl",83}]}.
    {func_info,{atom,beam_type_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_type_SUITE},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",84}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_type_SUITE.erl",87}]}.
    {func_info,{atom,beam_type_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_type_SUITE.erl",90}]}.
    {func_info,{atom,beam_type_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_type_SUITE.erl",93}]}.
    {func_info,{atom,beam_type_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, integers, 1, 16}.
  {label,15}.
    {line,[{location,"beam_type_SUITE.erl",96}]}.
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
    {line,[{location,"beam_type_SUITE.erl",97}]}.
    {call,1,{f,48}}. % do_integers_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,46},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {move,{integer,25},{x,0}}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",98}]}.
    {call,1,{f,48}}. % do_integers_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,45},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",100}]}.
    {call,1,{f,51}}. % do_integers_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'catch',{y,10},{f,17}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",101}]}.
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
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",103}]}.
    {call,0,{f,55}}. % do_integers_3/0
    {'%',{var_info,{x,0},[{type,{t_atom,[college]}}]}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",105}]}.
    {call,2,{f,57}}. % do_integers_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,other,zero]}}]}}.
    {test,is_eq_exact,
          {f,43},
          [{tr,{x,0},{t_atom,[one,other,zero]}},{atom,zero}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",106}]}.
    {call,2,{f,57}}. % do_integers_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,other,zero]}}]}}.
    {test,is_eq_exact,
          {f,42},
          [{tr,{x,0},{t_atom,[one,other,zero]}},{atom,one}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",107}]}.
    {call,2,{f,57}}. % do_integers_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,other,zero]}}]}}.
    {test,is_eq_exact,
          {f,41},
          [{tr,{x,0},{t_atom,[one,other,zero]}},{atom,other}]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",109}]}.
    {call,2,{f,65}}. % do_integers_5/2
    {'%',{var_info,{x,0},[{type,{t_atom,[zero]}}]}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",110}]}.
    {call,2,{f,65}}. % do_integers_5/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",111}]}.
    {call,2,{f,65}}. % do_integers_5/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{integer,3},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",112}]}.
    {call,2,{f,65}}. % do_integers_5/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {'catch',{y,9},{f,18}}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",114}]}.
    {call,0,{f,71}}. % do_integers_6/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,18}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,40},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,40},[{x,1},2,{atom,badarith}]}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",116}]}.
    {call,0,{f,73}}. % do_integers_7/0
    {'%',{var_info,{x,0},[{type,{t_atom,[house]}}]}}.
    {'catch',{y,8},{f,19}}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",118}]}.
    {call,0,{f,77}}. % do_integers_8/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
  {label,19}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,39},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,39},[{x,1},2,{atom,badarith}]}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",120}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,10}}.
    {move,{integer,1},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,10},{x,0}}.
    {init_yregs,{list,[{y,10}]}}.
    {call,2,{f,79}}. % do_integers_9/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,38},[{tr,{x,0},{t_number,any}},{integer,-693}]}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",122}]}.
    {call,2,{f,81}}. % do_integers_10/2
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,37},[{tr,{x,0},{t_integer,any}},{integer,3}]}.
    {move,{integer,-5},{x,1}}.
    {move,{integer,-2},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",123}]}.
    {call,2,{f,81}}. % do_integers_10/2
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,36},[{tr,{x,0},{t_integer,any}},{integer,10}]}.
    {'catch',{y,7},{f,20}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",125}]}.
    {call,1,{f,84}}. % do_integers_11/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,20}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,35},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,35},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,6},{f,21}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",126}]}.
    {call,1,{f,84}}. % do_integers_11/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,21}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,34},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,34},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,5},{f,22}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",128}]}.
    {call,1,{f,86}}. % do_integers_12/1
    {'%',{var_info,{x,0},[{type,{t_integer,{42,'+inf'}}}]}}.
  {label,22}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,33},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,33},[{x,1},2,{atom,system_limit}]}.
    {'catch',{y,4},{f,23}}.
    {move,nil,{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",129}]}.
    {call,1,{f,86}}. % do_integers_12/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,23}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,32},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,32},[{x,1},2,{atom,system_limit}]}.
    {'catch',{y,3},{f,24}}.
    {move,{integer,-43},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",131}]}.
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
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",132}]}.
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
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",133}]}.
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
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",134}]}.
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
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",134}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",133}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",131}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",129}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",128}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",126}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",125}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",123}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",118}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",114}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",107}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",106}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",105}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",101}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",98}]}.
    {badmatch,{atom,a}}.
  {label,46}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",97}]}.
    {badmatch,{atom,b}}.


{function, do_integers_1, 1, 48}.
  {label,47}.
    {line,[{location,"beam_type_SUITE.erl",138}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_1},1}.
  {label,48}.
    {'%',{var_info,{x,0},[{type,{t_integer,{24,25}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",139}]}.
    {gc_bif,'band',{f,0},1,[{tr,{x,0},{t_integer,{24,25}}},{integer,1}],{x,0}}.
    {test,is_eq_exact,{f,49},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,49}.
    {move,{atom,b},{x,0}}.
    return.


{function, do_integers_2, 1, 51}.
  {label,50}.
    {line,[{location,"beam_type_SUITE.erl",145}]}.
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
    {line,[{location,"beam_type_SUITE.erl",146}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{location,"beam_type_SUITE.erl",147}]}.
    {case_end,{integer,-1}}.


{function, do_integers_3, 0, 55}.
  {label,54}.
    {line,[{location,"beam_type_SUITE.erl",152}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_3},0}.
  {label,55}.
    {move,{atom,college},{x,0}}.
    return.


{function, do_integers_4, 2, 57}.
  {label,56}.
    {line,[{location,"beam_type_SUITE.erl",158}]}.
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
    {line,[{location,"beam_type_SUITE.erl",162}]}.
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
    {line,[{location,"beam_type_SUITE.erl",168}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_4},3}.
  {label,63}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,2}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[one,other,zero]}}]}}.
    {move,{x,2},{x,0}}.
    return.


{function, do_integers_5, 2, 65}.
  {label,64}.
    {line,[{location,"beam_type_SUITE.erl",171}]}.
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
    {line,[{location,"beam_type_SUITE.erl",182}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_6},0}.
  {label,71}.
    {line,[{location,"beam_type_SUITE.erl",183}]}.
    {gc_bif,'band',{f,0},0,[{atom,b},{integer,0}],{x,0}}.
    return.


{function, do_integers_7, 0, 73}.
  {label,72}.
    {line,[{location,"beam_type_SUITE.erl",185}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_7},0}.
  {label,73}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,75}}.
    {'try',{y,0},{f,74}}.
    {move,{atom,any},{x,1}}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",190}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {try_end,{y,0}}.
    {line,[{location,"beam_type_SUITE.erl",188}]}.
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
    {line,[{location,"beam_type_SUITE.erl",201}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_8},0}.
  {label,77}.
    {line,[{location,"beam_type_SUITE.erl",202}]}.
    {gc_bif,'div',{f,0},0,[{integer,0},{integer,0}],{x,0}}.
    {move,{integer,0},{x,0}}.
    return.


{function, do_integers_9, 2, 79}.
  {label,78}.
    {line,[{location,"beam_type_SUITE.erl",204}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_9},2}.
  {label,79}.
    {line,[{location,"beam_type_SUITE.erl",205}]}.
    {gc_bif,'band',{f,0},2,[{x,1},{integer,1}],{x,1}}.
    {gc_bif,'bor',{f,0},2,[{tr,{x,1},{t_integer,{0,1}}},{integer,-100}],{x,1}}.
    {gc_bif,'*',{f,0},2,[{x,0},{tr,{x,1},{t_integer,{'-inf',-99}}}],{x,0}}.
    return.


{function, do_integers_10, 2, 81}.
  {label,80}.
    {line,[{location,"beam_type_SUITE.erl",207}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_10},2}.
  {label,81}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-2,1}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{-5,2}}}]}}.
    {test,is_lt,
          {f,82},
          [{tr,{x,0},{t_integer,{-2,1}}},{tr,{x,1},{t_integer,{-5,2}}}]}.
    {line,[{location,"beam_type_SUITE.erl",209}]}.
    {gc_bif,'+',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{-2,1}}},{tr,{x,1},{t_integer,{-1,2}}}],
            {x,0}}.
    return.
  {label,82}.
    {line,[{location,"beam_type_SUITE.erl",210}]}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{-2,1}}},{tr,{x,1},{t_integer,{-5,1}}}],
            {x,0}}.
    return.


{function, do_integers_11, 1, 84}.
  {label,83}.
    {line,[{location,"beam_type_SUITE.erl",213}]}.
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
    {line,[{location,"beam_type_SUITE.erl",214}]}.
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
    {line,[{location,"beam_type_SUITE.erl",216}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_12},1}.
  {label,86}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,none}}]}}.
    {line,[{location,"beam_type_SUITE.erl",217}]}.
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
    {line,[{location,"beam_type_SUITE.erl",220}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_13},1}.
  {label,88}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-43,17}}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {'try',{y,3},{f,89}}.
    {line,[{location,"beam_type_SUITE.erl",221}]}.
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
    {line,[{location,"beam_type_SUITE.erl",222}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,89}.
    {try_case,{y,3}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {'try',{y,3},{f,90}}.
    {move,{y,2},{x,0}}.
    {line,[{scope,"\t"},{location,"beam_type_SUITE.erl",225}]}.
    {call,1,{f,98}}. % do_integers_13_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{-42,'+inf'}}}]}}.
    {try_end,{y,3}}.
    {move,{atom,should_fail},{x,0}}.
    {line,[{scope,"\t"},{location,"beam_type_SUITE.erl",226}]}.
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
    {line,[{scope,[3]},{location,"beam_type_SUITE.erl",229}]}.
    {call,1,{f,101}}. % do_integers_13_3/1
    {'%',{var_info,{x,0},[{type,{t_integer,{-42,'+inf'}}}]}}.
    {try_end,{y,3}}.
    {move,{atom,should_fail},{x,0}}.
    {line,[{scope,[3]},{location,"beam_type_SUITE.erl",230}]}.
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
    {line,[{location,"beam_type_SUITE.erl",238}]}.
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
    {line,[{location,"beam_type_SUITE.erl",239}]}.
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
    {line,[{location,"beam_type_SUITE.erl",241}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_13_2},1}.
  {label,98}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-43,17}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",242}]}.
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
    {line,[{location,"beam_type_SUITE.erl",244}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_integers_13_3},1}.
  {label,101}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-43,17}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",245}]}.
    {gc_bif,'bnot',{f,0},1,[{tr,{x,0},{t_integer,{-43,17}}}],{x,1}}.
    {test,is_eq_exact,
          {f,102},
          [{tr,{x,1},{t_integer,{-18,42}}},{tr,{x,0},{t_integer,{-43,17}}}]}.
    {line,[{location,"beam_type_SUITE.erl",246}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_integer,{-43,17}}},{integer,1}],{x,0}}.
    return.
  {label,102}.
    {line,[{location,"beam_type_SUITE.erl",245}]}.
    {badmatch,{x,1}}.


{function, numbers, 1, 104}.
  {label,103}.
    {line,[{location,"beam_type_SUITE.erl",248}]}.
    {func_info,{atom,beam_type_SUITE},{atom,numbers},1}.
  {label,104}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",249}]}.
    {call,1,{f,816}}. % id/1
    {test,is_integer,{f,122},[{x,0}]}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",254}]}.
    {call,1,{f,816}}. % id/1
    {test,is_float,{f,121},[{x,0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",259}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,816}}. % id/1
    {gc_bif,'+',{f,0},1,[{y,0},{x,0}],{x,0}}.
    {test,is_integer,{f,120},[{tr,{x,0},{t_number,any}}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{float,99.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",264}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {call,1,{f,816}}. % id/1
    {gc_bif,'+',{f,0},1,[{y,0},{x,0}],{x,0}}.
    {test,is_float,{f,119},[{tr,{x,0},{t_number,any}}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",269}]}.
    {call,1,{f,816}}. % id/1
    {test,is_atom,{f,118},[{x,0}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",282}]}.
    {call,1,{f,816}}. % id/1
    {select_val,{x,0},{f,117},{list,[{atom,a},{f,106},{atom,b},{f,105}]}}.
  {label,105}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",284}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,816}}. % id/1
    {fconv,{y,0},{fr,0}}.
    {fconv,{x,0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {jump,{f,107}}.
  {label,106}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",283}]}.
    {call,1,{f,816}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,3}],{x,0}}.
  {label,107}.
    {test,is_integer,{f,116},[{tr,{x,0},{t_number,any}}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",288}]}.
    {call,1,{f,816}}. % id/1
    {select_val,{x,0},{f,115},{list,[{atom,a},{f,109},{atom,b},{f,108}]}}.
  {label,108}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",290}]}.
    {call,1,{f,816}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,110}}.
  {label,109}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",289}]}.
    {call,1,{f,816}}. % id/1
    {fconv,{x,0},{fr,0}}.
    {fmove,{float,2.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
  {label,110}.
    {test,is_float,{f,114},[{tr,{x,0},{t_number,any}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",296}]}.
    {call,1,{f,816}}. % id/1
    {fconv,{x,0},{fr,0}}.
    {fmove,{float,-10.0},{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",297}]}.
    {gc_bif,abs,{f,0},1,[{tr,{x,0},{t_float,any}}],{x,0}}.
    {test,is_eq_exact,{f,113},[{tr,{x,0},{t_float,any}},{float,10.0}]}.
    {move,{float,1.0},{x,1}}.
    {move,{float,0.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",300}]}.
    {call,2,{f,124}}. % fcmp/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,112},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{float,0.0},{x,1}}.
    {move,{float,1.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",301}]}.
    {call,2,{f,124}}. % fcmp/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,111},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,111}.
    {badmatch,{atom,ok}}.
  {label,112}.
    {line,[{location,"beam_type_SUITE.erl",300}]}.
    {badmatch,{atom,error}}.
  {label,113}.
    {line,[{location,"beam_type_SUITE.erl",297}]}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{location,"beam_type_SUITE.erl",292}]}.
    {badmatch,{atom,false}}.
  {label,115}.
    {line,[{location,"beam_type_SUITE.erl",288}]}.
    {case_end,{x,0}}.
  {label,116}.
    {line,[{location,"beam_type_SUITE.erl",286}]}.
    {badmatch,{atom,false}}.
  {label,117}.
    {line,[{location,"beam_type_SUITE.erl",282}]}.
    {case_end,{x,0}}.
  {label,118}.
    {line,[{location,"beam_type_SUITE.erl",270}]}.
    {badmatch,{atom,false}}.
  {label,119}.
    {line,[{location,"beam_type_SUITE.erl",265}]}.
    {badmatch,{atom,false}}.
  {label,120}.
    {line,[{location,"beam_type_SUITE.erl",261}]}.
    {badmatch,{atom,false}}.
  {label,121}.
    {line,[{location,"beam_type_SUITE.erl",255}]}.
    {badmatch,{atom,false}}.
  {label,122}.
    {line,[{location,"beam_type_SUITE.erl",250}]}.
    {badmatch,{atom,false}}.


{function, fcmp, 2, 124}.
  {label,123}.
    {line,[{location,"beam_type_SUITE.erl",305}]}.
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
    {line,[{location,"beam_type_SUITE.erl",309}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage},1}.
  {label,129}.
    {allocate,12,1}.
    {init_yregs,{list,[{y,0},
                       {y,1},
                       {y,2},
                       {y,3},
                       {y,4},
                       {y,5},
                       {y,7},
                       {y,8},
                       {y,9},
                       {y,10}]}}.
    {move,{x,0},{y,6}}.
    {'catch',{y,11},{f,130}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",310}]}.
    {call,1,{f,816}}. % id/1
    {gc_bif,'bsl',{f,0},1,[{x,0},{float,0.5}],{x,0}}.
  {label,130}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,160},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,160},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,10},{f,131}}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",311}]}.
    {call,1,{f,816}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",311}]}.
    {gc_bif,'bsl',{f,0},1,[{x,0},{integer,2}],{x,0}}.
  {label,131}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,159},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,159},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,9},{f,132}}.
    {line,[{location,"beam_type_SUITE.erl",312}]}.
    {gc_bif,'+',{f,0},0,[{atom,a},{float,0.5}],{x,0}}.
  {label,132}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,158},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,158},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,8},{f,133}}.
    {line,[{location,"beam_type_SUITE.erl",313}]}.
    {gc_bif,'*',{f,0},0,[{float,2.0},{atom,b}],{x,0}}.
  {label,133}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,157},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,157},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,7},{f,134}}.
    {move,{float,42.0},{x,0}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",315}]}.
    {call,1,{f,816}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",315}]}.
    {fconv,{x,0},{fr,0}}.
    {fconv,{integer,114813069527425452423283320117768198402231770208869520047764273682576626139237031385665948631650626991844596463898746277344711896086305533142593135616665318539129989145312280000688779148240044871428926990063486244781615463646388363947317026040466353970904996558162398808944629605623311649536164221970332681344168908984458505602379484807914058900934776500429002716706625830522008132236281291761267883317206598995396418127021779858404042159853183251540889433902091920554957783589672039160081957216630582755380425583726015528348786419432054508915275783882625175435528800822842770817965453762184851149029376},
           {fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
  {label,134}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,156},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,156},[{x,1},2,{atom,badarith}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",317}]}.
    {call,1,{f,816}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",317}]}.
    {gc_bif,'band',
            {f,0},
            1,
            [{x,0},{integer,387439739874298734983787934283479243879}],
            {x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",317}]}.
    {call,1,{f,816}}. % id/1
    {move,{integer,13},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",318}]}.
    {call,1,{f,816}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",318}]}.
    {gc_bif,'band',{f,0},1,[{x,0},{integer,-1}],{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",318}]}.
    {call,1,{f,816}}. % id/1
    {test,bs_start_match3,{f,135},0,[{y,6}],{x,0}}.
    {bs_match,{f,155},{x,0},{commands,[{ensure_exactly,8}]}}.
    {test,is_binary,{f,155},[{tr,{y,6},{t_bs_matchable,1}}]}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",337}]}.
    {badmatch,{atom,impossible}}.
  {label,135}.
    {test,is_nonempty_list,{f,155},[{y,6}]}.
    {'catch',{y,6},{f,136}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",345}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,11}}.
    {move,{integer,1},{x,0}}.
    {call,1,{f,816}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",345}]}.
    {fconv,{y,11},{fr,0}}.
    {fconv,{x,0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {gc_bif,'band',{f,0},1,[{tr,{x,0},{t_float,any}},{integer,255}],{x,0}}.
  {label,136}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,154},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,154},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,5},{f,137}}.
    {init_yregs,{list,[{y,6}]}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",349}]}.
    {call,0,{f,162}}. % coverage_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,137}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,153},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,153},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,4},{f,138}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",351}]}.
    {call,0,{f,164}}. % coverage_2/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,138}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,152},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,152},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,3},{f,139}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",353}]}.
    {call,1,{f,166}}. % coverage_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,139}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,151},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,151},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,140}}.
    {move,{literal,"b"},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",354}]}.
    {call,1,{f,166}}. % coverage_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,140}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,150},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,150},[{x,1},2,{atom,function_clause}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",356}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,11}}.
    {test,is_ge,{f,149},[{x,0},{integer,0}]}.
    {test,is_lt,
          {f,149},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,any,any},
                        {t_number,{0,'+inf'}},
                        {t_tuple,0,false,#{}},
                        other}},
           {integer,10}]}.
    {move,{x,0},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",359}]}.
    {call,2,{f,168}}. % coverage_4/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,148},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {move,{y,11},{x,1}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",360}]}.
    {call,2,{f,168}}. % coverage_4/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,147},[{tr,{x,0},{t_number,any}},{integer,10}]}.
    {move,{y,11},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",361}]}.
    {call,2,{f,168}}. % coverage_4/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,146},[{tr,{x,0},{t_number,any}},{integer,20}]}.
    {move,{y,11},{x,1}}.
    {init_yregs,{list,[{y,11}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",362}]}.
    {call,2,{f,168}}. % coverage_4/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,145},[{tr,{x,0},{t_number,any}},{integer,30}]}.
    {'catch',{y,1},{f,141}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",365}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
  {label,141}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,144},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,144},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,142}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",366}]}.
    {call_ext,2,{extfunc,erlang,'--',2}}.
  {label,142}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,143},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,143},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,12}.
    return.
  {label,143}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",366}]}.
    {badmatch,{x,0}}.
  {label,144}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",365}]}.
    {badmatch,{x,0}}.
  {label,145}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",362}]}.
    {badmatch,{x,0}}.
  {label,146}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",361}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",359}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",357}]}.
    if_end.
  {label,150}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",354}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",337}]}.
    {case_end,{y,6}}.
  {label,156}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",315}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",313}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",312}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",311}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",310}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 0, 162}.
  {label,161}.
    {line,[{location,"beam_type_SUITE.erl",370}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage_1},0}.
  {label,162}.
    {line,[{location,"beam_type_SUITE.erl",377}]}.
    {gc_bif,'*',{f,0},0,[nil,nil],{x,0}}.
    return.


{function, coverage_2, 0, 164}.
  {label,163}.
    {line,[{location,"beam_type_SUITE.erl",380}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage_2},0}.
  {label,164}.
    {line,[{location,"beam_type_SUITE.erl",381}]}.
    {gc_bif,'bsr',{f,0},0,[{literal,"bc"},nil],{x,0}}.
    return.


{function, coverage_3, 1, 166}.
  {label,165}.
    {line,[{location,"beam_type_SUITE.erl",384}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage_3},1}.
  {label,166}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{97,98}},nil}}]}}.
    {jump,{f,165}}.


{function, coverage_4, 2, 168}.
  {label,167}.
    {line,[{location,"beam_type_SUITE.erl",387}]}.
    {func_info,{atom,beam_type_SUITE},{atom,coverage_4},2}.
  {label,168}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-1,2}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{0,10}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",388}]}.
    {gc_bif,'+',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{-1,2}}},{tr,{x,1},{t_number,{0,10}}}],
            {x,0}}.
    {gc_bif,'*',{f,0},1,[{tr,{x,0},{t_number,{-1,12}}},{integer,10}],{x,0}}.
    return.


{function, booleans, 1, 170}.
  {label,169}.
    {line,[{location,"beam_type_SUITE.erl",390}]}.
    {func_info,{atom,beam_type_SUITE},{atom,booleans},1}.
  {label,170}.
    {allocate,9,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {'catch',{y,8},{f,171}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",391}]}.
    {call,1,{f,203}}. % do_booleans_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,171}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,201},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,201},[{x,1}]}.
    {test,test_arity,{f,201},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,201},[{x,1},2,{atom,case_clause}]}.
    {move,{integer,41},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",393}]}.
    {call,2,{f,205}}. % do_booleans_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,200},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{integer,42},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",394}]}.
    {call,2,{f,205}}. % do_booleans_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,199},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",396}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{atom,false},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,8}]}}.
    {call,2,{f,210}}. % do_booleans_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,198},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",397}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,8}]}}.
    {call,2,{f,210}}. % do_booleans_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,197},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",398}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{atom,false},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,8}]}}.
    {call,2,{f,210}}. % do_booleans_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,196},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",399}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,8}]}}.
    {call,2,{f,210}}. % do_booleans_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,195},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",401}]}.
    {call,1,{f,816}}. % id/1
    {test,is_atom,{f,194},[{x,0}]}.
    {test,is_boolean,{f,172},[{tr,{x,0},{t_atom,any}}]}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",403}]}.
    {badmatch,{atom,true}}.
  {label,172}.
    {move,{atom,'maybe'},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",405}]}.
    {call,1,{f,816}}. % id/1
    {select_val,{x,0},
                {f,193},
                {list,[{atom,false},
                       {f,192},
                       {atom,'maybe'},
                       {f,173},
                       {atom,true},
                       {f,192}]}}.
  {label,173}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",413}]}.
    {call,1,{f,816}}. % id/1
    {select_val,{x,0},
                {f,191},
                {list,[{atom,a},{f,174},{atom,b},{f,174},{atom,c},{f,174}]}}.
  {label,174}.
    {'catch',{y,7},{f,175}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",421}]}.
    {call,1,{f,213}}. % do_booleans_4/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,175}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,190},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,190},[{x,1}]}.
    {test,test_arity,{f,190},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,190},[{x,1},{literal,{case_clause,false}}]}.
    {'catch',{y,6},{f,176}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",422}]}.
    {call,1,{f,213}}. % do_booleans_4/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,176}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,189},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,189},[{x,1}]}.
    {test,test_arity,{f,189},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,189},[{x,1},{literal,{case_clause,true}}]}.
    {'catch',{y,5},{f,177}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",423}]}.
    {call,1,{f,213}}. % do_booleans_4/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,177}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,188},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,188},[{x,1}]}.
    {test,test_arity,{f,188},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,188},[{x,1},{literal,{case_clause,true}}]}.
    {'catch',{y,4},{f,178}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",424}]}.
    {call,1,{f,213}}. % do_booleans_4/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,178}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,187},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,187},[{x,1}]}.
    {test,test_arity,{f,187},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,187},[{x,1},{literal,{badmatch,true}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",426}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{y,7},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,7},{y,8}]}}.
    {call,3,{f,216}}. % do_booleans_5/3
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {'catch',{y,3},{f,179}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",427}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{y,7},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,7},{y,8}]}}.
    {call,3,{f,219}}. % do_booleans_6/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,179}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,186},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,186},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,180}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",429}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,221}}. % do_booleans_7/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,180}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,185},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,185},[{x,1}]}.
    {test,test_arity,{f,185},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,185},[{x,1},2,{atom,bad_filter}]}.
    {'catch',{y,1},{f,181}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",430}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,229}}. % do_booleans_8/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false,true]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
  {label,181}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,184},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,184},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,182}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",431}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,234}}. % do_booleans_9/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,182}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,183},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,183},[{x,1}]}.
    {test,test_arity,{f,183},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,183},[{x,1},2,{atom,try_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,9}.
    return.
  {label,183}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",431}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",424}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",423}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",422}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",414}]}.
    {case_end,{x,0}}.
  {label,192}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",411}]}.
    {badmatch,{atom,true}}.
  {label,193}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",406}]}.
    {case_end,{x,0}}.
  {label,194}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",402}]}.
    {badmatch,{atom,false}}.
  {label,195}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",399}]}.
    {badmatch,{atom,ok}}.
  {label,196}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",398}]}.
    {badmatch,{atom,ok}}.
  {label,197}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",397}]}.
    {badmatch,{atom,ok}}.
  {label,198}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",396}]}.
    {badmatch,{atom,error}}.
  {label,199}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",394}]}.
    {badmatch,{atom,ok}}.
  {label,200}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",393}]}.
    {badmatch,{atom,error}}.
  {label,201}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",391}]}.
    {badmatch,{x,0}}.


{function, do_booleans_1, 1, 203}.
  {label,202}.
    {line,[{location,"beam_type_SUITE.erl",435}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_1},1}.
  {label,203}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",436}]}.
    {case_end,{atom,true}}.


{function, do_booleans_2, 2, 205}.
  {label,204}.
    {line,[{location,"beam_type_SUITE.erl",441}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_2},2}.
  {label,205}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{41,42}}}]}}.
    {allocate,0,2}.
    {line,[{location,"beam_type_SUITE.erl",442}]}.
    {call,2,{f,208}}. % do_booleans_cmp/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,206},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,206}.
    {move,{atom,error},{x,0}}.
    {deallocate,0}.
    return.


{function, do_booleans_cmp, 2, 208}.
  {label,207}.
    {line,[{location,"beam_type_SUITE.erl",452}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_cmp},2}.
  {label,208}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{41,42}}}]}}.
    {bif,'>=',{f,0},[{integer,41},{tr,{x,1},{t_integer,{41,42}}}],{x,0}}.
    return.


{function, do_booleans_3, 2, 210}.
  {label,209}.
    {line,[{location,"beam_type_SUITE.erl",454}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_3},2}.
  {label,210}.
    {test,is_nil,{f,211},[{x,0}]}.
    {test,is_eq_exact,{f,211},[{x,1},{atom,false}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,211}.
    {move,{atom,error},{x,0}}.
    return.


{function, do_booleans_4, 1, 213}.
  {label,212}.
    {line,[{location,"beam_type_SUITE.erl",461}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_4},1}.
  {label,213}.
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
          {f,214},
          [{tr,{x,0},
               {t_union,{t_atom,[a,false,true]},
                        none,
                        {t_integer,{42,42}},
                        none,none}},
           {atom,true}]}.
    {line,[{location,"beam_type_SUITE.erl",464}]}.
    {badmatch,{atom,true}}.
  {label,214}.
    {line,[{location,"beam_type_SUITE.erl",462}]}.
    {case_end,{x,1}}.


{function, do_booleans_5, 3, 216}.
  {label,215}.
    {line,[{location,"beam_type_SUITE.erl",468}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_5},3}.
  {label,216}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,215},3,[{x,1}],{x,3}}.
    {bs_get_position,{x,3},{x,1},4}.
    {bs_match,{f,217},
              {x,3},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_eq_exact,{f,217},[{tr,{x,4},{t_integer,{0,255}}},{x,0}]}.
    {test,is_eq_exact,{f,217},[{x,2},{tr,{x,0},{t_integer,{0,255}}}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,217}.
    {bs_set_position,{x,3},{x,1}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {jump,{f,215}}.


{function, do_booleans_6, 3, 219}.
  {label,218}.
    {line,[{location,"beam_type_SUITE.erl",471}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_6},3}.
  {label,219}.
    {test,is_nonempty_list,{f,218},[{x,2}]}.
    {get_tl,{x,2},{x,3}}.
    {bif,'=:=',{f,0},[{x,1},{x,0}],{x,4}}.
    {bif,'=:=',{f,0},[{tr,{x,2},{t_cons,any,any}},{x,0}],{x,5}}.
    {bif,'=:=',{f,0},[{x,3},{x,0}],{x,3}}.
    {bif,'and',
         {f,0},
         [{tr,{x,5},{t_atom,[false,true]}},{tr,{x,3},{t_atom,[false,true]}}],
         {x,3}}.
    {test,is_eq_exact,{f,218},[{tr,{x,4},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,218},[{tr,{x,3},{t_atom,[false,true]}},{atom,true}]}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {call_only,1,{f,919}}. % '-do_booleans_6/3-lc$^0/1-0-'/1


{function, do_booleans_7, 1, 221}.
  {label,220}.
    {line,[{location,"beam_type_SUITE.erl",477}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_7},1}.
  {label,221}.
    {allocate,2,1}.
    {move,{x,0},{y,0}}.
    {'try',{y,1},{f,224}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",479}]}.
    {call_ext,1,{extfunc,beam_type_SUITE,id,1}}.
    {move,nil,{x,1}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,nil,{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,2,{extfunc,erlang,'--',2}}.
    {bif,'=/=',{f,0},[{tr,{x,0},{t_list,any,nil}},{atom,ok}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}],{x,0}}.
    {test,is_eq_exact,{f,222},[{x,0},{atom,true}]}.
    {move,{literal,[0]},{x,0}}.
    {jump,{f,223}}.
  {label,222}.
    {move,nil,{x,0}}.
  {label,223}.
    {try_end,{y,1}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",481}]}.
    {call,1,{f,227}}. % do_booleans_7_a/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},nil]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,224}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_nil,{f,225},[{x,1}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,227},2}. % do_booleans_7_a/1
  {label,225}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, do_booleans_7_a, 1, 227}.
  {label,226}.
    {line,[{location,"beam_type_SUITE.erl",488}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_7_a},1}.
  {label,227}.
    {move,nil,{x,0}}.
    return.


{function, do_booleans_8, 1, 229}.
  {label,228}.
    {line,[{location,"beam_type_SUITE.erl",491}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_8},1}.
  {label,229}.
    {test,is_nonempty_list,{f,228},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,1},{x,0}}.
    {'try',{y,2},{f,231}}.
    {line,[{location,"beam_type_SUITE.erl",493}]}.
    {call,1,{f,915}}. % '-do_booleans_8/1-lc$^0/1-0-'/1
    {move,{x,0},{y,0}}.
    {'%',{var_info,{y,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {'catch',{y,1},{f,230}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,230}.
    {catch_end,{y,1}}.
    {bif,'<',{f,0},[{x,0},{tr,{y,0},{t_list,{t_atom,[ok]},nil}}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {try_end,{y,2}}.
    {deallocate,3}.
    return.
  {label,231}.
    {try_case,{y,2}}.
    {test,bs_start_match3,{f,232},3,[{x,1}],{x,3}}.
    {test,bs_get_integer2,
          {f,232},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {y,1},
           1,
           {field_flags,[{anno,[495,{file,"beam_type_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,232},{x,3},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,232},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{x,4},{x,0}}.
    {deallocate,3}.
    return.
  {label,232}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, do_booleans_9, 1, 234}.
  {label,233}.
    {line,[{location,"beam_type_SUITE.erl",499}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_booleans_9},1}.
  {label,234}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {'try',{y,2},{f,236}}.
    {line,[{location,"beam_type_SUITE.erl",501}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
    {bif,'or',{f,0},[{x,0},{atom,true}],{y,0}}.
    {fmove,{float,1.0},{fr,0}}.
    {fmove,{float,0.0},{fr,1}}.
    {'catch',{y,1},{f,235}}.
    {line,[{location,"beam_type_SUITE.erl",502}]}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
  {label,235}.
    {catch_end,{y,1}}.
    {bif,is_tuple,{f,0},[{x,0}],{x,0}}.
    {bif,'xor',
         {f,0},
         [{tr,{y,0},{t_atom,[false,true]}},{tr,{x,0},{t_atom,[false,true]}}],
         {x,0}}.
    {try_end,{y,2}}.
    {line,[{scope,[4,5]},{location,"beam_type_SUITE.erl",500}]}.
    {try_case_end,{x,0}}.
  {label,236}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,237},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {bif,'<',{f,0},[{atom,ok},{y,1}],{x,0}}.
    {deallocate,3}.
    return.
  {label,237}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, setelement, 1, 239}.
  {label,238}.
    {line,[{location,"beam_type_SUITE.erl",514}]}.
    {func_info,{atom,beam_type_SUITE},{atom,setelement},1}.
  {label,239}.
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
    {line,[{location,"beam_type_SUITE.erl",515}]}.
    {call,1,{f,816}}. % id/1
    {test,is_tagged_tuple,{f,279},[{x,0},2,{atom,a}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",518}]}.
    {call,1,{f,816}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,32,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,32}]}}.
    {move,{atom,z},{x,2}}.
    {move,{literal,{a,b}},{x,1}}.
    {call,3,{f,287}}. % do_setelement_1/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,278},
          [{tr,{x,0},{t_tuple,2,true,#{}}},{literal,{z,b}}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",519}]}.
    {call,1,{f,816}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,1}]}}.
    {move,{atom,new},{x,2}}.
    {move,{literal,{one,two}},{x,1}}.
    {call,3,{f,290}}. % do_setelement_2/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[new]},
                                     2 => {t_atom,[two]}}}}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",520}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,11}}.
    {move,{literal,{a,b}},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{atom,x},{x,2}}.
    {move,{y,11},{x,0}}.
    {init_yregs,{list,[{y,11}]}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {test,is_eq_exact,
          {f,277},
          [{tr,{x,0},{t_tuple,1,false,#{}}},{literal,{x,b}}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",522}]}.
    {call,1,{f,816}}. % id/1
    {select_val,{x,0},
                {f,276},
                {list,[{integer,0},{f,241},{integer,1},{f,240}]}}.
  {label,240}.
    {move,{integer,2},{x,0}}.
    {jump,{f,242}}.
  {label,241}.
    {move,{integer,1},{x,0}}.
  {label,242}.
    {move,{atom,x},{x,2}}.
    {move,{literal,{a,b,c}},{x,1}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",526}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {test,is_eq_exact,
          {f,275},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{a,x,c}}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",528}]}.
    {call,1,{f,816}}. % id/1
    {select_val,{x,0},
                {f,274},
                {list,[{integer,0},{f,244},{integer,1},{f,243}]}}.
  {label,243}.
    {move,{integer,5},{x,0}}.
    {jump,{f,245}}.
  {label,244}.
    {move,{integer,4},{x,0}}.
  {label,245}.
    {'catch',{y,11},{f,246}}.
    {move,{atom,y},{x,2}}.
    {move,{literal,{a,b,c}},{x,1}}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",532}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,246}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,273},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,273},[{x,1},2,{atom,badarg}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",536}]}.
    {call,1,{f,284}}. % tuple_or_integer/1
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
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",537}]}.
    {call,1,{f,281}}. % record_or_integer/1
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
    {'catch',{y,10},{f,247}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",538}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,284}}. % tuple_or_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,any},
                                   {t_tuple,1,true,#{}},
                                   none}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,2},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,247}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,272},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,272},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,9},{f,248}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[21,22]},{location,"beam_type_SUITE.erl",539}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,284}}. % tuple_or_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,any},
                                   {t_tuple,1,true,#{}},
                                   none}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,2},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,248}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,271},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,271},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,8},{f,249}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",540}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,281}}. % record_or_integer/1
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
  {label,249}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,270},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,270},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,7},{f,250}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",541}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,281}}. % record_or_integer/1
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
  {label,250}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,269},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,269},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,6},{f,251}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",542}]}.
    {call,1,{f,816}}. % id/1
    {move,{atom,y},{x,2}}.
    {move,{atom,not_a_tuple},{x,1}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,251}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,268},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,268},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,5},{f,252}}.
    {move,{atom,not_a_tuple},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",545}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,252}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,267},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,267},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,4},{f,253}}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{atom,not_an_index},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",546}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,253}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,266},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,266},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,3},{f,254}}.
    {move,{literal,{out_of_range}},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",547}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,254}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,265},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,265},[{x,1},2,{atom,badarg}]}.
    {move,{atom,y},{x,1}}.
    {move,{literal,{update_tuple_a,undefined,undefined}},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",548}]}.
    {call,2,{f,293}}. % update_tuple_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,false,
                                   #{1 => {t_atom,[y]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[undefined]}}}}]}}.
    {test,is_tagged_tuple,
          {f,264},
          [{tr,{x,0},
               {t_tuple,3,false,
                        #{1 => {t_atom,[y]},
                          2 => {t_atom,[undefined]},
                          3 => {t_atom,[undefined]}}}},
           3,
           {atom,y}]}.
    {move,{atom,y},{x,1}}.
    {move,{literal,{update_tuple_b,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",549}]}.
    {call,2,{f,293}}. % update_tuple_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,false,
                                   #{1 => {t_atom,[y]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[undefined]}}}}]}}.
    {test,is_tagged_tuple,
          {f,263},
          [{tr,{x,0},
               {t_tuple,3,false,
                        #{1 => {t_atom,[y]},
                          2 => {t_atom,[undefined]},
                          3 => {t_atom,[undefined]}}}},
           4,
           {atom,y}]}.
    {move,{atom,y},{x,1}}.
    {move,{literal,{update_tuple_a,undefined,undefined}},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",550}]}.
    {call,2,{f,297}}. % update_tuple_2/2
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
    {test,test_arity,{f,262},[{x,0},3]}.
    {move,{atom,y},{x,1}}.
    {move,{literal,{update_tuple_b,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",551}]}.
    {call,2,{f,297}}. % update_tuple_2/2
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
    {test,test_arity,{f,261},[{x,0},4]}.
    {'catch',{y,2},{f,255}}.
    {move,{literal,{update_tuple_a,undefined,undefined}},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",552}]}.
    {call,1,{f,816}}. % id/1
    {move,{atom,y},{x,1}}.
    {call,2,{f,301}}. % update_tuple_3/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,255}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,260},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,260},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,1},{f,256}}.
    {move,{literal,{update_tuple_b,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",553}]}.
    {call,1,{f,816}}. % id/1
    {move,{atom,y},{x,1}}.
    {call,2,{f,301}}. % update_tuple_3/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,256}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,259},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,259},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,257}}.
    {move,{literal,{update_tuple_a,undefined,undefined}},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",554}]}.
    {call,1,{f,816}}. % id/1
    {move,{atom,y},{x,1}}.
    {call,2,{f,307}}. % update_tuple_4/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_atom,[update_tuple_b]},
                                     4 => {t_atom,[y]}}}}]}}.
  {label,257}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,258},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,258},[{x,1},2,{atom,badarg}]}.
    {move,{literal,{update_tuple_b,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[1,2]},{location,"beam_type_SUITE.erl",555}]}.
    {call,1,{f,816}}. % id/1
    {move,{atom,y},{x,1}}.
    {call,2,{f,307}}. % update_tuple_4/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_atom,[update_tuple_b]},
                                     4 => {t_atom,[y]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,12}.
    return.
  {label,258}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",554}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",553}]}.
    {badmatch,{x,0}}.
  {label,260}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,261}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",551}]}.
    {badmatch,{literal,{update_tuple_a,y,undefined}}}.
  {label,262}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",550}]}.
    {badmatch,{literal,{update_tuple_b,y,undefined,undefined}}}.
  {label,263}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",549}]}.
    {badmatch,{x,0}}.
  {label,264}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",548}]}.
    {badmatch,{x,0}}.
  {label,265}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",547}]}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",546}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",545}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",542}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",541}]}.
    {badmatch,{x,0}}.
  {label,270}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",540}]}.
    {badmatch,{x,0}}.
  {label,271}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",539}]}.
    {badmatch,{x,0}}.
  {label,272}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",538}]}.
    {badmatch,{x,0}}.
  {label,273}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",532}]}.
    {badmatch,{x,0}}.
  {label,274}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",528}]}.
    {case_end,{x,0}}.
  {label,275}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",526}]}.
    {badmatch,{x,0}}.
  {label,276}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",522}]}.
    {case_end,{x,0}}.
  {label,277}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",520}]}.
    {badmatch,{x,0}}.
  {label,278}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",518}]}.
    {badmatch,{x,0}}.
  {label,279}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",516}]}.
    {badmatch,{x,0}}.


{function, record_or_integer, 1, 281}.
  {label,280}.
    {line,[{location,"beam_type_SUITE.erl",559}]}.
    {func_info,{atom,beam_type_SUITE},{atom,record_or_integer},1}.
  {label,281}.
    {test,is_eq_exact,{f,282},[{x,0},{integer,0}]}.
    {move,{literal,{tuple}},{x,0}}.
    return.
  {label,282}.
    {test,is_integer,{f,280},[{x,0}]}.
    return.


{function, tuple_or_integer, 1, 284}.
  {label,283}.
    {line,[{location,"beam_type_SUITE.erl",564}]}.
    {func_info,{atom,beam_type_SUITE},{atom,tuple_or_integer},1}.
  {label,284}.
    {test,is_eq_exact,{f,285},[{x,0},{integer,0}]}.
    {allocate,0,0}.
    {move,{atom,tuple},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",565}]}.
    {call,1,{f,816}}. % id/1
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {deallocate,0}.
    return.
  {label,285}.
    {test,is_integer,{f,283},[{x,0}]}.
    return.


{function, do_setelement_1, 3, 287}.
  {label,286}.
    {line,[{location,"beam_type_SUITE.erl",569}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_setelement_1},3}.
  {label,287}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[z]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,288},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {line,[{location,"beam_type_SUITE.erl",570}]}.
    {bif,element,
         {f,0},
         [{tr,{x,4},{t_integer,{0,4294967295}}},{literal,{a,b}}],
         {x,0}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",573}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,288}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,286}}.


{function, do_setelement_2, 3, 290}.
  {label,289}.
    {line,[{location,"beam_type_SUITE.erl",575}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_setelement_2},3}.
  {label,290}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[one]},
                                     2 => {t_atom,[two]}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[new]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,291},
              {x,0},
              {commands,[{ensure_exactly,1},
                         {integer,4,{literal,[]},1,1,{x,4}}]}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",579}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,291}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,289}}.


{function, update_tuple_1, 2, 293}.
  {label,292}.
    {line,[{location,"beam_type_SUITE.erl",581}]}.
    {func_info,{atom,beam_type_SUITE},{atom,update_tuple_1},2}.
  {label,293}.
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
        {f,295},
        {list,[3,{f,294},4,{f,294}]}}.
  {label,294}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",586}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,295}.
    {line,[{location,"beam_type_SUITE.erl",582}]}.
    {case_end,{x,0}}.


{function, update_tuple_2, 2, 297}.
  {label,296}.
    {line,[{location,"beam_type_SUITE.erl",588}]}.
    {func_info,{atom,beam_type_SUITE},{atom,update_tuple_2},2}.
  {label,297}.
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
        {f,299},
        {list,[3,{f,298},4,{f,298}]}}.
  {label,298}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",593}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,299}.
    {line,[{location,"beam_type_SUITE.erl",589}]}.
    {case_end,{x,0}}.


{function, update_tuple_3, 2, 301}.
  {label,300}.
    {line,[{location,"beam_type_SUITE.erl",595}]}.
    {func_info,{atom,beam_type_SUITE},{atom,update_tuple_3},2}.
  {label,301}.
    {'%',{var_info,{x,1},[{type,{t_atom,[y]}}]}}.
    {test,is_tuple,{f,305},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,305},
                        {list,[3,{f,303},4,{f,302}]}}.
  {label,302}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,305},[{x,1},{atom,update_tuple_b}]}.
    {jump,{f,304}}.
  {label,303}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,305},[{x,1},{atom,update_tuple_a}]}.
  {label,304}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,47},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",600}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,305}.
    {line,[{location,"beam_type_SUITE.erl",596}]}.
    {case_end,{x,0}}.


{function, update_tuple_4, 2, 307}.
  {label,306}.
    {line,[{location,"beam_type_SUITE.erl",602}]}.
    {func_info,{atom,beam_type_SUITE},{atom,update_tuple_4},2}.
  {label,307}.
    {'%',{var_info,{x,1},[{type,{t_atom,[y]}}]}}.
    {test,is_tuple,{f,311},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,311},
                        {list,[3,{f,309},4,{f,308}]}}.
  {label,308}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,311},[{x,1},{atom,update_tuple_b}]}.
    {jump,{f,310}}.
  {label,309}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,311},[{x,1},{atom,update_tuple_a}]}.
  {label,310}.
    {move,{x,0},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",609}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,311}.
    {line,[{location,"beam_type_SUITE.erl",603}]}.
    {case_end,{x,0}}.


{function, cons, 1, 313}.
  {label,312}.
    {line,[{location,"beam_type_SUITE.erl",611}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cons},1}.
  {label,313}.
    {allocate,0,0}.
    {move,{atom,did},{x,1}}.
    {move,{atom,assigned},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",612}]}.
    {call,2,{f,322}}. % cons/2
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[did]},nil}}]}}.
    {test,is_eq_exact,
          {f,320},
          [{tr,{x,0},{t_cons,{t_atom,[did]},nil}},{literal,[did]}]}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",614}]}.
    {call,1,{f,324}}. % cons_is_empty_list/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,319},[{x,0},{atom,true}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",615}]}.
    {call,1,{f,324}}. % cons_is_empty_list/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,314},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,314}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",617}]}.
    {call,1,{f,331}}. % cons_not/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,315},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,315}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",618}]}.
    {call,1,{f,331}}. % cons_not/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,318},[{x,0},{atom,true}]}.
    {line,[{location,"beam_type_SUITE.erl",620}]}.
    {call,1,{f,338}}. % cons_hdtl/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,317},
          [{tr,{x,0},{t_tuple,2,true,#{}}},{literal,{97,"bc"}}]}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",621}]}.
    {call,1,{f,338}}. % cons_hdtl/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,316},
          [{tr,{x,0},{t_tuple,2,true,#{}}},{literal,{100,"ef"}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,316}.
    {badmatch,{x,0}}.
  {label,317}.
    {line,[{location,"beam_type_SUITE.erl",620}]}.
    {badmatch,{x,0}}.
  {label,318}.
    {line,[{location,"beam_type_SUITE.erl",618}]}.
    {badmatch,{atom,false}}.
  {label,319}.
    {line,[{location,"beam_type_SUITE.erl",614}]}.
    {badmatch,{atom,false}}.
  {label,320}.
    {line,[{location,"beam_type_SUITE.erl",612}]}.
    {badmatch,{x,0}}.


{function, cons, 2, 322}.
  {label,321}.
    {line,[{location,"beam_type_SUITE.erl",624}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cons},2}.
  {label,322}.
    {'%',{var_info,{x,0},[{type,{t_atom,[assigned]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[did]}}]}}.
    {move,{literal,[did]},{x,0}}.
    return.


{function, cons_is_empty_list, 1, 324}.
  {label,323}.
    {line,[{location,"beam_type_SUITE.erl",627}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cons_is_empty_list},1}.
  {label,324}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a]},nil}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {test,is_nil,{f,325},[{tr,{x,0},{t_list,{t_atom,[a]},nil}}]}.
    {move,{literal,"true"},{y,0}}.
    {jump,{f,326}}.
  {label,325}.
    {move,{literal,"false"},{y,0}}.
  {label,326}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",632}]}.
    {call,1,{f,816}}. % id/1
    {get_list,{y,0},{x,0},{x,1}}.
    {select_val,{tr,{x,0},{t_integer,{97,117}}},
                {f,329},
                {list,[{integer,102},{f,328},{integer,116},{f,327}]}}.
  {label,327}.
    {test,is_eq_exact,
          {f,329},
          [{tr,{x,1},{t_list,{t_integer,{97,117}},nil}},{literal,"rue"}]}.
    {move,{atom,true},{x,0}}.
    {deallocate,1}.
    return.
  {label,328}.
    {test,is_eq_exact,
          {f,329},
          [{tr,{x,1},{t_list,{t_integer,{97,117}},nil}},{literal,"alse"}]}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,329}.
    {line,[{location,"beam_type_SUITE.erl",633}]}.
    {case_end,{y,0}}.


{function, cons_not, 1, 331}.
  {label,330}.
    {line,[{location,"beam_type_SUITE.erl",638}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cons_not},1}.
  {label,331}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {test,is_eq_exact,{f,332},[{x,0},{atom,true}]}.
    {move,{literal,"true"},{y,0}}.
    {jump,{f,333}}.
  {label,332}.
    {move,{literal,"false"},{y,0}}.
  {label,333}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",643}]}.
    {call,1,{f,816}}. % id/1
    {get_list,{y,0},{x,0},{x,1}}.
    {select_val,{tr,{x,0},{t_integer,{97,117}}},
                {f,336},
                {list,[{integer,102},{f,335},{integer,116},{f,334}]}}.
  {label,334}.
    {test,is_eq_exact,
          {f,336},
          [{tr,{x,1},{t_list,{t_integer,{97,117}},nil}},{literal,"rue"}]}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,335}.
    {test,is_eq_exact,
          {f,336},
          [{tr,{x,1},{t_list,{t_integer,{97,117}},nil}},{literal,"alse"}]}.
    {move,{atom,true},{x,0}}.
    {deallocate,1}.
    return.
  {label,336}.
    {line,[{location,"beam_type_SUITE.erl",644}]}.
    {case_end,{y,0}}.


{function, cons_hdtl, 1, 338}.
  {label,337}.
    {line,[{location,"beam_type_SUITE.erl",649}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cons_hdtl},1}.
  {label,338}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {test,is_eq_exact,{f,339},[{x,0},{atom,true}]}.
    {move,{literal,"abc"},{y,0}}.
    {jump,{f,340}}.
  {label,339}.
    {move,{literal,"def"},{y,0}}.
  {label,340}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",654}]}.
    {call,1,{f,816}}. % id/1
    {get_hd,{y,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",655}]}.
    {call,1,{f,816}}. % id/1
    {get_tl,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,816}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, tuple, 1, 342}.
  {label,341}.
    {line,[{location,"beam_type_SUITE.erl",659}]}.
    {func_info,{atom,beam_type_SUITE},{atom,tuple},1}.
  {label,342}.
    {allocate,9,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {'catch',{y,8},{f,343}}.
    {line,[{location,"beam_type_SUITE.erl",660}]}.
    {call,0,{f,366}}. % do_tuple/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,343}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,364},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,364},[{x,1}]}.
    {test,test_arity,{f,364},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,364},[{x,1},{literal,{badmatch,{necessary}}}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",662}]}.
    {call,1,{f,913}}. % '-tuple/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",663}]}.
    {call,1,{f,911}}. % '-tuple/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",664}]}.
    {call,1,{f,909}}. % '-tuple/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",666}]}.
    {call,1,{f,368}}. % do_literal_tuple_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {move,{integer,20},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",667}]}.
    {call,1,{f,368}}. % do_literal_tuple_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {'catch',{y,7},{f,344}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",668}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,368}}. % do_literal_tuple_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
  {label,344}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,363},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,6},{f,345}}.
    {move,{atom,bad},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",669}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,368}}. % do_literal_tuple_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
  {label,345}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,362},[{x,0},2,{atom,'EXIT'}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",671}]}.
    {call,1,{f,370}}. % do_literal_tuple_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{integer,15},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",672}]}.
    {call,1,{f,370}}. % do_literal_tuple_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{integer,20},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",673}]}.
    {call,1,{f,370}}. % do_literal_tuple_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{literal,{0,0,0}},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",675}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",676}]}.
    {call,2,{f,372}}. % increment_element/2
    {'%',{var_info,{x,0},[{type,{t_tuple,1,false,#{}}}]}}.
    {test,is_eq_exact,
          {f,361},
          [{tr,{x,0},{t_tuple,1,false,#{}}},{literal,{1,0,0}}]}.
    {move,{literal,{1,0,0}},{x,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",677}]}.
    {call,2,{f,372}}. % increment_element/2
    {'%',{var_info,{x,0},[{type,{t_tuple,1,false,#{}}}]}}.
    {test,is_eq_exact,
          {f,360},
          [{tr,{x,0},{t_tuple,1,false,#{}}},{literal,{1,1,0}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",679}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,816}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{y,8},{list,[{y,8},{y,7},{x,0}]}}.
    {move,{y,8},{x,1}}.
    {init_yregs,{list,[{y,7}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",680}]}.
    {call,2,{f,374}}. % decrement_element/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,359},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{0,-1,0}}]}.
    {move,{y,8},{x,1}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",681}]}.
    {call,2,{f,374}}. % decrement_element/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,358},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{0,0,-1}}]}.
    {'catch',{y,5},{f,346}}.
    {move,{y,8},{x,1}}.
    {init_yregs,{list,[{y,8}]}}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",682}]}.
    {call,2,{f,374}}. % decrement_element/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
  {label,346}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,357},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,357},[{x,1},2,{atom,badarg}]}.
    {move,{literal,{true}},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",684}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,376}}. % gh_6458/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,4},{f,347}}.
    {move,{literal,{false}},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",685}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,376}}. % gh_6458/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,347}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,356},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,356},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,3},{f,348}}.
    {move,{literal,{42}},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",686}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,376}}. % gh_6458/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,348}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,355},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,355},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,349}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",687}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,376}}. % gh_6458/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,349}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,354},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,354},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,350}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",689}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,382}}. % gh_6927/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,350}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,353},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,353},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,351}}.
    {move,nil,{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",690}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,382}}. % gh_6927/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,351}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,352},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,352},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,9}.
    return.
  {label,352}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",690}]}.
    {badmatch,{x,0}}.
  {label,353}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",689}]}.
    {badmatch,{x,0}}.
  {label,354}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",687}]}.
    {badmatch,{x,0}}.
  {label,355}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",686}]}.
    {badmatch,{x,0}}.
  {label,356}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",685}]}.
    {badmatch,{x,0}}.
  {label,357}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",682}]}.
    {badmatch,{x,0}}.
  {label,358}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",681}]}.
    {badmatch,{x,0}}.
  {label,359}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",680}]}.
    {badmatch,{x,0}}.
  {label,360}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",677}]}.
    {badmatch,{x,0}}.
  {label,361}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",676}]}.
    {badmatch,{x,0}}.
  {label,362}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",669}]}.
    {badmatch,{x,0}}.
  {label,363}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",668}]}.
    {badmatch,{x,0}}.
  {label,364}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",660}]}.
    {badmatch,{x,0}}.


{function, do_tuple, 0, 366}.
  {label,365}.
    {line,[{location,"beam_type_SUITE.erl",694}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_tuple},0}.
  {label,366}.
    {line,[{location,"beam_type_SUITE.erl",695}]}.
    {badmatch,{literal,{necessary}}}.


{function, do_literal_tuple_1, 1, 368}.
  {label,367}.
    {line,[{location,"beam_type_SUITE.erl",697}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_literal_tuple_1},1}.
  {label,368}.
    {line,[{location,"beam_type_SUITE.erl",698}]}.
    {bif,element,
         {f,0},
         [{x,0},{literal,{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}}],
         {x,0}}.
    {move,{integer,1},{x,0}}.
    return.


{function, do_literal_tuple_2, 1, 370}.
  {label,369}.
    {line,[{location,"beam_type_SUITE.erl",700}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_literal_tuple_2},1}.
  {label,370}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,20}}}]}}.
    {move,{integer,2},{x,0}}.
    return.


{function, increment_element, 2, 372}.
  {label,371}.
    {line,[{location,"beam_type_SUITE.erl",703}]}.
    {func_info,{atom,beam_type_SUITE},{atom,increment_element},2}.
  {label,372}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,2}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",704}]}.
    {bif,element,{f,0},[{tr,{x,0},{t_integer,{1,2}}},{x,1}],{x,2}}.
    {line,[{location,"beam_type_SUITE.erl",705}]}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,1}],{x,2}}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.


{function, decrement_element, 2, 374}.
  {label,373}.
    {line,[{location,"beam_type_SUITE.erl",707}]}.
    {func_info,{atom,beam_type_SUITE},{atom,decrement_element},2}.
  {label,374}.
    {'%',{var_info,{x,0},[{type,{t_integer,{2,4}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,3,true,#{}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",708}]}.
    {bif,element,
         {f,0},
         [{tr,{x,0},{t_integer,{2,4}}},{tr,{x,1},{t_tuple,3,true,#{}}}],
         {x,2}}.
    {line,[{location,"beam_type_SUITE.erl",709}]}.
    {gc_bif,'-',{f,0},3,[{x,2},{integer,1}],{x,2}}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.


{function, gh_6458, 1, 376}.
  {label,375}.
    {line,[{location,"beam_type_SUITE.erl",711}]}.
    {func_info,{atom,beam_type_SUITE},{atom,gh_6458},1}.
  {label,376}.
    {test,is_tuple,{f,375},[{x,0}]}.
    {test,test_arity,{f,375},[{x,0},1]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {bif,'=:=',{f,0},[{x,1},{atom,true}],{x,2}}.
    {test,is_eq_exact,{f,377},[{x,1},{atom,true}]}.
    {move,{atom,true},{x,3}}.
    {jump,{f,378}}.
  {label,377}.
    {move,{atom,false},{x,3}}.
  {label,378}.
    {test,is_eq_exact,{f,379},[{tr,{x,2},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,375},[{tr,{x,3},{t_atom,[false,true]}},{atom,true}]}.
  {label,379}.
    {test,is_boolean,{f,380},[{x,1}]}.
    {move,{x,1},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {call_only,3,{f,907}}. % '-gh_6458/1-lc$^0/1-0-'/3
  {label,380}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,1}]}}.
    {line,[{location,"beam_type_SUITE.erl",712}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, gh_6927, 1, 382}.
  {label,381}.
    {line,[{location,"beam_type_SUITE.erl",723}]}.
    {func_info,{atom,beam_type_SUITE},{atom,gh_6927},1}.
  {label,382}.
    {test,is_tuple,{f,383},[{x,0}]}.
    {test,test_arity,{f,383},[{x,0},2]}.
    {jump,{f,384}}.
  {label,383}.
    {move,{atom,ok},{x,0}}.
  {label,384}.
    {bif,element,
         {f,0},
         [{integer,42},
          {tr,{x,0},
              {t_union,{t_atom,[ok]},none,none,{t_tuple,2,true,#{}},none}}],
         {x,0}}.
    return.


{function, record_float, 1, 386}.
  {label,385}.
    {line,[{location,"beam_type_SUITE.erl",734}]}.
    {func_info,{atom,beam_type_SUITE},{atom,record_float},1}.
  {label,386}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,1700},{x,1}}.
    {move,{literal,{x,{0}}},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",735}]}.
    {call,2,{f,396}}. % record_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,394},[{tr,{x,0},{t_float,any}},{float,17.0}]}.
    {move,{float,2.3e3},{x,1}}.
    {move,{literal,{x,{0}}},{x,0}}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",736}]}.
    {call,2,{f,396}}. % record_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,393},[{tr,{x,0},{t_float,any}},{float,23.0}]}.
    {'catch',{y,2},{f,387}}.
    {move,{integer,88},{x,1}}.
    {move,{literal,{x,{1}}},{x,0}}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",737}]}.
    {call,2,{f,396}}. % record_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
  {label,387}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,392},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,392},[{x,1},2,{atom,if_clause}]}.
    {'catch',{y,1},{f,388}}.
    {move,{integer,88},{x,1}}.
    {move,{literal,{x,{}}},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",738}]}.
    {call,2,{f,396}}. % record_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
  {label,388}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,391},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,391},[{x,1},2,{atom,if_clause}]}.
    {'catch',{y,0},{f,389}}.
    {move,{integer,88},{x,1}}.
    {move,{literal,{x,undefined}},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",739}]}.
    {call,2,{f,396}}. % record_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
  {label,389}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,390},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,390},[{x,1},2,{atom,if_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,390}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",739}]}.
    {badmatch,{x,0}}.
  {label,391}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",738}]}.
    {badmatch,{x,0}}.
  {label,392}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",737}]}.
    {badmatch,{x,0}}.
  {label,393}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",736}]}.
    {badmatch,{x,0}}.
  {label,394}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",735}]}.
    {badmatch,{x,0}}.


{function, record_float, 2, 396}.
  {label,395}.
    {line,[{location,"beam_type_SUITE.erl",742}]}.
    {func_info,{atom,beam_type_SUITE},{atom,record_float},2}.
  {label,396}.
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
    {line,[{location,"beam_type_SUITE.erl",743}]}.
    {fconv,{tr,{x,1},{t_number,{88,2300}}},{fr,0}}.
    {fmove,{float,100.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},1}.
    {fmove,{fr,0},{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,element,
         {f,397},
         [{integer,1},
          {tr,{x,0},
              {t_union,{t_atom,[undefined]},
                       none,none,
                       {t_tuple,0,false,#{}},
                       none}}],
         {x,0}}.
    {test,is_eq_exact,{f,397},[{x,0},{integer,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,397}.
    {line,[{location,"beam_type_SUITE.erl",744}]}.
    if_end.


{function, binary_float, 1, 399}.
  {label,398}.
    {line,[{location,"beam_type_SUITE.erl",748}]}.
    {func_info,{atom,beam_type_SUITE},{atom,binary_float},1}.
  {label,399}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<63,240,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",749}]}.
    {call,1,{f,404}}. % binary_negate_float/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_float2,
          {f,402},
          2,
          [{tr,{x,1},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[749,{file,"beam_type_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,402},[{tr,{x,2},{t_float,any}},{float,-1.0}]}.
    {bs_match,{f,402},{x,1},{commands,[{ensure_exactly,0}]}}.
    {'catch',{y,1},{f,400}}.
    {move,{float,64.0},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",750}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,407}}. % binary_float_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,400}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,401},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,401},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,401}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",750}]}.
    {badmatch,{x,0}}.
  {label,402}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",749}]}.
    {badmatch,{x,0}}.


{function, binary_negate_float, 1, 404}.
  {label,403}.
    {line,[{location,"beam_type_SUITE.erl",753}]}.
    {func_info,{atom,beam_type_SUITE},{atom,binary_negate_float},1}.
  {label,404}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,64,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_float2,
          {f,405},
          2,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[753,{file,"beam_type_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,405},{x,0},{commands,[{ensure_exactly,0}]}}.
    {fmove,{x,2},{fr,0}}.
    {line,[{location,"beam_type_SUITE.erl",754}]}.
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
  {label,405}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,403}}.


{function, binary_float_1, 2, 407}.
  {label,406}.
    {line,[{location,"beam_type_SUITE.erl",757}]}.
    {func_info,{atom,beam_type_SUITE},{atom,binary_float_1},2}.
  {label,407}.
    {test,is_eq_exact,{f,408},[{x,0},{float,64.0}]}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",758}]}.
    {call_ext_only,1,{extfunc,erlang,binary_to_integer,1}}.
  {label,408}.
    {badmatch,{x,0}}.


{function, float_compare, 1, 410}.
  {label,409}.
    {line,[{location,"beam_type_SUITE.erl",761}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_compare},1}.
  {label,410}.
    {allocate,0,0}.
    {move,{float,-42.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",762}]}.
    {call,1,{f,416}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{integer,-42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",763}]}.
    {call,1,{f,416}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",764}]}.
    {call,1,{f,416}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,411},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,411}.
    {move,{float,0.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",765}]}.
    {call,1,{f,416}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,412},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,412}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",766}]}.
    {call,1,{f,416}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,414},[{x,0},{atom,true}]}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",767}]}.
    {call,1,{f,416}}. % do_float_compare/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,413},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,413}.
    {badmatch,{atom,false}}.
  {label,414}.
    {line,[{location,"beam_type_SUITE.erl",766}]}.
    {badmatch,{atom,false}}.


{function, do_float_compare, 1, 416}.
  {label,415}.
    {line,[{location,"beam_type_SUITE.erl",770}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_float_compare},1}.
  {label,416}.
    {'%',{var_info,{x,0},[{type,{t_number,{-42,42}}}]}}.
    {line,[{location,"beam_type_SUITE.erl",774}]}.
    {fconv,{tr,{x,0},{t_number,{-42,42}}},{fr,0}}.
    {fmove,{float,1.0},{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},1}.
    {fmove,{fr,0},{x,1}}.
    {test,is_lt,{f,417},[{integer,0},{tr,{x,0},{t_number,{-42,42}}}]}.
    {bif,'<',{f,0},[{integer,0},{tr,{x,1},{t_float,any}}],{x,0}}.
    return.
  {label,417}.
    {move,{atom,false},{x,0}}.
    return.


{function, float_overflow, 1, 419}.
  {label,418}.
    {line,[{location,"beam_type_SUITE.erl",780}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_overflow},1}.
  {label,419}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_type_SUITE.erl",781}]}.
    {call,0,{f,433}}. % two/0
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{integer,179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216},
          {x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_type_SUITE.erl",782}]}.
    {call,0,{f,425}}. % float_overflow_1/0
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,423},[{tr,{x,0},{t_integer,any}},{y,0}]}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",784}]}.
    {call,0,{f,433}}. % two/0
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{integer,-179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216},
          {x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",785}]}.
    {call,0,{f,429}}. % float_overflow_2/0
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,422},[{tr,{x,0},{t_integer,any}},{y,0}]}.
    {'catch',{y,0},{f,420}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",787}]}.
    {call,0,{f,435}}. % float_overflow_3/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,420}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,421},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,421},[{x,1}]}.
    {test,test_arity,{f,421},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,421},[{x,1},{literal,{bad_filter,[0]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,421}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",787}]}.
    {badmatch,{x,0}}.
  {label,422}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",785}]}.
    {badmatch,{x,0}}.
  {label,423}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",782}]}.
    {badmatch,{x,0}}.


{function, float_overflow_1, 0, 425}.
  {label,424}.
    {line,[{location,"beam_type_SUITE.erl",793}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_overflow_1},0}.
  {label,425}.
    {allocate,1,0}.
    {'try',{y,0},{f,426}}.
    {line,[{location,"beam_type_SUITE.erl",796}]}.
    {call,0,{f,433}}. % two/0
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {try_end,{y,0}}.
    {move,{integer,179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216},
          {x,0}}.
    {jump,{f,427}}.
  {label,426}.
    {try_case,{y,0}}.
    {move,{float,0.0},{x,0}}.
  {label,427}.
    {line,[{location,"beam_type_SUITE.erl",794}]}.
    {gc_bif,round,
            {f,0},
            1,
            [{tr,{x,0},
                 {t_number,{0,
                            179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216}}}],
            {x,0}}.
    {deallocate,1}.
    return.


{function, float_overflow_2, 0, 429}.
  {label,428}.
    {line,[{location,"beam_type_SUITE.erl",803}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_overflow_2},0}.
  {label,429}.
    {allocate,1,0}.
    {'try',{y,0},{f,430}}.
    {line,[{location,"beam_type_SUITE.erl",806}]}.
    {call,0,{f,433}}. % two/0
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {try_end,{y,0}}.
    {move,{integer,-179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216},
          {x,0}}.
    {jump,{f,431}}.
  {label,430}.
    {try_case,{y,0}}.
    {move,{float,0.0},{x,0}}.
  {label,431}.
    {line,[{location,"beam_type_SUITE.erl",804}]}.
    {gc_bif,round,
            {f,0},
            1,
            [{tr,{x,0},
                 {t_number,{-179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216,
                            0}}}],
            {x,0}}.
    {deallocate,1}.
    return.


{function, two, 0, 433}.
  {label,432}.
    {line,[{location,"beam_type_SUITE.erl",813}]}.
    {func_info,{atom,beam_type_SUITE},{atom,two},0}.
  {label,433}.
    {move,{integer,2},{x,0}}.
    return.


{function, float_overflow_3, 0, 435}.
  {label,434}.
    {line,[{location,"beam_type_SUITE.erl",815}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_overflow_3},0}.
  {label,435}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,1,{f,903}}. % '-float_overflow_3/0-lc$^0/1-0-'/1


{function, arity_checks, 1, 437}.
  {label,436}.
    {line,[{location,"beam_type_SUITE.erl",820}]}.
    {func_info,{atom,beam_type_SUITE},{atom,arity_checks},1}.
  {label,437}.
    {allocate,0,0}.
    {move,{literal,{rgb,255,255,255,1}},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",823}]}.
    {call,1,{f,439}}. % do_record_arity_check/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{255,255,255,1}},{x,0}}.
    {call_last,1,{f,441},0}. % do_tuple_arity_check/1


{function, do_record_arity_check, 1, 439}.
  {label,438}.
    {line,[{location,"beam_type_SUITE.erl",828}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_record_arity_check},1}.
  {label,439}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[rgb]},
                                     2 => {t_integer,{255,255}},
                                     3 => {t_integer,{255,255}},
                                     4 => {t_integer,{255,255}},
                                     5 => {t_integer,{1,1}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_tuple_arity_check, 1, 441}.
  {label,440}.
    {line,[{location,"beam_type_SUITE.erl",837}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_tuple_arity_check},1}.
  {label,441}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{255,255}},
                                     2 => {t_integer,{255,255}},
                                     3 => {t_integer,{255,255}},
                                     4 => {t_integer,{1,1}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, elixir_binaries, 1, 443}.
  {label,442}.
    {line,[{location,"beam_type_SUITE.erl",846}]}.
    {func_info,{atom,beam_type_SUITE},{atom,elixir_binaries},1}.
  {label,443}.
    {allocate,0,0}.
    {move,{literal,<<"blitzky">>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",847}]}.
    {call,1,{f,448}}. % elixir_binary_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,446},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"foo blitzky baz">>}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",848}]}.
    {call,1,{f,450}}. % elixir_binary_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,445},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"foo * baz">>}]}.
    {move,{literal,<<188,3:2>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",849}]}.
    {call,1,{f,452}}. % elixir_bitstring_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,2,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,444},
              {x,1},
              {commands,[{ensure_exactly,14},{'=:=',nil,14,7923}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,444}.
    {badmatch,{x,0}}.
  {label,445}.
    {line,[{location,"beam_type_SUITE.erl",848}]}.
    {badmatch,{x,0}}.
  {label,446}.
    {line,[{location,"beam_type_SUITE.erl",847}]}.
    {badmatch,{x,0}}.


{function, elixir_binary_1, 1, 448}.
  {label,447}.
    {line,[{location,"beam_type_SUITE.erl",852}]}.
    {func_info,{atom,beam_type_SUITE},{atom,elixir_binary_1},1}.
  {label,448}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"beam_type_SUITE.erl",853}]}.
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


{function, elixir_binary_2, 1, 450}.
  {label,449}.
    {line,[{location,"beam_type_SUITE.erl",862}]}.
    {func_info,{atom,beam_type_SUITE},{atom,elixir_binary_2},1}.
  {label,450}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,<<"foo * baz">>},{x,0}}.
    return.


{function, elixir_bitstring_3, 1, 452}.
  {label,451}.
    {line,[{location,"beam_type_SUITE.erl",873}]}.
    {func_info,{atom,beam_type_SUITE},{atom,elixir_bitstring_3},1}.
  {label,452}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,2,false}}]}}.
    {line,[{location,"beam_type_SUITE.erl",874}]}.
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


{function, find_best, 1, 454}.
  {label,453}.
    {line,[{location,"beam_type_SUITE.erl",882}]}.
    {func_info,{atom,beam_type_SUITE},{atom,find_best},1}.
  {label,454}.
    {allocate,0,0}.
    {move,{atom,nil},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",883}]}.
    {call,2,{f,458}}. % find_best/2
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
          {f,456},
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
    {line,[{location,"beam_type_SUITE.erl",884}]}.
    {call,2,{f,458}}. % find_best/2
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
          {f,455},
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
    {line,[{location,"beam_type_SUITE.erl",885}]}.
    {call,2,{f,458}}. % find_best/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,455}.
    {line,[{location,"beam_type_SUITE.erl",884}]}.
    {badmatch,{x,0}}.
  {label,456}.
    {line,[{location,"beam_type_SUITE.erl",883}]}.
    {badmatch,{x,0}}.


{function, find_best, 2, 458}.
  {label,457}.
    {line,[{location,"beam_type_SUITE.erl",890}]}.
    {func_info,{atom,beam_type_SUITE},{atom,find_best},2}.
  {label,458}.
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
    {test,is_nonempty_list,{f,461},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_eq_exact,
          {f,459},
          [{tr,{x,2},
               {t_union,{t_atom,[a]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<"a">>}]}.
    {test,is_eq_exact,
          {f,460},
          [{tr,{x,1},
               {t_union,{t_atom,[a,nil]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,nil}]}.
    {move,{literal,<<"a">>},{x,1}}.
    {jump,{f,460}}.
  {label,459}.
    {test,is_eq_exact,
          {f,461},
          [{tr,{x,2},
               {t_union,{t_atom,[a]},none,none,none,{t_bitstring,8,false}}},
           {atom,a}]}.
    {test,is_eq_exact,
          {f,460},
          [{tr,{x,1},
               {t_union,{t_atom,[a,nil]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,nil}]}.
    {move,{atom,a},{x,1}}.
  {label,460}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,458}}. % find_best/2
  {label,461}.
    {test,is_ne_exact,
          {f,463},
          [{tr,{x,1},
               {t_union,{t_atom,[a,nil]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"a">>}]}.
    {select_val,{tr,{x,1},
                    {t_union,{t_atom,[a,nil]},
                             none,none,none,
                             {t_bitstring,8,false}}},
                {f,457},
                {list,[{atom,a},{f,463},{atom,nil},{f,462}]}}.
  {label,462}.
    {test,is_nil,
          {f,457},
          [{tr,{x,0},
               {t_list,{t_union,{t_atom,[a]},
                                none,none,none,
                                {t_bitstring,8,false}},
                       nil}}]}.
    {move,{literal,{error,<<"should not get here">>}},{x,0}}.
    return.
  {label,463}.
    {test,is_nil,
          {f,457},
          [{tr,{x,0},
               {t_list,{t_union,{t_atom,[a]},
                                none,none,none,
                                {t_bitstring,8,false}},
                       nil}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, test_size, 1, 465}.
  {label,464}.
    {line,[{location,"beam_type_SUITE.erl",909}]}.
    {func_info,{atom,beam_type_SUITE},{atom,test_size},1}.
  {label,465}.
    {allocate,0,0}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",910}]}.
    {call,1,{f,468}}. % do_test_size/1
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",911}]}.
    {call,1,{f,468}}. % do_test_size/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,466},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,4}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,466}.
    {badmatch,{x,0}}.


{function, do_test_size, 1, 468}.
  {label,467}.
    {line,[{location,"beam_type_SUITE.erl",914}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_test_size},1}.
  {label,468}.
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
          {f,469},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        {t_bitstring,32,false}}}]}.
    {move,{integer,2},{x,0}}.
    return.
  {label,469}.
    {line,[{location,"beam_type_SUITE.erl",917}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,32,false}}],{x,0}}.
    return.


{function, cover_lists_functions, 1, 471}.
  {label,470}.
    {line,[{location,"beam_type_SUITE.erl",919}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cover_lists_functions},1}.
  {label,471}.
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
    {make_fun3,{f,901},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[foo]}}]}}.
    {line,[{location,"beam_type_SUITE.erl",920}]}.
    {call,1,{f,816}}. % id/1
    {move,{y,5},{x,2}}.
    {move,{atom,foo},{x,1}}.
    {call_ext,3,{extfunc,lists,foldl,3}}.
    {test,is_eq_exact,{f,506},[{x,0},{atom,foo}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,899},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[foo]}}]}}.
    {move,{y,5},{x,2}}.
    {move,{atom,foo},{x,1}}.
    {line,[{scope,[28]},{location,"beam_type_SUITE.erl",921}]}.
    {call_ext,3,{extfunc,lists,foldl,3}}.
    {'catch',{y,13},{f,472}}.
    {move,{atom,foo},{x,1}}.
    {move,{y,5},{x,2}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[28]},{location,"beam_type_SUITE.erl",922}]}.
    {call_ext,3,{extfunc,lists,foldl,3}}.
  {label,472}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,505},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,897},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[foo]}}]}}.
    {line,[{scope,[27,28]},{location,"beam_type_SUITE.erl",924}]}.
    {call,1,{f,816}}. % id/1
    {move,{y,5},{x,2}}.
    {move,{atom,foo},{x,1}}.
    {call_ext,3,{extfunc,lists,foldr,3}}.
    {test,is_eq_exact,{f,504},[{x,0},{atom,foo}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,895},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[foo]}}]}}.
    {move,{y,5},{x,2}}.
    {move,{atom,foo},{x,1}}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",925}]}.
    {call_ext,3,{extfunc,lists,foldr,3}}.
    {'catch',{y,12},{f,473}}.
    {move,{atom,foo},{x,1}}.
    {move,{y,5},{x,2}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",926}]}.
    {call_ext,3,{extfunc,lists,foldr,3}}.
  {label,473}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,503},[{x,0},2,{atom,'EXIT'}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[25,26]},{location,"beam_type_SUITE.erl",928}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,2}}.
    {move,{atom,data_dir},{x,0}}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_tagged_tuple,
          {f,502},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,
                        {t_tuple,0,false,#{}},
                        none}},
           2,
           {atom,data_dir}]}.
    {'catch',{y,11},{f,474}}.
    {move,{atom,not_a_position},{x,1}}.
    {move,{y,5},{x,2}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{scope,[25,26]},{location,"beam_type_SUITE.erl",929}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {move,{atom,false},{x,0}}.
  {label,474}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,501},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,10},{f,475}}.
    {move,{integer,1},{x,1}}.
    {move,{atom,not_a_list},{x,2}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",930}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
  {label,475}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,500},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,9},{f,476}}.
    {move,{y,5},{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[21,22]},{location,"beam_type_SUITE.erl",932}]}.
    {call_ext,2,{extfunc,lists,map,2}}.
  {label,476}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,499},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,8},{f,477}}.
    {move,nil,{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",933}]}.
    {call_ext,2,{extfunc,lists,map,2}}.
  {label,477}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,498},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,816},0,0,{x,0},{list,[]}}.
    {'catch',{y,7},{f,478}}.
    {move,{atom,not_a_list},{x,1}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",934}]}.
    {call_ext,2,{extfunc,lists,map,2}}.
  {label,478}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,497},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,816},0,0,{x,0},{list,[]}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",935}]}.
    {call,1,{f,816}}. % id/1
    {move,{y,5},{x,1}}.
    {call_ext,2,{extfunc,lists,map,2}}.
    {test,is_eq_exact,{f,496},[{tr,{x,0},{t_list,any,nil}},{y,5}]}.
    {test_heap,2,0}.
    {put_list,{atom,no},{y,5},{x,0}}.
    {move,{y,5},{x,1}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",937}]}.
    {call_ext,2,{extfunc,lists,suffix,2}}.
    {test,is_eq_exact,{f,479},[{x,0},{atom,true}]}.
    {move,{atom,should_be_false},{x,0}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",939}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,479}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",944}]}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {'catch',{y,6},{f,480}}.
    {move,{literal,[b]},{x,1}}.
    {move,{atom,not_list},{x,0}}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",945}]}.
    {call_ext,2,{extfunc,lists,zip,2}}.
  {label,480}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,495},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,893},0,0,{y,13},{list,[]}}.
    {'%',{var_info,{y,13},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,13},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",949}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
    {line,[{location,"beam_type_SUITE.erl",952}]}.
    {gc_bif,length,{f,0},0,[{tr,{y,5},{t_list,any,nil}}],{x,0}}.
    {move,{atom,zip},{x,1}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",952}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,2}}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{y,13},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",951}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
    {move,{x,0},{y,12}}.
    {test,is_nonempty_list,{f,494},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {test,is_tagged_tuple,
          {f,494},
          [{tr,{x,0},{t_tuple,2,true,#{}}},2,{atom,zip}]}.
    {move,{y,13},{x,0}}.
    {init_yregs,{list,[{y,13}]}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",956}]}.
    {call,1,{f,816}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",957}]}.
    {gc_bif,length,
            {f,0},
            1,
            [{tr,{y,12},{t_cons,{t_tuple,2,true,#{}},nil}}],
            {x,1}}.
    {move,{x,0},{y,13}}.
    {move,{x,1},{x,0}}.
    {move,{atom,zip_zip},{x,1}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",957}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,12},{x,2}}.
    {move,{y,13},{x,0}}.
    {init_yregs,{list,[{y,13}]}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",956}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,493},[{x,1},2,{atom,zip_zip}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,493},[{x,1},2,{atom,zip}]}.
    {'catch',{y,5},{f,481}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,[b]},{x,2}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",961}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
  {label,481}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,492},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,891},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {'catch',{y,4},{f,482}}.
    {move,{literal,[b]},{x,2}}.
    {move,{literal,[a]},{x,1}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",962}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
  {label,482}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,491},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,491},[{x,1},2,{atom,bad}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,889},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {'catch',{y,3},{f,483}}.
    {move,{literal,[b]},{x,2}}.
    {move,{atom,not_list},{x,1}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",964}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
  {label,483}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,490},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,887},0,0,{y,13},{list,[]}}.
    {'%',{var_info,{y,13},[{fun_type,none}]}}.
    {line,[{location,"beam_type_SUITE.erl",967}]}.
    {gc_bif,length,
            {f,0},
            0,
            [{tr,{y,12},{t_cons,{t_tuple,2,true,#{}},nil}}],
            {x,0}}.
    {'catch',{y,2},{f,484}}.
    {move,{atom,zip_zip},{x,1}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",967}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,12},{x,2}}.
    {move,{y,13},{x,0}}.
    {init_yregs,{list,[{y,13}]}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",966}]}.
    {call_ext,3,{extfunc,lists,zipwith,3}}.
  {label,484}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,489},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,489},[{x,1},2,{atom,bad}]}.
    {'catch',{y,1},{f,485}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",970}]}.
    {call_ext,1,{extfunc,lists,unzip,1}}.
  {label,485}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,488},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,486}}.
    {move,{literal,[not_a_tuple]},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",971}]}.
    {call_ext,1,{extfunc,lists,unzip,1}}.
  {label,486}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,487},[{x,0},2,{atom,'EXIT'}]}.
    {move,{y,12},{x,0}}.
    {trim,14,0}.
    {line,[{scope,[1,2]},{location,"beam_type_SUITE.erl",972}]}.
    {call_ext,1,{extfunc,lists,unzip,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,487}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",971}]}.
    {badmatch,{x,0}}.
  {label,488}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",970}]}.
    {badmatch,{x,0}}.
  {label,489}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",966}]}.
    {badmatch,{x,0}}.
  {label,490}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",964}]}.
    {badmatch,{x,0}}.
  {label,491}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",962}]}.
    {badmatch,{x,0}}.
  {label,492}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",961}]}.
    {badmatch,{x,0}}.
  {label,493}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",959}]}.
    {badmatch,{x,0}}.
  {label,494}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",954}]}.
    {badmatch,{y,12}}.
  {label,495}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",945}]}.
    {badmatch,{x,0}}.
  {label,496}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",935}]}.
    {badmatch,{x,0}}.
  {label,497}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",934}]}.
    {badmatch,{x,0}}.
  {label,498}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",933}]}.
    {badmatch,{x,0}}.
  {label,499}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",932}]}.
    {badmatch,{x,0}}.
  {label,500}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",930}]}.
    {badmatch,{x,0}}.
  {label,501}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",929}]}.
    {badmatch,{x,0}}.
  {label,502}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",928}]}.
    {badmatch,{x,0}}.
  {label,503}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",926}]}.
    {badmatch,{x,0}}.
  {label,504}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",924}]}.
    {badmatch,{x,0}}.
  {label,505}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",922}]}.
    {badmatch,{x,0}}.
  {label,506}.
    {line,[{scope,[28]},{location,"beam_type_SUITE.erl",920}]}.
    {badmatch,{x,0}}.


{function, list_append, 1, 508}.
  {label,507}.
    {line,[{location,"beam_type_SUITE.erl",976}]}.
    {func_info,{atom,beam_type_SUITE},{atom,list_append},1}.
  {label,508}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",979}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{atom,hello},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test,is_eq_exact,{f,509},[{x,0},{atom,hello}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,509}.
    {badmatch,{x,0}}.


{function, bad_binary_unit, 1, 511}.
  {label,510}.
    {line,[{location,"beam_type_SUITE.erl",985}]}.
    {func_info,{atom,beam_type_SUITE},{atom,bad_binary_unit},1}.
  {label,511}.
    {allocate,0,0}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",986}]}.
    {call,1,{f,816}}. % id/1
    {line,[{location,"beam_type_SUITE.erl",987}]}.
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
    {test,is_binary,{f,512},[{tr,{x,0},{t_bitstring,1,false}}]}.
    {line,[{location,"beam_type_SUITE.erl",988}]}.
    {badmatch,{atom,true}}.
  {label,512}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, none_argument, 1, 514}.
  {label,513}.
    {line,[{location,"beam_type_SUITE.erl",992}]}.
    {func_info,{atom,beam_type_SUITE},{atom,none_argument},1}.
  {label,514}.
    {allocate,0,0}.
    {move,{literal,<<0,3,42>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",993}]}.
    {call,1,{f,816}}. % id/1
    {move,{atom,error},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",994}]}.
    {call,1,{f,816}}. % id/1
    {test,is_eq_exact,{f,515},[{x,0},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,515}.
    {badmatch,{x,0}}.


{function, success_type_oscillation, 1, 517}.
  {label,516}.
    {line,[{location,"beam_type_SUITE.erl",1018}]}.
    {func_info,{atom,beam_type_SUITE},{atom,success_type_oscillation},1}.
  {label,517}.
    {allocate,0,0}.
    {move,{atom,case_1_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1021}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,522}}. % sto_1/1
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
     {f,520},
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
    {line,[{location,"beam_type_SUITE.erl",1022}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,522}}. % sto_1/1
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
     {f,519},
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
    {line,[{location,"beam_type_SUITE.erl",1023}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,522}}. % sto_1/1
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
     {f,518},
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
        {f,518},
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
        {f,518},
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
  {label,518}.
    {badmatch,{x,0}}.
  {label,519}.
    {line,[{location,"beam_type_SUITE.erl",1022}]}.
    {badmatch,{x,0}}.
  {label,520}.
    {line,[{location,"beam_type_SUITE.erl",1021}]}.
    {badmatch,{x,0}}.


{function, sto_1, 1, 522}.
  {label,521}.
    {line,[{location,"beam_type_SUITE.erl",1027}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sto_1},1}.
  {label,522}.
    {select_val,{x,0},
                {f,521},
                {list,[{atom,case_1_1},
                       {f,534},
                       {atom,case_1_2},
                       {f,534},
                       {atom,case_2_1},
                       {f,533},
                       {atom,case_2_2},
                       {f,532},
                       {atom,case_2_3},
                       {f,531},
                       {atom,case_2_4},
                       {f,530},
                       {atom,case_3_1},
                       {f,529},
                       {atom,case_3_2},
                       {f,528},
                       {atom,case_3_3},
                       {f,527},
                       {atom,case_3_4},
                       {f,526},
                       {atom,case_4_1},
                       {f,525},
                       {atom,case_4_2},
                       {f,524},
                       {atom,step_4_3},
                       {f,523}]}}.
  {label,523}.
    {allocate,0,0}.
    {move,{atom,case_3_3},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1039}]}.
    {call,1,{f,522}}. % sto_1/1
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
  {label,524}.
    {allocate,0,0}.
    {move,{atom,case_3_2},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1038}]}.
    {call,1,{f,522}}. % sto_1/1
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
  {label,525}.
    {allocate,0,0}.
    {move,{atom,case_3_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1037}]}.
    {call,1,{f,522}}. % sto_1/1
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
  {label,526}.
    {allocate,0,0}.
    {move,{atom,case_2_4},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1036}]}.
    {call,1,{f,522}}. % sto_1/1
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
  {label,527}.
    {allocate,0,0}.
    {move,{atom,case_2_3},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1035}]}.
    {call,1,{f,522}}. % sto_1/1
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
  {label,528}.
    {allocate,0,0}.
    {move,{atom,case_2_2},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1034}]}.
    {call,1,{f,522}}. % sto_1/1
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
  {label,529}.
    {allocate,0,0}.
    {move,{atom,case_2_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1033}]}.
    {call,1,{f,522}}. % sto_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}}]}}.
    {move,{literal,{b,[{a,[]}]}},{x,0}}.
    {deallocate,0}.
    return.
  {label,530}.
    {allocate,0,0}.
    {move,{atom,case_1_2},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1032}]}.
    {call,1,{f,522}}. % sto_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}}]}}.
    {move,{literal,{b,[{a,[]}]}},{x,0}}.
    {deallocate,0}.
    return.
  {label,531}.
    {allocate,0,0}.
    {move,{atom,case_1_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1031}]}.
    {call,1,{f,522}}. % sto_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}}]}}.
    {move,{literal,{b,[{a,[]}]}},{x,0}}.
    {deallocate,0}.
    return.
  {label,532}.
    {allocate,0,0}.
    {move,{atom,case_1_1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1030}]}.
    {call,1,{f,522}}. % sto_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => nil}}}]}}.
    {move,{literal,{b,[{a,[]}]}},{x,0}}.
    {deallocate,0}.
    return.
  {label,533}.
    {move,{atom,case_1_1},{x,0}}.
    {call_only,1,{f,522}}. % sto_1/1
  {label,534}.
    {move,{literal,{a,[]}},{x,0}}.
    return.


{function, type_subtraction, 1, 536}.
  {label,535}.
    {line,[{location,"beam_type_SUITE.erl",1049}]}.
    {func_info,{atom,beam_type_SUITE},{atom,type_subtraction},1}.
  {label,536}.
    {test,is_list,{f,535},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"A">>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1050}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,547}}. % type_subtraction_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,false,true]}}]}}.
    {test,is_eq_exact,
          {f,545},
          [{tr,{x,0},{t_atom,[error,false,true]}},{atom,true}]}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1052}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,557}}. % type_subtraction_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,32,false}}}]}}.
    {test,is_eq_exact,
          {f,544},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,32,false}}},
           {atom,ok}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1053}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,557}}. % type_subtraction_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,32,false}}}]}}.
    {test,is_eq_exact,
          {f,543},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,32,false}}},
           {literal,<<"aaaa">>}]}.
    {'catch',{y,2},{f,537}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1054}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,565}}. % type_subtraction_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,537}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,542},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,538}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1055}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,567}}. % type_subtraction_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,256,true}}}]}}.
  {label,538}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,541},[{x,0},{atom,ok}]}.
    {'catch',{y,0},{f,539}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1056}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,567}}. % type_subtraction_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,256,true}}}]}}.
  {label,539}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,540},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,540}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1056}]}.
    {badmatch,{x,0}}.
  {label,541}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1055}]}.
    {badmatch,{x,0}}.
  {label,542}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1054}]}.
    {badmatch,{x,0}}.
  {label,543}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1053}]}.
    {badmatch,{x,0}}.
  {label,544}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1052}]}.
    {badmatch,{x,0}}.
  {label,545}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1050}]}.
    {badmatch,{x,0}}.


{function, type_subtraction_1, 1, 547}.
  {label,546}.
    {line,[{location,"beam_type_SUITE.erl",1061}]}.
    {func_info,{atom,beam_type_SUITE},{atom,type_subtraction_1},1}.
  {label,547}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_type_SUITE.erl",1062}]}.
    {call,1,{f,551}}. % ts_12/1
    {'%',{var_info,{x,0},[{type,{t_integer,{2,3}}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1063}]}.
    {call,1,{f,554}}. % ts_23/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,2}}}]}}.
    {test,is_eq_exact,
          {f,548},
          [{tr,{y,0},{t_integer,{2,3}}},{tr,{x,0},{t_integer,{1,2}}}]}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.
  {label,548}.
    {test,is_eq_exact,{f,549},[{tr,{y,0},{t_integer,{2,3}}},{integer,3}]}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{1,2}}},{integer,2}],{x,0}}.
    {deallocate,1}.
    return.
  {label,549}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.


{function, ts_12, 1, 551}.
  {label,550}.
    {line,[{location,"beam_type_SUITE.erl",1069}]}.
    {func_info,{atom,beam_type_SUITE},{atom,ts_12},1}.
  {label,551}.
    {test,is_eq_exact,{f,552},[{x,0},{literal,<<"A">>}]}.
    {move,{integer,3},{x,0}}.
    return.
  {label,552}.
    {move,{integer,2},{x,0}}.
    return.


{function, ts_23, 1, 554}.
  {label,553}.
    {line,[{location,"beam_type_SUITE.erl",1077}]}.
    {func_info,{atom,beam_type_SUITE},{atom,ts_23},1}.
  {label,554}.
    {test,is_eq_exact,{f,555},[{x,0},{literal,<<"A">>}]}.
    {move,{integer,2},{x,0}}.
    return.
  {label,555}.
    {move,{integer,1},{x,0}}.
    return.


{function, type_subtraction_2, 1, 557}.
  {label,556}.
    {line,[{location,"beam_type_SUITE.erl",1085}]}.
    {func_info,{atom,beam_type_SUITE},{atom,type_subtraction_2},1}.
  {label,557}.
    {allocate,0,1}.
    {line,[{location,"beam_type_SUITE.erl",1086}]}.
    {call,1,{f,560}}. % ts_34/1
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
    {test,is_eq_exact,{f,558},[{tr,{x,1},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,558}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,0}.
    return.


{function, ts_34, 1, 560}.
  {label,559}.
    {line,[{location,"beam_type_SUITE.erl",1093}]}.
    {func_info,{atom,beam_type_SUITE},{atom,ts_34},1}.
  {label,560}.
    {select_val,{x,0},
                {f,563},
                {list,[{atom,false},{f,562},{atom,true},{f,561}]}}.
  {label,561}.
    {move,{literal,{ok}},{x,0}}.
    return.
  {label,562}.
    {move,{literal,{error,<<"aaaa">>}},{x,0}}.
    return.
  {label,563}.
    {line,[{location,"beam_type_SUITE.erl",1094}]}.
    {case_end,{x,0}}.


{function, type_subtraction_3, 1, 565}.
  {label,564}.
    {line,[{location,"beam_type_SUITE.erl",1099}]}.
    {func_info,{atom,beam_type_SUITE},{atom,type_subtraction_3},1}.
  {label,565}.
    {jump,{f,564}}.


{function, type_subtraction_4, 1, 567}.
  {label,566}.
    {line,[{location,"beam_type_SUITE.erl",1102}]}.
    {func_info,{atom,beam_type_SUITE},{atom,type_subtraction_4},1}.
  {label,567}.
    {allocate,1,1}.
    {'try',{y,0},{f,568}}.
    {test,is_eq_exact,{f,571},[{x,0},{atom,ok}]}.
    {try_end,{y,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,568}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,570},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1109}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,569},[{x,0}]}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,569}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,882},1}. % '-type_subtraction_4/1-lbc$^0/2-0-'/2
  {label,570}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,571}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1104}]}.
    {badmatch,{atom,ok}}.


{function, container_subtraction, 1, 573}.
  {label,572}.
    {line,[{location,"beam_type_SUITE.erl",1121}]}.
    {func_info,{atom,beam_type_SUITE},{atom,container_subtraction},1}.
  {label,573}.
    {test,is_list,{f,572},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,baz},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1122}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{foo,[]}},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1124}]}.
    {call,1,{f,575}}. % cs_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bar},{y,0}]}}.
    {line,[{location,"beam_type_SUITE.erl",1125}]}.
    {call,1,{f,575}}. % cs_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bar},{y,0}]}}.
    {call_last,1,{f,578},1}. % cs_2/1


{function, cs_1, 1, 575}.
  {label,574}.
    {line,[{location,"beam_type_SUITE.erl",1130}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cs_1},1}.
  {label,575}.
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
    {test,is_nil,{f,576},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,576}.
    {call_only,1,{f,578}}. % cs_2/1


{function, cs_2, 1, 578}.
  {label,577}.
    {line,[{location,"beam_type_SUITE.erl",1135}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cs_2},1}.
  {label,578}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[bar]}}}}]}}.
    {test,is_eq_exact,
          {f,577},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[bar]}}}},
           {literal,{bar,baz}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, is_list_opt, 1, 580}.
  {label,579}.
    {line,[{location,"beam_type_SUITE.erl",1138}]}.
    {func_info,{atom,beam_type_SUITE},{atom,is_list_opt},1}.
  {label,580}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"application/a2l">>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1139}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,588}}. % is_list_opt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,586},[{x,0},{atom,true}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1140}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,588}}. % is_list_opt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,581},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,581}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1142}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,593}}. % is_list_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,ok,true]}}]}}.
    {test,is_eq_exact,{f,585},[{tr,{x,0},{t_atom,[false,ok,true]}},{atom,ok}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1143}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,593}}. % is_list_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,ok,true]}}]}}.
    {test,is_eq_exact,
          {f,584},
          [{tr,{x,0},{t_atom,[false,ok,true]}},{atom,true}]}.
    {'catch',{y,0},{f,582}}.
    {move,{atom,no_list},{x,0}}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1144}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,593}}. % is_list_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,ok,true]}}]}}.
  {label,582}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,583},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,583},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,583}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1144}]}.
    {badmatch,{x,0}}.
  {label,584}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1143}]}.
    {badmatch,{x,0}}.
  {label,585}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1142}]}.
    {badmatch,{x,0}}.
  {label,586}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1139}]}.
    {badmatch,{atom,false}}.


{function, is_list_opt_1, 1, 588}.
  {label,587}.
    {line,[{location,"beam_type_SUITE.erl",1148}]}.
    {func_info,{atom,beam_type_SUITE},{atom,is_list_opt_1},1}.
  {label,588}.
    {allocate,0,1}.
    {line,[{location,"beam_type_SUITE.erl",1152}]}.
    {call,1,{f,590}}. % is_list_opt_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[nil]},
                                   {t_cons,{t_bitstring,8,false},nil},
                                   none,none,none}}]}}.
    {bif,is_list,{f,0},[{x,0}],{x,0}}.
    {deallocate,0}.
    return.


{function, is_list_opt_2, 1, 590}.
  {label,589}.
    {line,[{location,"beam_type_SUITE.erl",1154}]}.
    {func_info,{atom,beam_type_SUITE},{atom,is_list_opt_2},1}.
  {label,590}.
    {test,is_eq_exact,{f,591},[{x,0},{literal,<<"application/a2l">>}]}.
    {move,{literal,[<<"a2l">>]},{x,0}}.
    return.
  {label,591}.
    {move,{atom,nil},{x,0}}.
    return.


{function, is_list_opt_3, 1, 593}.
  {label,592}.
    {line,[{location,"beam_type_SUITE.erl",1157}]}.
    {func_info,{atom,beam_type_SUITE},{atom,is_list_opt_3},1}.
  {label,593}.
    {test,is_nil,{f,594},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,594}.
    {allocate,1,1}.
    {bif,is_list,{f,595},[{x,0}],{y,0}}.
    {test,is_ne_exact,{f,596},[{y,0},{atom,true}]}.
  {label,595}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1163}]}.
    {call_ext,1,{extfunc,erlang,binary_to_integer,1}}.
  {label,596}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, connected_tuple_elements, 1, 598}.
  {label,597}.
    {line,[{location,"beam_type_SUITE.erl",1207}]}.
    {func_info,{atom,beam_type_SUITE},{atom,connected_tuple_elements},1}.
  {label,598}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1208}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,606}}. % cte_generate/1
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
    {call,2,{f,601}}. % cte_match/2
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
          {f,599},
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
  {label,599}.
    {badmatch,{x,0}}.


{function, cte_match, 2, 601}.
  {label,600}.
    {line,[{location,"beam_type_SUITE.erl",1211}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cte_match},2}.
  {label,601}.
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
                {f,604},
                {list,[{atom,a},{f,603},{atom,b},{f,602}]}}.
  {label,602}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1214}]}.
    {call,1,{f,816}}. % id/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,816}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,b},{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,603}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1212}]}.
    {call,1,{f,816}}. % id/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,816}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,a},{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,604}.
    {test,is_eq_exact,{f,600},[{x,0},{atom,gurka}]}.
    {allocate,2,5}.
    {move,{x,4},{y,1}}.
    {get_tuple_element,{x,4},1,{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1216}]}.
    {call,1,{f,816}}. % id/1
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,816}}. % id/1
    {get_tuple_element,{y,0},0,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,816}}. % id/1
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{atom,c},{y,1},{y,0},{x,0}]}}.
    {deallocate,2}.
    return.


{function, cte_generate, 1, 606}.
  {label,605}.
    {line,[{location,"beam_type_SUITE.erl",1218}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cte_generate},1}.
  {label,606}.
    {select_val,{x,0},
                {f,605},
                {list,[{integer,0},
                       {f,609},
                       {integer,1},
                       {f,608},
                       {integer,2},
                       {f,607}]}}.
  {label,607}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1223}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,3},{x,0}}.
    {call,1,{f,816}}. % id/1
    {test_heap,11,1}.
    {put_tuple2,{x,1},{list,[{y,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,c},{y,1},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,608}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1221}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,816}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,b},{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,609}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1219}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,2},{x,0}}.
    {call,1,{f,816}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,a},{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, switch_fail_inference, 1, 611}.
  {label,610}.
    {line,[{location,"beam_type_SUITE.erl",1228}]}.
    {func_info,{atom,beam_type_SUITE},{atom,switch_fail_inference},1}.
  {label,611}.
    {allocate,0,0}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1229}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,619}}. % sfi/1
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
          {f,617},
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
    {line,[{location,"beam_type_SUITE.erl",1230}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,619}}. % sfi/1
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
          {f,616},
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
    {line,[{location,"beam_type_SUITE.erl",1231}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,619}}. % sfi/1
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
          {f,615},
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
    {line,[{location,"beam_type_SUITE.erl",1232}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,619}}. % sfi/1
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
          {f,614},
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
    {line,[{location,"beam_type_SUITE.erl",1234}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,637}}. % sfi_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,613},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,"OTHER"},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1235}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,637}}. % sfi_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,612},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,612}.
    {badmatch,{atom,ok}}.
  {label,613}.
    {line,[{location,"beam_type_SUITE.erl",1234}]}.
    {badmatch,{atom,error}}.
  {label,614}.
    {line,[{location,"beam_type_SUITE.erl",1232}]}.
    {badmatch,{x,0}}.
  {label,615}.
    {line,[{location,"beam_type_SUITE.erl",1231}]}.
    {badmatch,{x,0}}.
  {label,616}.
    {line,[{location,"beam_type_SUITE.erl",1230}]}.
    {badmatch,{x,0}}.
  {label,617}.
    {line,[{location,"beam_type_SUITE.erl",1229}]}.
    {badmatch,{x,0}}.


{function, sfi, 1, 619}.
  {label,618}.
    {line,[{location,"beam_type_SUITE.erl",1239}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi},1}.
  {label,619}.
    {allocate,0,1}.
    {line,[{location,"beam_type_SUITE.erl",1240}]}.
    {call,1,{f,622}}. % sfi_1/1
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
    {test,is_eq_exact,{f,620},[{x,1},{atom,ok}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,620}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{atom,gaffel},{x,0}]}}.
    {deallocate,0}.
    return.


{function, sfi_1, 1, 622}.
  {label,621}.
    {line,[{location,"beam_type_SUITE.erl",1245}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_1},1}.
  {label,622}.
    {call_only,1,{f,624}}. % sfi_2/1


{function, sfi_2, 1, 624}.
  {label,623}.
    {line,[{location,"beam_type_SUITE.erl",1251}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_2},1}.
  {label,624}.
    {test,is_nonempty_list,{f,626},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"beam_type_SUITE.erl",1252}]}.
    {call,1,{f,628}}. % sfi_3/1
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
    {test,is_eq_exact,{f,625},[{x,1},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,624},1}. % sfi_2/1
  {label,625}.
    {deallocate,1}.
    return.
  {label,626}.
    {test,is_nil,{f,623},[{x,0}]}.
    {move,{literal,{ok,done}},{x,0}}.
    return.


{function, sfi_3, 1, 628}.
  {label,627}.
    {line,[{location,"beam_type_SUITE.erl",1259}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_3},1}.
  {label,628}.
    {test,is_tagged_tuple,{f,629},[{x,0},2,{atom,twiddle}]}.
    {move,{literal,{ok,twiddle}},{x,0}}.
    return.
  {label,629}.
    {allocate,0,1}.
    {line,[{location,"beam_type_SUITE.erl",1262}]}.
    {call,1,{f,632}}. % sfi_4/1
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
    {test,is_eq_exact,{f,630},[{x,1},{atom,twiddle}]}.
    {call_last,1,{f,628},0}. % sfi_3/1
  {label,630}.
    {deallocate,0}.
    return.


{function, sfi_4, 1, 632}.
  {label,631}.
    {line,[{location,"beam_type_SUITE.erl",1268}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_4},1}.
  {label,632}.
    {test,is_tuple,{f,635},[{x,0}]}.
    {test,test_arity,{f,631},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {select_val,{x,1},{f,631},{list,[{atom,error},{f,634},{atom,ok},{f,633}]}}.
  {label,633}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,twiddle},{x,2}]}}.
    return.
  {label,634}.
    {test_heap,6,3}.
    {put_tuple2,{x,0},{list,[{atom,gaffel},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    return.
  {label,635}.
    {test,is_eq_exact,{f,631},[{x,0},{atom,eof}]}.
    {move,{literal,{ok,eof}},{x,0}}.
    return.


{function, sfi_5, 1, 637}.
  {label,636}.
    {line,[{location,"beam_type_SUITE.erl",1275}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_5},1}.
  {label,637}.
    {test,is_eq_exact,{f,638},[{x,0},{literal,"GET"}]}.
    {move,{literal,{304}},{x,0}}.
    {jump,{f,639}}.
  {label,638}.
    {move,{literal,{412}},{x,0}}.
  {label,639}.
    {call_only,1,{f,641}}. % sfi_send_return_value/1


{function, sfi_send_return_value, 1, 641}.
  {label,640}.
    {line,[{location,"beam_type_SUITE.erl",1284}]}.
    {func_info,{atom,beam_type_SUITE},{atom,sfi_send_return_value},1}.
  {label,641}.
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
    {test,is_eq_exact,{f,642},[{x,0},{integer,412}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,642}.
    {move,{atom,ok},{x,0}}.
    return.


{function, failures, 1, 644}.
  {label,643}.
    {line,[{location,"beam_type_SUITE.erl",1289}]}.
    {func_info,{atom,beam_type_SUITE},{atom,failures},1}.
  {label,644}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'catch',{y,2},{f,645}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1290}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,b},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{atom,c},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{y,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call,3,{f,652}}. % failures_1/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,645}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,650},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,650},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,646}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,3},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1291}]}.
    {call,3,{f,652}}. % failures_1/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,646}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,649},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,649},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,0},{f,647}}.
    {move,{atom,x},{x,1}}.
    {move,{atom,y},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1292}]}.
    {call,3,{f,652}}. % failures_1/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,647}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,648},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,648},[{x,1},2,{atom,badarith}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,648}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1292}]}.
    {badmatch,{x,0}}.
  {label,649}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1291}]}.
    {badmatch,{x,0}}.
  {label,650}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1290}]}.
    {badmatch,{x,0}}.


{function, failures_1, 3, 652}.
  {label,651}.
    {line,[{location,"beam_type_SUITE.erl",1295}]}.
    {func_info,{atom,beam_type_SUITE},{atom,failures_1},3}.
  {label,652}.
    {test,is_nil,{f,651},[{x,0}]}.
    {line,[{location,"beam_type_SUITE.erl",1302}]}.
    {gc_bif,'-',{f,0},3,[nil,{x,2}],{x,0}}.
    return.


{function, cover_maps_functions, 1, 654}.
  {label,653}.
    {line,[{location,"beam_type_SUITE.erl",1305}]}.
    {func_info,{atom,beam_type_SUITE},{atom,cover_maps_functions},1}.
  {label,654}.
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
    {make_fun3,{f,880},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[true]}}]}}.
    {'catch',{y,26},{f,655}}.
    {move,{atom,not_a_map},{x,1}}.
    {line,[{location,"beam_type_SUITE.erl",1306}]}.
    {call_ext,2,{extfunc,maps,filter,2}}.
  {label,655}.
    {catch_end,{y,26}}.
    {test,is_tagged_tuple,{f,710},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,25},{f,656}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,not_a_predicate},{x,0}}.
    {line,[{scope,"56"},{location,"beam_type_SUITE.erl",1307}]}.
    {call_ext,2,{extfunc,maps,filter,2}}.
    {move,{literal,#{}},{x,0}}.
  {label,656}.
    {catch_end,{y,25}}.
    {test,is_tagged_tuple,{f,709},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,key_not_present},{x,0}}.
    {line,[{scope,"34"},{location,"beam_type_SUITE.erl",1309}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,878},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[true]}}]}}.
    {'catch',{y,24},{f,657}}.
    {move,{atom,not_a_map},{x,2}}.
    {move,{atom,init},{x,1}}.
    {line,[{scope,"34"},{location,"beam_type_SUITE.erl",1311}]}.
    {call_ext,3,{extfunc,maps,fold,3}}.
  {label,657}.
    {catch_end,{y,24}}.
    {test,is_tagged_tuple,{f,708},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,23},{f,658}}.
    {move,{atom,init},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,"12"},{location,"beam_type_SUITE.erl",1312}]}.
    {call_ext,3,{extfunc,maps,fold,3}}.
    {move,{atom,init},{x,0}}.
  {label,658}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,707},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,gurka},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,"/0"},{location,"beam_type_SUITE.erl",1314}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
    {move,{atom,gurka},{x,1}}.
    {move,{literal,[hello]},{x,0}}.
    {line,[{scope,"/0"},{location,"beam_type_SUITE.erl",1315}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
    {test,has_map_fields,{f,706},{x,0},{list,[{atom,hello}]}}.
    {'catch',{y,22},{f,659}}.
    {move,{atom,gurka},{x,1}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,"/0"},{location,"beam_type_SUITE.erl",1316}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
  {label,659}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,705},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,21},{f,660}}.
    {move,nil,{x,0}}.
    {line,[{scope,"-."},{location,"beam_type_SUITE.erl",1318}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{literal,#{}},{x,0}}.
  {label,660}.
    {catch_end,{y,21}}.
    {test,is_map,{f,704},[{x,0}]}.
    {'catch',{y,20},{f,661}}.
    {move,{literal,[not_a_tuple]},{x,0}}.
    {line,[{scope,"+,"},{location,"beam_type_SUITE.erl",1319}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
  {label,661}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,703},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,19},{f,662}}.
    {bif,map_get,{f,0},[{atom,key_not_present},{literal,#{}}],{x,0}}.
  {label,662}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,702},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"'("},{location,"beam_type_SUITE.erl",1324}]}.
    {call_ext,1,{extfunc,maps,keys,1}}.
    {'catch',{y,18},{f,663}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,"'("},{location,"beam_type_SUITE.erl",1325}]}.
    {call_ext,1,{extfunc,maps,keys,1}}.
  {label,663}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,701},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,876},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,17},{f,664}}.
    {move,{literal,#{a => a}},{x,1}}.
    {line,[{scope,"%&"},{location,"beam_type_SUITE.erl",1327}]}.
    {call_ext,2,{extfunc,maps,map,2}}.
  {label,664}.
    {catch_end,{y,17}}.
    {test,is_map,{f,700},[{x,0}]}.
    {get_map_elements,{f,700},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,700},[{x,1},{atom,ok}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,874},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {'catch',{y,16},{f,665}}.
    {move,{literal,#{a => a}},{x,1}}.
    {line,[{scope,"\""},{location,"beam_type_SUITE.erl",1328}]}.
    {call_ext,2,{extfunc,maps,map,2}}.
  {label,665}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,699},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,15},{f,666}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,"!\""},{location,"beam_type_SUITE.erl",1329}]}.
    {call_ext,2,{extfunc,maps,map,2}}.
    {move,{literal,#{}},{x,0}}.
  {label,666}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,698},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,872},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,14},{f,667}}.
    {move,{atom,not_a_map},{x,1}}.
    {line,[{scope,[31,32]},{location,"beam_type_SUITE.erl",1330}]}.
    {call_ext,2,{extfunc,maps,map,2}}.
  {label,667}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,697},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,13},{f,668}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[29,30]},{location,"beam_type_SUITE.erl",1332}]}.
    {call_ext,2,{extfunc,maps,merge,2}}.
  {label,668}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,696},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,12},{f,669}}.
    {move,{atom,value},{x,1}}.
    {move,{atom,not_a_map},{x,2}}.
    {move,{atom,key},{x,0}}.
    {line,[{scope,[27,28]},{location,"beam_type_SUITE.erl",1336}]}.
    {call_ext,3,{extfunc,maps,put,3}}.
  {label,669}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,695},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{a => a}},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[25,26]},{location,"beam_type_SUITE.erl",1338}]}.
    {call_ext,2,{extfunc,maps,remove,2}}.
    {'catch',{y,11},{f,670}}.
    {move,{atom,not_a_map},{x,1}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{scope,[25,26]},{location,"beam_type_SUITE.erl",1339}]}.
    {call_ext,2,{extfunc,maps,remove,2}}.
  {label,670}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,694},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,key_not_present},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",1341}]}.
    {call_ext,2,{extfunc,maps,take,2}}.
    {'catch',{y,10},{f,671}}.
    {move,{atom,not_a_map},{x,1}}.
    {move,{atom,key},{x,0}}.
    {line,[{scope,[23,24]},{location,"beam_type_SUITE.erl",1342}]}.
    {call_ext,2,{extfunc,maps,take,2}}.
  {label,671}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,693},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,9},{f,672}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[21,22]},{location,"beam_type_SUITE.erl",1344}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
  {label,672}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,692},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,870},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{literal,#{a => a}},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[19,20]},{location,"beam_type_SUITE.erl",1346}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
    {get_map_elements,{f,691},
                      {tr,{x,0},{t_map,{t_atom,[a]},{t_atom,[a,ok]}}},
                      {list,[{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,691},[{tr,{x,1},{t_atom,[a,ok]}},{atom,ok}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,868},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,none}]}}.
    {'catch',{y,8},{f,673}}.
    {move,{literal,#{a => a}},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",1347}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,673}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,690},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,866},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,7},{f,674}}.
    {move,{literal,#{}},{x,2}}.
    {move,{atom,key_not_present},{x,0}}.
    {line,[{scope,[17,18]},{location,"beam_type_SUITE.erl",1348}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,674}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,689},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,6},{f,675}}.
    {move,{atom,not_a_fun},{x,1}}.
    {move,{atom,not_a_map},{x,2}}.
    {move,{atom,key},{x,0}}.
    {line,[{scope,[15,16]},{location,"beam_type_SUITE.erl",1349}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,675}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,688},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",1351}]}.
    {call_ext,1,{extfunc,maps,values,1}}.
    {'catch',{y,5},{f,676}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[13,14]},{location,"beam_type_SUITE.erl",1352}]}.
    {call_ext,1,{extfunc,maps,values,1}}.
  {label,676}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,687},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,[key_not_present]},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",1354}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
    {'catch',{y,4},{f,677}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_type_SUITE.erl",1355}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,677}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,686},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,678}}.
    {move,{atom,not_a_map},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_type_SUITE.erl",1356}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,678}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,685},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,679}}.
    {move,{atom,not_a_map},{x,1}}.
    {move,{literal,[foobar]},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",1357}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,679}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,684},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,680}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1359}]}.
    {call_ext,2,{extfunc,maps,without,2}}.
  {label,680}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,683},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,681}}.
    {move,{atom,not_a_map},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1360}]}.
    {call_ext,2,{extfunc,maps,without,2}}.
  {label,681}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,682},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,27}.
    return.
  {label,682}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1360}]}.
    {badmatch,{x,0}}.
  {label,683}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1359}]}.
    {badmatch,{x,0}}.
  {label,684}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1357}]}.
    {badmatch,{x,0}}.
  {label,685}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1356}]}.
    {badmatch,{x,0}}.
  {label,686}.
    {line,[{scope,"\b"},{location,"beam_type_SUITE.erl",1355}]}.
    {badmatch,{x,0}}.
  {label,687}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",1352}]}.
    {badmatch,{x,0}}.
  {label,688}.
    {line,[{scope,"\f"},{location,"beam_type_SUITE.erl",1349}]}.
    {badmatch,{x,0}}.
  {label,689}.
    {line,[{scope,[14]},{location,"beam_type_SUITE.erl",1348}]}.
    {badmatch,{x,0}}.
  {label,690}.
    {line,[{scope,[16]},{location,"beam_type_SUITE.erl",1347}]}.
    {badmatch,{x,0}}.
  {label,691}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",1346}]}.
    {badmatch,{x,0}}.
  {label,692}.
    {line,[{scope,[18]},{location,"beam_type_SUITE.erl",1344}]}.
    {badmatch,{x,0}}.
  {label,693}.
    {line,[{scope,[20]},{location,"beam_type_SUITE.erl",1342}]}.
    {badmatch,{x,0}}.
  {label,694}.
    {line,[{scope,[22]},{location,"beam_type_SUITE.erl",1339}]}.
    {badmatch,{x,0}}.
  {label,695}.
    {line,[{scope,[24]},{location,"beam_type_SUITE.erl",1336}]}.
    {badmatch,{x,0}}.
  {label,696}.
    {line,[{scope,[26]},{location,"beam_type_SUITE.erl",1332}]}.
    {badmatch,{x,0}}.
  {label,697}.
    {line,[{scope,[28]},{location,"beam_type_SUITE.erl",1330}]}.
    {badmatch,{x,0}}.
  {label,698}.
    {line,[{scope,[30]},{location,"beam_type_SUITE.erl",1329}]}.
    {badmatch,{x,0}}.
  {label,699}.
    {line,[{scope," "},{location,"beam_type_SUITE.erl",1328}]}.
    {badmatch,{x,0}}.
  {label,700}.
    {line,[{scope,"\""},{location,"beam_type_SUITE.erl",1327}]}.
    {badmatch,{x,0}}.
  {label,701}.
    {line,[{scope,"$"},{location,"beam_type_SUITE.erl",1325}]}.
    {badmatch,{x,0}}.
  {label,702}.
    {line,[{scope,"&"},{location,"beam_type_SUITE.erl",1322}]}.
    {badmatch,{x,0}}.
  {label,703}.
    {line,[{scope,"("},{location,"beam_type_SUITE.erl",1319}]}.
    {badmatch,{x,0}}.
  {label,704}.
    {line,[{scope,"*"},{location,"beam_type_SUITE.erl",1318}]}.
    {badmatch,{x,0}}.
  {label,705}.
    {line,[{scope,","},{location,"beam_type_SUITE.erl",1316}]}.
    {badmatch,{x,0}}.
  {label,706}.
    {line,[{scope,"."},{location,"beam_type_SUITE.erl",1315}]}.
    {badmatch,{x,0}}.
  {label,707}.
    {line,[{scope,"."},{location,"beam_type_SUITE.erl",1312}]}.
    {badmatch,{x,0}}.
  {label,708}.
    {line,[{scope,"0"},{location,"beam_type_SUITE.erl",1311}]}.
    {badmatch,{x,0}}.
  {label,709}.
    {line,[{scope,"2"},{location,"beam_type_SUITE.erl",1307}]}.
    {badmatch,{x,0}}.
  {label,710}.
    {line,[{scope,"4"},{location,"beam_type_SUITE.erl",1306}]}.
    {badmatch,{x,0}}.


{function, min_max_mixed_types, 1, 712}.
  {label,711}.
    {line,[{location,"beam_type_SUITE.erl",1366}]}.
    {func_info,{atom,beam_type_SUITE},{atom,min_max_mixed_types},1}.
  {label,712}.
    {allocate,0,0}.
    {move,{integer,12},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1367}]}.
    {call,1,{f,816}}. % id/1
    {bif,min,{f,0},[{x,0},{float,100.0}],{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1368}]}.
    {fconv,{tr,{x,0},{t_number,any}},{fr,0}}.
    {fmove,{float,0.5},{fr,1}}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{float,12.0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1370}]}.
    {call,1,{f,816}}. % id/1
    {bif,max,{f,0},[{x,0},{integer,100}],{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1371}]}.
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
    {call,1,{f,816}}. % id/1
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1374}]}.
    {call,1,{f,816}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {bif,min,{f,0},[{tr,{x,0},{t_number,any}},{integer,42}],{x,0}}.
    {call,1,{f,816}}. % id/1
    {test,is_eq_exact,{f,716},[{x,0},{integer,1}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1375}]}.
    {call,1,{f,816}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {bif,min,{f,0},[{tr,{x,0},{t_number,any}},{integer,-10}],{x,0}}.
    {call,1,{f,816}}. % id/1
    {test,is_eq_exact,{f,715},[{x,0},{integer,-10}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1376}]}.
    {call,1,{f,816}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {bif,max,{f,0},[{integer,3},{tr,{x,0},{t_number,any}}],{x,0}}.
    {call,1,{f,816}}. % id/1
    {test,is_eq_exact,{f,714},[{x,0},{integer,43}]}.
    {move,{integer,41},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1377}]}.
    {call,1,{f,816}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {bif,max,{f,0},[{integer,-99},{tr,{x,0},{t_number,any}}],{x,0}}.
    {call,1,{f,816}}. % id/1
    {test,is_eq_exact,{f,713},[{x,0},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,713}.
    {badmatch,{x,0}}.
  {label,714}.
    {line,[{location,"beam_type_SUITE.erl",1376}]}.
    {badmatch,{x,0}}.
  {label,715}.
    {line,[{location,"beam_type_SUITE.erl",1375}]}.
    {badmatch,{x,0}}.
  {label,716}.
    {line,[{location,"beam_type_SUITE.erl",1374}]}.
    {badmatch,{x,0}}.


{function, not_equal, 1, 718}.
  {label,717}.
    {line,[{location,"beam_type_SUITE.erl",1387}]}.
    {func_info,{atom,beam_type_SUITE},{atom,not_equal},1}.
  {label,718}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1388}]}.
    {call,1,{f,728}}. % do_not_equal/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {'catch',{y,3},{f,719}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1389}]}.
    {call,1,{f,728}}. % do_not_equal/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
  {label,719}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,726},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,726},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,720}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",1390}]}.
    {call,1,{f,728}}. % do_not_equal/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,720}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,725},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,725},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,721}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1391}]}.
    {call,1,{f,728}}. % do_not_equal/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,721}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,724},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,724},[{x,1},2,{atom,function_clause}]}.
    {bif,self,{f,0},[],{x,0}}.
    {'catch',{y,0},{f,722}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1392}]}.
    {call,1,{f,728}}. % do_not_equal/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,722}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,723},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,723},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,723}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1392}]}.
    {badmatch,{x,0}}.
  {label,724}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1391}]}.
    {badmatch,{x,0}}.
  {label,725}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1390}]}.
    {badmatch,{x,0}}.
  {label,726}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1389}]}.
    {badmatch,{x,0}}.


{function, do_not_equal, 1, 728}.
  {label,727}.
    {line,[{location,"beam_type_SUITE.erl",1396}]}.
    {func_info,{atom,beam_type_SUITE},{atom,do_not_equal},1}.
  {label,728}.
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
    {test,is_eq_exact,{f,729},[{tr,{x,1},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,727},[{tr,{x,2},{t_atom,[false,true]}},{atom,true}]}.
  {label,729}.
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
          {f,730},
          [{tr,{x,1},{t_atom,[false,true]}},
           {tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        none,
                        {t_integer,{0,42}},
                        none,pid}}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,730}.
    {line,[{location,"beam_type_SUITE.erl",1397}]}.
    {badmatch,{x,1}}.


{function, infer_relops, 1, 732}.
  {label,731}.
    {line,[{location,"beam_type_SUITE.erl",1400}]}.
    {func_info,{atom,beam_type_SUITE},{atom,infer_relops},1}.
  {label,732}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'catch',{y,2},{f,733}}.
    {line,[{location,"beam_type_SUITE.erl",1401}]}.
    {call,0,{f,740}}. % infer_relops_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,733}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,738},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,738},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,1},{f,734}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1402}]}.
    {call,0,{f,742}}. % infer_relops_2/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,734}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,737},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,737},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,0},{f,735}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1403}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,744}}. % infer_relops_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,735}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,736},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,736},[{x,1},2,{atom,badarith}]}.
    {line,[{scope,[1,2]},{location,"beam_type_SUITE.erl",1404}]}.
    {call,0,{f,747}}. % infer_relops_4/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,736}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1403}]}.
    {badmatch,{x,0}}.
  {label,737}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1402}]}.
    {badmatch,{x,0}}.
  {label,738}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1401}]}.
    {badmatch,{x,0}}.


{function, infer_relops_1, 0, 740}.
  {label,739}.
    {line,[{location,"beam_type_SUITE.erl",1410}]}.
    {func_info,{atom,beam_type_SUITE},{atom,infer_relops_1},0}.
  {label,740}.
    {line,[{location,"beam_type_SUITE.erl",1411}]}.
    {gc_bif,'rem',{f,0},0,[{integer,0},{integer,0}],{x,0}}.
    {bif,node,{f,0},[],{x,0}}.
    {call_only,1,{f,862}}. % '-infer_relops_1/0-lc$^0/1-0-'/1


{function, infer_relops_2, 0, 742}.
  {label,741}.
    {line,[{location,"beam_type_SUITE.erl",1413}]}.
    {func_info,{atom,beam_type_SUITE},{atom,infer_relops_2},0}.
  {label,742}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1414}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},pid},{integer,0}],{x,0}}.
    return.


{function, infer_relops_3, 1, 744}.
  {label,743}.
    {line,[{location,"beam_type_SUITE.erl",1417}]}.
    {func_info,{atom,beam_type_SUITE},{atom,infer_relops_3},1}.
  {label,744}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {call_ext,0,{extfunc,erlang,is_alive,0}}.
    {line,[{location,"beam_type_SUITE.erl",1418}]}.
    {gc_bif,'+',{f,0},1,[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,745},[{y,0},{atom,true}]}.
    {move,{integer,0},{x,0}}.
    {call_last,1,{f,744},1}. % infer_relops_3/1
  {label,745}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{atom,ok}]}}.
    {line,[{location,"beam_type_SUITE.erl",1422}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.


{function, infer_relops_4, 0, 747}.
  {label,746}.
    {line,[{location,"beam_type_SUITE.erl",1425}]}.
    {func_info,{atom,beam_type_SUITE},{atom,infer_relops_4},0}.
  {label,747}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,1,{f,856}}. % '-infer_relops_4/0-lc$^1/1-0-'/1


{function, binary_unit, 1, 749}.
  {label,748}.
    {line,[{location,"beam_type_SUITE.erl",1440}]}.
    {func_info,{atom,beam_type_SUITE},{atom,binary_unit},1}.
  {label,749}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_type_SUITE.erl",1441}]}.
    {call,0,{f,753}}. % binary_unit_1/0
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,
                                 {'-binary_unit_1/0-Foo/1-0-',1},
                                 {t_bitstring,16,false}}}]}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1443}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,751},[{x,0},{literal,<<0,1>>}]}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{literal,[0,1]},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1444}]}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,any}}}.
    {test,is_eq_exact,{f,750},[{x,0},{literal,<<0,0>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,750}.
    {badmatch,{x,0}}.
  {label,751}.
    {line,[{location,"beam_type_SUITE.erl",1443}]}.
    {badmatch,{x,0}}.


{function, binary_unit_1, 0, 753}.
  {label,752}.
    {line,[{location,"beam_type_SUITE.erl",1448}]}.
    {func_info,{atom,beam_type_SUITE},{atom,binary_unit_1},0}.
  {label,753}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,845},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_bitstring,16,false}}]}}.
    return.


{function, premature_concretization, 1, 755}.
  {label,754}.
    {line,[{location,"beam_type_SUITE.erl",1457}]}.
    {func_info,{atom,beam_type_SUITE},{atom,premature_concretization},1}.
  {label,755}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,tagged},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1458}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{tagged,foo}},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,759}}. % pm_concretization_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,757},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,flurb},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1459}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{tagged,foo}},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,759}}. % pm_concretization_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,756},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,756}.
    {badmatch,{atom,ok}}.
  {label,757}.
    {line,[{location,"beam_type_SUITE.erl",1458}]}.
    {badmatch,{atom,error}}.


{function, pm_concretization_1, 2, 759}.
  {label,758}.
    {line,[{location,"beam_type_SUITE.erl",1462}]}.
    {func_info,{atom,beam_type_SUITE},{atom,pm_concretization_1},2}.
  {label,759}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"beam_type_SUITE.erl",1463}]}.
    {call,2,{f,762}}. % pm_concretization_2/2
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
    {line,[{location,"beam_type_SUITE.erl",1464}]}.
    {call,1,{f,765}}. % pm_concretization_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test,is_eq_exact,{f,760},[{y,1},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,767},2}. % pm_concretization_4/1
  {label,760}.
    {move,{atom,error},{x,0}}.
    {deallocate,2}.
    return.


{function, pm_concretization_2, 2, 762}.
  {label,761}.
    {line,[{location,"beam_type_SUITE.erl",1470}]}.
    {func_info,{atom,beam_type_SUITE},{atom,pm_concretization_2},2}.
  {label,762}.
    {test,is_eq_exact,{f,763},[{x,0},{atom,tagged}]}.
    {test,is_tagged_tuple,{f,763},[{x,1},2,{atom,tagged}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,1}]}}.
    return.
  {label,763}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1}]}}.
    return.


{function, pm_concretization_3, 1, 765}.
  {label,764}.
    {line,[{location,"beam_type_SUITE.erl",1473}]}.
    {func_info,{atom,beam_type_SUITE},{atom,pm_concretization_3},1}.
  {label,765}.
    {move,{atom,ok},{x,0}}.
    return.


{function, pm_concretization_4, 1, 767}.
  {label,766}.
    {line,[{location,"beam_type_SUITE.erl",1474}]}.
    {func_info,{atom,beam_type_SUITE},{atom,pm_concretization_4},1}.
  {label,767}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[tagged]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, funs, 1, 769}.
  {label,768}.
    {line,[{location,"beam_type_SUITE.erl",1476}]}.
    {func_info,{atom,beam_type_SUITE},{atom,funs},1}.
  {label,769}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,770}}.
    {line,[{location,"beam_type_SUITE.erl",1477}]}.
    {call,0,{f,775}}. % gh_7179/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,770}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,773},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,773},[{x,1},2,{atom,badarg}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,843},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1478}]}.
    {call,1,{f,816}}. % id/1
    {'catch',{y,0},{f,771}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1480}]}.
    {call,0,{f,777}}. % gh_7197/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,771}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,772},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,772},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,772}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1480}]}.
    {badmatch,{x,0}}.
  {label,773}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1477}]}.
    {badmatch,{x,0}}.


{function, gh_7179, 0, 775}.
  {label,774}.
    {line,[{location,"beam_type_SUITE.erl",1485}]}.
    {func_info,{atom,beam_type_SUITE},{atom,gh_7179},0}.
  {label,775}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1486}]}.
    {call,1,{f,840}}. % '-gh_7179/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {bif,is_function,
         {f,0},
         [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{integer,-1}],
         {x,0}}.
    {deallocate,0}.
    return.


{function, gh_7197, 0, 777}.
  {label,776}.
    {line,[{location,"beam_type_SUITE.erl",1490}]}.
    {func_info,{atom,beam_type_SUITE},{atom,gh_7197},0}.
  {label,777}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1491}]}.
    {call,1,{f,837}}. % '-gh_7197/0-lc$^0/1-0-'/1
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


{function, will_succeed, 1, 779}.
  {label,778}.
    {line,[{location,"beam_type_SUITE.erl",1496}]}.
    {func_info,{atom,beam_type_SUITE},{atom,will_succeed},1}.
  {label,779}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1497}]}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{}},{x,0}}.
    {call,1,{f,816}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,782}}. % will_succeed_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,780},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,780}.
    {badmatch,{atom,a}}.


{function, will_succeed_1, 2, 782}.
  {label,781}.
    {line,[{location,"beam_type_SUITE.erl",1502}]}.
    {func_info,{atom,beam_type_SUITE},{atom,will_succeed_1},2}.
  {label,782}.
    {gc_bif,map_size,{f,783},2,[{x,1}],{x,1}}.
    {line,[{location,"beam_type_SUITE.erl",1503}]}.
    {gc_bif,'bxor',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,288230376151711743}}},
             {integer,288230376151711743}],
            {x,1}}.
    {gc_bif,'bsl',
            {f,783},
            2,
            [{integer,1},{tr,{x,1},{t_integer,{0,288230376151711743}}}],
            {x,1}}.
    {test,is_eq_exact,{f,783},[{tr,{x,1},{t_integer,{1,'+inf'}}},{x,0}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,783}.
    {move,{atom,b},{x,0}}.
    return.


{function, float_confusion, 1, 785}.
  {label,784}.
    {line,[{location,"beam_type_SUITE.erl",1510}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion},1}.
  {label,785}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {'catch',{y,4},{f,786}}.
    {line,[{location,"beam_type_SUITE.erl",1511}]}.
    {badmatch,{atom,ok}}.
  {label,786}.
    {catch_end,{y,4}}.
    {move,{float,-0.0},{x,1}}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",1511}]}.
    {call,2,{f,796}}. % float_confusion_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{float,0.0},{x,1}}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",1512}]}.
    {call,2,{f,796}}. % float_confusion_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,787}}.
    {line,[{scope,"\n"},{location,"beam_type_SUITE.erl",1513}]}.
    {call,0,{f,798}}. % float_confusion_2/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,787}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,794},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,788}}.
    {move,{float,0.0},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_type_SUITE.erl",1514}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,803}}. % float_confusion_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,788}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,793},[{x,0},2,{atom,'EXIT'}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1515}]}.
    {call,1,{f,816}}. % id/1
    {call,1,{f,806}}. % float_confusion_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,789}}.
    {line,[{scope,[5,6]},{location,"beam_type_SUITE.erl",1516}]}.
    {call,0,{f,808}}. % float_confusion_5/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,789}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,792},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,790}}.
    {line,[{scope,[3,4]},{location,"beam_type_SUITE.erl",1517}]}.
    {call,0,{f,813}}. % float_confusion_6/0
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,790}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,791},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,791}.
    {line,[{scope,[0]},{location,"beam_type_SUITE.erl",1517}]}.
    {badmatch,{x,0}}.
  {label,792}.
    {line,[{scope,[2]},{location,"beam_type_SUITE.erl",1516}]}.
    {badmatch,{x,0}}.
  {label,793}.
    {line,[{scope,[4]},{location,"beam_type_SUITE.erl",1514}]}.
    {badmatch,{x,0}}.
  {label,794}.
    {line,[{scope,[6]},{location,"beam_type_SUITE.erl",1513}]}.
    {badmatch,{x,0}}.


{function, float_confusion_1, 2, 796}.
  {label,795}.
    {line,[{location,"beam_type_SUITE.erl",1520}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_1},2}.
  {label,796}.
    {'%',{var_info,{x,1},[{type,{t_float,{-0.0,0.0}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, float_confusion_2, 0, 798}.
  {label,797}.
    {line,[{location,"beam_type_SUITE.erl",1523}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_2},0}.
  {label,798}.
    {allocate,0,0}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1524}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,799},[{x,0}]}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,799}.
    {call_last,1,{f,832},0}. % '-float_confusion_2/0-lc$^0/1-0-'/1


{function, float_confusion_crash, 2, 801}.
  {label,800}.
    {line,[{location,"beam_type_SUITE.erl",1527}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_crash},2}.
  {label,801}.
    {'%',{var_info,{x,1},[{type,{t_number,{-1,0}}}]}}.
    {jump,{f,800}}.


{function, float_confusion_3, 1, 803}.
  {label,802}.
    {line,[{location,"beam_type_SUITE.erl",1530}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_3},1}.
  {label,803}.
    {line,[{location,"beam_type_SUITE.erl",1531}]}.
    {gc_bif,abs,{f,0},1,[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,804},[{tr,{x,0},{t_number,{0,'+inf'}}},{float,-0.0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,804}.
    {badmatch,{x,0}}.


{function, float_confusion_4, 1, 806}.
  {label,805}.
    {line,[{location,"beam_type_SUITE.erl",1534}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_4},1}.
  {label,806}.
    {gc_bif,'band',{f,805},1,[{x,0},{integer,1}],{x,1}}.
    {test,is_lt,{f,805},[{float,-0.0},{tr,{x,1},{t_integer,{0,1}}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, float_confusion_5, 0, 808}.
  {label,807}.
    {line,[{location,"beam_type_SUITE.erl",1537}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_5},0}.
  {label,808}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,830},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {test,is_lt,
          {f,809},
          [{atom,ok},
           {tr,{x,0},
               {t_fun,0,{'-float_confusion_5/0-fun-0-',0},{t_atom,[ok]}}}]}.
    {move,{float,2147483647.0},{x,0}}.
    {jump,{f,810}}.
  {label,809}.
    {move,{integer,-2147483648},{x,0}}.
  {label,810}.
    {line,[{location,"beam_type_SUITE.erl",1548}]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_number,{-2147483648,2147483647}}},{integer,0}],
            {x,0}}.
    {test,is_eq_exact,{f,811},[{tr,{x,0},{t_number,{0,0}}},{float,-0.0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,811}.
    {line,[{location,"beam_type_SUITE.erl",1538}]}.
    {badmatch,{x,0}}.


{function, float_confusion_6, 0, 813}.
  {label,812}.
    {line,[{location,"beam_type_SUITE.erl",1553}]}.
    {func_info,{atom,beam_type_SUITE},{atom,float_confusion_6},0}.
  {label,813}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1556}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,814},[{x,0}]}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,814}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,822},1}. % '-float_confusion_6/0-lbc$^0/2-0-'/2


{function, id, 1, 816}.
  {label,815}.
    {line,[{location,"beam_type_SUITE.erl",1571}]}.
    {func_info,{atom,beam_type_SUITE},{atom,id},1}.
  {label,816}.
    return.


{function, module_info, 0, 818}.
  {label,817}.
    {line,[]}.
    {func_info,{atom,beam_type_SUITE},{atom,module_info},0}.
  {label,818}.
    {move,{atom,beam_type_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 820}.
  {label,819}.
    {line,[]}.
    {func_info,{atom,beam_type_SUITE},{atom,module_info},1}.
  {label,820}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_type_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-float_confusion_6/0-lbc$^0/2-0-', 2, 822}.
  {label,821}.
    {line,[{location,"beam_type_SUITE.erl",1554}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-float_confusion_6/0-lbc$^0/2-0-'},
               2}.
  {label,822}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_tuple,{f,827},[{x,0}]}.
    {test,test_arity,{f,828},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,826},[{x,2}]}.
    {test,test_arity,{f,826},[{x,2},1]}.
    {get_tuple_element,{x,2},0,{x,0}}.
    {test,is_ne_exact,{f,824},[{x,0},{literal,{}}]}.
    {select_val,{x,0},
                {f,825},
                {list,[{float,0.0},{f,823},{float,-0.0},{f,823}]}}.
  {label,823}.
    {move,nil,{x,0}}.
  {label,824}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"beam_type_SUITE.erl",1557}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,825}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,else_clause},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,826}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,2,{f,822}}. % '-float_confusion_6/0-lbc$^0/2-0-'/2
  {label,827}.
    {test,is_eq_exact,{f,828},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,828}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"beam_type_SUITE.erl",1556}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,822},1}. % '-float_confusion_6/0-lbc$^0/2-0-'/2


{function, '-float_confusion_5/0-fun-0-', 0, 830}.
  {label,829}.
    {line,[{location,"beam_type_SUITE.erl",1540}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-float_confusion_5/0-fun-0-'},0}.
  {label,830}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-float_confusion_2/0-lc$^0/1-0-', 1, 832}.
  {label,831}.
    {line,[{location,"beam_type_SUITE.erl",1524}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-float_confusion_2/0-lc$^0/1-0-'},
               1}.
  {label,832}.
    {test,is_tuple,{f,834},[{x,0}]}.
    {test,test_arity,{f,835},[{x,0},3]}.
    {allocate,1,0}.
    {'catch',{y,0},{f,833}}.
    {move,{integer,-1},{x,1}}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1525}]}.
    {call,2,{f,801}}. % float_confusion_crash/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,833}.
    {catch_end,{y,0}}.
    {move,{float,-0.0},{x,1}}.
    {call_last,2,{f,801},1}. % float_confusion_crash/2
  {label,834}.
    {test,is_eq_exact,{f,835},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,835}.
    {allocate,0,1}.
    {line,[{scope,[0,2]},{location,"beam_type_SUITE.erl",1524}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,832},0}. % '-float_confusion_2/0-lc$^0/1-0-'/1


{function, '-gh_7197/0-lc$^0/1-0-', 1, 837}.
  {label,836}.
    {line,[{location,"beam_type_SUITE.erl",1491}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-gh_7197/0-lc$^0/1-0-'},1}.
  {label,837}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,838},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {allocate,0,1}.
    {call,1,{f,837}}. % '-gh_7197/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,838}.
    {move,nil,{x,0}}.
    return.


{function, '-gh_7179/0-lc$^0/1-0-', 1, 840}.
  {label,839}.
    {line,[{location,"beam_type_SUITE.erl",1486}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-gh_7179/0-lc$^0/1-0-'},1}.
  {label,840}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,841},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {allocate,0,1}.
    {call,1,{f,840}}. % '-gh_7179/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,841}.
    {move,nil,{x,0}}.
    return.


{function, '-funs/1-fun-0-', 0, 843}.
  {label,842}.
    {line,[{location,"beam_type_SUITE.erl",1478}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-funs/1-fun-0-'},0}.
  {label,843}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_unit_1/0-Foo/1-0-', 1, 845}.
  {label,844}.
    {line,[{location,"beam_type_SUITE.erl",1449}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-binary_unit_1/0-Foo/1-0-'},1}.
  {label,845}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,845},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_bitstring,16,false}}]}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"beam_type_SUITE.erl",1450}]}.
    {call,3,{f,847}}. % '-binary_unit_1/0-lc$^0/1-1-'/3
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {bif,hd,{f,0},[{tr,{x,0},{t_list,any,nil}}],{x,0}}.
    {line,[{location,"beam_type_SUITE.erl",1451}]}.
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


{function, '-binary_unit_1/0-lc$^0/1-1-', 3, 847}.
  {label,846}.
    {line,[{location,"beam_type_SUITE.erl",1450}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-binary_unit_1/0-lc$^0/1-1-'},3}.
  {label,847}.
    {'%',{var_info,{x,2},
                   [{type,{t_fun,1,
                                 {'-binary_unit_1/0-Foo/1-0-',1},
                                 {t_bitstring,16,false}}}]}}.
    {test,is_nonempty_list,{f,848},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {move,{x,2},{x,4}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,5,{f,851}}. % '-binary_unit_1/0-lc$^1/1-2-'/5
  {label,848}.
    {test,is_nil,{f,849},[{x,0}]}.
    return.
  {label,849}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_unit_1/0-lc$^1/1-2-', 5, 851}.
  {label,850}.
    {line,[{location,"beam_type_SUITE.erl",1450}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-binary_unit_1/0-lc$^1/1-2-'},5}.
  {label,851}.
    {'%',{var_info,{x,4},
                   [{type,{t_fun,1,
                                 {'-binary_unit_1/0-Foo/1-0-',1},
                                 {t_bitstring,16,false}}}]}}.
    {test,is_nonempty_list,{f,853},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {test,is_ge,
          {f,852},
          [{tr,{x,4},
               {t_fun,1,
                      {'-binary_unit_1/0-Foo/1-0-',1},
                      {t_bitstring,16,false}}},
           {atom,ok}]}.
    {allocate,1,5}.
    {move,{x,3},{y,0}}.
    {call,5,{f,851}}. % '-binary_unit_1/0-lc$^1/1-2-'/5
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,852}.
    {call_only,5,{f,851}}. % '-binary_unit_1/0-lc$^1/1-2-'/5
  {label,853}.
    {test,is_nil,{f,854},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {move,{x,4},{x,2}}.
    {call_only,3,{f,847}}. % '-binary_unit_1/0-lc$^0/1-1-'/3
  {label,854}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-infer_relops_4/0-lc$^1/1-0-', 1, 856}.
  {label,855}.
    {line,[{location,"beam_type_SUITE.erl",1428}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-infer_relops_4/0-lc$^1/1-0-'},1}.
  {label,856}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,857},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,3,{f,859}}. % '-infer_relops_4/0-lc$^2/1-1-'/3
  {label,857}.
    {move,nil,{x,0}}.
    return.


{function, '-infer_relops_4/0-lc$^2/1-1-', 3, 859}.
  {label,858}.
    {line,[{location,"beam_type_SUITE.erl",1429}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-infer_relops_4/0-lc$^2/1-1-'},3}.
  {label,859}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,860},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[1426,{file,"beam_type_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,3,{f,859}}. % '-infer_relops_4/0-lc$^2/1-1-'/3
  {label,860}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,856}}. % '-infer_relops_4/0-lc$^1/1-0-'/1


{function, '-infer_relops_1/0-lc$^0/1-0-', 1, 862}.
  {label,861}.
    {line,[{location,"beam_type_SUITE.erl",1411}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-infer_relops_1/0-lc$^0/1-0-'},1}.
  {label,862}.
    {test,is_nonempty_list,{f,863},[{x,0}]}.
    {allocate,0,1}.
    {get_tl,{x,0},{x,0}}.
    {call,1,{f,862}}. % '-infer_relops_1/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,863}.
    {test,is_nil,{f,864},[{x,0}]}.
    return.
  {label,864}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_maps_functions/1-fun-7-', 1, 866}.
  {label,865}.
    {line,[{location,"beam_type_SUITE.erl",1348}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-7-'},
               1}.
  {label,866}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cover_maps_functions/1-fun-6-', 1, 868}.
  {label,867}.
    {line,[{location,"beam_type_SUITE.erl",1347}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-6-'},
               1}.
  {label,868}.
    {move,{atom,a},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_maps_functions/1-fun-5-', 1, 870}.
  {label,869}.
    {line,[{location,"beam_type_SUITE.erl",1346}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-5-'},
               1}.
  {label,870}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cover_maps_functions/1-fun-4-', 2, 872}.
  {label,871}.
    {line,[{location,"beam_type_SUITE.erl",1330}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-4-'},
               2}.
  {label,872}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cover_maps_functions/1-fun-3-', 2, 874}.
  {label,873}.
    {line,[{location,"beam_type_SUITE.erl",1328}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-3-'},
               2}.
  {label,874}.
    {move,{atom,crash},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_maps_functions/1-fun-2-', 2, 876}.
  {label,875}.
    {line,[{location,"beam_type_SUITE.erl",1327}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-2-'},
               2}.
  {label,876}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cover_maps_functions/1-fun-1-', 3, 878}.
  {label,877}.
    {line,[{location,"beam_type_SUITE.erl",1311}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-1-'},
               3}.
  {label,878}.
    {move,{atom,true},{x,0}}.
    return.


{function, '-cover_maps_functions/1-fun-0-', 2, 880}.
  {label,879}.
    {line,[{location,"beam_type_SUITE.erl",1306}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_maps_functions/1-fun-0-'},
               2}.
  {label,880}.
    {move,{atom,true},{x,0}}.
    return.


{function, '-type_subtraction_4/1-lbc$^0/2-0-', 2, 882}.
  {label,881}.
    {line,[{location,"beam_type_SUITE.erl",1107}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-type_subtraction_4/1-lbc$^0/2-0-'},
               2}.
  {label,882}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_tuple,{f,883},[{x,0}]}.
    {test,test_arity,{f,884},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,885},[{x,0},{atom,true}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{atom,ok}]}}.
    {line,[{scope,[1]},{location,"beam_type_SUITE.erl",1110}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,883}.
    {test,is_eq_exact,{f,884},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,884}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{scope,[0,1]},{location,"beam_type_SUITE.erl",1109}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,882},1}. % '-type_subtraction_4/1-lbc$^0/2-0-'/2
  {label,885}.
    {line,[{scope,[1]},{location,"beam_type_SUITE.erl",1110}]}.
    {try_case_end,{atom,ok}}.


{function, '-cover_lists_functions/1-fun-7-', 2, 887}.
  {label,886}.
    {line,[{location,"beam_type_SUITE.erl",966}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-7-'},
               2}.
  {label,887}.
    {move,{atom,bad},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_lists_functions/1-fun-6-', 2, 889}.
  {label,888}.
    {line,[{location,"beam_type_SUITE.erl",964}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-6-'},
               2}.
  {label,889}.
    {move,{atom,bad},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_lists_functions/1-fun-5-', 2, 891}.
  {label,890}.
    {line,[{location,"beam_type_SUITE.erl",962}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-5-'},
               2}.
  {label,891}.
    {move,{atom,bad},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_lists_functions/1-fun-4-', 2, 893}.
  {label,892}.
    {line,[{location,"beam_type_SUITE.erl",947}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-4-'},
               2}.
  {label,893}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-cover_lists_functions/1-fun-3-', 2, 895}.
  {label,894}.
    {line,[{location,"beam_type_SUITE.erl",925}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-3-'},
               2}.
  {label,895}.
    {move,{atom,foo},{x,0}}.
    return.


{function, '-cover_lists_functions/1-fun-2-', 2, 897}.
  {label,896}.
    {line,[{location,"beam_type_SUITE.erl",924}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-2-'},
               2}.
  {label,897}.
    {move,{atom,foo},{x,0}}.
    return.


{function, '-cover_lists_functions/1-fun-1-', 2, 899}.
  {label,898}.
    {line,[{location,"beam_type_SUITE.erl",921}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-1-'},
               2}.
  {label,899}.
    {move,{atom,foo},{x,0}}.
    return.


{function, '-cover_lists_functions/1-fun-0-', 2, 901}.
  {label,900}.
    {line,[{location,"beam_type_SUITE.erl",920}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-cover_lists_functions/1-fun-0-'},
               2}.
  {label,901}.
    {move,{atom,foo},{x,0}}.
    return.


{function, '-float_overflow_3/0-lc$^0/1-0-', 1, 903}.
  {label,902}.
    {line,[{location,"beam_type_SUITE.erl",816}]}.
    {func_info,{atom,beam_type_SUITE},
               {atom,'-float_overflow_3/0-lc$^0/1-0-'},
               1}.
  {label,903}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,true}},accepts_match_context]}}.
    {line,[{location,"beam_type_SUITE.erl",817}]}.
    {gc_bif,map_size,{f,0},0,[{literal,#{}}],{x,0}}.
    {gc_bif,'+',
            {f,904},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{float,1.0}],
            {x,0}}.
    {test,is_ge,
          {f,904},
          [{integer,359538626972463141629054847463408713596141135051689993197834953606314521560057077521179117265533756343080917907028764928468642653778928365536935093407075033972099821153102564152490980180778657888151737016910267884609166473806445896331617118664246696549595652408289446337476354361838599762500808052368249716736},
           {tr,{x,0},{t_float,any}}]}.
    {move,{literal,[0]},{x,0}}.
    {jump,{f,905}}.
  {label,904}.
    {move,nil,{x,0}}.
  {label,905}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gh_6458/1-lc$^0/1-0-', 3, 907}.
  {label,906}.
    {line,[{location,"beam_type_SUITE.erl",717}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-gh_6458/1-lc$^0/1-0-'},3}.
  {label,907}.
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


{function, '-tuple/1-lc$^2/1-2-', 1, 909}.
  {label,908}.
    {line,[{location,"beam_type_SUITE.erl",664}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-tuple/1-lc$^2/1-2-'},1}.
  {label,909}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-tuple/1-lc$^1/1-1-', 1, 911}.
  {label,910}.
    {line,[{location,"beam_type_SUITE.erl",663}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-tuple/1-lc$^1/1-1-'},1}.
  {label,911}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-tuple/1-lc$^0/1-0-', 1, 913}.
  {label,912}.
    {line,[{location,"beam_type_SUITE.erl",662}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-tuple/1-lc$^0/1-0-'},1}.
  {label,913}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-do_booleans_8/1-lc$^0/1-0-', 1, 915}.
  {label,914}.
    {line,[{location,"beam_type_SUITE.erl",493}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-do_booleans_8/1-lc$^0/1-0-'},1}.
  {label,915}.
    {test,is_nonempty_list,{f,916},[{x,0}]}.
    {allocate,0,1}.
    {get_tl,{x,0},{x,0}}.
    {call,1,{f,915}}. % '-do_booleans_8/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,916}.
    {test,is_nil,{f,917},[{x,0}]}.
    return.
  {label,917}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_booleans_6/3-lc$^0/1-0-', 1, 919}.
  {label,918}.
    {line,[{location,"beam_type_SUITE.erl",472}]}.
    {func_info,{atom,beam_type_SUITE},{atom,'-do_booleans_6/3-lc$^0/1-0-'},1}.
  {label,919}.
    {'%',{var_info,{x,0},[{type,{t_tuple,1,true,#{1 => {t_cons,any,any}}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
