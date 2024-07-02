{module, record_SUITE}.  %% version = 0

{exports, [{all,0},
           {coverage,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {errors,1},
           {eval_once,1},
           {foobar,1},
           {grab_bag,1},
           {groups,0},
           {guard_opt,1},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {missing_test_heap,1},
           {module_info,0},
           {module_info,1},
           {nested_access,1},
           {record_access_in_guards,1},
           {record_test_2,1},
           {record_test_3,1},
           {slow_compilation,1},
           {suite,0}]}.

{attributes, []}.

{labels, 516}.


{function, init_per_testcase, 2, 2}.
  {label,1}.
    {line,[{location,"record_SUITE.erl",33}]}.
    {func_info,{atom,record_SUITE},{atom,init_per_testcase},2}.
  {label,2}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 4}.
  {label,3}.
    {line,[{location,"record_SUITE.erl",36}]}.
    {func_info,{atom,record_SUITE},{atom,end_per_testcase},2}.
  {label,4}.
    {move,{atom,ok},{x,0}}.
    return.


{function, suite, 0, 6}.
  {label,5}.
    {line,[{location,"record_SUITE.erl",39}]}.
    {func_info,{atom,record_SUITE},{atom,suite},0}.
  {label,6}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,2}}]},
          {x,0}}.
    return.


{function, all, 0, 8}.
  {label,7}.
    {line,[{location,"record_SUITE.erl",43}]}.
    {func_info,{atom,record_SUITE},{atom,all},0}.
  {label,8}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 10}.
  {label,9}.
    {line,[{location,"record_SUITE.erl",46}]}.
    {func_info,{atom,record_SUITE},{atom,groups},0}.
  {label,10}.
    {allocate,0,0}.
    {line,[{location,"record_SUITE.erl",47}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[errors,record_test_2,record_test_3,
                                 record_access_in_guards,guard_opt,eval_once,
                                 foobar,missing_test_heap,nested_access,
                                 coverage,grab_bag,slow_compilation]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 12}.
  {label,11}.
    {line,[{location,"record_SUITE.erl",54}]}.
    {func_info,{atom,record_SUITE},{atom,init_per_suite},1}.
  {label,12}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"record_SUITE.erl",55}]}.
    {call,1,{f,234}}. % id/1
    {move,{atom,record_SUITE},{x,0}}.
    {line,[{location,"record_SUITE.erl",56}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 14}.
  {label,13}.
    {line,[{location,"record_SUITE.erl",59}]}.
    {func_info,{atom,record_SUITE},{atom,end_per_suite},1}.
  {label,14}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 16}.
  {label,15}.
    {line,[{location,"record_SUITE.erl",62}]}.
    {func_info,{atom,record_SUITE},{atom,init_per_group},2}.
  {label,16}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 18}.
  {label,17}.
    {line,[{location,"record_SUITE.erl",65}]}.
    {func_info,{atom,record_SUITE},{atom,end_per_group},2}.
  {label,18}.
    {move,{x,1},{x,0}}.
    return.


{function, errors, 1, 20}.
  {label,19}.
    {line,[{location,"record_SUITE.erl",73}]}.
    {func_info,{atom,record_SUITE},{atom,errors},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate,9,0}.
    {init_yregs,{list,[{y,0},
                       {y,1},
                       {y,2},
                       {y,3},
                       {y,4},
                       {y,5},
                       {y,6},
                       {y,7},
                       {y,8}]}}.
    {move,{integer,19},{x,1}}.
    {move,{integer,42},{x,2}}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {line,[{location,"record_SUITE.erl",75}]}.
    {call,3,{f,40}}. % update_foo/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{19,19}},
                                     3 => {t_integer,{42,42}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'catch',{y,8},{f,21}}.
    {move,{integer,19},{x,1}}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {line,[{location,"record_SUITE.erl",77}]}.
    {call,2,{f,42}}. % update_foo_bar/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,21}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,38},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,38},[{x,1}]}.
    {test,test_arity,{f,38},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,38},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,38},[{x,1},{literal,{foo,1,2,3,4}}]}.
    {'catch',{y,7},{f,22}}.
    {move,{integer,19},{x,1}}.
    {move,{integer,35},{x,2}}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {line,[{scope,[16]},{location,"record_SUITE.erl",78}]}.
    {call,3,{f,44}}. % update_foo_bar/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,22}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,37},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,37},[{x,1}]}.
    {test,test_arity,{f,37},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,37},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,37},[{x,1},{literal,{foo,1,2,3,4}}]}.
    {'catch',{y,6},{f,23}}.
    {move,{integer,35},{x,2}}.
    {move,{integer,19},{x,1}}.
    {move,{integer,17},{x,3}}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {line,[{scope,[14]},{location,"record_SUITE.erl",79}]}.
    {call,4,{f,46}}. % update_foo_bar/4
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,23}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,36},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,36},[{x,1}]}.
    {test,test_arity,{f,36},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,36},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,36},[{x,1},{literal,{foo,1,2,3,4}}]}.
    {'catch',{y,5},{f,24}}.
    {move,{integer,35},{x,2}}.
    {move,{integer,17},{x,3}}.
    {move,{integer,19},{x,1}}.
    {move,{integer,42},{x,4}}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {line,[{scope,"\f"},{location,"record_SUITE.erl",80}]}.
    {call,5,{f,48}}. % update_foo_bar/5
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,24}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,35},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,35},[{x,1}]}.
    {test,test_arity,{f,35},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,35},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,35},[{x,1},{literal,{foo,1,2,3,4}}]}.
    {'catch',{y,4},{f,25}}.
    {move,{integer,19},{x,1}}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {line,[{scope,"\n"},{location,"record_SUITE.erl",82}]}.
    {call,2,{f,50}}. % update_foo_barf/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,25}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,34},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,34},[{x,1}]}.
    {test,test_arity,{f,34},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,34},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,34},[{x,1},{literal,{foo,1,2,3,4}}]}.
    {'catch',{y,3},{f,26}}.
    {move,{integer,19},{x,1}}.
    {move,{integer,35},{x,2}}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",83}]}.
    {call,3,{f,52}}. % update_foo_barf/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,26}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,33},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,33},[{x,1}]}.
    {test,test_arity,{f,33},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,33},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,33},[{x,1},{literal,{foo,1,2,3,4}}]}.
    {'catch',{y,2},{f,27}}.
    {move,{integer,35},{x,2}}.
    {move,{integer,19},{x,1}}.
    {move,{integer,17},{x,3}}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {line,[{scope,[6]},{location,"record_SUITE.erl",84}]}.
    {call,4,{f,54}}. % update_foo_barf/4
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,27}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,32},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,32},[{x,1}]}.
    {test,test_arity,{f,32},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,32},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,32},[{x,1},{literal,{foo,1,2,3,4}}]}.
    {'catch',{y,1},{f,28}}.
    {move,{integer,35},{x,2}}.
    {move,{integer,17},{x,3}}.
    {move,{integer,19},{x,1}}.
    {move,{integer,42},{x,4}}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {line,[{scope,[4]},{location,"record_SUITE.erl",85}]}.
    {call,5,{f,56}}. % update_foo_barf/5
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,28}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,31},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,31},[{x,1}]}.
    {test,test_arity,{f,31},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,31},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,31},[{x,1},{literal,{foo,1,2,3,4}}]}.
    {'catch',{y,0},{f,29}}.
    {move,{integer,17},{x,3}}.
    {move,{integer,35},{x,2}}.
    {move,{integer,42},{x,4}}.
    {move,{integer,19},{x,1}}.
    {move,{integer,-2},{x,5}}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",86}]}.
    {call,6,{f,58}}. % update_foo_barf/6
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,29}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,30},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,30},[{x,1}]}.
    {test,test_arity,{f,30},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,30},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,30},[{x,1},{literal,{foo,1,2,3,4}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,9}.
    return.
  {label,30}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",86}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",85}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,[4]},{location,"record_SUITE.erl",84}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,[6]},{location,"record_SUITE.erl",83}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",82}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,"\n"},{location,"record_SUITE.erl",80}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{scope,"\f"},{location,"record_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{scope,[14]},{location,"record_SUITE.erl",78}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,[16]},{location,"record_SUITE.erl",77}]}.
    {badmatch,{x,0}}.


{function, update_foo, 3, 40}.
  {label,39}.
    {line,[{location,"record_SUITE.erl",91}]}.
    {func_info,{atom,record_SUITE},{atom,update_foo},3}.
  {label,40}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{19,19}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,{foo,19,42,3,4}},{x,0}}.
    return.


