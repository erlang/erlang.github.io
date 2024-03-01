{module, overridden_bif_SUITE}.  %% version = 0

{exports, [{all,0},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {module_info,0},
           {module_info,1},
           {overridden_bif,1},
           {suite,0}]}.

{attributes, []}.

{labels, 73}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"overridden_bif_SUITE.erl",34}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"overridden_bif_SUITE.erl",38}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"overridden_bif_SUITE.erl",41}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"overridden_bif_SUITE.erl",42}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},{list,[{atom,p},{x,0},{literal,[overridden_bif]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"overridden_bif_SUITE.erl",46}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,overridden_bif_SUITE},{x,0}}.
    {line,[{location,"overridden_bif_SUITE.erl",47}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"overridden_bif_SUITE.erl",50}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"overridden_bif_SUITE.erl",53}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"overridden_bif_SUITE.erl",56}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"overridden_bif_SUITE.erl",60}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"overridden_bif_SUITE.erl",63}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, overridden_bif, 1, 20}.
  {label,19}.
    {line,[{location,"overridden_bif_SUITE.erl",66}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,overridden_bif},1}.
  {label,20}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,[-3,-2,-1,0,1,2,3,4]},{x,0}}.
    {line,[{location,"overridden_bif_SUITE.erl",68}]}.
    {call,1,{f,28}}. % do_overridden_bif_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test,is_eq_exact,
          {f,26},
          [{tr,{x,0},{t_list,{t_integer,{-3,4}},nil}},{literal,[-3,0,3]}]}.
    {move,{literal,[-3,-2,-1,0,1,2,3,4]},{x,0}}.
    {line,[{location,"overridden_bif_SUITE.erl",69}]}.
    {call,1,{f,30}}. % do_overridden_bif_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test,is_eq_exact,
          {f,25},
          [{tr,{x,0},{t_list,{t_integer,{-3,4}},nil}},{literal,[-2,0,2,4]}]}.
    {move,{literal,[-3,-2,-1,0,1,2,3,4]},{x,0}}.
    {line,[{location,"overridden_bif_SUITE.erl",70}]}.
    {call,1,{f,32}}. % do_overridden_bif_3/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test,is_eq_exact,
          {f,24},
          [{tr,{x,0},{t_list,{t_integer,{-3,4}},nil}},{literal,[3]}]}.
    {move,{literal,[-3,-2,-1,0,1,2,3,4]},{x,0}}.
    {line,[{location,"overridden_bif_SUITE.erl",71}]}.
    {call,1,{f,34}}. % do_overridden_bif_4/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test,is_eq_exact,
          {f,23},
          [{tr,{x,0},{t_list,{t_integer,{-3,4}},nil}},{literal,[2,4]}]}.
    {move,{literal,[-3,-2,-1,0,1,2,3,4]},{x,0}}.
    {line,[{location,"overridden_bif_SUITE.erl",73}]}.
    {call_ext,1,{extfunc,gb_sets,from_list,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"overridden_bif_SUITE.erl",74}]}.
    {call_ext,1,{extfunc,gb_sets,singleton,1}}.
    {test_heap,4,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {call,1,{f,36}}. % do_overridden_bif_5/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,22},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,22},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_eq_exact,{f,22},[{x,1},{y,0}]}.
    {trim,1,0}.
    {move,{literal,[100,-3,-2,-1,0,1,2,3,4]},{x,0}}.
    {line,[{location,"overridden_bif_SUITE.erl",76}]}.
    {call,1,{f,38}}. % do_overridden_bif_6/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,100}},nil}}]}}.
    {test,is_eq_exact,
          {f,21},
          [{tr,{x,0},{t_list,{t_integer,{-3,100}},nil}},{literal,[100,0]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,21}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"overridden_bif_SUITE.erl",74}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{location,"overridden_bif_SUITE.erl",71}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{location,"overridden_bif_SUITE.erl",70}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{location,"overridden_bif_SUITE.erl",69}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{location,"overridden_bif_SUITE.erl",68}]}.
    {badmatch,{x,0}}.


