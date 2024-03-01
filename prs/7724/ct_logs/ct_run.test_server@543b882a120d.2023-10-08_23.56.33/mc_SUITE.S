{module, mc_SUITE}.  %% version = 0

{exports, [{all,0},
           {bad_generators,1},
           {basic,1},
           {duplicate_keys,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {mixed,1},
           {module_info,0},
           {module_info,1},
           {shadow,1},
           {suite,0}]}.

{attributes, []}.

{labels, 403}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"mc_SUITE.erl",32}]}.
    {func_info,{atom,mc_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"mc_SUITE.erl",34}]}.
    {func_info,{atom,mc_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"mc_SUITE.erl",37}]}.
    {func_info,{atom,mc_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"mc_SUITE.erl",38}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[basic,duplicate_keys,mixed,shadow,
                                 bad_generators]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"mc_SUITE.erl",45}]}.
    {func_info,{atom,mc_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,mc_SUITE},{x,0}}.
    {line,[{location,"mc_SUITE.erl",46}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"mc_SUITE.erl",49}]}.
    {func_info,{atom,mc_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"mc_SUITE.erl",52}]}.
    {func_info,{atom,mc_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"mc_SUITE.erl",55}]}.
    {func_info,{atom,mc_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, basic, 1, 16}.
  {label,15}.
    {line,[{location,"mc_SUITE.erl",58}]}.
    {func_info,{atom,mc_SUITE},{atom,basic},1}.
  {label,16}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",59}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",60}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",61}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",62}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"mc_SUITE.erl",63}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"mc_SUITE.erl",64}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,17},{x,0}}.
    {line,[{location,"mc_SUITE.erl",66}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,18},{x,0}}.
    {line,[{location,"mc_SUITE.erl",67}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,19},{x,0}}.
    {line,[{location,"mc_SUITE.erl",68}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,30},{x,0}}.
    {line,[{location,"mc_SUITE.erl",70}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,31},{x,0}}.
    {line,[{location,"mc_SUITE.erl",71}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"mc_SUITE.erl",72}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,33},{x,0}}.
    {line,[{location,"mc_SUITE.erl",73}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,34},{x,0}}.
    {line,[{location,"mc_SUITE.erl",74}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,63},{x,0}}.
    {line,[{location,"mc_SUITE.erl",76}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"mc_SUITE.erl",77}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,65},{x,0}}.
    {line,[{location,"mc_SUITE.erl",78}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,77},{x,0}}.
    {line,[{location,"mc_SUITE.erl",80}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,127},{x,0}}.
    {line,[{location,"mc_SUITE.erl",81}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,128},{x,0}}.
    {line,[{location,"mc_SUITE.erl",82}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,255},{x,0}}.
    {line,[{location,"mc_SUITE.erl",83}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,333},{x,0}}.
    {line,[{location,"mc_SUITE.erl",84}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,444},{x,0}}.
    {line,[{location,"mc_SUITE.erl",85}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7777},{x,0}}.
    {line,[{location,"mc_SUITE.erl",86}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,8765},{x,0}}.
    {line,[{location,"mc_SUITE.erl",87}]}.
    {call,1,{f,40}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{a => [b]}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",90}]}.
    {call,1,{f,114}}. % id/1
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,17},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,17}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,400}}. % '-basic/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{literal,#{42 => whatever}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",91}]}.
    {call,1,{f,114}}. % id/1
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,18},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,18}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,396}}. % '-basic/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{location,"mc_SUITE.erl",95}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,19},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,19}.
    {call,1,{f,391}}. % '-basic/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,0},{t_list,{t_atom,any},nil}},{literal,[c,d]}]}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{location,"mc_SUITE.erl",96}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,20},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,20}.
    {call,1,{f,386}}. % '-basic/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,0},{t_list,any,nil}},{literal,[{a,b,c},[1,2,3]]}]}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{location,"mc_SUITE.erl",97}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,21},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,21}.
    {call,1,{f,381}}. % '-basic/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,{f,36},[{tr,{x,0},{t_list,any,nil}},{literal,[1]}]}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{location,"mc_SUITE.erl",98}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,22},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,22}.
    {call,1,{f,376}}. % '-basic/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,35},
          [{tr,{x,0},{t_list,any,nil}},{literal,[c,{b,42}]}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",101}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,23},[{x,0}]}.
    {move,{literal,{bad_generator,#{}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,23}.
    {call,1,{f,371}}. % '-basic/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_nil,{f,34},[{tr,{x,0},{t_list,{t_integer,{0,0}},nil}}]}.
    {move,{literal,#{x => y}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",102}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,24},[{x,0}]}.
    {move,{literal,{bad_generator,#{x => y}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,24}.
    {call,1,{f,366}}. % '-basic/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_nil,{f,33},[{tr,{x,0},{t_list,{t_integer,{0,0}},nil}}]}.
    {move,{literal,#{a => b}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",103}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,25},[{x,0}]}.
    {move,{literal,{bad_generator,#{a => b}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,25}.
    {call,1,{f,361}}. % '-basic/1-lc$^8/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_eq_exact,
          {f,32},
          [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{literal,[0]}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",105}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,26},[{x,0}]}.
    {move,{literal,{bad_generator,#{}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,26}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,356}}. % '-basic/1-lbc$^9/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,{f,31},[{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{literal,#{x => y}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",106}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,27},[{x,0}]}.
    {move,{literal,{bad_generator,#{x => y}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,27}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,351}}. % '-basic/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,{f,30},[{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{literal,#{a => b}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",107}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,28},[{x,0}]}.
    {move,{literal,{bad_generator,#{a => b}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,28}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,346}}. % '-basic/1-lbc$^11/2-11-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,29},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<0>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,29}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{location,"mc_SUITE.erl",106}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{location,"mc_SUITE.erl",105}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{location,"mc_SUITE.erl",103}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{location,"mc_SUITE.erl",102}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{location,"mc_SUITE.erl",101}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{location,"mc_SUITE.erl",98}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{location,"mc_SUITE.erl",97}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{location,"mc_SUITE.erl",96}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{location,"mc_SUITE.erl",95}]}.
    {badmatch,{x,0}}.


{function, mc_double, 1, 40}.
  {label,39}.
    {line,[{location,"mc_SUITE.erl",111}]}.
    {func_info,{atom,mc_SUITE},{atom,mc_double},1}.
  {label,40}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,8765}}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {move,{x,0},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",112}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"mc_SUITE.erl",113}]}.
    {call,1,{f,342}}. % '-mc_double/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{1 => {t_atom,[key]}}}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",115}]}.
    {call,1,{f,114}}. % id/1
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,41},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,41}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,338}}. % '-mc_double/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{2 => {t_number,any}}},
                                  nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {swap,{y,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",116}]}.
    {call,1,{f,334}}. % '-mc_double/1-lc$^2/1-2-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[key]},2 => {t_number,any}}},
                           2 => {t_number,any}}},
                     nil}}]}}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {test,is_eq_exact,
          {f,48},
          [{tr,{x,0},
               {t_map,{t_tuple,2,true,
                               #{1 => {t_atom,[key]},2 => {t_number,any}}},
                      {t_number,any}}},
           {tr,{y,2},{t_map,any,{t_number,any}}}]}.
    {move,{y,3},{x,1}}.
    {move,{integer,2},{x,2}}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",118}]}.
    {call_ext,3,{extfunc,lists,seq,3}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",119}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,42},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,42}.
    {call,1,{f,329}}. % '-mc_double/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,any},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,47},[{tr,{x,0},{t_list,{t_integer,any},nil}},{y,3}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",122}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,43},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,43}.
    {call,1,{f,324}}. % '-mc_double/1-lc$^4/1-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_integer,any},2 => nil}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",124}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,44},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,44}.
    {call,1,{f,318}}. % '-mc_double/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {test,is_eq_exact,
          {f,46},
          [{tr,{x,0},{t_map,any,nil}},{tr,{y,2},{t_map,{t_integer,any},nil}}]}.
    {move,{y,2},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"mc_SUITE.erl",126}]}.
    {call_ext,1,{extfunc,maps,keys,1}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,45},
          [{tr,{x,0},{t_list,{t_integer,any},nil}},
           {tr,{y,1},{t_list,{t_integer,any},nil}}]}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",129}]}.
    {call,2,{f,50}}. % test_iterator/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"mc_SUITE.erl",130}]}.
    {gc_bif,map_size,
            {f,0},
            0,
            [{tr,{y,0},{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},any}}],
            {x,0}}.
    {gc_bif,'div',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,3}],
            {x,1}}.
    {move,{y,0},{x,0}}.
    {call,2,{f,50}}. % test_iterator/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"mc_SUITE.erl",131}]}.
    {gc_bif,map_size,
            {f,0},
            0,
            [{tr,{y,0},{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},any}}],
            {x,0}}.
    {gc_bif,'div',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,2}],
            {x,1}}.
    {move,{y,0},{x,0}}.
    {call,2,{f,50}}. % test_iterator/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"mc_SUITE.erl",132}]}.
    {gc_bif,map_size,
            {f,0},
            0,
            [{tr,{y,0},{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},any}}],
            {x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,50},1}. % test_iterator/2
  {label,45}.
    {line,[{location,"mc_SUITE.erl",126}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{location,"mc_SUITE.erl",124}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{location,"mc_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{location,"mc_SUITE.erl",116}]}.
    {badmatch,{x,0}}.


{function, test_iterator, 2, 50}.
  {label,49}.
    {line,[{location,"mc_SUITE.erl",136}]}.
    {func_info,{atom,mc_SUITE},{atom,test_iterator},2}.
  {label,50}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},
                                 any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"mc_SUITE.erl",137}]}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"mc_SUITE.erl",138}]}.
    {call,3,{f,54}}. % grab/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_list,{t_tuple,2,true,#{}},nil}}}}]}}.
    {get_tuple_element,{x,0},0,{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",139}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,51},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,51}.
    {move,{y,1},{x,1}}.
    {trim,2,1}.
    {call,2,{f,314}}. % '-test_iterator/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[{location,"mc_SUITE.erl",140}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {test,is_eq_exact,
          {f,52},
          [{tr,{x,0},{t_map,any,any}},
           {tr,{y,0},{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},any}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,52}.
    {badmatch,{x,0}}.


{function, grab, 3, 54}.
  {label,53}.
    {line,[{location,"mc_SUITE.erl",143}]}.
    {func_info,{atom,mc_SUITE},{atom,grab},3}.
  {label,54}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',288230376151711743}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,55},
          [{tr,{x,0},{t_integer,{'-inf',288230376151711743}}},{integer,0}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.
  {label,55}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",146}]}.
    {call_ext,1,{extfunc,maps,next,1}}.
    {test,is_tuple,{f,56},[{x,0}]}.
    {test,test_arity,{f,57},[{x,0},3]}.
    {line,[{location,"mc_SUITE.erl",150}]}.
    {gc_bif,'-',
            {f,0},
            1,
            [{tr,{y,2},{t_integer,{'-inf',288230376151711743}}},{integer,1}],
            {x,1}}.
    {test_heap,5,2}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {put_tuple2,{x,2},{list,[{x,2},{x,3}]}}.
    {put_list,{x,2},{y,0},{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {swap,{x,0},{x,1}}.
    {call_last,3,{f,54},3}. % grab/3
  {label,56}.
    {test,is_eq_exact,{f,57},[{x,0},{atom,none}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,0},{y,1}]}}.
    {deallocate,3}.
    return.
  {label,57}.
    {line,[{location,"mc_SUITE.erl",146}]}.
    {case_end,{x,0}}.


{function, duplicate_keys, 1, 59}.
  {label,58}.
    {line,[{location,"mc_SUITE.erl",153}]}.
    {func_info,{atom,mc_SUITE},{atom,duplicate_keys},1}.
  {label,59}.
    {allocate,0,0}.
    {move,{literal,[{a,x},{b,x}]},{x,0}}.
    {line,[{location,"mc_SUITE.erl",154}]}.
    {call,1,{f,311}}. % '-duplicate_keys/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,#{1 => {t_atom,[x]},2 => {t_atom,[a,b]}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,61},
                      {tr,{x,0},{t_map,{t_atom,[x]},{t_atom,[a,b]}}},
                      {list,[{atom,x},{x,1}]}}.
    {test,is_eq_exact,{f,61},[{tr,{x,1},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,[a,b]},{x,0}}.
    {line,[{location,"mc_SUITE.erl",157}]}.
    {call,1,{f,305}}. % '-duplicate_keys/1-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,60},
                      {tr,{x,0},{t_map,{t_atom,[a,b]},{t_integer,{0,255}}}},
                      {list,[{atom,b},{x,2},{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,60},[{tr,{x,1},{t_integer,{0,255}}},{integer,4}]}.
    {test,is_eq_exact,{f,60},[{tr,{x,2},{t_integer,{0,255}}},{integer,4}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,60}.
    {line,[{location,"mc_SUITE.erl",156}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"mc_SUITE.erl",154}]}.
    {badmatch,{x,0}}.


{function, mixed, 1, 63}.
  {label,62}.
    {line,[{location,"mc_SUITE.erl",161}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed},1}.
  {label,63}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,#{1 => 10,2 => 5,3 => 88,4 => 99,5 => 36}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",162}]}.
    {call,1,{f,114}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",163}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,64},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,64}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,301}}. % '-mixed/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {line,[{location,"mc_SUITE.erl",164}]}.
    {call,1,{f,298}}. % '-mixed/1-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{0,255}},
                           2 => {t_integer,{0,16777215}}}},
                     nil}}]}}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {test,is_eq_exact,
          {f,65},
          [{tr,{x,0},{t_map,{t_integer,{0,255}},{t_integer,{0,16777215}}}},
           {y,1}]}.
    {move,{integer,122},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,97},{x,0}}.
    {line,[{location,"mc_SUITE.erl",166}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,294}}. % '-mixed/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,64},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",167}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",169}]}.
    {call,2,{f,67}}. % mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",170}]}.
    {call,2,{f,73}}. % mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {line,[{location,"mc_SUITE.erl",171}]}.
    {call,2,{f,83}}. % mixed_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"mc_SUITE.erl",173}]}.
    {call,1,{f,90}}. % sum_of_triangular_numbers/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,10},{x,0}}.
    {call_last,1,{f,90},0}. % sum_of_triangular_numbers/1
  {label,65}.
    {line,[{location,"mc_SUITE.erl",164}]}.
    {badmatch,{x,0}}.


