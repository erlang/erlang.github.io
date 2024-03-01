{module, receive_SUITE}.  %% version = 0

{exports, [{after_expression,1},
           {all,0},
           {bs_get_tail,1},
           {coverage,1},
           {double_recv,1},
           {elusive_common_exit,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {export,1},
           {groups,0},
           {in_after,1},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {match_built_terms,1},
           {module_info,0},
           {module_info,1},
           {otp_7980,1},
           {receive_var_zero,1},
           {recv,1},
           {recv_in_try,1},
           {ref_opt,1},
           {return_before_receive,1},
           {suite,0},
           {trapping,1},
           {type_optimized_markers,1},
           {wait,1}]}.

{attributes, []}.

{labels, 477}.


{function, init_per_testcase, 2, 2}.
  {label,1}.
    {line,[{location,"receive_SUITE.erl",37}]}.
    {func_info,{atom,receive_SUITE},{atom,init_per_testcase},2}.
  {label,2}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 4}.
  {label,3}.
    {line,[{location,"receive_SUITE.erl",40}]}.
    {func_info,{atom,receive_SUITE},{atom,end_per_testcase},2}.
  {label,4}.
    {move,{atom,ok},{x,0}}.
    return.


{function, suite, 0, 6}.
  {label,5}.
    {line,[{location,"receive_SUITE.erl",43}]}.
    {func_info,{atom,receive_SUITE},{atom,suite},0}.
  {label,6}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,2}}]},
          {x,0}}.
    return.


{function, all, 0, 8}.
  {label,7}.
    {line,[{location,"receive_SUITE.erl",47}]}.
    {func_info,{atom,receive_SUITE},{atom,all},0}.
  {label,8}.
    {allocate,0,0}.
    {line,[{location,"receive_SUITE.erl",48}]}.
    {call,0,{f,20}}. % slow_group/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[group]},2 => {t_atom,[slow]}}},
                     nil}}]}}.
    {move,{literal,[{group,p}]},{x,1}}.
    {call_ext_last,2,{extfunc,erlang,'++',2},0}.


{function, groups, 0, 10}.
  {label,9}.
    {line,[{location,"receive_SUITE.erl",50}]}.
    {func_info,{atom,receive_SUITE},{atom,groups},0}.
  {label,10}.
    {allocate,0,0}.
    {line,[{location,"receive_SUITE.erl",51}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[recv,coverage,otp_7980,export,wait,
                                 recv_in_try,double_recv,receive_var_zero,
                                 match_built_terms,elusive_common_exit,
                                 return_before_receive,trapping,
                                 after_expression,in_after,
                                 type_optimized_markers,bs_get_tail]}]}}.
    {put_list,{x,0},{literal,[{slow,[],[ref_opt]}]},{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 12}.
  {label,11}.
    {line,[{location,"receive_SUITE.erl",61}]}.
    {func_info,{atom,receive_SUITE},{atom,init_per_suite},1}.
  {label,12}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,receive_SUITE},{x,0}}.
    {line,[{location,"receive_SUITE.erl",62}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 14}.
  {label,13}.
    {line,[{location,"receive_SUITE.erl",65}]}.
    {func_info,{atom,receive_SUITE},{atom,end_per_suite},1}.
  {label,14}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 16}.
  {label,15}.
    {line,[{location,"receive_SUITE.erl",68}]}.
    {func_info,{atom,receive_SUITE},{atom,init_per_group},2}.
  {label,16}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 18}.
  {label,17}.
    {line,[{location,"receive_SUITE.erl",71}]}.
    {func_info,{atom,receive_SUITE},{atom,end_per_group},2}.
  {label,18}.
    {move,{x,1},{x,0}}.
    return.


{function, slow_group, 0, 20}.
  {label,19}.
    {line,[{location,"receive_SUITE.erl",74}]}.
    {func_info,{atom,receive_SUITE},{atom,slow_group},0}.
  {label,20}.
    {move,{literal,[{group,slow}]},{x,0}}.
    return.


{function, recv, 1, 22}.
  {label,21}.
    {line,[{location,"receive_SUITE.erl",86}]}.
    {func_info,{atom,receive_SUITE},{atom,recv},1}.
  {label,22}.
    {test,is_list,{f,21},[{x,0}]}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0}]}}.
    {make_fun3,{f,476},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"receive_SUITE.erl",87}]}.
    {call_ext,1,{extfunc,erlang,spawn_link,1}}.
    {test_heap,3,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,1},{list,[{x,1},{atom,test}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"receive_SUITE.erl",89}]}.
    send.
  {label,23}.
    {loop_rec,{f,27},{x,0}}.
    {test,is_tuple,{f,26},[{x,0}]}.
    {test,test_arity,{f,26},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {select_val,{x,1},{f,26},{list,[{atom,error},{f,25},{atom,ok},{f,24}]}}.
  {label,24}.
    {test,is_eq_exact,{f,26},[{x,0},{atom,test}]}.
    remove_message.
    {jump,{f,28}}.
  {label,25}.
    {test_heap,2,1}.
    remove_message.
    {put_list,{x,0},nil,{x,1}}.
    {move,{literal,"Got unpexected ~p"},{x,0}}.
    {line,[{location,"receive_SUITE.erl",93}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,unexpected},{x,0}}.
    {line,[{location,"receive_SUITE.erl",94}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
    {jump,{f,28}}.
  {label,26}.
    {loop_rec_end,{f,23}}.
  {label,27}.
    {wait_timeout,{f,23},{integer,10000}}.
    timeout.
    {move,{atom,no_answer},{x,0}}.
    {line,[{location,"receive_SUITE.erl",96}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,28}.
    {loop_rec,{f,29},{x,0}}.
    {test_heap,2,1}.
    remove_message.
    {put_list,{x,0},nil,{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,"Unexpected extra message: ~p"},{x,0}}.
    {line,[{location,"receive_SUITE.erl",100}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,unexpected},{x,0}}.
    {line,[{location,"receive_SUITE.erl",101}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
    {jump,{f,30}}.
  {label,29}.
    {wait_timeout,{f,28},{integer,10}}.
    timeout.
    {move,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",103}]}.
    {call_ext,1,{extfunc,erlang,unlink,1}}.
    {move,{atom,kill},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"receive_SUITE.erl",104}]}.
    {call_ext,2,{extfunc,erlang,exit,2}}.
  {label,30}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.


{function, loop, 1, 32}.
  {label,31}.
    {line,[{location,"receive_SUITE.erl",109}]}.
    {func_info,{atom,receive_SUITE},{atom,loop},1}.
  {label,32}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[state]},
                                     2 => {t_atom,[true]}}}}]}}.
    {allocate,0,0}.
  {label,33}.
    {loop_rec,{f,35},{x,0}}.
    {test,is_tuple,{f,34},[{x,0}]}.
    {test,test_arity,{f,34},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,34},[{x,1},{atom,test}]}.
    remove_message.
    {get_tuple_element,{x,0},0,{x,0}}.
    {move,{literal,{ok,test}},{x,1}}.
    {line,[{location,"receive_SUITE.erl",114}]}.
    send.
    {move,{literal,{state,true}},{x,0}}.
    {call_last,1,{f,32},0}. % loop/1
  {label,34}.
    remove_message.
    {move,{literal,{state,true}},{x,0}}.
    {call_last,1,{f,32},0}. % loop/1
  {label,35}.
    {wait,{f,33}}.


{function, coverage, 1, 37}.
  {label,36}.
    {line,[{location,"receive_SUITE.erl",120}]}.
    {func_info,{atom,receive_SUITE},{atom,coverage},1}.
  {label,37}.
    {test,is_list,{f,36},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"receive_SUITE.erl",121}]}.
    {call,1,{f,80}}. % do_link/1
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"receive_SUITE.erl",122}]}.
    {call,1,{f,82}}. % do_unlink/1
    {bif,node,{f,0},[],{x,0}}.
    {move,{atom,true},{x,1}}.
    {line,[{location,"receive_SUITE.erl",123}]}.
    {call,2,{f,78}}. % do_monitor_node/2
    {bif,node,{f,0},[],{x,0}}.
    {move,{atom,false},{x,1}}.
    {line,[{location,"receive_SUITE.erl",124}]}.
    {call,2,{f,78}}. % do_monitor_node/2
    {call_ext,0,{extfunc,erlang,group_leader,0}}.
    {bif,self,{f,0},[],{x,1}}.
    {line,[{location,"receive_SUITE.erl",125}]}.
    {call,2,{f,84}}. % do_group_leader/2
    {bif,self,{f,0},[],{x,0}}.
    {bif,node,{f,0},[{tr,{x,0},pid}],{x,0}}.
    {line,[{location,"receive_SUITE.erl",126}]}.
    {call,1,{f,416}}. % id/1
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{a,10}},{x,1}}.
    {line,[{location,"receive_SUITE.erl",128}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{b,20}},{x,1}}.
    {line,[{location,"receive_SUITE.erl",129}]}.
    send.
    {line,[{location,"receive_SUITE.erl",130}]}.
    {call,0,{f,75}}. % receive_all/0
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,59},
          [{tr,{x,0},{t_list,any,nil}},{literal,[{a,10},{b,20}]}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{c,42}},{x,1}}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",131}]}.
    send.
  {label,38}.
    {loop_rec,{f,50},{x,0}}.
    {test,is_eq_exact,{f,49},[{x,0},{literal,{c,42}}]}.
    remove_message.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,17},{x,1}}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",139}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,19},{x,1}}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",140}]}.
    send.
    {move,{atom,x},{x,1}}.
    {move,{atom,infinity},{x,0}}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",141}]}.
    {call,2,{f,86}}. % tuple_to_values/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,58},[{tr,{x,0},{t_number,any}},{integer,59}]}.
    {move,{atom,x},{x,1}}.
    {move,{integer,999999},{x,0}}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",142}]}.
    {call,2,{f,86}}. % tuple_to_values/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,57},[{tr,{x,0},{t_number,any}},{integer,61}]}.
    {move,{atom,x},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",143}]}.
    {call,2,{f,86}}. % tuple_to_values/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,56},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {bif,self,{f,0},[],{x,0}}.
    {'catch',{y,2},{f,39}}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",145}]}.
    {call,1,{f,73}}. % monitor_plus_badmap/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,39}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,55},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,55},[{x,1}]}.
    {test,test_arity,{f,55},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,55},[{x,1},{literal,{badmap,[]}}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{data,no_data}},{x,1}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",148}]}.
    send.
    {move,{literal,{any,pattern}},{x,0}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",149}]}.
    {call,1,{f,107}}. % receive_sink_tuple/1
    {test,is_eq_exact,{f,54},[{x,0},{atom,ok}]}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",150}]}.
    {call,1,{f,107}}. % receive_sink_tuple/1
    {test,is_eq_exact,{f,53},[{x,0},{literal,{b,a}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,94},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",153}]}.
    {call,1,{f,413}}. % smoke_receive/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,98},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",154}]}.
    {call,1,{f,413}}. % smoke_receive/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,102},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",155}]}.
    {call,1,{f,413}}. % smoke_receive/1
    {line,[{scope,[5]},{location,"receive_SUITE.erl",157}]}.
    {call,0,{f,61}}. % receive_in_called_function/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {recv_marker_reserve,{y,2}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,1}}.
    {recv_marker_bind,{y,2},{x,0}}.
    {recv_marker_use,{x,0}}.
  {label,40}.
    {loop_rec,{f,42},{x,0}}.
    {test,is_eq_exact,{f,41},[{x,0},{tr,{y,1},reference}]}.
    {recv_marker_clear,{y,1}}.
    remove_message.
    {jump,{f,43}}.
  {label,41}.
    {loop_rec_end,{f,40}}.
  {label,42}.
    timeout.
    {recv_marker_clear,{y,1}}.
  {label,43}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,ok},{x,1}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",165}]}.
    send.
    {call,0,{f,112}}. % mc_fail_requests/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{error,true}},{x,1}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",166}]}.
    send.
    {call,0,{f,112}}. % mc_fail_requests/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{error,false}},{x,1}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",167}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{'DOWN',false}},{x,1}}.
    send.
    {call,0,{f,112}}. % mc_fail_requests/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{{commit,[]},pre_commit}},{x,1}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",170}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{{commit,[]},committed}},{x,1}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",171}]}.
    send.
    {move,{literal,{commit,[]}},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",172}]}.
    {call,2,{f,124}}. % commit_participant/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,474},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",176}]}.
    {call,1,{f,416}}. % id/1
    {bif,self,{f,0},[],{x,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{atom,whatever},{x,1}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",177}]}.
    send.
    {'try',{y,1},{f,48}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",179}]}.
    {call_fun,0}.
    {try_end,{y,1}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",178}]}.
    {call,0,{f,470}}. % '-coverage/1-after$^1/0-0-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,whatever},{x,1}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",192}]}.
    send.
    {'catch',{y,1},{f,47}}.
  {label,44}.
    {loop_rec,{f,46},{x,0}}.
    {test,is_eq_exact,{f,45},[{x,0},{atom,whatever}]}.
    remove_message.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",193}]}.
    {badmatch,{atom,false}}.
  {label,45}.
    {loop_rec_end,{f,44}}.
  {label,46}.
    {wait,{f,44}}.
  {label,47}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,52},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,52},[{x,1}]}.
    {test,test_arity,{f,52},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,52},[{x,1},2,{atom,badmatch}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,[2,3]},{location,"receive_SUITE.erl",196}]}.
    send.
    {line,[{scope,[2,3]},{location,"receive_SUITE.erl",197}]}.
    {call,0,{f,135}}. % receive_in_try_and_after/0
    {test,is_eq_exact,{f,51},[{x,0},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,48}.
    {try_case,{y,1}}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,2}}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",178}]}.
    {call,0,{f,470}}. % '-coverage/1-after$^1/0-0-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {bif,raise,{f,0},[{y,0},{y,2}],{x,0}}.
  {label,49}.
    {loop_rec_end,{f,38}}.
  {label,50}.
    {wait,{f,38}}.
  {label,51}.
    {line,[{scope,[1]},{location,"receive_SUITE.erl",197}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[1]},{location,"receive_SUITE.erl",193}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",150}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",149}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,[5]},{location,"receive_SUITE.erl",145}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",143}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",141}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,[7]},{location,"receive_SUITE.erl",130}]}.
    {badmatch,{x,0}}.


