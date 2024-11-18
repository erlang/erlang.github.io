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
           {non_throwing,1},
           {suite,0},
           {trunc_and_friends,1},
           {unsafe_get_list,1}]}.

{attributes, []}.

{labels, 139}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bif_SUITE.erl",33}]}.
    {func_info,{atom,bif_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bif_SUITE.erl",36}]}.
    {func_info,{atom,bif_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bif_SUITE.erl",39}]}.
    {func_info,{atom,bif_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"bif_SUITE.erl",40}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[beam_validator,unsafe_get_list,
                                 trunc_and_friends,cover_safe_and_pure_bifs,
                                 cover_trim,head_tail,min_max,
                                 non_throwing]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bif_SUITE.erl",51}]}.
    {func_info,{atom,bif_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",52}]}.
    {call,1,{f,131}}. % id/1
    {move,{atom,bif_SUITE},{x,0}}.
    {line,[{location,"bif_SUITE.erl",53}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bif_SUITE.erl",56}]}.
    {func_info,{atom,bif_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bif_SUITE.erl",59}]}.
    {func_info,{atom,bif_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bif_SUITE.erl",62}]}.
    {func_info,{atom,bif_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, unsafe_get_list, 1, 16}.
  {label,15}.
    {line,[{location,"bif_SUITE.erl",65}]}.
    {func_info,{atom,bif_SUITE},{atom,unsafe_get_list},1}.
  {label,16}.
    {allocate,0,0}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bif_SUITE.erl",66}]}.
    {call,1,{f,131}}. % id/1
    {call,1,{f,19}}. % create_rows/1
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_cons,{t_integer,{1,1}},nil},nil}}]}}.
    {test,is_eq_exact,
          {f,17},
          [{tr,{x,0},{t_cons,{t_cons,{t_integer,{1,1}},nil},nil}},
           {literal,[[1],[1],[1]]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {badmatch,{x,0}}.


{function, create_rows, 1, 19}.
  {label,18}.
    {line,[{location,"bif_SUITE.erl",69}]}.
    {func_info,{atom,bif_SUITE},{atom,create_rows},1}.
  {label,19}.
    {move,{literal,[[1]]},{x,1}}.
    {call_only,2,{f,21}}. % create_rows/2


{function, create_rows, 2, 21}.
  {label,20}.
    {line,[{location,"bif_SUITE.erl",71}]}.
    {func_info,{atom,bif_SUITE},{atom,create_rows},2}.
  {label,21}.
    {'%',{var_info,{x,1},
                   [{type,{t_cons,{t_cons,{t_integer,{1,1}},nil},nil}}]}}.
    {test,is_eq_exact,{f,22},[{x,0},{integer,1}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,22}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {get_hd,{x,1},{x,1}}.
    {get_tl,{x,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",75}]}.
    {call,2,{f,25}}. % first/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nil,{f,23},[{tr,{x,0},{t_list,{t_integer,{1,1}},nil}}]}.
    {line,[{location,"bif_SUITE.erl",76}]}.
    {gc_bif,'-',{f,0},0,[{y,1},{integer,1}],{x,0}}.
    {test_heap,2,1}.
    {put_list,{literal,[1]},{y,0},{x,1}}.
    {call_last,2,{f,21},2}. % create_rows/2
  {label,23}.
    {line,[{location,"bif_SUITE.erl",75}]}.
    {badmatch,{x,0}}.


{function, first, 2, 25}.
  {label,24}.
    {line,[{location,"bif_SUITE.erl",78}]}.
    {func_info,{atom,bif_SUITE},{atom,first},2}.
  {label,25}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,1}},nil}}]}}.
    return.


{function, beam_validator, 1, 27}.
  {label,26}.
    {line,[{location,"bif_SUITE.erl",82}]}.
    {func_info,{atom,bif_SUITE},{atom,beam_validator},1}.
  {label,27}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",83}]}.
    {call,1,{f,31}}. % food/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,29},[{x,1},{atom,false}]}.
    {test,is_nonempty_list,{f,29},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,29},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_eq_exact,{f,29},[{x,1},{y,0}]}.
    {test,is_port,{f,28},[{y,0}]}.
    {line,[{location,"bif_SUITE.erl",86}]}.
    {badmatch,{atom,true}}.
  {label,28}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,29}.
    {line,[{location,"bif_SUITE.erl",83}]}.
    {badmatch,{x,0}}.


{function, food, 1, 31}.
  {label,30}.
    {line,[{location,"bif_SUITE.erl",90}]}.
    {func_info,{atom,bif_SUITE},{atom,food},1}.
  {label,31}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,false},{x,0},{x,0}}.
    return.


