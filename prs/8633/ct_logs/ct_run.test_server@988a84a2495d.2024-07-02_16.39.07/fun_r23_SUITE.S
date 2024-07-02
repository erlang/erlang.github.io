{module, fun_r23_SUITE}.  %% version = 0

{exports, [{all,0},
           {badarity,1},
           {badfun,1},
           {bif_fun,1},
           {call_me,1},
           {coverage,1},
           {dup1,0},
           {dup2,0},
           {duplicated_fun,1},
           {eep37,1},
           {end_per_group,2},
           {end_per_suite,1},
           {external,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {leaky_environment,1},
           {module_info,0},
           {module_info,1},
           {otp_7202,1},
           {overwritten_fun,1},
           {parallel_scopes,1},
           {suite,0},
           {test1,1},
           {unused_fun,1}]}.

{attributes, []}.

{labels, 423}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"fun_r23_SUITE.erl",34}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"fun_r23_SUITE.erl",36}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"fun_r23_SUITE.erl",39}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [test1,overwritten_fun,otp_7202,bif_fun,external,eep37,
                        badarity,badfun,duplicated_fun,unused_fun,
                        parallel_scopes,coverage,leaky_environment]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"fun_r23_SUITE.erl",46}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,fun_r23_SUITE},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",47}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"fun_r23_SUITE.erl",50}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"fun_r23_SUITE.erl",53}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"fun_r23_SUITE.erl",56}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, l1, 0, 16}.
  {label,15}.
    {line,[{location,"fun_r23_SUITE.erl",63}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,l1},0}.
  {label,16}.
    {allocate_zero,1,0}.
    {make_fun2,{f,422},0,0,0}.
    {'catch',{y,0},{f,17}}.
    {move,{x,0},{x,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",66}]}.
    {call_fun,1}.
  {label,17}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,18},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,18},[{x,1},{atom,'EXIT'}]}.
    {make_fun2,{f,419},0,0,0}.
    {move,{x,0},{x,2}}.
    {move,{integer,5},{x,1}}.
    {line,[{scope,[0]},{location,"fun_r23_SUITE.erl",67}]}.
    {call_fun,2}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,416},0,0,0}.
    {move,{x,0},{x,2}}.
    {move,{integer,1},{x,1}}.
    {line,[{scope,[0]},{location,"fun_r23_SUITE.erl",68}]}.
    {call_fun,2}.
    {test_heap,20,0}.
    {put_tuple2,{x,0},
                {list,[{atom,ok},
                       {literal,"( begin F = fun ( _ , 1 ) -> 1 ; ( F , N ) -> N * F ( F , N - 1 ) end , F ( F , 1 ) , ok end )"},
                       {atom,ok}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,0},
                       {literal,"( begin F = fun ( _ , 1 ) -> 1 ; ( F , N ) -> N * F ( F , N - 1 ) end , F ( F , 5 ) end )"},
                       {integer,120}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,ok},
                       {literal,"( begin G = fun ( 1 = 0 ) -> ok end , { 'EXIT' , _ } = ( catch G ( 2 ) ) , ok end )"},
                       {atom,ok}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{1,
                        "( begin _A = 3 , F = fun ( _A ) -> 1 ; ( _ ) -> 2 end , F ( 2 ) end )",
                        1}},
              {x,0},
              {x,0}}.
    {deallocate,1}.
    return.
  {label,18}.
    {line,[{scope,[0]},{location,"fun_r23_SUITE.erl",66}]}.
    {badmatch,{x,0}}.


{function, test1, 1, 20}.
  {label,19}.
    {line,[{location,"fun_r23_SUITE.erl",71}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,test1},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate_zero,1,0}.
    {make_fun2,{f,32},0,0,0}.
    {move,{x,0},{y,0}}.
    {line,[{location,"fun_r23_SUITE.erl",72}]}.
    {call,0,{f,16}}. % l1/0
    {move,nil,{x,1}}.
    {call,2,{f,27}}. % eval_list/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,lists,foreach,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, evaluate, 2, 22}.
  {label,21}.
    {line,[{location,"fun_r23_SUITE.erl",75}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,evaluate},2}.
  {label,22}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{literal," . "},{x,1}}.
    {line,[{location,"fun_r23_SUITE.erl",77}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {call_ext,1,{extfunc,erl_scan,string,1}}.
    {test,is_tagged_tuple,{f,25},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,25},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",78}]}.
    {call_ext,1,{extfunc,erl_parse,parse_exprs,1}}.
    {test,is_tagged_tuple,{f,24},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,24},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,24},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,24},[{x,1}]}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{x,2},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",79}]}.
    {call_ext,2,{extfunc,erl_eval,expr,2}}.
    {test,is_tagged_tuple,{f,23},[{x,0},3,{atom,value}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,23},[{x,1},{atom,value}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,0}.
    return.
  {label,23}.
    {case_end,{x,0}}.
  {label,24}.
    {line,[{location,"fun_r23_SUITE.erl",78}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{location,"fun_r23_SUITE.erl",76}]}.
    {badmatch,{x,0}}.


{function, eval_list, 2, 27}.
  {label,26}.
    {line,[{location,"fun_r23_SUITE.erl",84}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,eval_list},2}.
  {label,27}.
    {test,is_nonempty_list,{f,30},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,{f,26},[{x,2}]}.
    {test,test_arity,{f,26},[{x,2},3]}.
    {allocate,5,4}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_tuple_element,{x,2},1,{y,0}}.
    {'catch',{y,4},{f,28}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",87}]}.
    {call,2,{f,22}}. % evaluate/2
  {label,28}.
    {catch_end,{y,4}}.
    {move,{x,0},{y,4}}.
    {test,is_tagged_tuple,{f,29},[{y,4},2,{atom,'EXIT'}]}.
    {get_tuple_element,{y,4},0,{x,0}}.
    {test,is_eq_exact,{f,29},[{x,0},{atom,'EXIT'}]}.
    {test_heap,6,0}.
    {get_tuple_element,{y,4},1,{y,4}}.
    {put_list,{y,4},nil,{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {trim,4,1}.
    {move,{literal,"Evaluation error: ~p, ~p, ~p~n"},{x,0}}.
    {line,[{scope,[0]},{location,"fun_r23_SUITE.erl",89}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[0]},{location,"fun_r23_SUITE.erl",90}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},1}.
  {label,29}.
    {move,{y,3},{x,1}}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,3}.
    {line,[{scope,[0]},{location,"fun_r23_SUITE.erl",92}]}.
    {call,2,{f,27}}. % eval_list/2
    {test_heap,7,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},2,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,2},{y,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,30}.
    {test,is_nil,{f,26},[{x,0}]}.
    return.