{function, update_foo_bar, 2, 42}.
  {label,41}.
    {line,[{location,"record_SUITE.erl",94}]}.
    {func_info,{atom,record_SUITE},{atom,update_foo_bar},2}.
  {label,42}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{19,19}}}]}}.
    {line,[{location,"record_SUITE.erl",95}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_bar, 3, 44}.
  {label,43}.
    {line,[{location,"record_SUITE.erl",97}]}.
    {func_info,{atom,record_SUITE},{atom,update_foo_bar},3}.
  {label,44}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{19,19}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{35,35}}}]}}.
    {line,[{location,"record_SUITE.erl",98}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_bar, 4, 46}.
  {label,45}.
    {line,[{location,"record_SUITE.erl",100}]}.
    {func_info,{atom,record_SUITE},{atom,update_foo_bar},4}.
  {label,46}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{19,19}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{35,35}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{17,17}}}]}}.
    {line,[{location,"record_SUITE.erl",101}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_bar, 5, 48}.
  {label,47}.
    {line,[{location,"record_SUITE.erl",103}]}.
    {func_info,{atom,record_SUITE},{atom,update_foo_bar},5}.
  {label,48}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{19,19}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{35,35}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{17,17}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{42,42}}}]}}.
    {line,[{location,"record_SUITE.erl",104}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_barf, 2, 50}.
  {label,49}.
    {line,[{location,"record_SUITE.erl",106}]}.
    {func_info,{atom,record_SUITE},{atom,update_foo_barf},2}.
  {label,50}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{19,19}}}]}}.
    {line,[{location,"record_SUITE.erl",107}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_barf, 3, 52}.
  {label,51}.
    {line,[{location,"record_SUITE.erl",109}]}.
    {func_info,{atom,record_SUITE},{atom,update_foo_barf},3}.
  {label,52}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{19,19}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{35,35}}}]}}.
    {line,[{location,"record_SUITE.erl",110}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_barf, 4, 54}.
  {label,53}.
    {line,[{location,"record_SUITE.erl",112}]}.
    {func_info,{atom,record_SUITE},{atom,update_foo_barf},4}.
  {label,54}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{19,19}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{35,35}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{17,17}}}]}}.
    {line,[{location,"record_SUITE.erl",113}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_barf, 5, 56}.
  {label,55}.
    {line,[{location,"record_SUITE.erl",115}]}.
    {func_info,{atom,record_SUITE},{atom,update_foo_barf},5}.
  {label,56}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{19,19}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{35,35}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{17,17}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{42,42}}}]}}.
    {line,[{location,"record_SUITE.erl",116}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_barf, 6, 58}.
  {label,57}.
    {line,[{location,"record_SUITE.erl",118}]}.
    {func_info,{atom,record_SUITE},{atom,update_foo_barf},6}.
  {label,58}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{19,19}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{35,35}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{17,17}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_integer,{-2,-2}}}]}}.
    {line,[{location,"record_SUITE.erl",119}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, record_test_2, 1, 60}.
  {label,59}.
    {line,[{location,"record_SUITE.erl",125}]}.
    {func_info,{atom,record_SUITE},{atom,record_test_2},1}.
  {label,60}.
    {test,is_list,{f,59},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",158}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,2}}.
    {test,is_tagged_tuple,{f,61},[{x,0},5,{atom,foo}]}.
    {jump,{f,62}}.
  {label,61}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",159}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,62}.
    {test,is_tagged_tuple,{f,63},[{y,2},6,{atom,barf}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",160}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,63}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",169}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,115},[{x,0},5,{atom,foo}]}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",170}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,64},[{x,0},6,{atom,barf}]}.
    {badmatch,{atom,true}}.
  {label,64}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",171}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,65},[{x,0},5,{atom,foo}]}.
    {badmatch,{atom,true}}.
  {label,65}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",173}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,114},[{x,0},5,{atom,foo}]}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",174}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,66},[{x,0},6,{atom,barf}]}.
    {badmatch,{atom,true}}.
  {label,66}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",175}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,67},[{x,0},5,{atom,foo}]}.
    {badmatch,{atom,true}}.
  {label,67}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",177}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",178}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tagged_tuple,{f,68},[{y,1},5,{atom,foo}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",180}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,68}.
    {test,is_tagged_tuple,{f,69},[{y,0},5,{atom,foo}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",181}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,69}.
    {move,{literal,{a}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",187}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,a},{x,0}}.
    {call,1,{f,234}}. % id/1
    {line,[{location,"record_SUITE.erl",187}]}.
    {bif,is_record,{f,0},[{y,1},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,113},[{x,0},{atom,true}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",194}]}.
    {call,1,{f,234}}. % id/1
    {bif,'=:=',{f,0},[{x,0},{atom,true}],{x,1}}.
    {move,{x,0},{y,1}}.
    {bif,'xor',{f,0},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}],{x,0}}.
    {test,is_eq_exact,{f,70},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,70},[{y,1}]}.
    {jump,{f,71}}.
  {label,70}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",195}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,71}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {test,is_eq_exact,{f,72},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,73},[{y,1}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",196}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,72}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {test,is_eq_exact,{f,73},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,73},[{y,1}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",197}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,73}.
    {test,is_tagged_tuple,{f,74},[{y,2},5,{atom,foo}]}.
    {move,{atom,true},{x,0}}.
    {jump,{f,75}}.
  {label,74}.
    {move,{atom,false},{x,0}}.
  {label,75}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,1}}.
    {bif,'xor',
         {f,0},
         [{tr,{x,0},{t_atom,[false,true]}},{tr,{x,1},{t_atom,[false,true]}}],
         {x,0}}.
    {test,is_eq_exact,{f,76},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,76},[{y,1}]}.
    {jump,{f,77}}.
  {label,76}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",199}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,77}.
    {test,is_tagged_tuple,{f,78},[{y,2},6,{atom,barf}]}.
    {move,{atom,true},{x,0}}.
    {jump,{f,79}}.
  {label,78}.
    {move,{atom,false},{x,0}}.
  {label,79}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,1}}.
    {bif,'xor',
         {f,0},
         [{tr,{x,0},{t_atom,[false,true]}},{tr,{x,1},{t_atom,[false,true]}}],
         {x,0}}.
    {test,is_eq_exact,{f,80},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,80},[{y,1}]}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",200}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,80}.
    {move,{literal,[1,
                    {foo,2,undefined,undefined,undefined},
                    3,
                    {bar,undefined,undefined,undefined,4},
                    5,
                    {foo,6,undefined,undefined,undefined},
                    7]},
          {x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",205}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,2}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",207}]}.
    {call,1,{f,512}}. % '-record_test_2/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,112},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,112},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,112},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,112},[{x,1},{integer,6}]}.
    {test,is_nil,
          {f,112},
          [{tr,{x,2},{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",208}]}.
    {call,1,{f,507}}. % '-record_test_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,111},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,111},[{x,1},{integer,4}]}.
    {test,is_nil,
          {f,111},
          [{tr,{x,2},{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",210}]}.
    {call,1,{f,502}}. % '-record_test_2/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,110},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,110},[{x,1},{integer,1}]}.
    {test,is_nonempty_list,{f,110},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,110},[{x,1},5,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,110},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,110},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,110},[{x,1},{integer,3}]}.
    {test,is_nonempty_list,{f,110},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,110},[{x,1},{integer,5}]}.
    {test,is_nonempty_list,{f,110},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,110},[{x,1},5,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,110},[{x,1},{integer,6}]}.
    {test,is_eq_exact,{f,110},[{tr,{x,2},{t_list,any,nil}},{literal,[7]}]}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",212}]}.
    {call,1,{f,495}}. % '-record_test_2/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,109},
          [{tr,{x,0},{t_list,any,nil}},{literal,[1,3,5,7]}]}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",214}]}.
    {call,1,{f,488}}. % '-record_test_2/1-lc$^4/1-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{5,{t_atom,[bar]}},
                           {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,108},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,
          {f,108},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                         {{5,{t_atom,[foo]}},
                          {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                        none}},
           5,
           {atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,108},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,108},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,
          {f,108},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                         {{5,{t_atom,[foo]}},
                          {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                        none}},
           5,
           {atom,bar}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,108},[{x,1},{integer,4}]}.
    {test,is_nonempty_list,{f,108},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,
          {f,108},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                         {{5,{t_atom,[foo]}},
                          {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                        none}},
           5,
           {atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,108},[{x,1},{integer,6}]}.
    {test,is_nil,
          {f,108},
          [{tr,{x,2},
               {t_list,{t_union,none,none,none,
                                [{{5,{t_atom,[bar]}},
                                  {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                                 {{5,{t_atom,[foo]}},
                                  {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                                none},
                       nil}}]}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",216}]}.
    {call,1,{f,481}}. % '-record_test_2/1-lc$^5/1-5-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,
                         {t_number,{'-inf',5}},
                         [{{5,{t_atom,[bar]}},
                           {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,107},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,107},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{'-inf',5}},
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                        none}},
           {integer,1}]}.
    {test,is_nonempty_list,{f,107},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,107},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{'-inf',5}},
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                        none}},
           {integer,3}]}.
    {test,is_nonempty_list,{f,107},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,
          {f,107},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{'-inf',5}},
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,107},[{x,1},{integer,4}]}.
    {test,is_nil,
          {f,107},
          [{tr,{x,2},
               {t_list,{t_union,none,none,
                                {t_number,{'-inf',5}},
                                [{{5,{t_atom,[bar]}},
                                  {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                                none},
                       nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",219}]}.
    {call,1,{f,477}}. % '-record_test_2/1-lc$^6/1-6-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[foo]},
                           2 => {t_integer,{3,3}},
                           3 => {t_atom,[undefined]},
                           4 => {t_atom,[undefined]},
                           5 => {t_atom,[undefined]}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,106},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nil,
          {f,106},
          [{tr,{x,1},
               {t_list,{t_tuple,5,true,
                                #{1 => {t_atom,[foo]},
                                  2 => {t_integer,{3,3}},
                                  3 => {t_atom,[undefined]},
                                  4 => {t_atom,[undefined]},
                                  5 => {t_atom,[undefined]}}},
                       nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",220}]}.
    {call,1,{f,473}}. % '-record_test_2/1-lc$^7/1-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_eq_exact,
        {f,105},
        [{tr,{x,0},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",221}]}.
    {call,1,{f,469}}. % '-record_test_2/1-lc$^8/1-8-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,104},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,104},[{x,1}]}.
    {test,test_arity,{f,104},[{x,1},5]}.
    {test,is_nil,
        {f,104},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",222}]}.
    {call,1,{f,465}}. % '-record_test_2/1-lc$^9/1-9-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_eq_exact,
        {f,103},
        [{tr,{x,0},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",223}]}.
    {call,1,{f,462}}. % '-record_test_2/1-lc$^10/1-10-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,102},[{x,1}]}.
    {test,test_arity,{f,102},[{x,1},5]}.
    {test,is_eq_exact,
        {f,102},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",225}]}.
    {call,1,{f,459}}. % '-record_test_2/1-lc$^11/1-11-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,101},[{x,1}]}.
    {test,test_arity,{f,101},[{x,1},5]}.
    {test,is_eq_exact,
        {f,101},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",227}]}.
    {call,1,{f,455}}. % '-record_test_2/1-lc$^12/1-12-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[foo]},
                           2 => {t_integer,{3,3}},
                           3 => {t_atom,[undefined]},
                           4 => {t_atom,[undefined]},
                           5 => {t_atom,[undefined]}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,100},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nil,
          {f,100},
          [{tr,{x,1},
               {t_list,{t_tuple,5,true,
                                #{1 => {t_atom,[foo]},
                                  2 => {t_integer,{3,3}},
                                  3 => {t_atom,[undefined]},
                                  4 => {t_atom,[undefined]},
                                  5 => {t_atom,[undefined]}}},
                       nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",228}]}.
    {call,1,{f,451}}. % '-record_test_2/1-lc$^13/1-13-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_eq_exact,
        {f,99},
        [{tr,{x,0},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",230}]}.
    {call,1,{f,448}}. % '-record_test_2/1-lc$^14/1-14-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,98},[{x,1}]}.
    {test,test_arity,{f,98},[{x,1},5]}.
    {test,is_eq_exact,
        {f,98},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",233}]}.
    {call,1,{f,445}}. % '-record_test_2/1-lc$^15/1-15-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,97},[{x,1}]}.
    {test,test_arity,{f,97},[{x,1},5]}.
    {test,is_eq_exact,
        {f,97},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",236}]}.
    {call,1,{f,441}}. % '-record_test_2/1-lc$^16/1-16-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,96},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,96},[{x,1}]}.
    {test,test_arity,{f,96},[{x,1},5]}.
    {test,is_nil,
        {f,96},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",238}]}.
    {call,1,{f,437}}. % '-record_test_2/1-lc$^17/1-17-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_eq_exact,
        {f,95},
        [{tr,{x,0},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,#{a => 1,
                     b => {foo,2,undefined,undefined,undefined},
                     c => 3,
                     d => {bar,undefined,undefined,undefined,4},
                     e => 5,
                     f => {foo,6,undefined,undefined,undefined},
                     h => 7}},
          {x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",242}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,2}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",244}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,81},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,81}.
    {call,1,{f,432}}. % '-record_test_2/1-lc$^18/1-18-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},
                                  nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_nonempty_list,{f,94},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,94},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,94},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,94},[{x,1},{integer,6}]}.
    {test,is_nil,
          {f,94},
          [{tr,{x,2},{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",245}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,82},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,82}.
    {call,1,{f,427}}. % '-record_test_2/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,93},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,93},[{x,1},{integer,4}]}.
    {test,is_nil,
          {f,93},
          [{tr,{x,2},{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",247}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,83},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,83}.
    {call,1,{f,422}}. % '-record_test_2/1-lc$^20/1-20-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_nonempty_list,{f,92},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,92},[{x,1},{integer,1}]}.
    {test,is_nonempty_list,{f,92},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,92},[{x,1},{integer,3}]}.
    {test,is_nonempty_list,{f,92},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,92},[{x,1},{integer,5}]}.
    {test,is_nonempty_list,{f,92},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,92},[{x,1},{integer,7}]}.
    {test,is_nonempty_list,{f,92},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,92},[{x,1},5,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,92},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,92},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,92},[{x,1},5,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,92},[{x,1},{integer,6}]}.
    {test,is_nil,{f,92},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",248}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,84},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,84}.
    {init_yregs,{list,[{y,2}]}}.
    {call,1,{f,417}}. % '-record_test_2/1-lc$^21/1-21-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,91},[{tr,{x,0},{t_list,any,nil}},{literal,[2,6]}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",251}]}.
    {call,1,{f,415}}. % '-record_test_2/1-lc$^22/1-22-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,2},{f,85}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",252}]}.
    {call,1,{f,411}}. % '-record_test_2/1-lc$^23/1-23-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
  {label,85}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,90},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,90},[{x,1},2,{atom,badarg}]}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{scope,[1,2]},{location,"record_SUITE.erl",255}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,89},[{x,0},6,{atom,barf}]}.
    {line,[{scope,[1,2]},{location,"record_SUITE.erl",256}]}.
    {call,1,{f,176}}. % update_barf/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_atom,[barf]},
                                     2 => {t_cons,{t_integer,{97,99}},nil},
                                     3 => {t_integer,{1,1}}}}}]}}.
    {line,[{scope,[1,2]},{location,"record_SUITE.erl",257}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,88},[{x,0},6,{atom,barf}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,88},[{x,1},{literal,"abc"}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,88},[{x,1},{integer,1}]}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",260}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tuple,{f,87},[{x,0}]}.
    {test,test_arity,{f,87},[{x,0},2]}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",263}]}.
    {call,1,{f,234}}. % id/1
    {test,is_eq_exact,{f,86},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,86}.
    {case_end,{x,0}}.
  {label,87}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",260}]}.
    {case_end,{x,0}}.
  {label,88}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",257}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",255}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",252}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",248}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",246}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",245}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",244}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",238}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",236}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",233}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",230}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",228}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",227}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",225}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",223}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",222}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",221}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",220}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",219}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",215}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",213}]}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",211}]}.
    {badmatch,{x,0}}.
  {label,110}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",209}]}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",208}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",207}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",187}]}.
    {badmatch,{atom,error}}.
  {label,114}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",173}]}.
    {badmatch,{atom,false}}.
  {label,115}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",169}]}.
    {badmatch,{atom,false}}.


