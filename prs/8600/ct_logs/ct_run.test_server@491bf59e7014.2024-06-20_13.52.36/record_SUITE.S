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
           {record_updates,1},
           {slow_compilation,1},
           {suite,0}]}.

{attributes, []}.

{labels, 533}.


{function, init_per_testcase, 2, 2}.
  {label,1}.
    {line,[{location,"record_SUITE.erl",34}]}.
    {func_info,{atom,record_SUITE},{atom,init_per_testcase},2}.
  {label,2}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 4}.
  {label,3}.
    {line,[{location,"record_SUITE.erl",37}]}.
    {func_info,{atom,record_SUITE},{atom,end_per_testcase},2}.
  {label,4}.
    {move,{atom,ok},{x,0}}.
    return.


{function, suite, 0, 6}.
  {label,5}.
    {line,[{location,"record_SUITE.erl",40}]}.
    {func_info,{atom,record_SUITE},{atom,suite},0}.
  {label,6}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,2}}]},
          {x,0}}.
    return.


{function, all, 0, 8}.
  {label,7}.
    {line,[{location,"record_SUITE.erl",44}]}.
    {func_info,{atom,record_SUITE},{atom,all},0}.
  {label,8}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 10}.
  {label,9}.
    {line,[{location,"record_SUITE.erl",47}]}.
    {func_info,{atom,record_SUITE},{atom,groups},0}.
  {label,10}.
    {allocate,0,0}.
    {line,[{location,"record_SUITE.erl",48}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[errors,record_test_2,record_test_3,
                                 record_access_in_guards,guard_opt,eval_once,
                                 foobar,missing_test_heap,nested_access,
                                 coverage,grab_bag,slow_compilation,
                                 record_updates]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 12}.
  {label,11}.
    {line,[{location,"record_SUITE.erl",55}]}.
    {func_info,{atom,record_SUITE},{atom,init_per_suite},1}.
  {label,12}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"record_SUITE.erl",56}]}.
    {call,1,{f,244}}. % id/1
    {move,{atom,record_SUITE},{x,0}}.
    {line,[{location,"record_SUITE.erl",57}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 14}.
  {label,13}.
    {line,[{location,"record_SUITE.erl",60}]}.
    {func_info,{atom,record_SUITE},{atom,end_per_suite},1}.
  {label,14}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 16}.
  {label,15}.
    {line,[{location,"record_SUITE.erl",63}]}.
    {func_info,{atom,record_SUITE},{atom,init_per_group},2}.
  {label,16}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 18}.
  {label,17}.
    {line,[{location,"record_SUITE.erl",66}]}.
    {func_info,{atom,record_SUITE},{atom,end_per_group},2}.
  {label,18}.
    {move,{x,1},{x,0}}.
    return.


{function, errors, 1, 20}.
  {label,19}.
    {line,[{location,"record_SUITE.erl",74}]}.
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
    {line,[{location,"record_SUITE.erl",76}]}.
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
    {line,[{location,"record_SUITE.erl",78}]}.
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
    {line,[{scope,[16]},{location,"record_SUITE.erl",79}]}.
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
    {line,[{scope,[14]},{location,"record_SUITE.erl",80}]}.
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
    {line,[{scope,"\f"},{location,"record_SUITE.erl",81}]}.
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
    {line,[{scope,"\n"},{location,"record_SUITE.erl",83}]}.
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
    {line,[{scope,"\b"},{location,"record_SUITE.erl",84}]}.
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
    {line,[{scope,[6]},{location,"record_SUITE.erl",85}]}.
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
    {line,[{scope,[4]},{location,"record_SUITE.erl",86}]}.
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",87}]}.
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
    {line,[{scope,[0]},{location,"record_SUITE.erl",87}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",86}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,[4]},{location,"record_SUITE.erl",85}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,[6]},{location,"record_SUITE.erl",84}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",83}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,"\n"},{location,"record_SUITE.erl",81}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{scope,"\f"},{location,"record_SUITE.erl",80}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{scope,[14]},{location,"record_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,[16]},{location,"record_SUITE.erl",78}]}.
    {badmatch,{x,0}}.


{function, update_foo, 3, 40}.
  {label,39}.
    {line,[{location,"record_SUITE.erl",92}]}.
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
    {line,[{location,"record_SUITE.erl",95}]}.
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
    {line,[{location,"record_SUITE.erl",96}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_bar, 3, 44}.
  {label,43}.
    {line,[{location,"record_SUITE.erl",98}]}.
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
    {line,[{location,"record_SUITE.erl",99}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_bar, 4, 46}.
  {label,45}.
    {line,[{location,"record_SUITE.erl",101}]}.
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
    {line,[{location,"record_SUITE.erl",102}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_bar, 5, 48}.
  {label,47}.
    {line,[{location,"record_SUITE.erl",104}]}.
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
    {line,[{location,"record_SUITE.erl",105}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_barf, 2, 50}.
  {label,49}.
    {line,[{location,"record_SUITE.erl",107}]}.
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
    {line,[{location,"record_SUITE.erl",108}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_barf, 3, 52}.
  {label,51}.
    {line,[{location,"record_SUITE.erl",110}]}.
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
    {line,[{location,"record_SUITE.erl",111}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_barf, 4, 54}.
  {label,53}.
    {line,[{location,"record_SUITE.erl",113}]}.
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
    {line,[{location,"record_SUITE.erl",114}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_barf, 5, 56}.
  {label,55}.
    {line,[{location,"record_SUITE.erl",116}]}.
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
    {line,[{location,"record_SUITE.erl",117}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, update_foo_barf, 6, 58}.
  {label,57}.
    {line,[{location,"record_SUITE.erl",119}]}.
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
    {line,[{location,"record_SUITE.erl",120}]}.
    {badrecord,{literal,{foo,1,2,3,4}}}.


{function, record_test_2, 1, 60}.
  {label,59}.
    {line,[{location,"record_SUITE.erl",126}]}.
    {func_info,{atom,record_SUITE},{atom,record_test_2},1}.
  {label,60}.
    {test,is_list,{f,59},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",159}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,2}}.
    {test,is_tagged_tuple,{f,61},[{x,0},5,{atom,foo}]}.
    {jump,{f,62}}.
  {label,61}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",160}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,62}.
    {test,is_tagged_tuple,{f,63},[{y,2},6,{atom,barf}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",161}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,63}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",170}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,115},[{x,0},5,{atom,foo}]}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",171}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,64},[{x,0},6,{atom,barf}]}.
    {badmatch,{atom,true}}.
  {label,64}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",172}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,65},[{x,0},5,{atom,foo}]}.
    {badmatch,{atom,true}}.
  {label,65}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",174}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,114},[{x,0},5,{atom,foo}]}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",175}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,66},[{x,0},6,{atom,barf}]}.
    {badmatch,{atom,true}}.
  {label,66}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",176}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,67},[{x,0},5,{atom,foo}]}.
    {badmatch,{atom,true}}.
  {label,67}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",178}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",179}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tagged_tuple,{f,68},[{y,1},5,{atom,foo}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",181}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,68}.
    {test,is_tagged_tuple,{f,69},[{y,0},5,{atom,foo}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",182}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,69}.
    {move,{literal,{a}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",188}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,a},{x,0}}.
    {call,1,{f,244}}. % id/1
    {line,[{location,"record_SUITE.erl",188}]}.
    {bif,is_record,{f,0},[{y,1},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,113},[{x,0},{atom,true}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",195}]}.
    {call,1,{f,244}}. % id/1
    {bif,'=:=',{f,0},[{x,0},{atom,true}],{x,1}}.
    {move,{x,0},{y,1}}.
    {bif,'xor',{f,0},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}],{x,0}}.
    {test,is_eq_exact,{f,70},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,70},[{y,1}]}.
    {jump,{f,71}}.
  {label,70}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",196}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,71}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {test,is_eq_exact,{f,72},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,73},[{y,1}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",197}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,72}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {test,is_eq_exact,{f,73},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,73},[{y,1}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",198}]}.
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",200}]}.
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",201}]}.
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",206}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,2}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",208}]}.
    {call,1,{f,529}}. % '-record_test_2/1-lc$^0/1-0-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",209}]}.
    {call,1,{f,524}}. % '-record_test_2/1-lc$^1/1-1-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",211}]}.
    {call,1,{f,519}}. % '-record_test_2/1-lc$^2/1-2-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",213}]}.
    {call,1,{f,512}}. % '-record_test_2/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,109},
          [{tr,{x,0},{t_list,any,nil}},{literal,[1,3,5,7]}]}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",215}]}.
    {call,1,{f,505}}. % '-record_test_2/1-lc$^4/1-4-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",217}]}.
    {call,1,{f,498}}. % '-record_test_2/1-lc$^5/1-5-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",220}]}.
    {call,1,{f,494}}. % '-record_test_2/1-lc$^6/1-6-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",221}]}.
    {call,1,{f,490}}. % '-record_test_2/1-lc$^7/1-7-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",222}]}.
    {call,1,{f,486}}. % '-record_test_2/1-lc$^8/1-8-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",223}]}.
    {call,1,{f,482}}. % '-record_test_2/1-lc$^9/1-9-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",224}]}.
    {call,1,{f,479}}. % '-record_test_2/1-lc$^10/1-10-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",226}]}.
    {call,1,{f,476}}. % '-record_test_2/1-lc$^11/1-11-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",228}]}.
    {call,1,{f,472}}. % '-record_test_2/1-lc$^12/1-12-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",229}]}.
    {call,1,{f,468}}. % '-record_test_2/1-lc$^13/1-13-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",231}]}.
    {call,1,{f,465}}. % '-record_test_2/1-lc$^14/1-14-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",234}]}.
    {call,1,{f,462}}. % '-record_test_2/1-lc$^15/1-15-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",237}]}.
    {call,1,{f,458}}. % '-record_test_2/1-lc$^16/1-16-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",239}]}.
    {call,1,{f,454}}. % '-record_test_2/1-lc$^17/1-17-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",243}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,2}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",245}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,81},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,81}.
    {call,1,{f,449}}. % '-record_test_2/1-lc$^18/1-18-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",246}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,82},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,82}.
    {call,1,{f,444}}. % '-record_test_2/1-lc$^19/1-19-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",248}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,83},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,83}.
    {call,1,{f,439}}. % '-record_test_2/1-lc$^20/1-20-'/1
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
    {line,[{scope,[2]},{location,"record_SUITE.erl",249}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,84},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,84}.
    {init_yregs,{list,[{y,2}]}}.
    {call,1,{f,434}}. % '-record_test_2/1-lc$^21/1-21-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,91},[{tr,{x,0},{t_list,any,nil}},{literal,[2,6]}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",252}]}.
    {call,1,{f,432}}. % '-record_test_2/1-lc$^22/1-22-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,2},{f,85}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",253}]}.
    {call,1,{f,428}}. % '-record_test_2/1-lc$^23/1-23-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
  {label,85}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,90},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,90},[{x,1},2,{atom,badarg}]}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{scope,[1,2]},{location,"record_SUITE.erl",256}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,89},[{x,0},6,{atom,barf}]}.
    {line,[{scope,[1,2]},{location,"record_SUITE.erl",257}]}.
    {call,1,{f,180}}. % update_barf/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_atom,[barf]},
                                     2 => {t_cons,{t_integer,{97,99}},nil},
                                     3 => {t_integer,{1,1}}}}}]}}.
    {line,[{scope,[1,2]},{location,"record_SUITE.erl",258}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,88},[{x,0},6,{atom,barf}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,88},[{x,1},{literal,"abc"}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,88},[{x,1},{integer,1}]}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",261}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tuple,{f,87},[{x,0}]}.
    {test,test_arity,{f,87},[{x,0},2]}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",264}]}.
    {call,1,{f,244}}. % id/1
    {test,is_eq_exact,{f,86},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,86}.
    {case_end,{x,0}}.
  {label,87}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",261}]}.
    {case_end,{x,0}}.
  {label,88}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",258}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",256}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",253}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",249}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",247}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",246}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",245}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",239}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",237}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",234}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",231}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",229}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",228}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",226}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",224}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",223}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",222}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",221}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",220}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",216}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",214}]}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",212}]}.
    {badmatch,{x,0}}.
  {label,110}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",210}]}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",209}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",208}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",188}]}.
    {badmatch,{atom,error}}.
  {label,114}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",174}]}.
    {badmatch,{atom,false}}.
  {label,115}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",170}]}.
    {badmatch,{atom,false}}.