{function, mixed_1, 2, 67}.
  {label,66}.
    {line,[{location,"mc_SUITE.erl",178}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed_1},2}.
  {label,67}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",179}]}.
    {call,1,{f,290}}. % '-mixed_1/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",180}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,68},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,68}.
    {call,1,{f,285}}. % '-mixed_1/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"mc_SUITE.erl",181}]}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,71},[{tr,{x,0},{t_list,any,nil}},{y,2}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",182}]}.
    {call,2,{f,276}}. % '-mixed_1/2-lc$^2/1-2-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {move,{y,3},{x,2}}.
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",183}]}.
    {call,2,{f,267}}. % '-mixed_1/2-lc$^4/1-4-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,70},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,1},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}}]}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"mc_SUITE.erl",184}]}.
    {call,2,{f,261}}. % '-mixed_1/2-lc$^6/1-6-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,69},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,69}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{location,"mc_SUITE.erl",183}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{location,"mc_SUITE.erl",181}]}.
    {badmatch,{x,0}}.


{function, mixed_2, 2, 73}.
  {label,72}.
    {line,[{location,"mc_SUITE.erl",188}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed_2},2}.
  {label,73}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",189}]}.
    {call,1,{f,257}}. % '-mixed_2/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"mc_SUITE.erl",190}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,74},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,74}.
    {call,1,{f,252}}. % '-mixed_2/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",191}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,75},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,75}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,247}}. % '-mixed_2/2-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",192}]}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,81},[{tr,{x,0},{t_list,any,nil}},{y,3}]}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",194}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,76},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,76}.
    {move,{y,4},{x,1}}.
    {call,2,{f,239}}. % '-mixed_2/2-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {move,{x,0},{y,3}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"mc_SUITE.erl",195}]}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{x,0},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,77},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,77}.
    {move,{y,4},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,1,4}.
    {call,2,{f,231}}. % '-mixed_2/2-lc$^5/1-5-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,80},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,2},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}}]}.
    {move,{y,3},{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,3}.
    {line,[{location,"mc_SUITE.erl",196}]}.
    {call,2,{f,225}}. % '-mixed_2/2-lc$^7/1-7-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,any},2 => {t_integer,{0,65535}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,79},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,any},
                                  2 => {t_integer,{0,65535}}}},
                       nil}},
           {tr,{y,1},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}}]}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"mc_SUITE.erl",197}]}.
    {call,2,{f,219}}. % '-mixed_2/2-lc$^9/1-9-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,78},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,any},
                                  2 => {t_integer,{0,65535}}}},
                       nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,78}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"mc_SUITE.erl",196}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"mc_SUITE.erl",195}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"mc_SUITE.erl",192}]}.
    {badmatch,{x,0}}.