{function, record_test_3, 1, 117}.
  {label,116}.
    {line,[{location,"record_SUITE.erl",269}]}.
    {func_info,{atom,record_SUITE},{atom,record_test_3},1}.
  {label,117}.
    {test,is_list,{f,116},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",305}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,2}}.
    {test,is_tagged_tuple,{f,118},[{x,0},5,{atom,foo}]}.
    {jump,{f,119}}.
  {label,118}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",306}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,119}.
    {test,is_tagged_tuple,{f,120},[{y,2},6,{atom,barf}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",307}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,120}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",316}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,168},[{x,0},5,{atom,foo}]}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",317}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,121},[{x,0},6,{atom,barf}]}.
    {badmatch,{atom,true}}.
  {label,121}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{location,"record_SUITE.erl",318}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,122},[{x,0},5,{atom,foo}]}.
    {badmatch,{atom,true}}.
  {label,122}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",320}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,167},[{x,0},5,{atom,foo}]}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",321}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,123},[{x,0},6,{atom,barf}]}.
    {badmatch,{atom,true}}.
  {label,123}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{location,"record_SUITE.erl",322}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,124},[{x,0},5,{atom,foo}]}.
    {badmatch,{atom,true}}.
  {label,124}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"record_SUITE.erl",324}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"record_SUITE.erl",325}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tagged_tuple,{f,125},[{y,1},5,{atom,foo}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",327}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,125}.
    {test,is_tagged_tuple,{f,126},[{y,0},5,{atom,foo}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",328}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,126}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"record_SUITE.erl",332}]}.
    {call,1,{f,234}}. % id/1
    {bif,'=:=',{f,0},[{x,0},{atom,true}],{x,1}}.
    {move,{x,0},{y,1}}.
    {bif,'xor',{f,0},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}],{x,0}}.
    {test,is_eq_exact,{f,127},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,127},[{y,1}]}.
    {jump,{f,128}}.
  {label,127}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",333}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,128}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {test,is_eq_exact,{f,129},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,130},[{y,1}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",334}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,129}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {test,is_eq_exact,{f,130},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,130},[{y,1}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",335}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,130}.
    {test,is_tagged_tuple,{f,131},[{y,2},5,{atom,foo}]}.
    {move,{atom,true},{x,0}}.
    {jump,{f,132}}.
  {label,131}.
    {move,{atom,false},{x,0}}.
  {label,132}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,1}}.
    {bif,'xor',
         {f,0},
         [{tr,{x,0},{t_atom,[false,true]}},{tr,{x,1},{t_atom,[false,true]}}],
         {x,0}}.
    {test,is_eq_exact,{f,133},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,133},[{y,1}]}.
    {jump,{f,134}}.
  {label,133}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",337}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,134}.
    {test,is_tagged_tuple,{f,135},[{y,2},6,{atom,barf}]}.
    {move,{atom,true},{x,0}}.
    {jump,{f,136}}.
  {label,135}.
    {move,{atom,false},{x,0}}.
  {label,136}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,1}}.
    {bif,'xor',
         {f,0},
         [{tr,{x,0},{t_atom,[false,true]}},{tr,{x,1},{t_atom,[false,true]}}],
         {x,0}}.
    {test,is_eq_exact,{f,137},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,137},[{y,1}]}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",338}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,137}.
    {move,{literal,[1,
                    {foo,2,undefined,undefined,undefined},
                    3,
                    {bar,undefined,undefined,undefined,4},
                    5,
                    {foo,6,undefined,undefined,undefined},
                    7]},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",343}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,2}}.
    {line,[{location,"record_SUITE.erl",345}]}.
    {call,1,{f,406}}. % '-record_test_3/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,166},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,166},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,166},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,166},[{x,1},{integer,6}]}.
    {test,is_nil,
          {f,166},
          [{tr,{x,2},{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"record_SUITE.erl",346}]}.
    {call,1,{f,401}}. % '-record_test_3/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,165},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,165},[{x,1},{integer,4}]}.
    {test,is_nil,
          {f,165},
          [{tr,{x,2},{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"record_SUITE.erl",348}]}.
    {call,1,{f,396}}. % '-record_test_3/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,164},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,1}]}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,164},[{x,1},5,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,3}]}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,5}]}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,164},[{x,1},5,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,6}]}.
    {test,is_eq_exact,{f,164},[{tr,{x,2},{t_list,any,nil}},{literal,[7]}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"record_SUITE.erl",350}]}.
    {call,1,{f,389}}. % '-record_test_3/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,163},
          [{tr,{x,0},{t_list,any,nil}},{literal,[1,3,5,7]}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"record_SUITE.erl",352}]}.
    {call,1,{f,382}}. % '-record_test_3/1-lc$^4/1-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{5,{t_atom,[bar]}},
                           {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,162},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,
          {f,162},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                         {{5,{t_atom,[foo]}},
                          {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                        none}},
           5,
           {atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,162},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,
          {f,162},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                         {{5,{t_atom,[foo]}},
                          {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                        none}},
           5,
           {atom,bar}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,162},[{x,1},{integer,4}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,
          {f,162},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                         {{5,{t_atom,[foo]}},
                          {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                        none}},
           5,
           {atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,162},[{x,1},{integer,6}]}.
    {test,is_nil,
          {f,162},
          [{tr,{x,2},
               {t_list,{t_union,none,none,none,
                                [{{5,{t_atom,[bar]}},
                                  {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                                 {{5,{t_atom,[foo]}},
                                  {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                                none},
                       nil}}]}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"record_SUITE.erl",354}]}.
    {call,1,{f,375}}. % '-record_test_3/1-lc$^5/1-5-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,
                         {t_number,{'-inf',5}},
                         [{{5,{t_atom,[bar]}},
                           {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,161},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,161},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{'-inf',5}},
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                        none}},
           {integer,1}]}.
    {test,is_nonempty_list,{f,161},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,161},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{'-inf',5}},
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                        none}},
           {integer,3}]}.
    {test,is_nonempty_list,{f,161},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,
          {f,161},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{'-inf',5}},
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,161},[{x,1},{integer,4}]}.
    {test,is_nil,
          {f,161},
          [{tr,{x,2},
               {t_list,{t_union,none,none,
                                {t_number,{'-inf',5}},
                                [{{5,{t_atom,[bar]}},
                                  {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                                none},
                       nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",357}]}.
    {call,1,{f,371}}. % '-record_test_3/1-lc$^6/1-6-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[foo]},
                           2 => {t_integer,{3,3}},
                           3 => {t_atom,[undefined]},
                           4 => {t_atom,[undefined]},
                           5 => {t_atom,[undefined]}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,160},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nil,
          {f,160},
          [{tr,{x,1},
               {t_list,{t_tuple,5,true,
                                #{1 => {t_atom,[foo]},
                                  2 => {t_integer,{3,3}},
                                  3 => {t_atom,[undefined]},
                                  4 => {t_atom,[undefined]},
                                  5 => {t_atom,[undefined]}}},
                       nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",358}]}.
    {call,1,{f,367}}. % '-record_test_3/1-lc$^7/1-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_eq_exact,
        {f,159},
        [{tr,{x,0},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",359}]}.
    {call,1,{f,363}}. % '-record_test_3/1-lc$^8/1-8-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,158},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,158},[{x,1}]}.
    {test,test_arity,{f,158},[{x,1},5]}.
    {test,is_nil,
        {f,158},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",360}]}.
    {call,1,{f,359}}. % '-record_test_3/1-lc$^9/1-9-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_eq_exact,
        {f,157},
        [{tr,{x,0},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",361}]}.
    {call,1,{f,356}}. % '-record_test_3/1-lc$^10/1-10-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,156},[{x,1}]}.
    {test,test_arity,{f,156},[{x,1},5]}.
    {test,is_eq_exact,
        {f,156},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",363}]}.
    {call,1,{f,353}}. % '-record_test_3/1-lc$^11/1-11-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,155},[{x,1}]}.
    {test,test_arity,{f,155},[{x,1},5]}.
    {test,is_eq_exact,
        {f,155},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",365}]}.
    {call,1,{f,349}}. % '-record_test_3/1-lc$^12/1-12-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[foo]},
                           2 => {t_integer,{3,3}},
                           3 => {t_atom,[undefined]},
                           4 => {t_atom,[undefined]},
                           5 => {t_atom,[undefined]}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,154},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nil,
          {f,154},
          [{tr,{x,1},
               {t_list,{t_tuple,5,true,
                                #{1 => {t_atom,[foo]},
                                  2 => {t_integer,{3,3}},
                                  3 => {t_atom,[undefined]},
                                  4 => {t_atom,[undefined]},
                                  5 => {t_atom,[undefined]}}},
                       nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",366}]}.
    {call,1,{f,345}}. % '-record_test_3/1-lc$^13/1-13-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_eq_exact,
        {f,153},
        [{tr,{x,0},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",368}]}.
    {call,1,{f,342}}. % '-record_test_3/1-lc$^14/1-14-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,152},[{x,1}]}.
    {test,test_arity,{f,152},[{x,1},5]}.
    {test,is_eq_exact,
        {f,152},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",371}]}.
    {call,1,{f,339}}. % '-record_test_3/1-lc$^15/1-15-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,151},[{x,1}]}.
    {test,test_arity,{f,151},[{x,1},5]}.
    {test,is_eq_exact,
        {f,151},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",374}]}.
    {call,1,{f,335}}. % '-record_test_3/1-lc$^16/1-16-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,150},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,150},[{x,1}]}.
    {test,test_arity,{f,150},[{x,1},5]}.
    {test,is_nil,
        {f,150},
        [{tr,{x,2},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",376}]}.
    {call,1,{f,331}}. % '-record_test_3/1-lc$^17/1-17-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_eq_exact,
        {f,149},
        [{tr,{x,0},
             {t_list,
                 {t_union,
                     {t_atom,[x]},
                     nil,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},
                             2 => {t_integer,{3,3}},
                             3 => {t_atom,[undefined]},
                             4 => {t_atom,[undefined]},
                             5 => {t_atom,[undefined]}}}}],
                     none},
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",381}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,148},[{x,0},6,{atom,barf}]}.
    {line,[{location,"record_SUITE.erl",382}]}.
    {call,1,{f,176}}. % update_barf/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_atom,[barf]},
                                     2 => {t_cons,{t_integer,{97,99}},nil},
                                     3 => {t_integer,{1,1}}}}}]}}.
    {line,[{location,"record_SUITE.erl",383}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,147},[{x,0},6,{atom,barf}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,147},[{x,1},{literal,"abc"}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,147},[{x,1},{integer,1}]}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",386}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{atom,barf},{x,0}}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,6},{x,0}}.
    {call,1,{f,234}}. % id/1
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,146},[{x,0},{atom,true}]}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",387}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{atom,barf},{x,0}}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,234}}. % id/1
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,138},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,138}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",388}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{atom,foo},{x,0}}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,6},{x,0}}.
    {call,1,{f,234}}. % id/1
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,139},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,139}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",390}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{atom,barf},{x,0}}.
    {line,[{location,"record_SUITE.erl",391}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,foo},{x,0}}.
    {line,[{location,"record_SUITE.erl",392}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,6},{x,0}}.
    {line,[{location,"record_SUITE.erl",393}]}.
    {call,1,{f,234}}. % id/1
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{x,0},{y,1}}.
    {swap,{x,0},{x,2}}.
    {line,[{location,"record_SUITE.erl",395}]}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,145},[{x,0},{atom,true}]}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {line,[{location,"record_SUITE.erl",396}]}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,140},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,140}.
    {move,{literal,{a}},{x,0}}.
    {line,[{location,"record_SUITE.erl",399}]}.
    {call,1,{f,234}}. % id/1
    {move,{x,0},{y,2}}.
    {line,[{location,"record_SUITE.erl",407}]}.
    {call,1,{f,329}}. % '-record_test_3/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"record_SUITE.erl",408}]}.
    {call,1,{f,329}}. % '-record_test_3/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test,is_tagged_tuple,{f,141},[{y,2},10000000,{atom,a}]}.
    {line,[{location,"record_SUITE.erl",411}]}.
    {badmatch,{atom,true}}.
  {label,141}.
    {test,is_tagged_tuple,{f,142},[{y,0},10000000,{atom,a}]}.
    {line,[{location,"record_SUITE.erl",412}]}.
    {badmatch,{atom,true}}.
  {label,142}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"record_SUITE.erl",417}]}.
    {call,1,{f,326}}. % '-record_test_3/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,144},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"record_SUITE.erl",418}]}.
    {call,1,{f,326}}. % '-record_test_3/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,143},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,143}.
    {badmatch,{atom,ok}}.
  {label,144}.
    {line,[{location,"record_SUITE.erl",417}]}.
    {badmatch,{atom,ok}}.
  {label,145}.
    {line,[{location,"record_SUITE.erl",395}]}.
    {badmatch,{atom,error}}.
  {label,146}.
    {line,[{location,"record_SUITE.erl",386}]}.
    {badmatch,{atom,false}}.
  {label,147}.
    {line,[{location,"record_SUITE.erl",383}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{location,"record_SUITE.erl",381}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{location,"record_SUITE.erl",376}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{location,"record_SUITE.erl",374}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{location,"record_SUITE.erl",371}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{location,"record_SUITE.erl",368}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{location,"record_SUITE.erl",366}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{location,"record_SUITE.erl",365}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{location,"record_SUITE.erl",363}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{location,"record_SUITE.erl",361}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"record_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"record_SUITE.erl",359}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"record_SUITE.erl",358}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"record_SUITE.erl",357}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"record_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"record_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"record_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"record_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"record_SUITE.erl",346}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{location,"record_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{location,"record_SUITE.erl",320}]}.
    {badmatch,{atom,false}}.
  {label,168}.
    {line,[{location,"record_SUITE.erl",316}]}.
    {badmatch,{atom,false}}.


{function, record_access_in_guards, 1, 170}.
  {label,169}.
    {line,[{location,"record_SUITE.erl",422}]}.
    {func_info,{atom,record_SUITE},{atom,record_access_in_guards},1}.
  {label,170}.
    {test,is_list,{f,169},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"record_SUITE.erl",423}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"record_SUITE.erl",424}]}.
    {call_ext,1,{extfunc,test_lib,get_data_dir,1}}.
    {call_ext,1,{extfunc,file,set_cwd,1}}.
    {move,{atom,record_SUITE},{x,0}}.
    {line,[{location,"record_SUITE.erl",425}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {test_heap,11,1}.
    {put_list,{atom,report_errors},{x,0},{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,outdir},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{atom,strict_record_tests},{x,0},{y,0}}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{literal,"Options: ~p\n"},{x,0}}.
    {line,[{location,"record_SUITE.erl",429}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{atom,record_access_in_guards},{x,0}}.
    {line,[{location,"record_SUITE.erl",430}]}.
    {call_ext,2,{extfunc,c,c,2}}.
    {test,is_tagged_tuple,{f,172},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,172},[{x,1},{atom,record_access_in_guards}]}.
    {line,[{location,"record_SUITE.erl",431}]}.
    {call_ext,0,{extfunc,record_access_in_guards,t,0}}.
    {test,is_eq_exact,{f,171},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,171}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{location,"record_SUITE.erl",430}]}.
    {badmatch,{x,0}}.


{function, guard_opt, 1, 174}.
  {label,173}.
    {line,[{location,"record_SUITE.erl",442}]}.
    {func_info,{atom,record_SUITE},{atom,guard_opt},1}.
  {label,174}.
    {test,is_list,{f,173},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"record_SUITE.erl",443}]}.
    {call,0,{f,317}}. % '-guard_opt/1-fun-1-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"record_SUITE.erl",456}]}.
    {call,0,{f,315}}. % '-guard_opt/1-fun-2-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {line,[{location,"record_SUITE.erl",461}]}.
    {call,0,{f,305}}. % '-guard_opt/1-fun-4-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"record_SUITE.erl",472}]}.
    {call,0,{f,294}}. % '-guard_opt/1-fun-6-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"record_SUITE.erl",487}]}.
    {call,0,{f,283}}. % '-guard_opt/1-fun-12-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {call_last,0,{f,277},0}. % '-guard_opt/1-fun-14-'/0


