{module, bif_SUITE}.  %% version = 0

{exports, [{all,0},
           {beam_validator,1},
           {cover_safe_and_pure_bifs,1},
           {cover_trim,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {head_tail,1},
           {init_per_group,2},
           {init_per_suite,1},
           {min_max,1},
           {module_info,0},
           {module_info,1},
           {suite,0},
           {trunc_and_friends,1}]}.

{attributes, []}.

{labels, 119}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bif_SUITE.erl",31}]}.
    {func_info,{atom,bif_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bif_SUITE.erl",34}]}.
    {func_info,{atom,bif_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bif_SUITE.erl",37}]}.
    {func_info,{atom,bif_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"bif_SUITE.erl",38}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[beam_validator,trunc_and_friends,
                                 cover_safe_and_pure_bifs,cover_trim,
                                 head_tail,min_max]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bif_SUITE.erl",47}]}.
    {func_info,{atom,bif_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",48}]}.
    {call,1,{f,111}}. % id/1
    {move,{atom,bif_SUITE},{x,0}}.
    {line,[{location,"bif_SUITE.erl",49}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bif_SUITE.erl",52}]}.
    {func_info,{atom,bif_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bif_SUITE.erl",55}]}.
    {func_info,{atom,bif_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bif_SUITE.erl",58}]}.
    {func_info,{atom,bif_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, beam_validator, 1, 16}.
  {label,15}.
    {line,[{location,"bif_SUITE.erl",63}]}.
    {func_info,{atom,bif_SUITE},{atom,beam_validator},1}.
  {label,16}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",64}]}.
    {call,1,{f,20}}. % food/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,18},[{x,1},{atom,false}]}.
    {test,is_nonempty_list,{f,18},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,18},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_eq_exact,{f,18},[{x,1},{y,0}]}.
    {test,is_port,{f,17},[{y,0}]}.
    {line,[{location,"bif_SUITE.erl",67}]}.
    {badmatch,{atom,true}}.
  {label,17}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,18}.
    {line,[{location,"bif_SUITE.erl",64}]}.
    {badmatch,{x,0}}.


{function, food, 1, 20}.
  {label,19}.
    {line,[{location,"bif_SUITE.erl",71}]}.
    {func_info,{atom,bif_SUITE},{atom,food},1}.
  {label,20}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,false},{x,0},{x,0}}.
    return.


{function, trunc_and_friends, 1, 22}.
  {label,21}.
    {line,[{location,"bif_SUITE.erl",79}]}.
    {func_info,{atom,bif_SUITE},{atom,trunc_and_friends},1}.
  {label,22}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[trunc,round,floor,ceil]},{x,0}}.
    {line,[{location,"bif_SUITE.erl",81}]}.
    {call,1,{f,25}}. % trunc_and_friends_1/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bif_SUITE.erl",86}]}.
    {call,1,{f,117}}. % '-trunc_and_friends/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,trunc_and_friends},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,41,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,87,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,0},{literal,[{atom,89,ok}]},{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,89,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,89,[],none},test}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,89,[],none}},
                       {x,1}]}}.
    {put_list,
        {x,1},
        {literal,
            [{function,90,id,1,
                 [{clause,90,[{var,90,'I'}],[],[{var,90,'I'}]}]}]},
        {x,1}}.
    {put_list,{literal,{attribute,88,export,[{test,0}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,87,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {trim,1,1}.
    {line,[{location,"bif_SUITE.erl",87}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bif_SUITE.erl",90}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",91}]}.
    {call_ext,1,{extfunc,merl,print,1}}.
    {move,{atom,bif_SUITE},{x,0}}.
    {line,[{location,"bif_SUITE.erl",92}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bif_SUITE.erl",93}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,23},[{x,0},2,{atom,ok}]}.
    {line,[{location,"bif_SUITE.erl",94}]}.
    {call_ext,0,{extfunc,trunc_and_friends,test,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,23}.
    {line,[{location,"bif_SUITE.erl",93}]}.
    {badmatch,{x,0}}.


{function, trunc_and_friends_1, 1, 25}.
  {label,24}.
    {line,[{location,"bif_SUITE.erl",97}]}.
    {func_info,{atom,bif_SUITE},{atom,trunc_and_friends_1},1}.
  {label,25}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_atom,[ceil,floor,round,trunc]},nil}}]}}.
    {test,is_nonempty_list,{f,26},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {line,[{location,"bif_SUITE.erl",98}]}.
    {gc_bif,length,
            {f,0},
            0,
            [{tr,{y,0},{t_list,{t_atom,[ceil,floor,round,trunc]},nil}}],
            {x,0}}.
    {call_ext,1,{extfunc,erlang,integer_to_list,1}}.
    {test_heap,2,1}.
    {put_list,{integer,102},{x,0},{x,0}}.
    {call_ext,1,{extfunc,erlang,list_to_atom,1}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bif_SUITE.erl",99}]}.
    {call,2,{f,28}}. % trunc_template/2
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,25}}. % trunc_and_friends_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,26}.
    return.


{function, trunc_template, 2, 28}.
  {label,27}.
    {line,[{location,"bif_SUITE.erl",102}]}.
    {func_info,{atom,bif_SUITE},{atom,trunc_template},2}.
  {label,28}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ceil,floor,round,trunc]}}]}}.
    {allocate,10,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {move,{x,1},{y,8}}.
    {move,{x,0},{y,9}}.
    {move,{x,1},{x,2}}.
    {move,{atom,erlang},{x,1}}.
    {move,{float,42.77},{x,0}}.
    {line,[{location,"bif_SUITE.erl",104}]}.
    {apply,1}.
    {line,[{location,"bif_SUITE.erl",105}]}.
    {gc_bif,float,{f,0},1,[{x,0}],{y,7}}.
    {swap,{y,9},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,6}}.
    {move,{float,42.77},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,5}}.
    {move,{y,8},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,4}}.
    {move,{y,9},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,8},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,7},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,2}}.
    {move,{y,8},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,9},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,9},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,8},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,8},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,293,1}.
    {put_list,{y,5},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{atom,107,id}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,107,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{var,107,'Var'}]},{x,1},{x,1}}.
    {put_list,{y,4},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{var,108,'Var'}]]},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,108,[],none}},
                       {x,2}]}}.
    {put_list,{y,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{literal,[{tree,operator,{attr,108,[],none},'=:='}]},
              {x,3},
              {x,3}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,108,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,conjunction},
                       {literal,{attr,0,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,disjunction},
                       {literal,{attr,0,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{atom,108,ok}]]},{x,2}}.
    {put_list,nil,{x,2},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,108,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{y,7},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{var,109,'Var'}]]},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,109,[],none}},
                       {x,3}]}}.
    {put_list,{y,2},nil,{x,4}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{literal,[{tree,operator,{attr,109,[],none},'=='}]},{x,4},{x,4}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},{x,4},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,109,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,conjunction},
                       {literal,{attr,0,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,disjunction},
                       {literal,{attr,0,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{atom,109,ok}]]},{x,3}}.
    {put_list,nil,{x,3},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,109,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{y,1},nil,{x,4}}.
    {put_list,{x,4},{literal,[[{var,110,'Var'}]]},{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,110,[],none}},
                       {x,4}]}}.
    {put_list,{y,9},nil,{x,5}}.
    {put_list,{x,5},nil,{x,5}}.
    {put_list,{literal,[{tree,operator,{attr,110,[],none},'=='}]},{x,5},{x,5}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{x,4},{x,5},{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,110,[],none}},
                       {x,4}]}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,conjunction},
                       {literal,{attr,0,[],none}},
                       {x,4}]}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,disjunction},
                       {literal,{attr,0,[],none}},
                       {x,4}]}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{x,4},{literal,[[{atom,110,ok}]]},{x,4}}.
    {put_list,nil,{x,4},{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,110,[],none}},
                       {x,4}]}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{y,8},nil,{x,5}}.
    {put_list,{x,5},{literal,[[{var,111,'Var'}]]},{x,5}}.
    {put_tuple2,{x,5},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,111,[],none}},
                       {x,5}]}}.
    {put_list,{x,5},nil,{x,5}}.
    {put_list,{x,5},nil,{x,5}}.
    {put_list,{y,0},nil,{x,6}}.
    {put_list,{x,6},{x,5},{x,5}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[{atom,112,a}]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,112,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{literal,[{atom,112,ok}]},{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,block_expr},
                       {literal,{attr,112,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,
        {x,0},
        {literal,
            [[],
             [{clause,113,
                  [{tree,class_qualifier,
                       {attr,0,[],none},
                       {class_qualifier,
                           {atom,113,error},
                           {atom,113,badarg},
                           {var,113,'_'}}}],
                  [],
                  [{atom,113,ok}]}],
             []]},
        {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,try_expr},
                       {literal,{attr,112,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{literal,[{atom,114,ok}]},{x,0}}.
    {put_tuple2,{x,5},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,111,[],none}},
                       {x,5}]}}.
    {put_list,{x,5},{x,0},{x,0}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,if_expr},
                       {literal,{attr,110,[],none}},
                       {x,4}]}}.
    {put_list,{x,4},{x,0},{x,0}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,if_expr},
                       {literal,{attr,109,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},{x,0},{x,0}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,if_expr},
                       {literal,{attr,108,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,107,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,106,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,6},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,106,[],none}},
                       {x,0}]}}.
    {line,[{location,"bif_SUITE.erl",106}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},10}.