{function, receive_in_called_function, 0, 61}.
  {label,60}.
    {line,[{location,"receive_SUITE.erl",201}]}.
    {func_info,{atom,receive_SUITE},{atom,receive_in_called_function},0}.
  {label,61}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {recv_marker_reserve,{y,1}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {recv_marker_bind,{y,1},{x,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"receive_SUITE.erl",203}]}.
    {call,0,{f,63}}. % returns_reference/0
    {'%',{var_info,{x,0},[{type,reference}]}}.
    {bif,self,{f,0},[],{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{atom,hello},{x,1}}.
    {line,[{location,"receive_SUITE.erl",205}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,1},{x,1}}.
    {line,[{location,"receive_SUITE.erl",206}]}.
    send.
    {move,{y,1},{x,1}}.
    {move,{atom,hello},{x,0}}.
    {line,[{location,"receive_SUITE.erl",208}]}.
    {call,2,{f,65}}. % ricf_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {recv_marker_clear,{y,1}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"receive_SUITE.erl",210}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,hello},{x,1}}.
    {line,[{location,"receive_SUITE.erl",211}]}.
    send.
    {move,{atom,hello},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",213}]}.
    {call,2,{f,65}}. % ricf_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {recv_marker_clear,{y,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"receive_SUITE.erl",215}]}.
    {call,1,{f,416}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,gaffel},{x,0}}.
    {line,[{location,"receive_SUITE.erl",216}]}.
    {call,1,{f,416}}. % id/1
    {bif,self,{f,0},[],{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"receive_SUITE.erl",218}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,0},{x,1}}.
    {line,[{location,"receive_SUITE.erl",219}]}.
    send.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,65},2}. % ricf_1/2


{function, returns_reference, 0, 63}.
  {label,62}.
    {line,[{location,"receive_SUITE.erl",225}]}.
    {func_info,{atom,receive_SUITE},{atom,returns_reference},0}.
  {label,63}.
    {allocate,1,0}.
    {recv_marker_reserve,{y,0}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {recv_marker_bind,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, ricf_1, 2, 65}.
  {label,64}.
    {line,[{location,"receive_SUITE.erl",228}]}.
    {func_info,{atom,receive_SUITE},{atom,ricf_1},2}.
  {label,65}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {recv_marker_use,{x,0}}.
  {label,66}.
    {loop_rec,{f,71},{x,0}}.
    {test,is_eq_exact,{f,70},[{x,0},{y,1}]}.
    {recv_marker_clear,{y,1}}.
    remove_message.
    {recv_marker_use,{y,0}}.
  {label,67}.
    {loop_rec,{f,69},{x,0}}.
    {test,is_eq_exact,{f,68},[{x,0},{y,0}]}.
    {recv_marker_clear,{y,0}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,68}.
    {loop_rec_end,{f,67}}.
  {label,69}.
    {wait,{f,67}}.
  {label,70}.
    {loop_rec_end,{f,66}}.
  {label,71}.
    {wait,{f,66}}.


{function, monitor_plus_badmap, 1, 73}.
  {label,72}.
    {line,[{location,"receive_SUITE.erl",234}]}.
    {func_info,{atom,receive_SUITE},{atom,monitor_plus_badmap},1}.
  {label,73}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,process},{x,0}}.
    {line,[{location,"receive_SUITE.erl",235}]}.
    {call_ext,2,{extfunc,erlang,monitor,2}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},nil]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.


{function, receive_all, 0, 75}.
  {label,74}.
    {line,[{location,"receive_SUITE.erl",237}]}.
    {func_info,{atom,receive_SUITE},{atom,receive_all},0}.
  {label,75}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {loop_rec,{f,76},{x,0}}.
    {move,{x,0},{y,0}}.
    remove_message.
    {line,[{location,"receive_SUITE.erl",240}]}.
    {call,0,{f,75}}. % receive_all/0
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,76}.
    timeout.
    {move,nil,{x,0}}.
    {deallocate,1}.
    return.


{function, do_monitor_node, 2, 78}.
  {label,77}.
    {line,[{location,"receive_SUITE.erl",245}]}.
    {func_info,{atom,receive_SUITE},{atom,do_monitor_node},2}.
  {label,78}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {allocate,0,2}.
    {line,[{location,"receive_SUITE.erl",246}]}.
    {call_ext_last,2,{extfunc,erlang,monitor_node,2},0}.


{function, do_link, 1, 80}.
  {label,79}.
    {line,[{location,"receive_SUITE.erl",248}]}.
    {func_info,{atom,receive_SUITE},{atom,do_link},1}.
  {label,80}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate,0,1}.
    {line,[{location,"receive_SUITE.erl",249}]}.
    {call_ext_last,1,{extfunc,erlang,link,1},0}.


{function, do_unlink, 1, 82}.
  {label,81}.
    {line,[{location,"receive_SUITE.erl",251}]}.
    {func_info,{atom,receive_SUITE},{atom,do_unlink},1}.
  {label,82}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate,0,1}.
    {line,[{location,"receive_SUITE.erl",252}]}.
    {call_ext_last,1,{extfunc,erlang,unlink,1},0}.


{function, do_group_leader, 2, 84}.
  {label,83}.
    {line,[{location,"receive_SUITE.erl",254}]}.
    {func_info,{atom,receive_SUITE},{atom,do_group_leader},2}.
  {label,84}.
    {'%',{var_info,{x,1},[{type,pid}]}}.
    {allocate,0,2}.
    {line,[{location,"receive_SUITE.erl",255}]}.
    {call_ext_last,2,{extfunc,erlang,group_leader,2},0}.


{function, tuple_to_values, 2, 86}.
  {label,85}.
    {line,[{location,"receive_SUITE.erl",259}]}.
    {func_info,{atom,receive_SUITE},{atom,tuple_to_values},2}.
  {label,86}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[infinity]},
                                   none,
                                   {t_integer,{1,999999}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[x]}}]}}.
    {test,is_eq_exact,
          {f,89},
          [{tr,{x,0},
               {t_union,{t_atom,[infinity]},
                        none,
                        {t_integer,{1,999999}},
                        none,none}},
           {atom,infinity}]}.
    {allocate,0,0}.
  {label,87}.
    {loop_rec,{f,88},{x,0}}.
    remove_message.
    {line,[{location,"receive_SUITE.erl",267}]}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,42}],{x,0}}.
    {deallocate,0}.
    return.
  {label,88}.
    {wait,{f,87}}.
  {label,89}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
  {label,90}.
    {loop_rec,{f,91},{x,0}}.
    {test_heap,3,1}.
    remove_message.
    {put_tuple2,{x,0},{list,[{integer,42},{x,0}]}}.
    {jump,{f,92}}.
  {label,91}.
    {wait_timeout,{f,90},{y,0}}.
    timeout.
    {move,{literal,{0,0}},{x,0}}.
  {label,92}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"receive_SUITE.erl",278}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,42}}},{x,0}],{x,0}}.
    {deallocate,1}.
    return.


{function, no_clauses_left_1, 0, 94}.
  {label,93}.
    {line,[{location,"receive_SUITE.erl",280}]}.
    {func_info,{atom,receive_SUITE},{atom,no_clauses_left_1},0}.
  {label,94}.
    {allocate,0,0}.
  {label,95}.
    {loop_rec,{f,96},{x,0}}.
    {loop_rec_end,{f,95}}.
  {label,96}.
    {wait,{f,95}}.


{function, no_clauses_left_2, 0, 98}.
  {label,97}.
    {line,[{location,"receive_SUITE.erl",289}]}.
    {func_info,{atom,receive_SUITE},{atom,no_clauses_left_2},0}.
  {label,98}.
    {allocate,0,0}.
  {label,99}.
    {loop_rec,{f,100},{x,0}}.
    {loop_rec_end,{f,99}}.
  {label,100}.
    {wait,{f,99}}.


{function, no_clauses_left_3, 0, 102}.
  {label,101}.
    {line,[{location,"receive_SUITE.erl",298}]}.
    {func_info,{atom,receive_SUITE},{atom,no_clauses_left_3},0}.
  {label,102}.
    {allocate,0,0}.
    {move,nil,{x,0}}.
    {line,[{location,"receive_SUITE.erl",299}]}.
    {call,1,{f,416}}. % id/1
    {test,is_nil,{f,105},[{x,0}]}.
  {label,103}.
    {loop_rec,{f,104},{x,0}}.
    {loop_rec_end,{f,103}}.
  {label,104}.
    {wait,{f,103}}.
  {label,105}.
    {case_end,{x,0}}.