{function, update_barf, 1, 176}.
  {label,175}.
    {line,[{location,"record_SUITE.erl",517}]}.
    {func_info,{atom,record_SUITE},{atom,update_barf},1}.
  {label,176}.
    {'%',{var_info,{x,0},[{type,{t_tuple,6,true,#{1 => {t_atom,[barf]}}}}]}}.
    {test_heap,7,1}.
    {update_record,{atom,reuse},
                   6,
                   {x,0},
                   {x,0},
                   {list,[2,{literal,"abc"},3,{integer,1}]}}.
    return.


{function, eval_once, 1, 178}.
  {label,177}.
    {line,[{location,"record_SUITE.erl",520}]}.
    {func_info,{atom,record_SUITE},{atom,eval_once},1}.
  {label,178}.
    {test,is_list,{f,177},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,274},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[true]}}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,1}}.
    {line,[{location,"record_SUITE.erl",521}]}.
    {call,2,{f,180}}. % once/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[true]},
                     none,none,
                     [{{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{1,1}}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,271},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{1 => {t_atom,[foo]},2 => {t_integer,{1,1}}}}}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,1}}.
    {line,[{location,"record_SUITE.erl",524}]}.
    {call,2,{f,180}}. % once/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[true]},
                     none,none,
                     [{{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{1,1}}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,268},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{1 => {t_atom,[foo]},
                       2 => {t_integer,{1,1}},
                       3 => {t_integer,{2,2}}}}}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,1}}.
    {line,[{location,"record_SUITE.erl",527}]}.
    {call,2,{f,180}}. % once/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[true]},
                     none,none,
                     [{{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{1,1}}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,265},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{1 => {t_atom,[foo]},
                       2 => {t_integer,{1,1}},
                       3 => {t_integer,{2,2}},
                       4 => {t_integer,{3,3}}}}}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,1}}.
    {line,[{location,"record_SUITE.erl",530}]}.
    {call,2,{f,180}}. % once/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[true]},
                     none,none,
                     [{{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{1,1}}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,262},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{1 => {t_atom,[foo]},
                       2 => {t_integer,{1,1}},
                       3 => {t_integer,{2,2}},
                       4 => {t_integer,{3,3}},
                       5 => {t_integer,{4,4}}}}}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,1}}.
    {line,[{location,"record_SUITE.erl",533}]}.
    {call,2,{f,180}}. % once/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[true]},
                     none,none,
                     [{{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{1,1}}}}}],
                     none}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, once, 2, 180}.
  {label,179}.
    {line,[{location,"record_SUITE.erl",538}]}.
    {func_info,{atom,record_SUITE},{atom,once},2}.
  {label,180}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,1,any,
                     {t_union,
                         {t_atom,[true]},
                         none,none,
                         [{{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{1,1}}}}}],
                         none}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[undefined]},
                                     4 => {t_atom,[undefined]},
                                     5 => {t_atom,[undefined]}}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,1}}.
    {move,{atom,record_SUITE},{x,0}}.
    {line,[{location,"record_SUITE.erl",539}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,260},
               0,0,
               {x,0},
               {list,[{literal,{foo,undefined,undefined,undefined,
                                    undefined}}]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{1 => {t_atom,[foo]},
                       2 => {t_atom,[undefined]},
                       3 => {t_atom,[undefined]},
                       4 => {t_atom,[undefined]},
                       5 => {t_atom,[undefined]}}}}]}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"record_SUITE.erl",544}]}.
    {call_fun2,
        {atom,safe},
        1,
        {tr,{x,1},
            {t_fun,1,any,
                {t_union,
                    {t_atom,[true]},
                    none,none,
                    [{{5,{t_atom,[foo]}},
                      {t_tuple,5,true,
                          #{1 => {t_atom,[foo]},2 => {t_integer,{1,1}}}}}],
                    none}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[true]},
                     none,none,
                     [{{5,{t_atom,[foo]}},
                       {t_tuple,5,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{1,1}}}}}],
                     none}}]}}.
    {bif,get,{f,0},[{atom,record_SUITE}],{x,1}}.
    {move,{x,0},{y,0}}.
    {test,is_ne_exact,{f,181},[{x,1},{integer,1}]}.
    {test_heap,2,2}.
    {put_list,{x,1},nil,{x,1}}.
    {move,{literal,"Evaluated ~w times\n"},{x,0}}.
    {line,[{location,"record_SUITE.erl",548}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,more_than_once},{x,0}}.
    {line,[{location,"record_SUITE.erl",549}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,181}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, foobar, 1, 183}.
  {label,182}.
    {line,[{location,"record_SUITE.erl",557}]}.
    {func_info,{atom,record_SUITE},{atom,foobar},1}.
  {label,183}.
    {test,is_list,{f,182},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{foo,1}},{x,0}}.
    {line,[{location,"record_SUITE.erl",558}]}.
    {call,1,{f,187}}. % x/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[ok]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[foobar]},
                                 2 => {t_integer,{1,1}}}},
                       3 => {t_integer,{1,1}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, get_bar, 0, 185}.
  {label,184}.
    {line,[{location,"record_SUITE.erl",561}]}.
    {func_info,{atom,record_SUITE},{atom,get_bar},0}.
  {label,185}.
    {move,{literal,{foobar,1}},{x,0}}.
    return.


{function, x, 1, 187}.
  {label,186}.
    {line,[{location,"record_SUITE.erl",564}]}.
    {func_info,{atom,record_SUITE},{atom,x},1}.
  {label,187}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}}}}}]}}.
    {allocate,0,0}.
    {line,[{location,"record_SUITE.erl",566}]}.
    {call,0,{f,185}}. % get_bar/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[foobar]},
                                     2 => {t_integer,{1,1}}}}}]}}.
    {line,[{location,"record_SUITE.erl",568}]}.
    {call,1,{f,189}}. % noop/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{ok,{foobar,1},1}},{x,0}}.
    {deallocate,0}.
    return.


{function, noop, 1, 189}.
  {label,188}.
    {line,[{location,"record_SUITE.erl",575}]}.
    {func_info,{atom,record_SUITE},{atom,noop},1}.
  {label,189}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[foobar]},
                                     2 => {t_integer,{1,1}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, missing_test_heap, 1, 191}.
  {label,190}.
    {line,[{location,"record_SUITE.erl",583}]}.
    {func_info,{atom,record_SUITE},{atom,missing_test_heap},1}.
  {label,191}.
    {test,is_list,{f,190},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{foo_rec,undefined,1,4}},{x,0}}.
    {line,[{location,"record_SUITE.erl",584}]}.
    {call,1,{f,193}}. % missing_test_heap_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 => {t_atom,[foo_rec]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_integer,{4,4}},
                                 2 => {t_integer,{1,1}}}},
                       3 => {t_integer,{2,2}},
                       4 => {t_integer,{5,5}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, missing_test_heap_1, 1, 193}.
  {label,192}.
    {line,[{location,"record_SUITE.erl",590}]}.
    {func_info,{atom,record_SUITE},{atom,missing_test_heap_1},1}.
  {label,193}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_atom,[foo_rec]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_integer,{1,1}},
                                     4 => {t_integer,{4,4}}}}}]}}.
    {move,{literal,{foo_rec,{4,1},2,5}},{x,0}}.
    return.


{function, nested_access, 1, 195}.
  {label,194}.
    {line,[{location,"record_SUITE.erl",601}]}.
    {func_info,{atom,record_SUITE},{atom,nested_access},1}.
  {label,195}.
    {test,is_list,{f,194},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage, 1, 197}.
  {label,196}.
    {line,[{location,"record_SUITE.erl",625}]}.
    {func_info,{atom,record_SUITE},{atom,coverage},1}.
  {label,197}.
    {test,is_list,{f,196},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{rr,1,2,3}},{x,0}}.
    {line,[{location,"record_SUITE.erl",627}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,204},[{x,0},4,{atom,rr}]}.
    {test_heap,5,1}.
    {update_record,{atom,reuse},4,{x,0},{x,1},{list,[4,{integer,42}]}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_lt,{f,203},[{x,2},{x,0}]}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",634}]}.
    {call,1,{f,234}}. % id/1
    {test,is_eq_exact,{f,202},[{x,0},{literal,{rr,1,2,42}}]}.
    {move,{literal,{fileheader,1,2,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",637}]}.
    {call,1,{f,206}}. % check_file_header/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error1]}}]}}.
    {move,{literal,{fileheader,undefined,undefined,false,true}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",638}]}.
    {call,1,{f,206}}. % check_file_header/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error1,error2]}}]}}.
    {test,is_eq_exact,
          {f,201},
          [{tr,{x,0},{t_atom,[error1,error2]}},{atom,error2}]}.
    {move,{literal,{fileheader,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",639}]}.
    {call,1,{f,206}}. % check_file_header/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error1,error2,error3]}}]}}.
    {test,is_eq_exact,
          {f,200},
          [{tr,{x,0},{t_atom,[error1,error2,error3]}},{atom,error3}]}.
    {'catch',{y,0},{f,198}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",642}]}.
    {badrecord,{integer,22}}.
  {label,198}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,199},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",645}]}.
    {call,1,{f,210}}. % coverage_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,199}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",642}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",639}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",638}]}.
    {badmatch,{atom,error1}}.
  {label,202}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",634}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",630}]}.
    if_end.
  {label,204}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",628}]}.
    {badrecord,{x,0}}.


