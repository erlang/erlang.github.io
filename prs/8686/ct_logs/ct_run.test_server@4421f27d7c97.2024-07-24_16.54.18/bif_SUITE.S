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
           {trunc_and_friends,1},
           {unsafe_get_list,1}]}.

{attributes, []}.

{labels, 94}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bif_SUITE.erl",32}]}.
    {func_info,{atom,bif_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bif_SUITE.erl",35}]}.
    {func_info,{atom,bif_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bif_SUITE.erl",38}]}.
    {func_info,{atom,bif_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"bif_SUITE.erl",39}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[beam_validator,unsafe_get_list,
                                 trunc_and_friends,cover_safe_and_pure_bifs,
                                 cover_trim,head_tail,min_max]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bif_SUITE.erl",49}]}.
    {func_info,{atom,bif_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bif_SUITE},{x,0}}.
    {line,[{location,"bif_SUITE.erl",50}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bif_SUITE.erl",53}]}.
    {func_info,{atom,bif_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bif_SUITE.erl",56}]}.
    {func_info,{atom,bif_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bif_SUITE.erl",59}]}.
    {func_info,{atom,bif_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, unsafe_get_list, 1, 16}.
  {label,15}.
    {line,[{location,"bif_SUITE.erl",62}]}.
    {func_info,{atom,bif_SUITE},{atom,unsafe_get_list},1}.
  {label,16}.
    {allocate,0,0}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bif_SUITE.erl",63}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
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
    {line,[{location,"bif_SUITE.erl",66}]}.
    {func_info,{atom,bif_SUITE},{atom,create_rows},1}.
  {label,19}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{literal,[[1]]},{x,1}}.
    {call_only,2,{f,21}}. % create_rows/2


{function, create_rows, 2, 21}.
  {label,20}.
    {line,[{location,"bif_SUITE.erl",68}]}.
    {func_info,{atom,bif_SUITE},{atom,create_rows},2}.
  {label,21}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{'-inf',3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_cons,{t_cons,{t_integer,{1,1}},nil},nil}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{'-inf',3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}},
           {integer,1}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,22}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {get_hd,{x,1},{x,1}}.
    {get_tl,{x,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",72}]}.
    {call,2,{f,25}}. % first/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nil,{f,23},[{tr,{x,0},{t_list,{t_integer,{1,1}},nil}}]}.
    {line,[{location,"bif_SUITE.erl",73}]}.
    {gc_bif,'-',
            {f,0},
            0,
            [{tr,{y,1},
                 {t_union,{t_atom,[false,true]},
                          {t_cons,{t_integer,{1,118}},nil},
                          {t_integer,{'-inf',3}},
                          [{{3,{t_atom,[a]}},
                            {t_tuple,3,true,
                                     #{1 => {t_atom,[a]},
                                       2 => {t_atom,[b]},
                                       3 => {t_atom,[c]}}}}],
                          {t_bitstring,8,false}}},
             {integer,1}],
            {x,0}}.
    {test_heap,2,1}.
    {put_list,{literal,[1]},{y,0},{x,1}}.
    {call_last,2,{f,21},2}. % create_rows/2
  {label,23}.
    {line,[{location,"bif_SUITE.erl",72}]}.
    {badmatch,{x,0}}.


{function, first, 2, 25}.
  {label,24}.
    {line,[{location,"bif_SUITE.erl",75}]}.
    {func_info,{atom,bif_SUITE},{atom,first},2}.
  {label,25}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,1}},nil}}]}}.
    return.


{function, beam_validator, 1, 27}.
  {label,26}.
    {line,[{location,"bif_SUITE.erl",79}]}.
    {func_info,{atom,bif_SUITE},{atom,beam_validator},1}.
  {label,27}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",80}]}.
    {call,1,{f,31}}. % food/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,29},[{x,1},{atom,false}]}.
    {test,is_nonempty_list,{f,29},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,29},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_eq_exact,{f,29},[{x,1},{y,0}]}.
    {test,is_port,{f,28},[{y,0}]}.
    {line,[{location,"bif_SUITE.erl",83}]}.
    {badmatch,{atom,true}}.
  {label,28}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,29}.
    {line,[{location,"bif_SUITE.erl",80}]}.
    {badmatch,{x,0}}.