{function, one_test, 1, 32}.
  {label,31}.
    {line,[{location,"fun_r23_SUITE.erl",95}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,one_test},1}.
  {label,32}.
    {test,is_tuple,{f,31},[{x,0}]}.
    {test,test_arity,{f,31},[{x,0},4]}.
    {allocate_heap,3,4,1}.
    {move,{x,0},{y,2}}.
    {get_tuple_element,{x,0},2,{y,1}}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {put_list,{y,0},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {move,{literal,"  ~s, ~p~n"},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",96}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {get_tuple_element,{y,2},0,{x,0}}.
    {test,is_ne,{f,33},[{x,0},{y,0}]}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {move,{literal,"ERROR: Compiled: ~p. Expected ~p. Got ~p.~n"},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",101}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,comp},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",103}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,33}.
    {get_tuple_element,{y,2},1,{x,0}}.
    {test,is_eq,{f,34},[{x,0},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,34}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {trim,3,0}.
    {move,{literal,"ERROR: Interpreted: ~p. Expected ~p. Got ~p.~n"},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",109}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,comp},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",111}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.


{function, overwritten_fun, 1, 36}.
  {label,35}.
    {line,[{location,"fun_r23_SUITE.erl",118}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,overwritten_fun},1}.
  {label,36}.
    {test,is_list,{f,35},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",119}]}.
    {call,1,{f,41}}. % overwritten_fun_1/1
    {test,is_eq_exact,{f,39},[{x,0},{literal,{a2,a}}]}.
    {move,{literal,{b,c}},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",120}]}.
    {call,1,{f,41}}. % overwritten_fun_1/1
    {test,is_eq_exact,{f,38},[{x,0},{literal,{a2,{b,c}}}]}.
    {move,{literal,{b,[]}},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",121}]}.
    {call,1,{f,41}}. % overwritten_fun_1/1
    {test,is_eq_exact,{f,37},[{x,0},{atom,one}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,37}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{location,"fun_r23_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{location,"fun_r23_SUITE.erl",119}]}.
    {badmatch,{x,0}}.


{function, overwritten_fun_1, 1, 41}.
  {label,40}.
    {line,[{location,"fun_r23_SUITE.erl",124}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,overwritten_fun_1},1}.
  {label,41}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,414},0,0,1}.
    {test,is_tagged_tuple,{f,42},[{y,0},2,{atom,b}]}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {test,is_eq_exact,{f,42},[{x,1},{atom,b}]}.
    {bif,element,{f,42},[{integer,2},{y,0}],{x,1}}.
    {test,is_eq,{f,42},[{x,1},nil]}.
    {move,{atom,one},{x,0}}.
    {deallocate,1}.
    return.
  {label,42}.
    {init,{y,0}}.
    {line,[{location,"fun_r23_SUITE.erl",131}]}.
    {call_fun,0}.
    {test,is_tagged_tuple,{f,43},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,43},[{x,1},{atom,ok}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,a2},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,43}.
    {move,{atom,three},{x,0}}.
    {deallocate,1}.
    return.


{function, otp_7202, 1, 45}.
  {label,44}.
    {line,[{location,"fun_r23_SUITE.erl",141}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,otp_7202},1}.
  {label,45}.
    {test,is_list,{f,44},[{x,0}]}.
    {call_only,0,{f,47}}. % otp_7202/0


{function, otp_7202, 0, 47}.
  {label,46}.
    {line,[{location,"fun_r23_SUITE.erl",144}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,otp_7202},0}.
  {label,47}.
    {allocate,0,0}.
    {line,[{location,"fun_r23_SUITE.erl",146}]}.
    {call,0,{f,52}}. % otp_7202_func/0
    {test,is_tuple,{f,48},[{x,0}]}.
    {test,is_tagged_tuple,{f,50},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,50},[{x,1},{atom,ok}]}.
    {move,{x,2},{x,0}}.
    {jump,{f,49}}.
  {label,48}.
    {test,is_eq_exact,{f,50},[{x,0},{atom,no_value}]}.
    {move,{atom,true},{x,0}}.
  {label,49}.
    {make_fun2,{f,411},0,0,1}.
    {move,{literal,[a]},{x,1}}.
    {line,[{location,"fun_r23_SUITE.erl",150}]}.
    {call_ext_last,2,{extfunc,lists,foreach,2},0}.
  {label,50}.
    {line,[{location,"fun_r23_SUITE.erl",146}]}.
    {case_end,{x,0}}.


{function, otp_7202_func, 0, 52}.
  {label,51}.
    {line,[{location,"fun_r23_SUITE.erl",159}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,otp_7202_func},0}.
  {label,52}.
    {move,{atom,no_value},{x,0}}.
    return.


{function, bif_fun, 1, 54}.
  {label,53}.
    {line,[{location,"fun_r23_SUITE.erl",162}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,bif_fun},1}.
  {label,54}.
    {test,is_list,{f,53},[{x,0}]}.
    {allocate,0,0}.
    {make_fun2,{f,409},0,0,0}.
    {move,{x,0},{x,1}}.
    {move,{integer,-5},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",164}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,55},[{x,0},{integer,5}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,55}.
    {badmatch,{x,0}}.


{function, external, 1, 57}.
  {label,56}.
    {line,[{location,"fun_r23_SUITE.erl",176}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,external},1}.
  {label,57}.
    {test,is_list,{f,56},[{x,0}]}.
    {allocate_zero,4,0}.
    {move,{atom,fun_r23_SUITE},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",177}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{atom,call_me},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",178}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",179}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",181}]}.
    {call_ext,1,{extfunc,fun_r23_SUITE,call_me,1}}.
    {test,is_eq_exact,{f,72},[{x,0},{literal,{ok,{a,b}}}]}.
    {make_fun2,{f,406},0,0,0}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{atom,call_me},{x,1}}.
    {move,{atom,fun_r23_SUITE},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",182}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,403},0,0,0}.
    {move,{x,0},{y,0}}.
    {move,{y,2},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{atom,fun_r23_SUITE},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",183}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,400},0,0,0}.
    {move,{y,2},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{atom,fun_r23_SUITE},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",184}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,397},0,0,0}.
    {move,{x,0},{y,0}}.
    {move,{y,3},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{atom,call_me},{x,1}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",185}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,394},0,0,0}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{atom,call_me},{x,1}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",186}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,391},0,0,0}.
    {move,{y,3},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,2},{x,1}}.
    {move,{x,2},{x,0}}.
    {move,{integer,1},{x,2}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",187}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,388},0,0,0}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,3}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,2}}.
    {init,{y,1}}.
    {init,{y,2}}.
    {move,{x,3},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",188}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,3},{x,1}}.
    {init,{y,3}}.
    {call_fun,1}.
    {move,{atom,lists},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",190}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{atom,map},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",191}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",192}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,1}}.
    {make_fun2,{f,386},0,0,0}.
    {move,{literal,[x,y]},{x,1}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",194}]}.
    {call_ext,2,{extfunc,lists,map,2}}.
    {test,is_eq_exact,{f,71},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{literal,fun lists:map/2},{x,0}}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,70},[{x,0},{literal,{type,external}}]}.
    {make_fun2,{f,381},0,0,0}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{atom,map},{x,1}}.
    {move,{atom,lists},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",195}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,376},0,0,0}.
    {move,{x,0},{y,0}}.
    {move,{y,2},{x,1}}.
    {move,{integer,2},{x,2}}.
    {move,{atom,lists},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",196}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,371},0,0,0}.
    {move,{y,2},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{atom,lists},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",197}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,366},0,0,0}.
    {move,{x,0},{y,0}}.
    {move,{y,3},{x,1}}.
    {move,{integer,2},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{atom,map},{x,1}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",198}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,361},0,0,0}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{atom,map},{x,1}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",199}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,356},0,0,0}.
    {move,{y,3},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,2},{x,1}}.
    {move,{x,2},{x,0}}.
    {move,{integer,2},{x,2}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",200}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {call_fun,1}.
    {make_fun2,{f,351},0,0,0}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,3}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,2}}.
    {init,{y,1}}.
    {init,{y,2}}.
    {move,{x,3},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",201}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{y,3},{x,1}}.
    {init,{y,3}}.
    {call_fun,1}.
    {move,{literal,fun erlang:abs/1},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",204}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{integer,-42},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,69},[{x,0},{integer,42}]}.
    {move,{literal,fun erlang:abs/1},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",206}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{integer,-42},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,68},[{x,0},{integer,42}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",207}]}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_eq_exact,{f,67},[{x,0},{integer,6}]}.
    {move,{literal,fun lists:sum/1},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",208}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,66},[{x,0},{integer,6}]}.
    {'catch',{y,3},{f,58}}.
    {move,{integer,3},{x,2}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,fun lists:sum/1},{x,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",210}]}.
    {call_fun,3}.
  {label,58}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,65},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,65},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,65},[{x,1}]}.
    {test,test_arity,{f,65},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,65},[{x,1},2,{atom,badarity}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,65},[{x,1},{atom,badarity}]}.
    {'catch',{y,2},{f,59}}.
    {move,{literal,fun lists:sum/1},{x,0}}.
    {line,[{scope,[6]},{location,"fun_r23_SUITE.erl",211}]}.
    {call,1,{f,310}}. % id/1
    {move,{integer,3},{x,2}}.
    {move,{integer,2},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{integer,1},{x,0}}.
    {call_fun,3}.
  {label,59}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,64},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,64},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,64},[{x,1}]}.
    {test,test_arity,{f,64},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,64},[{x,1},2,{atom,badarity}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,64},[{x,1},{atom,badarity}]}.
    {'catch',{y,1},{f,60}}.
    {move,{integer,3},{x,2}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,fun lists:sum/1},{x,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[4]},{location,"fun_r23_SUITE.erl",212}]}.
    {call_fun,3}.
  {label,60}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,63},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,63},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,63},[{x,1}]}.
    {test,test_arity,{f,63},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,63},[{x,1},2,{atom,badarity}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,63},[{x,1},{atom,badarity}]}.
    {'catch',{y,0},{f,61}}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",214}]}.
    {call,0,{f,76}}. % bad_external_fun/0
  {label,61}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,62},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,62},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,62},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,62},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,62}.
    {line,[{scope,[0]},{location,"fun_r23_SUITE.erl",214}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",212}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{scope,[4]},{location,"fun_r23_SUITE.erl",211}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,[6]},{location,"fun_r23_SUITE.erl",210}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",208}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",207}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",206}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",204}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",194}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",181}]}.
    {badmatch,{x,0}}.


{function, call_me, 1, 74}.
  {label,73}.
    {line,[{location,"fun_r23_SUITE.erl",218}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,call_me},1}.
  {label,74}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, bad_external_fun, 0, 76}.
  {label,75}.
    {line,[{location,"fun_r23_SUITE.erl",221}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,bad_external_fun},0}.
  {label,76}.
    {allocate,0,0}.
    {move,{atom,idea},{x,1}}.
    {move,{atom,idea},{x,2}}.
    {move,{atom,idea},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",223}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {move,{atom,never_reached},{x,0}}.
    {deallocate,0}.
    return.


{function, eep37, 1, 78}.
  {label,77}.
    {line,[{location,"fun_r23_SUITE.erl",227}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,eep37},1}.
  {label,78}.
    {allocate,0,0}.
    {line,[{location,"fun_r23_SUITE.erl",228}]}.
    {call,0,{f,80}}. % eep37_basic/0
    {line,[{location,"fun_r23_SUITE.erl",229}]}.
    {call,0,{f,85}}. % eep37_dup/0
    {line,[{location,"fun_r23_SUITE.erl",230}]}.
    {call,0,{f,93}}. % eep37_gh6515/0
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, eep37_basic, 0, 80}.
  {label,79}.
    {line,[{location,"fun_r23_SUITE.erl",233}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,eep37_basic},0}.
  {label,80}.
    {allocate_zero,3,0}.
    {make_fun2,{f,347},0,0,0}.
    {move,{x,0},{y,2}}.
    {make_fun2,{f,345},0,0,0}.
    {move,{x,0},{y,1}}.
    {make_fun2,{f,343},0,0,0}.
    {move,{x,0},{y,0}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,1,2}.
    {move,{integer,6},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",237}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,83},[{x,0},{integer,720}]}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {move,{integer,9},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",238}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,82},[{x,0},{integer,10}]}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",239}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,81},[{x,0},{integer,50}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,81}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{location,"fun_r23_SUITE.erl",238}]}.
    {badmatch,{x,0}}.
  {label,83}.
    {line,[{location,"fun_r23_SUITE.erl",237}]}.
    {badmatch,{x,0}}.