{function, trunc_and_friends, 1, 33}.
  {label,32}.
    {line,[{location,"bif_SUITE.erl",98}]}.
    {func_info,{atom,bif_SUITE},{atom,trunc_and_friends},1}.
  {label,33}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[trunc,round,floor,ceil]},{x,0}}.
    {line,[{location,"bif_SUITE.erl",100}]}.
    {call,1,{f,36}}. % trunc_and_friends_1/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bif_SUITE.erl",105}]}.
    {call,1,{f,137}}. % '-trunc_and_friends/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,trunc_and_friends},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,41,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,106,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,0},{literal,[{atom,108,ok}]},{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,108,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,108,[],none},test}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,108,[],none}},
                       {x,1}]}}.
    {put_list,
        {x,1},
        {literal,
            [{function,109,id,1,
                 [{clause,109,[{var,109,'I'}],[],[{var,109,'I'}]}]}]},
        {x,1}}.
    {put_list,{literal,{attribute,107,export,[{test,0}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,106,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {trim,1,1}.
    {line,[{location,"bif_SUITE.erl",106}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bif_SUITE.erl",109}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",110}]}.
    {call_ext,1,{extfunc,merl,print,1}}.
    {move,{atom,bif_SUITE},{x,0}}.
    {line,[{location,"bif_SUITE.erl",111}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bif_SUITE.erl",112}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,34},[{x,0},2,{atom,ok}]}.
    {line,[{location,"bif_SUITE.erl",113}]}.
    {call_ext,0,{extfunc,trunc_and_friends,test,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,34}.
    {line,[{location,"bif_SUITE.erl",112}]}.
    {badmatch,{x,0}}.


{function, trunc_and_friends_1, 1, 36}.
  {label,35}.
    {line,[{location,"bif_SUITE.erl",116}]}.
    {func_info,{atom,bif_SUITE},{atom,trunc_and_friends_1},1}.
  {label,36}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_atom,[ceil,floor,round,trunc]},nil}}]}}.
    {test,is_nonempty_list,{f,37},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {line,[{location,"bif_SUITE.erl",117}]}.
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
    {line,[{location,"bif_SUITE.erl",118}]}.
    {call,2,{f,39}}. % trunc_template/2
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,36}}. % trunc_and_friends_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,37}.
    return.