{function, food, 1, 31}.
  {label,30}.
    {line,[{location,"bif_SUITE.erl",87}]}.
    {func_info,{atom,bif_SUITE},{atom,food},1}.
  {label,31}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,false},{x,0},{x,0}}.
    return.


{function, trunc_and_friends, 1, 33}.
  {label,32}.
    {line,[{location,"bif_SUITE.erl",95}]}.
    {func_info,{atom,bif_SUITE},{atom,trunc_and_friends},1}.
  {label,33}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[trunc,round,floor,ceil]},{x,0}}.
    {line,[{location,"bif_SUITE.erl",97}]}.
    {call,1,{f,36}}. % trunc_and_friends_1/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bif_SUITE.erl",102}]}.
    {call,1,{f,92}}. % '-trunc_and_friends/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,trunc_and_friends},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,41,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,103,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,0},{literal,[{atom,105,ok}]},{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,105,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,105,[],none},test}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,105,[],none}},
                       {x,1}]}}.
    {put_list,
        {x,1},
        {literal,
            [{function,106,id,1,
                 [{clause,106,[{var,106,'I'}],[],[{var,106,'I'}]}]}]},
        {x,1}}.
    {put_list,{literal,{attribute,104,export,[{test,0}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,103,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {trim,1,1}.
    {line,[{location,"bif_SUITE.erl",103}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bif_SUITE.erl",106}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",107}]}.
    {call_ext,1,{extfunc,merl,print,1}}.
    {move,{atom,bif_SUITE},{x,0}}.
    {line,[{location,"bif_SUITE.erl",108}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bif_SUITE.erl",109}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,34},[{x,0},2,{atom,ok}]}.
    {line,[{location,"bif_SUITE.erl",110}]}.
    {call_ext,0,{extfunc,trunc_and_friends,test,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,34}.
    {line,[{location,"bif_SUITE.erl",109}]}.
    {badmatch,{x,0}}.


{function, trunc_and_friends_1, 1, 36}.
  {label,35}.
    {line,[{location,"bif_SUITE.erl",113}]}.
    {func_info,{atom,bif_SUITE},{atom,trunc_and_friends_1},1}.
  {label,36}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_atom,[ceil,floor,round,trunc]},nil}}]}}.
    {test,is_nonempty_list,{f,37},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {line,[{location,"bif_SUITE.erl",114}]}.
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
    {line,[{location,"bif_SUITE.erl",115}]}.
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
    {line,[{location,"bif_SUITE.erl",118}]}.
    {func_info,{atom,bif_SUITE},{atom,trunc_template},2}.
  {label,39}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ceil,floor,round,trunc]}}]}}.
    {allocate,10,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {move,{x,1},{y,8}}.
    {move,{x,0},{y,9}}.
    {move,{x,1},{x,2}}.
    {move,{atom,erlang},{x,1}}.
    {move,{float,42.77},{x,0}}.
    {line,[{location,"bif_SUITE.erl",120}]}.
    {apply,1}.
    {line,[{location,"bif_SUITE.erl",121}]}.
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
    {put_list,{literal,[{atom,123,id}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,123,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{var,123,'Var'}]},{x,1},{x,1}}.
    {put_list,{y,4},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{var,124,'Var'}]]},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,124,[],none}},
                       {x,2}]}}.
    {put_list,{y,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{literal,[{tree,operator,{attr,124,[],none},'=:='}]},
              {x,3},
              {x,3}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,124,[],none}},
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
    {put_list,{x,2},{literal,[[{atom,124,ok}]]},{x,2}}.
    {put_list,nil,{x,2},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,124,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{y,7},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{var,125,'Var'}]]},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,125,[],none}},
                       {x,3}]}}.
    {put_list,{y,2},nil,{x,4}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{literal,[{tree,operator,{attr,125,[],none},'=='}]},{x,4},{x,4}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},{x,4},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,125,[],none}},
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
    {put_list,{x,3},{literal,[[{atom,125,ok}]]},{x,3}}.
    {put_list,nil,{x,3},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,125,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{y,1},nil,{x,4}}.
    {put_list,{x,4},{literal,[[{var,126,'Var'}]]},{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,126,[],none}},
                       {x,4}]}}.
    {put_list,{y,9},nil,{x,5}}.
    {put_list,{x,5},nil,{x,5}}.
    {put_list,{literal,[{tree,operator,{attr,126,[],none},'=='}]},{x,5},{x,5}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{x,4},{x,5},{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,126,[],none}},
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
    {put_list,{x,4},{literal,[[{atom,126,ok}]]},{x,4}}.
    {put_list,nil,{x,4},{x,4}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,126,[],none}},
                       {x,4}]}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{y,8},nil,{x,5}}.
    {put_list,{x,5},{literal,[[{var,127,'Var'}]]},{x,5}}.
    {put_tuple2,{x,5},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,127,[],none}},
                       {x,5}]}}.
    {put_list,{x,5},nil,{x,5}}.
    {put_list,{x,5},nil,{x,5}}.
    {put_list,{y,0},nil,{x,6}}.
    {put_list,{x,6},{x,5},{x,5}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[{atom,128,a}]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,128,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{literal,[{atom,128,ok}]},{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,block_expr},
                       {literal,{attr,128,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,
        {x,0},
        {literal,
            [[],
             [{clause,129,
                  [{tree,class_qualifier,
                       {attr,0,[],none},
                       {class_qualifier,
                           {atom,129,error},
                           {atom,129,badarg},
                           {var,129,'_'}}}],
                  [],
                  [{atom,129,ok}]}],
             []]},
        {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,try_expr},
                       {literal,{attr,128,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{literal,[{atom,130,ok}]},{x,0}}.
    {put_tuple2,{x,5},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,127,[],none}},
                       {x,5}]}}.
    {put_list,{x,5},{x,0},{x,0}}.
    {put_tuple2,{x,4},
                {list,[{atom,template},
                       {atom,if_expr},
                       {literal,{attr,126,[],none}},
                       {x,4}]}}.
    {put_list,{x,4},{x,0},{x,0}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,if_expr},
                       {literal,{attr,125,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},{x,0},{x,0}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,if_expr},
                       {literal,{attr,124,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,123,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,122,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,6},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,122,[],none}},
                       {x,0}]}}.
    {line,[{location,"bif_SUITE.erl",122}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},10}.