{function, cover_safe_and_pure_bifs, 1, 30}.
  {label,29}.
    {line,[{location,"bif_SUITE.erl",116}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_safe_and_pure_bifs},1}.
  {label,30}.
    {move,{atom,ok},{x,0}}.
    return.


{function, cover_trim, 1, 32}.
  {label,31}.
    {line,[{location,"bif_SUITE.erl",133}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim},1}.
  {label,32}.
    {allocate,0,0}.
    {move,{literal,"*"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",134}]}.
    {call,1,{f,111}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {call,2,{f,42}}. % cover_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",135}]}.
    {call,1,{f,111}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {call,2,{f,42}}. % cover_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,"1"},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",137}]}.
    {call,2,{f,45}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,40},[{x,0},{atom,true}]}.
    {move,{literal,"0"},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",138}]}.
    {call,2,{f,45}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,33},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,33}.
    {move,{literal,"1"},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",139}]}.
    {call,2,{f,45}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,34},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,34}.
    {move,{literal,"0"},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",140}]}.
    {call,2,{f,45}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,35},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,35}.
    {move,{integer,-1},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",142}]}.
    {call,2,{f,48}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,39},[{x,0},{atom,true}]}.
    {move,{integer,100},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",143}]}.
    {call,2,{f,48}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,36},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,36}.
    {move,{integer,-10},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",144}]}.
    {call,2,{f,48}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,37},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,37}.
    {move,{integer,-100},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",145}]}.
    {call,2,{f,48}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,38},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,38}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,39}.
    {line,[{location,"bif_SUITE.erl",142}]}.
    {badmatch,{atom,false}}.
  {label,40}.
    {line,[{location,"bif_SUITE.erl",137}]}.
    {badmatch,{atom,false}}.


{function, cover_trim_1, 2, 42}.
  {label,41}.
    {line,[{location,"bif_SUITE.erl",149}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim_1},2}.
  {label,42}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bif_SUITE.erl",150}]}.
    {call,1,{f,111}}. % id/1
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bif_SUITE.erl",151}]}.
    {call,1,{f,111}}. % id/1
    {bif,hd,{f,43},[{y,0}],{x,0}}.
    {test,is_eq_exact,{f,43},[{x,0},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,43}.
    {line,[{location,"bif_SUITE.erl",152}]}.
    if_end.


{function, cover_trim_2, 2, 45}.
  {label,44}.
    {line,[{location,"bif_SUITE.erl",157}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim_2},2}.
  {label,45}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{45,118}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{48,49}},nil}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",158}]}.
    {call,1,{f,111}}. % id/1
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bif_SUITE.erl",159}]}.
    {call,1,{f,111}}. % id/1
    {test,is_eq_exact,{f,46},[{x,0},{literal,"keep-alive"}]}.
    {get_hd,{y,0},{x,0}}.
    {bif,'>=',{f,0},[{tr,{x,0},{t_integer,{48,49}}},{integer,49}],{x,0}}.
    {deallocate,2}.
    return.
  {label,46}.
    {move,{atom,false},{x,0}}.
    {deallocate,2}.
    return.