{function, trunc_template, 2, 39}.
  {label,38}.
    {line,[{location,"bif_SUITE.erl",121}]}.
    {func_info,{atom,bif_SUITE},{atom,trunc_template},2}.
  {label,39}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ceil,floor,round,trunc]}}]}}.
    {allocate,10,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {move,{x,1},{y,8}}.
    {move,{x,0},{y,9}}.
    {move,{x,1},{x,2}}.
    {move,{atom,erlang},{x,1}}.
    {move,{float,42.77},{x,0}}.
    {line,[{location,"bif_SUITE.erl",123}]}.
    {apply,1}.
    {line,[{location,"bif_SUITE.erl",124}]}.
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
    {put_list,{literal,[{atom,126,id}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,126,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{var,126,'Var'}]},{x,1},{x,1}}.
    {put_list,{y,4},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{var,127,'Var'}]]},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,127,[],none}},
                       {x,2}]}}.
    {put_list,{y,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{literal,[{tree,operator,{attr,127,[],none},'=:='}]},
              {x,3},
              {x,3}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,127,[],none}},
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
    {put_list,{x,2},{literal,[[{atom,127,ok}]]},{x,2}}.
    {put_list,nil,{x,2},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,127,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{y,7},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{var,128,'Var'}]]},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,128,[],none}},
                       {x,3}]}}.
    {put_list,{y,2},nil,{x,4}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{literal,[{tree,operator,{attr,128,[],none},'=='}]},{x,4},{x,4}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},{x,4},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,128,[],none}},
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
    {put_list,{x,3},{literal,[[{atom,128,ok}]]},{x,3}}.
    {put_list,nil,{x,3},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,128,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{y,1},nil,{x,4}}.
    {put_list,{x,4},{literal,[[{var,129,'Var'}]]},{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,129,[],none}},
                       {x,4}]}}.
    {put_list,{y,9},nil,{x,5}}.
    {put_list,{x,5},nil,{x,5}}.
    {put_list,{literal,[{tree,operator,{attr,129,[],none},'=='}]},{x,5},{x,5}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{x,4},{x,5},{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,129,[],none}},
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
    {put_list,{x,4},{literal,[[{atom,129,ok}]]},{x,4}}.
    {put_list,nil,{x,4},{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,129,[],none}},
                       {x,4}]}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{y,8},nil,{x,5}}.
    {put_list,{x,5},{literal,[[{var,130,'Var'}]]},{x,5}}.
    {put_tuple2,{x,5},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,130,[],none}},
                       {x,5}]}}.
    {put_list,{x,5},nil,{x,5}}.
    {put_list,{x,5},nil,{x,5}}.
    {put_list,{y,0},nil,{x,6}}.
    {put_list,{x,6},{x,5},{x,5}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[{atom,131,a}]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,131,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{literal,[{atom,131,ok}]},{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,block_expr},
                       {literal,{attr,131,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,
        {x,0},
        {literal,
            [[],
             [{clause,132,
                  [{tree,class_qualifier,
                       {attr,0,[],none},
                       {class_qualifier,
                           {atom,132,error},
                           {atom,132,badarg},
                           {var,132,'_'}}}],
                  [],
                  [{atom,132,ok}]}],
             []]},
        {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,try_expr},
                       {literal,{attr,131,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{literal,[{atom,133,ok}]},{x,0}}.
    {put_tuple2,{x,5},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,130,[],none}},
                       {x,5}]}}.
    {put_list,{x,5},{x,0},{x,0}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,if_expr},
                       {literal,{attr,129,[],none}},
                       {x,4}]}}.
    {put_list,{x,4},{x,0},{x,0}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,if_expr},
                       {literal,{attr,128,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},{x,0},{x,0}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,if_expr},
                       {literal,{attr,127,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,126,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,125,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,6},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,125,[],none}},
                       {x,0}]}}.
    {line,[{location,"bif_SUITE.erl",125}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},10}.


{function, cover_safe_and_pure_bifs, 1, 41}.
  {label,40}.
    {line,[{location,"bif_SUITE.erl",135}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_safe_and_pure_bifs},1}.
  {label,41}.
    {move,{atom,ok},{x,0}}.
    return.