{function, mixed_3, 2, 83}.
  {label,82}.
    {line,[{location,"mc_SUITE.erl",201}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed_3},2}.
  {label,83}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{atom,trim},{x,2}}.
    {line,[{location,"mc_SUITE.erl",202}]}.
    {call_ext,3,{extfunc,lists,zip,3}}.
    {call,1,{f,214}}. % '-mixed_3/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"mc_SUITE.erl",203}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,2}}.
    {test,is_nil,{f,84},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,84}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,2,{f,210}}. % '-mixed_3/2-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {move,{x,0},{y,2}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",204}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,85},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,85}.
    {call,1,{f,206}}. % '-mixed_3/2-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call_ext,1,{extfunc,lists,unzip,1}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",206}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,86},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,86}.
    {move,{y,3},{x,1}}.
    {init_yregs,{list,[{y,3}]}}.
    {call,2,{f,197}}. % '-mixed_3/2-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {get_tuple_element,{y,0},0,{y,3}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,2}}.
    {move,{x,0},{y,2}}.
    {trim,1,3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",207}]}.
    {call,2,{f,191}}. % '-mixed_3/2-lc$^5/1-5-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{2 => {t_integer,{0,65535}}}},
                     nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,88},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,#{2 => {t_integer,{0,65535}}}},nil}},
           {tr,{y,1},{t_list,{t_tuple,2,true,#{}},nil}}]}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"mc_SUITE.erl",208}]}.
    {call,2,{f,185}}. % '-mixed_3/2-lc$^7/1-7-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,87},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{}},nil}},
           {tr,{y,0},
               {t_list,{t_tuple,2,true,#{2 => {t_integer,{0,65535}}}},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,87}.
    {badmatch,{x,0}}.
  {label,88}.
    {line,[{location,"mc_SUITE.erl",207}]}.
    {badmatch,{x,0}}.


{function, sum_of_triangular_numbers, 1, 90}.
  {label,89}.
    {line,[{location,"mc_SUITE.erl",212}]}.
    {func_info,{atom,mc_SUITE},{atom,sum_of_triangular_numbers},1}.
  {label,90}.
    {'%',{var_info,{x,0},[{type,{t_integer,{7,10}}}]}}.
    {line,[{location,"mc_SUITE.erl",213}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_integer,{7,10}}},{integer,1}],{x,1}}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{7,10}}},{tr,{x,1},{t_integer,{8,11}}}],
            {x,1}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,0},{t_integer,{7,10}}},{integer,2}],{x,2}}.
    {gc_bif,'*',
            {f,0},
            3,
            [{tr,{x,1},{t_integer,{56,110}}},{tr,{x,2},{t_integer,{9,12}}}],
            {x,1}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {gc_bif,'div',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{504,1320}}},{integer,6}],
            {y,2}}.
    {move,{x,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",214}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,177}}. % '-sum_of_triangular_numbers/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",215}]}.
    {call,1,{f,168}}. % '-sum_of_triangular_numbers/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",216}]}.
    {call,1,{f,159}}. % '-sum_of_triangular_numbers/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {call_ext,1,{extfunc,lists,flatten,1}}.
    {test,is_eq_exact,
          {f,93},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,2}.
    {line,[{location,"mc_SUITE.erl",217}]}.
    {call,1,{f,150}}. % '-sum_of_triangular_numbers/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_eq_exact,{f,92},[{x,0},{tr,{y,1},{t_integer,{84,220}}}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"mc_SUITE.erl",218}]}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_eq_exact,{f,91},[{x,0},{tr,{y,0},{t_integer,{84,220}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,91}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{location,"mc_SUITE.erl",217}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{location,"mc_SUITE.erl",216}]}.
    {badmatch,{x,0}}.


{function, shadow, 1, 95}.
  {label,94}.
    {line,[{location,"mc_SUITE.erl",221}]}.
    {func_info,{atom,mc_SUITE},{atom,shadow},1}.
  {label,95}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,nomatch},{x,0}}.
    {line,[{location,"mc_SUITE.erl",223}]}.
    {call,1,{f,114}}. % id/1
    {move,{integer,9},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"mc_SUITE.erl",224}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,146}}. % '-shadow/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"mc_SUITE.erl",225}]}.
    {call,1,{f,114}}. % id/1
    {test,is_map,{f,98},[{x,0}]}.
    {get_map_elements,{f,98},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,9},
                             {x,3},
                             {integer,8},
                             {x,2},
                             {integer,7},
                             {x,1}]}}.
    {test,is_eq_exact,{f,98},[{x,1},{integer,8}]}.
    {test,is_eq_exact,{f,98},[{x,2},{integer,9}]}.
    {test,is_eq_exact,{f,98},[{x,3},{integer,10}]}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"mc_SUITE.erl",226}]}.
    {call,1,{f,114}}. % id/1
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,96},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,96}.
    {trim,1,0}.
    {call,1,{f,141}}. % '-shadow/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',10}},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,97},
          [{tr,{x,0},{t_list,{t_number,{'-inf',10}},nil}},{literal,"\b\t"}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,97}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{location,"mc_SUITE.erl",225}]}.
    {badmatch,{x,0}}.