{function, eep37_dup, 0, 85}.
  {label,84}.
    {line,[{location,"fun_r23_SUITE.erl",242}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,eep37_dup},0}.
  {label,85}.
    {allocate,0,0}.
    {line,[{location,"fun_r23_SUITE.erl",243}]}.
    {call,0,{f,89}}. % dup1/0
    {call_fun,0}.
    {test,is_eq_exact,{f,87},[{x,0},{atom,dup1}]}.
    {line,[{location,"fun_r23_SUITE.erl",244}]}.
    {call,0,{f,91}}. % dup2/0
    {call_fun,0}.
    {test,is_eq_exact,{f,86},[{x,0},{atom,dup2}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,86}.
    {badmatch,{x,0}}.
  {label,87}.
    {line,[{location,"fun_r23_SUITE.erl",243}]}.
    {badmatch,{x,0}}.


{function, dup1, 0, 89}.
  {label,88}.
    {line,[{location,"fun_r23_SUITE.erl",247}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,dup1},0}.
  {label,89}.
    {make_fun2,{f,341},0,0,0}.
    return.


{function, dup2, 0, 91}.
  {label,90}.
    {line,[{location,"fun_r23_SUITE.erl",250}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,dup2},0}.
  {label,91}.
    {make_fun2,{f,339},0,0,0}.
    return.


{function, eep37_gh6515, 0, 93}.
  {label,92}.
    {line,[{location,"fun_r23_SUITE.erl",253}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,eep37_gh6515},0}.
  {label,93}.
    {allocate_zero,1,0}.
    {line,[{location,"fun_r23_SUITE.erl",254}]}.
    {call,0,{f,100}}. % eep37_gh6515_1/0
    {test,is_tuple,{f,98},[{x,0}]}.
    {test,test_arity,{f,98},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,98},[{x,1},{integer,0}]}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",255}]}.
    {call_fun,0}.
    {test,is_eq_exact,{f,97},[{x,0},{y,0}]}.
    {init,{y,0}}.
    {line,[{location,"fun_r23_SUITE.erl",257}]}.
    {call,0,{f,102}}. % eep37_gh6515_2/0
    {test,is_nonempty_list,{f,96},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,96},[{x,1},{integer,0}]}.
    {test,is_nonempty_list,{f,96},[{x,2}]}.
    {get_list,{x,2},{y,0},{x,1}}.
    {test,is_nil,{f,96},[{x,1}]}.
    {move,{y,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",258}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,95},[{x,0},{integer,1}]}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",259}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,94},[{x,0},{integer,120}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,94}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{location,"fun_r23_SUITE.erl",258}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{location,"fun_r23_SUITE.erl",257}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{location,"fun_r23_SUITE.erl",255}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{location,"fun_r23_SUITE.erl",254}]}.
    {badmatch,{x,0}}.


{function, eep37_gh6515_1, 0, 100}.
  {label,99}.
    {line,[{location,"fun_r23_SUITE.erl",263}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,eep37_gh6515_1},0}.
  {label,100}.
    {make_fun2,{f,337},0,0,0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{integer,0},{x,0}]}}.
    return.


{function, eep37_gh6515_2, 0, 102}.
  {label,101}.
    {line,[{location,"fun_r23_SUITE.erl",274}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,eep37_gh6515_2},0}.
  {label,102}.
    {make_fun2,{f,333},0,0,0}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    return.


{function, badarity, 1, 104}.
  {label,103}.
    {line,[{location,"fun_r23_SUITE.erl",286}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,badarity},1}.
  {label,104}.
    {test,is_list,{f,103},[{x,0}]}.
    {allocate_zero,2,0}.
    {make_fun2,{f,104},0,0,0}.
    {'catch',{y,1},{f,105}}.
    {line,[{location,"fun_r23_SUITE.erl",287}]}.
    {call_fun,0}.
  {label,105}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,108},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,108},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,108},[{x,1}]}.
    {test,test_arity,{f,108},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,108},[{x,1},2,{atom,badarity}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,108},[{x,2},{atom,badarity}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,108},[{x,1}]}.
    {test,test_arity,{f,108},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nil,{f,108},[{x,1}]}.
    {make_fun2,{f,331},0,0,0}.
    {'catch',{y,0},{f,106}}.
    {move,{x,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",288}]}.
    {call_fun,1}.
  {label,106}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,107},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,107},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,107},[{x,1}]}.
    {test,test_arity,{f,107},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,107},[{x,1},2,{atom,badarity}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,107},[{x,1},{atom,badarity}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,107}.
    {line,[{scope,[0]},{location,"fun_r23_SUITE.erl",288}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",287}]}.
    {badmatch,{x,0}}.


{function, badfun, 1, 110}.
  {label,109}.
    {line,[{location,"fun_r23_SUITE.erl",291}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,badfun},1}.
  {label,110}.
    {allocate_zero,8,0}.
    {'catch',{y,7},{f,111}}.
    {move,{literal,{badfun,42}},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",293}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,111}.
    {catch_end,{y,7}}.
    {move,{x,0},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[15,16]},{location,"fun_r23_SUITE.erl",293}]}.
    {call,2,{f,122}}. % expect_badfun/2
    {'catch',{y,6},{f,112}}.
    {move,{literal,{badfun,42.0}},{x,0}}.
    {line,[{scope,[15,16]},{location,"fun_r23_SUITE.erl",294}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,112}.
    {catch_end,{y,6}}.
    {move,{x,0},{x,1}}.
    {move,{float,42.0},{x,0}}.
    {line,[{scope,[13,14]},{location,"fun_r23_SUITE.erl",294}]}.
    {call,2,{f,122}}. % expect_badfun/2
    {'catch',{y,5},{f,113}}.
    {move,{literal,{badfun,not_a_fun}},{x,0}}.
    {line,[{scope,[13,14]},{location,"fun_r23_SUITE.erl",295}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,113}.
    {catch_end,{y,5}}.
    {move,{x,0},{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,"\v\f"},{location,"fun_r23_SUITE.erl",295}]}.
    {call,2,{f,122}}. % expect_badfun/2
    {'catch',{y,4},{f,114}}.
    {move,{literal,{badfun,not_a_fun}},{x,0}}.
    {line,[{scope,"\v\f"},{location,"fun_r23_SUITE.erl",296}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,114}.
    {catch_end,{y,4}}.
    {move,{x,0},{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,"\t\n"},{location,"fun_r23_SUITE.erl",296}]}.
    {call,2,{f,122}}. % expect_badfun/2
    {'catch',{y,3},{f,115}}.
    {move,{literal,{badfun,9}},{x,0}}.
    {line,[{scope,"\t\n"},{location,"fun_r23_SUITE.erl",298}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,115}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,1}}.
    {move,{integer,9},{x,0}}.
    {line,[{scope,[7,8]},{location,"fun_r23_SUITE.erl",298}]}.
    {call,2,{f,122}}. % expect_badfun/2
    {'catch',{y,2},{f,116}}.
    {move,{atom,yes},{x,1}}.
    {move,{atom,badfun},{x,0}}.
    {line,[{scope,[7,8]},{location,"fun_r23_SUITE.erl",300}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{literal,{badfun,42}},{x,0}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,116}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[5,6]},{location,"fun_r23_SUITE.erl",300}]}.
    {call,2,{f,122}}. % expect_badfun/2
    {move,{atom,badfun},{x,0}}.
    {line,[{scope,[5,6]},{location,"fun_r23_SUITE.erl",301}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,120},[{x,0},{atom,yes}]}.
    {'catch',{y,1},{f,117}}.
    {move,{atom,of_course},{x,1}}.
    {move,{atom,badfun},{x,0}}.
    {line,[{scope,[4]},{location,"fun_r23_SUITE.erl",303}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{literal,{badfun,not_a_fun}},{x,0}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,117}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[3,4]},{location,"fun_r23_SUITE.erl",303}]}.
    {call,2,{f,122}}. % expect_badfun/2
    {move,{atom,badfun},{x,0}}.
    {line,[{scope,[3,4]},{location,"fun_r23_SUITE.erl",304}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,119},[{x,0},{atom,of_course}]}.
    {make_fun2,{f,329},0,0,0}.
    {'catch',{y,0},{f,118}}.
    {move,{x,0},{x,1}}.
    {move,{atom,literal},{x,0}}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",311}]}.
    {call_fun,1}.
  {label,118}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,literal},{x,0}}.
    {line,[{scope,[1,2]},{location,"fun_r23_SUITE.erl",311}]}.
    {call,2,{f,122}}. % expect_badfun/2
    {move,{atom,ok},{x,0}}.
    {deallocate,8}.
    return.
  {label,119}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",304}]}.
    {badmatch,{x,0}}.
  {label,120}.
    {line,[{scope,[4]},{location,"fun_r23_SUITE.erl",301}]}.
    {badmatch,{x,0}}.