{function, cover_trim, 1, 43}.
  {label,42}.
    {line,[{location,"bif_SUITE.erl",152}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim},1}.
  {label,43}.
    {allocate,0,0}.
    {move,{literal,"*"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",153}]}.
    {call,1,{f,131}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {call,2,{f,53}}. % cover_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",154}]}.
    {call,1,{f,131}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {call,2,{f,53}}. % cover_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,"1"},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",156}]}.
    {call,2,{f,56}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,51},[{x,0},{atom,true}]}.
    {move,{literal,"0"},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",157}]}.
    {call,2,{f,56}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,44},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,44}.
    {move,{literal,"1"},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",158}]}.
    {call,2,{f,56}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,45},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,45}.
    {move,{literal,"0"},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",159}]}.
    {call,2,{f,56}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,46},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,46}.
    {move,{integer,-1},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",161}]}.
    {call,2,{f,59}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,50},[{x,0},{atom,true}]}.
    {move,{integer,100},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",162}]}.
    {call,2,{f,59}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,47},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,47}.
    {move,{integer,-10},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",163}]}.
    {call,2,{f,59}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,48},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,48}.
    {move,{integer,-100},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",164}]}.
    {call,2,{f,59}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,49},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,49}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,50}.
    {line,[{location,"bif_SUITE.erl",161}]}.
    {badmatch,{atom,false}}.
  {label,51}.
    {line,[{location,"bif_SUITE.erl",156}]}.
    {badmatch,{atom,false}}.


{function, cover_trim_1, 2, 53}.
  {label,52}.
    {line,[{location,"bif_SUITE.erl",168}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim_1},2}.
  {label,53}.
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
    {line,[{location,"bif_SUITE.erl",169}]}.
    {call,1,{f,131}}. % id/1
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bif_SUITE.erl",170}]}.
    {call,1,{f,131}}. % id/1
    {bif,hd,{f,54},[{y,0}],{x,0}}.
    {test,is_eq_exact,{f,54},[{x,0},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,54}.
    {line,[{location,"bif_SUITE.erl",171}]}.
    if_end.


{function, cover_trim_2, 2, 56}.
  {label,55}.
    {line,[{location,"bif_SUITE.erl",176}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim_2},2}.
  {label,56}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{45,118}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{48,49}},nil}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",177}]}.
    {call,1,{f,131}}. % id/1
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bif_SUITE.erl",178}]}.
    {call,1,{f,131}}. % id/1
    {test,is_eq_exact,{f,57},[{x,0},{literal,"keep-alive"}]}.
    {get_hd,{y,0},{x,0}}.
    {bif,'>=',{f,0},[{tr,{x,0},{t_integer,{48,49}}},{integer,49}],{x,0}}.
    {deallocate,2}.
    return.
  {label,57}.
    {move,{atom,false},{x,0}}.
    {deallocate,2}.
    return.


{function, cover_trim_3, 2, 59}.
  {label,58}.
    {line,[{location,"bif_SUITE.erl",185}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim_3},2}.
  {label,59}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{45,118}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{-100,100}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",186}]}.
    {call,1,{f,131}}. % id/1
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bif_SUITE.erl",187}]}.
    {call,1,{f,131}}. % id/1
    {test,is_eq_exact,{f,60},[{x,0},{literal,"keep-alive"}]}.
    {gc_bif,abs,{f,60},0,[{tr,{y,0},{t_integer,{-100,100}}}],{x,0}}.
    {bif,'>=',{f,0},[{integer,41},{tr,{x,0},{t_integer,{0,100}}}],{x,0}}.
    {deallocate,2}.
    return.
  {label,60}.
    {move,{atom,false},{x,0}}.
    {deallocate,2}.
    return.


{function, head_tail, 1, 62}.
  {label,61}.
    {line,[{location,"bif_SUITE.erl",196}]}.
    {func_info,{atom,bif_SUITE},{atom,head_tail},1}.
  {label,62}.
    {allocate,0,0}.
    {line,[{location,"bif_SUITE.erl",197}]}.
    {call,0,{f,66}}. % head_case/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_atom,[ok]}}}}]}}.
    {line,[{location,"bif_SUITE.erl",198}]}.
    {call,0,{f,68}}. % tail_case/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_atom,[ok]}}}}]}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bif_SUITE.erl",200}]}.
    {call,1,{f,131}}. % id/1
    {bif,hd,{f,0},[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,64},[{x,0},{integer,1}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bif_SUITE.erl",201}]}.
    {call,1,{f,131}}. % id/1
    {bif,tl,{f,0},[{x,0}],{x,0}}.
    {test,is_nil,{f,63},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,63}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"bif_SUITE.erl",200}]}.
    {badmatch,{x,0}}.