{function, bad_generators, 1, 100}.
  {label,99}.
    {line,[{location,"mc_SUITE.erl",230}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generators},1}.
  {label,100}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {'catch',{y,5},{f,101}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"mc_SUITE.erl",239}]}.
    {call,1,{f,116}}. % bad_generator/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call,1,{f,114}}. % id/1
  {label,101}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,112},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,112},[{x,1}]}.
    {test,test_arity,{f,112},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,112},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,112},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,112},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,112},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,4}]}]}.
    {'catch',{y,4},{f,102}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\n"},{location,"mc_SUITE.erl",244}]}.
    {call,1,{f,119}}. % bad_generator_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,114}}. % id/1
  {label,102}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,111},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,111},[{x,1}]}.
    {test,test_arity,{f,111},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,111},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,111},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,111},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,111},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,7}]}]}.
    {'catch',{y,3},{f,103}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\b"},{location,"mc_SUITE.erl",249}]}.
    {call,1,{f,122}}. % bad_generator_mc/1
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {call,1,{f,114}}. % id/1
  {label,103}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,110},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,110},[{x,1}]}.
    {test,test_arity,{f,110},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,110},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,110},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,110},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,110},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,10}]}]}.
    {'catch',{y,2},{f,104}}.
    {move,{literal,[65535|#{}]},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",256}]}.
    {call,1,{f,116}}. % bad_generator/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call,1,{f,114}}. % id/1
  {label,104}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,109},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,109},[{x,1}]}.
    {test,test_arity,{f,109},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,109},[{x,2},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,109},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,109},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,109},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,4}]}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,109},[{x,1},{literal,[65535|#{}]}]}.
    {'catch',{y,1},{f,105}}.
    {move,{literal,[65535|#{}]},{x,0}}.
    {line,[{scope,[4]},{location,"mc_SUITE.erl",261}]}.
    {call,1,{f,119}}. % bad_generator_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,114}}. % id/1
  {label,105}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,108},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,108},[{x,1}]}.
    {test,test_arity,{f,108},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,108},[{x,2},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,108},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,108},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,108},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,7}]}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,108},[{x,1},{literal,[65535|#{}]}]}.
    {'catch',{y,0},{f,106}}.
    {move,{literal,[65535|#{}]},{x,0}}.
    {line,[{scope,[2]},{location,"mc_SUITE.erl",266}]}.
    {call,1,{f,122}}. % bad_generator_mc/1
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {call,1,{f,114}}. % id/1
  {label,106}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,107},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,107},[{x,1}]}.
    {test,test_arity,{f,107},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,107},[{x,2},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,107},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,107},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,107},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,10}]}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,107},[{x,1},{literal,[65535|#{}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,107}.
    {line,[{scope,[0]},{location,"mc_SUITE.erl",263}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{scope,[2]},{location,"mc_SUITE.erl",258}]}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{scope,[4]},{location,"mc_SUITE.erl",253}]}.
    {badmatch,{x,0}}.
  {label,110}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",246}]}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{scope,"\b"},{location,"mc_SUITE.erl",241}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{scope,"\n"},{location,"mc_SUITE.erl",236}]}.
    {badmatch,{x,0}}.


{function, id, 1, 114}.
  {label,113}.
    {line,[{location,"mc_SUITE.erl",270}]}.
    {func_info,{atom,mc_SUITE},{atom,id},1}.
  {label,114}.
    return.


{function, bad_generator, 1, 116}.
  {label,115}.
    {line,[{location,"bad_mc.erl",2}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generator},1}.
  {label,116}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_integer,{65535,65535}},{t_map,none,none}},
                     none,none,none}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bad_mc.erl",4}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,117},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,117}.
    {call_last,1,{f,137},1}. % '-bad_generator/1-lc$^0/1-0-'/1


{function, bad_generator_bc, 1, 119}.
  {label,118}.
    {line,[{location,"bad_mc.erl",5}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generator_bc},1}.
  {label,119}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_integer,{65535,65535}},{t_map,none,none}},
                     none,none,none}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bad_mc.erl",7}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,120},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,120}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,133},2}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2


{function, bad_generator_mc, 1, 122}.
  {label,121}.
    {line,[{location,"bad_mc.erl",8}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generator_mc},1}.
  {label,122}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_integer,{65535,65535}},{t_map,none,none}},
                     none,none,none}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bad_mc.erl",10}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,123},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,123}.
    {trim,1,0}.
    {call,1,{f,129}}. % '-bad_generator_mc/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext_last,1,{extfunc,maps,from_list,1},0}.


{function, module_info, 0, 125}.
  {label,124}.
    {line,[]}.
    {func_info,{atom,mc_SUITE},{atom,module_info},0}.
  {label,125}.
    {move,{atom,mc_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 127}.
  {label,126}.
    {line,[]}.
    {func_info,{atom,mc_SUITE},{atom,module_info},1}.
  {label,127}.
    {move,{x,0},{x,1}}.
    {move,{atom,mc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-bad_generator_mc/1-lc$^0/1-0-', 1, 129}.
  {label,128}.
    {line,[{location,"bad_mc.erl",10}]}.
    {func_info,{atom,mc_SUITE},{atom,'-bad_generator_mc/1-lc$^0/1-0-'},1}.
  {label,129}.
    {test,is_tuple,{f,130},[{x,0}]}.
    {test,test_arity,{f,131},[{x,0},3]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,129}}. % '-bad_generator_mc/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,2},{x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,130}.
    {test,is_eq_exact,{f,131},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,131}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,129},0}. % '-bad_generator_mc/1-lc$^0/1-0-'/1


{function, '-bad_generator_bc/1-lbc$^0/2-0-', 2, 133}.
  {label,132}.
    {line,[{location,"bad_mc.erl",6}]}.
    {func_info,{atom,mc_SUITE},{atom,'-bad_generator_bc/1-lbc$^0/2-0-'},2}.
  {label,133}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_tuple,{f,134},[{x,0}]}.
    {test,test_arity,{f,135},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {bs_create_bin,{f,0},
                   0,4,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,8},
                          {atom,integer},
                          3,1,nil,
                          {x,3},
                          {integer,24}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,2,{f,133}}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2
  {label,134}.
    {test,is_eq_exact,{f,135},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,135}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bad_mc.erl",7}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,133},1}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2


{function, '-bad_generator/1-lc$^0/1-0-', 1, 137}.
  {label,136}.
    {line,[{location,"bad_mc.erl",4}]}.
    {func_info,{atom,mc_SUITE},{atom,'-bad_generator/1-lc$^0/1-0-'},1}.
  {label,137}.
    {test,is_tuple,{f,138},[{x,0}]}.
    {test,test_arity,{f,139},[{x,0},3]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,137}}. % '-bad_generator/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,138}.
    {test,is_eq_exact,{f,139},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,139}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,137},0}. % '-bad_generator/1-lc$^0/1-0-'/1


{function, '-shadow/1-lc$^1/1-1-', 1, 141}.
  {label,140}.
    {line,[{location,"mc_SUITE.erl",226}]}.
    {func_info,{atom,mc_SUITE},{atom,'-shadow/1-lc$^1/1-1-'},1}.
  {label,141}.
    {test,is_tuple,{f,143},[{x,0}]}.
    {test,test_arity,{f,144},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_lt,{f,142},[{x,1},{integer,10}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,141}}. % '-shadow/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',10}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,142}.
    {call_only,1,{f,141}}. % '-shadow/1-lc$^1/1-1-'/1
  {label,143}.
    {test,is_eq_exact,{f,144},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,144}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,141},0}. % '-shadow/1-lc$^1/1-1-'/1


{function, '-shadow/1-lc$^0/1-0-', 1, 146}.
  {label,145}.
    {line,[{location,"mc_SUITE.erl",224}]}.
    {func_info,{atom,mc_SUITE},{atom,'-shadow/1-lc$^0/1-0-'},1}.
  {label,146}.
    {test,is_nonempty_list,{f,147},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,146}}. % '-shadow/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,147}.
    {test,is_nil,{f,148},[{x,0}]}.
    return.
  {label,148}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sum_of_triangular_numbers/1-lc$^6/1-6-', 1, 150}.
  {label,149}.
    {line,[{location,"mc_SUITE.erl",217}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^6/1-6-'},
               1}.
  {label,150}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_nonempty_list,{f,152},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,151},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,151}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,154}}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,150}}. % '-sum_of_triangular_numbers/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,152}.
    return.


{function, '-sum_of_triangular_numbers/1-lc$^7/1-7-', 1, 154}.
  {label,153}.
    {line,[{location,"mc_SUITE.erl",217}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^7/1-7-'},
               1}.
  {label,154}.
    {test,is_tuple,{f,156},[{x,0}]}.
    {test,test_arity,{f,157},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,155},[{x,2},{x,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,154}}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,155}.
    {call_only,1,{f,154}}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1
  {label,156}.
    {test,is_eq_exact,{f,157},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,157}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,154},0}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1


{function, '-sum_of_triangular_numbers/1-lc$^4/1-4-', 1, 159}.
  {label,158}.
    {line,[{location,"mc_SUITE.erl",216}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^4/1-4-'},
               1}.
  {label,159}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_nonempty_list,{f,161},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,160},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,160}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,163}}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,159}}. % '-sum_of_triangular_numbers/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,161}.
    return.


{function, '-sum_of_triangular_numbers/1-lc$^5/1-5-', 1, 163}.
  {label,162}.
    {line,[{location,"mc_SUITE.erl",216}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^5/1-5-'},
               1}.
  {label,163}.
    {test,is_tuple,{f,165},[{x,0}]}.
    {test,test_arity,{f,166},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,164},[{x,2},{x,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,163}}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,164}.
    {call_only,1,{f,163}}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1
  {label,165}.
    {test,is_eq_exact,{f,166},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,166}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,163},0}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1