{function, expect_badfun, 2, 122}.
  {label,121}.
    {line,[{location,"fun_r23_SUITE.erl",315}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,expect_badfun},2}.
  {label,122}.
    {test,is_tagged_tuple,{f,123},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,123},[{x,2},{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tuple,{f,123},[{x,2}]}.
    {test,test_arity,{f,123},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {test,is_tagged_tuple,{f,123},[{x,2},2,{atom,badfun}]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,123},[{x,3},{atom,badfun}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,{f,123},[{x,2},{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,123}.
    {line,[{location,"fun_r23_SUITE.erl",316}]}.
    {badmatch,{x,1}}.


{function, duplicated_fun, 1, 125}.
  {label,124}.
    {line,[{location,"fun_r23_SUITE.erl",318}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,duplicated_fun},1}.
  {label,125}.
    {allocate_zero,1,0}.
    {make_fun2,{f,130},0,0,0}.
    {'try',{y,0},{f,126}}.
    {test,is_eq_exact,{f,128},[{x,0},{atom,print_result_paths_fun}]}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",323}]}.
    {call,1,{f,310}}. % id/1
    {move,{atom,should_fail},{x,0}}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",324}]}.
    {call_ext,1,{extfunc,ct,error,1}}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,126}.
    {try_case,{y,0}}.
    {test,is_eq_exact,{f,127},[{x,0},{atom,error}]}.
    {test,is_tagged_tuple,{f,127},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {test,is_eq_exact,{f,127},[{x,0},{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {test,is_function2,{f,127},[{x,0},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,127}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,128}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",323}]}.
    {badmatch,{x,0}}.


{function, duplicated_fun_helper, 1, 130}.
  {label,129}.
    {line,[{location,"fun_r23_SUITE.erl",330}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,duplicated_fun_helper},1}.
  {label,130}.
    {move,{atom,ok},{x,0}}.
    return.


{function, unused_fun, 1, 132}.
  {label,131}.
    {line,[{location,"fun_r23_SUITE.erl",334}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,unused_fun},1}.
  {label,132}.
    {allocate,1,0}.
    {'try',{y,0},{f,133}}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",336}]}.
    {call,1,{f,310}}. % id/1
    {try_end,{y,0}}.
    {make_fun2,{f,327},0,0,0}.
    {jump,{f,134}}.
  {label,133}.
    {try_case,{y,0}}.
    {test,is_eq_exact,{f,135},[{x,0},{atom,throw}]}.
  {label,134}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,135}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, parallel_scopes, 1, 137}.
  {label,136}.
    {line,[{location,"fun_r23_SUITE.erl",341}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes},1}.
  {label,137}.
    {allocate_zero,24,0}.
    {line,[{location,"fun_r23_SUITE.erl",342}]}.
    {call,0,{f,208}}. % parallel_scopes_1a/0
    {test,is_eq_exact,{f,206},[{x,0},{integer,1}]}.
    {line,[{scope,"0"},{location,"fun_r23_SUITE.erl",343}]}.
    {call,0,{f,210}}. % parallel_scopes_1b/0
    {test,is_eq_exact,{f,205},[{x,0},{integer,1}]}.
    {'catch',{y,23},{f,138}}.
    {line,[{scope,"0"},{location,"fun_r23_SUITE.erl",344}]}.
    {call,0,{f,212}}. % parallel_scopes_1c/0
  {label,138}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,204},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,204},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,204},[{x,1}]}.
    {test,test_arity,{f,204},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,204},[{x,1},{literal,{badmatch,99}}]}.
    {line,[{scope,"."},{location,"fun_r23_SUITE.erl",346}]}.
    {call,0,{f,214}}. % parallel_scopes_2a/0
    {test,is_eq_exact,{f,203},[{x,0},{integer,10}]}.
    {'catch',{y,22},{f,139}}.
    {line,[{scope,"."},{location,"fun_r23_SUITE.erl",347}]}.
    {call,0,{f,216}}. % parallel_scopes_2b/0
  {label,139}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,202},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,202},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,202},[{x,1}]}.
    {test,test_arity,{f,202},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,202},[{x,1},{literal,{badmatch,15}}]}.
    {move,{integer,500},{x,1}}.
    {move,{integer,500},{x,0}}.
    {line,[{scope,","},{location,"fun_r23_SUITE.erl",348}]}.
    {call,2,{f,218}}. % parallel_scopes_2c/2
    {test,is_eq_exact,{f,201},[{x,0},{integer,500}]}.
    {'catch',{y,21},{f,140}}.
    {move,{integer,1000},{x,1}}.
    {move,{integer,500},{x,0}}.
    {line,[{scope,","},{location,"fun_r23_SUITE.erl",349}]}.
    {call,2,{f,218}}. % parallel_scopes_2c/2
  {label,140}.
    {catch_end,{y,21}}.
    {test,is_tagged_tuple,{f,200},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,200},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,200},[{x,1}]}.
    {test,test_arity,{f,200},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,200},[{x,1},{literal,{badmatch,1000}}]}.
    {move,{integer,600},{x,1}}.
    {move,{integer,600},{x,0}}.
    {line,[{scope,"*"},{location,"fun_r23_SUITE.erl",350}]}.
    {call,2,{f,221}}. % parallel_scopes_2d/2
    {test,is_eq_exact,{f,199},[{x,0},{integer,600}]}.
    {'catch',{y,20},{f,141}}.
    {move,{integer,1000},{x,1}}.
    {move,{integer,600},{x,0}}.
    {line,[{scope,"*"},{location,"fun_r23_SUITE.erl",351}]}.
    {call,2,{f,221}}. % parallel_scopes_2d/2
  {label,141}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,198},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,198},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,198},[{x,1}]}.
    {test,test_arity,{f,198},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,198},[{x,1},{literal,{badmatch,1000}}]}.
    {move,{integer,20},{x,1}}.
    {move,{integer,20},{x,0}}.
    {line,[{scope,"("},{location,"fun_r23_SUITE.erl",352}]}.
    {call,2,{f,224}}. % parallel_scopes_2e/2
    {test,is_eq_exact,{f,197},[{x,0},{literal,{a,20}}]}.
    {'catch',{y,19},{f,142}}.
    {move,{integer,25},{x,1}}.
    {move,{integer,20},{x,0}}.
    {line,[{scope,"("},{location,"fun_r23_SUITE.erl",353}]}.
    {call,2,{f,224}}. % parallel_scopes_2e/2
  {label,142}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,196},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,196},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,196},[{x,1}]}.
    {test,test_arity,{f,196},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,196},[{x,1},{literal,{badmatch,{a,25}}}]}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"&"},{location,"fun_r23_SUITE.erl",355}]}.
    {call,1,{f,227}}. % parallel_scopes_3/1
    {test,is_eq_exact,{f,195},[{x,0},{literal,{[42,2],42,a}}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"&"},{location,"fun_r23_SUITE.erl",357}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init,{y,23}}.
    {call,2,{f,229}}. % parallel_scopes_4a/2
    {test,is_eq_exact,{f,194},[{x,0},{integer,42}]}.
    {'catch',{y,18},{f,143}}.
    {move,{integer,77},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"&"},{location,"fun_r23_SUITE.erl",358}]}.
    {call,2,{f,229}}. % parallel_scopes_4a/2
  {label,143}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,193},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,193},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,193},[{x,1}]}.
    {test,test_arity,{f,193},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,193},[{x,1},{literal,{badmatch,77}}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"$"},{location,"fun_r23_SUITE.erl",359}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init,{y,23}}.
    {call,2,{f,232}}. % parallel_scopes_4b/2
    {test,is_eq_exact,{f,192},[{x,0},{integer,42}]}.
    {'catch',{y,17},{f,144}}.
    {move,{integer,77},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"$"},{location,"fun_r23_SUITE.erl",360}]}.
    {call,2,{f,232}}. % parallel_scopes_4b/2
  {label,144}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,191},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,191},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,191},[{x,1}]}.
    {test,test_arity,{f,191},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,191},[{x,1},{literal,{badmatch,77}}]}.
    {move,{atom,same},{x,0}}.
    {line,[{scope,"\""},{location,"fun_r23_SUITE.erl",361}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{atom,same},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init,{y,23}}.
    {call,2,{f,237}}. % parallel_scopes_4c/2
    {test,is_eq_exact,{f,190},[{x,0},{literal,[same,2,same,2]}]}.
    {'catch',{y,16},{f,145}}.
    {move,{integer,55},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"\""},{location,"fun_r23_SUITE.erl",362}]}.
    {call,2,{f,237}}. % parallel_scopes_4c/2
  {label,145}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,189},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,189},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,189},[{x,1}]}.
    {test,test_arity,{f,189},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,189},[{x,1},{literal,{badmatch,55}}]}.
    {move,{integer,33},{x,0}}.
    {line,[{scope," "},{location,"fun_r23_SUITE.erl",364}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{integer,33},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init,{y,23}}.
    {call,2,{f,240}}. % parallel_scopes_5/2
    {test,is_eq_exact,{f,188},[{x,0},{integer,33}]}.
    {'catch',{y,15},{f,146}}.
    {move,{integer,44},{x,1}}.
    {move,{integer,33},{x,0}}.
    {line,[{scope," "},{location,"fun_r23_SUITE.erl",365}]}.
    {call,2,{f,240}}. % parallel_scopes_5/2
  {label,146}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,187},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,187},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,187},[{x,1}]}.
    {test,test_arity,{f,187},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,187},[{x,1},{literal,{badmatch,44}}]}.
    {move,{integer,99},{x,0}}.
    {line,[{scope,[30]},{location,"fun_r23_SUITE.erl",367}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{integer,99},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init,{y,23}}.
    {call,2,{f,244}}. % parallel_scopes_6/2
    {test,is_eq_exact,{f,186},[{x,0},{integer,99}]}.
    {'catch',{y,14},{f,147}}.
    {move,{integer,88},{x,1}}.
    {move,{integer,77},{x,0}}.
    {line,[{scope,[30]},{location,"fun_r23_SUITE.erl",368}]}.
    {call,2,{f,244}}. % parallel_scopes_6/2
  {label,147}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,185},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,185},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,185},[{x,1}]}.
    {test,test_arity,{f,185},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,185},[{x,1},{literal,{badmatch,88}}]}.
    {move,{integer,99},{x,0}}.
    {line,[{scope,[28]},{location,"fun_r23_SUITE.erl",370}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{integer,99},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init,{y,23}}.
    {call,2,{f,248}}. % parallel_scopes_7/2
    {test,is_eq_exact,{f,184},[{x,0},{integer,99}]}.
    {'catch',{y,13},{f,148}}.
    {move,{integer,88},{x,1}}.
    {move,{integer,77},{x,0}}.
    {line,[{scope,[28]},{location,"fun_r23_SUITE.erl",371}]}.
    {call,2,{f,248}}. % parallel_scopes_7/2
  {label,148}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,183},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,183},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,183},[{x,1}]}.
    {test,test_arity,{f,183},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,183},[{x,1},{literal,{badmatch,88}}]}.
    {move,{integer,199},{x,0}}.
    {line,[{scope,[26]},{location,"fun_r23_SUITE.erl",373}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{integer,199},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init,{y,23}}.
    {call,2,{f,252}}. % parallel_scopes_8/2
    {test,is_eq_exact,{f,182},[{x,0},{integer,199}]}.
    {'catch',{y,12},{f,149}}.
    {move,{integer,199},{x,0}}.
    {line,[{scope,[26]},{location,"fun_r23_SUITE.erl",374}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{integer,200},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init,{y,23}}.
    {call,2,{f,252}}. % parallel_scopes_8/2
  {label,149}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,181},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,181},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,181},[{x,1}]}.
    {test,test_arity,{f,181},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,181},[{x,1},{literal,{badmatch,200}}]}.
    {move,{integer,299},{x,0}}.
    {line,[{scope,[24]},{location,"fun_r23_SUITE.erl",376}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{integer,299},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,22}}.
    {move,{integer,598},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{y,22},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,23},{x,0}}.
    {init,{y,22}}.
    {init,{y,23}}.
    {call,3,{f,255}}. % parallel_scopes_9/3
    {test,is_eq_exact,{f,180},[{x,0},{literal,{299,598}}]}.
    {'catch',{y,11},{f,150}}.
    {move,{integer,299},{x,0}}.
    {line,[{scope,[24]},{location,"fun_r23_SUITE.erl",377}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{integer,300},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,22}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{y,22},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,23},{x,0}}.
    {init,{y,22}}.
    {init,{y,23}}.
    {call,3,{f,255}}. % parallel_scopes_9/3
  {label,150}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,179},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,179},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,179},[{x,1}]}.
    {test,test_arity,{f,179},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,179},[{x,1},{literal,{badmatch,300}}]}.
    {'catch',{y,10},{f,151}}.
    {move,{integer,299},{x,0}}.
    {line,[{scope,[22]},{location,"fun_r23_SUITE.erl",378}]}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{integer,299},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{x,0},{y,22}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,310}}. % id/1
    {move,{y,22},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,23},{x,0}}.
    {init,{y,22}}.
    {init,{y,23}}.
    {call,3,{f,255}}. % parallel_scopes_9/3
  {label,151}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,178},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,178},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,178},[{x,1}]}.
    {test,test_arity,{f,178},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,178},[{x,1},{literal,{badmatch,0}}]}.
    {move,{atom,ignored},{x,2}}.
    {move,{integer,999},{x,1}}.
    {move,{integer,999},{x,3}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[20]},{location,"fun_r23_SUITE.erl",380}]}.
    {call,4,{f,259}}. % parallel_scopes_10/4
    {test,is_eq_exact,{f,177},[{x,0},{integer,999}]}.
    {'catch',{y,9},{f,152}}.
    {move,{atom,ignored},{x,2}}.
    {move,{integer,700},{x,1}}.
    {move,{integer,700},{x,3}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[20]},{location,"fun_r23_SUITE.erl",381}]}.
    {call,4,{f,259}}. % parallel_scopes_10/4
  {label,152}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,176},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,176},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,176},[{x,1}]}.
    {test,test_arity,{f,176},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,176},[{x,1},{literal,{badmatch,999}}]}.
    {'catch',{y,8},{f,153}}.
    {move,{atom,ignored},{x,2}}.
    {move,{integer,999},{x,1}}.
    {move,{integer,1000},{x,3}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[18]},{location,"fun_r23_SUITE.erl",382}]}.
    {call,4,{f,259}}. % parallel_scopes_10/4
  {label,153}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,175},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,175},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,175},[{x,1}]}.
    {test,test_arity,{f,175},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,175},[{x,1},{literal,{badmatch,1000}}]}.
    {move,{integer,999},{x,2}}.
    {move,{integer,999},{x,1}}.
    {move,{atom,ignored},{x,3}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[16]},{location,"fun_r23_SUITE.erl",383}]}.
    {call,4,{f,259}}. % parallel_scopes_10/4
    {test,is_eq_exact,{f,174},[{x,0},{integer,999}]}.
    {move,{integer,333},{x,2}}.
    {move,{integer,333},{x,1}}.
    {move,{atom,ignored},{x,3}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[16]},{location,"fun_r23_SUITE.erl",384}]}.
    {call,4,{f,259}}. % parallel_scopes_10/4
    {test,is_eq_exact,{f,173},[{x,0},{integer,333}]}.
    {'catch',{y,7},{f,154}}.
    {move,{integer,901},{x,2}}.
    {move,{integer,900},{x,1}}.
    {move,{atom,ignored},{x,3}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[16]},{location,"fun_r23_SUITE.erl",385}]}.
    {call,4,{f,259}}. % parallel_scopes_10/4
  {label,154}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,172},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,172},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,172},[{x,1}]}.
    {test,test_arity,{f,172},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,172},[{x,1},{literal,{badmatch,901}}]}.
    {move,{integer,889},{x,1}}.
    {move,{integer,889},{x,2}}.
    {move,{integer,889},{x,0}}.
    {line,[{scope,[14]},{location,"fun_r23_SUITE.erl",387}]}.
    {call,3,{f,269}}. % parallel_scopes_11/3
    {test,is_eq_exact,{f,171},[{x,0},{integer,889}]}.
    {'catch',{y,6},{f,155}}.
    {move,{integer,800},{x,1}}.
    {move,{integer,889},{x,2}}.
    {move,{integer,889},{x,0}}.
    {line,[{scope,[14]},{location,"fun_r23_SUITE.erl",388}]}.
    {call,3,{f,269}}. % parallel_scopes_11/3
  {label,155}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,170},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,170},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,170},[{x,1}]}.
    {test,test_arity,{f,170},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,170},[{x,1},{literal,{badmatch,800}}]}.
    {'catch',{y,5},{f,156}}.
    {move,{integer,889},{x,1}}.
    {move,{integer,810},{x,2}}.
    {move,{integer,889},{x,0}}.
    {line,[{scope,"\f"},{location,"fun_r23_SUITE.erl",389}]}.
    {call,3,{f,269}}. % parallel_scopes_11/3
  {label,156}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,169},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,169},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,169},[{x,1}]}.
    {test,test_arity,{f,169},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,169},[{x,1},{literal,{badmatch,810}}]}.
    {'catch',{y,4},{f,157}}.
    {move,{atom,a},{x,1}}.
    {move,{atom,a},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\n"},{location,"fun_r23_SUITE.erl",390}]}.
    {call,3,{f,269}}. % parallel_scopes_11/3
  {label,157}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,168},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,168},[{x,1}]}.
    {test,test_arity,{f,168},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{literal,{badmatch,889}}]}.
    {move,{integer,333},{x,1}}.
    {move,{integer,333},{x,2}}.
    {move,{integer,333},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",392}]}.
    {call,3,{f,280}}. % parallel_scopes_12/3
    {test,is_eq_exact,{f,167},[{x,0},{integer,333}]}.
    {'catch',{y,3},{f,158}}.
    {move,{atom,other},{x,1}}.
    {move,{integer,333},{x,2}}.
    {move,{integer,333},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",393}]}.
    {call,3,{f,280}}. % parallel_scopes_12/3
  {label,158}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,166},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,166},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,166},[{x,1}]}.
    {test,test_arity,{f,166},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,166},[{x,1},{literal,{badmatch,other}}]}.
    {'catch',{y,2},{f,159}}.
    {move,{integer,333},{x,1}}.
    {move,{atom,nope},{x,2}}.
    {move,{integer,333},{x,0}}.
    {line,[{scope,[6]},{location,"fun_r23_SUITE.erl",394}]}.
    {call,3,{f,280}}. % parallel_scopes_12/3
  {label,159}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,165},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,165},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,165},[{x,1},{literal,{badmatch,nope}}]}.
    {move,{integer,100},{x,1}}.
    {move,{integer,99},{x,0}}.
    {line,[{scope,[4]},{location,"fun_r23_SUITE.erl",396}]}.
    {call,2,{f,290}}. % parallel_scopes_13/2
    {test,is_eq_exact,{f,164},[{x,0},{literal,[1,100]}]}.
    {'catch',{y,1},{f,160}}.
    {move,{integer,100},{x,1}}.
    {move,{atom,no},{x,0}}.
    {line,[{scope,[4]},{location,"fun_r23_SUITE.erl",397}]}.
    {call,2,{f,290}}. % parallel_scopes_13/2
  {label,160}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,163},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,163},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,163},[{x,1}]}.
    {test,test_arity,{f,163},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,163},[{x,1},{literal,{badmatch,no}}]}.
    {'catch',{y,0},{f,161}}.
    {move,{atom,nope},{x,1}}.
    {move,{integer,99},{x,0}}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",398}]}.
    {call,2,{f,290}}. % parallel_scopes_13/2
  {label,161}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,162},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,162},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,162},[{x,1},{literal,{badmatch,nope}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,24}.
    return.
  {label,162}.
    {line,[{scope,[0]},{location,"fun_r23_SUITE.erl",398}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[2]},{location,"fun_r23_SUITE.erl",397}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[4]},{location,"fun_r23_SUITE.erl",396}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[4]},{location,"fun_r23_SUITE.erl",394}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[6]},{location,"fun_r23_SUITE.erl",393}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",392}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{scope,"\b"},{location,"fun_r23_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,"\n"},{location,"fun_r23_SUITE.erl",389}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,"\f"},{location,"fun_r23_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,[14]},{location,"fun_r23_SUITE.erl",387}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,[14]},{location,"fun_r23_SUITE.erl",385}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope,[16]},{location,"fun_r23_SUITE.erl",384}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,[16]},{location,"fun_r23_SUITE.erl",383}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,[16]},{location,"fun_r23_SUITE.erl",382}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[18]},{location,"fun_r23_SUITE.erl",381}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[20]},{location,"fun_r23_SUITE.erl",380}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[20]},{location,"fun_r23_SUITE.erl",378}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[22]},{location,"fun_r23_SUITE.erl",377}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[24]},{location,"fun_r23_SUITE.erl",376}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,[24]},{location,"fun_r23_SUITE.erl",374}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[26]},{location,"fun_r23_SUITE.erl",373}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,[26]},{location,"fun_r23_SUITE.erl",371}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[28]},{location,"fun_r23_SUITE.erl",370}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[28]},{location,"fun_r23_SUITE.erl",368}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[30]},{location,"fun_r23_SUITE.erl",367}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,[30]},{location,"fun_r23_SUITE.erl",365}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope," "},{location,"fun_r23_SUITE.erl",364}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope," "},{location,"fun_r23_SUITE.erl",362}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,"\""},{location,"fun_r23_SUITE.erl",361}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,"\""},{location,"fun_r23_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,"$"},{location,"fun_r23_SUITE.erl",359}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,"$"},{location,"fun_r23_SUITE.erl",358}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,"&"},{location,"fun_r23_SUITE.erl",357}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,"&"},{location,"fun_r23_SUITE.erl",355}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,"&"},{location,"fun_r23_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,"("},{location,"fun_r23_SUITE.erl",352}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,"("},{location,"fun_r23_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,"*"},{location,"fun_r23_SUITE.erl",350}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,"*"},{location,"fun_r23_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,","},{location,"fun_r23_SUITE.erl",348}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,","},{location,"fun_r23_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,"."},{location,"fun_r23_SUITE.erl",346}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,"."},{location,"fun_r23_SUITE.erl",344}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,"0"},{location,"fun_r23_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,"0"},{location,"fun_r23_SUITE.erl",342}]}.
    {badmatch,{x,0}}.


