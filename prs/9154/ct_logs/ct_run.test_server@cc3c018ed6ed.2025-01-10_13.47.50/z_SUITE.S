{module, z_SUITE}.  %% version = 0

{exports, [{all,0},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {loaded,1},
           {module_info,0},
           {module_info,1},
           {suite,0}]}.

{attributes, []}.

{labels, 27}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"z_SUITE.erl",26}]}.
    {func_info,{atom,z_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"z_SUITE.erl",28}]}.
    {func_info,{atom,z_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[loaded]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"z_SUITE.erl",31}]}.
    {func_info,{atom,z_SUITE},{atom,groups},0}.
  {label,6}.
    {move,nil,{x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"z_SUITE.erl",34}]}.
    {func_info,{atom,z_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,z_SUITE},{x,0}}.
    {line,[{location,"z_SUITE.erl",35}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"z_SUITE.erl",38}]}.
    {func_info,{atom,z_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"z_SUITE.erl",41}]}.
    {func_info,{atom,z_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"z_SUITE.erl",44}]}.
    {func_info,{atom,z_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, loaded, 1, 16}.
  {label,15}.
    {line,[{location,"z_SUITE.erl",47}]}.
    {func_info,{atom,z_SUITE},{atom,loaded},1}.
  {label,16}.
    {allocate,0,0}.
    {line,[{location,"z_SUITE.erl",48}]}.
    {call_ext,0,{extfunc,code,all_loaded,0}}.
    {move,{integer,0},{x,1}}.
    {call,2,{f,19}}. % do_loaded/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,17},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {badmatch,{x,0}}.


{function, do_loaded, 2, 19}.
  {label,18}.
    {line,[{location,"z_SUITE.erl",51}]}.
    {func_info,{atom,z_SUITE},{atom,do_loaded},2}.
  {label,19}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_nonempty_list,{f,22},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,{f,18},[{x,2}]}.
    {test,test_arity,{f,18},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,0}}.
    {allocate,5,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {'try',{y,4},{f,20}}.
    {move,{atom,module_info},{x,1}}.
    {line,[{location,"z_SUITE.erl",53}]}.
    {apply,0}.
    {move,{y,1},{x,1}}.
    {move,{atom,module_info},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{atom,functions},{x,0}}.
    {line,[{location,"z_SUITE.erl",54}]}.
    {apply,1}.
    {try_end,{y,4}}.
    {move,{y,3},{x,1}}.
    {jump,{f,21}}.
  {label,20}.
    {try_case,{y,4}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,"~p:~p\n~p\n"},{x,0}}.
    {line,[{scope,[3]},{location,"z_SUITE.erl",58}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {line,[{location,"z_SUITE.erl",59}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,3},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
  {label,21}.
    {move,{y,2},{x,0}}.
    {call_last,2,{f,19},5}. % do_loaded/2
  {label,22}.
    {test,is_nil,{f,18},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, module_info, 0, 24}.
  {label,23}.
    {line,[]}.
    {func_info,{atom,z_SUITE},{atom,module_info},0}.
  {label,24}.
    {move,{atom,z_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 26}.
  {label,25}.
    {line,[]}.
    {func_info,{atom,z_SUITE},{atom,module_info},1}.
  {label,26}.
    {move,{x,0},{x,1}}.
    {move,{atom,z_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