{function, head_case, 0, 66}.
  {label,65}.
    {line,[{location,"bif_SUITE.erl",205}]}.
    {func_info,{atom,bif_SUITE},{atom,head_case},0}.
  {label,66}.
    {move,{literal,{1,ok}},{x,0}}.
    return.


{function, tail_case, 0, 68}.
  {label,67}.
    {line,[{location,"bif_SUITE.erl",211}]}.
    {func_info,{atom,bif_SUITE},{atom,tail_case},0}.
  {label,68}.
    {move,{literal,{1,ok}},{x,0}}.
    return.


{function, min_max, 1, 70}.
  {label,69}.
    {line,[{location,"bif_SUITE.erl",217}]}.
    {func_info,{atom,bif_SUITE},{atom,min_max},1}.
  {label,70}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"bif_SUITE.erl",218}]}.
    {call,1,{f,131}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"bif_SUITE.erl",219}]}.
    {call,1,{f,131}}. % id/1
    {move,{y,1},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bif_SUITE.erl",221}]}.
    {call,2,{f,97}}. % bool_min_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",222}]}.
    {call,2,{f,97}}. % bool_min_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",223}]}.
    {call,2,{f,97}}. % bool_min_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",224}]}.
    {call,2,{f,100}}. % bool_min_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",226}]}.
    {call,2,{f,103}}. % bool_max_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",227}]}.
    {call,2,{f,107}}. % bool_max_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",228}]}.
    {call,2,{f,107}}. % bool_max_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bif_SUITE.erl",229}]}.
    {call,2,{f,107}}. % bool_max_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"bif_SUITE.erl",231}]}.
    {call,1,{f,114}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,95},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,11}]}.
    {move,{integer,10},{x,0}}.
    {line,[{location,"bif_SUITE.erl",232}]}.
    {call,1,{f,114}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,94},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,11}]}.
    {move,{integer,9},{x,0}}.
    {line,[{location,"bif_SUITE.erl",233}]}.
    {call,1,{f,114}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,93},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,10}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",234}]}.
    {call,1,{f,114}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,92},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,1}]}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",235}]}.
    {call,1,{f,114}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,91},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,0}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bif_SUITE.erl",236}]}.
    {call,1,{f,114}}. % min_increment/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,90},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,11}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bif_SUITE.erl",238}]}.
    {call,1,{f,131}}. % id/1
    {call,1,{f,111}}. % max_number/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_number,{1,'+inf'}}}}}]}}.
    {test,is_eq_exact,
          {f,89},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}},
           {literal,{42,42}}]}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",239}]}.
    {call,1,{f,131}}. % id/1
    {call,1,{f,111}}. % max_number/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_number,{1,'+inf'}}}}}]}}.
    {test,is_eq_exact,
          {f,88},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}},
           {literal,{42,42.0}}]}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",240}]}.
    {call,1,{f,131}}. % id/1
    {call,1,{f,111}}. % max_number/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_number,{1,'+inf'}}}}}]}}.
    {test,is_eq_exact,
          {f,87},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}},
           {literal,{-1,1}}]}.
    {move,{float,-1.0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",241}]}.
    {call,1,{f,131}}. % id/1
    {call,1,{f,111}}. % max_number/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_number,{1,'+inf'}}}}}]}}.
    {test,is_eq_exact,
          {f,86},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}},
           {literal,{-1,1}}]}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",243}]}.
    {call,1,{f,118}}. % int_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_integer,{100,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,85},
          [{tr,{x,0},{t_integer,{100,'+inf'}}},{integer,100}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",244}]}.
    {call,1,{f,118}}. % int_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_integer,{100,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,84},
          [{tr,{x,0},{t_integer,{100,'+inf'}}},{integer,100}]}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"bif_SUITE.erl",245}]}.
    {call,1,{f,118}}. % int_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_integer,{100,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,83},
          [{tr,{x,0},{t_integer,{100,'+inf'}}},{integer,105}]}.
    {move,{integer,10},{x,0}}.
    {line,[{location,"bif_SUITE.erl",246}]}.
    {call,1,{f,118}}. % int_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_integer,{100,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,82},
          [{tr,{x,0},{t_integer,{100,'+inf'}}},{integer,110}]}.
    {move,{integer,11},{x,0}}.
    {line,[{location,"bif_SUITE.erl",247}]}.
    {call,1,{f,118}}. % int_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_integer,{100,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,81},
          [{tr,{x,0},{t_integer,{100,'+inf'}}},{integer,110}]}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",249}]}.
    {call,1,{f,120}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,80},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,100}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",250}]}.
    {call,1,{f,120}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,79},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,100}]}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"bif_SUITE.erl",251}]}.
    {call,1,{f,120}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,78},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,105}]}.
    {move,{integer,10},{x,0}}.
    {line,[{location,"bif_SUITE.erl",252}]}.
    {call,1,{f,120}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,77},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,110}]}.
    {move,{integer,11},{x,0}}.
    {line,[{location,"bif_SUITE.erl",253}]}.
    {call,1,{f,120}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,76},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,110}]}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"bif_SUITE.erl",255}]}.
    {call,1,{f,120}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,75},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,105}]}.
    {move,{float,5.0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",256}]}.
    {call,1,{f,120}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,74},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{float,105.0}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bif_SUITE.erl",257}]}.
    {call,1,{f,120}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,73},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,110}]}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{location,"bif_SUITE.erl",258}]}.
    {call,1,{f,120}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,72},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,110}]}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{location,"bif_SUITE.erl",259}]}.
    {call,1,{f,120}}. % num_clamped_add/1
    {'%',{var_info,{x,0},[{type,{t_number,{99,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_number,{99,'+inf'}}},{integer,110}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,71}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"bif_SUITE.erl",258}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{location,"bif_SUITE.erl",257}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"bif_SUITE.erl",256}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{location,"bif_SUITE.erl",255}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{location,"bif_SUITE.erl",253}]}.
    {badmatch,{x,0}}.
  {label,77}.
    {line,[{location,"bif_SUITE.erl",252}]}.
    {badmatch,{x,0}}.
  {label,78}.
    {line,[{location,"bif_SUITE.erl",251}]}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"bif_SUITE.erl",250}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"bif_SUITE.erl",249}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"bif_SUITE.erl",247}]}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{location,"bif_SUITE.erl",246}]}.
    {badmatch,{x,0}}.
  {label,83}.
    {line,[{location,"bif_SUITE.erl",245}]}.
    {badmatch,{x,0}}.
  {label,84}.
    {line,[{location,"bif_SUITE.erl",244}]}.
    {badmatch,{x,0}}.
  {label,85}.
    {line,[{location,"bif_SUITE.erl",243}]}.
    {badmatch,{x,0}}.
  {label,86}.
    {line,[{location,"bif_SUITE.erl",241}]}.
    {badmatch,{x,0}}.
  {label,87}.
    {line,[{location,"bif_SUITE.erl",240}]}.
    {badmatch,{x,0}}.
  {label,88}.
    {line,[{location,"bif_SUITE.erl",239}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{location,"bif_SUITE.erl",238}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{location,"bif_SUITE.erl",236}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{location,"bif_SUITE.erl",235}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{location,"bif_SUITE.erl",234}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{location,"bif_SUITE.erl",233}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{location,"bif_SUITE.erl",232}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{location,"bif_SUITE.erl",231}]}.
    {badmatch,{x,0}}.