{function, receive_sink_tuple, 1, 107}.
  {label,106}.
    {line,[{location,"receive_SUITE.erl",309}]}.
    {func_info,{atom,receive_SUITE},{atom,receive_sink_tuple},1}.
  {label,107}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{2,{t_atom,[any]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[any]},2 => {t_atom,[pattern]}}}}],
                     none}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
  {label,108}.
    {loop_rec,{f,110},{x,0}}.
    {test,is_tagged_tuple,{f,109},[{x,0},2,{atom,data}]}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,109}.
    {loop_rec_end,{f,108}}.
  {label,110}.
    {wait_timeout,{f,108},{integer,1}}.
    timeout.
    {test_heap,3,0}.
    {get_tuple_element,{y,0},0,{x,0}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {call_last,1,{f,416},1}. % id/1


{function, mc_fail_requests, 0, 112}.
  {label,111}.
    {line,[{location,"receive_SUITE.erl",318}]}.
    {func_info,{atom,receive_SUITE},{atom,mc_fail_requests},0}.
  {label,112}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
  {label,113}.
    {loop_rec,{f,120},{x,0}}.
    {test,is_tuple,{f,117},[{x,0}]}.
    {test,is_tagged_tuple,
          {f,119},
          [{tr,{x,0},{t_tuple,0,false,#{}}},2,{atom,error}]}.
    remove_message.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",323}]}.
    {call,1,{f,416}}. % id/1
    {select_val,{x,0},
                {f,122},
                {list,[{atom,false},{f,114},{atom,true},{f,121}]}}.
  {label,114}.
    {loop_rec,{f,116},{x,0}}.
    {test,is_tagged_tuple,{f,115},[{x,0},2,{atom,'DOWN'}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_ne_exact,{f,118},[{x,0},{y,0}]}.
  {label,115}.
    {loop_rec_end,{f,114}}.
  {label,116}.
    timeout.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"receive_SUITE.erl",331}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
    {jump,{f,121}}.
  {label,117}.
    {test,is_eq_exact,{f,119},[{x,0},{atom,ok}]}.
  {label,118}.
    remove_message.
    {jump,{f,121}}.
  {label,119}.
    {loop_rec_end,{f,113}}.
  {label,120}.
    timeout.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"receive_SUITE.erl",335}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,121}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,122}.
    {line,[{location,"receive_SUITE.erl",323}]}.
    {case_end,{x,0}}.


{function, commit_participant, 2, 124}.
  {label,123}.
    {line,[{location,"receive_SUITE.erl",341}]}.
    {func_info,{atom,receive_SUITE},{atom,commit_participant},2}.
  {label,124}.
    {'%',{var_info,{x,0},[{type,{t_atom,[whatever]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[commit]},2 => nil}}}]}}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,131}}.
    {move,{literal,{commit,[]}},{x,0}}.
    {line,[{location,"receive_SUITE.erl",342}]}.
    {call,1,{f,416}}. % id/1
    {move,{x,0},{y,0}}.
    {try_end,{y,1}}.
  {label,125}.
    {loop_rec,{f,130},{x,0}}.
    {test,is_tuple,{f,129},[{x,0}]}.
    {test,test_arity,{f,129},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,129},[{x,0},{atom,pre_commit}]}.
    {test,is_eq_exact,{f,129},[{x,1},{literal,{commit,[]}}]}.
    remove_message.
    {test,is_tagged_tuple,{f,133},[{y,0},2,{atom,commit}]}.
    {get_tuple_element,{y,0},1,{x,0}}.
    {bif,'=/=',{f,0},[{x,0},nil],{y,1}}.
  {label,126}.
    {loop_rec,{f,128},{x,0}}.
    {test,is_tuple,{f,127},[{x,0}]}.
    {test,test_arity,{f,127},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,127},[{x,0},{atom,committed}]}.
    {test,is_eq_exact,{f,127},[{x,1},{literal,{commit,[]}}]}.
    remove_message.
    {test,is_eq_exact,{f,132},[{y,1},{atom,true}]}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,[1]},{location,"receive_SUITE.erl",353}]}.
    {call,1,{f,416}}. % id/1
    {jump,{f,132}}.
  {label,127}.
    remove_message.
    {jump,{f,132}}.
  {label,128}.
    {wait,{f,126}}.
  {label,129}.
    {loop_rec_end,{f,125}}.
  {label,130}.
    timeout.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,failed},{x,0}}.
    {line,[{scope,[1]},{location,"receive_SUITE.erl",359}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
    {jump,{f,132}}.
  {label,131}.
    {try_case,{y,1}}.
  {label,132}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,133}.
    {line,[{scope,[1]},{location,"receive_SUITE.erl",346}]}.
    {badrecord,{y,0}}.


{function, receive_in_try_and_after, 0, 135}.
  {label,134}.
    {line,[{location,"receive_SUITE.erl",367}]}.
    {func_info,{atom,receive_SUITE},{atom,receive_in_try_and_after},0}.
  {label,135}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'try',{y,2},{f,140}}.
    {'try',{y,1},{f,139}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"receive_SUITE.erl",369}]}.
    {call,1,{f,416}}. % id/1
    {move,{x,0},{y,0}}.
    {try_end,{y,1}}.
    {try_end,{y,2}}.
  {label,136}.
    {loop_rec,{f,138},{x,0}}.
    {test,is_eq_exact,{f,137},[{x,0},{integer,0}]}.
    remove_message.
    {move,{y,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,137}.
    {loop_rec_end,{f,136}}.
  {label,138}.
    {wait,{f,136}}.
  {label,139}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,140}.
    {try_case,{y,2}}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
  {label,141}.
    {loop_rec,{f,143},{x,0}}.
    {test,is_eq_exact,{f,142},[{x,0},{integer,0}]}.
    remove_message.
    {bif,raise,{f,0},[{y,0},{y,1}],{x,0}}.
  {label,142}.
    {loop_rec_end,{f,141}}.
  {label,143}.
    {wait,{f,141}}.


{function, otp_7980, 1, 145}.
  {label,144}.
    {line,[{location,"receive_SUITE.erl",386}]}.
    {func_info,{atom,receive_SUITE},{atom,otp_7980},1}.
  {label,145}.
    {test,is_list,{f,144},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,10},{x,0}}.
    {line,[{location,"receive_SUITE.erl",387}]}.
    {call,1,{f,148}}. % otp_7980_add_clients/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,146},[{tr,{x,0},{t_number,any}},{integer,7}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,146}.
    {badmatch,{x,0}}.


{function, otp_7980_add_clients, 1, 148}.
  {label,147}.
    {line,[{location,"receive_SUITE.erl",390}]}.
    {func_info,{atom,receive_SUITE},{atom,otp_7980_add_clients},1}.
  {label,148}.
    {'%',{var_info,{x,0},[{type,{t_integer,{10,10}}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,466},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,[1,2,3]},{x,2}}.
    {move,{integer,10},{x,1}}.
    {line,[{location,"receive_SUITE.erl",392}]}.
    {call_ext_only,3,{extfunc,lists,foldl,3}}.


{function, ref_opt, 1, 150}.
  {label,149}.
    {line,[{location,"receive_SUITE.erl",400}]}.
    {func_info,{atom,receive_SUITE},{atom,ref_opt},1}.
  {label,150}.
    {test,is_list,{f,149},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"receive_SUITE.erl",401}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"receive_SUITE.erl",402}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,2,1}.
    {put_list,{y,0},{literal,["ref_opt","*.{erl,S}"]},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"receive_SUITE.erl",403}]}.
    {call_ext,1,{extfunc,filename,join,1}}.
    {call_ext,1,{extfunc,filelib,wildcard,1}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,464},0,0,{x,1},{list,[{y,0}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[error,ok]}}]}}.
    {swap,{x,0},{x,1}}.
    {trim,1,0}.
    {line,[{location,"receive_SUITE.erl",404}]}.
    {call_ext,2,{extfunc,test_lib,p_run,2}}.
    {call_last,0,{f,171},0}. % cover_recv_instructions/0


{function, do_ref_opt, 2, 152}.
  {label,151}.
    {line,[{location,"receive_SUITE.erl",410}]}.
    {func_info,{atom,receive_SUITE},{atom,do_ref_opt},2}.
  {label,152}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {'try',{y,4},{f,158}}.
    {line,[{location,"receive_SUITE.erl",412}]}.
    {call_ext,1,{extfunc,filename,extension,1}}.
    {move,{x,0},{y,1}}.
    {test,is_eq_exact,{f,153},[{x,0},{literal,".S"}]}.
    {move,{literal,[from_asm]},{x,0}}.
    {jump,{f,154}}.
  {label,153}.
    {move,nil,{x,0}}.
  {label,154}.
    {test_heap,9,1}.
    {put_tuple2,{x,1},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{atom,report_warnings},{x,0},{x,0}}.
    {put_list,{atom,report_errors},{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",413}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {move,{x,0},{y,0}}.
    {test,is_tagged_tuple,{f,167},[{x,0},2,{atom,ok}]}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",416}]}.
    {call_ext,1,{extfunc,filename,basename,1}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call_ext,2,{extfunc,filename,rootname,2}}.
    {move,{x,0},{y,1}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",417}]}.
    {call_ext,1,{extfunc,erlang,list_to_atom,1}}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",418}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,2}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",419}]}.
    {call_ext,1,{extfunc,code,load_abs,1}}.
    {get_tuple_element,{y,0},1,{y,0}}.
    {move,{y,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",420}]}.
    {apply,0}.
    {test,is_eq_exact,{f,166},[{x,0},{atom,ok}]}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",421}]}.
    {call_ext,1,{extfunc,beam_disasm,file,1}}.
    {test,is_tagged_tuple,{f,165},[{x,0},6,{atom,beam_file}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,165},[{x,1},{y,0}]}.
    {test,is_nonempty_list,{f,164},[{y,1}]}.
    {get_tuple_element,{x,0},5,{x,0}}.
    {get_list,{y,1},{x,1},{x,2}}.
    {select_val,{x,1},
                {f,164},
                {list,[{integer,110},{f,156},{integer,121},{f,155}]}}.
  {label,155}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,101}]}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,115}]}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_hd,{x,2},{x,1}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,95}]}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",426}]}.
    {call,1,{f,169}}. % collect_recv_opt_instrs/1
    {move,{x,0},{y,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,461},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{y,2},{x,1}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",430}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,162},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,458},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{y,2},{x,1}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",434}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,161},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,455},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{y,2},{x,1}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",438}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,160},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,452},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{y,2},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",442}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,159},[{x,0},{atom,true}]}.
    {jump,{f,157}}.
  {label,156}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,111}]}.
    {test,is_nonempty_list,{f,164},[{x,2}]}.
    {get_hd,{x,2},{x,1}}.
    {test,is_eq_exact,{f,164},[{x,1},{integer,95}]}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",424}]}.
    {call,1,{f,169}}. % collect_recv_opt_instrs/1
    {test,is_nil,{f,163},[{x,0}]}.
  {label,157}.
    {try_end,{y,4}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,158}.
    {try_case,{y,4}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test_heap,8,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,1}}.
    {trim,5,0}.
    {move,{literal,"~s: ~p ~p\n~p\n"},{x,0}}.
    {line,[{scope,[1,2,3]},{location,"receive_SUITE.erl",449}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,error},{x,0}}.
    {deallocate,0}.
    return.
  {label,159}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",442}]}.
    {badmatch,{atom,false}}.
  {label,160}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",438}]}.
    {badmatch,{atom,false}}.
  {label,161}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",434}]}.
    {badmatch,{atom,false}}.
  {label,162}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",430}]}.
    {badmatch,{atom,false}}.
  {label,163}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",424}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",422}]}.
    {case_end,{y,1}}.
  {label,165}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",413}]}.
    {badmatch,{x,0}}.


{function, collect_recv_opt_instrs, 1, 169}.
  {label,168}.
    {line,[{location,"receive_SUITE.erl",453}]}.
    {func_info,{atom,receive_SUITE},{atom,collect_recv_opt_instrs},1}.
  {label,169}.
    {allocate,0,1}.
    {line,[{location,"receive_SUITE.erl",463}]}.
    {call,1,{f,439}}. % '-collect_recv_opt_instrs/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {line,[{location,"receive_SUITE.erl",464}]}.
    {call_ext_last,1,{extfunc,lists,append,1},0}.


{function, cover_recv_instructions, 0, 171}.
  {label,170}.
    {line,[{location,"receive_SUITE.erl",466}]}.
    {func_info,{atom,receive_SUITE},{atom,cover_recv_instructions},0}.
  {label,171}.
    {allocate_heap,2,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {make_fun3,{f,434},0,0,{x,0},{list,[]}}.
    {line,[{location,"receive_SUITE.erl",476}]}.
    {call_ext,1,{extfunc,erlang,spawn_link,1}}.
    {recv_marker_reserve,{y,1}}.
    {move,{x,0},{y,0}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,3,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,0}]}}.
    {recv_marker_bind,{y,1},{x,0}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"receive_SUITE.erl",482}]}.
    send.
    {recv_marker_use,{y,1}}.
  {label,172}.
    {loop_rec,{f,174},{x,0}}.
    {test,is_eq_exact,{f,173},[{x,0},{tr,{y,1},reference}]}.
    {recv_marker_clear,{y,1}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,173}.
    {loop_rec_end,{f,172}}.
  {label,174}.
    {wait,{f,172}}.