{function, cover_trim_3, 2, 48}.
  {label,47}.
    {line,[{location,"bif_SUITE.erl",166}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim_3},2}.
  {label,48}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{45,118}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{-100,100}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",167}]}.
    {call,1,{f,111}}. % id/1
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bif_SUITE.erl",168}]}.
    {call,1,{f,111}}. % id/1
    {test,is_eq_exact,{f,49},[{x,0},{literal,"keep-alive"}]}.
    {gc_bif,abs,{f,49},0,[{tr,{y,0},{t_integer,{-100,100}}}],{x,0}}.
    {bif,'>=',{f,0},[{integer,41},{tr,{x,0},{t_integer,{0,100}}}],{x,0}}.
    {deallocate,2}.
    return.
  {label,49}.
    {move,{atom,false},{x,0}}.
    {deallocate,2}.
    return.


{function, head_tail, 1, 51}.
  {label,50}.
    {line,[{location,"bif_SUITE.erl",177}]}.
    {func_info,{atom,bif_SUITE},{atom,head_tail},1}.
  {label,51}.
    {allocate,0,0}.
    {line,[{location,"bif_SUITE.erl",178}]}.
    {call,0,{f,55}}. % head_case/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_atom,[ok]}}}}]}}.
    {line,[{location,"bif_SUITE.erl",179}]}.
    {call,0,{f,57}}. % tail_case/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_atom,[ok]}}}}]}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bif_SUITE.erl",181}]}.
    {call,1,{f,111}}. % id/1
    {bif,hd,{f,0},[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,53},[{x,0},{integer,1}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bif_SUITE.erl",182}]}.
    {call,1,{f,111}}. % id/1
    {bif,tl,{f,0},[{x,0}],{x,0}}.
    {test,is_nil,{f,52},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,52}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{location,"bif_SUITE.erl",181}]}.
    {badmatch,{x,0}}.