{function, check_file_header, 1, 206}.
  {label,205}.
    {line,[{location,"record_SUITE.erl",649}]}.
    {func_info,{atom,record_SUITE},{atom,check_file_header},1}.
  {label,206}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,5,true,
                     #{1 => {t_atom,[fileheader]},
                       2 =>
                           {t_union,
                               {t_atom,[undefined]},
                               none,
                               {t_integer,{1,1}},
                               none,none},
                       3 =>
                           {t_union,
                               {t_atom,[undefined]},
                               none,
                               {t_integer,{2,2}},
                               none,none},
                       4 => {t_atom,[false,undefined]},
                       5 => {t_atom,[true,undefined]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,
          {f,208},
          [{tr,{x,1},
               {t_union,{t_atom,[undefined]},
                        none,
                        {t_integer,{1,1}},
                        none,none}},
           {tr,{x,2},
               {t_union,{t_atom,[undefined]},
                        none,
                        {t_integer,{2,2}},
                        none,none}}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {get_tuple_element,{x,0},4,{x,0}}.
    {test,is_eq_exact,
          {f,207},
          [{tr,{x,0},{t_atom,[true,undefined]}},
           {tr,{x,1},{t_atom,[false,undefined]}}]}.
    {move,{atom,error3},{x,0}}.
    return.
  {label,207}.
    {move,{atom,error2},{x,0}}.
    return.
  {label,208}.
    {move,{atom,error1},{x,0}}.
    return.


{function, coverage_1, 1, 210}.
  {label,209}.
    {line,[{location,"record_SUITE.erl",659}]}.
    {func_info,{atom,record_SUITE},{atom,coverage_1},1}.
  {label,210}.
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, grab_bag, 1, 212}.
  {label,211}.
    {line,[{location,"record_SUITE.erl",673}]}.
    {func_info,{atom,record_SUITE},{atom,grab_bag},1}.
  {label,212}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {line,[{location,"record_SUITE.erl",679}]}.
    {call,0,{f,258}}. % '-grab_bag/1-fun-0-'/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[true]},
                                     2 => {t_atom,[undefined]}}}}]}}.
    {move,{literal,{foo,y,z,undefined,undefined}},{x,1}}.
    {move,{literal,{foo,x,z,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",684}]}.
    {call,2,{f,254}}. % '-grab_bag/1-fun-1-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,227},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,3},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,252},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {put_tuple2,{x,0},{list,[{atom,default_fun},{x,0}]}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",687}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,226},[{x,0},2,{atom,default_fun}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {move,{x,0},{x,1}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",688}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,225},[{x,0},{integer,9}]}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",710}]}.
    {call,0,{f,250}}. % '-grab_bag/1-fun-4-'/0
    {'%',{var_info,{x,0},[{type,{t_tuple,1,true,#{1 => {t_atom,[gb_nil]}}}}]}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",711}]}.
    {call,0,{f,248}}. % '-grab_bag/1-fun-5-'/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[gb_foo]},
                                     2 => {t_integer,{1,1}}}}}]}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",712}]}.
    {call,0,{f,246}}. % '-grab_bag/1-fun-6-'/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[gb_bar]},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {move,{literal,{gb_rh,undefined,undefined}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",725}]}.
    {call,1,{f,243}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,224},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,{gb_rh,atom,0}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",726}]}.
    {call,1,{f,243}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,223},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,{gb_rh,100,0}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",727}]}.
    {call,1,{f,243}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,222},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,{gb_rh,atom,42}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",728}]}.
    {call,1,{f,243}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,221},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,{gb_nil}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",729}]}.
    {call,1,{f,243}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{gb_bar,2,3}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",730}]}.
    {call,1,{f,243}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",731}]}.
    {call,1,{f,243}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,3},{f,213}}.
    {move,{integer,100},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",756}]}.
    {call,1,{f,240}}. % '-grab_bag/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
  {label,213}.
    {catch_end,{y,3}}.
    {test,is_eq_exact,{f,220},[{x,0},{atom,error}]}.
    {'catch',{y,2},{f,214}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{scope,[6]},{location,"record_SUITE.erl",757}]}.
    {call,1,{f,240}}. % '-grab_bag/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
  {label,214}.
    {catch_end,{y,2}}.
    {test,is_eq_exact,{f,219},[{x,0},{atom,error}]}.
    {'catch',{y,1},{f,215}}.
    {move,{literal,{bar,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[4]},{location,"record_SUITE.erl",758}]}.
    {call,1,{f,240}}. % '-grab_bag/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
  {label,215}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,218},[{x,0},{atom,error}]}.
    {'catch',{y,0},{f,216}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",759}]}.
    {call,1,{f,240}}. % '-grab_bag/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
  {label,216}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,217},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,217},[{x,1}]}.
    {test,test_arity,{f,217},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,217},[{x,1},2,{atom,try_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,217},[{x,1},5,{atom,foo}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,217}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",759}]}.
    {badmatch,{x,0}}.
  {label,218}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",758}]}.
    {badmatch,{x,0}}.
  {label,219}.
    {line,[{scope,[4]},{location,"record_SUITE.erl",757}]}.
    {badmatch,{x,0}}.
  {label,220}.
    {line,[{scope,[6]},{location,"record_SUITE.erl",756}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",728}]}.
    {badmatch,{atom,ok}}.
  {label,222}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",727}]}.
    {badmatch,{atom,ok}}.
  {label,223}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",726}]}.
    {badmatch,{atom,error}}.
  {label,224}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",725}]}.
    {badmatch,{atom,error}}.
  {label,225}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",688}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",687}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",684}]}.
    {badmatch,{atom,false}}.


{function, slow_compilation, 1, 229}.
  {label,228}.
    {line,[{location,"record_SUITE.erl",782}]}.
    {func_info,{atom,record_SUITE},{atom,slow_compilation},1}.
  {label,229}.
    {test,is_list,{f,228},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{slow_r,undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined,
                           undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",783}]}.
    {call,1,{f,234}}. % id/1
    {test,is_tagged_tuple,{f,230},[{x,0},61,{atom,slow_r}]}.
    {test_heap,305,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {get_tuple_element,{x,0},4,{x,4}}.
    {get_tuple_element,{x,0},5,{x,5}}.
    {get_tuple_element,{x,0},6,{x,6}}.
    {get_tuple_element,{x,0},7,{x,7}}.
    {get_tuple_element,{x,0},8,{x,8}}.
    {get_tuple_element,{x,0},9,{x,9}}.
    {get_tuple_element,{x,0},10,{x,10}}.
    {get_tuple_element,{x,0},11,{x,11}}.
    {get_tuple_element,{x,0},12,{x,12}}.
    {get_tuple_element,{x,0},13,{x,13}}.
    {get_tuple_element,{x,0},14,{x,14}}.
    {get_tuple_element,{x,0},15,{x,15}}.
    {get_tuple_element,{x,0},16,{x,16}}.
    {get_tuple_element,{x,0},17,{x,17}}.
    {get_tuple_element,{x,0},18,{x,18}}.
    {get_tuple_element,{x,0},19,{x,19}}.
    {get_tuple_element,{x,0},20,{x,20}}.
    {get_tuple_element,{x,0},21,{x,21}}.
    {get_tuple_element,{x,0},22,{x,22}}.
    {get_tuple_element,{x,0},23,{x,23}}.
    {get_tuple_element,{x,0},24,{x,24}}.
    {get_tuple_element,{x,0},25,{x,25}}.
    {get_tuple_element,{x,0},26,{x,26}}.
    {get_tuple_element,{x,0},27,{x,27}}.
    {get_tuple_element,{x,0},28,{x,28}}.
    {get_tuple_element,{x,0},29,{x,29}}.
    {get_tuple_element,{x,0},30,{x,30}}.
    {get_tuple_element,{x,0},31,{x,31}}.
    {get_tuple_element,{x,0},32,{x,32}}.
    {get_tuple_element,{x,0},33,{x,33}}.
    {get_tuple_element,{x,0},34,{x,34}}.
    {get_tuple_element,{x,0},35,{x,35}}.
    {get_tuple_element,{x,0},36,{x,36}}.
    {get_tuple_element,{x,0},37,{x,37}}.
    {get_tuple_element,{x,0},38,{x,38}}.
    {get_tuple_element,{x,0},39,{x,39}}.
    {get_tuple_element,{x,0},40,{x,40}}.
    {get_tuple_element,{x,0},41,{x,41}}.
    {get_tuple_element,{x,0},42,{x,42}}.
    {get_tuple_element,{x,0},43,{x,43}}.
    {get_tuple_element,{x,0},44,{x,44}}.
    {get_tuple_element,{x,0},45,{x,45}}.
    {get_tuple_element,{x,0},46,{x,46}}.
    {get_tuple_element,{x,0},47,{x,47}}.
    {get_tuple_element,{x,0},48,{x,48}}.
    {get_tuple_element,{x,0},49,{x,49}}.
    {get_tuple_element,{x,0},50,{x,50}}.
    {get_tuple_element,{x,0},51,{x,51}}.
    {get_tuple_element,{x,0},52,{x,52}}.
    {get_tuple_element,{x,0},53,{x,53}}.
    {get_tuple_element,{x,0},54,{x,54}}.
    {get_tuple_element,{x,0},55,{x,55}}.
    {get_tuple_element,{x,0},56,{x,56}}.
    {get_tuple_element,{x,0},57,{x,57}}.
    {get_tuple_element,{x,0},58,{x,58}}.
    {get_tuple_element,{x,0},59,{x,59}}.
    {get_tuple_element,{x,0},60,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,f59},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,59},{list,[{atom,f58},{x,59}]}}.
    {put_list,{x,59},{x,0},{x,0}}.
    {put_tuple2,{x,58},{list,[{atom,f57},{x,58}]}}.
    {put_list,{x,58},{x,0},{x,0}}.
    {put_tuple2,{x,57},{list,[{atom,f56},{x,57}]}}.
    {put_list,{x,57},{x,0},{x,0}}.
    {put_tuple2,{x,56},{list,[{atom,f55},{x,56}]}}.
    {put_list,{x,56},{x,0},{x,0}}.
    {put_tuple2,{x,55},{list,[{atom,f54},{x,55}]}}.
    {put_list,{x,55},{x,0},{x,0}}.
    {put_tuple2,{x,54},{list,[{atom,f53},{x,54}]}}.
    {put_list,{x,54},{x,0},{x,0}}.
    {put_tuple2,{x,53},{list,[{atom,f52},{x,53}]}}.
    {put_list,{x,53},{x,0},{x,0}}.
    {put_tuple2,{x,52},{list,[{atom,f51},{x,52}]}}.
    {put_list,{x,52},{x,0},{x,0}}.
    {put_tuple2,{x,51},{list,[{atom,f40},{x,51}]}}.
    {put_list,{x,51},{x,0},{x,0}}.
    {put_tuple2,{x,50},{list,[{atom,f49},{x,50}]}}.
    {put_list,{x,50},{x,0},{x,0}}.
    {put_tuple2,{x,49},{list,[{atom,f48},{x,49}]}}.
    {put_list,{x,49},{x,0},{x,0}}.
    {put_tuple2,{x,48},{list,[{atom,f47},{x,48}]}}.
    {put_list,{x,48},{x,0},{x,0}}.
    {put_tuple2,{x,47},{list,[{atom,f46},{x,47}]}}.
    {put_list,{x,47},{x,0},{x,0}}.
    {put_tuple2,{x,46},{list,[{atom,f45},{x,46}]}}.
    {put_list,{x,46},{x,0},{x,0}}.
    {put_tuple2,{x,45},{list,[{atom,f44},{x,45}]}}.
    {put_list,{x,45},{x,0},{x,0}}.
    {put_tuple2,{x,44},{list,[{atom,f43},{x,44}]}}.
    {put_list,{x,44},{x,0},{x,0}}.
    {put_tuple2,{x,43},{list,[{atom,f42},{x,43}]}}.
    {put_list,{x,43},{x,0},{x,0}}.
    {put_tuple2,{x,42},{list,[{atom,f41},{x,42}]}}.
    {put_list,{x,42},{x,0},{x,0}}.
    {put_tuple2,{x,41},{list,[{atom,f40},{x,41}]}}.
    {put_list,{x,41},{x,0},{x,0}}.
    {put_tuple2,{x,40},{list,[{atom,f39},{x,40}]}}.
    {put_list,{x,40},{x,0},{x,0}}.
    {put_tuple2,{x,39},{list,[{atom,f38},{x,39}]}}.
    {put_list,{x,39},{x,0},{x,0}}.
    {put_tuple2,{x,38},{list,[{atom,f37},{x,38}]}}.
    {put_list,{x,38},{x,0},{x,0}}.
    {put_tuple2,{x,37},{list,[{atom,f36},{x,37}]}}.
    {put_list,{x,37},{x,0},{x,0}}.
    {put_tuple2,{x,36},{list,[{atom,f35},{x,36}]}}.
    {put_list,{x,36},{x,0},{x,0}}.
    {put_tuple2,{x,35},{list,[{atom,f34},{x,35}]}}.
    {put_list,{x,35},{x,0},{x,0}}.
    {put_tuple2,{x,34},{list,[{atom,f33},{x,34}]}}.
    {put_list,{x,34},{x,0},{x,0}}.
    {put_tuple2,{x,33},{list,[{atom,f32},{x,33}]}}.
    {put_list,{x,33},{x,0},{x,0}}.
    {put_tuple2,{x,32},{list,[{atom,f31},{x,32}]}}.
    {put_list,{x,32},{x,0},{x,0}}.
    {put_tuple2,{x,31},{list,[{atom,f30},{x,31}]}}.
    {put_list,{x,31},{x,0},{x,0}}.
    {put_tuple2,{x,30},{list,[{atom,f29},{x,30}]}}.
    {put_list,{x,30},{x,0},{x,0}}.
    {put_tuple2,{x,29},{list,[{atom,f28},{x,29}]}}.
    {put_list,{x,29},{x,0},{x,0}}.
    {put_tuple2,{x,28},{list,[{atom,f27},{x,28}]}}.
    {put_list,{x,28},{x,0},{x,0}}.
    {put_tuple2,{x,27},{list,[{atom,f26},{x,27}]}}.
    {put_list,{x,27},{x,0},{x,0}}.
    {put_tuple2,{x,26},{list,[{atom,f25},{x,26}]}}.
    {put_list,{x,26},{x,0},{x,0}}.
    {put_tuple2,{x,25},{list,[{atom,f24},{x,25}]}}.
    {put_list,{x,25},{x,0},{x,0}}.
    {put_tuple2,{x,24},{list,[{atom,f23},{x,24}]}}.
    {put_list,{x,24},{x,0},{x,0}}.
    {put_tuple2,{x,23},{list,[{atom,f22},{x,23}]}}.
    {put_list,{x,23},{x,0},{x,0}}.
    {put_tuple2,{x,22},{list,[{atom,f21},{x,22}]}}.
    {put_list,{x,22},{x,0},{x,0}}.
    {put_tuple2,{x,21},{list,[{atom,f20},{x,21}]}}.
    {put_list,{x,21},{x,0},{x,0}}.
    {put_tuple2,{x,20},{list,[{atom,f19},{x,20}]}}.
    {put_list,{x,20},{x,0},{x,0}}.
    {put_tuple2,{x,19},{list,[{atom,f18},{x,19}]}}.
    {put_list,{x,19},{x,0},{x,0}}.
    {put_tuple2,{x,18},{list,[{atom,f17},{x,18}]}}.
    {put_list,{x,18},{x,0},{x,0}}.
    {put_tuple2,{x,17},{list,[{atom,f16},{x,17}]}}.
    {put_list,{x,17},{x,0},{x,0}}.
    {put_tuple2,{x,16},{list,[{atom,f15},{x,16}]}}.
    {put_list,{x,16},{x,0},{x,0}}.
    {put_tuple2,{x,15},{list,[{atom,f14},{x,15}]}}.
    {put_list,{x,15},{x,0},{x,0}}.
    {put_tuple2,{x,14},{list,[{atom,f13},{x,14}]}}.
    {put_list,{x,14},{x,0},{x,0}}.
    {put_tuple2,{x,13},{list,[{atom,f12},{x,13}]}}.
    {put_list,{x,13},{x,0},{x,0}}.
    {put_tuple2,{x,12},{list,[{atom,f11},{x,12}]}}.
    {put_list,{x,12},{x,0},{x,0}}.
    {put_tuple2,{x,11},{list,[{atom,f10},{x,11}]}}.
    {put_list,{x,11},{x,0},{x,0}}.
    {put_tuple2,{x,10},{list,[{atom,f9},{x,10}]}}.
    {put_list,{x,10},{x,0},{x,0}}.
    {put_tuple2,{x,9},{list,[{atom,f8},{x,9}]}}.
    {put_list,{x,9},{x,0},{x,0}}.
    {put_tuple2,{x,8},{list,[{atom,f7},{x,8}]}}.
    {put_list,{x,8},{x,0},{x,0}}.
    {put_tuple2,{x,7},{list,[{atom,f6},{x,7}]}}.
    {put_list,{x,7},{x,0},{x,0}}.
    {put_tuple2,{x,6},{list,[{atom,f5},{x,6}]}}.
    {put_list,{x,6},{x,0},{x,0}}.
    {put_tuple2,{x,5},{list,[{atom,f4},{x,5}]}}.
    {put_list,{x,5},{x,0},{x,0}}.
    {put_tuple2,{x,4},{list,[{atom,f3},{x,4}]}}.
    {put_list,{x,4},{x,0},{x,0}}.
    {put_tuple2,{x,3},{list,[{atom,f2},{x,3}]}}.
    {put_list,{x,3},{x,0},{x,0}}.
    {put_tuple2,{x,2},{list,[{atom,f1},{x,2}]}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,2},{list,[{atom,f1},{x,1}]}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,f0},{x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,230}.
    {line,[{location,"record_SUITE.erl",785}]}.
    {badrecord,{x,0}}.


{function, first_arg, 2, 232}.
  {label,231}.
    {line,[{location,"record_SUITE.erl",807}]}.
    {func_info,{atom,record_SUITE},{atom,first_arg},2}.
  {label,232}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    return.


{function, id, 1, 234}.
  {label,233}.
    {line,[{location,"record_SUITE.erl",809}]}.
    {func_info,{atom,record_SUITE},{atom,id},1}.
  {label,234}.
    return.


{function, module_info, 0, 236}.
  {label,235}.
    {line,[]}.
    {func_info,{atom,record_SUITE},{atom,module_info},0}.
  {label,236}.
    {move,{atom,record_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 238}.
  {label,237}.
    {line,[]}.
    {func_info,{atom,record_SUITE},{atom,module_info},1}.
  {label,238}.
    {move,{x,0},{x,1}}.
    {move,{atom,record_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-grab_bag/1-fun-9-', 1, 240}.
  {label,239}.
    {line,[{location,"record_SUITE.erl",736}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-9-'},1}.
  {label,240}.
    {test,is_tagged_tuple,{f,241},[{x,0},5,{atom,foo}]}.
    {line,[{location,"record_SUITE.erl",737}]}.
    {try_case_end,{literal,{foo,1,2,3,4}}}.
  {label,241}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-grab_bag/1-fun-8-', 1, 243}.
  {label,242}.
    {line,[{location,"record_SUITE.erl",717}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-8-'},1}.
  {label,243}.
    {test,is_tagged_tuple,{f,244},[{x,0},3,{atom,gb_rh}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_atom,{f,244},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_ne,{f,244},[{x,0},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,244}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-grab_bag/1-fun-6-', 0, 246}.
  {label,245}.
    {line,[{location,"record_SUITE.erl",705}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-6-'},0}.
  {label,246}.
    {move,{literal,{gb_bar,2,3}},{x,0}}.
    return.


{function, '-grab_bag/1-fun-5-', 0, 248}.
  {label,247}.
    {line,[{location,"record_SUITE.erl",699}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-5-'},0}.
  {label,248}.
    {move,{literal,{gb_foo,1}},{x,0}}.
    return.


{function, '-grab_bag/1-fun-4-', 0, 250}.
  {label,249}.
    {line,[{location,"record_SUITE.erl",694}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-4-'},0}.
  {label,250}.
    {move,{literal,{gb_nil}},{x,0}}.
    return.


{function, '-grab_bag/1-fun-2-', 1, 252}.
  {label,251}.
    {line,[{location,"record_SUITE.erl",687}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-2-'},1}.
  {label,252}.
    {gc_bif,'*',{f,0},1,[{x,0},{x,0}],{x,0}}.
    return.


{function, '-grab_bag/1-fun-1-', 2, 254}.
  {label,253}.
    {line,[{location,"record_SUITE.erl",681}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-1-'},2}.
  {label,254}.
    {test,is_tagged_tuple,{f,256},[{x,0},5,{atom,foo}]}.
    {test,is_tagged_tuple,{f,255},[{x,1},5,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {bif,'=/=',{f,0},[{x,2},{x,1}],{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {bif,'=/=',{f,0},[{x,0},{x,0}],{x,0}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,232}}. % first_arg/2
  {label,255}.
    {line,[{location,"record_SUITE.erl",682}]}.
    {badrecord,{x,1}}.
  {label,256}.
    {badrecord,{x,0}}.


{function, '-grab_bag/1-fun-0-', 0, 258}.
  {label,257}.
    {line,[{location,"record_SUITE.erl",674}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-0-'},0}.
  {label,258}.
    {move,{literal,{true,undefined}},{x,0}}.
    return.


{function, '-once/2-fun-0-', 1, 260}.
  {label,259}.
    {line,[{location,"record_SUITE.erl",540}]}.
    {func_info,{atom,record_SUITE},{atom,'-once/2-fun-0-'},1}.
  {label,260}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[undefined]},
                                     4 => {t_atom,[undefined]},
                                     5 => {t_atom,[undefined]}}}}]}}.
    {bif,get,{f,0},[{atom,record_SUITE}],{x,1}}.
    {line,[{location,"record_SUITE.erl",541}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,1}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{atom,record_SUITE},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, '-eval_once/1-fun-4-', 1, 262}.
  {label,261}.
    {line,[{location,"record_SUITE.erl",533}]}.
    {func_info,{atom,record_SUITE},{atom,'-eval_once/1-fun-4-'},1}.
  {label,262}.
    {allocate,0,1}.
    {line,[{location,"record_SUITE.erl",534}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,263},[{x,0},5,{atom,foo}]}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {deallocate,0}.
    return.
  {label,263}.
    {badrecord,{x,0}}.


{function, '-eval_once/1-fun-3-', 1, 265}.
  {label,264}.
    {line,[{location,"record_SUITE.erl",530}]}.
    {func_info,{atom,record_SUITE},{atom,'-eval_once/1-fun-3-'},1}.
  {label,265}.
    {allocate,0,1}.
    {line,[{location,"record_SUITE.erl",531}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,266},[{x,0},5,{atom,foo}]}.
    {test_heap,6,1}.
    {update_record,{atom,reuse},
                   5,
                   {x,0},
                   {x,0},
                   {list,[2,{integer,1},3,{integer,2},4,{integer,3}]}}.
    {deallocate,0}.
    return.
  {label,266}.
    {badrecord,{x,0}}.


{function, '-eval_once/1-fun-2-', 1, 268}.
  {label,267}.
    {line,[{location,"record_SUITE.erl",527}]}.
    {func_info,{atom,record_SUITE},{atom,'-eval_once/1-fun-2-'},1}.
  {label,268}.
    {allocate,0,1}.
    {line,[{location,"record_SUITE.erl",528}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,269},[{x,0},5,{atom,foo}]}.
    {test_heap,6,1}.
    {update_record,{atom,reuse},
                   5,
                   {x,0},
                   {x,0},
                   {list,[2,{integer,1},3,{integer,2}]}}.
    {deallocate,0}.
    return.
  {label,269}.
    {badrecord,{x,0}}.


{function, '-eval_once/1-fun-1-', 1, 271}.
  {label,270}.
    {line,[{location,"record_SUITE.erl",524}]}.
    {func_info,{atom,record_SUITE},{atom,'-eval_once/1-fun-1-'},1}.
  {label,271}.
    {allocate,0,1}.
    {line,[{location,"record_SUITE.erl",525}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,272},[{x,0},5,{atom,foo}]}.
    {test_heap,6,1}.
    {update_record,{atom,reuse},5,{x,0},{x,0},{list,[2,{integer,1}]}}.
    {deallocate,0}.
    return.
  {label,272}.
    {badrecord,{x,0}}.


{function, '-eval_once/1-fun-0-', 1, 274}.
  {label,273}.
    {line,[{location,"record_SUITE.erl",521}]}.
    {func_info,{atom,record_SUITE},{atom,'-eval_once/1-fun-0-'},1}.
  {label,274}.
    {allocate,0,1}.
    {line,[{location,"record_SUITE.erl",522}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,275},[{x,0},5,{atom,foo}]}.
    {move,{atom,true},{x,0}}.
    {deallocate,0}.
    return.
  {label,275}.
    {badmatch,{atom,false}}.


{function, '-guard_opt/1-fun-14-', 0, 277}.
  {label,276}.
    {line,[{location,"record_SUITE.erl",504}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-14-'},0}.
  {label,277}.
    {allocate,0,0}.
    {move,{literal,{r,42,7}},{x,0}}.
    {line,[{location,"record_SUITE.erl",509}]}.
    {call,1,{f,280}}. % '-guard_opt/1-fun-13-'/1
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
                                 {t_tuple,3,true,
                                     #{1 => {t_atom,[r]},
                                       2 => {t_integer,{42,42}},
                                       3 => {t_integer,{7,7}}}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,278},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error]},
                 none,none,
                 [{{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_tuple,3,true,
                                 #{1 => {t_atom,[r]},
                                   2 => {t_integer,{42,42}},
                                   3 => {t_integer,{7,7}}}}}}}],
                 none}},
         {literal,{ok,{r,42,7}}}]}.
    {move,{literal,{r,4,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",510}]}.
    {call,1,{f,280}}. % '-guard_opt/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"record_SUITE.erl",511}]}.
    {call,1,{f,280}}. % '-guard_opt/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,278}.
    {line,[{location,"record_SUITE.erl",509}]}.
    {badmatch,{atom,error}}.


{function, '-guard_opt/1-fun-13-', 1, 280}.
  {label,279}.
    {line,[{location,"record_SUITE.erl",505}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-13-'},1}.
  {label,280}.
    {test,is_tagged_tuple,{f,281},[{x,0},3,{atom,r}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,281},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,281},[{x,0},{integer,7}]}.
    {move,{literal,{ok,{r,42,7}}},{x,0}}.
    return.
  {label,281}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-guard_opt/1-fun-12-', 0, 283}.
  {label,282}.
    {line,[{location,"record_SUITE.erl",487}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-12-'},0}.
  {label,283}.
    {allocate,0,0}.
    {move,{literal,{r2,{r1,undefined,undefined},undefined,3}},{x,1}}.
    {move,{literal,{r3,{r1,undefined,undefined},undefined}},{x,2}}.
    {move,{literal,{r1,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",493}]}.
    {call,3,{f,289}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,287},[{x,0},{atom,true}]}.
    {move,{literal,{r2,{r1,undefined,undefined},undefined,3}},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{literal,{r1,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",494}]}.
    {call,3,{f,289}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,286},[{x,0},{atom,true}]}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,{r3,{r1,undefined,undefined},undefined}},{x,2}}.
    {move,{literal,{r1,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",495}]}.
    {call,3,{f,289}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,285},[{x,0},{atom,true}]}.
    {move,{atom,blurf},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{literal,{r1,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",496}]}.
    {call,3,{f,289}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,284},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,284}.
    {move,{literal,{r2,{r1,undefined,undefined},undefined,3}},{x,1}}.
    {move,{literal,{r3,{r1,undefined,undefined},undefined}},{x,2}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"record_SUITE.erl",497}]}.
    {call,3,{f,289}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,{r2,{r1,undefined,undefined},undefined,3}},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"record_SUITE.erl",498}]}.
    {call,3,{f,289}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,{r3,{r1,undefined,undefined},undefined}},{x,2}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"record_SUITE.erl",499}]}.
    {call,3,{f,289}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,blurf},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"record_SUITE.erl",500}]}.
    {call,3,{f,289}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,285}.
    {line,[{location,"record_SUITE.erl",495}]}.
    {badmatch,{atom,false}}.
  {label,286}.
    {line,[{location,"record_SUITE.erl",494}]}.
    {badmatch,{atom,false}}.
  {label,287}.
    {line,[{location,"record_SUITE.erl",493}]}.
    {badmatch,{atom,false}}.


{function, '-guard_opt/1-fun-7-', 3, 289}.
  {label,288}.
    {line,[{location,"record_SUITE.erl",488}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-7-'},3}.
  {label,289}.
    {test,is_tagged_tuple,{f,292},[{x,0},3,{atom,r1}]}.
    {test,is_tagged_tuple,{f,290},[{x,1},4,{atom,r2}]}.
    {jump,{f,291}}.
  {label,290}.
    {test,is_tagged_tuple,{f,292},[{x,2},3,{atom,r3}]}.
  {label,291}.
    {move,{atom,true},{x,0}}.
    return.
  {label,292}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-guard_opt/1-fun-6-', 0, 294}.
  {label,293}.
    {line,[{location,"record_SUITE.erl",472}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-6-'},0}.
  {label,294}.
    {allocate,0,0}.
    {move,{literal,[{a,{r,42,undefined}}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",479}]}.
    {call,1,{f,299}}. % '-guard_opt/1-fun-5-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_integer,{2,2}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,297},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{2,2}}}}}],
                        none}},
           {literal,{ok,2}}]}.
    {move,{literal,[{a,{r1,7,undefined}}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",480}]}.
    {call,1,{f,299}}. % '-guard_opt/1-fun-5-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_integer,{2,2}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,296},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{2,2}}}}}],
                        none}},
           {literal,{ok,2}}]}.
    {move,{literal,[{a,{r1,undefined,undefined}}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",481}]}.
    {call,1,{f,299}}. % '-guard_opt/1-fun-5-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_integer,{2,2}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,295},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{2,2}}}}}],
                        none}},
           {atom,error}]}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{location,"record_SUITE.erl",482}]}.
    {call,1,{f,299}}. % '-guard_opt/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"record_SUITE.erl",483}]}.
    {call,1,{f,299}}. % '-guard_opt/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,295}.
    {line,[{location,"record_SUITE.erl",481}]}.
    {badmatch,{literal,{ok,2}}}.
  {label,296}.
    {line,[{location,"record_SUITE.erl",480}]}.
    {badmatch,{atom,error}}.
  {label,297}.
    {line,[{location,"record_SUITE.erl",479}]}.
    {badmatch,{atom,error}}.


{function, '-guard_opt/1-fun-5-', 1, 299}.
  {label,298}.
    {line,[{location,"record_SUITE.erl",473}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-5-'},1}.
  {label,299}.
    {test,is_nonempty_list,{f,303},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,303},[{x,1},2,{atom,a}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,303},[{x,1}]}.
    {test,test_arity,{f,303},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {select_val,{x,2},{f,303},{list,[{atom,r},{f,301},{atom,r1},{f,300}]}}.
  {label,300}.
    {test,is_nil,{f,303},[{x,0}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {test,is_eq_exact,{f,303},[{x,0},{integer,7}]}.
    {jump,{f,302}}.
  {label,301}.
    {test,is_nil,{f,303},[{x,0}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {test,is_eq_exact,{f,303},[{x,0},{integer,42}]}.
  {label,302}.
    {move,{literal,{ok,2}},{x,0}}.
    return.
  {label,303}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-guard_opt/1-fun-4-', 0, 305}.
  {label,304}.
    {line,[{location,"record_SUITE.erl",461}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-4-'},0}.
  {label,305}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,{r1,true,undefined}},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"record_SUITE.erl",465}]}.
    {call,2,{f,311}}. % '-guard_opt/1-fun-3-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,anything_goes},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"record_SUITE.erl",466}]}.
    {call,2,{f,311}}. % '-guard_opt/1-fun-3-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,1},{f,306}}.
    {move,{literal,{r1,undefined,undefined}},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"record_SUITE.erl",467}]}.
    {call,2,{f,311}}. % '-guard_opt/1-fun-3-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,306}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,309},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,307}}.
    {move,{literal,{r,4,undefined}},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[3,4]},{location,"record_SUITE.erl",468}]}.
    {call,2,{f,311}}. % '-guard_opt/1-fun-3-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,307}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,308},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,308}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",468}]}.
    {badmatch,{x,0}}.
  {label,309}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",467}]}.
    {badmatch,{x,0}}.


{function, '-guard_opt/1-fun-3-', 2, 311}.
  {label,310}.
    {line,[{location,"record_SUITE.erl",462}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-3-'},2}.
  {label,311}.
    {select_val,{x,0},
                {f,310},
                {list,[{atom,false},{f,313},{atom,true},{f,312}]}}.
  {label,312}.
    {test,is_tagged_tuple,{f,310},[{x,1},3,{atom,r1}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,310},[{x,2},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,313}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-guard_opt/1-fun-2-', 0, 315}.
  {label,314}.
    {line,[{location,"record_SUITE.erl",456}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-2-'},0}.
  {label,315}.
    {move,{atom,true},{x,0}}.
    return.


{function, '-guard_opt/1-fun-1-', 0, 317}.
  {label,316}.
    {line,[{location,"record_SUITE.erl",443}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-1-'},0}.
  {label,317}.
    {allocate_heap,2,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,1}]}}.
    {make_fun3,{f,322},0,0,{y,0},{list,[]}}.
    {'%',{var_info,{y,0},[{fun_type,{t_list,any,any}}]}}.
    {move,{literal,[{r,4,7},{r,4,7},{r,1,42}]},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"record_SUITE.erl",451}]}.
    {call,2,{f,322}}. % '-guard_opt/1-fun-0-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {test,is_eq_exact,
          {f,320},
          [{tr,{x,0},{t_cons,any,any}},{literal,[{r,4,7},{r,1,42}]}]}.
    {'catch',{y,1},{f,318}}.
    {move,{literal,[{r1,undefined,undefined}]},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",452}]}.
    {call,2,{f,322}}. % '-guard_opt/1-fun-0-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
  {label,318}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,319},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,319}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",452}]}.
    {badmatch,{x,0}}.
  {label,320}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",450}]}.
    {badmatch,{x,0}}.


{function, '-guard_opt/1-fun-0-', 2, 322}.
  {label,321}.
    {line,[{location,"record_SUITE.erl",444}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-0-'},2}.
  {label,322}.
    {test,is_nonempty_list,{f,324},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,3}}.
    {test,is_tagged_tuple,{f,321},[{x,2},3,{atom,r}]}.
    {test,is_nonempty_list,{f,323},[{x,3}]}.
    {get_list,{x,3},{x,1},{x,4}}.
    {test,is_eq_exact,
          {f,323},
          [{x,1},{tr,{x,2},{t_tuple,3,true,#{1 => {t_atom,[r]}}}}]}.
    {allocate,1,5}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{x,4},{x,1}}.
    {line,[{location,"record_SUITE.erl",445}]}.
    {call_fun,2}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,323}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{x,3},{x,1}}.
    {line,[{location,"record_SUITE.erl",447}]}.
    {call_fun,2}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,324}.
    {test,is_nil,{f,321},[{x,1}]}.
    {move,nil,{x,0}}.
    return.


{function, '-record_test_3/1-fun-19-', 1, 326}.
  {label,325}.
    {line,[{location,"record_SUITE.erl",414}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-fun-19-'},1}.
  {label,326}.
    {test,is_tagged_tuple,{f,327},[{x,0},10000000,{atom,a}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,327}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-record_test_3/1-fun-18-', 1, 329}.
  {label,328}.
    {line,[{location,"record_SUITE.erl",404}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-fun-18-'},1}.
  {label,329}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-record_test_3/1-lc$^17/1-17-', 1, 331}.
  {label,330}.
    {line,[{location,"record_SUITE.erl",376}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^17/1-17-'},1}.
  {label,331}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,333},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,332},[{x,1}]}.
    {test,test_arity,{f,332},[{x,1},5]}.
    {call_only,1,{f,331}}. % '-record_test_3/1-lc$^17/1-17-'/1
  {label,332}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,331}}. % '-record_test_3/1-lc$^17/1-17-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,333}.
    return.


{function, '-record_test_3/1-lc$^16/1-16-', 1, 335}.
  {label,334}.
    {line,[{location,"record_SUITE.erl",374}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^16/1-16-'},1}.
  {label,335}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,337},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,336},[{x,1}]}.
    {test,test_arity,{f,336},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,335}}. % '-record_test_3/1-lc$^16/1-16-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{foo,3,undefined,undefined,undefined}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,336}.
    {call_only,1,{f,335}}. % '-record_test_3/1-lc$^16/1-16-'/1
  {label,337}.
    return.


{function, '-record_test_3/1-lc$^15/1-15-', 1, 339}.
  {label,338}.
    {line,[{location,"record_SUITE.erl",371}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^15/1-15-'},1}.
  {label,339}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,340},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,339}}. % '-record_test_3/1-lc$^15/1-15-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,340}.
    return.


{function, '-record_test_3/1-lc$^14/1-14-', 1, 342}.
  {label,341}.
    {line,[{location,"record_SUITE.erl",368}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^14/1-14-'},1}.
  {label,342}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,343},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,342}}. % '-record_test_3/1-lc$^14/1-14-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,343}.
    return.


{function, '-record_test_3/1-lc$^13/1-13-', 1, 345}.
  {label,344}.
    {line,[{location,"record_SUITE.erl",366}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^13/1-13-'},1}.
  {label,345}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,347},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,346},[{x,1}]}.
    {test,test_arity,{f,346},[{x,1},5]}.
    {call_only,1,{f,345}}. % '-record_test_3/1-lc$^13/1-13-'/1
  {label,346}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,345}}. % '-record_test_3/1-lc$^13/1-13-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,347}.
    return.


{function, '-record_test_3/1-lc$^12/1-12-', 1, 349}.
  {label,348}.
    {line,[{location,"record_SUITE.erl",365}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^12/1-12-'},1}.
  {label,349}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,351},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,350},[{x,1}]}.
    {test,test_arity,{f,350},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,349}}. % '-record_test_3/1-lc$^12/1-12-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[foo]},
                           2 => {t_integer,{3,3}},
                           3 => {t_atom,[undefined]},
                           4 => {t_atom,[undefined]},
                           5 => {t_atom,[undefined]}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{foo,3,undefined,undefined,undefined}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,350}.
    {call_only,1,{f,349}}. % '-record_test_3/1-lc$^12/1-12-'/1
  {label,351}.
    return.


{function, '-record_test_3/1-lc$^11/1-11-', 1, 353}.
  {label,352}.
    {line,[{location,"record_SUITE.erl",363}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^11/1-11-'},1}.
  {label,353}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,354},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,353}}. % '-record_test_3/1-lc$^11/1-11-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,354}.
    return.


{function, '-record_test_3/1-lc$^10/1-10-', 1, 356}.
  {label,355}.
    {line,[{location,"record_SUITE.erl",361}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^10/1-10-'},1}.
  {label,356}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,357},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,356}}. % '-record_test_3/1-lc$^10/1-10-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,357}.
    return.


{function, '-record_test_3/1-lc$^9/1-9-', 1, 359}.
  {label,358}.
    {line,[{location,"record_SUITE.erl",360}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^9/1-9-'},1}.
  {label,359}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,361},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,360},[{x,1}]}.
    {test,test_arity,{f,360},[{x,1},5]}.
    {call_only,1,{f,359}}. % '-record_test_3/1-lc$^9/1-9-'/1
  {label,360}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,359}}. % '-record_test_3/1-lc$^9/1-9-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,361}.
    return.