{function, export, 1, 176}.
  {label,175}.
    {line,[{location,"receive_SUITE.erl",487}]}.
    {func_info,{atom,receive_SUITE},{atom,export},1}.
  {label,176}.
    {test,is_list,{f,175},[{x,0}]}.
    {allocate,1,0}.
    {recv_marker_reserve,{y,0}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,4,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,2},{list,[{atom,result},{x,0},{integer,42}]}}.
    {recv_marker_bind,{y,0},{x,0}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"receive_SUITE.erl",489}]}.
    send.
    {move,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",490}]}.
    {call,1,{f,181}}. % export_1/1
    {test,is_eq_exact,{f,177},[{x,0},{integer,42}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",491}]}.
    {call,1,{f,181}}. % export_1/1
    {recv_marker_clear,{y,0}}.
    {test,is_eq_exact,{f,179},[{x,0},{literal,{error,timeout}}]}.
    {test_heap,3,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,result},{y,0}]}}.
    {line,[{location,"receive_SUITE.erl",493}]}.
    send.
    {line,[{location,"receive_SUITE.erl",494}]}.
    {call,0,{f,187}}. % export_2/0
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,178},[{x,1},{tr,{y,0},reference}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,177}.
    {recv_marker_clear,{y,0}}.
    {line,[{location,"receive_SUITE.erl",490}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{location,"receive_SUITE.erl",494}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{location,"receive_SUITE.erl",491}]}.
    {badmatch,{x,0}}.


{function, export_1, 1, 181}.
  {label,180}.
    {line,[{location,"receive_SUITE.erl",498}]}.
    {func_info,{atom,receive_SUITE},{atom,export_1},1}.
  {label,181}.
    {'%',{var_info,{x,0},[{type,reference}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"receive_SUITE.erl",499}]}.
    {call,1,{f,416}}. % id/1
    {recv_marker_use,{y,0}}.
  {label,182}.
    {loop_rec,{f,184},{x,0}}.
    {test,is_tagged_tuple,{f,183},[{x,0},3,{atom,result}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,183},[{x,1},{tr,{y,0},reference}]}.
    remove_message.
    {move,{x,0},{y,0}}.
    {jump,{f,185}}.
  {label,183}.
    {loop_rec_end,{f,182}}.
  {label,184}.
    {wait_timeout,{f,182},{integer,1}}.
    timeout.
    {move,{literal,{error,timeout}},{y,0}}.
  {label,185}.
    {test_heap,3,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,build},{x,0}]}}.
    {line,[{location,"receive_SUITE.erl",509}]}.
    {call,1,{f,416}}. % id/1
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, export_2, 0, 187}.
  {label,186}.
    {line,[{location,"receive_SUITE.erl",512}]}.
    {func_info,{atom,receive_SUITE},{atom,export_2},0}.
  {label,187}.
    {allocate,0,0}.
  {label,188}.
    {loop_rec,{f,190},{x,0}}.
    {test,is_tagged_tuple,{f,189},[{x,0},2,{atom,result}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,189}.
    {loop_rec_end,{f,188}}.
  {label,190}.
    {wait,{f,188}}.


{function, wait, 1, 192}.
  {label,191}.
    {line,[{location,"receive_SUITE.erl",516}]}.
    {func_info,{atom,receive_SUITE},{atom,wait},1}.
  {label,192}.
    {test,is_list,{f,191},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,<<"*">>},{x,1}}.
    {line,[{location,"receive_SUITE.erl",517}]}.
    send.
    {move,{integer,1},{x,1}}.
    {move,{integer,2},{x,2}}.
    {move,{atom,r},{x,0}}.
    {line,[{location,"receive_SUITE.erl",518}]}.
    {call,3,{f,199}}. % wait_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,197},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<"*">>}]}.
    {move,{integer,2},{x,1}}.
    {move,{integer,3},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",519}]}.
    {call,3,{f,199}}. % wait_1/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{1,2}},
                                     3 => {t_integer,{2,3}}}}}]}}.
    {test,is_eq_exact,
          {f,196},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{1,1}},
                          2 => {t_integer,{1,2}},
                          3 => {t_integer,{2,3}}}}},
           {literal,{1,2,3}}]}.
    {'catch',{y,0},{f,194}}.
  {label,193}.
    {wait_timeout,{f,193},nil}.
    timeout.
    {move,{atom,timeout},{x,0}}.
  {label,194}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,195},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,195},[{x,1},2,{atom,timeout_value}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,195}.
    {line,[{scope,[0]},{location,"receive_SUITE.erl",520}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",519}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",518}]}.
    {badmatch,{x,0}}.


{function, wait_1, 3, 199}.
  {label,198}.
    {line,[{location,"receive_SUITE.erl",523}]}.
    {func_info,{atom,receive_SUITE},{atom,wait_1},3}.
  {label,199}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[r]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{1,2}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{2,3}}}]}}.
    {test,is_eq_exact,
          {f,203},
          [{tr,{x,0},{t_union,{t_atom,[r]},none,{t_integer,{1,1}},none,none}},
           {atom,r}]}.
    {allocate,0,0}.
  {label,200}.
    {loop_rec,{f,202},{x,0}}.
    {gc_bif,byte_size,{f,201},1,[{x,0}],{x,1}}.
    {test,is_ge,
          {f,201},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    remove_message.
    {deallocate,0}.
    return.
  {label,201}.
    {loop_rec_end,{f,200}}.
  {label,202}.
    {wait,{f,200}}.
  {label,203}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,1},{x,2}]}}.
    return.


{function, recv_in_try, 1, 205}.
  {label,204}.
    {line,[{location,"receive_SUITE.erl",533}]}.
    {func_info,{atom,receive_SUITE},{atom,recv_in_try},1}.
  {label,205}.
    {allocate,0,0}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{ok,fh}},{x,1}}.
    {line,[{location,"receive_SUITE.erl",534}]}.
    send.
    {move,{atom,native},{x,1}}.
    {move,{atom,infinity},{x,0}}.
    {call,2,{f,211}}. % recv_in_try_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[nok,timeout]},
                                   none,none,
                                   [{{2,{t_atom,[nok]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[nok]}}}},
                                    {{2,{t_atom,[ok]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                                   none}}]}}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,0},
               {t_union,{t_atom,[nok,timeout]},
                        none,none,
                        [{{2,{t_atom,[nok]}},
                          {t_tuple,2,true,#{1 => {t_atom,[nok]}}}},
                         {{2,{t_atom,[ok]}},
                          {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                        none}},
           {literal,{ok,fh}}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{ok,ignored}},{x,1}}.
    {line,[{location,"receive_SUITE.erl",535}]}.
    send.
    {move,{atom,plain},{x,1}}.
    {move,{atom,infinity},{x,0}}.
    {call,2,{f,211}}. % recv_in_try_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[nok,timeout]},
                                   none,none,
                                   [{{2,{t_atom,[nok]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[nok]}}}},
                                    {{2,{t_atom,[ok]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                                   none}}]}}.
    {test,is_eq_exact,
          {f,208},
          [{tr,{x,0},
               {t_union,{t_atom,[nok,timeout]},
                        none,none,
                        [{{2,{t_atom,[nok]}},
                          {t_tuple,2,true,#{1 => {t_atom,[nok]}}}},
                         {{2,{t_atom,[ok]}},
                          {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                        none}},
           {literal,{ok,42}}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{error,ignored}},{x,1}}.
    {line,[{location,"receive_SUITE.erl",536}]}.
    send.
    {move,{atom,plain},{x,1}}.
    {move,{atom,infinity},{x,0}}.
    {call,2,{f,211}}. % recv_in_try_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[nok,timeout]},
                                   none,none,
                                   [{{2,{t_atom,[nok]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[nok]}}}},
                                    {{2,{t_atom,[ok]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                                   none}}]}}.
    {test,is_eq_exact,
          {f,207},
          [{tr,{x,0},
               {t_union,{t_atom,[nok,timeout]},
                        none,none,
                        [{{2,{t_atom,[nok]}},
                          {t_tuple,2,true,#{1 => {t_atom,[nok]}}}},
                         {{2,{t_atom,[ok]}},
                          {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                        none}},
           {atom,nok}]}.
    {move,{atom,plain},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"receive_SUITE.erl",537}]}.
    {call,2,{f,211}}. % recv_in_try_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[nok,timeout]},
                                   none,none,
                                   [{{2,{t_atom,[nok]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[nok]}}}},
                                    {{2,{t_atom,[ok]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                                   none}}]}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,0},
               {t_union,{t_atom,[nok,timeout]},
                        none,none,
                        [{{2,{t_atom,[nok]}},
                          {t_tuple,2,true,#{1 => {t_atom,[nok]}}}},
                         {{2,{t_atom,[ok]}},
                          {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                        none}},
           {atom,timeout}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,224},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"receive_SUITE.erl",539}]}.
    {call,1,{f,413}}. % smoke_receive/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,228},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_map,reference,{t_atom,[false,true]}}}]}}.
    {line,[{location,"receive_SUITE.erl",540}]}.
    {call,1,{f,413}}. % smoke_receive/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,233},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_map,reference,{t_atom,[false,true]}}}]}}.
    {line,[{location,"receive_SUITE.erl",541}]}.
    {call,1,{f,413}}. % smoke_receive/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,239},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"receive_SUITE.erl",542}]}.
    {call,1,{f,413}}. % smoke_receive/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,243},0,0,{x,0},{list,[]}}.
    {line,[{location,"receive_SUITE.erl",543}]}.
    {call,1,{f,413}}. % smoke_receive/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,206}.
    {line,[{location,"receive_SUITE.erl",537}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{location,"receive_SUITE.erl",536}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{location,"receive_SUITE.erl",535}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{location,"receive_SUITE.erl",534}]}.
    {badmatch,{x,0}}.


{function, recv_in_try_1, 2, 211}.
  {label,210}.
    {line,[{location,"receive_SUITE.erl",547}]}.
    {func_info,{atom,receive_SUITE},{atom,recv_in_try_1},2}.
  {label,211}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[infinity]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[native,plain]}}]}}.
    {allocate,3,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {'try',{y,2},{f,220}}.
  {label,212}.
    {loop_rec,{f,218},{x,0}}.
    {test,is_tuple,{f,217},[{x,0}]}.
    {test,test_arity,{f,217},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{y,1}}.
    remove_message.
    {test,is_eq_exact,{f,213},[{y,0},{atom,plain}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",565}]}.
    {call,1,{f,416}}. % id/1
    {jump,{f,214}}.
  {label,213}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",563}]}.
    {call,1,{f,416}}. % id/1
  {label,214}.
    {select_val,{y,1},{f,222},{list,[{atom,error},{f,216},{atom,ok},{f,215}]}}.
  {label,215}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {jump,{f,219}}.
  {label,216}.
    {move,{atom,nok},{x,0}}.
    {jump,{f,219}}.
  {label,217}.
    {loop_rec_end,{f,212}}.
  {label,218}.
    {wait_timeout,{f,212},{y,1}}.
    timeout.
    {move,{atom,timeout},{x,0}}.
  {label,219}.
    {try_end,{y,2}}.
    {deallocate,3}.
    return.
  {label,220}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,221},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_tagged_tuple,{f,221},[{x,1},2,{atom,error}]}.
    {test_heap,3,2}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,nok},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,221}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,222}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",567}]}.
    {case_end,{y,1}}.