{function, bool_min_false, 2, 97}.
  {label,96}.
    {line,[{location,"bif_SUITE.erl",266}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_min_false},2}.
  {label,97}.
    {test,is_boolean,{f,96},[{x,0}]}.
    {test,is_boolean,{f,96},[{x,1}]}.
    {test,is_eq_exact,{f,98},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,98},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
    {line,[{location,"bif_SUITE.erl",267}]}.
    {badmatch,{atom,true}}.
  {label,98}.
    {move,{atom,false},{x,0}}.
    return.


{function, bool_min_true, 2, 100}.
  {label,99}.
    {line,[{location,"bif_SUITE.erl",269}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_min_true},2}.
  {label,100}.
    {test,is_boolean,{f,99},[{x,0}]}.
    {test,is_boolean,{f,99},[{x,1}]}.
    {test,is_eq_exact,{f,101},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,101},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,101}.
    {line,[{location,"bif_SUITE.erl",270}]}.
    {badmatch,{atom,false}}.


{function, bool_max_false, 2, 103}.
  {label,102}.
    {line,[{location,"bif_SUITE.erl",272}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_max_false},2}.
  {label,103}.
    {test,is_boolean,{f,102},[{x,0}]}.
    {test,is_boolean,{f,102},[{x,1}]}.
    {test,is_eq_exact,{f,104},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,105},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
  {label,104}.
    {line,[{location,"bif_SUITE.erl",273}]}.
    {badmatch,{atom,true}}.
  {label,105}.
    {move,{atom,false},{x,0}}.
    return.