{function, record_test_3, 1, 117}.
  {label,116}.
    {line,[{location,"record_SUITE.erl",270}]}.
    {func_info,{atom,record_SUITE},{atom,record_test_3},1}.
  {label,117}.
    {test,is_list,{f,116},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{location,"record_SUITE.erl",276}]}.
    {call,1,{f,244}}. % id/1
    {move,{integer,-1},{x,2}}.
    {move,{atom,foo},{x,1}}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,118},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,118}.
    {move,{atom,foo},{x,0}}.
    {line,[{location,"record_SUITE.erl",279}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{integer,5},{x,2}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,172},[{x,0},{atom,true}]}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{location,"record_SUITE.erl",283}]}.
    {call,1,{f,244}}. % id/1
    {move,{integer,-1},{x,2}}.
    {move,{atom,foo},{x,1}}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,119},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,119}.
    {move,{atom,foo},{x,0}}.
    {line,[{location,"record_SUITE.erl",284}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{integer,-1},{x,2}}.
    {move,{literal,{foo}},{x,0}}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,120},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,120}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",312}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,2}}.
    {test,is_tagged_tuple,{f,121},[{x,0},5,{atom,foo}]}.
    {jump,{f,122}}.
  {label,121}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",313}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,122}.
    {test,is_tagged_tuple,{f,123},[{y,2},6,{atom,barf}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",314}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,123}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",323}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,171},[{x,0},5,{atom,foo}]}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",324}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,124},[{x,0},6,{atom,barf}]}.
    {badmatch,{atom,true}}.
  {label,124}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{location,"record_SUITE.erl",325}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,125},[{x,0},5,{atom,foo}]}.
    {badmatch,{atom,true}}.
  {label,125}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",327}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,170},[{x,0},5,{atom,foo}]}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",328}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,126},[{x,0},6,{atom,barf}]}.
    {badmatch,{atom,true}}.
  {label,126}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{location,"record_SUITE.erl",329}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,127},[{x,0},5,{atom,foo}]}.
    {badmatch,{atom,true}}.
  {label,127}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"record_SUITE.erl",331}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"record_SUITE.erl",332}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tagged_tuple,{f,128},[{y,1},5,{atom,foo}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",334}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,128}.
    {test,is_tagged_tuple,{f,129},[{y,0},5,{atom,foo}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",335}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,129}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"record_SUITE.erl",339}]}.
    {call,1,{f,244}}. % id/1
    {bif,'=:=',{f,0},[{x,0},{atom,true}],{x,1}}.
    {move,{x,0},{y,1}}.
    {bif,'xor',{f,0},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}],{x,0}}.
    {test,is_eq_exact,{f,130},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,130},[{y,1}]}.
    {jump,{f,131}}.
  {label,130}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",340}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,131}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {test,is_eq_exact,{f,132},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,133},[{y,1}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",341}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,132}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,0}}.
    {bif,'xor',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {test,is_eq_exact,{f,133},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,133},[{y,1}]}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",342}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,133}.
    {test,is_tagged_tuple,{f,134},[{y,2},5,{atom,foo}]}.
    {move,{atom,true},{x,0}}.
    {jump,{f,135}}.
  {label,134}.
    {move,{atom,false},{x,0}}.
  {label,135}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,1}}.
    {bif,'xor',
         {f,0},
         [{tr,{x,0},{t_atom,[false,true]}},{tr,{x,1},{t_atom,[false,true]}}],
         {x,0}}.
    {test,is_eq_exact,{f,136},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,136},[{y,1}]}.
    {jump,{f,137}}.
  {label,136}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",344}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,137}.
    {test,is_tagged_tuple,{f,138},[{y,2},6,{atom,barf}]}.
    {move,{atom,true},{x,0}}.
    {jump,{f,139}}.
  {label,138}.
    {move,{atom,false},{x,0}}.
  {label,139}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,1}}.
    {bif,'xor',
         {f,0},
         [{tr,{x,0},{t_atom,[false,true]}},{tr,{x,1},{t_atom,[false,true]}}],
         {x,0}}.
    {test,is_eq_exact,{f,140},[{x,0},{atom,true}]}.
    {test,is_boolean,{f,140},[{y,1}]}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"record_SUITE.erl",345}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,140}.
    {move,{literal,[1,
                    {foo,2,undefined,undefined,undefined},
                    3,
                    {bar,undefined,undefined,undefined,4},
                    5,
                    {foo,6,undefined,undefined,undefined},
                    7]},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",350}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,2}}.
    {line,[{location,"record_SUITE.erl",352}]}.
    {call,1,{f,423}}. % '-record_test_3/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,169},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,169},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,169},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,169},[{x,1},{integer,6}]}.
    {test,is_nil,
          {f,169},
          [{tr,{x,2},{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"record_SUITE.erl",353}]}.
    {call,1,{f,418}}. % '-record_test_3/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,168},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{integer,4}]}.
    {test,is_nil,
          {f,168},
          [{tr,{x,2},{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"record_SUITE.erl",355}]}.
    {call,1,{f,413}}. % '-record_test_3/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,167},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,167},[{x,1},{integer,1}]}.
    {test,is_nonempty_list,{f,167},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,167},[{x,1},5,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,167},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,167},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,167},[{x,1},{integer,3}]}.
    {test,is_nonempty_list,{f,167},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,167},[{x,1},{integer,5}]}.
    {test,is_nonempty_list,{f,167},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,167},[{x,1},5,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,167},[{x,1},{integer,6}]}.
    {test,is_eq_exact,{f,167},[{tr,{x,2},{t_list,any,nil}},{literal,[7]}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"record_SUITE.erl",357}]}.
    {call,1,{f,406}}. % '-record_test_3/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,166},
          [{tr,{x,0},{t_list,any,nil}},{literal,[1,3,5,7]}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"record_SUITE.erl",359}]}.
    {call,1,{f,399}}. % '-record_test_3/1-lc$^4/1-4-'/1
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
    {test,is_nonempty_list,{f,165},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,
          {f,165},
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
    {test,is_eq_exact,{f,165},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,
          {f,165},
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
    {test,is_eq_exact,{f,165},[{x,1},{integer,4}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,
          {f,165},
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
    {test,is_eq_exact,{f,165},[{x,1},{integer,6}]}.
    {test,is_nil,
          {f,165},
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
    {line,[{location,"record_SUITE.erl",361}]}.
    {call,1,{f,392}}. % '-record_test_3/1-lc$^5/1-5-'/1
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
    {test,is_nonempty_list,{f,164},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,164},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{'-inf',5}},
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                        none}},
           {integer,1}]}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,164},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{'-inf',5}},
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                        none}},
           {integer,3}]}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,
          {f,164},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{'-inf',5}},
                        [{{5,{t_atom,[bar]}},
                          {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,4}]}.
    {test,is_nil,
          {f,164},
          [{tr,{x,2},
               {t_list,{t_union,none,none,
                                {t_number,{'-inf',5}},
                                [{{5,{t_atom,[bar]}},
                                  {t_tuple,5,true,#{1 => {t_atom,[bar]}}}}],
                                none},
                       nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",364}]}.
    {call,1,{f,388}}. % '-record_test_3/1-lc$^6/1-6-'/1
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
    {test,is_nonempty_list,{f,163},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nil,
          {f,163},
          [{tr,{x,1},
               {t_list,{t_tuple,5,true,
                                #{1 => {t_atom,[foo]},
                                  2 => {t_integer,{3,3}},
                                  3 => {t_atom,[undefined]},
                                  4 => {t_atom,[undefined]},
                                  5 => {t_atom,[undefined]}}},
                       nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",365}]}.
    {call,1,{f,384}}. % '-record_test_3/1-lc$^7/1-7-'/1
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
        {f,162},
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
    {line,[{location,"record_SUITE.erl",366}]}.
    {call,1,{f,380}}. % '-record_test_3/1-lc$^8/1-8-'/1
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
    {test,is_nonempty_list,{f,161},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,161},[{x,1}]}.
    {test,test_arity,{f,161},[{x,1},5]}.
    {test,is_nil,
        {f,161},
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
    {line,[{location,"record_SUITE.erl",367}]}.
    {call,1,{f,376}}. % '-record_test_3/1-lc$^9/1-9-'/1
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
        {f,160},
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
    {call,1,{f,373}}. % '-record_test_3/1-lc$^10/1-10-'/1
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
    {test,is_tuple,{f,159},[{x,1}]}.
    {test,test_arity,{f,159},[{x,1},5]}.
    {test,is_eq_exact,
        {f,159},
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
    {line,[{location,"record_SUITE.erl",370}]}.
    {call,1,{f,370}}. % '-record_test_3/1-lc$^11/1-11-'/1
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
    {test,is_tuple,{f,158},[{x,1}]}.
    {test,test_arity,{f,158},[{x,1},5]}.
    {test,is_eq_exact,
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
                 nil}},
         {literal,[x,[],{a,b}]}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",372}]}.
    {call,1,{f,366}}. % '-record_test_3/1-lc$^12/1-12-'/1
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
    {test,is_nonempty_list,{f,157},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nil,
          {f,157},
          [{tr,{x,1},
               {t_list,{t_tuple,5,true,
                                #{1 => {t_atom,[foo]},
                                  2 => {t_integer,{3,3}},
                                  3 => {t_atom,[undefined]},
                                  4 => {t_atom,[undefined]},
                                  5 => {t_atom,[undefined]}}},
                       nil}}]}.
    {move,{literal,[{foo,3,undefined,undefined,undefined},x,[],{a,b}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",373}]}.
    {call,1,{f,362}}. % '-record_test_3/1-lc$^13/1-13-'/1
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
        {f,156},
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
    {line,[{location,"record_SUITE.erl",375}]}.
    {call,1,{f,359}}. % '-record_test_3/1-lc$^14/1-14-'/1
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
    {line,[{location,"record_SUITE.erl",378}]}.
    {call,1,{f,356}}. % '-record_test_3/1-lc$^15/1-15-'/1
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
    {test,is_tuple,{f,154},[{x,1}]}.
    {test,test_arity,{f,154},[{x,1},5]}.
    {test,is_eq_exact,
        {f,154},
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
    {line,[{location,"record_SUITE.erl",381}]}.
    {call,1,{f,352}}. % '-record_test_3/1-lc$^16/1-16-'/1
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
    {test,is_nonempty_list,{f,153},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,153},[{x,1}]}.
    {test,test_arity,{f,153},[{x,1},5]}.
    {test,is_nil,
        {f,153},
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
    {line,[{location,"record_SUITE.erl",383}]}.
    {call,1,{f,348}}. % '-record_test_3/1-lc$^17/1-17-'/1
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
        {f,152},
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
    {line,[{location,"record_SUITE.erl",388}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,151},[{x,0},6,{atom,barf}]}.
    {line,[{location,"record_SUITE.erl",389}]}.
    {call,1,{f,180}}. % update_barf/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_atom,[barf]},
                                     2 => {t_cons,{t_integer,{97,99}},nil},
                                     3 => {t_integer,{1,1}}}}}]}}.
    {line,[{location,"record_SUITE.erl",390}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,150},[{x,0},6,{atom,barf}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,150},[{x,1},{literal,"abc"}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,150},[{x,1},{integer,1}]}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",393}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{atom,barf},{x,0}}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,6},{x,0}}.
    {call,1,{f,244}}. % id/1
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,149},[{x,0},{atom,true}]}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",394}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{atom,barf},{x,0}}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,244}}. % id/1
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,141},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,141}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",395}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{atom,foo},{x,0}}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,6},{x,0}}.
    {call,1,{f,244}}. % id/1
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,142},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,142}.
    {move,{literal,{barf,undefined,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{location,"record_SUITE.erl",397}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{atom,barf},{x,0}}.
    {line,[{location,"record_SUITE.erl",398}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,foo},{x,0}}.
    {line,[{location,"record_SUITE.erl",399}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,6},{x,0}}.
    {line,[{location,"record_SUITE.erl",400}]}.
    {call,1,{f,244}}. % id/1
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{x,0},{y,1}}.
    {swap,{x,0},{x,2}}.
    {line,[{location,"record_SUITE.erl",402}]}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,148},[{x,0},{atom,true}]}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {line,[{location,"record_SUITE.erl",403}]}.
    {call_ext,3,{extfunc,erlang,is_record,3}}.
    {test,is_eq_exact,{f,143},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,143}.
    {move,{literal,{a}},{x,0}}.
    {line,[{location,"record_SUITE.erl",406}]}.
    {call,1,{f,244}}. % id/1
    {move,{x,0},{y,2}}.
    {line,[{location,"record_SUITE.erl",414}]}.
    {call,1,{f,346}}. % '-record_test_3/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"record_SUITE.erl",415}]}.
    {call,1,{f,346}}. % '-record_test_3/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test,is_tagged_tuple,{f,144},[{y,2},10000000,{atom,a}]}.
    {line,[{location,"record_SUITE.erl",418}]}.
    {badmatch,{atom,true}}.
  {label,144}.
    {test,is_tagged_tuple,{f,145},[{y,0},10000000,{atom,a}]}.
    {line,[{location,"record_SUITE.erl",419}]}.
    {badmatch,{atom,true}}.
  {label,145}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"record_SUITE.erl",424}]}.
    {call,1,{f,343}}. % '-record_test_3/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,147},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"record_SUITE.erl",425}]}.
    {call,1,{f,343}}. % '-record_test_3/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,146},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,146}.
    {badmatch,{atom,ok}}.
  {label,147}.
    {line,[{location,"record_SUITE.erl",424}]}.
    {badmatch,{atom,ok}}.
  {label,148}.
    {line,[{location,"record_SUITE.erl",402}]}.
    {badmatch,{atom,error}}.
  {label,149}.
    {line,[{location,"record_SUITE.erl",393}]}.
    {badmatch,{atom,false}}.
  {label,150}.
    {line,[{location,"record_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{location,"record_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{location,"record_SUITE.erl",383}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{location,"record_SUITE.erl",381}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{location,"record_SUITE.erl",378}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{location,"record_SUITE.erl",375}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{location,"record_SUITE.erl",373}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"record_SUITE.erl",372}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"record_SUITE.erl",370}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"record_SUITE.erl",368}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"record_SUITE.erl",367}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"record_SUITE.erl",366}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"record_SUITE.erl",365}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"record_SUITE.erl",364}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"record_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"record_SUITE.erl",358}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{location,"record_SUITE.erl",356}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{location,"record_SUITE.erl",354}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{location,"record_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{location,"record_SUITE.erl",352}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{location,"record_SUITE.erl",327}]}.
    {badmatch,{atom,false}}.
  {label,171}.
    {line,[{location,"record_SUITE.erl",323}]}.
    {badmatch,{atom,false}}.
  {label,172}.
    {line,[{location,"record_SUITE.erl",279}]}.
    {badmatch,{atom,false}}.


