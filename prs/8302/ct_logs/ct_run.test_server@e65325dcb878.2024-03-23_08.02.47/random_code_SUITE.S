{module, random_code_SUITE}.  %% version = 0

{exports, [{all,0},
           {compile,1},
           {end_per_suite,1},
           {init_per_suite,1},
           {module_info,0},
           {module_info,1},
           {suite,0}]}.

{attributes, []}.

{labels, 21}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"random_code_SUITE.erl",30}]}.
    {func_info,{atom,random_code_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"random_code_SUITE.erl",33}]}.
    {func_info,{atom,random_code_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[compile]},{x,0}}.
    return.


{function, init_per_suite, 1, 6}.
  {label,5}.
    {line,[{location,"random_code_SUITE.erl",36}]}.
    {func_info,{atom,random_code_SUITE},{atom,init_per_suite},1}.
  {label,6}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"random_code_SUITE.erl",37}]}.
    {call_ext,1,{extfunc,ct_property_test,init_per_suite,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nonempty_list,{f,9},[{x,0}]}.
    {'try',{y,1},{f,7}}.
    {line,[{location,"random_code_SUITE.erl",39}]}.
    {call_ext,0,{extfunc,proper_erlang_abstract_code,module,0}}.
    {try_end,{y,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,7}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,8},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,8},[{x,1},{atom,undef}]}.
    {move,{literal,{skip,"No proper_erlang_abstract_code module"}},{x,0}}.
    {deallocate,2}.
    return.
  {label,8}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,9}.
    {deallocate,2}.
    return.


{function, end_per_suite, 1, 11}.
  {label,10}.
    {line,[{location,"random_code_SUITE.erl",50}]}.
    {func_info,{atom,random_code_SUITE},{atom,end_per_suite},1}.
  {label,11}.
    return.


{function, compile, 1, 13}.
  {label,12}.
    {line,[{location,"random_code_SUITE.erl",53}]}.
    {func_info,{atom,random_code_SUITE},{atom,compile},1}.
  {label,13}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,"ERL_RANDOM_CODE_NUMTESTS"},{x,0}}.
    {line,[{location,"random_code_SUITE.erl",54}]}.
    {call_ext,1,{extfunc,os,getenv,1}}.
    {test,is_eq_exact,{f,14},[{x,0},{atom,false}]}.
    {move,{integer,1000},{y,0}}.
    {jump,{f,15}}.
  {label,14}.
    {line,[{location,"random_code_SUITE.erl",58}]}.
    {call_ext,1,{extfunc,erlang,list_to_integer,1}}.
    {move,{x,0},{y,0}}.
  {label,15}.
    {line,[{location,"random_code_SUITE.erl",62}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,0},{t_integer,any}},{integer,99}],{x,0}}.
    {gc_bif,'div',{f,0},1,[{tr,{x,0},{t_integer,any}},{integer,100}],{x,0}}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_integer,any}},{integer,60000}],{x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,seconds},{x,0}]}}.
    {line,[{location,"random_code_SUITE.erl",63}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {test_heap,2,0}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{literal,"~p tests\n"},{x,0}}.
    {line,[{location,"random_code_SUITE.erl",64}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {line,[{location,"random_code_SUITE.erl",65}]}.
    {call_ext,0,{extfunc,compile_prop,compile,0}}.
    {test_heap,7,1}.
    {put_tuple2,{x,1},{list,[{atom,numtests},{y,0}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{atom,quiet},{x,1},{x,1}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,proper,quickcheck,2}}.
    {test,is_eq_exact,{f,16},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,16}.
    {badmatch,{x,0}}.


{function, module_info, 0, 18}.
  {label,17}.
    {line,[]}.
    {func_info,{atom,random_code_SUITE},{atom,module_info},0}.
  {label,18}.
    {move,{atom,random_code_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 20}.
  {label,19}.
    {line,[]}.
    {func_info,{atom,random_code_SUITE},{atom,module_info},1}.
  {label,20}.
    {move,{x,0},{x,1}}.
    {move,{atom,random_code_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