{function, bool_max_true, 2, 107}.
  {label,106}.
    {line,[{location,"bif_SUITE.erl",275}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_max_true},2}.
  {label,107}.
    {test,is_boolean,{f,106},[{x,1}]}.
    {bif,max,{f,0},[{x,0},{tr,{x,1},{t_atom,[false,true]}}],{x,1}}.
    {test,is_eq_exact,{f,109},[{x,1},{atom,true}]}.
    {test,is_boolean,{f,108},[{x,0}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,108}.
    {line,[{location,"bif_SUITE.erl",277}]}.
    if_end.
  {label,109}.
    {line,[{location,"bif_SUITE.erl",276}]}.
    {badmatch,{x,1}}.


{function, max_number, 1, 111}.
  {label,110}.
    {line,[{location,"bif_SUITE.erl",282}]}.
    {func_info,{atom,bif_SUITE},{atom,max_number},1}.
  {label,111}.
    {line,[{location,"bif_SUITE.erl",283}]}.
    {gc_bif,trunc,{f,0},1,[{x,0}],{x,1}}.
    {test_heap,6,2}.
    {bif,max,{f,0},[{tr,{x,0},{t_number,any}},{integer,1}],{x,2}}.
    {put_tuple2,{x,2},{list,[{x,1},{x,2}]}}.
    {bif,max,{f,0},[{integer,1},{tr,{x,0},{t_number,any}}],{x,0}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {test,is_eq_exact,
          {f,112},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}},
           {tr,{x,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,any},2 => {t_number,{1,'+inf'}}}}}]}.
    return.
  {label,112}.
    {line,[{location,"bif_SUITE.erl",284}]}.
    {badmatch,{x,0}}.


{function, min_increment, 1, 114}.
  {label,113}.
    {line,[{location,"bif_SUITE.erl",286}]}.
    {func_info,{atom,bif_SUITE},{atom,min_increment},1}.
  {label,114}.
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
    {line,[{location,"bif_SUITE.erl",287}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_number,{-1,10}}},{integer,1}],{x,1}}.
    {bif,min,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[a]},none,{t_integer,{-1,100}},none,none}},
          {integer,10}],
         {x,2}}.
    {line,[{location,"bif_SUITE.erl",288}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_number,{-1,10}}},{integer,1}],{x,2}}.
    {test,is_eq_exact,
          {f,116},
          [{tr,{x,2},{t_number,{0,11}}},{tr,{x,1},{t_number,{0,11}}}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bif_SUITE.erl",289}]}.
    {call,1,{f,131}}. % id/1
    {bif,min,{f,0},[{x,0},{integer,10}],{x,0}}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_number,{'-inf',10}}},{integer,1}],{x,0}}.
    {test,is_eq_exact,
          {f,115},
          [{tr,{x,0},{t_number,{'-inf',11}}},{tr,{y,0},{t_number,{0,11}}}]}.
    {deallocate,1}.
    return.
  {label,115}.
    {badmatch,{x,0}}.
  {label,116}.
    {line,[{location,"bif_SUITE.erl",288}]}.
    {badmatch,{x,2}}.