{function, cover_safe_and_pure_bifs, 1, 41}.
  {label,40}.
    {line,[{location,"bif_SUITE.erl",132}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_safe_and_pure_bifs},1}.
  {label,41}.
    {move,{atom,ok},{x,0}}.
    return.


{function, cover_trim, 1, 43}.
  {label,42}.
    {line,[{location,"bif_SUITE.erl",149}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim},1}.
  {label,43}.
    {allocate,0,0}.
    {move,{literal,"*"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",150}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {call,2,{f,53}}. % cover_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",151}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {call,2,{f,53}}. % cover_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,"1"},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",153}]}.
    {call,2,{f,56}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,51},[{x,0},{atom,true}]}.
    {move,{literal,"0"},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",154}]}.
    {call,2,{f,56}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,44},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,44}.
    {move,{literal,"1"},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",155}]}.
    {call,2,{f,56}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,45},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,45}.
    {move,{literal,"0"},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",156}]}.
    {call,2,{f,56}}. % cover_trim_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,46},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,46}.
    {move,{integer,-1},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",158}]}.
    {call,2,{f,59}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,50},[{x,0},{atom,true}]}.
    {move,{integer,100},{x,1}}.
    {move,{literal,"keep-alive"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",159}]}.
    {call,2,{f,59}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,47},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,47}.
    {move,{integer,-10},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",160}]}.
    {call,2,{f,59}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,48},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,48}.
    {move,{integer,-100},{x,1}}.
    {move,{literal,"other"},{x,0}}.
    {line,[{location,"bif_SUITE.erl",161}]}.
    {call,2,{f,59}}. % cover_trim_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,49},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,49}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,50}.
    {line,[{location,"bif_SUITE.erl",158}]}.
    {badmatch,{atom,false}}.
  {label,51}.
    {line,[{location,"bif_SUITE.erl",153}]}.
    {badmatch,{atom,false}}.