{function, record_access_in_guards, 1, 174}.
  {label,173}.
    {line,[{location,"record_SUITE.erl",429}]}.
    {func_info,{atom,record_SUITE},{atom,record_access_in_guards},1}.
  {label,174}.
    {test,is_list,{f,173},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"record_SUITE.erl",430}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"record_SUITE.erl",431}]}.
    {call_ext,1,{extfunc,test_lib,get_data_dir,1}}.
    {call_ext,1,{extfunc,file,set_cwd,1}}.
    {move,{atom,record_SUITE},{x,0}}.
    {line,[{location,"record_SUITE.erl",432}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {test_heap,11,1}.
    {put_list,{atom,report_errors},{x,0},{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,outdir},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{atom,strict_record_tests},{x,0},{y,0}}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{literal,"Options: ~p\n"},{x,0}}.
    {line,[{location,"record_SUITE.erl",436}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{atom,record_access_in_guards},{x,0}}.
    {line,[{location,"record_SUITE.erl",437}]}.
    {call_ext,2,{extfunc,c,c,2}}.
    {test,is_tagged_tuple,{f,176},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,176},[{x,1},{atom,record_access_in_guards}]}.
    {line,[{location,"record_SUITE.erl",438}]}.
    {call_ext,0,{extfunc,record_access_in_guards,t,0}}.
    {test,is_eq_exact,{f,175},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,175}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{location,"record_SUITE.erl",437}]}.
    {badmatch,{x,0}}.


{function, guard_opt, 1, 178}.
  {label,177}.
    {line,[{location,"record_SUITE.erl",449}]}.
    {func_info,{atom,record_SUITE},{atom,guard_opt},1}.
  {label,178}.
    {test,is_list,{f,177},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"record_SUITE.erl",450}]}.
    {call,0,{f,334}}. % '-guard_opt/1-fun-1-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"record_SUITE.erl",463}]}.
    {call,0,{f,332}}. % '-guard_opt/1-fun-2-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {line,[{location,"record_SUITE.erl",468}]}.
    {call,0,{f,322}}. % '-guard_opt/1-fun-4-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"record_SUITE.erl",479}]}.
    {call,0,{f,311}}. % '-guard_opt/1-fun-6-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"record_SUITE.erl",494}]}.
    {call,0,{f,300}}. % '-guard_opt/1-fun-12-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {call_last,0,{f,294},0}. % '-guard_opt/1-fun-14-'/0


{function, update_barf, 1, 180}.
  {label,179}.
    {line,[{location,"record_SUITE.erl",524}]}.
    {func_info,{atom,record_SUITE},{atom,update_barf},1}.
  {label,180}.
    {'%',{var_info,{x,0},[{type,{t_tuple,6,true,#{1 => {t_atom,[barf]}}}}]}}.
    {test_heap,7,1}.
    {update_record,{atom,reuse},
                   6,
                   {tr,{x,0},{t_tuple,6,true,#{1 => {t_atom,[barf]}}}},
                   {x,0},
                   {list,[2,{literal,"abc"},3,{integer,1}]}}.
    return.


{function, eval_once, 1, 182}.
  {label,181}.
    {line,[{location,"record_SUITE.erl",527}]}.
    {func_info,{atom,record_SUITE},{atom,eval_once},1}.
  {label,182}.
    {test,is_list,{f,181},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,291},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[true]}}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,1}}.
    {line,[{location,"record_SUITE.erl",528}]}.
    {call,2,{f,184}}. % once/2
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
    {make_fun3,{f,288},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{1 => {t_atom,[foo]},2 => {t_integer,{1,1}}}}}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,1}}.
    {line,[{location,"record_SUITE.erl",531}]}.
    {call,2,{f,184}}. % once/2
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
    {make_fun3,{f,285},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{1 => {t_atom,[foo]},
                       2 => {t_integer,{1,1}},
                       3 => {t_integer,{2,2}}}}}]}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,1}}.
    {line,[{location,"record_SUITE.erl",534}]}.
    {call,2,{f,184}}. % once/2
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
    {make_fun3,{f,282},0,0,{x,0},{list,[]}}.
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
    {line,[{location,"record_SUITE.erl",537}]}.
    {call,2,{f,184}}. % once/2
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
    {make_fun3,{f,279},0,0,{x,0},{list,[]}}.
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
    {line,[{location,"record_SUITE.erl",540}]}.
    {call,2,{f,184}}. % once/2
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


{function, once, 2, 184}.
  {label,183}.
    {line,[{location,"record_SUITE.erl",545}]}.
    {func_info,{atom,record_SUITE},{atom,once},2}.
  {label,184}.
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
    {line,[{location,"record_SUITE.erl",546}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,277},
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
    {line,[{location,"record_SUITE.erl",551}]}.
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
    {test,is_ne_exact,{f,185},[{x,1},{integer,1}]}.
    {test_heap,2,2}.
    {put_list,{x,1},nil,{x,1}}.
    {move,{literal,"Evaluated ~w times\n"},{x,0}}.
    {line,[{location,"record_SUITE.erl",555}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,more_than_once},{x,0}}.
    {line,[{location,"record_SUITE.erl",556}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,185}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, foobar, 1, 187}.
  {label,186}.
    {line,[{location,"record_SUITE.erl",564}]}.
    {func_info,{atom,record_SUITE},{atom,foobar},1}.
  {label,187}.
    {test,is_list,{f,186},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{foo,1}},{x,0}}.
    {line,[{location,"record_SUITE.erl",565}]}.
    {call,1,{f,191}}. % x/1
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


{function, get_bar, 0, 189}.
  {label,188}.
    {line,[{location,"record_SUITE.erl",568}]}.
    {func_info,{atom,record_SUITE},{atom,get_bar},0}.
  {label,189}.
    {move,{literal,{foobar,1}},{x,0}}.
    return.


{function, x, 1, 191}.
  {label,190}.
    {line,[{location,"record_SUITE.erl",571}]}.
    {func_info,{atom,record_SUITE},{atom,x},1}.
  {label,191}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,1}}}}}]}}.
    {allocate,0,0}.
    {line,[{location,"record_SUITE.erl",573}]}.
    {call,0,{f,189}}. % get_bar/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[foobar]},
                                     2 => {t_integer,{1,1}}}}}]}}.
    {line,[{location,"record_SUITE.erl",575}]}.
    {call,1,{f,193}}. % noop/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{ok,{foobar,1},1}},{x,0}}.
    {deallocate,0}.
    return.