{function, parallel_scopes_1a, 0, 208}.
  {label,207}.
    {line,[{location,"fun_r23_SUITE.erl",402}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_1a},0}.
  {label,208}.
    {move,{integer,1},{x,0}}.
    return.


{function, parallel_scopes_1b, 0, 210}.
  {label,209}.
    {line,[{location,"fun_r23_SUITE.erl",407}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_1b},0}.
  {label,210}.
    {move,{integer,1},{x,0}}.
    return.


{function, parallel_scopes_1c, 0, 212}.
  {label,211}.
    {line,[{location,"fun_r23_SUITE.erl",412}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_1c},0}.
  {label,212}.
    {line,[{location,"fun_r23_SUITE.erl",415}]}.
    {badmatch,{integer,99}}.


{function, parallel_scopes_2a, 0, 214}.
  {label,213}.
    {line,[{location,"fun_r23_SUITE.erl",417}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_2a},0}.
  {label,214}.
    {move,{integer,10},{x,0}}.
    return.


{function, parallel_scopes_2b, 0, 216}.
  {label,215}.
    {line,[{location,"fun_r23_SUITE.erl",424}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_2b},0}.
  {label,216}.
    {line,[{location,"fun_r23_SUITE.erl",429}]}.
    {badmatch,{integer,15}}.