{function, do_overridden_bif_1, 1, 28}.
  {label,27}.
    {line,[{location,"overridden_bif_SUITE.erl",79}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,do_overridden_bif_1},1}.
  {label,28}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{-3,4}},nil}}]}}.
    {call_only,1,{f,70}}. % '-do_overridden_bif_1/1-lc$^0/1-0-'/1


{function, do_overridden_bif_2, 1, 30}.
  {label,29}.
    {line,[{location,"overridden_bif_SUITE.erl",82}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,do_overridden_bif_2},1}.
  {label,30}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{-3,4}},nil}}]}}.
    {call_only,1,{f,66}}. % '-do_overridden_bif_2/1-lc$^0/1-0-'/1


{function, do_overridden_bif_3, 1, 32}.
  {label,31}.
    {line,[{location,"overridden_bif_SUITE.erl",85}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,do_overridden_bif_3},1}.
  {label,32}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{-3,4}},nil}}]}}.
    {call_only,1,{f,62}}. % '-do_overridden_bif_3/1-lc$^0/1-0-'/1


{function, do_overridden_bif_4, 1, 34}.
  {label,33}.
    {line,[{location,"overridden_bif_SUITE.erl",88}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,do_overridden_bif_4},1}.
  {label,34}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{-3,4}},nil}}]}}.
    {call_only,1,{f,58}}. % '-do_overridden_bif_4/1-lc$^0/1-0-'/1


{function, do_overridden_bif_5, 1, 36}.
  {label,35}.
    {line,[{location,"overridden_bif_SUITE.erl",91}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,do_overridden_bif_5},1}.
  {label,36}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {call_only,1,{f,54}}. % '-do_overridden_bif_5/1-lc$^0/1-0-'/1


{function, do_overridden_bif_6, 1, 38}.
  {label,37}.
    {line,[{location,"overridden_bif_SUITE.erl",94}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,do_overridden_bif_6},1}.
  {label,38}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{-3,100}},nil}}]}}.
    {call_only,1,{f,48}}. % '-do_overridden_bif_6/1-lc$^0/1-0-'/1


{function, is_reference, 1, 40}.
  {label,39}.
    {line,[{location,"overridden_bif_SUITE.erl",97}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,is_reference},1}.
  {label,40}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-3,4}}}]}}.
    {line,[{location,"overridden_bif_SUITE.erl",98}]}.
    {gc_bif,'rem',{f,0},1,[{tr,{x,0},{t_integer,{-3,4}}},{integer,3}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{-2,2}}},{integer,0}],{x,0}}.
    return.


{function, port, 1, 42}.
  {label,41}.
    {line,[{location,"overridden_bif_SUITE.erl",100}]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,port},1}.
  {label,42}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-3,4}}}]}}.
    {line,[{location,"overridden_bif_SUITE.erl",101}]}.
    {gc_bif,'rem',{f,0},1,[{tr,{x,0},{t_integer,{-3,4}}},{integer,2}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{-1,1}}},{integer,0}],{x,0}}.
    return.


{function, module_info, 0, 44}.
  {label,43}.
    {line,[]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,module_info},0}.
  {label,44}.
    {move,{atom,overridden_bif_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 46}.
  {label,45}.
    {line,[]}.
    {func_info,{atom,overridden_bif_SUITE},{atom,module_info},1}.
  {label,46}.
    {move,{x,0},{x,1}}.
    {move,{atom,overridden_bif_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-do_overridden_bif_6/1-lc$^0/1-0-', 1, 48}.
  {label,47}.
    {line,[{location,"overridden_bif_SUITE.erl",95}]}.
    {func_info,{atom,overridden_bif_SUITE},
               {atom,'-do_overridden_bif_6/1-lc$^0/1-0-'},
               1}.
  {label,48}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,100}},nil}}]}}.
    {test,is_nonempty_list,{f,52},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,test_lib,binary,1}}.
    {select_val,{x,0},{f,51},{list,[{atom,false},{f,50},{atom,true},{f,49}]}}.
  {label,49}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,48}}. % '-do_overridden_bif_6/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,100}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,50}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,48},2}. % '-do_overridden_bif_6/1-lc$^0/1-0-'/1
  {label,51}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,52}.
    return.