{function, head_case, 0, 55}.
  {label,54}.
    {line,[{location,"bif_SUITE.erl",186}]}.
    {func_info,{atom,bif_SUITE},{atom,head_case},0}.
  {label,55}.
    {move,{literal,{1,ok}},{x,0}}.
    return.


{function, tail_case, 0, 57}.
  {label,56}.
    {line,[{location,"bif_SUITE.erl",192}]}.
    {func_info,{atom,bif_SUITE},{atom,tail_case},0}.
  {label,57}.
    {move,{literal,{1,ok}},{x,0}}.
    return.


{function, min_max, 1, 59}.
  {label,58}.
    {line,[{location,"bif_SUITE.erl",198}]}.
    {func_info,{atom,bif_SUITE},{atom,min_max},1}.
  {label,59}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"bif_SUITE.erl",199}]}.
    {call,1,{f,111}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"bif_SUITE.erl",200}]}.
    {call,1,{f,111}}. % id/1
    {move,{y,1},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bif_SUITE.erl",202}]}.
    {call,2,{f,86}}. % bool_min_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",203}]}.
    {call,2,{f,86}}. % bool_min_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",204}]}.
    {call,2,{f,86}}. % bool_min_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",205}]}.
    {call,2,{f,89}}. % bool_min_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",207}]}.
    {call,2,{f,92}}. % bool_max_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",208}]}.
    {call,2,{f,96}}. % bool_max_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",209}]}.
    {call,2,{f,96}}. % bool_max_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bif_SUITE.erl",210}]}.
    {call,2,{f,96}}. % bool_max_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"bif_SUITE.erl",212}]}.
    {call,1,{f,103}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,84},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,11}]}.
    {move,{integer,10},{x,0}}.
    {line,[{location,"bif_SUITE.erl",213}]}.
    {call,1,{f,103}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,83},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,11}]}.
    {move,{integer,9},{x,0}}.
    {line,[{location,"bif_SUITE.erl",214}]}.
    {call,1,{f,103}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,82},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,10}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",215}]}.
    {call,1,{f,103}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,81},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,1}]}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",216}]}.
    {call,1,{f,103}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,80},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,0}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bif_SUITE.erl",217}]}.
    {call,1,{f,103}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,79},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,11}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bif_SUITE.erl",219}]}.
    {call,1,{f,111}}. % id/1
    {call,1,{f,100}}. % max_number/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_number,{1,'+inf'}}}}}]}}.
    {test,is_eq_exact,
          {f,78},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}},
           {literal,{42,42}}]}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",220}]}.
    {call,1,{f,111}}. % id/1
    {call,1,{f,100}}. % max_number/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_number,{1,'+inf'}}}}}]}}.
    {test,is_eq_exact,
          {f,77},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}},
           {literal,{42,42.0}}]}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",221}]}.
    {call,1,{f,111}}. % id/1
    {call,1,{f,100}}. % max_number/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_number,{1,'+inf'}}}}}]}}.
    {test,is_eq_exact,
          {f,76},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}},
           {literal,{-1,1}}]}.
    {move,{float,-1.0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",222}]}.
    {call,1,{f,111}}. % id/1
    {call,1,{f,100}}. % max_number/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_number,{1,'+inf'}}}}}]}}.
    {test,is_eq_exact,
          {f,75},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}},
           {literal,{-1,1}}]}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",224}]}.
    {call,1,{f,107}}. % int_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_integer,{100,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,74},
          [{tr,{x,0},{t_integer,{100,'+inf'}}},{integer,100}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",225}]}.
    {call,1,{f,107}}. % int_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_integer,{100,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,73},
          [{tr,{x,0},{t_integer,{100,'+inf'}}},{integer,100}]}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"bif_SUITE.erl",226}]}.
    {call,1,{f,107}}. % int_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_integer,{100,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,72},
          [{tr,{x,0},{t_integer,{100,'+inf'}}},{integer,105}]}.
    {move,{integer,10},{x,0}}.
    {line,[{location,"bif_SUITE.erl",227}]}.
    {call,1,{f,107}}. % int_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_integer,{100,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_integer,{100,'+inf'}}},{integer,110}]}.
    {move,{integer,11},{x,0}}.
    {line,[{location,"bif_SUITE.erl",228}]}.
    {call,1,{f,107}}. % int_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_integer,{100,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,70},
          [{tr,{x,0},{t_integer,{100,'+inf'}}},{integer,110}]}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",230}]}.
    {call,1,{f,109}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,69},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,100}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",231}]}.
    {call,1,{f,109}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,68},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,100}]}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"bif_SUITE.erl",232}]}.
    {call,1,{f,109}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,67},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,105}]}.
    {move,{integer,10},{x,0}}.
    {line,[{location,"bif_SUITE.erl",233}]}.
    {call,1,{f,109}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,66},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,110}]}.
    {move,{integer,11},{x,0}}.
    {line,[{location,"bif_SUITE.erl",234}]}.
    {call,1,{f,109}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,65},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,110}]}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"bif_SUITE.erl",236}]}.
    {call,1,{f,109}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,64},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,105}]}.
    {move,{float,5.0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",237}]}.
    {call,1,{f,109}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,63},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{float,105.0}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bif_SUITE.erl",238}]}.
    {call,1,{f,109}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,62},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,110}]}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{location,"bif_SUITE.erl",239}]}.
    {call,1,{f,109}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,61},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,110}]}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{location,"bif_SUITE.erl",240}]}.
    {call,1,{f,109}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,60},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,110}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,60}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"bif_SUITE.erl",239}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"bif_SUITE.erl",238}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{location,"bif_SUITE.erl",237}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"bif_SUITE.erl",236}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{location,"bif_SUITE.erl",234}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{location,"bif_SUITE.erl",233}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{location,"bif_SUITE.erl",232}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{location,"bif_SUITE.erl",231}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{location,"bif_SUITE.erl",230}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{location,"bif_SUITE.erl",228}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{location,"bif_SUITE.erl",227}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"bif_SUITE.erl",226}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{location,"bif_SUITE.erl",225}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"bif_SUITE.erl",224}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{location,"bif_SUITE.erl",222}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{location,"bif_SUITE.erl",221}]}.
    {badmatch,{x,0}}.
  {label,77}.
    {line,[{location,"bif_SUITE.erl",220}]}.
    {badmatch,{x,0}}.
  {label,78}.
    {line,[{location,"bif_SUITE.erl",219}]}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"bif_SUITE.erl",217}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"bif_SUITE.erl",216}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"bif_SUITE.erl",215}]}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{location,"bif_SUITE.erl",214}]}.
    {badmatch,{x,0}}.
  {label,83}.
    {line,[{location,"bif_SUITE.erl",213}]}.
    {badmatch,{x,0}}.
  {label,84}.
    {line,[{location,"bif_SUITE.erl",212}]}.
    {badmatch,{x,0}}.