{function, '-sum_of_triangular_numbers/1-lc$^2/1-2-', 1, 168}.
  {label,167}.
    {line,[{location,"mc_SUITE.erl",215}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^2/1-2-'},
               1}.
  {label,168}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_nonempty_list,{f,170},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,169},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,169}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,172},2}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2
  {label,170}.
    return.


{function, '-sum_of_triangular_numbers/1-lc$^3/1-3-', 2, 172}.
  {label,171}.
    {line,[{location,"mc_SUITE.erl",215}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^3/1-3-'},
               2}.
  {label,172}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_tuple,{f,174},[{x,0}]}.
    {test,test_arity,{f,175},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,173},[{x,3},{x,2}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,172}}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,173}.
    {call_only,2,{f,172}}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2
  {label,174}.
    {test,is_eq_exact,{f,175},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,168}}. % '-sum_of_triangular_numbers/1-lc$^2/1-2-'/1
  {label,175}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,172},1}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2


{function, '-sum_of_triangular_numbers/1-lc$^0/1-0-', 1, 177}.
  {label,176}.
    {line,[{location,"mc_SUITE.erl",214}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^0/1-0-'},
               1}.
  {label,177}.
    {test,is_nonempty_list,{f,178},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,181}}. % '-sum_of_triangular_numbers/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",214}]}.
    {call,1,{f,177}}. % '-sum_of_triangular_numbers/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,178}.
    {test,is_nil,{f,179},[{x,0}]}.
    return.
  {label,179}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sum_of_triangular_numbers/1-lc$^1/1-1-', 1, 181}.
  {label,180}.
    {line,[{location,"mc_SUITE.erl",214}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^1/1-1-'},
               1}.
  {label,181}.
    {test,is_nonempty_list,{f,182},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,181}}. % '-sum_of_triangular_numbers/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,182}.
    {test,is_nil,{f,183},[{x,0}]}.
    return.
  {label,183}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_3/2-lc$^7/1-7-', 2, 185}.
  {label,184}.
    {line,[{location,"mc_SUITE.erl",208}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^7/1-7-'},2}.
  {label,185}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,186},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,188}}. % '-mixed_3/2-lc$^8/1-8-'/4
  {label,186}.
    return.


{function, '-mixed_3/2-lc$^8/1-8-', 4, 188}.
  {label,187}.
    {line,[{location,"mc_SUITE.erl",208}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^8/1-8-'},4}.
  {label,188}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,189},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,188}}. % '-mixed_3/2-lc$^8/1-8-'/4
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,189}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,185}}. % '-mixed_3/2-lc$^7/1-7-'/2


{function, '-mixed_3/2-lc$^5/1-5-', 2, 191}.
  {label,190}.
    {line,[{location,"mc_SUITE.erl",207}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^5/1-5-'},2}.
  {label,191}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,192},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,194}}. % '-mixed_3/2-lc$^6/1-6-'/4
  {label,192}.
    return.


{function, '-mixed_3/2-lc$^6/1-6-', 4, 194}.
  {label,193}.
    {line,[{location,"mc_SUITE.erl",207}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^6/1-6-'},4}.
  {label,194}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_match,{f,195},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,4,{literal,[]},16,1,{x,4}}]}}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,4,{f,194}}. % '-mixed_3/2-lc$^6/1-6-'/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{2 => {t_integer,{0,65535}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,195}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,191}}. % '-mixed_3/2-lc$^5/1-5-'/2


{function, '-mixed_3/2-lc$^3/1-3-', 2, 197}.
  {label,196}.
    {line,[{location,"mc_SUITE.erl",206}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^3/1-3-'},2}.
  {label,197}.
    {'%',{var_info,{x,1},[{type,{t_map,any,any}}]}}.
    {test,is_tuple,{f,199},[{x,0}]}.
    {test,test_arity,{f,200},[{x,0},3]}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,198},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,198}.
    {get_tuple_element,{y,1},0,{x,2}}.
    {get_tuple_element,{y,1},2,{x,1}}.
    {move,{y,0},{x,3}}.
    {call_last,4,{f,202},2}. % '-mixed_3/2-lc$^4/1-4-'/4
  {label,199}.
    {test,is_eq_exact,{f,200},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,200}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,197},1}. % '-mixed_3/2-lc$^3/1-3-'/2


{function, '-mixed_3/2-lc$^4/1-4-', 4, 202}.
  {label,201}.
    {line,[{location,"mc_SUITE.erl",206}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^4/1-4-'},4}.
  {label,202}.
    {'%',{var_info,{x,3},[{type,{t_map,any,any}}]}}.
    {test,is_tuple,{f,203},[{x,0}]}.
    {test,test_arity,{f,204},[{x,0},3]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,4,{f,202}}. % '-mixed_3/2-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,203}.
    {test,is_eq_exact,{f,204},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,197}}. % '-mixed_3/2-lc$^3/1-3-'/2
  {label,204}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,202},3}. % '-mixed_3/2-lc$^4/1-4-'/4


{function, '-mixed_3/2-lc$^2/1-2-', 1, 206}.
  {label,205}.
    {line,[{location,"mc_SUITE.erl",204}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^2/1-2-'},1}.
  {label,206}.
    {test,is_tuple,{f,207},[{x,0}]}.
    {test,test_arity,{f,208},[{x,0},3]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,206}}. % '-mixed_3/2-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,207}.
    {test,is_eq_exact,{f,208},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,208}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,206},0}. % '-mixed_3/2-lc$^2/1-2-'/1


{function, '-mixed_3/2-lbc$^1/2-1-', 2, 210}.
  {label,209}.
    {line,[{location,"mc_SUITE.erl",203}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lbc$^1/2-1-'},2}.
  {label,210}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_tuple,{f,211},[{x,0}]}.
    {test,test_arity,{f,212},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,16}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,2,{f,210}}. % '-mixed_3/2-lbc$^1/2-1-'/2
  {label,211}.
    {test,is_eq_exact,{f,212},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,212}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,210},1}. % '-mixed_3/2-lbc$^1/2-1-'/2


{function, '-mixed_3/2-lc$^0/1-0-', 1, 214}.
  {label,213}.
    {line,[{location,"mc_SUITE.erl",202}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^0/1-0-'},1}.
  {label,214}.
    {test,is_nonempty_list,{f,216},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,215},[{x,1}]}.
    {test,test_arity,{f,215},[{x,1},2]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,214}}. % '-mixed_3/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,215}.
    {call_only,1,{f,214}}. % '-mixed_3/2-lc$^0/1-0-'/1
  {label,216}.
    {test,is_nil,{f,217},[{x,0}]}.
    return.
  {label,217}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_2/2-lc$^9/1-9-', 2, 219}.
  {label,218}.
    {line,[{location,"mc_SUITE.erl",197}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^9/1-9-'},2}.
  {label,219}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,220},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,222}}. % '-mixed_2/2-lc$^10/1-10-'/4
  {label,220}.
    return.


{function, '-mixed_2/2-lc$^10/1-10-', 4, 222}.
  {label,221}.
    {line,[{location,"mc_SUITE.erl",197}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^10/1-10-'},4}.
  {label,222}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,223},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,222}}. % '-mixed_2/2-lc$^10/1-10-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,223}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,219}}. % '-mixed_2/2-lc$^9/1-9-'/2


{function, '-mixed_2/2-lc$^7/1-7-', 2, 225}.
  {label,224}.
    {line,[{location,"mc_SUITE.erl",196}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^7/1-7-'},2}.
  {label,225}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,226},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[]},16,1,{x,2}},
                         {get_tail,3,1,{x,3}}]}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,228}}. % '-mixed_2/2-lc$^8/1-8-'/4
  {label,226}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed_2/2-lc$^8/1-8-', 4, 228}.
  {label,227}.
    {line,[{location,"mc_SUITE.erl",196}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^8/1-8-'},4}.
  {label,228}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,65535}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,16,false}}]}}.
    {test,is_nonempty_list,{f,229},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,228}}. % '-mixed_2/2-lc$^8/1-8-'/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,any},2 => {t_integer,{0,65535}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,229}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,225}}. % '-mixed_2/2-lc$^7/1-7-'/2