{function, noop, 1, 193}.
  {label,192}.
    {line,[{location,"record_SUITE.erl",582}]}.
    {func_info,{atom,record_SUITE},{atom,noop},1}.
  {label,193}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[foobar]},
                                     2 => {t_integer,{1,1}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, missing_test_heap, 1, 195}.
  {label,194}.
    {line,[{location,"record_SUITE.erl",590}]}.
    {func_info,{atom,record_SUITE},{atom,missing_test_heap},1}.
  {label,195}.
    {test,is_list,{f,194},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{foo_rec,undefined,1,4}},{x,0}}.
    {line,[{location,"record_SUITE.erl",591}]}.
    {call,1,{f,197}}. % missing_test_heap_1/1
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


{function, missing_test_heap_1, 1, 197}.
  {label,196}.
    {line,[{location,"record_SUITE.erl",597}]}.
    {func_info,{atom,record_SUITE},{atom,missing_test_heap_1},1}.
  {label,197}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_atom,[foo_rec]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_integer,{1,1}},
                                     4 => {t_integer,{4,4}}}}}]}}.
    {move,{literal,{foo_rec,{4,1},2,5}},{x,0}}.
    return.


{function, nested_access, 1, 199}.
  {label,198}.
    {line,[{location,"record_SUITE.erl",608}]}.
    {func_info,{atom,record_SUITE},{atom,nested_access},1}.
  {label,199}.
    {test,is_list,{f,198},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage, 1, 201}.
  {label,200}.
    {line,[{location,"record_SUITE.erl",632}]}.
    {func_info,{atom,record_SUITE},{atom,coverage},1}.
  {label,201}.
    {test,is_list,{f,200},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{rr,1,2,3}},{x,0}}.
    {line,[{location,"record_SUITE.erl",634}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,208},[{x,0},4,{atom,rr}]}.
    {test_heap,5,1}.
    {update_record,{atom,reuse},
                   4,
                   {tr,{x,0},{t_tuple,4,true,#{1 => {t_atom,[rr]}}}},
                   {x,1},
                   {list,[4,{integer,42}]}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_lt,{f,207},[{x,2},{x,0}]}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",641}]}.
    {call,1,{f,244}}. % id/1
    {test,is_eq_exact,{f,206},[{x,0},{literal,{rr,1,2,42}}]}.
    {move,{literal,{fileheader,1,2,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",644}]}.
    {call,1,{f,210}}. % check_file_header/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error1]}}]}}.
    {move,{literal,{fileheader,undefined,undefined,false,true}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",645}]}.
    {call,1,{f,210}}. % check_file_header/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error1,error2]}}]}}.
    {test,is_eq_exact,
          {f,205},
          [{tr,{x,0},{t_atom,[error1,error2]}},{atom,error2}]}.
    {move,{literal,{fileheader,undefined,undefined,undefined,undefined}},
          {x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",646}]}.
    {call,1,{f,210}}. % check_file_header/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error1,error2,error3]}}]}}.
    {test,is_eq_exact,
          {f,204},
          [{tr,{x,0},{t_atom,[error1,error2,error3]}},{atom,error3}]}.
    {'catch',{y,0},{f,202}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",649}]}.
    {badrecord,{integer,22}}.
  {label,202}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,203},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",652}]}.
    {call,1,{f,214}}. % coverage_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,203}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",649}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",646}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",645}]}.
    {badmatch,{atom,error1}}.
  {label,206}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",641}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",637}]}.
    if_end.
  {label,208}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",635}]}.
    {badrecord,{x,0}}.


{function, check_file_header, 1, 210}.
  {label,209}.
    {line,[{location,"record_SUITE.erl",656}]}.
    {func_info,{atom,record_SUITE},{atom,check_file_header},1}.
  {label,210}.
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
          {f,212},
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
          {f,211},
          [{tr,{x,0},{t_atom,[true,undefined]}},
           {tr,{x,1},{t_atom,[false,undefined]}}]}.
    {move,{atom,error3},{x,0}}.
    return.
  {label,211}.
    {move,{atom,error2},{x,0}}.
    return.
  {label,212}.
    {move,{atom,error1},{x,0}}.
    return.


{function, coverage_1, 1, 214}.
  {label,213}.
    {line,[{location,"record_SUITE.erl",666}]}.
    {func_info,{atom,record_SUITE},{atom,coverage_1},1}.
  {label,214}.
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, grab_bag, 1, 216}.
  {label,215}.
    {line,[{location,"record_SUITE.erl",680}]}.
    {func_info,{atom,record_SUITE},{atom,grab_bag},1}.
  {label,216}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {line,[{location,"record_SUITE.erl",686}]}.
    {call,0,{f,275}}. % '-grab_bag/1-fun-0-'/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[true]},
                                     2 => {t_atom,[undefined]}}}}]}}.
    {move,{literal,{foo,y,z,undefined,undefined}},{x,1}}.
    {move,{literal,{foo,x,z,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",691}]}.
    {call,2,{f,271}}. % '-grab_bag/1-fun-1-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,231},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,3},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,269},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {put_tuple2,{x,0},{list,[{atom,default_fun},{x,0}]}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",694}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,230},[{x,0},2,{atom,default_fun}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {move,{x,0},{x,1}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",695}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,229},[{x,0},{integer,9}]}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",717}]}.
    {call,0,{f,267}}. % '-grab_bag/1-fun-4-'/0
    {'%',{var_info,{x,0},[{type,{t_tuple,1,true,#{1 => {t_atom,[gb_nil]}}}}]}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",718}]}.
    {call,0,{f,265}}. % '-grab_bag/1-fun-5-'/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[gb_foo]},
                                     2 => {t_integer,{1,1}}}}}]}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",719}]}.
    {call,0,{f,263}}. % '-grab_bag/1-fun-6-'/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[gb_bar]},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {move,{literal,{gb_rh,undefined,undefined}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",732}]}.
    {call,1,{f,260}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,228},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,{gb_rh,atom,0}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",733}]}.
    {call,1,{f,260}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,227},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,{gb_rh,100,0}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",734}]}.
    {call,1,{f,260}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,226},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,{gb_rh,atom,42}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",735}]}.
    {call,1,{f,260}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,225},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,{gb_nil}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",736}]}.
    {call,1,{f,260}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{gb_bar,2,3}},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",737}]}.
    {call,1,{f,260}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",738}]}.
    {call,1,{f,260}}. % '-grab_bag/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,3},{f,217}}.
    {move,{integer,100},{x,0}}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",763}]}.
    {call,1,{f,257}}. % '-grab_bag/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
  {label,217}.
    {catch_end,{y,3}}.
    {test,is_eq_exact,{f,224},[{x,0},{atom,error}]}.
    {'catch',{y,2},{f,218}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{scope,[6]},{location,"record_SUITE.erl",764}]}.
    {call,1,{f,257}}. % '-grab_bag/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
  {label,218}.
    {catch_end,{y,2}}.
    {test,is_eq_exact,{f,223},[{x,0},{atom,error}]}.
    {'catch',{y,1},{f,219}}.
    {move,{literal,{bar,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[4]},{location,"record_SUITE.erl",765}]}.
    {call,1,{f,257}}. % '-grab_bag/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
  {label,219}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,222},[{x,0},{atom,error}]}.
    {'catch',{y,0},{f,220}}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",766}]}.
    {call,1,{f,257}}. % '-grab_bag/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
  {label,220}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,221},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,221},[{x,1}]}.
    {test,test_arity,{f,221},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,221},[{x,1},2,{atom,try_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,221},[{x,1},5,{atom,foo}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,221}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",766}]}.
    {badmatch,{x,0}}.
  {label,222}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",765}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[4]},{location,"record_SUITE.erl",764}]}.
    {badmatch,{x,0}}.
  {label,224}.
    {line,[{scope,[6]},{location,"record_SUITE.erl",763}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",735}]}.
    {badmatch,{atom,ok}}.
  {label,226}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",734}]}.
    {badmatch,{atom,ok}}.
  {label,227}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",733}]}.
    {badmatch,{atom,error}}.
  {label,228}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",732}]}.
    {badmatch,{atom,error}}.
  {label,229}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",695}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",694}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,"\b"},{location,"record_SUITE.erl",691}]}.
    {badmatch,{atom,false}}.


{function, slow_compilation, 1, 233}.
  {label,232}.
    {line,[{location,"record_SUITE.erl",789}]}.
    {func_info,{atom,record_SUITE},{atom,slow_compilation},1}.
  {label,233}.
    {test,is_list,{f,232},[{x,0}]}.
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
    {line,[{location,"record_SUITE.erl",790}]}.
    {call,1,{f,244}}. % id/1
    {test,is_tagged_tuple,{f,234},[{x,0},61,{atom,slow_r}]}.
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
  {label,234}.
    {line,[{location,"record_SUITE.erl",792}]}.
    {badrecord,{x,0}}.


{function, record_updates, 1, 236}.
  {label,235}.
    {line,[{location,"record_SUITE.erl",814}]}.
    {func_info,{atom,record_SUITE},{atom,record_updates},1}.
  {label,236}.
    {allocate,0,0}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"record_SUITE.erl",822}]}.
    {call,1,{f,244}}. % id/1
    {call,1,{f,255}}. % '-record_updates/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_atom,[undefined]}}}}]}}.
    {test,is_eq_exact,
          {f,240},
          [{tr,{x,0},
               {t_tuple,5,true,
                        #{1 => {t_atom,[foo]},
                          3 => {t_integer,{2,2}},
                          4 => {t_integer,{3,3}},
                          5 => {t_atom,[undefined]}}}},
           {literal,{foo,42,2,3,undefined}}]}.
    {move,{integer,99},{x,0}}.
    {line,[{location,"record_SUITE.erl",824}]}.
    {call,1,{f,244}}. % id/1
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,foo},
                       {integer,42},
                       {x,0},
                       {integer,3},
                       {atom,undefined}]}}.
    {test,is_eq_exact,
          {f,239},
          [{tr,{x,0},
               {t_tuple,5,true,
                        #{1 => {t_atom,[foo]},
                          2 => {t_integer,{42,42}},
                          4 => {t_integer,{3,3}},
                          5 => {t_atom,[undefined]}}}},
           {literal,{foo,42,99,3,undefined}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"record_SUITE.erl",826}]}.
    {call,1,{f,244}}. % id/1
    {move,{integer,100},{x,0}}.
    {line,[{location,"record_SUITE.erl",836}]}.
    {call,1,{f,244}}. % id/1
    {call,1,{f,253}}. % '-record_updates/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[bar]},
                                     2 => {t_integer,any},
                                     3 => {t_integer,any},
                                     4 => {t_integer,any},
                                     5 => {t_integer,any}}}}]}}.
    {test,is_eq_exact,
          {f,238},
          [{tr,{x,0},
               {t_tuple,5,true,
                        #{1 => {t_atom,[bar]},
                          2 => {t_integer,any},
                          3 => {t_integer,any},
                          4 => {t_integer,any},
                          5 => {t_integer,any}}}},
           {literal,{bar,100,101,102,103}}]}.
    {move,{literal,{foo,undefined,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",844}]}.
    {call,1,{f,244}}. % id/1
    {move,{integer,7},{x,1}}.
    {call,2,{f,250}}. % '-record_updates/1-fun-2-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_atom,[atom]},
                                     3 => {t_integer,any},
                                     4 => {t_integer,{3,3}}}}}]}}.
    {test,is_eq_exact,
          {f,237},
          [{tr,{x,0},
               {t_tuple,5,true,
                        #{1 => {t_atom,[foo]},
                          2 => {t_atom,[atom]},
                          3 => {t_integer,any},
                          4 => {t_integer,{3,3}}}}},
           {literal,{foo,atom,7,3,undefined}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,237}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{location,"record_SUITE.erl",836}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{location,"record_SUITE.erl",824}]}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{location,"record_SUITE.erl",823}]}.
    {badmatch,{x,0}}.