{function, '-record_test_3/1-lc$^8/1-8-', 1, 363}.
  {label,362}.
    {line,[{location,"record_SUITE.erl",359}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^8/1-8-'},1}.
  {label,363}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,365},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,364},[{x,1}]}.
    {test,test_arity,{f,364},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,363}}. % '-record_test_3/1-lc$^8/1-8-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{foo,3,undefined,undefined,undefined}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,364}.
    {call_only,1,{f,363}}. % '-record_test_3/1-lc$^8/1-8-'/1
  {label,365}.
    return.


{function, '-record_test_3/1-lc$^7/1-7-', 1, 367}.
  {label,366}.
    {line,[{location,"record_SUITE.erl",358}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^7/1-7-'},1}.
  {label,367}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,369},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,368},[{x,1}]}.
    {test,test_arity,{f,368},[{x,1},5]}.
    {call_only,1,{f,367}}. % '-record_test_3/1-lc$^7/1-7-'/1
  {label,368}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,367}}. % '-record_test_3/1-lc$^7/1-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,369}.
    return.


{function, '-record_test_3/1-lc$^6/1-6-', 1, 371}.
  {label,370}.
    {line,[{location,"record_SUITE.erl",357}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^6/1-6-'},1}.
  {label,371}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,373},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,372},[{x,1}]}.
    {test,test_arity,{f,372},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,371}}. % '-record_test_3/1-lc$^6/1-6-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[foo]},
                           2 => {t_integer,{3,3}},
                           3 => {t_atom,[undefined]},
                           4 => {t_atom,[undefined]},
                           5 => {t_atom,[undefined]}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{foo,3,undefined,undefined,undefined}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,372}.
    {call_only,1,{f,371}}. % '-record_test_3/1-lc$^6/1-6-'/1
  {label,373}.
    return.