{function, parallel_scopes_2c, 2, 218}.
  {label,217}.
    {line,[{location,"fun_r23_SUITE.erl",431}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_2c},2}.
  {label,218}.
    {test,is_eq_exact,{f,219},[{x,1},{x,0}]}.
    return.
  {label,219}.
    {line,[{location,"fun_r23_SUITE.erl",436}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_2d, 2, 221}.
  {label,220}.
    {line,[{location,"fun_r23_SUITE.erl",438}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_2d},2}.
  {label,221}.
    {test,is_eq_exact,{f,222},[{x,1},{x,0}]}.
    return.
  {label,222}.
    {line,[{location,"fun_r23_SUITE.erl",443}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_2e, 2, 224}.
  {label,223}.
    {line,[{location,"fun_r23_SUITE.erl",445}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_2e},2}.
  {label,224}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,225},[{x,1},{x,0}]}.
    return.
  {label,225}.
    {line,[{location,"fun_r23_SUITE.erl",450}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_3, 1, 227}.
  {label,226}.
    {line,[{location,"fun_r23_SUITE.erl",452}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_3},1}.
  {label,227}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",453}]}.
    {call,1,{f,310}}. % id/1
    {test_heap,6,1}.
    {put_list,{x,0},{literal,[2]},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0},{y,0}]}}.
    {deallocate,1}.
    return.


{function, parallel_scopes_4a, 2, 229}.
  {label,228}.
    {line,[{location,"fun_r23_SUITE.erl",457}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_4a},2}.
  {label,229}.
    {test,is_eq_exact,{f,230},[{x,1},{x,0}]}.
    return.
  {label,230}.
    {line,[{location,"fun_r23_SUITE.erl",460}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_4b, 2, 232}.
  {label,231}.
    {line,[{location,"fun_r23_SUITE.erl",464}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_4b},2}.
  {label,232}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",466}]}.
    {call,1,{f,310}}. % id/1
    {test,is_eq_exact,{f,235},[{x,0},{atom,true}]}.
    {test,is_eq_exact,{f,234},[{y,0},{y,1}]}.
    {trim,1,1}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",471}]}.
    {call,1,{f,310}}. % id/1
    {test,is_eq_exact,{f,233},[{x,0},{atom,false}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,233}.
    {case_end,{x,0}}.
  {label,234}.
    {line,[{location,"fun_r23_SUITE.erl",470}]}.
    {badmatch,{y,0}}.
  {label,235}.
    {line,[{location,"fun_r23_SUITE.erl",466}]}.
    {case_end,{x,0}}.


{function, parallel_scopes_4c, 2, 237}.
  {label,236}.
    {line,[{location,"fun_r23_SUITE.erl",477}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_4c},2}.
  {label,237}.
    {test,is_eq_exact,{f,238},[{x,1},{x,0}]}.
    {test_heap,6,2}.
    {put_list,{x,1},{literal,[2]},{x,1}}.
    {put_list,{integer,2},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    return.
  {label,238}.
    {line,[{location,"fun_r23_SUITE.erl",480}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_5, 2, 240}.
  {label,239}.
    {line,[{location,"fun_r23_SUITE.erl",483}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_5},2}.
  {label,240}.
    {test,is_eq_exact,{f,242},[{x,1},{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",487}]}.
    {call,1,{f,310}}. % id/1
    {test,is_eq_exact,{f,241},[{x,0},{atom,false}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,241}.
    {case_end,{x,0}}.
  {label,242}.
    {line,[{location,"fun_r23_SUITE.erl",486}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_6, 2, 244}.
  {label,243}.
    {line,[{location,"fun_r23_SUITE.erl",493}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_6},2}.
  {label,244}.
    {test,is_eq_exact,{f,246},[{x,1},{x,0}]}.
    {test_heap,5,2}.
    {put_tuple2,{x,1},{list,[{x,0},{integer,40},{x,1},{integer,50}]}}.
    {line,[{location,"fun_r23_SUITE.erl",494}]}.
    {bif,tuple_size,{f,0},[{x,1}],{x,1}}.
    {test,is_eq_exact,{f,245},[{x,1},{integer,4}]}.
    return.
  {label,245}.
    {badmatch,{x,1}}.
  {label,246}.
    {line,[{location,"fun_r23_SUITE.erl",496}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_7, 2, 248}.
  {label,247}.
    {line,[{location,"fun_r23_SUITE.erl",500}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_7},2}.
  {label,248}.
    {test,is_eq_exact,{f,250},[{x,1},{x,0}]}.
    {test_heap,5,2}.
    {put_tuple2,{x,1},{list,[{x,0},{literal,"("},{x,1},{literal,"2"}]}}.
    {line,[{location,"fun_r23_SUITE.erl",501}]}.
    {bif,tuple_size,{f,0},[{x,1}],{x,1}}.
    {test,is_eq_exact,{f,249},[{x,1},{integer,4}]}.
    return.
  {label,249}.
    {badmatch,{x,1}}.
  {label,250}.
    {line,[{location,"fun_r23_SUITE.erl",503}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_8, 2, 252}.
  {label,251}.
    {line,[{location,"fun_r23_SUITE.erl",507}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_8},2}.
  {label,252}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"fun_r23_SUITE.erl",508}]}.
    {call,1,{f,310}}. % id/1
    {swap,{y,0},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",509}]}.
    {call,1,{f,310}}. % id/1
    {test,is_eq_exact,{f,253},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,253}.
    {badmatch,{x,0}}.


{function, parallel_scopes_9, 3, 255}.
  {label,254}.
    {line,[{location,"fun_r23_SUITE.erl",512}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_9},3}.
  {label,255}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"fun_r23_SUITE.erl",513}]}.
    {call,1,{f,310}}. % id/1
    {gc_bif,'+',{f,0},1,[{y,2},{y,1}],{x,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,310}}. % id/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",515}]}.
    {call,1,{f,310}}. % id/1
    {test,is_eq_exact,{f,257},[{x,0},{y,2}]}.
    {test,is_eq_exact,{f,256},[{y,0},{y,1}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,2},{y,0}]}}.
    {deallocate,3}.
    return.
  {label,256}.
    {line,[{location,"fun_r23_SUITE.erl",516}]}.
    {badmatch,{y,0}}.
  {label,257}.
    {line,[{location,"fun_r23_SUITE.erl",515}]}.
    {badmatch,{x,0}}.


{function, parallel_scopes_10, 4, 259}.
  {label,258}.
    {line,[{location,"fun_r23_SUITE.erl",518}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_10},4}.
  {label,259}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {line,[{location,"fun_r23_SUITE.erl",520}]}.
    {call,1,{f,310}}. % id/1
    {select_val,{x,0},
                {f,267},
                {list,[{atom,false},{f,261},{atom,true},{f,260}]}}.
  {label,260}.
    {test,is_eq_exact,{f,263},[{y,1},{y,2}]}.
    {move,{y,1},{x,0}}.
    {jump,{f,262}}.
  {label,261}.
    {test,is_eq_exact,{f,266},[{y,0},{y,2}]}.
    {test,is_eq_exact,{f,265},[{y,2},{integer,999}]}.
    {move,{integer,999},{x,0}}.
  {label,262}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,2},{x,0}]}}.
    {line,[{location,"fun_r23_SUITE.erl",528}]}.
    {bif,tuple_size,{f,0},[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,264},[{x,0},{integer,2}]}.
    {move,{y,2},{x,0}}.
    {deallocate,3}.
    return.
  {label,263}.
    {line,[{location,"fun_r23_SUITE.erl",523}]}.
    {badmatch,{y,1}}.
  {label,264}.
    {line,[{location,"fun_r23_SUITE.erl",528}]}.
    {badmatch,{x,0}}.
  {label,265}.
    {line,[{location,"fun_r23_SUITE.erl",526}]}.
    {badmatch,{integer,999}}.
  {label,266}.
    {line,[{location,"fun_r23_SUITE.erl",525}]}.
    {badmatch,{y,0}}.
  {label,267}.
    {line,[{location,"fun_r23_SUITE.erl",520}]}.
    {case_end,{x,0}}.