{function, bool_min_false, 2, 86}.
  {label,85}.
    {line,[{location,"bif_SUITE.erl",247}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_min_false},2}.
  {label,86}.
    {test,is_boolean,{f,85},[{x,0}]}.
    {test,is_boolean,{f,85},[{x,1}]}.
    {test,is_eq_exact,{f,87},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,87},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
    {line,[{location,"bif_SUITE.erl",248}]}.
    {badmatch,{atom,true}}.
  {label,87}.
    {move,{atom,false},{x,0}}.
    return.


{function, bool_min_true, 2, 89}.
  {label,88}.
    {line,[{location,"bif_SUITE.erl",250}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_min_true},2}.
  {label,89}.
    {test,is_boolean,{f,88},[{x,0}]}.
    {test,is_boolean,{f,88},[{x,1}]}.
    {test,is_eq_exact,{f,90},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,90},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,90}.
    {line,[{location,"bif_SUITE.erl",251}]}.
    {badmatch,{atom,false}}.


{function, bool_max_false, 2, 92}.
  {label,91}.
    {line,[{location,"bif_SUITE.erl",253}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_max_false},2}.
  {label,92}.
    {test,is_boolean,{f,91},[{x,0}]}.
    {test,is_boolean,{f,91},[{x,1}]}.
    {test,is_eq_exact,{f,93},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,94},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
  {label,93}.
    {line,[{location,"bif_SUITE.erl",254}]}.
    {badmatch,{atom,true}}.
  {label,94}.
    {move,{atom,false},{x,0}}.
    return.