{function, first_arg, 2, 242}.
  {label,241}.
    {line,[{location,"record_SUITE.erl",852}]}.
    {func_info,{atom,record_SUITE},{atom,first_arg},2}.
  {label,242}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    return.


{function, id, 1, 244}.
  {label,243}.
    {line,[{location,"record_SUITE.erl",854}]}.
    {func_info,{atom,record_SUITE},{atom,id},1}.
  {label,244}.
    return.


{function, module_info, 0, 246}.
  {label,245}.
    {line,[]}.
    {func_info,{atom,record_SUITE},{atom,module_info},0}.
  {label,246}.
    {move,{atom,record_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 248}.
  {label,247}.
    {line,[]}.
    {func_info,{atom,record_SUITE},{atom,module_info},1}.
  {label,248}.
    {move,{x,0},{x,1}}.
    {move,{atom,record_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-record_updates/1-fun-2-', 2, 250}.
  {label,249}.
    {line,[{location,"record_SUITE.erl",838}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_updates/1-fun-2-'},2}.
  {label,250}.
    {test,is_integer,{f,249},[{x,1}]}.
    {test,is_tagged_tuple,{f,251},[{x,0},5,{atom,foo}]}.
    {test_heap,6,2}.
    {update_record,{atom,copy},
                   5,
                   {tr,{x,0},{t_tuple,5,true,#{1 => {t_atom,[foo]}}}},
                   {x,0},
                   {list,[2,
                          {atom,atom},
                          3,
                          {tr,{x,1},{t_integer,any}},
                          4,
                          {integer,3}]}}.
    return.
  {label,251}.
    {line,[{location,"record_SUITE.erl",839}]}.
    {badrecord,{x,0}}.


{function, '-record_updates/1-fun-1-', 1, 253}.
  {label,252}.
    {line,[{location,"record_SUITE.erl",830}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_updates/1-fun-1-'},1}.
  {label,253}.
    {test,is_integer,{f,252},[{x,0}]}.
    {test_heap,6,1}.
    {put_tuple2,{x,1},
                {list,[{atom,bar},
                       {x,0},
                       {atom,undefined},
                       {atom,undefined},
                       {atom,undefined}]}}.
    {line,[{location,"record_SUITE.erl",832}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,0},{t_integer,any}},{integer,1}],{x,2}}.
    {test_heap,6,3}.
    {update_record,{atom,inplace},
                   5,
                   {tr,{x,1},
                       {t_tuple,5,true,
                                #{1 => {t_atom,[bar]},
                                  2 => {t_integer,any},
                                  3 => {t_atom,[undefined]},
                                  4 => {t_atom,[undefined]},
                                  5 => {t_atom,[undefined]}}}},
                   {x,1},
                   {list,[3,{tr,{x,2},{t_integer,any}}]}}.
    {line,[{location,"record_SUITE.erl",833}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,0},{t_integer,any}},{integer,2}],{x,2}}.
    {test_heap,6,3}.
    {update_record,{atom,inplace},
                   5,
                   {tr,{x,1},
                       {t_tuple,5,true,
                                #{1 => {t_atom,[bar]},
                                  2 => {t_integer,any},
                                  3 => {t_integer,any},
                                  4 => {t_atom,[undefined]},
                                  5 => {t_atom,[undefined]}}}},
                   {x,1},
                   {list,[4,{tr,{x,2},{t_integer,any}}]}}.
    {line,[{location,"record_SUITE.erl",834}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,0},{t_integer,any}},{integer,3}],{x,0}}.
    {test_heap,6,2}.
    {update_record,{atom,inplace},
                   5,
                   {tr,{x,1},
                       {t_tuple,5,true,
                                #{1 => {t_atom,[bar]},
                                  2 => {t_integer,any},
                                  3 => {t_integer,any},
                                  4 => {t_integer,any},
                                  5 => {t_atom,[undefined]}}}},
                   {x,0},
                   {list,[5,{tr,{x,0},{t_integer,any}}]}}.
    return.


{function, '-record_updates/1-fun-0-', 1, 255}.
  {label,254}.
    {line,[{location,"record_SUITE.erl",815}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_updates/1-fun-0-'},1}.
  {label,255}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,foo},
                       {x,0},
                       {integer,2},
                       {integer,3},
                       {atom,undefined}]}}.
    return.