{function, '-mixed_2/2-lc$^5/1-5-', 2, 231}.
  {label,230}.
    {line,[{location,"mc_SUITE.erl",195}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^5/1-5-'},2}.
  {label,231}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_tuple,{f,233},[{x,0}]}.
    {test,test_arity,{f,234},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_nil,{f,232},[{x,2}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,236}}. % '-mixed_2/2-lc$^6/1-6-'/4
  {label,232}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,231}}. % '-mixed_2/2-lc$^5/1-5-'/2
  {label,233}.
    {test,is_eq_exact,{f,234},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,234}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,231},1}. % '-mixed_2/2-lc$^5/1-5-'/2


{function, '-mixed_2/2-lc$^6/1-6-', 4, 236}.
  {label,235}.
    {line,[{location,"mc_SUITE.erl",195}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^6/1-6-'},4}.
  {label,236}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,237},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,236}}. % '-mixed_2/2-lc$^6/1-6-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,237}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,231}}. % '-mixed_2/2-lc$^5/1-5-'/2


{function, '-mixed_2/2-lc$^3/1-3-', 2, 239}.
  {label,238}.
    {line,[{location,"mc_SUITE.erl",194}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^3/1-3-'},2}.
  {label,239}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_tuple,{f,241},[{x,0}]}.
    {test,test_arity,{f,242},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_nil,{f,240},[{x,2}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,244}}. % '-mixed_2/2-lc$^4/1-4-'/4
  {label,240}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,239}}. % '-mixed_2/2-lc$^3/1-3-'/2
  {label,241}.
    {test,is_eq_exact,{f,242},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,242}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,239},1}. % '-mixed_2/2-lc$^3/1-3-'/2


{function, '-mixed_2/2-lc$^4/1-4-', 4, 244}.
  {label,243}.
    {line,[{location,"mc_SUITE.erl",194}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^4/1-4-'},4}.
  {label,244}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,245},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,244}}. % '-mixed_2/2-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,245}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,239}}. % '-mixed_2/2-lc$^3/1-3-'/2


{function, '-mixed_2/2-lbc$^2/2-2-', 2, 247}.
  {label,246}.
    {line,[{location,"mc_SUITE.erl",191}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lbc$^2/2-2-'},2}.
  {label,247}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_tuple,{f,249},[{x,0}]}.
    {test,test_arity,{f,250},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_nil,{f,248},[{x,2}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {bs_create_bin,{f,0},
                   0,4,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,0},
                          {integer,16}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,247}}. % '-mixed_2/2-lbc$^2/2-2-'/2
  {label,248}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,247}}. % '-mixed_2/2-lbc$^2/2-2-'/2
  {label,249}.
    {test,is_eq_exact,{f,250},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,250}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,247},1}. % '-mixed_2/2-lbc$^2/2-2-'/2


{function, '-mixed_2/2-lc$^1/1-1-', 1, 252}.
  {label,251}.
    {line,[{location,"mc_SUITE.erl",190}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^1/1-1-'},1}.
  {label,252}.
    {test,is_tuple,{f,254},[{x,0}]}.
    {test,test_arity,{f,255},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,253},[{x,2}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,252}}. % '-mixed_2/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,253}.
    {call_only,1,{f,252}}. % '-mixed_2/2-lc$^1/1-1-'/1
  {label,254}.
    {test,is_eq_exact,{f,255},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,255}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,252},0}. % '-mixed_2/2-lc$^1/1-1-'/1


{function, '-mixed_2/2-lc$^0/1-0-', 1, 257}.
  {label,256}.
    {line,[{location,"mc_SUITE.erl",189}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^0/1-0-'},1}.
  {label,257}.
    {test,is_nonempty_list,{f,258},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,257}}. % '-mixed_2/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,258}.
    {test,is_nil,{f,259},[{x,0}]}.
    return.
  {label,259}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_1/2-lc$^6/1-6-', 2, 261}.
  {label,260}.
    {line,[{location,"mc_SUITE.erl",184}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^6/1-6-'},2}.
  {label,261}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,262},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,264}}. % '-mixed_1/2-lc$^7/1-7-'/4
  {label,262}.
    return.


{function, '-mixed_1/2-lc$^7/1-7-', 4, 264}.
  {label,263}.
    {line,[{location,"mc_SUITE.erl",184}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^7/1-7-'},4}.
  {label,264}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,any}}]}}.
    {test,is_nonempty_list,{f,265},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,264}}. % '-mixed_1/2-lc$^7/1-7-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,265}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,261}}. % '-mixed_1/2-lc$^6/1-6-'/2


{function, '-mixed_1/2-lc$^4/1-4-', 2, 267}.
  {label,266}.
    {line,[{location,"mc_SUITE.erl",183}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^4/1-4-'},2}.
  {label,267}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,any,nil}}]}}.
    {test,is_nonempty_list,{f,269},[{x,0}]}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,268},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,268}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,3}}.
    {call_last,4,{f,271},4}. % '-mixed_1/2-lc$^5/1-5-'/4
  {label,269}.
    return.


{function, '-mixed_1/2-lc$^5/1-5-', 4, 271}.
  {label,270}.
    {line,[{location,"mc_SUITE.erl",183}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^5/1-5-'},4}.
  {label,271}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_map,any,nil}}]}}.
    {test,is_tuple,{f,273},[{x,0}]}.
    {test,test_arity,{f,274},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,272},[{x,5}]}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,4,{f,271}}. % '-mixed_1/2-lc$^5/1-5-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,272}.
    {call_only,4,{f,271}}. % '-mixed_1/2-lc$^5/1-5-'/4
  {label,273}.
    {test,is_eq_exact,{f,274},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,267}}. % '-mixed_1/2-lc$^4/1-4-'/2
  {label,274}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,271},3}. % '-mixed_1/2-lc$^5/1-5-'/4


{function, '-mixed_1/2-lc$^2/1-2-', 2, 276}.
  {label,275}.
    {line,[{location,"mc_SUITE.erl",182}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^2/1-2-'},2}.
  {label,276}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,any,nil}}]}}.
    {test,is_nonempty_list,{f,278},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,277},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,277}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,3}}.
    {call_last,4,{f,280},3}. % '-mixed_1/2-lc$^3/1-3-'/4
  {label,278}.
    return.


{function, '-mixed_1/2-lc$^3/1-3-', 4, 280}.
  {label,279}.
    {line,[{location,"mc_SUITE.erl",182}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^3/1-3-'},4}.
  {label,280}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_map,any,nil}}]}}.
    {test,is_tuple,{f,282},[{x,0}]}.
    {test,test_arity,{f,283},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,281},[{x,5}]}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,4,{f,280}}. % '-mixed_1/2-lc$^3/1-3-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,281}.
    {call_only,4,{f,280}}. % '-mixed_1/2-lc$^3/1-3-'/4
  {label,282}.
    {test,is_eq_exact,{f,283},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,276}}. % '-mixed_1/2-lc$^2/1-2-'/2
  {label,283}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,280},3}. % '-mixed_1/2-lc$^3/1-3-'/4


{function, '-mixed_1/2-lc$^1/1-1-', 1, 285}.
  {label,284}.
    {line,[{location,"mc_SUITE.erl",180}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^1/1-1-'},1}.
  {label,285}.
    {test,is_tuple,{f,287},[{x,0}]}.
    {test,test_arity,{f,288},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,286},[{x,2}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,285}}. % '-mixed_1/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,286}.
    {call_only,1,{f,285}}. % '-mixed_1/2-lc$^1/1-1-'/1
  {label,287}.
    {test,is_eq_exact,{f,288},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,288}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,285},0}. % '-mixed_1/2-lc$^1/1-1-'/1