{function, int_clamped_add, 1, 118}.
  {label,117}.
    {line,[{location,"bif_SUITE.erl",291}]}.
    {func_info,{atom,bif_SUITE},{atom,int_clamped_add},1}.
  {label,118}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-1,11}}}]}}.
    {bif,max,{f,0},[{tr,{x,0},{t_integer,{-1,11}}},{integer,0}],{x,0}}.
    {bif,min,{f,0},[{tr,{x,0},{t_integer,{0,11}}},{integer,10}],{x,0}}.
    {line,[{location,"bif_SUITE.erl",292}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_integer,{0,10}}},{integer,100}],{x,0}}.
    return.


{function, num_clamped_add, 1, 120}.
  {label,119}.
    {line,[{location,"bif_SUITE.erl",294}]}.
    {func_info,{atom,bif_SUITE},{atom,num_clamped_add},1}.
  {label,120}.
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
    {line,[{location,"bif_SUITE.erl",295}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_number,{-1,10}}},{integer,100}],{x,0}}.
    return.


{function, non_throwing, 1, 122}.
  {label,121}.
    {line,[{location,"bif_SUITE.erl",297}]}.
    {func_info,{atom,bif_SUITE},{atom,non_throwing},1}.
  {label,122}.
    {gc_bif,list_to_existing_atom,{f,123},0,[{literal,"l"}],{x,0}}.
    {jump,{f,124}}.
  {label,123}.
    {move,nil,{x,0}}.
  {label,124}.
    {test,is_eq_exact,{f,129},[{x,0},{atom,l}]}.
    {gc_bif,list_to_existing_atom,{f,125},0,[{literal,[a]}],{x,0}}.
    {test,is_nil,{f,127},[{x,0}]}.
  {label,125}.
    {gc_bif,binary_to_existing_atom,{f,126},0,[{atom,a},{atom,unicode}],{x,0}}.
    {test,is_nil,{f,128},[{x,0}]}.
  {label,126}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,127}.
    {line,[{location,"bif_SUITE.erl",304}]}.
    {badmatch,{x,0}}.
  {label,128}.
    {line,[{location,"bif_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,129}.
    {line,[{location,"bif_SUITE.erl",301}]}.
    {badmatch,{x,0}}.


{function, id, 1, 131}.
  {label,130}.
    {line,[{location,"bif_SUITE.erl",319}]}.
    {func_info,{atom,bif_SUITE},{atom,id},1}.
  {label,131}.
    return.


{function, module_info, 0, 133}.
  {label,132}.
    {line,[]}.
    {func_info,{atom,bif_SUITE},{atom,module_info},0}.
  {label,133}.
    {move,{atom,bif_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 135}.
  {label,134}.
    {line,[]}.
    {func_info,{atom,bif_SUITE},{atom,module_info},1}.
  {label,135}.
    {move,{x,0},{x,1}}.
    {move,{atom,bif_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-trunc_and_friends/1-lc$^0/1-0-', 1, 137}.
  {label,136}.
    {line,[{location,"bif_SUITE.erl",105}]}.
    {func_info,{atom,bif_SUITE},{atom,'-trunc_and_friends/1-lc$^0/1-0-'},1}.
  {label,137}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,138},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",103}]}.
    {call_ext,1,{extfunc,erl_syntax,function_name,1}}.
    {test_heap,9,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,104,[],none}},
                       {x,0}]}}.
    {line,[{location,"bif_SUITE.erl",104}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",105}]}.
    {call,1,{f,137}}. % '-trunc_and_friends/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,138}.
    return.