{function, cover_trim_1, 2, 53}.
  {label,52}.
    {line,[{location,"bif_SUITE.erl",165}]}.
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
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bif_SUITE.erl",166}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bif_SUITE.erl",167}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {bif,hd,
         {f,54},
         [{tr,{y,0},
              {t_union,{t_atom,[false,true]},
                       {t_cons,{t_integer,{1,118}},nil},
                       {t_integer,{0,3}},
                       [{{3,{t_atom,[a]}},
                         {t_tuple,3,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_atom,[b]},
                                    3 => {t_atom,[c]}}}}],
                       {t_bitstring,8,false}}}],
         {x,0}}.
    {test,is_eq_exact,{f,54},[{tr,{x,0},{t_integer,{1,118}}},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,54}.
    {line,[{location,"bif_SUITE.erl",168}]}.
    if_end.


{function, cover_trim_2, 2, 56}.
  {label,55}.
    {line,[{location,"bif_SUITE.erl",173}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim_2},2}.
  {label,56}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{45,118}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{48,49}},nil}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",174}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bif_SUITE.erl",175}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,57},
          [{tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{0,3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}},
           {literal,"keep-alive"}]}.
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
    {line,[{location,"bif_SUITE.erl",182}]}.
    {func_info,{atom,bif_SUITE},{atom,cover_trim_3},2}.
  {label,59}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{45,118}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{-100,100}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",183}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bif_SUITE.erl",184}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,60},
          [{tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{0,3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}},
           {literal,"keep-alive"}]}.
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
    {line,[{location,"bif_SUITE.erl",193}]}.
    {func_info,{atom,bif_SUITE},{atom,head_tail},1}.
  {label,62}.
    {allocate,0,0}.
    {line,[{location,"bif_SUITE.erl",194}]}.
    {call,0,{f,66}}. % head_case/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_atom,[ok]}}}}]}}.
    {line,[{location,"bif_SUITE.erl",195}]}.
    {call,0,{f,68}}. % tail_case/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_atom,[ok]}}}}]}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bif_SUITE.erl",197}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {bif,hd,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,true]},
                       {t_cons,{t_integer,{1,118}},nil},
                       {t_integer,{0,3}},
                       [{{3,{t_atom,[a]}},
                         {t_tuple,3,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_atom,[b]},
                                    3 => {t_atom,[c]}}}}],
                       {t_bitstring,8,false}}}],
         {x,0}}.
    {test,is_eq_exact,{f,64},[{tr,{x,0},{t_integer,{1,118}}},{integer,1}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bif_SUITE.erl",198}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {bif,tl,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,true]},
                       {t_cons,{t_integer,{1,118}},nil},
                       {t_integer,{0,3}},
                       [{{3,{t_atom,[a]}},
                         {t_tuple,3,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_atom,[b]},
                                    3 => {t_atom,[c]}}}}],
                       {t_bitstring,8,false}}}],
         {x,0}}.
    {test,is_nil,{f,63},[{tr,{x,0},{t_list,{t_integer,{1,118}},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,63}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"bif_SUITE.erl",197}]}.
    {badmatch,{x,0}}.


{function, head_case, 0, 66}.
  {label,65}.
    {line,[{location,"bif_SUITE.erl",202}]}.
    {func_info,{atom,bif_SUITE},{atom,head_case},0}.
  {label,66}.
    {move,{literal,{1,ok}},{x,0}}.
    return.


{function, tail_case, 0, 68}.
  {label,67}.
    {line,[{location,"bif_SUITE.erl",208}]}.
    {func_info,{atom,bif_SUITE},{atom,tail_case},0}.
  {label,68}.
    {move,{literal,{1,ok}},{x,0}}.
    return.