{function, parallel_scopes_11, 3, 269}.
  {label,268}.
    {line,[{location,"fun_r23_SUITE.erl",531}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_11},3}.
  {label,269}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",533}]}.
    {call,1,{f,310}}. % id/1
    {select_val,{x,0},
                {f,278},
                {list,[{atom,false},{f,271},{atom,true},{f,270}]}}.
  {label,270}.
    {test,is_eq_exact,{f,275},[{y,1},{y,2}]}.
    {test,is_eq_exact,{f,274},[{y,0},{y,2}]}.
    {test,is_eq_exact,{f,273},[{y,2},{integer,889}]}.
    {move,{integer,889},{x,0}}.
    {jump,{f,272}}.
  {label,271}.
    {test,is_eq_exact,{f,277},[{y,2},{atom,cannot_happen}]}.
    {move,{atom,cannot_happen},{x,0}}.
  {label,272}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,2},{x,0}]}}.
    {line,[{location,"fun_r23_SUITE.erl",541}]}.
    {bif,tuple_size,{f,0},[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,276},[{x,0},{integer,2}]}.
    {move,{y,2},{x,0}}.
    {deallocate,3}.
    return.
  {label,273}.
    {line,[{location,"fun_r23_SUITE.erl",537}]}.
    {badmatch,{integer,889}}.
  {label,274}.
    {line,[{location,"fun_r23_SUITE.erl",536}]}.
    {badmatch,{y,0}}.
  {label,275}.
    {line,[{location,"fun_r23_SUITE.erl",535}]}.
    {badmatch,{y,1}}.
  {label,276}.
    {line,[{location,"fun_r23_SUITE.erl",541}]}.
    {badmatch,{x,0}}.
  {label,277}.
    {line,[{location,"fun_r23_SUITE.erl",539}]}.
    {badmatch,{atom,cannot_happen}}.
  {label,278}.
    {line,[{location,"fun_r23_SUITE.erl",533}]}.
    {case_end,{x,0}}.


{function, parallel_scopes_12, 3, 280}.
  {label,279}.
    {line,[{location,"fun_r23_SUITE.erl",544}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_12},3}.
  {label,280}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",546}]}.
    {call,1,{f,310}}. % id/1
    {select_val,{x,0},
                {f,288},
                {list,[{atom,false},{f,282},{atom,true},{f,281}]}}.
  {label,281}.
    {test,is_eq_exact,{f,285},[{y,1},{y,2}]}.
    {test,is_eq_exact,{f,284},[{y,0},{y,2}]}.
    {move,{y,0},{x,0}}.
    {jump,{f,283}}.
  {label,282}.
    {test,is_eq_exact,{f,287},[{y,2},{atom,cannot_happen}]}.
    {move,{atom,cannot_happen},{x,0}}.
  {label,283}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,2},{x,0}]}}.
    {line,[{location,"fun_r23_SUITE.erl",554}]}.
    {bif,tuple_size,{f,0},[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,286},[{x,0},{integer,2}]}.
    {move,{y,2},{x,0}}.
    {deallocate,3}.
    return.
  {label,284}.
    {line,[{location,"fun_r23_SUITE.erl",550}]}.
    {badmatch,{y,0}}.
  {label,285}.
    {line,[{location,"fun_r23_SUITE.erl",549}]}.
    {badmatch,{y,1}}.
  {label,286}.
    {line,[{location,"fun_r23_SUITE.erl",554}]}.
    {badmatch,{x,0}}.
  {label,287}.
    {line,[{location,"fun_r23_SUITE.erl",552}]}.
    {badmatch,{atom,cannot_happen}}.
  {label,288}.
    {line,[{location,"fun_r23_SUITE.erl",546}]}.
    {case_end,{x,0}}.


{function, parallel_scopes_13, 2, 290}.
  {label,289}.
    {line,[{location,"fun_r23_SUITE.erl",557}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,parallel_scopes_13},2}.
  {label,290}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",560}]}.
    {call,1,{f,310}}. % id/1
    {test,is_eq_exact,{f,292},[{y,1},{integer,99}]}.
    {test,is_eq_exact,{f,291},[{y,0},{integer,100}]}.
    {test_heap,4,0}.
    {put_list,{y,0},nil,{x,0}}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,291}.
    {line,[{location,"fun_r23_SUITE.erl",562}]}.
    {badmatch,{y,0}}.
  {label,292}.
    {line,[{location,"fun_r23_SUITE.erl",561}]}.
    {badmatch,{y,1}}.