{function, bool_max_true, 2, 96}.
  {label,95}.
    {line,[{location,"bif_SUITE.erl",256}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_max_true},2}.
  {label,96}.
    {test,is_boolean,{f,95},[{x,1}]}.
    {bif,max,{f,0},[{x,0},{tr,{x,1},{t_atom,[false,true]}}],{x,1}}.
    {test,is_eq_exact,{f,98},[{x,1},{atom,true}]}.
    {test,is_boolean,{f,97},[{x,0}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,97}.
    {line,[{location,"bif_SUITE.erl",258}]}.
    if_end.
  {label,98}.
    {line,[{location,"bif_SUITE.erl",257}]}.
    {badmatch,{x,1}}.


{function, max_number, 1, 100}.
  {label,99}.
    {line,[{location,"bif_SUITE.erl",263}]}.
    {func_info,{atom,bif_SUITE},{atom,max_number},1}.
  {label,100}.
    {line,[{location,"bif_SUITE.erl",264}]}.
    {gc_bif,trunc,{f,0},1,[{x,0}],{x,1}}.
    {test_heap,6,2}.
    {bif,max,{f,0},[{tr,{x,0},{t_number,any}},{integer,1}],{x,2}}.
    {put_tuple2,{x,2},{list,[{x,1},{x,2}]}}.
    {bif,max,{f,0},[{integer,1},{tr,{x,0},{t_number,any}}],{x,0}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}},
           {tr,{x,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}}]}.
    return.
  {label,101}.
    {line,[{location,"bif_SUITE.erl",265}]}.
    {badmatch,{x,0}}.