{function, min_max, 1, 70}.
  {label,69}.
    {line,[{location,"bif_SUITE.erl",214}]}.
    {func_info,{atom,bif_SUITE},{atom,min_max},1}.
  {label,70}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"bif_SUITE.erl",215}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"bif_SUITE.erl",216}]}.
    {call,1,{f,86}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{y,1},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bif_SUITE.erl",218}]}.
    {call,2,{f,72}}. % bool_min_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",219}]}.
    {call,2,{f,72}}. % bool_min_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",220}]}.
    {call,2,{f,72}}. % bool_min_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",221}]}.
    {call,2,{f,75}}. % bool_min_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",223}]}.
    {call,2,{f,78}}. % bool_max_false/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bif_SUITE.erl",224}]}.
    {call,2,{f,82}}. % bool_max_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",225}]}.
    {call,2,{f,82}}. % bool_max_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bif_SUITE.erl",226}]}.
    {call,2,{f,82}}. % bool_max_true/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, bool_min_false, 2, 72}.
  {label,71}.
    {line,[{location,"bif_SUITE.erl",233}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_min_false},2}.
  {label,72}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {test,is_boolean,
          {f,71},
          [{tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{0,3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}}]}.
    {test,is_boolean,
          {f,71},
          [{tr,{x,1},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{0,3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}}]}.
    {test,is_eq_exact,{f,73},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,73},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
    {line,[{location,"bif_SUITE.erl",234}]}.
    {badmatch,{atom,true}}.
  {label,73}.
    {move,{atom,false},{x,0}}.
    return.


{function, bool_min_true, 2, 75}.
  {label,74}.
    {line,[{location,"bif_SUITE.erl",236}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_min_true},2}.
  {label,75}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {test,is_boolean,
          {f,74},
          [{tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{0,3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}}]}.
    {test,is_boolean,
          {f,74},
          [{tr,{x,1},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{0,3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}}]}.
    {test,is_eq_exact,{f,76},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,76},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,76}.
    {line,[{location,"bif_SUITE.erl",237}]}.
    {badmatch,{atom,false}}.


{function, bool_max_false, 2, 78}.
  {label,77}.
    {line,[{location,"bif_SUITE.erl",239}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_max_false},2}.
  {label,78}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {test,is_boolean,
          {f,77},
          [{tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{0,3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}}]}.
    {test,is_boolean,
          {f,77},
          [{tr,{x,1},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{0,3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}}]}.
    {test,is_eq_exact,{f,79},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,80},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
  {label,79}.
    {line,[{location,"bif_SUITE.erl",240}]}.
    {badmatch,{atom,true}}.
  {label,80}.
    {move,{atom,false},{x,0}}.
    return.


{function, bool_max_true, 2, 82}.
  {label,81}.
    {line,[{location,"bif_SUITE.erl",242}]}.
    {func_info,{atom,bif_SUITE},{atom,bool_max_true},2}.
  {label,82}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {test,is_boolean,
          {f,81},
          [{tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{0,3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}}]}.
    {test,is_boolean,
          {f,81},
          [{tr,{x,1},
               {t_union,{t_atom,[false,true]},
                        {t_cons,{t_integer,{1,118}},nil},
                        {t_integer,{0,3}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,8,false}}}]}.
    {test,is_eq_exact,{f,83},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,84},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
  {label,83}.
    {move,{atom,true},{x,0}}.
    return.
  {label,84}.
    {line,[{location,"bif_SUITE.erl",243}]}.
    {badmatch,{atom,false}}.


{function, id, 1, 86}.
  {label,85}.
    {line,[{location,"bif_SUITE.erl",249}]}.
    {func_info,{atom,bif_SUITE},{atom,id},1}.
  {label,86}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     {t_cons,{t_integer,{1,118}},nil},
                     {t_integer,{0,3}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,8,false}}}]}}.
    return.


{function, module_info, 0, 88}.
  {label,87}.
    {line,[]}.
    {func_info,{atom,bif_SUITE},{atom,module_info},0}.
  {label,88}.
    {move,{atom,bif_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 90}.
  {label,89}.
    {line,[]}.
    {func_info,{atom,bif_SUITE},{atom,module_info},1}.
  {label,90}.
    {move,{x,0},{x,1}}.
    {move,{atom,bif_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-trunc_and_friends/1-lc$^0/1-0-', 1, 92}.
  {label,91}.
    {line,[{location,"bif_SUITE.erl",102}]}.
    {func_info,{atom,bif_SUITE},{atom,'-trunc_and_friends/1-lc$^0/1-0-'},1}.
  {label,92}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,93},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bif_SUITE.erl",100}]}.
    {call_ext,1,{extfunc,erl_syntax,function_name,1}}.
    {test_heap,9,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,application},
                       {literal,{attr,101,[],none}},
                       {x,0}]}}.
    {line,[{location,"bif_SUITE.erl",101}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"bif_SUITE.erl",102}]}.
    {call,1,{f,92}}. % '-trunc_and_friends/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,93}.
    return.