{function, coverage, 1, 294}.
  {label,293}.
    {line,[{location,"fun_r23_SUITE.erl",565}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,coverage},1}.
  {label,294}.
    {allocate,0,0}.
    {line,[{location,"fun_r23_SUITE.erl",566}]}.
    {call,0,{f,300}}. % coverage_1/0
    {test,is_eq_exact,{f,298},[{x,0},{atom,ok}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",568}]}.
    {call,1,{f,310}}. % id/1
    {call,1,{f,302}}. % coverage_2/1
    {test,is_eq_exact,{f,297},[{x,0},{literal,[2,3,4]}]}.
    {move,{literal,{[],x}},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",570}]}.
    {call,1,{f,310}}. % id/1
    {call,1,{f,304}}. % coverage_3/1
    {test,is_tuple,{f,296},[{x,0}]}.
    {test,test_arity,{f,296},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,296},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",571}]}.
    {call_fun,0}.
    {test,is_eq_exact,{f,295},[{x,0},{atom,x}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,295}.
    {badmatch,{x,0}}.
  {label,296}.
    {line,[{location,"fun_r23_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,297}.
    {line,[{location,"fun_r23_SUITE.erl",568}]}.
    {badmatch,{x,0}}.
  {label,298}.
    {line,[{location,"fun_r23_SUITE.erl",566}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 0, 300}.
  {label,299}.
    {line,[{location,"fun_r23_SUITE.erl",575}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,coverage_1},0}.
  {label,300}.
    {make_fun2,{f,324},0,0,0}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_2, 1, 302}.
  {label,301}.
    {line,[{location,"fun_r23_SUITE.erl",584}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,coverage_2},1}.
  {label,302}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,322},0,0,0}.
    {move,{y,0},{x,1}}.
    {line,[{location,"fun_r23_SUITE.erl",587}]}.
    {call_ext_last,2,{extfunc,lists,map,2},1}.


{function, coverage_3, 1, 304}.
  {label,303}.
    {line,[{location,"fun_r23_SUITE.erl",590}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,coverage_3},1}.
  {label,304}.
    {test,is_tuple,{f,303},[{x,0}]}.
    {test,test_arity,{f,303},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_nil,{f,303},[{x,1}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",591}]}.
    {call,1,{f,310}}. % id/1
    {swap,{y,0},{x,0}}.
    {make_fun2,{f,320},0,0,1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, leaky_environment, 1, 306}.
  {label,305}.
    {line,[{location,"fun_r23_SUITE.erl",593}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,leaky_environment},1}.
  {label,306}.
    {allocate_zero,1,0}.
    {make_fun2,{f,318},0,0,0}.
    {make_fun2,{f,316},0,0,1}.
    {'catch',{y,0},{f,307}}.
    {move,{atom,flurb},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",596}]}.
    {call_fun,2}.
  {label,307}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,308},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,308},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,308},[{x,1}]}.
    {test,test_arity,{f,308},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,308},[{x,1},2,{atom,badarity}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,308},[{x,2},{atom,badarity}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,308},[{x,1}]}.
    {test,test_arity,{f,308},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,308},[{x,1},{literal,[1,flurb]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,308}.
    {line,[{scope,[0]},{location,"fun_r23_SUITE.erl",596}]}.
    {badmatch,{x,0}}.


{function, id, 1, 310}.
  {label,309}.
    {line,[{location,"fun_r23_SUITE.erl",599}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,id},1}.
  {label,310}.
    return.


{function, module_info, 0, 312}.
  {label,311}.
    {line,[]}.
    {func_info,{atom,fun_r23_SUITE},{atom,module_info},0}.
  {label,312}.
    {move,{atom,fun_r23_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 314}.
  {label,313}.
    {line,[]}.
    {func_info,{atom,fun_r23_SUITE},{atom,module_info},1}.
  {label,314}.
    {move,{x,0},{x,1}}.
    {move,{atom,fun_r23_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-leaky_environment/1-fun-1-', 2, 316}.
  {label,315}.
    {line,[{location,"fun_r23_SUITE.erl",595}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-leaky_environment/1-fun-1-'},2}.
  {label,316}.
    {allocate,0,2}.
    {move,{x,1},{x,2}}.
    {move,{integer,0},{x,1}}.
    {call_fun,2}.
    {deallocate,0}.
    return.


{function, '-leaky_environment/1-fun-0-', 2, 318}.
  {label,317}.
    {line,[{location,"fun_r23_SUITE.erl",594}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-leaky_environment/1-fun-0-'},2}.
  {label,318}.
    {gc_bif,'+',{f,0},2,[{x,0},{x,1}],{x,0}}.
    return.


{function, '-coverage_3/1-fun-0-', 1, 320}.
  {label,319}.
    {line,[{location,"fun_r23_SUITE.erl",591}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-coverage_3/1-fun-0-'},1}.
  {label,320}.
    return.


{function, '-coverage_2/1-fun-0-', 1, 322}.
  {label,321}.
    {line,[{location,"fun_r23_SUITE.erl",587}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-coverage_2/1-fun-0-'},1}.
  {label,322}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    return.


{function, '-coverage_1/0-fun-0-', 1, 324}.
  {label,323}.
    {line,[{location,"fun_r23_SUITE.erl",579}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-coverage_1/0-fun-0-'},1}.
  {label,324}.
    {test,is_eq_exact,{f,325},[{x,0},{literal,"abc"}]}.
    {move,{atom,party},{x,0}}.
    return.
  {label,325}.
    {test,is_eq_exact,{f,323},[{x,0},{atom,whatever}]}.
    {move,{integer,0},{x,0}}.
    return.


{function, '-unused_fun/1-fun-1-', 0, 327}.
  {label,326}.
    {line,[{location,"fun_r23_SUITE.erl",337}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-unused_fun/1-fun-1-'},0}.
  {label,327}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-badfun/1-fun-0-', 1, 329}.
  {label,328}.
    {line,[{location,"fun_r23_SUITE.erl",308}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-badfun/1-fun-0-'},1}.
  {label,329}.
    {test,is_eq_exact,{f,328},[{x,0},{atom,literal}]}.
    {allocate,0,1}.
    {line,[{location,"fun_r23_SUITE.erl",309}]}.
    {call_fun,0}.
    {deallocate,0}.
    return.


{function, '-badarity/1-fun-1-', 0, 331}.
  {label,330}.
    {line,[{location,"fun_r23_SUITE.erl",288}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-badarity/1-fun-1-'},0}.
  {label,331}.
    {move,{integer,42},{x,0}}.
    return.


{function, '-eep37_gh6515_2/0-Fact/1-0-', 1, 333}.
  {label,332}.
    {line,[{location,"fun_r23_SUITE.erl",281}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-eep37_gh6515_2/0-Fact/1-0-'},1}.
  {label,333}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,333},0,0,0}.
    {test,is_lt,{f,334},[{integer,0},{y,0}]}.
    {line,[{location,"fun_r23_SUITE.erl",282}]}.
    {gc_bif,'-',{f,0},1,[{y,0},{integer,1}],{x,1}}.
    {swap,{x,0},{x,1}}.
    {call_fun,1}.
    {gc_bif,'*',{f,0},1,[{y,0},{x,0}],{x,0}}.
    {deallocate,1}.
    return.
  {label,334}.
    {test,is_eq_exact,{f,335},[{y,0},{integer,0}]}.
    {move,{integer,1},{x,0}}.
    {deallocate,1}.
    return.
  {label,335}.
    {test_heap,2,0}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"fun_r23_SUITE.erl",281}]}.
    {call_ext_last,2,{extfunc,erlang,error,2},1}.


{function, '-eep37_gh6515_1/0-X/0-0-', 0, 337}.
  {label,336}.
    {line,[{location,"fun_r23_SUITE.erl",270}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-eep37_gh6515_1/0-X/0-0-'},0}.
  {label,337}.
    {make_fun2,{f,337},0,0,0}.
    return.


{function, '-dup2/0-fun-0-', 0, 339}.
  {label,338}.
    {line,[{location,"fun_r23_SUITE.erl",251}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-dup2/0-fun-0-'},0}.
  {label,339}.
    {move,{atom,dup2},{x,0}}.
    return.


{function, '-dup1/0-fun-0-', 0, 341}.
  {label,340}.
    {line,[{location,"fun_r23_SUITE.erl",248}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-dup1/0-fun-0-'},0}.
  {label,341}.
    {move,{atom,dup1},{x,0}}.
    return.


{function, '-eep37_basic/0-fun-2-', 1, 343}.
  {label,342}.
    {line,[{location,"fun_r23_SUITE.erl",236}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-eep37_basic/0-fun-2-'},1}.
  {label,343}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,42}],{x,0}}.
    return.


{function, '-eep37_basic/0-fun-1-', 1, 345}.
  {label,344}.
    {line,[{location,"fun_r23_SUITE.erl",235}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-eep37_basic/0-fun-1-'},1}.
  {label,345}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    return.


{function, '-eep37_basic/0-Fact/1-0-', 1, 347}.
  {label,346}.
    {line,[{location,"fun_r23_SUITE.erl",234}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-eep37_basic/0-Fact/1-0-'},1}.
  {label,347}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,347},0,0,0}.
    {test,is_lt,{f,348},[{integer,0},{y,0}]}.
    {gc_bif,'-',{f,0},1,[{y,0},{integer,1}],{x,1}}.
    {swap,{x,0},{x,1}}.
    {call_fun,1}.
    {gc_bif,'*',{f,0},1,[{y,0},{x,0}],{x,0}}.
    {deallocate,1}.
    return.
  {label,348}.
    {test,is_eq_exact,{f,349},[{y,0},{integer,0}]}.
    {move,{integer,1},{x,0}}.
    {deallocate,1}.
    return.
  {label,349}.
    {test_heap,2,0}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_last,2,{extfunc,erlang,error,2},1}.


{function, '-external/1-fun-23-', 1, 351}.
  {label,350}.
    {line,[{location,"fun_r23_SUITE.erl",201}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-23-'},1}.
  {label,351}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,354},0,0,0}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,352},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,352},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,352}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-22-', 1, 354}.
  {label,353}.
    {line,[{location,"fun_r23_SUITE.erl",201}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-22-'},1}.
  {label,354}.
    return.


{function, '-external/1-fun-21-', 1, 356}.
  {label,355}.
    {line,[{location,"fun_r23_SUITE.erl",200}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-21-'},1}.
  {label,356}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,359},0,0,0}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,357},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,357},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,357}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-20-', 1, 359}.
  {label,358}.
    {line,[{location,"fun_r23_SUITE.erl",200}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-20-'},1}.
  {label,359}.
    return.


{function, '-external/1-fun-19-', 1, 361}.
  {label,360}.
    {line,[{location,"fun_r23_SUITE.erl",199}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-19-'},1}.
  {label,361}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,364},0,0,0}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,362},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,362},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,362}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-18-', 1, 364}.
  {label,363}.
    {line,[{location,"fun_r23_SUITE.erl",199}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-18-'},1}.
  {label,364}.
    return.


{function, '-external/1-fun-17-', 1, 366}.
  {label,365}.
    {line,[{location,"fun_r23_SUITE.erl",198}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-17-'},1}.
  {label,366}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,369},0,0,0}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,367},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,367},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,367}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-16-', 1, 369}.
  {label,368}.
    {line,[{location,"fun_r23_SUITE.erl",198}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-16-'},1}.
  {label,369}.
    return.


{function, '-external/1-fun-15-', 1, 371}.
  {label,370}.
    {line,[{location,"fun_r23_SUITE.erl",197}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-15-'},1}.
  {label,371}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,374},0,0,0}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,372},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,372},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,372}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-14-', 1, 374}.
  {label,373}.
    {line,[{location,"fun_r23_SUITE.erl",197}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-14-'},1}.
  {label,374}.
    return.


{function, '-external/1-fun-13-', 1, 376}.
  {label,375}.
    {line,[{location,"fun_r23_SUITE.erl",196}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-13-'},1}.
  {label,376}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,379},0,0,0}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,377},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,377},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,377}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-12-', 1, 379}.
  {label,378}.
    {line,[{location,"fun_r23_SUITE.erl",196}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-12-'},1}.
  {label,379}.
    return.


{function, '-external/1-fun-11-', 1, 381}.
  {label,380}.
    {line,[{location,"fun_r23_SUITE.erl",195}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-11-'},1}.
  {label,381}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,384},0,0,0}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,382},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,382},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,382}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-10-', 1, 384}.
  {label,383}.
    {line,[{location,"fun_r23_SUITE.erl",195}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-10-'},1}.
  {label,384}.
    return.


{function, '-external/1-fun-8-', 1, 386}.
  {label,385}.
    {line,[{location,"fun_r23_SUITE.erl",194}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-8-'},1}.
  {label,386}.
    return.


{function, '-external/1-fun-7-', 1, 388}.
  {label,387}.
    {line,[{location,"fun_r23_SUITE.erl",188}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-7-'},1}.
  {label,388}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,389},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,389}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-6-', 1, 391}.
  {label,390}.
    {line,[{location,"fun_r23_SUITE.erl",187}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-6-'},1}.
  {label,391}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,392},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,392}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-5-', 1, 394}.
  {label,393}.
    {line,[{location,"fun_r23_SUITE.erl",186}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-5-'},1}.
  {label,394}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,395},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,395}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-4-', 1, 397}.
  {label,396}.
    {line,[{location,"fun_r23_SUITE.erl",185}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-4-'},1}.
  {label,397}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,398},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,398}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-3-', 1, 400}.
  {label,399}.
    {line,[{location,"fun_r23_SUITE.erl",184}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-3-'},1}.
  {label,400}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,401},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,401}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-2-', 1, 403}.
  {label,402}.
    {line,[{location,"fun_r23_SUITE.erl",183}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-2-'},1}.
  {label,403}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,404},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,404}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-1-', 1, 406}.
  {label,405}.
    {line,[{location,"fun_r23_SUITE.erl",182}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-external/1-fun-1-'},1}.
  {label,406}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,407},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,407}.
    {badmatch,{x,0}}.


{function, '-bif_fun/1-fun-0-', 1, 409}.
  {label,408}.
    {line,[{location,"fun_r23_SUITE.erl",163}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-bif_fun/1-fun-0-'},1}.
  {label,409}.
    {gc_bif,abs,{f,0},1,[{x,0}],{x,0}}.
    return.


{function, '-otp_7202/0-fun-0-', 2, 411}.
  {label,410}.
    {line,[{location,"fun_r23_SUITE.erl",150}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-otp_7202/0-fun-0-'},2}.
  {label,411}.
    {test,is_boolean,{f,412},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,412}.
    {line,[{location,"fun_r23_SUITE.erl",151}]}.
    {case_end,{x,1}}.


{function, '-overwritten_fun_1/1-fun-0-', 1, 414}.
  {label,413}.
    {line,[{location,"fun_r23_SUITE.erl",125}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-overwritten_fun_1/1-fun-0-'},1}.
  {label,414}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, '-l1/0-fun-0-', 2, 416}.
  {label,415}.
    {line,[{location,"fun_r23_SUITE.erl",68}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-l1/0-fun-0-'},2}.
  {label,416}.
    {test,is_eq_exact,{f,417},[{x,1},{integer,1}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,417}.
    {gc_bif,'-',{f,0},2,[{x,1},{integer,1}],{x,2}}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,0},{x,2}}.
    {call_fun,2}.
    {gc_bif,'*',{f,0},1,[{y,0},{x,0}],{x,0}}.
    {deallocate,1}.
    return.


{function, '-l1/0-fun-2-', 2, 419}.
  {label,418}.
    {line,[{location,"fun_r23_SUITE.erl",67}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-l1/0-fun-2-'},2}.
  {label,419}.
    {test,is_eq_exact,{f,420},[{x,1},{integer,1}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,420}.
    {gc_bif,'-',{f,0},2,[{x,1},{integer,1}],{x,2}}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,0},{x,2}}.
    {call_fun,2}.
    {gc_bif,'*',{f,0},1,[{y,0},{x,0}],{x,0}}.
    {deallocate,1}.
    return.


{function, '-l1/0-fun-4-', 1, 422}.
  {label,421}.
    {line,[{location,"fun_r23_SUITE.erl",66}]}.
    {func_info,{atom,fun_r23_SUITE},{atom,'-l1/0-fun-4-'},1}.
  {label,422}.
    {jump,{f,421}}.