{function, min_increment, 1, 103}.
  {label,102}.
    {line,[{location,"bif_SUITE.erl",267}]}.
    {func_info,{atom,bif_SUITE},{atom,min_increment},1}.
  {label,103}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{-1,100}},
                                   none,none}}]}}.
    {bif,min,
         {f,0},
         [{integer,10},
          {tr,{x,0},
              {t_union,{t_atom,[a]},none,{t_integer,{-1,100}},none,none}}],
         {x,1}}.
    {line,[{location,"bif_SUITE.erl",268}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_number,{-1,10}}},{integer,1}],{x,1}}.
    {bif,min,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[a]},none,{t_integer,{-1,100}},none,none}},
          {integer,10}],
         {x,2}}.
    {line,[{location,"bif_SUITE.erl",269}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_number,{-1,10}}},{integer,1}],{x,2}}.
    {test,is_eq_exact,
          {f,105},
          [{tr,{x,2},{t_number,{0,11}}},{tr,{x,1},{t_number,{0,11}}}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bif_SUITE.erl",270}]}.
    {call,1,{f,111}}. % id/1
    {bif,min,{f,0},[{x,0},{integer,10}],{x,0}}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_number,{'-inf',10}}},{integer,1}],{x,0}}.
    {test,is_eq_exact,
          {f,104},
          [{tr,{x,0},{t_number,{'-inf',11}}},{tr,{y,0},{t_number,{0,11}}}]}.
    {deallocate,1}.
    return.
  {label,104}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{location,"bif_SUITE.erl",269}]}.
    {badmatch,{x,2}}.


{function, int_clamped_add, 1, 107}.
  {label,106}.
    {line,[{location,"bif_SUITE.erl",272}]}.
    {func_info,{atom,bif_SUITE},{atom,int_clamped_add},1}.
  {label,107}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-1,11}}}]}}.
    {bif,max,{f,0},[{tr,{x,0},{t_integer,{-1,11}}},{integer,0}],{x,0}}.
    {bif,min,{f,0},[{tr,{x,0},{t_integer,{0,11}}},{integer,10}],{x,0}}.
    {line,[{location,"bif_SUITE.erl",273}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_integer,{0,10}}},{integer,100}],{x,0}}.
    return.


{function, num_clamped_add, 1, 109}.
  {label,108}.
    {line,[{location,"bif_SUITE.erl",275}]}.
    {func_info,{atom,bif_SUITE},{atom,num_clamped_add},1}.
  {label,109}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     none,
                     {t_number,{-1,11}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {bif,max,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[a]},
                       none,
                       {t_number,{-1,11}},
                       [{{3,{t_atom,[a]}},
                         {t_tuple,3,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_atom,[b]},
                                    3 => {t_atom,[c]}}}}],
                       none}},
          {integer,0}],
         {x,0}}.
    {bif,min,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[a]},
                       none,
                       {t_number,{-1,11}},
                       [{{3,{t_atom,[a]}},
                         {t_tuple,3,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_atom,[b]},
                                    3 => {t_atom,[c]}}}}],
                       none}},
          {integer,10}],
         {x,0}}.
    {line,[{location,"bif_SUITE.erl",276}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_number,{-1,10}}},{integer,100}],{x,0}}.
    return.


{function, id, 1, 111}.
  {label,110}.
    {line,[{location,"bif_SUITE.erl",282}]}.
    {func_info,{atom,bif_SUITE},{atom,id},1}.
  {label,111}.
    return.


{function, module_info, 0, 113}.
  {label,112}.
    {line,[]}.
    {func_info,{atom,bif_SUITE},{atom,module_info},0}.
  {label,113}.
    {move,{atom,bif_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 115}.
  {label,114}.
    {line,[]}.
    {func_info,{atom,bif_SUITE},{atom,module_info},1}.
  {label,115}.
    {move,{x,0},{x,1}}.
    {move,{atom,bif_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-trunc_and_friends/1-lc$^0/1-0-', 1, 117}.
  {label,116}.
    {line,[{location,"bif_SUITE.erl",86}]}.
    {func_info,{atom,bif_SUITE},{atom,'-trunc_and_friends/1-lc$^0/1-0-'},1}.
  {label,117}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,118},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",84}]}.
    {call_ext,1,{extfunc,erl_syntax,function_name,1}}.
    {test_heap,9,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,85,[],none}},
                       {x,0}]}}.
    {line,[{location,"bif_SUITE.erl",85}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",86}]}.
    {call,1,{f,117}}. % '-trunc_and_friends/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,118}.
    return.