{function, '-grab_bag/1-fun-9-', 1, 257}.
  {label,256}.
    {line,[{location,"record_SUITE.erl",743}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-9-'},1}.
  {label,257}.
    {test,is_tagged_tuple,{f,258},[{x,0},5,{atom,foo}]}.
    {line,[{location,"record_SUITE.erl",744}]}.
    {try_case_end,{literal,{foo,1,2,3,4}}}.
  {label,258}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-grab_bag/1-fun-8-', 1, 260}.
  {label,259}.
    {line,[{location,"record_SUITE.erl",724}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-8-'},1}.
  {label,260}.
    {test,is_tagged_tuple,{f,261},[{x,0},3,{atom,gb_rh}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_atom,{f,261},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_ne,{f,261},[{x,0},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,261}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-grab_bag/1-fun-6-', 0, 263}.
  {label,262}.
    {line,[{location,"record_SUITE.erl",712}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-6-'},0}.
  {label,263}.
    {move,{literal,{gb_bar,2,3}},{x,0}}.
    return.


{function, '-grab_bag/1-fun-5-', 0, 265}.
  {label,264}.
    {line,[{location,"record_SUITE.erl",706}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-5-'},0}.
  {label,265}.
    {move,{literal,{gb_foo,1}},{x,0}}.
    return.


{function, '-grab_bag/1-fun-4-', 0, 267}.
  {label,266}.
    {line,[{location,"record_SUITE.erl",701}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-4-'},0}.
  {label,267}.
    {move,{literal,{gb_nil}},{x,0}}.
    return.


{function, '-grab_bag/1-fun-2-', 1, 269}.
  {label,268}.
    {line,[{location,"record_SUITE.erl",694}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-2-'},1}.
  {label,269}.
    {gc_bif,'*',{f,0},1,[{x,0},{x,0}],{x,0}}.
    return.


{function, '-grab_bag/1-fun-1-', 2, 271}.
  {label,270}.
    {line,[{location,"record_SUITE.erl",688}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-1-'},2}.
  {label,271}.
    {test,is_tagged_tuple,{f,273},[{x,0},5,{atom,foo}]}.
    {test,is_tagged_tuple,{f,272},[{x,1},5,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {bif,'=/=',{f,0},[{x,2},{x,1}],{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {bif,'=/=',{f,0},[{x,0},{x,0}],{x,0}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,242}}. % first_arg/2
  {label,272}.
    {line,[{location,"record_SUITE.erl",689}]}.
    {badrecord,{x,1}}.
  {label,273}.
    {badrecord,{x,0}}.


{function, '-grab_bag/1-fun-0-', 0, 275}.
  {label,274}.
    {line,[{location,"record_SUITE.erl",681}]}.
    {func_info,{atom,record_SUITE},{atom,'-grab_bag/1-fun-0-'},0}.
  {label,275}.
    {move,{literal,{true,undefined}},{x,0}}.
    return.


{function, '-once/2-fun-0-', 1, 277}.
  {label,276}.
    {line,[{location,"record_SUITE.erl",547}]}.
    {func_info,{atom,record_SUITE},{atom,'-once/2-fun-0-'},1}.
  {label,277}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[undefined]},
                                     4 => {t_atom,[undefined]},
                                     5 => {t_atom,[undefined]}}}}]}}.
    {bif,get,{f,0},[{atom,record_SUITE}],{x,1}}.
    {line,[{location,"record_SUITE.erl",548}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,1}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{atom,record_SUITE},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, '-eval_once/1-fun-4-', 1, 279}.
  {label,278}.
    {line,[{location,"record_SUITE.erl",540}]}.
    {func_info,{atom,record_SUITE},{atom,'-eval_once/1-fun-4-'},1}.
  {label,279}.
    {allocate,0,1}.
    {line,[{location,"record_SUITE.erl",541}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,280},[{x,0},5,{atom,foo}]}.
    {move,{literal,{foo,1,2,3,4}},{x,0}}.
    {deallocate,0}.
    return.
  {label,280}.
    {badrecord,{x,0}}.


{function, '-eval_once/1-fun-3-', 1, 282}.
  {label,281}.
    {line,[{location,"record_SUITE.erl",537}]}.
    {func_info,{atom,record_SUITE},{atom,'-eval_once/1-fun-3-'},1}.
  {label,282}.
    {allocate,0,1}.
    {line,[{location,"record_SUITE.erl",538}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,283},[{x,0},5,{atom,foo}]}.
    {test_heap,6,1}.
    {update_record,{atom,reuse},
                   5,
                   {tr,{x,0},{t_tuple,5,true,#{1 => {t_atom,[foo]}}}},
                   {x,0},
                   {list,[2,{integer,1},3,{integer,2},4,{integer,3}]}}.
    {deallocate,0}.
    return.
  {label,283}.
    {badrecord,{x,0}}.


{function, '-eval_once/1-fun-2-', 1, 285}.
  {label,284}.
    {line,[{location,"record_SUITE.erl",534}]}.
    {func_info,{atom,record_SUITE},{atom,'-eval_once/1-fun-2-'},1}.
  {label,285}.
    {allocate,0,1}.
    {line,[{location,"record_SUITE.erl",535}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,286},[{x,0},5,{atom,foo}]}.
    {test_heap,6,1}.
    {update_record,{atom,reuse},
                   5,
                   {tr,{x,0},{t_tuple,5,true,#{1 => {t_atom,[foo]}}}},
                   {x,0},
                   {list,[2,{integer,1},3,{integer,2}]}}.
    {deallocate,0}.
    return.
  {label,286}.
    {badrecord,{x,0}}.


{function, '-eval_once/1-fun-1-', 1, 288}.
  {label,287}.
    {line,[{location,"record_SUITE.erl",531}]}.
    {func_info,{atom,record_SUITE},{atom,'-eval_once/1-fun-1-'},1}.
  {label,288}.
    {allocate,0,1}.
    {line,[{location,"record_SUITE.erl",532}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,289},[{x,0},5,{atom,foo}]}.
    {test_heap,6,1}.
    {update_record,{atom,reuse},
                   5,
                   {tr,{x,0},{t_tuple,5,true,#{1 => {t_atom,[foo]}}}},
                   {x,0},
                   {list,[2,{integer,1}]}}.
    {deallocate,0}.
    return.
  {label,289}.
    {badrecord,{x,0}}.


{function, '-eval_once/1-fun-0-', 1, 291}.
  {label,290}.
    {line,[{location,"record_SUITE.erl",528}]}.
    {func_info,{atom,record_SUITE},{atom,'-eval_once/1-fun-0-'},1}.
  {label,291}.
    {allocate,0,1}.
    {line,[{location,"record_SUITE.erl",529}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,292},[{x,0},5,{atom,foo}]}.
    {move,{atom,true},{x,0}}.
    {deallocate,0}.
    return.
  {label,292}.
    {badmatch,{atom,false}}.


{function, '-guard_opt/1-fun-14-', 0, 294}.
  {label,293}.
    {line,[{location,"record_SUITE.erl",511}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-14-'},0}.
  {label,294}.
    {allocate,0,0}.
    {move,{literal,{r,42,7}},{x,0}}.
    {line,[{location,"record_SUITE.erl",516}]}.
    {call,1,{f,297}}. % '-guard_opt/1-fun-13-'/1
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
        {f,295},
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
    {line,[{location,"record_SUITE.erl",517}]}.
    {call,1,{f,297}}. % '-guard_opt/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"record_SUITE.erl",518}]}.
    {call,1,{f,297}}. % '-guard_opt/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,295}.
    {line,[{location,"record_SUITE.erl",516}]}.
    {badmatch,{atom,error}}.


{function, '-guard_opt/1-fun-13-', 1, 297}.
  {label,296}.
    {line,[{location,"record_SUITE.erl",512}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-13-'},1}.
  {label,297}.
    {test,is_tagged_tuple,{f,298},[{x,0},3,{atom,r}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,298},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,298},[{x,0},{integer,7}]}.
    {move,{literal,{ok,{r,42,7}}},{x,0}}.
    return.
  {label,298}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-guard_opt/1-fun-12-', 0, 300}.
  {label,299}.
    {line,[{location,"record_SUITE.erl",494}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-12-'},0}.
  {label,300}.
    {allocate,0,0}.
    {move,{literal,{r2,{r1,undefined,undefined},undefined,3}},{x,1}}.
    {move,{literal,{r3,{r1,undefined,undefined},undefined}},{x,2}}.
    {move,{literal,{r1,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",500}]}.
    {call,3,{f,306}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,304},[{x,0},{atom,true}]}.
    {move,{literal,{r2,{r1,undefined,undefined},undefined,3}},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{literal,{r1,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",501}]}.
    {call,3,{f,306}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,303},[{x,0},{atom,true}]}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,{r3,{r1,undefined,undefined},undefined}},{x,2}}.
    {move,{literal,{r1,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",502}]}.
    {call,3,{f,306}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,302},[{x,0},{atom,true}]}.
    {move,{atom,blurf},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{literal,{r1,undefined,undefined}},{x,0}}.
    {line,[{location,"record_SUITE.erl",503}]}.
    {call,3,{f,306}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,301},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,301}.
    {move,{literal,{r2,{r1,undefined,undefined},undefined,3}},{x,1}}.
    {move,{literal,{r3,{r1,undefined,undefined},undefined}},{x,2}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"record_SUITE.erl",504}]}.
    {call,3,{f,306}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,{r2,{r1,undefined,undefined},undefined,3}},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"record_SUITE.erl",505}]}.
    {call,3,{f,306}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,{r3,{r1,undefined,undefined},undefined}},{x,2}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"record_SUITE.erl",506}]}.
    {call,3,{f,306}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,blurf},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"record_SUITE.erl",507}]}.
    {call,3,{f,306}}. % '-guard_opt/1-fun-7-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,302}.
    {line,[{location,"record_SUITE.erl",502}]}.
    {badmatch,{atom,false}}.
  {label,303}.
    {line,[{location,"record_SUITE.erl",501}]}.
    {badmatch,{atom,false}}.
  {label,304}.
    {line,[{location,"record_SUITE.erl",500}]}.
    {badmatch,{atom,false}}.


{function, '-guard_opt/1-fun-7-', 3, 306}.
  {label,305}.
    {line,[{location,"record_SUITE.erl",495}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-7-'},3}.
  {label,306}.
    {test,is_tagged_tuple,{f,309},[{x,0},3,{atom,r1}]}.
    {test,is_tagged_tuple,{f,307},[{x,1},4,{atom,r2}]}.
    {jump,{f,308}}.
  {label,307}.
    {test,is_tagged_tuple,{f,309},[{x,2},3,{atom,r3}]}.
  {label,308}.
    {move,{atom,true},{x,0}}.
    return.
  {label,309}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-guard_opt/1-fun-6-', 0, 311}.
  {label,310}.
    {line,[{location,"record_SUITE.erl",479}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-6-'},0}.
  {label,311}.
    {allocate,0,0}.
    {move,{literal,[{a,{r,42,undefined}}]},{x,0}}.
    {line,[{location,"record_SUITE.erl",486}]}.
    {call,1,{f,316}}. % '-guard_opt/1-fun-5-'/1
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
          {f,314},
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
    {line,[{location,"record_SUITE.erl",487}]}.
    {call,1,{f,316}}. % '-guard_opt/1-fun-5-'/1
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
          {f,313},
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
    {line,[{location,"record_SUITE.erl",488}]}.
    {call,1,{f,316}}. % '-guard_opt/1-fun-5-'/1
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
          {f,312},
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
    {line,[{location,"record_SUITE.erl",489}]}.
    {call,1,{f,316}}. % '-guard_opt/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"record_SUITE.erl",490}]}.
    {call,1,{f,316}}. % '-guard_opt/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,312}.
    {line,[{location,"record_SUITE.erl",488}]}.
    {badmatch,{literal,{ok,2}}}.
  {label,313}.
    {line,[{location,"record_SUITE.erl",487}]}.
    {badmatch,{atom,error}}.
  {label,314}.
    {line,[{location,"record_SUITE.erl",486}]}.
    {badmatch,{atom,error}}.


{function, '-guard_opt/1-fun-5-', 1, 316}.
  {label,315}.
    {line,[{location,"record_SUITE.erl",480}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-5-'},1}.
  {label,316}.
    {test,is_nonempty_list,{f,320},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,320},[{x,1},2,{atom,a}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,320},[{x,1}]}.
    {test,test_arity,{f,320},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {select_val,{x,2},{f,320},{list,[{atom,r},{f,318},{atom,r1},{f,317}]}}.
  {label,317}.
    {test,is_nil,{f,320},[{x,0}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {test,is_eq_exact,{f,320},[{x,0},{integer,7}]}.
    {jump,{f,319}}.
  {label,318}.
    {test,is_nil,{f,320},[{x,0}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {test,is_eq_exact,{f,320},[{x,0},{integer,42}]}.
  {label,319}.
    {move,{literal,{ok,2}},{x,0}}.
    return.
  {label,320}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-guard_opt/1-fun-4-', 0, 322}.
  {label,321}.
    {line,[{location,"record_SUITE.erl",468}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-4-'},0}.
  {label,322}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,{r1,true,undefined}},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"record_SUITE.erl",472}]}.
    {call,2,{f,328}}. % '-guard_opt/1-fun-3-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,anything_goes},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"record_SUITE.erl",473}]}.
    {call,2,{f,328}}. % '-guard_opt/1-fun-3-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,1},{f,323}}.
    {move,{literal,{r1,undefined,undefined}},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"record_SUITE.erl",474}]}.
    {call,2,{f,328}}. % '-guard_opt/1-fun-3-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,323}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,326},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,324}}.
    {move,{literal,{r,4,undefined}},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[3,4]},{location,"record_SUITE.erl",475}]}.
    {call,2,{f,328}}. % '-guard_opt/1-fun-3-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,324}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,325},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,325}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",475}]}.
    {badmatch,{x,0}}.
  {label,326}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",474}]}.
    {badmatch,{x,0}}.


{function, '-guard_opt/1-fun-3-', 2, 328}.
  {label,327}.
    {line,[{location,"record_SUITE.erl",469}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-3-'},2}.
  {label,328}.
    {select_val,{x,0},
                {f,327},
                {list,[{atom,false},{f,330},{atom,true},{f,329}]}}.
  {label,329}.
    {test,is_tagged_tuple,{f,327},[{x,1},3,{atom,r1}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,327},[{x,2},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,330}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-guard_opt/1-fun-2-', 0, 332}.
  {label,331}.
    {line,[{location,"record_SUITE.erl",463}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-2-'},0}.
  {label,332}.
    {move,{atom,true},{x,0}}.
    return.


{function, '-guard_opt/1-fun-1-', 0, 334}.
  {label,333}.
    {line,[{location,"record_SUITE.erl",450}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-1-'},0}.
  {label,334}.
    {allocate_heap,2,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,1}]}}.
    {make_fun3,{f,339},0,0,{y,0},{list,[]}}.
    {'%',{var_info,{y,0},[{fun_type,{t_list,any,any}}]}}.
    {move,{literal,[{r,4,7},{r,4,7},{r,1,42}]},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"record_SUITE.erl",458}]}.
    {call,2,{f,339}}. % '-guard_opt/1-fun-0-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {test,is_eq_exact,
          {f,337},
          [{tr,{x,0},{t_cons,any,any}},{literal,[{r,4,7},{r,1,42}]}]}.
    {'catch',{y,1},{f,335}}.
    {move,{literal,[{r1,undefined,undefined}]},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",459}]}.
    {call,2,{f,339}}. % '-guard_opt/1-fun-0-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
  {label,335}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,336},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,336}.
    {line,[{scope,[0]},{location,"record_SUITE.erl",459}]}.
    {badmatch,{x,0}}.
  {label,337}.
    {line,[{scope,[2]},{location,"record_SUITE.erl",457}]}.
    {badmatch,{x,0}}.


{function, '-guard_opt/1-fun-0-', 2, 339}.
  {label,338}.
    {line,[{location,"record_SUITE.erl",451}]}.
    {func_info,{atom,record_SUITE},{atom,'-guard_opt/1-fun-0-'},2}.
  {label,339}.
    {test,is_nonempty_list,{f,341},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,3}}.
    {test,is_tagged_tuple,{f,338},[{x,2},3,{atom,r}]}.
    {test,is_nonempty_list,{f,340},[{x,3}]}.
    {get_list,{x,3},{x,1},{x,4}}.
    {test,is_eq_exact,
          {f,340},
          [{x,1},{tr,{x,2},{t_tuple,3,true,#{1 => {t_atom,[r]}}}}]}.
    {allocate,1,5}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{x,4},{x,1}}.
    {line,[{location,"record_SUITE.erl",452}]}.
    {call_fun,2}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,340}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{x,3},{x,1}}.
    {line,[{location,"record_SUITE.erl",454}]}.
    {call_fun,2}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,341}.
    {test,is_nil,{f,338},[{x,1}]}.
    {move,nil,{x,0}}.
    return.


{function, '-record_test_3/1-fun-19-', 1, 343}.
  {label,342}.
    {line,[{location,"record_SUITE.erl",421}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-fun-19-'},1}.
  {label,343}.
    {test,is_tagged_tuple,{f,344},[{x,0},10000000,{atom,a}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,344}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-record_test_3/1-fun-18-', 1, 346}.
  {label,345}.
    {line,[{location,"record_SUITE.erl",411}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-fun-18-'},1}.
  {label,346}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-record_test_3/1-lc$^17/1-17-', 1, 348}.
  {label,347}.
    {line,[{location,"record_SUITE.erl",383}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^17/1-17-'},1}.
  {label,348}.
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
    {test,is_nonempty_list,{f,350},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,349},[{x,1}]}.
    {test,test_arity,{f,349},[{x,1},5]}.
    {call_only,1,{f,348}}. % '-record_test_3/1-lc$^17/1-17-'/1
  {label,349}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,348}}. % '-record_test_3/1-lc$^17/1-17-'/1
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
  {label,350}.
    return.


{function, '-record_test_3/1-lc$^16/1-16-', 1, 352}.
  {label,351}.
    {line,[{location,"record_SUITE.erl",381}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^16/1-16-'},1}.
  {label,352}.
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
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,353},[{x,1}]}.
    {test,test_arity,{f,353},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,352}}. % '-record_test_3/1-lc$^16/1-16-'/1
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
  {label,353}.
    {call_only,1,{f,352}}. % '-record_test_3/1-lc$^16/1-16-'/1
  {label,354}.
    return.


{function, '-record_test_3/1-lc$^15/1-15-', 1, 356}.
  {label,355}.
    {line,[{location,"record_SUITE.erl",378}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^15/1-15-'},1}.
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
    {call,1,{f,356}}. % '-record_test_3/1-lc$^15/1-15-'/1
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


{function, '-record_test_3/1-lc$^14/1-14-', 1, 359}.
  {label,358}.
    {line,[{location,"record_SUITE.erl",375}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^14/1-14-'},1}.
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
    {test,is_nonempty_list,{f,360},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,359}}. % '-record_test_3/1-lc$^14/1-14-'/1
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
  {label,360}.
    return.


{function, '-record_test_3/1-lc$^13/1-13-', 1, 362}.
  {label,361}.
    {line,[{location,"record_SUITE.erl",373}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^13/1-13-'},1}.
  {label,362}.
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
    {test,is_nonempty_list,{f,364},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,363},[{x,1}]}.
    {test,test_arity,{f,363},[{x,1},5]}.
    {call_only,1,{f,362}}. % '-record_test_3/1-lc$^13/1-13-'/1
  {label,363}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,362}}. % '-record_test_3/1-lc$^13/1-13-'/1
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
  {label,364}.
    return.


{function, '-record_test_3/1-lc$^12/1-12-', 1, 366}.
  {label,365}.
    {line,[{location,"record_SUITE.erl",372}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^12/1-12-'},1}.
  {label,366}.
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
    {test,is_nonempty_list,{f,368},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,367},[{x,1}]}.
    {test,test_arity,{f,367},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,366}}. % '-record_test_3/1-lc$^12/1-12-'/1
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
  {label,367}.
    {call_only,1,{f,366}}. % '-record_test_3/1-lc$^12/1-12-'/1
  {label,368}.
    return.


{function, '-record_test_3/1-lc$^11/1-11-', 1, 370}.
  {label,369}.
    {line,[{location,"record_SUITE.erl",370}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^11/1-11-'},1}.
  {label,370}.
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
    {test,is_nonempty_list,{f,371},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,370}}. % '-record_test_3/1-lc$^11/1-11-'/1
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
  {label,371}.
    return.


{function, '-record_test_3/1-lc$^10/1-10-', 1, 373}.
  {label,372}.
    {line,[{location,"record_SUITE.erl",368}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^10/1-10-'},1}.
  {label,373}.
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
    {test,is_nonempty_list,{f,374},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,373}}. % '-record_test_3/1-lc$^10/1-10-'/1
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
  {label,374}.
    return.


{function, '-record_test_3/1-lc$^9/1-9-', 1, 376}.
  {label,375}.
    {line,[{location,"record_SUITE.erl",367}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^9/1-9-'},1}.
  {label,376}.
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
    {test,is_nonempty_list,{f,378},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,377},[{x,1}]}.
    {test,test_arity,{f,377},[{x,1},5]}.
    {call_only,1,{f,376}}. % '-record_test_3/1-lc$^9/1-9-'/1
  {label,377}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,376}}. % '-record_test_3/1-lc$^9/1-9-'/1
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
  {label,378}.
    return.


{function, '-record_test_3/1-lc$^8/1-8-', 1, 380}.
  {label,379}.
    {line,[{location,"record_SUITE.erl",366}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^8/1-8-'},1}.
  {label,380}.
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
    {test,is_nonempty_list,{f,382},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,381},[{x,1}]}.
    {test,test_arity,{f,381},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,380}}. % '-record_test_3/1-lc$^8/1-8-'/1
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
  {label,381}.
    {call_only,1,{f,380}}. % '-record_test_3/1-lc$^8/1-8-'/1
  {label,382}.
    return.


{function, '-record_test_3/1-lc$^7/1-7-', 1, 384}.
  {label,383}.
    {line,[{location,"record_SUITE.erl",365}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^7/1-7-'},1}.
  {label,384}.
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
    {test,is_nonempty_list,{f,386},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,385},[{x,1}]}.
    {test,test_arity,{f,385},[{x,1},5]}.
    {call_only,1,{f,384}}. % '-record_test_3/1-lc$^7/1-7-'/1
  {label,385}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,384}}. % '-record_test_3/1-lc$^7/1-7-'/1
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
  {label,386}.
    return.


{function, '-record_test_3/1-lc$^6/1-6-', 1, 388}.
  {label,387}.
    {line,[{location,"record_SUITE.erl",364}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^6/1-6-'},1}.
  {label,388}.
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
    {test,is_nonempty_list,{f,390},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,389},[{x,1}]}.
    {test,test_arity,{f,389},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,388}}. % '-record_test_3/1-lc$^6/1-6-'/1
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
  {label,389}.
    {call_only,1,{f,388}}. % '-record_test_3/1-lc$^6/1-6-'/1
  {label,390}.
    return.


{function, '-record_test_3/1-lc$^5/1-5-', 1, 392}.
  {label,391}.
    {line,[{location,"record_SUITE.erl",361}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^5/1-5-'},1}.
  {label,392}.
    {test,is_nonempty_list,{f,396},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,393},[{x,1},5,{atom,bar}]}.
    {jump,{f,394}}.
  {label,393}.
    {test,is_lt,{f,395},[{x,1},{integer,5}]}.
  {label,394}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,392}}. % '-record_test_3/1-lc$^5/1-5-'/1
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
  {label,395}.
    {call_only,1,{f,392}}. % '-record_test_3/1-lc$^5/1-5-'/1
  {label,396}.
    {test,is_nil,{f,397},[{x,0}]}.
    return.
  {label,397}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_3/1-lc$^4/1-4-', 1, 399}.
  {label,398}.
    {line,[{location,"record_SUITE.erl",359}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^4/1-4-'},1}.
  {label,399}.
    {test,is_nonempty_list,{f,403},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,400},[{x,1},5,{atom,bar}]}.
    {jump,{f,401}}.
  {label,400}.
    {test,is_tagged_tuple,{f,402},[{x,1},5,{atom,foo}]}.
  {label,401}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,399}}. % '-record_test_3/1-lc$^4/1-4-'/1
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
  {label,402}.
    {call_only,1,{f,399}}. % '-record_test_3/1-lc$^4/1-4-'/1
  {label,403}.
    {test,is_nil,{f,404},[{x,0}]}.
    return.
  {label,404}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_3/1-lc$^3/1-3-', 1, 406}.
  {label,405}.
    {line,[{location,"record_SUITE.erl",357}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^3/1-3-'},1}.
  {label,406}.
    {test,is_nonempty_list,{f,410},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,407},[{x,1},5,{atom,bar}]}.
    {jump,{f,408}}.
  {label,407}.
    {test,is_tagged_tuple,{f,409},[{x,1},5,{atom,foo}]}.
  {label,408}.
    {call_only,1,{f,406}}. % '-record_test_3/1-lc$^3/1-3-'/1
  {label,409}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,406}}. % '-record_test_3/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,410}.
    {test,is_nil,{f,411},[{x,0}]}.
    return.
  {label,411}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_3/1-lc$^2/1-2-', 1, 413}.
  {label,412}.
    {line,[{location,"record_SUITE.erl",355}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^2/1-2-'},1}.
  {label,413}.
    {test,is_nonempty_list,{f,415},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,414},[{x,1},5,{atom,bar}]}.
    {call_only,1,{f,413}}. % '-record_test_3/1-lc$^2/1-2-'/1
  {label,414}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,413}}. % '-record_test_3/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,415}.
    {test,is_nil,{f,416},[{x,0}]}.
    return.
  {label,416}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_3/1-lc$^1/1-1-', 1, 418}.
  {label,417}.
    {line,[{location,"record_SUITE.erl",353}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^1/1-1-'},1}.
  {label,418}.
    {test,is_nonempty_list,{f,420},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,419},[{x,1},5,{atom,bar}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,418}}. % '-record_test_3/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,419}.
    {call_only,1,{f,418}}. % '-record_test_3/1-lc$^1/1-1-'/1
  {label,420}.
    {test,is_nil,{f,421},[{x,0}]}.
    return.
  {label,421}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_3/1-lc$^0/1-0-', 1, 423}.
  {label,422}.
    {line,[{location,"record_SUITE.erl",352}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_3/1-lc$^0/1-0-'},1}.
  {label,423}.
    {test,is_nonempty_list,{f,425},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,424},[{x,1},5,{atom,foo}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,423}}. % '-record_test_3/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,424}.
    {call_only,1,{f,423}}. % '-record_test_3/1-lc$^0/1-0-'/1
  {label,425}.
    {test,is_nil,{f,426},[{x,0}]}.
    return.
  {label,426}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^23/1-23-', 1, 428}.
  {label,427}.
    {line,[{location,"record_SUITE.erl",253}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^23/1-23-'},1}.
  {label,428}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,430},[{x,0}]}.
    {allocate,1,1}.
    {get_tl,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {call,1,{f,244}}. % id/1
    {bif,is_record,{f,0},[{atom,t},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,429},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,1,{f,428}}. % '-record_test_2/1-lc$^23/1-23-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,429}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,428},1}. % '-record_test_2/1-lc$^23/1-23-'/1
  {label,430}.
    return.


{function, '-record_test_2/1-lc$^22/1-22-', 1, 432}.
  {label,431}.
    {line,[{location,"record_SUITE.erl",252}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^22/1-22-'},1}.
  {label,432}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-record_test_2/1-lc$^21/1-21-', 1, 434}.
  {label,433}.
    {line,[{location,"record_SUITE.erl",249}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^21/1-21-'},1}.
  {label,434}.
    {test,is_tuple,{f,436},[{x,0}]}.
    {test,test_arity,{f,437},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,435},[{x,1},5,{atom,foo}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,434}}. % '-record_test_2/1-lc$^21/1-21-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,435}.
    {call_only,1,{f,434}}. % '-record_test_2/1-lc$^21/1-21-'/1
  {label,436}.
    {test,is_eq_exact,{f,437},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,437}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,434},0}. % '-record_test_2/1-lc$^21/1-21-'/1


{function, '-record_test_2/1-lc$^20/1-20-', 1, 439}.
  {label,438}.
    {line,[{location,"record_SUITE.erl",248}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^20/1-20-'},1}.
  {label,439}.
    {test,is_tuple,{f,441},[{x,0}]}.
    {test,test_arity,{f,442},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,440},[{x,1},5,{atom,bar}]}.
    {call_only,1,{f,439}}. % '-record_test_2/1-lc$^20/1-20-'/1
  {label,440}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,439}}. % '-record_test_2/1-lc$^20/1-20-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,441}.
    {test,is_eq_exact,{f,442},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,442}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,439},0}. % '-record_test_2/1-lc$^20/1-20-'/1


{function, '-record_test_2/1-lc$^19/1-19-', 1, 444}.
  {label,443}.
    {line,[{location,"record_SUITE.erl",246}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^19/1-19-'},1}.
  {label,444}.
    {test,is_tuple,{f,446},[{x,0}]}.
    {test,test_arity,{f,447},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,445},[{x,1},5,{atom,bar}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,444}}. % '-record_test_2/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,445}.
    {call_only,1,{f,444}}. % '-record_test_2/1-lc$^19/1-19-'/1
  {label,446}.
    {test,is_eq_exact,{f,447},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,447}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,444},0}. % '-record_test_2/1-lc$^19/1-19-'/1


{function, '-record_test_2/1-lc$^18/1-18-', 1, 449}.
  {label,448}.
    {line,[{location,"record_SUITE.erl",245}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^18/1-18-'},1}.
  {label,449}.
    {test,is_tuple,{f,451},[{x,0}]}.
    {test,test_arity,{f,452},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,450},[{x,1},5,{atom,foo}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,449}}. % '-record_test_2/1-lc$^18/1-18-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,450}.
    {call_only,1,{f,449}}. % '-record_test_2/1-lc$^18/1-18-'/1
  {label,451}.
    {test,is_eq_exact,{f,452},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,452}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,449},0}. % '-record_test_2/1-lc$^18/1-18-'/1


{function, '-record_test_2/1-lc$^17/1-17-', 1, 454}.
  {label,453}.
    {line,[{location,"record_SUITE.erl",239}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^17/1-17-'},1}.
  {label,454}.
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
    {test,is_nonempty_list,{f,456},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,455},[{x,1}]}.
    {test,test_arity,{f,455},[{x,1},5]}.
    {call_only,1,{f,454}}. % '-record_test_2/1-lc$^17/1-17-'/1
  {label,455}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,454}}. % '-record_test_2/1-lc$^17/1-17-'/1
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
  {label,456}.
    return.


{function, '-record_test_2/1-lc$^16/1-16-', 1, 458}.
  {label,457}.
    {line,[{location,"record_SUITE.erl",237}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^16/1-16-'},1}.
  {label,458}.
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
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,459},[{x,1}]}.
    {test,test_arity,{f,459},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,458}}. % '-record_test_2/1-lc$^16/1-16-'/1
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
  {label,459}.
    {call_only,1,{f,458}}. % '-record_test_2/1-lc$^16/1-16-'/1
  {label,460}.
    return.


{function, '-record_test_2/1-lc$^15/1-15-', 1, 462}.
  {label,461}.
    {line,[{location,"record_SUITE.erl",234}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^15/1-15-'},1}.
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
    {call,1,{f,462}}. % '-record_test_2/1-lc$^15/1-15-'/1
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


{function, '-record_test_2/1-lc$^14/1-14-', 1, 465}.
  {label,464}.
    {line,[{location,"record_SUITE.erl",231}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^14/1-14-'},1}.
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
    {test,is_nonempty_list,{f,466},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,465}}. % '-record_test_2/1-lc$^14/1-14-'/1
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
  {label,466}.
    return.


{function, '-record_test_2/1-lc$^13/1-13-', 1, 468}.
  {label,467}.
    {line,[{location,"record_SUITE.erl",229}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^13/1-13-'},1}.
  {label,468}.
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
    {test,is_nonempty_list,{f,470},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,469},[{x,1}]}.
    {test,test_arity,{f,469},[{x,1},5]}.
    {call_only,1,{f,468}}. % '-record_test_2/1-lc$^13/1-13-'/1
  {label,469}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,468}}. % '-record_test_2/1-lc$^13/1-13-'/1
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
  {label,470}.
    return.


{function, '-record_test_2/1-lc$^12/1-12-', 1, 472}.
  {label,471}.
    {line,[{location,"record_SUITE.erl",228}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^12/1-12-'},1}.
  {label,472}.
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
    {test,is_nonempty_list,{f,474},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,473},[{x,1}]}.
    {test,test_arity,{f,473},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,472}}. % '-record_test_2/1-lc$^12/1-12-'/1
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
  {label,473}.
    {call_only,1,{f,472}}. % '-record_test_2/1-lc$^12/1-12-'/1
  {label,474}.
    return.


{function, '-record_test_2/1-lc$^11/1-11-', 1, 476}.
  {label,475}.
    {line,[{location,"record_SUITE.erl",226}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^11/1-11-'},1}.
  {label,476}.
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
    {test,is_nonempty_list,{f,477},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,476}}. % '-record_test_2/1-lc$^11/1-11-'/1
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
  {label,477}.
    return.


{function, '-record_test_2/1-lc$^10/1-10-', 1, 479}.
  {label,478}.
    {line,[{location,"record_SUITE.erl",224}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^10/1-10-'},1}.
  {label,479}.
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
    {test,is_nonempty_list,{f,480},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,479}}. % '-record_test_2/1-lc$^10/1-10-'/1
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
  {label,480}.
    return.


{function, '-record_test_2/1-lc$^9/1-9-', 1, 482}.
  {label,481}.
    {line,[{location,"record_SUITE.erl",223}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^9/1-9-'},1}.
  {label,482}.
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
    {test,is_nonempty_list,{f,484},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,483},[{x,1}]}.
    {test,test_arity,{f,483},[{x,1},5]}.
    {call_only,1,{f,482}}. % '-record_test_2/1-lc$^9/1-9-'/1
  {label,483}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,482}}. % '-record_test_2/1-lc$^9/1-9-'/1
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
  {label,484}.
    return.


{function, '-record_test_2/1-lc$^8/1-8-', 1, 486}.
  {label,485}.
    {line,[{location,"record_SUITE.erl",222}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^8/1-8-'},1}.
  {label,486}.
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
    {test,is_nonempty_list,{f,488},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,487},[{x,1}]}.
    {test,test_arity,{f,487},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,486}}. % '-record_test_2/1-lc$^8/1-8-'/1
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
  {label,487}.
    {call_only,1,{f,486}}. % '-record_test_2/1-lc$^8/1-8-'/1
  {label,488}.
    return.


{function, '-record_test_2/1-lc$^7/1-7-', 1, 490}.
  {label,489}.
    {line,[{location,"record_SUITE.erl",221}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^7/1-7-'},1}.
  {label,490}.
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
    {test,is_nonempty_list,{f,492},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,491},[{x,1}]}.
    {test,test_arity,{f,491},[{x,1},5]}.
    {call_only,1,{f,490}}. % '-record_test_2/1-lc$^7/1-7-'/1
  {label,491}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,490}}. % '-record_test_2/1-lc$^7/1-7-'/1
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
  {label,492}.
    return.


{function, '-record_test_2/1-lc$^6/1-6-', 1, 494}.
  {label,493}.
    {line,[{location,"record_SUITE.erl",220}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^6/1-6-'},1}.
  {label,494}.
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
    {test,is_nonempty_list,{f,496},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,495},[{x,1}]}.
    {test,test_arity,{f,495},[{x,1},5]}.
    {allocate,0,1}.
    {call,1,{f,494}}. % '-record_test_2/1-lc$^6/1-6-'/1
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
  {label,495}.
    {call_only,1,{f,494}}. % '-record_test_2/1-lc$^6/1-6-'/1
  {label,496}.
    return.


{function, '-record_test_2/1-lc$^5/1-5-', 1, 498}.
  {label,497}.
    {line,[{location,"record_SUITE.erl",217}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^5/1-5-'},1}.
  {label,498}.
    {test,is_nonempty_list,{f,502},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,499},[{x,1},5,{atom,bar}]}.
    {jump,{f,500}}.
  {label,499}.
    {test,is_lt,{f,501},[{x,1},{integer,5}]}.
  {label,500}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,498}}. % '-record_test_2/1-lc$^5/1-5-'/1
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
  {label,501}.
    {call_only,1,{f,498}}. % '-record_test_2/1-lc$^5/1-5-'/1
  {label,502}.
    {test,is_nil,{f,503},[{x,0}]}.
    return.
  {label,503}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^4/1-4-', 1, 505}.
  {label,504}.
    {line,[{location,"record_SUITE.erl",215}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^4/1-4-'},1}.
  {label,505}.
    {test,is_nonempty_list,{f,509},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,506},[{x,1},5,{atom,bar}]}.
    {jump,{f,507}}.
  {label,506}.
    {test,is_tagged_tuple,{f,508},[{x,1},5,{atom,foo}]}.
  {label,507}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,505}}. % '-record_test_2/1-lc$^4/1-4-'/1
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
  {label,508}.
    {call_only,1,{f,505}}. % '-record_test_2/1-lc$^4/1-4-'/1
  {label,509}.
    {test,is_nil,{f,510},[{x,0}]}.
    return.
  {label,510}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^3/1-3-', 1, 512}.
  {label,511}.
    {line,[{location,"record_SUITE.erl",213}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^3/1-3-'},1}.
  {label,512}.
    {test,is_nonempty_list,{f,516},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,513},[{x,1},5,{atom,bar}]}.
    {jump,{f,514}}.
  {label,513}.
    {test,is_tagged_tuple,{f,515},[{x,1},5,{atom,foo}]}.
  {label,514}.
    {call_only,1,{f,512}}. % '-record_test_2/1-lc$^3/1-3-'/1
  {label,515}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,512}}. % '-record_test_2/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,516}.
    {test,is_nil,{f,517},[{x,0}]}.
    return.
  {label,517}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^2/1-2-', 1, 519}.
  {label,518}.
    {line,[{location,"record_SUITE.erl",211}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^2/1-2-'},1}.
  {label,519}.
    {test,is_nonempty_list,{f,521},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,520},[{x,1},5,{atom,bar}]}.
    {call_only,1,{f,519}}. % '-record_test_2/1-lc$^2/1-2-'/1
  {label,520}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,519}}. % '-record_test_2/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,521}.
    {test,is_nil,{f,522},[{x,0}]}.
    return.
  {label,522}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^1/1-1-', 1, 524}.
  {label,523}.
    {line,[{location,"record_SUITE.erl",209}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^1/1-1-'},1}.
  {label,524}.
    {test,is_nonempty_list,{f,526},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,525},[{x,1},5,{atom,bar}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,524}}. % '-record_test_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[bar]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,525}.
    {call_only,1,{f,524}}. % '-record_test_2/1-lc$^1/1-1-'/1
  {label,526}.
    {test,is_nil,{f,527},[{x,0}]}.
    return.
  {label,527}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-record_test_2/1-lc$^0/1-0-', 1, 529}.
  {label,528}.
    {line,[{location,"record_SUITE.erl",208}]}.
    {func_info,{atom,record_SUITE},{atom,'-record_test_2/1-lc$^0/1-0-'},1}.
  {label,529}.
    {test,is_nonempty_list,{f,531},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,530},[{x,1},5,{atom,foo}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,529}}. % '-record_test_2/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,5,true,#{1 => {t_atom,[foo]}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,530}.
    {call_only,1,{f,529}}. % '-record_test_2/1-lc$^0/1-0-'/1
  {label,531}.
    {test,is_nil,{f,532},[{x,0}]}.
    return.
  {label,532}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