{function, '-mixed_1/2-lc$^0/1-0-', 1, 290}.
  {label,289}.
    {line,[{location,"mc_SUITE.erl",179}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^0/1-0-'},1}.
  {label,290}.
    {test,is_nonempty_list,{f,291},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,290}}. % '-mixed_1/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,291}.
    {test,is_nil,{f,292},[{x,0}]}.
    return.
  {label,292}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^2/1-2-', 1, 294}.
  {label,293}.
    {line,[{location,"mc_SUITE.erl",166}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed/1-lc$^2/1-2-'},1}.
  {label,294}.
    {test,is_nonempty_list,{f,295},[{x,0}]}.
    {allocate_heap,1,2,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {call_ext,1,{extfunc,erlang,list_to_atom,1}}.
    {swap,{y,0},{x,0}}.
    {call,1,{f,294}}. % '-mixed/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,295}.
    {test,is_nil,{f,296},[{x,0}]}.
    return.
  {label,296}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^1/1-1-', 1, 298}.
  {label,297}.
    {line,[{location,"mc_SUITE.erl",164}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed/1-lc$^1/1-1-'},1}.
  {label,298}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,299},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {integer,2,{literal,[]},24,1,{x,2}}]}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,298}}. % '-mixed/1-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{0,255}},
                           2 => {t_integer,{0,16777215}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,299}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lbc$^0/2-0-', 2, 301}.
  {label,300}.
    {line,[{location,"mc_SUITE.erl",163}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,301}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_tuple,{f,302},[{x,0}]}.
    {test,test_arity,{f,303},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {bs_create_bin,{f,0},
                   0,4,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,8},
                          {atom,integer},
                          3,1,nil,
                          {x,3},
                          {integer,24}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,2,{f,301}}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,302}.
    {test,is_eq_exact,{f,303},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,303}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,301},1}. % '-mixed/1-lbc$^0/2-0-'/2


{function, '-duplicate_keys/1-lc$^1/1-1-', 1, 305}.
  {label,304}.
    {line,[{location,"mc_SUITE.erl",157}]}.
    {func_info,{atom,mc_SUITE},{atom,'-duplicate_keys/1-lc$^1/1-1-'},1}.
  {label,305}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {test,is_nonempty_list,{f,306},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {call_only,3,{f,308}}. % '-duplicate_keys/1-lc$^2/1-2-'/3
  {label,306}.
    return.


{function, '-duplicate_keys/1-lc$^2/1-2-', 3, 308}.
  {label,307}.
    {line,[{location,"mc_SUITE.erl",158}]}.
    {func_info,{atom,mc_SUITE},{atom,'-duplicate_keys/1-lc$^2/1-2-'},3}.
  {label,308}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[a,b]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,309},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,3,{f,308}}. % '-duplicate_keys/1-lc$^2/1-2-'/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,309}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,305}}. % '-duplicate_keys/1-lc$^1/1-1-'/1


{function, '-duplicate_keys/1-lc$^0/1-0-', 1, 311}.
  {label,310}.
    {line,[{location,"mc_SUITE.erl",154}]}.
    {func_info,{atom,mc_SUITE},{atom,'-duplicate_keys/1-lc$^0/1-0-'},1}.
  {label,311}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[x]}}}},
                          {{2,{t_atom,[b]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b]},2 => {t_atom,[x]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,312},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,311}}. % '-duplicate_keys/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_atom,[x]},2 => {t_atom,[a,b]}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,x},{x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,312}.
    return.


{function, '-test_iterator/2-lc$^0/1-0-', 2, 314}.
  {label,313}.
    {line,[{location,"mc_SUITE.erl",139}]}.
    {func_info,{atom,mc_SUITE},{atom,'-test_iterator/2-lc$^0/1-0-'},2}.
  {label,314}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_tuple,{f,315},[{x,0}]}.
    {test,test_arity,{f,316},[{x,0},3]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,314}}. % '-test_iterator/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,315}.
    {test,is_eq_exact,{f,316},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,316}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,314},1}. % '-test_iterator/2-lc$^0/1-0-'/2


{function, '-mc_double/1-lc$^5/1-5-', 1, 318}.
  {label,317}.
    {line,[{location,"mc_SUITE.erl",124}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^5/1-5-'},1}.
  {label,318}.
    {test,is_tuple,{f,321},[{x,0}]}.
    {test,test_arity,{f,322},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,320},[{x,1},2,{atom,key}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,320},[{x,0},{x,1}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",125}]}.
    {call,1,{f,114}}. % id/1
    {gc_bif,'rem',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,319},[{tr,{x,0},{t_integer,{-1,1}}},{integer,0}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,318},2}. % '-mc_double/1-lc$^5/1-5-'/1
  {label,319}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"mc_SUITE.erl",124}]}.
    {call,1,{f,318}}. % '-mc_double/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,320}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,318}}. % '-mc_double/1-lc$^5/1-5-'/1
  {label,321}.
    {test,is_eq_exact,{f,322},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,322}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,318},0}. % '-mc_double/1-lc$^5/1-5-'/1


{function, '-mc_double/1-lc$^4/1-4-', 1, 324}.
  {label,323}.
    {line,[{location,"mc_SUITE.erl",122}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^4/1-4-'},1}.
  {label,324}.
    {test,is_tuple,{f,326},[{x,0}]}.
    {test,test_arity,{f,327},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,325},[{x,1},2,{atom,key}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,325},[{x,0},{x,1}]}.
    {gc_bif,'rem',{f,325},3,[{x,1},{integer,2}],{x,0}}.
    {test,is_ne_exact,{f,325},[{tr,{x,0},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,324}}. % '-mc_double/1-lc$^4/1-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_integer,any},2 => nil}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,325}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,324}}. % '-mc_double/1-lc$^4/1-4-'/1
  {label,326}.
    {test,is_eq_exact,{f,327},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,327}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,324},0}. % '-mc_double/1-lc$^4/1-4-'/1


{function, '-mc_double/1-lc$^3/1-3-', 1, 329}.
  {label,328}.
    {line,[{location,"mc_SUITE.erl",119}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^3/1-3-'},1}.
  {label,329}.
    {test,is_tuple,{f,331},[{x,0}]}.
    {test,test_arity,{f,332},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,330},[{x,1},2,{atom,key}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,330},[{x,0},{x,1}]}.
    {gc_bif,'rem',{f,330},3,[{x,1},{integer,2}],{x,0}}.
    {test,is_ne_exact,{f,330},[{tr,{x,0},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,329}}. % '-mc_double/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,330}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,329}}. % '-mc_double/1-lc$^3/1-3-'/1
  {label,331}.
    {test,is_eq_exact,{f,332},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,332}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,329},0}. % '-mc_double/1-lc$^3/1-3-'/1


{function, '-mc_double/1-lc$^2/1-2-', 1, 334}.
  {label,333}.
    {line,[{location,"mc_SUITE.erl",116}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^2/1-2-'},1}.
  {label,334}.
    {test,is_nonempty_list,{f,335},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,334}}. % '-mc_double/1-lc$^2/1-2-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[key]},2 => {t_number,any}}},
                           2 => {t_number,any}}},
                     nil}}]}}.
    {test_heap,8,1}.
    {put_tuple2,{x,1},{list,[{atom,key},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,335}.
    {test,is_nil,{f,336},[{x,0}]}.
    return.
  {label,336}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mc_double/1-lc$^1/1-1-', 1, 338}.
  {label,337}.
    {line,[{location,"mc_SUITE.erl",115}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^1/1-1-'},1}.
  {label,338}.
    {test,is_tuple,{f,339},[{x,0}]}.
    {test,test_arity,{f,340},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {gc_bif,'*',{f,0},3,[{x,2},{integer,2}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,338}}. % '-mc_double/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{2 => {t_number,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,339}.
    {test,is_eq_exact,{f,340},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,340}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,338},0}. % '-mc_double/1-lc$^1/1-1-'/1


{function, '-mc_double/1-lc$^0/1-0-', 1, 342}.
  {label,341}.
    {line,[{location,"mc_SUITE.erl",113}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^0/1-0-'},1}.
  {label,342}.
    {test,is_nonempty_list,{f,343},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,342}}. % '-mc_double/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{1 => {t_atom,[key]}}}}},
                     nil}}]}}.
    {test_heap,8,1}.
    {put_tuple2,{x,1},{list,[{atom,key},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,343}.
    {test,is_nil,{f,344},[{x,0}]}.
    return.
  {label,344}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lbc$^11/2-11-', 2, 346}.
  {label,345}.
    {line,[{location,"mc_SUITE.erl",107}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lbc$^11/2-11-'},2}.
  {label,346}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_tuple,{f,348},[{x,0}]}.
    {test,test_arity,{f,349},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,347},[{x,2},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,347},[{x,0},{atom,b}]}.
    {bs_create_bin,{f,0},
                   0,4,8,
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
    {move,{x,3},{x,0}}.
    {call_only,2,{f,346}}. % '-basic/1-lbc$^11/2-11-'/2
  {label,347}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,346}}. % '-basic/1-lbc$^11/2-11-'/2
  {label,348}.
    {test,is_eq_exact,{f,349},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,349}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,346},1}. % '-basic/1-lbc$^11/2-11-'/2