{function, '-do_overridden_bif_5/1-lc$^0/1-0-', 1, 54}.
  {label,53}.
    {line,[{location,"overridden_bif_SUITE.erl",92}]}.
    {func_info,{atom,overridden_bif_SUITE},
               {atom,'-do_overridden_bif_5/1-lc$^0/1-0-'},
               1}.
  {label,54}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,56},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,gb_sets,size,1}}.
    {test,is_lt,{f,55},[{integer,1},{x,0}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,54}}. % '-do_overridden_bif_5/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,55}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,54},2}. % '-do_overridden_bif_5/1-lc$^0/1-0-'/1
  {label,56}.
    return.


{function, '-do_overridden_bif_4/1-lc$^0/1-0-', 1, 58}.
  {label,57}.
    {line,[{location,"overridden_bif_SUITE.erl",89}]}.
    {func_info,{atom,overridden_bif_SUITE},
               {atom,'-do_overridden_bif_4/1-lc$^0/1-0-'},
               1}.
  {label,58}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test,is_nonempty_list,{f,60},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,42}}. % port/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,59},[{x,0},{atom,true}]}.
    {test,is_ge,{f,59},[{tr,{y,1},{t_integer,{-3,4}}},{integer,1}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,58}}. % '-do_overridden_bif_4/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,59}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,58},2}. % '-do_overridden_bif_4/1-lc$^0/1-0-'/1
  {label,60}.
    return.


{function, '-do_overridden_bif_3/1-lc$^0/1-0-', 1, 62}.
  {label,61}.
    {line,[{location,"overridden_bif_SUITE.erl",86}]}.
    {func_info,{atom,overridden_bif_SUITE},
               {atom,'-do_overridden_bif_3/1-lc$^0/1-0-'},
               1}.
  {label,62}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test,is_nonempty_list,{f,64},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,40}}. % is_reference/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,63},[{x,0},{atom,true}]}.
    {test,is_ge,{f,63},[{tr,{y,1},{t_integer,{-3,4}}},{integer,1}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,62}}. % '-do_overridden_bif_3/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,63}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,62},2}. % '-do_overridden_bif_3/1-lc$^0/1-0-'/1
  {label,64}.
    return.


{function, '-do_overridden_bif_2/1-lc$^0/1-0-', 1, 66}.
  {label,65}.
    {line,[{location,"overridden_bif_SUITE.erl",83}]}.
    {func_info,{atom,overridden_bif_SUITE},
               {atom,'-do_overridden_bif_2/1-lc$^0/1-0-'},
               1}.
  {label,66}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test,is_nonempty_list,{f,68},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,42}}. % port/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,67},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,66}}. % '-do_overridden_bif_2/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,67}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,66},2}. % '-do_overridden_bif_2/1-lc$^0/1-0-'/1
  {label,68}.
    return.


{function, '-do_overridden_bif_1/1-lc$^0/1-0-', 1, 70}.
  {label,69}.
    {line,[{location,"overridden_bif_SUITE.erl",80}]}.
    {func_info,{atom,overridden_bif_SUITE},
               {atom,'-do_overridden_bif_1/1-lc$^0/1-0-'},
               1}.
  {label,70}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test,is_nonempty_list,{f,72},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,40}}. % is_reference/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,71},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,70}}. % '-do_overridden_bif_1/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{-3,4}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,71}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,70},2}. % '-do_overridden_bif_1/1-lc$^0/1-0-'/1
  {label,72}.
    return.