{function, recv_in_try_2, 0, 224}.
  {label,223}.
    {line,[{location,"receive_SUITE.erl",583}]}.
    {func_info,{atom,receive_SUITE},{atom,recv_in_try_2},0}.
  {label,224}.
    {allocate,1,0}.
    {'try',{y,0},{f,226}}.
  {label,225}.
    {wait,{f,225}}.
  {label,226}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, recv_in_try_3, 0, 228}.
  {label,227}.
    {line,[{location,"receive_SUITE.erl",596}]}.
    {func_info,{atom,receive_SUITE},{atom,recv_in_try_3},0}.
  {label,228}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,2},{f,231}}.
    {'catch',{y,1},{f,229}}.
    {line,[{location,"receive_SUITE.erl",599}]}.
    {badmatch,{atom,kid}}.
  {label,229}.
    {catch_end,{y,1}}.
  {label,230}.
    {wait,{f,230}}.
  {label,231}.
    {catch_end,{y,2}}.
    {line,[{location,"receive_SUITE.erl",598}]}.
    {bif,'not',{f,0},[{x,0}],{x,0}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{y,0},{x,0}]}}.
    {deallocate,3}.
    return.


{function, recv_in_try_4, 0, 233}.
  {label,232}.
    {line,[{location,"receive_SUITE.erl",604}]}.
    {func_info,{atom,receive_SUITE},{atom,recv_in_try_4},0}.
  {label,233}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,2},{f,237}}.
    {'catch',{y,1},{f,234}}.
    {line,[{location,"receive_SUITE.erl",607}]}.
    {badmatch,{atom,kid}}.
  {label,234}.
    {catch_end,{y,1}}.
  {label,235}.
    {loop_rec,{f,236},{x,0}}.
    {loop_rec_end,{f,235}}.
  {label,236}.
    {wait,{f,235}}.
  {label,237}.
    {catch_end,{y,2}}.
    {line,[{location,"receive_SUITE.erl",606}]}.
    {bif,'not',{f,0},[{x,0}],{x,0}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{y,0},{x,0}]}}.
    {deallocate,3}.
    return.


{function, recv_in_try_5, 0, 239}.
  {label,238}.
    {line,[{location,"receive_SUITE.erl",612}]}.
    {func_info,{atom,receive_SUITE},{atom,recv_in_try_5},0}.
  {label,239}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,0},{f,241}}.
    {move,{literal,<<3:4>>},{x,0}}.
    {line,[{location,"receive_SUITE.erl",616}]}.
    {call,2,{f,430}}. % '-recv_in_try_5/0-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_ext,0,{extfunc,erlang,get,0}}.
  {label,240}.
    {wait,{f,240}}.
  {label,241}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, recv_in_catch_1, 0, 243}.
  {label,242}.
    {line,[{location,"receive_SUITE.erl",626}]}.
    {func_info,{atom,receive_SUITE},{atom,recv_in_catch_1},0}.
  {label,243}.
    {allocate,1,0}.
    {'catch',{y,0},{f,245}}.
  {label,244}.
    {wait,{f,244}}.
  {label,245}.
    {catch_end,{y,0}}.
    {deallocate,1}.
    return.


{function, double_recv, 1, 247}.
  {label,246}.
    {line,[{location,"receive_SUITE.erl",641}]}.
    {func_info,{atom,receive_SUITE},{atom,double_recv},1}.
  {label,247}.
    {allocate,0,0}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{more,{a,term}}},{x,1}}.
    {line,[{location,"receive_SUITE.erl",642}]}.
    send.
    {move,{atom,any},{x,1}}.
    {move,{literal,{more,{a,term}}},{x,0}}.
    {line,[{location,"receive_SUITE.erl",643}]}.
    {call,2,{f,253}}. % do_double_recv/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,251},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,message},{x,1}}.
    {line,[{location,"receive_SUITE.erl",644}]}.
    send.
    {move,{atom,message},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"receive_SUITE.erl",645}]}.
    {call,2,{f,253}}. % do_double_recv/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,250},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,whatever},{x,1}}.
    {move,{literal,{more,42}},{x,0}}.
    {line,[{location,"receive_SUITE.erl",647}]}.
    {call,2,{f,253}}. % do_double_recv/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,249},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,whatever},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"receive_SUITE.erl",648}]}.
    {call,2,{f,253}}. % do_double_recv/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,248},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,248}.
    {badmatch,{atom,ok}}.
  {label,249}.
    {line,[{location,"receive_SUITE.erl",647}]}.
    {badmatch,{atom,ok}}.
  {label,250}.
    {line,[{location,"receive_SUITE.erl",645}]}.
    {badmatch,{atom,error}}.
  {label,251}.
    {line,[{location,"receive_SUITE.erl",643}]}.
    {badmatch,{atom,error}}.