{function, '-basic/1-lbc$^10/2-10-', 2, 351}.
  {label,350}.
    {line,[{location,"mc_SUITE.erl",106}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lbc$^10/2-10-'},2}.
  {label,351}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_tuple,{f,353},[{x,0}]}.
    {test,test_arity,{f,354},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,352},[{x,2},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,352},[{x,0},{atom,b}]}.
    {bs_create_bin,{f,0},
                   0,4,8,
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
    {move,{x,3},{x,0}}.
    {call_only,2,{f,351}}. % '-basic/1-lbc$^10/2-10-'/2
  {label,352}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,351}}. % '-basic/1-lbc$^10/2-10-'/2
  {label,353}.
    {test,is_eq_exact,{f,354},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,354}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,351},1}. % '-basic/1-lbc$^10/2-10-'/2


{function, '-basic/1-lbc$^9/2-9-', 2, 356}.
  {label,355}.
    {line,[{location,"mc_SUITE.erl",105}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lbc$^9/2-9-'},2}.
  {label,356}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_tuple,{f,358},[{x,0}]}.
    {test,test_arity,{f,359},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,357},[{x,2},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,357},[{x,0},{atom,b}]}.
    {bs_create_bin,{f,0},
                   0,4,8,
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
    {move,{x,3},{x,0}}.
    {call_only,2,{f,356}}. % '-basic/1-lbc$^9/2-9-'/2
  {label,357}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,356}}. % '-basic/1-lbc$^9/2-9-'/2
  {label,358}.
    {test,is_eq_exact,{f,359},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,359}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,356},1}. % '-basic/1-lbc$^9/2-9-'/2


{function, '-basic/1-lc$^8/1-8-', 1, 361}.
  {label,360}.
    {line,[{location,"mc_SUITE.erl",103}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^8/1-8-'},1}.
  {label,361}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,364},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,362},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,362},[{x,0},{atom,b}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,1,{f,361}}. % '-basic/1-lc$^8/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,362}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,361}}. % '-basic/1-lc$^8/1-8-'/1
  {label,363}.
    {test,is_eq_exact,{f,364},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,364}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,361},0}. % '-basic/1-lc$^8/1-8-'/1


{function, '-basic/1-lc$^7/1-7-', 1, 366}.
  {label,365}.
    {line,[{location,"mc_SUITE.erl",102}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^7/1-7-'},1}.
  {label,366}.
    {test,is_tuple,{f,368},[{x,0}]}.
    {test,test_arity,{f,369},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,367},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,367},[{x,0},{atom,b}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,1,{f,366}}. % '-basic/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,367}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,366}}. % '-basic/1-lc$^7/1-7-'/1
  {label,368}.
    {test,is_eq_exact,{f,369},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,369}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,366},0}. % '-basic/1-lc$^7/1-7-'/1


{function, '-basic/1-lc$^6/1-6-', 1, 371}.
  {label,370}.
    {line,[{location,"mc_SUITE.erl",101}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^6/1-6-'},1}.
  {label,371}.
    {test,is_tuple,{f,373},[{x,0}]}.
    {test,test_arity,{f,374},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,372},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,372},[{x,0},{atom,b}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,1,{f,371}}. % '-basic/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,372}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,371}}. % '-basic/1-lc$^6/1-6-'/1
  {label,373}.
    {test,is_eq_exact,{f,374},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,374}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,371},0}. % '-basic/1-lc$^6/1-6-'/1


{function, '-basic/1-lc$^5/1-5-', 1, 376}.
  {label,375}.
    {line,[{location,"mc_SUITE.erl",98}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^5/1-5-'},1}.
  {label,376}.
    {test,is_tuple,{f,378},[{x,0}]}.
    {test,test_arity,{f,379},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nonempty_list,{f,377},[{x,2}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,376}}. % '-basic/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,377}.
    {call_only,1,{f,376}}. % '-basic/1-lc$^5/1-5-'/1
  {label,378}.
    {test,is_eq_exact,{f,379},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,379}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,376},0}. % '-basic/1-lc$^5/1-5-'/1


{function, '-basic/1-lc$^4/1-4-', 1, 381}.
  {label,380}.
    {line,[{location,"mc_SUITE.erl",97}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^4/1-4-'},1}.
  {label,381}.
    {test,is_tuple,{f,383},[{x,0}]}.
    {test,test_arity,{f,384},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tuple,{f,382},[{x,1}]}.
    {test,test_arity,{f,382},[{x,1},2]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,382},[{x,0}]}.
    {allocate,1,3}.
    {get_hd,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,381}}. % '-basic/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,382}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,381}}. % '-basic/1-lc$^4/1-4-'/1
  {label,383}.
    {test,is_eq_exact,{f,384},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,384}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,381},0}. % '-basic/1-lc$^4/1-4-'/1


{function, '-basic/1-lc$^3/1-3-', 1, 386}.
  {label,385}.
    {line,[{location,"mc_SUITE.erl",96}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^3/1-3-'},1}.
  {label,386}.
    {test,is_tuple,{f,388},[{x,0}]}.
    {test,test_arity,{f,389},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tuple,{f,387},[{x,1}]}.
    {test,test_arity,{f,387},[{x,1},2]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,386}}. % '-basic/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,387}.
    {call_only,1,{f,386}}. % '-basic/1-lc$^3/1-3-'/1
  {label,388}.
    {test,is_eq_exact,{f,389},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,389}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,386},0}. % '-basic/1-lc$^3/1-3-'/1


{function, '-basic/1-lc$^2/1-2-', 1, 391}.
  {label,390}.
    {line,[{location,"mc_SUITE.erl",95}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^2/1-2-'},1}.
  {label,391}.
    {test,is_tuple,{f,393},[{x,0}]}.
    {test,test_arity,{f,394},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_atom,{f,392},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,391}}. % '-basic/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,392}.
    {call_only,1,{f,391}}. % '-basic/1-lc$^2/1-2-'/1
  {label,393}.
    {test,is_eq_exact,{f,394},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,394}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,391},0}. % '-basic/1-lc$^2/1-2-'/1


{function, '-basic/1-lc$^1/1-1-', 1, 396}.
  {label,395}.
    {line,[{location,"mc_SUITE.erl",91}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^1/1-1-'},1}.
  {label,396}.
    {test,is_tuple,{f,397},[{x,0}]}.
    {test,test_arity,{f,398},[{x,0},3]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,1,{f,396}}. % '-basic/1-lc$^1/1-1-'/1
  {label,397}.
    {test,is_eq_exact,{f,398},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,398}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,396},0}. % '-basic/1-lc$^1/1-1-'/1


{function, '-basic/1-lc$^0/1-0-', 1, 400}.
  {label,399}.
    {line,[{location,"mc_SUITE.erl",90}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^0/1-0-'},1}.
  {label,400}.
    {test,is_tuple,{f,401},[{x,0}]}.
    {test,test_arity,{f,402},[{x,0},3]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,1,{f,400}}. % '-basic/1-lc$^0/1-0-'/1
  {label,401}.
    {test,is_eq_exact,{f,402},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,402}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,400},0}. % '-basic/1-lc$^0/1-0-'/1