{function, '-record_test_3/1-lc$^5/1-5-', 1, 375}.
  {label,374}.
    {line,[{location,"record_SUITE.erl",354}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^5/1-5-'},1}.
  {label,375}.
    {test,is_nonempty_list,{f,379},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,376},[{x,1},5,{atom,bar}]}.
    {jump,{f,377}}.
  {label,376}.
    {test,is_lt,{f,378},[{x,1},{integer,5}]}.
  {label,377}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,375}}. % '-record_test_3/1-lc$^5/1-5-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,
                         {t_number,{'-inf',5}},
                         [{{5,{t_atom,[bar]}},
                           {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,378}.
    {call_only,1,{f,375}}. % '-record_test_3/1-lc$^5/1-5-'/1
  {label,379}.
    {test,is_nil,{f,380},[{x,0}]}.
    return.
  {label,380}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_3/1-lc$^4/1-4-', 1, 382}.
  {label,381}.
    {line,[{location,"record_SUITE.erl",352}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^4/1-4-'},1}.
  {label,382}.
    {test,is_nonempty_list,{f,386},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,383},[{x,1},5,{atom,bar}]}.
    {jump,{f,384}}.
  {label,383}.
    {test,is_tagged_tuple,{f,385},[{x,1},5,{atom,foo}]}.
  {label,384}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,382}}. % '-record_test_3/1-lc$^4/1-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{5,{t_atom,[bar]}},
                           {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,385}.
    {call_only,1,{f,382}}. % '-record_test_3/1-lc$^4/1-4-'/1
  {label,386}.
    {test,is_nil,{f,387},[{x,0}]}.
    return.
  {label,387}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_3/1-lc$^3/1-3-', 1, 389}.
  {label,388}.
    {line,[{location,"record_SUITE.erl",350}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^3/1-3-'},1}.
  {label,389}.
    {test,is_nonempty_list,{f,393},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,390},[{x,1},5,{atom,bar}]}.
    {jump,{f,391}}.
  {label,390}.
    {test,is_tagged_tuple,{f,392},[{x,1},5,{atom,foo}]}.
  {label,391}.
    {call_only,1,{f,389}}. % '-record_test_3/1-lc$^3/1-3-'/1
  {label,392}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,389}}. % '-record_test_3/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,393}.
    {test,is_nil,{f,394},[{x,0}]}.
    return.
  {label,394}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_3/1-lc$^2/1-2-', 1, 396}.
  {label,395}.
    {line,[{location,"record_SUITE.erl",348}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^2/1-2-'},1}.
  {label,396}.
    {test,is_nonempty_list,{f,398},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,397},[{x,1},5,{atom,bar}]}.
    {call_only,1,{f,396}}. % '-record_test_3/1-lc$^2/1-2-'/1
  {label,397}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,396}}. % '-record_test_3/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,398}.
    {test,is_nil,{f,399},[{x,0}]}.
    return.
  {label,399}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_3/1-lc$^1/1-1-', 1, 401}.
  {label,400}.
    {line,[{location,"record_SUITE.erl",346}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^1/1-1-'},1}.
  {label,401}.
    {test,is_nonempty_list,{f,403},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,402},[{x,1},5,{atom,bar}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,401}}. % '-record_test_3/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,402}.
    {call_only,1,{f,401}}. % '-record_test_3/1-lc$^1/1-1-'/1
  {label,403}.
    {test,is_nil,{f,404},[{x,0}]}.
    return.
  {label,404}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_3/1-lc$^0/1-0-', 1, 406}.
  {label,405}.
    {line,[{location,"record_SUITE.erl",345}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^0/1-0-'},1}.
  {label,406}.
    {test,is_nonempty_list,{f,408},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,407},[{x,1},5,{atom,foo}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,406}}. % '-record_test_3/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,407}.
    {call_only,1,{f,406}}. % '-record_test_3/1-lc$^0/1-0-'/1
  {label,408}.
    {test,is_nil,{f,409},[{x,0}]}.
    return.
  {label,409}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^23/1-23-', 1, 411}.
  {label,410}.
    {line,[{location,"record_SUITE.erl",252}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^23/1-23-'},1}.
  {label,411}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,413},[{x,0}]}.
    {allocate,1,1}.
    {get_tl,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {call,1,{f,234}}. % id/1
    {bif,is_record,{f,0},[{atom,t},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,412},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,1,{f,411}}. % '-record_test_2/1-lc$^23/1-23-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,412}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,411},1}. % '-record_test_2/1-lc$^23/1-23-'/1
  {label,413}.
    return.


{function, '-record_test_2/1-lc$^22/1-22-', 1, 415}.
  {label,414}.
    {line,[{location,"record_SUITE.erl",251}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^22/1-22-'},1}.
  {label,415}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-record_test_2/1-lc$^21/1-21-', 1, 417}.
  {label,416}.
    {line,[{location,"record_SUITE.erl",248}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^21/1-21-'},1}.
  {label,417}.
    {test,is_tuple,{f,419},[{x,0}]}.
    {test,test_arity,{f,420},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,418},[{x,1},5,{atom,foo}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,417}}. % '-record_test_2/1-lc$^21/1-21-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,418}.
    {call_only,1,{f,417}}. % '-record_test_2/1-lc$^21/1-21-'/1
  {label,419}.
    {test,is_eq_exact,{f,420},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,420}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,417},0}. % '-record_test_2/1-lc$^21/1-21-'/1


{function, '-record_test_2/1-lc$^20/1-20-', 1, 422}.
  {label,421}.
    {line,[{location,"record_SUITE.erl",247}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^20/1-20-'},1}.
  {label,422}.
    {test,is_tuple,{f,424},[{x,0}]}.
    {test,test_arity,{f,425},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,423},[{x,1},5,{atom,bar}]}.
    {call_only,1,{f,422}}. % '-record_test_2/1-lc$^20/1-20-'/1
  {label,423}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,422}}. % '-record_test_2/1-lc$^20/1-20-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,424}.
    {test,is_eq_exact,{f,425},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,425}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,422},0}. % '-record_test_2/1-lc$^20/1-20-'/1


{function, '-record_test_2/1-lc$^19/1-19-', 1, 427}.
  {label,426}.
    {line,[{location,"record_SUITE.erl",245}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^19/1-19-'},1}.
  {label,427}.
    {test,is_tuple,{f,429},[{x,0}]}.
    {test,test_arity,{f,430},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,428},[{x,1},5,{atom,bar}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,427}}. % '-record_test_2/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,428}.
    {call_only,1,{f,427}}. % '-record_test_2/1-lc$^19/1-19-'/1
  {label,429}.
    {test,is_eq_exact,{f,430},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,430}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,427},0}. % '-record_test_2/1-lc$^19/1-19-'/1