{function, do_double_recv, 2, 253}.
  {label,252}.
    {line,[{location,"receive_SUITE.erl",651}]}.
    {func_info,{atom,receive_SUITE},{atom,do_double_recv},2}.
  {label,253}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[whatever]},
         none,none,
         [{{2,{t_atom,[more]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[more]},
              2 =>
               {t_union,none,none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[term]}}}}],
                none}}}}],
         none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[any,message,whatever]}}]}}.
    {test,is_tuple,
        {f,256},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[whatever]},
                 none,none,
                 [{{2,{t_atom,[more]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[more]},
                         2 =>
                             {t_union,none,none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[a]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[a]},
                                         2 => {t_atom,[term]}}}}],
                                 none}}}}],
                 none}}]}.
    {allocate,1,1}.
    {get_tuple_element,{x,0},1,{y,0}}.
  {label,254}.
    {loop_rec,{f,260},{x,0}}.
    {test,is_tagged_tuple,{f,255},[{x,0},2,{atom,more}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_ne_exact,
          {f,258},
          [{x,0},
           {tr,{y,0},
               {t_union,none,none,
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[term]}}}}],
                        none}}]}.
  {label,255}.
    {loop_rec_end,{f,254}}.
  {label,256}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
  {label,257}.
    {loop_rec,{f,260},{x,0}}.
    {test,is_eq_exact,
          {f,259},
          [{x,0},{tr,{y,0},{t_atom,[any,message,whatever]}}]}.
  {label,258}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,259}.
    {loop_rec_end,{f,257}}.
  {label,260}.
    timeout.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, receive_var_zero, 1, 262}.
  {label,261}.
    {line,[{location,"receive_SUITE.erl",668}]}.
    {func_info,{atom,receive_SUITE},{atom,receive_var_zero},1}.
  {label,262}.
    {test,is_list,{f,261},[{x,0}]}.
    {allocate,0,0}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,x},{x,1}}.
    {line,[{location,"receive_SUITE.erl",669}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,y},{x,1}}.
    {line,[{location,"receive_SUITE.erl",670}]}.
    send.
    {line,[{location,"receive_SUITE.erl",671}]}.
    {call,0,{f,276}}. % zero/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
  {label,263}.
    {loop_rec,{f,265},{x,0}}.
    {test,is_eq_exact,{f,264},[{x,0},{atom,z}]}.
    remove_message.
    {line,[{location,"receive_SUITE.erl",672}]}.
    {badmatch,{atom,ok}}.
  {label,264}.
    {loop_rec_end,{f,263}}.
  {label,265}.
    timeout.
    timeout.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,w},{x,1}}.
    {line,[{location,"receive_SUITE.erl",679}]}.
    send.
  {label,266}.
    {loop_rec,{f,274},{x,0}}.
    {test,is_eq_exact,{f,273},[{x,0},{atom,x}]}.
    remove_message.
  {label,267}.
    {loop_rec,{f,272},{x,0}}.
    {test,is_eq_exact,{f,271},[{x,0},{atom,y}]}.
    remove_message.
  {label,268}.
    {loop_rec,{f,270},{x,0}}.
    {test,is_eq_exact,{f,269},[{x,0},{atom,w}]}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,269}.
    {loop_rec_end,{f,268}}.
  {label,270}.
    {wait,{f,268}}.
  {label,271}.
    {loop_rec_end,{f,267}}.
  {label,272}.
    {wait,{f,267}}.
  {label,273}.
    {test_heap,3,1}.
    remove_message.
    {put_tuple2,{x,0},{list,[{atom,bad_message},{x,0}]}}.
    {line,[{location,"receive_SUITE.erl",685}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,274}.
    {wait,{f,266}}.


{function, zero, 0, 276}.
  {label,275}.
    {line,[{location,"receive_SUITE.erl",688}]}.
    {func_info,{atom,receive_SUITE},{atom,zero},0}.
  {label,276}.
    {move,{integer,0},{x,0}}.
    return.


{function, match_built_terms, 1, 278}.
  {label,277}.
    {line,[{location,"receive_SUITE.erl",709}]}.
    {func_info,{atom,receive_SUITE},{atom,match_built_terms},1}.
  {label,278}.
    {test,is_list,{f,277},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {recv_marker_reserve,{y,3}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {recv_marker_bind,{y,3},{x,0}}.
    {move,{x,0},{y,3}}.
    {move,{integer,97},{x,0}}.
    {line,[{location,"receive_SUITE.erl",710}]}.
    {call,1,{f,416}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{integer,98},{x,0}}.
    {call,1,{f,416}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{y,2},{x,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,416}}. % id/1
    {test_heap,4,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,2},{list,[{y,3},{y,2},{y,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    send.
    {recv_marker_use,{y,3}}.
  {label,279}.
    {loop_rec,{f,281},{x,0}}.
    {test,is_tuple,{f,280},[{x,0}]}.
    {test,test_arity,{f,280},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,280},[{x,1},{tr,{y,3},reference}]}.
    {test,is_eq_exact,{f,280},[{x,2},{y,2}]}.
    {test,is_eq_exact,{f,280},[{x,0},{y,1}]}.
    {test_heap,4,0}.
    {put_list,{y,1},nil,{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {test,is_eq_exact,{f,280},[{tr,{x,0},{t_cons,any,nil}},{y,0}]}.
    {recv_marker_clear,{y,3}}.
    remove_message.
    {jump,{f,282}}.
  {label,280}.
    {loop_rec_end,{f,279}}.
  {label,281}.
    {wait_timeout,{f,279},{integer,5000}}.
    timeout.
    {recv_marker_clear,{y,3}}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,"Failed to match message with term built in receive guard."},
          {x,0}}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,282}.
    {recv_marker_reserve,{y,3}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {recv_marker_bind,{y,3},{x,0}}.
    {move,{x,0},{y,3}}.
    {move,{integer,97},{x,0}}.
    {line,[{location,"receive_SUITE.erl",711}]}.
    {call,1,{f,416}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{integer,98},{x,0}}.
    {call,1,{f,416}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{y,2},{x,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,416}}. % id/1
    {test_heap,4,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,2},{list,[{y,3},{y,2},{y,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    send.
    {recv_marker_use,{y,3}}.
  {label,283}.
    {loop_rec,{f,285},{x,0}}.
    {test,is_tuple,{f,284},[{x,0}]}.
    {test,test_arity,{f,284},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,284},[{x,1},{tr,{y,3},reference}]}.
    {test,is_eq_exact,{f,284},[{x,2},{y,2}]}.
    {test,is_eq_exact,{f,284},[{x,0},{y,1}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,2},{y,1}]}}.
    {test,is_eq_exact,{f,284},[{tr,{x,0},{t_tuple,2,true,#{}}},{y,0}]}.
    {recv_marker_clear,{y,3}}.
    remove_message.
    {jump,{f,286}}.
  {label,284}.
    {loop_rec_end,{f,283}}.
  {label,285}.
    {wait_timeout,{f,283},{integer,5000}}.
    timeout.
    {recv_marker_clear,{y,3}}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,"Failed to match message with term built in receive guard."},
          {x,0}}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,286}.
    {recv_marker_reserve,{y,3}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {recv_marker_bind,{y,3},{x,0}}.
    {move,{x,0},{y,3}}.
    {move,{integer,97},{x,0}}.
    {line,[{location,"receive_SUITE.erl",712}]}.
    {call,1,{f,416}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{integer,98},{x,0}}.
    {call,1,{f,416}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {y,2},
                          {integer,8},
                          {atom,integer},
                          2,1,nil,
                          {x,0},
                          {integer,8}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,416}}. % id/1
    {test_heap,4,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,2},{list,[{y,3},{y,2},{y,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    send.
    {recv_marker_use,{y,3}}.
  {label,287}.
    {loop_rec,{f,289},{x,0}}.
    {test,is_tuple,{f,288},[{x,0}]}.
    {test,test_arity,{f,288},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,288},[{x,1},{tr,{y,3},reference}]}.
    {test,is_eq_exact,{f,288},[{x,2},{y,2}]}.
    {test,is_eq_exact,{f,288},[{x,0},{y,1}]}.
    {bs_create_bin,{f,288},
                   0,0,16,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {y,2},
                          {integer,8},
                          {atom,integer},
                          2,1,nil,
                          {y,1},
                          {integer,8}]}}.
    {test,is_eq_exact,{f,288},[{tr,{x,0},{t_bitstring,16,false}},{y,0}]}.
    {recv_marker_clear,{y,3}}.
    remove_message.
    {jump,{f,290}}.
  {label,288}.
    {loop_rec_end,{f,287}}.
  {label,289}.
    {wait_timeout,{f,287},{integer,5000}}.
    timeout.
    {recv_marker_clear,{y,3}}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,"Failed to match message with term built in receive guard."},
          {x,0}}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,290}.
    {recv_marker_reserve,{y,3}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {recv_marker_bind,{y,3},{x,0}}.
    {move,{x,0},{y,3}}.
    {move,{integer,97},{x,0}}.
    {line,[{location,"receive_SUITE.erl",713}]}.
    {call,1,{f,416}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{integer,98},{x,0}}.
    {call,1,{f,416}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{integer,1},{y,2},{integer,2},{x,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,416}}. % id/1
    {test_heap,4,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,2},{list,[{y,3},{y,2},{y,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    send.
    {recv_marker_use,{y,3}}.
  {label,291}.
    {loop_rec,{f,293},{x,0}}.
    {test,is_tuple,{f,292},[{x,0}]}.
    {test,test_arity,{f,292},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,292},[{x,1},{tr,{y,3},reference}]}.
    {test,is_eq_exact,{f,292},[{x,2},{y,2}]}.
    {test,is_eq_exact,{f,292},[{x,0},{y,1}]}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[{integer,1},{y,2},{integer,2},{y,1}]}}.
    {test,is_eq_exact,
          {f,292},
          [{tr,{x,0},{t_map,{t_integer,{1,2}},any}},{y,0}]}.
    {recv_marker_clear,{y,3}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,292}.
    {loop_rec_end,{f,291}}.
  {label,293}.
    {wait_timeout,{f,291},{integer,5000}}.
    timeout.
    {recv_marker_clear,{y,3}}.
    {move,{literal,"Failed to match message with term built in receive guard."},
          {x,0}}.
    {call_ext_last,1,{extfunc,ct,fail,1},4}.


{function, elusive_common_exit, 1, 295}.
  {label,294}.
    {line,[{location,"receive_SUITE.erl",715}]}.
    {func_info,{atom,receive_SUITE},{atom,elusive_common_exit},1}.
  {label,295}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{1,a}},{x,1}}.
    {line,[{location,"receive_SUITE.erl",716}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{2,b}},{x,1}}.
    {line,[{location,"receive_SUITE.erl",717}]}.
    send.
    {move,{integer,2},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,[x,y,z]},{x,0}}.
    {line,[{location,"receive_SUITE.erl",718}]}.
    {call,3,{f,300}}. % elusive_loop/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_list,{t_atom,[x,y,z]},nil},
                       2 => {t_list,{t_tuple,2,true,#{}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,298},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_atom,[x,y,z]},nil},
                          2 => {t_list,{t_tuple,2,true,#{}},nil}}}},
           {literal,{[z],[{2,b},{1,a}]}}]}.
    {move,{atom,code_server},{x,0}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",720}]}.
    {call_ext,1,{extfunc,erlang,whereis,1}}.
    {test_heap,3,1}.
    {bif,self,{f,0},[],{y,1}}.
    {put_tuple2,{x,1},{list,[{y,1},{atom,abc}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",722}]}.
    send.
    {test_heap,3,0}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",723}]}.
    send.
    {test_heap,3,0}.
    {put_tuple2,{x,1},{list,[{y,1},{atom,other}]}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",724}]}.
    send.
    {'try',{y,2},{f,296}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",725}]}.
    {call,1,{f,308}}. % elusive2/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,296}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,297},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_nonempty_list,{f,297},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,3}}.
    {test,is_eq_exact,{f,297},[{x,0},{atom,other}]}.
    {test,is_nonempty_list,{f,297},[{x,3}]}.
    {get_list,{x,3},{x,0},{x,3}}.
    {test,is_nonempty_list,{f,297},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nil,{f,297},[{x,3}]}.
    {test,is_eq_exact,{f,297},[{x,0},{y,0}]}.
    {test,is_eq_exact,{f,297},[{x,4},{tr,{y,1},pid}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,297}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,298}.
    {line,[{scope,[2]},{location,"receive_SUITE.erl",718}]}.
    {badmatch,{x,0}}.


{function, elusive_loop, 3, 300}.
  {label,299}.
    {line,[{location,"receive_SUITE.erl",735}]}.
    {func_info,{atom,receive_SUITE},{atom,elusive_loop},3}.
  {label,300}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[x,y,z]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{'-inf',2}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_eq_exact,{f,301},[{tr,{x,1},{t_integer,{'-inf',2}}},{integer,0}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    return.
  {label,301}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
  {label,302}.
    {loop_rec,{f,306},{x,0}}.
    {test,is_tuple,{f,305},[{x,0}]}.
    {test,test_arity,{f,305},[{x,0},2]}.
    {test,is_nil,{f,303},[{tr,{y,2},{t_list,{t_atom,[x,y,z]},nil}}]}.
    {test_heap,3,1}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},nil]}}.
    {jump,{f,304}}.
  {label,303}.
    {test_heap,3,1}.
    remove_message.
    {get_tl,{y,2},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
  {label,304}.
    {line,[{location,"receive_SUITE.erl",749}]}.
    {gc_bif,'-',{f,0},1,[{tr,{y,1},{t_integer,{'-inf',2}}},{integer,1}],{x,1}}.
    {test_heap,2,2}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {put_list,{x,2},{y,0},{x,2}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {call_last,3,{f,300},3}. % elusive_loop/3
  {label,305}.
    {loop_rec_end,{f,302}}.
  {label,306}.
    {wait,{f,302}}.


{function, elusive2, 1, 308}.
  {label,307}.
    {line,[{location,"receive_SUITE.erl",752}]}.
    {func_info,{atom,receive_SUITE},{atom,elusive2},1}.
  {label,308}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
  {label,309}.
    {loop_rec,{f,314},{x,0}}.
    {test,is_tuple,{f,313},[{x,0}]}.
    {test,test_arity,{f,313},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_atom,{f,310},[{x,1}]}.
    {test,is_eq_exact,{f,312},[{tr,{x,1},{t_atom,any}},{atom,abc}]}.
    {jump,{f,311}}.
  {label,310}.
    {test,is_nil,{f,312},[{x,1}]}.
  {label,311}.
    remove_message.
    {test_heap,2,1}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {put_list,{x,0},{y,0},{x,0}}.
    {call_last,1,{f,308},1}. % elusive2/1
  {label,312}.
    {test_heap,2,2}.
    remove_message.
    {put_list,{x,1},{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",767}]}.
    {call_ext_last,1,{extfunc,erlang,throw,1},1}.
  {label,313}.
    {loop_rec_end,{f,309}}.
  {label,314}.
    {wait,{f,309}}.


{function, return_before_receive, 1, 316}.
  {label,315}.
    {line,[{location,"receive_SUITE.erl",772}]}.
    {func_info,{atom,receive_SUITE},{atom,return_before_receive},1}.
  {label,316}.
    {allocate,0,0}.
    {line,[{location,"receive_SUITE.erl",773}]}.
    {call,0,{f,319}}. % do_return_before_receive/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ref_received,timeout]}}]}}.
    {test,is_eq_exact,
          {f,317},
          [{tr,{x,0},{t_atom,[ref_received,timeout]}},{atom,ref_received}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,317}.
    {badmatch,{atom,timeout}}.


{function, do_return_before_receive, 0, 319}.
  {label,318}.
    {line,[{location,"receive_SUITE.erl",776}]}.
    {func_info,{atom,receive_SUITE},{atom,do_return_before_receive},0}.
  {label,319}.
    {allocate,1,0}.
    {recv_marker_reserve,{y,0}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,3,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,2},{list,[{atom,ref},{x,0}]}}.
    {recv_marker_bind,{y,0},{x,0}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"receive_SUITE.erl",778}]}.
    send.
    {move,{atom,false},{x,0}}.
    {line,[{location,"receive_SUITE.erl",779}]}.
    {call,1,{f,416}}. % id/1
    {call,1,{f,324}}. % maybe_receive/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {recv_marker_use,{y,0}}.
  {label,320}.
    {loop_rec,{f,322},{x,0}}.
    {test,is_tagged_tuple,{f,321},[{x,0},2,{atom,ref}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,321},[{x,0},{tr,{y,0},reference}]}.
    {recv_marker_clear,{y,0}}.
    remove_message.
    {move,{atom,ref_received},{x,0}}.
    {deallocate,1}.
    return.
  {label,321}.
    {loop_rec_end,{f,320}}.
  {label,322}.
    {wait_timeout,{f,320},{integer,1}}.
    timeout.
    {recv_marker_clear,{y,0}}.
    {move,{atom,timeout},{x,0}}.
    {deallocate,1}.
    return.


{function, maybe_receive, 1, 324}.
  {label,323}.
    {line,[{location,"receive_SUITE.erl",789}]}.
    {func_info,{atom,receive_SUITE},{atom,maybe_receive},1}.
  {label,324}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,2}}.
    {recv_marker_reserve,{y,1}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,0}}.
    {recv_marker_bind,{y,1},{x,0}}.
    {select_val,{y,2},
                {f,330},
                {list,[{atom,false},{f,329},{atom,true},{f,325}]}}.
  {label,325}.
    {recv_marker_use,{x,0}}.
  {label,326}.
    {loop_rec,{f,328},{x,0}}.
    {test,is_eq_exact,{f,327},[{x,0},{tr,{y,0},reference}]}.
    {recv_marker_clear,{y,0}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,327}.
    {loop_rec_end,{f,326}}.
  {label,328}.
    {wait,{f,326}}.
  {label,329}.
    {recv_marker_clear,{x,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,330}.
    {recv_marker_clear,{x,0}}.
    {line,[{location,"receive_SUITE.erl",791}]}.
    {case_end,{y,2}}.


{function, trapping, 1, 332}.
  {label,331}.
    {line,[{location,"receive_SUITE.erl",803}]}.
    {func_info,{atom,receive_SUITE},{atom,trapping},1}.
  {label,332}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",804}]}.
    {call,1,{f,334}}. % do_trapping/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,1},{x,0}}.
    {call_last,1,{f,334},0}. % do_trapping/1


{function, do_trapping, 1, 334}.
  {label,333}.
    {line,[{location,"receive_SUITE.erl",809}]}.
    {func_info,{atom,receive_SUITE},{atom,do_trapping},1}.
  {label,334}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {allocate,2,1}.
    {move,{x,0},{y,1}}.
    {recv_marker_reserve,{y,0}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {bif,self,{f,0},[],{x,1}}.
    {recv_marker_bind,{y,0},{x,0}}.
    {move,{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"receive_SUITE.erl",811}]}.
    send.
    {line,[{location,"receive_SUITE.erl",812}]}.
    {gc_bif,'rem',{f,0},0,[{tr,{y,1},{t_integer,{0,1}}},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,336},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
  {label,335}.
    {wait_timeout,{f,335},{integer,1}}.
    timeout.
  {label,336}.
    {recv_marker_use,{y,0}}.
  {label,337}.
    {loop_rec,{f,340},{x,0}}.
    {test,is_eq_exact,{f,339},[{x,0},{tr,{y,0},reference}]}.
    {recv_marker_clear,{y,0}}.
    remove_message.
  {label,338}.
    {wait_timeout,{f,338},{integer,1}}.
    timeout.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,339}.
    {loop_rec_end,{f,337}}.
  {label,340}.
    {wait,{f,337}}.


{function, after_expression, 1, 342}.
  {label,341}.
    {line,[{location,"receive_SUITE.erl",823}]}.
    {func_info,{atom,receive_SUITE},{atom,after_expression},1}.
  {label,342}.
    {allocate,0,0}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{a,message}},{x,1}}.
    {line,[{location,"receive_SUITE.erl",824}]}.
    send.
    {move,{integer,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",825}]}.
    {call,1,{f,347}}. % after_expr/1
    {test,is_eq_exact,{f,345},[{x,0},{literal,{a,message}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",826}]}.
    {call,1,{f,347}}. % after_expr/1
    {test,is_eq_exact,{f,344},[{x,0},{atom,timeout}]}.
    {move,{integer,10},{x,0}}.
    {line,[{location,"receive_SUITE.erl",827}]}.
    {call,1,{f,347}}. % after_expr/1
    {test,is_eq_exact,{f,343},[{x,0},{atom,timeout}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",828}]}.
    {call,1,{f,351}}. % after_expr_timeout/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,1},{x,0}}.
    {call_last,1,{f,351},0}. % after_expr_timeout/1
  {label,343}.
    {line,[{location,"receive_SUITE.erl",827}]}.
    {badmatch,{x,0}}.
  {label,344}.
    {line,[{location,"receive_SUITE.erl",826}]}.
    {badmatch,{x,0}}.
  {label,345}.
    {line,[{location,"receive_SUITE.erl",825}]}.
    {badmatch,{x,0}}.


{function, after_expr, 1, 347}.
  {label,346}.
    {line,[{location,"receive_SUITE.erl",832}]}.
    {func_info,{atom,receive_SUITE},{atom,after_expr},1}.
  {label,347}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,10}}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"receive_SUITE.erl",835}]}.
    {call,1,{f,416}}. % id/1
    {move,{x,0},{y,0}}.
  {label,348}.
    {loop_rec,{f,349},{x,0}}.
    remove_message.
    {deallocate,1}.
    return.
  {label,349}.
    {wait_timeout,{f,348},{y,0}}.
    timeout.
    {move,{atom,timeout},{x,0}}.
    {deallocate,1}.
    return.


{function, after_expr_timeout, 1, 351}.
  {label,350}.
    {line,[{location,"receive_SUITE.erl",839}]}.
    {func_info,{atom,receive_SUITE},{atom,after_expr_timeout},1}.
  {label,351}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {allocate,0,1}.
    {line,[{location,"receive_SUITE.erl",841}]}.
    {call,1,{f,416}}. % id/1
  {label,352}.
    {wait_timeout,{f,352},{x,0}}.
    timeout.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, in_after, 1, 354}.
  {label,353}.
    {line,[{location,"receive_SUITE.erl",845}]}.
    {func_info,{atom,receive_SUITE},{atom,in_after},1}.
  {label,354}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,first},{x,1}}.
    {line,[{location,"receive_SUITE.erl",846}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,message},{x,1}}.
    {line,[{location,"receive_SUITE.erl",847}]}.
    send.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,428},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"receive_SUITE.erl",848}]}.
    {call,1,{f,366}}. % do_in_after/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,426},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"receive_SUITE.erl",849}]}.
    {call,1,{f,366}}. % do_in_after/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,message},{x,1}}.
    {line,[{location,"receive_SUITE.erl",850}]}.
    send.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,424},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {'try',{y,0},{f,355}}.
    {line,[{location,"receive_SUITE.erl",851}]}.
    {call,1,{f,366}}. % do_in_after/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,0}}.
    {jump,{f,356}}.
  {label,355}.
    {try_case,{y,0}}.
  {label,356}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,422},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {'try',{y,0},{f,357}}.
    {line,[{scope,[3,4]},{location,"receive_SUITE.erl",852}]}.
    {call,1,{f,366}}. % do_in_after/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,0}}.
    {jump,{f,358}}.
  {label,357}.
    {try_case,{y,0}}.
  {label,358}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,last},{x,1}}.
    {line,[{scope,[0,1]},{location,"receive_SUITE.erl",853}]}.
    send.
  {label,359}.
    {loop_rec,{f,362},{x,0}}.
    remove_message.
    {test,is_eq_exact,{f,364},[{x,0},{atom,first}]}.
  {label,360}.
    {loop_rec,{f,361},{x,0}}.
    remove_message.
    {test,is_eq_exact,{f,363},[{x,0},{atom,last}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,361}.
    {wait,{f,360}}.
  {label,362}.
    {wait,{f,359}}.
  {label,363}.
    {line,[{scope,[0]},{location,"receive_SUITE.erl",855}]}.
    {badmatch,{x,0}}.
  {label,364}.
    {line,[{scope,[0]},{location,"receive_SUITE.erl",854}]}.
    {badmatch,{x,0}}.


{function, do_in_after, 1, 366}.
  {label,365}.
    {line,[{location,"receive_SUITE.erl",858}]}.
    {func_info,{atom,receive_SUITE},{atom,do_in_after},1}.
  {label,366}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_atom,[ok]}}}]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'try',{y,2},{f,371}}.
    {line,[{location,"receive_SUITE.erl",860}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_atom,[ok]}}}}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,2}}.
  {label,367}.
    {loop_rec,{f,369},{x,0}}.
    {test,is_eq_exact,{f,368},[{x,0},{atom,message}]}.
    remove_message.
    {jump,{f,370}}.
  {label,368}.
    {loop_rec_end,{f,367}}.
  {label,369}.
    {wait_timeout,{f,367},{integer,1}}.
    timeout.
  {label,370}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,371}.
    {try_case,{y,2}}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
  {label,372}.
    {loop_rec,{f,374},{x,0}}.
    {test,is_eq_exact,{f,373},[{x,0},{atom,message}]}.
    remove_message.
    {jump,{f,375}}.
  {label,373}.
    {loop_rec_end,{f,372}}.
  {label,374}.
    {wait_timeout,{f,372},{integer,1}}.
    timeout.
  {label,375}.
    {bif,raise,{f,0},[{y,0},{y,1}],{x,0}}.


{function, type_optimized_markers, 1, 377}.
  {label,376}.
    {line,[{location,"receive_SUITE.erl",871}]}.
    {func_info,{atom,receive_SUITE},{atom,type_optimized_markers},1}.
  {label,377}.
    {allocate,1,0}.
    {recv_marker_reserve,{y,0}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {bif,self,{f,0},[],{x,1}}.
    {recv_marker_bind,{y,0},{x,0}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{atom,foobar},{x,1}}.
    {line,[{location,"receive_SUITE.erl",874}]}.
    send.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"receive_SUITE.erl",875}]}.
    {call,1,{f,416}}. % id/1
    {call,1,{f,382}}. % tom_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[gaffel,gurka]}}]}}.
    {test,is_eq_exact,
          {f,379},
          [{tr,{x,0},{t_atom,[gaffel,gurka]}},{atom,gurka}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,0},{x,1}}.
    {line,[{location,"receive_SUITE.erl",877}]}.
    send.
    {move,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",878}]}.
    {call,1,{f,382}}. % tom_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[gaffel]}}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,foobar},{x,1}}.
    {line,[{location,"receive_SUITE.erl",880}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"receive_SUITE.erl",881}]}.
    send.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"receive_SUITE.erl",882}]}.
    {call,1,{f,416}}. % id/1
    {call,1,{f,389}}. % tom_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[gaffel,gurka]}}]}}.
    {test,is_eq_exact,
          {f,378},
          [{tr,{x,0},{t_atom,[gaffel,gurka]}},{atom,gurka}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,0},{x,1}}.
    {line,[{location,"receive_SUITE.erl",884}]}.
    send.
    {move,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",885}]}.
    {call,1,{f,389}}. % tom_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[gaffel]}}]}}.
    {test_heap,4,0}.
    {recv_marker_clear,{y,0}}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,inet_reply},{x,0},{atom,all_well}]}}.
    {trim,1,0}.
    {line,[{location,"receive_SUITE.erl",887}]}.
    send.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,2}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"receive_SUITE.erl",888}]}.
    {call,3,{f,399}}. % tom_3/3
    {test,is_eq_exact,{f,380},[{x,0},{atom,all_well}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,378}.
    {recv_marker_clear,{y,0}}.
    {line,[{location,"receive_SUITE.erl",882}]}.
    {badmatch,{atom,gaffel}}.
  {label,379}.
    {recv_marker_clear,{y,0}}.
    {line,[{location,"receive_SUITE.erl",875}]}.
    {badmatch,{atom,gaffel}}.
  {label,380}.
    {line,[{location,"receive_SUITE.erl",888}]}.
    {badmatch,{x,0}}.


{function, tom_1, 1, 382}.
  {label,381}.
    {line,[{location,"receive_SUITE.erl",892}]}.
    {func_info,{atom,receive_SUITE},{atom,tom_1},1}.
  {label,382}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
  {label,383}.
    {loop_rec,{f,387},{x,0}}.
    {test,is_eq_exact,{f,385},[{x,0},{atom,foobar}]}.
    remove_message.
    {test,is_eq_exact,{f,384},[{y,0},{atom,undefined}]}.
    {move,{atom,gurka},{x,0}}.
    {deallocate,1}.
    return.
  {label,384}.
    {move,{literal,[flush]},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"receive_SUITE.erl",902}]}.
    {call_ext,2,{extfunc,erlang,demonitor,2}}.
    {move,{atom,gaffel},{x,0}}.
    {deallocate,0}.
    return.
  {label,385}.
    {test,is_eq_exact,{f,386},[{x,0},{y,0}]}.
    remove_message.
    {move,{atom,gaffel},{x,0}}.
    {deallocate,1}.
    return.
  {label,386}.
    {loop_rec_end,{f,383}}.
  {label,387}.
    {wait,{f,383}}.


{function, tom_2, 1, 389}.
  {label,388}.
    {line,[{location,"receive_SUITE.erl",909}]}.
    {func_info,{atom,receive_SUITE},{atom,tom_2},1}.
  {label,389}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
  {label,390}.
    {loop_rec,{f,397},{x,0}}.
    {test,is_eq_exact,{f,395},[{x,0},{atom,foobar}]}.
    remove_message.
    {test,is_eq_exact,{f,394},[{y,0},{atom,undefined}]}.
  {label,391}.
    {loop_rec,{f,393},{x,0}}.
    {test,is_eq_exact,{f,392},[{x,0},{atom,undefined}]}.
    remove_message.
    {move,{atom,gurka},{x,0}}.
    {deallocate,1}.
    return.
  {label,392}.
    {loop_rec_end,{f,391}}.
  {label,393}.
    {wait,{f,391}}.
  {label,394}.
    {move,{literal,[flush]},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",921}]}.
    {call_ext,2,{extfunc,erlang,demonitor,2}}.
    {recv_marker_clear,{y,0}}.
    {move,{atom,gaffel},{x,0}}.
    {deallocate,1}.
    return.
  {label,395}.
    {test,is_eq_exact,{f,396},[{x,0},{y,0}]}.
    {recv_marker_clear,{y,0}}.
    remove_message.
    {move,{atom,gaffel},{x,0}}.
    {deallocate,1}.
    return.
  {label,396}.
    {loop_rec_end,{f,390}}.
  {label,397}.
    {wait,{f,390}}.


{function, tom_3, 3, 399}.
  {label,398}.
    {line,[{location,"receive_SUITE.erl",928}]}.
    {func_info,{atom,receive_SUITE},{atom,tom_3},3}.
  {label,399}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[undefined]},
                                   none,none,none,reference}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,1}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
  {label,400}.
    {loop_rec,{f,403},{x,0}}.
    {test,is_tagged_tuple,{f,402},[{x,0},3,{atom,inet_reply}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,402},[{x,1},{tr,{y,1},pid}]}.
    {move,{x,0},{y,1}}.
    remove_message.
    {test,is_ne_exact,
          {f,401},
          [{tr,{y,0},{t_union,{t_atom,[undefined]},none,none,none,reference}},
           {atom,undefined}]}.
    {move,{literal,[flush]},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",935}]}.
    {call_ext,2,{extfunc,erlang,demonitor,2}}.
    {recv_marker_clear,{y,0}}.
  {label,401}.
    {get_tuple_element,{y,1},2,{x,0}}.
    {deallocate,2}.
    return.
  {label,402}.
    {loop_rec_end,{f,400}}.
  {label,403}.
    {wait_timeout,{f,400},{integer,1}}.
    timeout.
    {recv_marker_clear,{y,0}}.
    {recv_marker_reserve,{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{atom,process},{x,0}}.
    {line,[{location,"receive_SUITE.erl",940}]}.
    {call_ext,2,{extfunc,erlang,monitor,2}}.
    {recv_marker_bind,{y,0},{x,0}}.
    {move,{x,0},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,399},2}. % tom_3/3


{function, bs_get_tail, 1, 405}.
  {label,404}.
    {line,[{location,"receive_SUITE.erl",943}]}.
    {func_info,{atom,receive_SUITE},{atom,bs_get_tail},1}.
  {label,405}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,3,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,2},{list,[{literal,<<1,97,98,99>>},{x,0}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"receive_SUITE.erl",945}]}.
    send.
    {line,[{location,"receive_SUITE.erl",946}]}.
    {call,0,{f,408}}. % do_bs_get_tail/0
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,406},[{x,1},{literal,<<"abc">>}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,406},[{x,1},{tr,{y,0},reference}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,406}.
    {badmatch,{x,0}}.