{function, '-record_test_2/1-lc$^18/1-18-', 1, 432}.
  {label,431}.
    {line,[{location,"record_SUITE.erl",244}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^18/1-18-'},1}.
  {label,432}.
    {test,is_tuple,{f,434},[{x,0}]}.
    {test,test_arity,{f,435},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,433},[{x,1},5,{atom,foo}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,432}}. % '-record_test_2/1-lc$^18/1-18-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,433}.
    {call_only,1,{f,432}}. % '-record_test_2/1-lc$^18/1-18-'/1
  {label,434}.
    {test,is_eq_exact,{f,435},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,435}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,432},0}. % '-record_test_2/1-lc$^18/1-18-'/1


{function, '-record_test_2/1-lc$^17/1-17-', 1, 437}.
  {label,436}.
    {line,[{location,"record_SUITE.erl",238}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^17/1-17-'},1}.
  {label,437}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,439},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,438},[{x,1}]}.
    {test,test_arity,{f,438},[{x,1},5]}.
    {call_only,1,{f,437}}. % '-record_test_2/1-lc$^17/1-17-'/1
  {label,438}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,437}}. % '-record_test_2/1-lc$^17/1-17-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,439}.
    return.


{function, '-record_test_2/1-lc$^16/1-16-', 1, 441}.
  {label,440}.
    {line,[{location,"record_SUITE.erl",236}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^16/1-16-'},1}.
  {label,441}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,443},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,442},[{x,1}]}.
    {test,test_arity,{f,442},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,441}}. % '-record_test_2/1-lc$^16/1-16-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{foo,3,undefined,undefined,undefined}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,442}.
    {call_only,1,{f,441}}. % '-record_test_2/1-lc$^16/1-16-'/1
  {label,443}.
    return.


{function, '-record_test_2/1-lc$^15/1-15-', 1, 445}.
  {label,444}.
    {line,[{location,"record_SUITE.erl",233}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^15/1-15-'},1}.
  {label,445}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,446},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,445}}. % '-record_test_2/1-lc$^15/1-15-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,446}.
    return.


{function, '-record_test_2/1-lc$^14/1-14-', 1, 448}.
  {label,447}.
    {line,[{location,"record_SUITE.erl",230}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^14/1-14-'},1}.
  {label,448}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,449},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,448}}. % '-record_test_2/1-lc$^14/1-14-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,449}.
    return.


{function, '-record_test_2/1-lc$^13/1-13-', 1, 451}.
  {label,450}.
    {line,[{location,"record_SUITE.erl",228}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^13/1-13-'},1}.
  {label,451}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,453},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,452},[{x,1}]}.
    {test,test_arity,{f,452},[{x,1},5]}.
    {call_only,1,{f,451}}. % '-record_test_2/1-lc$^13/1-13-'/1
  {label,452}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,451}}. % '-record_test_2/1-lc$^13/1-13-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,453}.
    return.


{function, '-record_test_2/1-lc$^12/1-12-', 1, 455}.
  {label,454}.
    {line,[{location,"record_SUITE.erl",227}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^12/1-12-'},1}.
  {label,455}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,457},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,456},[{x,1}]}.
    {test,test_arity,{f,456},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,455}}. % '-record_test_2/1-lc$^12/1-12-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[foo]},
                           2 => {t_integer,{3,3}},
                           3 => {t_atom,[undefined]},
                           4 => {t_atom,[undefined]},
                           5 => {t_atom,[undefined]}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{foo,3,undefined,undefined,undefined}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,456}.
    {call_only,1,{f,455}}. % '-record_test_2/1-lc$^12/1-12-'/1
  {label,457}.
    return.


{function, '-record_test_2/1-lc$^11/1-11-', 1, 459}.
  {label,458}.
    {line,[{location,"record_SUITE.erl",225}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^11/1-11-'},1}.
  {label,459}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,460},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,459}}. % '-record_test_2/1-lc$^11/1-11-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,460}.
    return.


{function, '-record_test_2/1-lc$^10/1-10-', 1, 462}.
  {label,461}.
    {line,[{location,"record_SUITE.erl",223}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^10/1-10-'},1}.
  {label,462}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,463},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,462}}. % '-record_test_2/1-lc$^10/1-10-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,463}.
    return.


{function, '-record_test_2/1-lc$^9/1-9-', 1, 465}.
  {label,464}.
    {line,[{location,"record_SUITE.erl",222}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^9/1-9-'},1}.
  {label,465}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,467},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,466},[{x,1}]}.
    {test,test_arity,{f,466},[{x,1},5]}.
    {call_only,1,{f,465}}. % '-record_test_2/1-lc$^9/1-9-'/1
  {label,466}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,465}}. % '-record_test_2/1-lc$^9/1-9-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,467}.
    return.


{function, '-record_test_2/1-lc$^8/1-8-', 1, 469}.
  {label,468}.
    {line,[{location,"record_SUITE.erl",221}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^8/1-8-'},1}.
  {label,469}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,471},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,470},[{x,1}]}.
    {test,test_arity,{f,470},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,469}}. % '-record_test_2/1-lc$^8/1-8-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{foo,3,undefined,undefined,undefined}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,470}.
    {call_only,1,{f,469}}. % '-record_test_2/1-lc$^8/1-8-'/1
  {label,471}.
    return.


{function, '-record_test_2/1-lc$^7/1-7-', 1, 473}.
  {label,472}.
    {line,[{location,"record_SUITE.erl",220}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^7/1-7-'},1}.
  {label,473}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,475},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,474},[{x,1}]}.
    {test,test_arity,{f,474},[{x,1},5]}.
    {call_only,1,{f,473}}. % '-record_test_2/1-lc$^7/1-7-'/1
  {label,474}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,473}}. % '-record_test_2/1-lc$^7/1-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,475}.
    return.


{function, '-record_test_2/1-lc$^6/1-6-', 1, 477}.
  {label,476}.
    {line,[{location,"record_SUITE.erl",219}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^6/1-6-'},1}.
  {label,477}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         nil,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,
                               #{1 => {t_atom,[foo]},
                                 2 => {t_integer,{3,3}},
                                 3 => {t_atom,[undefined]},
                                 4 => {t_atom,[undefined]},
                                 5 => {t_atom,[undefined]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,479},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,478},[{x,1}]}.
    {test,test_arity,{f,478},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,477}}. % '-record_test_2/1-lc$^6/1-6-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[foo]},
                           2 => {t_integer,{3,3}},
                           3 => {t_atom,[undefined]},
                           4 => {t_atom,[undefined]},
                           5 => {t_atom,[undefined]}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{foo,3,undefined,undefined,undefined}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,478}.
    {call_only,1,{f,477}}. % '-record_test_2/1-lc$^6/1-6-'/1
  {label,479}.
    return.


{function, '-record_test_2/1-lc$^5/1-5-', 1, 481}.
  {label,480}.
    {line,[{location,"record_SUITE.erl",216}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^5/1-5-'},1}.
  {label,481}.
    {test,is_nonempty_list,{f,485},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,482},[{x,1},5,{atom,bar}]}.
    {jump,{f,483}}.
  {label,482}.
    {test,is_lt,{f,484},[{x,1},{integer,5}]}.
  {label,483}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,481}}. % '-record_test_2/1-lc$^5/1-5-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,
                         {t_number,{'-inf',5}},
                         [{{5,{t_atom,[bar]}},
                           {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,484}.
    {call_only,1,{f,481}}. % '-record_test_2/1-lc$^5/1-5-'/1
  {label,485}.
    {test,is_nil,{f,486},[{x,0}]}.
    return.
  {label,486}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^4/1-4-', 1, 488}.
  {label,487}.
    {line,[{location,"record_SUITE.erl",214}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^4/1-4-'},1}.
  {label,488}.
    {test,is_nonempty_list,{f,492},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,489},[{x,1},5,{atom,bar}]}.
    {jump,{f,490}}.
  {label,489}.
    {test,is_tagged_tuple,{f,491},[{x,1},5,{atom,foo}]}.
  {label,490}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,488}}. % '-record_test_2/1-lc$^4/1-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{5,{t_atom,[bar]}},
                           {t_tuple,5,true,#{1 => {t_atom,[bar]}}}},
                          {{5,{t_atom,[foo]}},
                           {t_tuple,5,true,#{1 => {t_atom,[foo]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,491}.
    {call_only,1,{f,488}}. % '-record_test_2/1-lc$^4/1-4-'/1
  {label,492}.
    {test,is_nil,{f,493},[{x,0}]}.
    return.
  {label,493}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^3/1-3-', 1, 495}.
  {label,494}.
    {line,[{location,"record_SUITE.erl",212}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^3/1-3-'},1}.
  {label,495}.
    {test,is_nonempty_list,{f,499},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,496},[{x,1},5,{atom,bar}]}.
    {jump,{f,497}}.
  {label,496}.
    {test,is_tagged_tuple,{f,498},[{x,1},5,{atom,foo}]}.
  {label,497}.
    {call_only,1,{f,495}}. % '-record_test_2/1-lc$^3/1-3-'/1
  {label,498}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,495}}. % '-record_test_2/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,499}.
    {test,is_nil,{f,500},[{x,0}]}.
    return.
  {label,500}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^2/1-2-', 1, 502}.
  {label,501}.
    {line,[{location,"record_SUITE.erl",210}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^2/1-2-'},1}.
  {label,502}.
    {test,is_nonempty_list,{f,504},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,503},[{x,1},5,{atom,bar}]}.
    {call_only,1,{f,502}}. % '-record_test_2/1-lc$^2/1-2-'/1
  {label,503}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,502}}. % '-record_test_2/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,504}.
    {test,is_nil,{f,505},[{x,0}]}.
    return.
  {label,505}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^1/1-1-', 1, 507}.
  {label,506}.
    {line,[{location,"record_SUITE.erl",208}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^1/1-1-'},1}.
  {label,507}.
    {test,is_nonempty_list,{f,509},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,508},[{x,1},5,{atom,bar}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,507}}. % '-record_test_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,508}.
    {call_only,1,{f,507}}. % '-record_test_2/1-lc$^1/1-1-'/1
  {label,509}.
    {test,is_nil,{f,510},[{x,0}]}.
    return.
  {label,510}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^0/1-0-', 1, 512}.
  {label,511}.
    {line,[{location,"record_SUITE.erl",207}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^0/1-0-'},1}.
  {label,512}.
    {test,is_nonempty_list,{f,514},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,513},[{x,1},5,{atom,foo}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,512}}. % '-record_test_2/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,513}.
    {call_only,1,{f,512}}. % '-record_test_2/1-lc$^0/1-0-'/1
  {label,514}.
    {test,is_nil,{f,515},[{x,0}]}.
    return.
  {label,515}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