{function, do_bs_get_tail, 0, 408}.
  {label,407}.
    {line,[{location,"receive_SUITE.erl",950}]}.
    {func_info,{atom,receive_SUITE},{atom,do_bs_get_tail},0}.
  {label,408}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
  {label,409}.
    {loop_rec,{f,411},{x,0}}.
    {test,is_tuple,{f,410},[{x,0}]}.
    {test,test_arity,{f,410},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,bs_start_match3,{f,410},2,[{x,1}],{x,1}}.
    {bs_match,{f,410},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,1},
                         {get_tail,2,1,{x,1}}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    remove_message.
    {line,[{location,"receive_SUITE.erl",953}]}.
    {call,1,{f,416}}. % id/1
    {get_tuple_element,{y,0},1,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"receive_SUITE.erl",954}]}.
    {call,1,{f,416}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,410}.
    {loop_rec_end,{f,409}}.
  {label,411}.
    {wait,{f,409}}.


{function, smoke_receive, 1, 413}.
  {label,412}.
    {line,[{location,"receive_SUITE.erl",962}]}.
    {func_info,{atom,receive_SUITE},{atom,smoke_receive},1}.
  {label,413}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,any}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"receive_SUITE.erl",963}]}.
    {call_ext,1,{extfunc,erlang,spawn,1}}.
    {move,{x,0},{y,0}}.
  {label,414}.
    {wait_timeout,{f,414},{integer,1}}.
    timeout.
    {move,{atom,kill},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",965}]}.
    {call_ext_last,2,{extfunc,erlang,exit,2},1}.


{function, id, 1, 416}.
  {label,415}.
    {line,[{location,"receive_SUITE.erl",967}]}.
    {func_info,{atom,receive_SUITE},{atom,id},1}.
  {label,416}.
    return.


{function, module_info, 0, 418}.
  {label,417}.
    {line,[]}.
    {func_info,{atom,receive_SUITE},{atom,module_info},0}.
  {label,418}.
    {move,{atom,receive_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 420}.
  {label,419}.
    {line,[]}.
    {func_info,{atom,receive_SUITE},{atom,module_info},1}.
  {label,420}.
    {move,{x,0},{x,1}}.
    {move,{atom,receive_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-in_after/1-fun-3-', 0, 422}.
  {label,421}.
    {line,[{location,"receive_SUITE.erl",852}]}.
    {func_info,{atom,receive_SUITE},{atom,'-in_after/1-fun-3-'},0}.
  {label,422}.
    {move,{atom,bad},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-in_after/1-fun-2-', 0, 424}.
  {label,423}.
    {line,[{location,"receive_SUITE.erl",851}]}.
    {func_info,{atom,receive_SUITE},{atom,'-in_after/1-fun-2-'},0}.
  {label,424}.
    {move,{atom,bad},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-in_after/1-fun-1-', 0, 426}.
  {label,425}.
    {line,[{location,"receive_SUITE.erl",849}]}.
    {func_info,{atom,receive_SUITE},{atom,'-in_after/1-fun-1-'},0}.
  {label,426}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-in_after/1-fun-0-', 0, 428}.
  {label,427}.
    {line,[{location,"receive_SUITE.erl",848}]}.
    {func_info,{atom,receive_SUITE},{atom,'-in_after/1-fun-0-'},0}.
  {label,428}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-recv_in_try_5/0-lbc$^0/2-0-', 2, 430}.
  {label,429}.
    {line,[{location,"receive_SUITE.erl",616}]}.
    {func_info,{atom,receive_SUITE},{atom,'-recv_in_try_5/0-lbc$^0/2-0-'},2}.
  {label,430}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,4}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,432},
              {x,0},
              {commands,[{ensure_at_least,4,1},
                         {integer,2,{literal,[]},4,1,{x,2}}]}}.
    {test,is_eq_exact,{f,431},[{tr,{x,2},{t_integer,{0,15}}},{integer,3}]}.
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
    {call_only,2,{f,430}}. % '-recv_in_try_5/0-lbc$^0/2-0-'/2
  {label,431}.
    {call_only,2,{f,430}}. % '-recv_in_try_5/0-lbc$^0/2-0-'/2
  {label,432}.
    {move,{x,1},{x,0}}.
    return.


{function, '-cover_recv_instructions/0-fun-0-', 0, 434}.
  {label,433}.
    {line,[{location,"receive_SUITE.erl",476}]}.
    {func_info,{atom,receive_SUITE},
               {atom,'-cover_recv_instructions/0-fun-0-'},
               0}.
  {label,434}.
    {allocate,0,0}.
  {label,435}.
    {loop_rec,{f,437},{x,0}}.
    {test,is_tuple,{f,436},[{x,0}]}.
    {test,test_arity,{f,436},[{x,0},2]}.
    remove_message.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"receive_SUITE.erl",478}]}.
    send.
    {deallocate,0}.
    return.
  {label,436}.
    {loop_rec_end,{f,435}}.
  {label,437}.
    {wait,{f,435}}.


{function, '-collect_recv_opt_instrs/1-lc$^0/1-0-', 1, 439}.
  {label,438}.
    {line,[{location,"receive_SUITE.erl",463}]}.
    {func_info,{atom,receive_SUITE},
               {atom,'-collect_recv_opt_instrs/1-lc$^0/1-0-'},
               1}.
  {label,439}.
    {test,is_nonempty_list,{f,441},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,440},[{x,1},5,{atom,function}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,1},4,{x,0}}.
    {line,[{location,"receive_SUITE.erl",454}]}.
    {call,1,{f,444}}. % '-collect_recv_opt_instrs/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"receive_SUITE.erl",463}]}.
    {call,1,{f,439}}. % '-collect_recv_opt_instrs/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,440}.
    {call_only,1,{f,439}}. % '-collect_recv_opt_instrs/1-lc$^0/1-0-'/1
  {label,441}.
    {test,is_nil,{f,442},[{x,0}]}.
    return.
  {label,442}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-collect_recv_opt_instrs/1-lc$^1/1-1-', 1, 444}.
  {label,443}.
    {line,[{location,"receive_SUITE.erl",454}]}.
    {func_info,{atom,receive_SUITE},
               {atom,'-collect_recv_opt_instrs/1-lc$^1/1-1-'},
               1}.
  {label,444}.
    {test,is_nonempty_list,{f,449},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,448},[{x,1}]}.
    {select_tuple_arity,{tr,{x,1},{t_tuple,0,false,#{}}},
                        {f,448},
                        {list,[2,{f,446},3,{f,445}]}}.
  {label,445}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,448},[{x,2},{atom,recv_marker_bind}]}.
    {jump,{f,447}}.
  {label,446}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {select_val,{x,2},
                {f,448},
                {list,[{atom,recv_marker_clear},
                       {f,447},
                       {atom,recv_marker_reserve},
                       {f,447},
                       {atom,recv_marker_use},
                       {f,447}]}}.
  {label,447}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,444}}. % '-collect_recv_opt_instrs/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,448}.
    {call_only,1,{f,444}}. % '-collect_recv_opt_instrs/1-lc$^1/1-1-'/1
  {label,449}.
    {test,is_nil,{f,450},[{x,0}]}.
    return.
  {label,450}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_ref_opt/2-fun-3-', 1, 452}.
  {label,451}.
    {line,[{location,"receive_SUITE.erl",442}]}.
    {func_info,{atom,receive_SUITE},{atom,'-do_ref_opt/2-fun-3-'},1}.
  {label,452}.
    {test,is_tagged_tuple,{f,453},[{x,0},2,{atom,recv_marker_use}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,453}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-do_ref_opt/2-fun-2-', 1, 455}.
  {label,454}.
    {line,[{location,"receive_SUITE.erl",438}]}.
    {func_info,{atom,receive_SUITE},{atom,'-do_ref_opt/2-fun-2-'},1}.
  {label,455}.
    {test,is_tagged_tuple,{f,456},[{x,0},2,{atom,recv_marker_clear}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,456}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-do_ref_opt/2-fun-1-', 1, 458}.
  {label,457}.
    {line,[{location,"receive_SUITE.erl",434}]}.
    {func_info,{atom,receive_SUITE},{atom,'-do_ref_opt/2-fun-1-'},1}.
  {label,458}.
    {test,is_tagged_tuple,{f,459},[{x,0},3,{atom,recv_marker_bind}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,459}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-do_ref_opt/2-fun-0-', 1, 461}.
  {label,460}.
    {line,[{location,"receive_SUITE.erl",430}]}.
    {func_info,{atom,receive_SUITE},{atom,'-do_ref_opt/2-fun-0-'},1}.
  {label,461}.
    {test,is_tagged_tuple,{f,462},[{x,0},2,{atom,recv_marker_reserve}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,462}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-ref_opt/1-fun-0-', 2, 464}.
  {label,463}.
    {line,[{location,"receive_SUITE.erl",404}]}.
    {func_info,{atom,receive_SUITE},{atom,'-ref_opt/1-fun-0-'},2}.
  {label,464}.
    {call_only,2,{f,152}}. % do_ref_opt/2


{function, '-otp_7980_add_clients/1-fun-0-', 2, 466}.
  {label,465}.
    {line,[{location,"receive_SUITE.erl",392}]}.
    {func_info,{atom,receive_SUITE},{atom,'-otp_7980_add_clients/1-fun-0-'},2}.
  {label,466}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {test,is_ne_exact,{f,468},[{x,1},{integer,1}]}.
  {label,467}.
    {wait_timeout,{f,467},{integer,42}}.
    timeout.
  {label,468}.
    {line,[{location,"receive_SUITE.erl",397}]}.
    {gc_bif,'-',{f,0},0,[{y,0},{integer,1}],{x,0}}.
    {deallocate,1}.
    return.


{function, '-coverage/1-after$^1/0-0-', 0, 470}.
  {label,469}.
    {line,[{location,"receive_SUITE.erl",178}]}.
    {func_info,{atom,receive_SUITE},{atom,'-coverage/1-after$^1/0-0-'},0}.
  {label,470}.
    {allocate,0,0}.
  {label,471}.
    {loop_rec,{f,472},{x,0}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,472}.
    {wait,{f,471}}.


{function, '-coverage/1-fun-0-', 0, 474}.
  {label,473}.
    {line,[{location,"receive_SUITE.erl",176}]}.
    {func_info,{atom,receive_SUITE},{atom,'-coverage/1-fun-0-'},0}.
  {label,474}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-recv/1-fun-0-', 0, 476}.
  {label,475}.
    {line,[{location,"receive_SUITE.erl",87}]}.
    {func_info,{atom,receive_SUITE},{atom,'-recv/1-fun-0-'},0}.
  {label,476}.
    {move,{literal,{state,true}},{x,0}}.
    {call_only,1,{f,32}}. % loop/1
