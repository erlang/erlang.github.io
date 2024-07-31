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

{labels, 428}.


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
    {line,[{location,"mc_SUITE.erl",60}]}.
    {func_info,{atom,mc_SUITE},{atom,basic},1}.
  {label,16}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",61}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",62}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",63}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",64}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"mc_SUITE.erl",65}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"mc_SUITE.erl",66}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,17},{x,0}}.
    {line,[{location,"mc_SUITE.erl",68}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,18},{x,0}}.
    {line,[{location,"mc_SUITE.erl",69}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,19},{x,0}}.
    {line,[{location,"mc_SUITE.erl",70}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,30},{x,0}}.
    {line,[{location,"mc_SUITE.erl",72}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,31},{x,0}}.
    {line,[{location,"mc_SUITE.erl",73}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"mc_SUITE.erl",74}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,33},{x,0}}.
    {line,[{location,"mc_SUITE.erl",75}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,34},{x,0}}.
    {line,[{location,"mc_SUITE.erl",76}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,63},{x,0}}.
    {line,[{location,"mc_SUITE.erl",78}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"mc_SUITE.erl",79}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,65},{x,0}}.
    {line,[{location,"mc_SUITE.erl",80}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,77},{x,0}}.
    {line,[{location,"mc_SUITE.erl",82}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,127},{x,0}}.
    {line,[{location,"mc_SUITE.erl",83}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,128},{x,0}}.
    {line,[{location,"mc_SUITE.erl",84}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,255},{x,0}}.
    {line,[{location,"mc_SUITE.erl",85}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,333},{x,0}}.
    {line,[{location,"mc_SUITE.erl",86}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,444},{x,0}}.
    {line,[{location,"mc_SUITE.erl",87}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7777},{x,0}}.
    {line,[{location,"mc_SUITE.erl",88}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,8765},{x,0}}.
    {line,[{location,"mc_SUITE.erl",89}]}.
    {call,1,{f,44}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{a => [b]}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",92}]}.
    {call,1,{f,118}}. % id/1
    {move,{x,0},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,17},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,17}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,425}}. % '-basic/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{literal,#{42 => whatever}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",93}]}.
    {call,1,{f,118}}. % id/1
    {move,{x,0},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,18},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,18}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,421}}. % '-basic/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{location,"mc_SUITE.erl",97}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,19},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,19}.
    {call,1,{f,416}}. % '-basic/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,42},
          [{tr,{x,0},{t_list,{t_atom,any},nil}},{literal,[c,d]}]}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{location,"mc_SUITE.erl",98}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,20},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,20}.
    {call,1,{f,411}}. % '-basic/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,41},
          [{tr,{x,0},{t_list,any,nil}},{literal,[{a,b,c},[1,2,3]]}]}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{location,"mc_SUITE.erl",99}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,21},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,21}.
    {call,1,{f,406}}. % '-basic/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,{f,40},[{tr,{x,0},{t_list,any,nil}},{literal,[1]}]}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{location,"mc_SUITE.erl",100}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,22},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,22}.
    {call,1,{f,401}}. % '-basic/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,39},
          [{tr,{x,0},{t_list,any,nil}},{literal,[c,{b,42}]}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",103}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,23},[{x,0}]}.
    {move,{literal,{bad_generator,#{}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,23}.
    {call,1,{f,396}}. % '-basic/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_nil,{f,38},[{tr,{x,0},{t_list,{t_integer,{0,0}},nil}}]}.
    {move,{literal,#{x => y}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",104}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,24},[{x,0}]}.
    {move,{literal,{bad_generator,#{x => y}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,24}.
    {call,1,{f,391}}. % '-basic/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_nil,{f,37},[{tr,{x,0},{t_list,{t_integer,{0,0}},nil}}]}.
    {move,{literal,#{a => b}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",105}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,25},[{x,0}]}.
    {move,{literal,{bad_generator,#{a => b}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,25}.
    {call,1,{f,386}}. % '-basic/1-lc$^8/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_eq_exact,
          {f,36},
          [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{literal,[0]}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",107}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,1}}.
    {test,is_nil,{f,26},[{x,0}]}.
    {move,{literal,{bad_generator,#{}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,26}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,381}}. % '-basic/1-lbc$^9/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,{f,35},[{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{literal,#{x => y}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",108}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,1}}.
    {test,is_nil,{f,27},[{x,0}]}.
    {move,{literal,{bad_generator,#{x => y}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,27}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,376}}. % '-basic/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,{f,34},[{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{literal,#{a => b}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",109}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,1}}.
    {test,is_nil,{f,28},[{x,0}]}.
    {move,{literal,{bad_generator,#{a => b}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,28}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,371}}. % '-basic/1-lbc$^11/2-11-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,33},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<0>>}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"mc_SUITE.erl",112}]}.
    {call,1,{f,368}}. % '-basic/1-lc$^12/1-12-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_tuple,3,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,4}},
                                     3 => {t_integer,{1,'+inf'}}}},
                           2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {line,[{location,"mc_SUITE.erl",112}]}.
    {call,1,{f,118}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",115}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {call,1,{f,364}}. % '-basic/1-lc$^13/1-13-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[{location,"mc_SUITE.erl",114}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",118}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,29},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,29}.
    {call,1,{f,359}}. % '-basic/1-lc$^14/1-14-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,3,true,#{1 => {t_atom,[foo]}}}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {test,is_eq_exact,
          {f,32},
          [{tr,{x,0},{t_map,{t_tuple,3,true,#{1 => {t_atom,[foo]}}},any}},
           {tr,{y,0},{t_map,any,any}}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",121}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {call,1,{f,355}}. % '-basic/1-lc$^15/1-15-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",123}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,30},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,30}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {call,1,{f,350}}. % '-basic/1-lc$^16/1-16-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,31},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,31}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{location,"mc_SUITE.erl",117}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{location,"mc_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{location,"mc_SUITE.erl",108}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{location,"mc_SUITE.erl",107}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{location,"mc_SUITE.erl",105}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{location,"mc_SUITE.erl",104}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{location,"mc_SUITE.erl",103}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{location,"mc_SUITE.erl",100}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{location,"mc_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{location,"mc_SUITE.erl",98}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{location,"mc_SUITE.erl",97}]}.
    {badmatch,{x,0}}.


{function, mc_double, 1, 44}.
  {label,43}.
    {line,[{location,"mc_SUITE.erl",127}]}.
    {func_info,{atom,mc_SUITE},{atom,mc_double},1}.
  {label,44}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,8765}}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {move,{x,0},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",128}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"mc_SUITE.erl",129}]}.
    {call,1,{f,346}}. % '-mc_double/1-lc$^0/1-0-'/1
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
    {line,[{location,"mc_SUITE.erl",131}]}.
    {call,1,{f,118}}. % id/1
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,45},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,45}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,342}}. % '-mc_double/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{2 => {t_number,any}}},
                                  nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {swap,{y,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",132}]}.
    {call,1,{f,338}}. % '-mc_double/1-lc$^2/1-2-'/1
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
          {f,52},
          [{tr,{x,0},
               {t_map,{t_tuple,2,true,
                               #{1 => {t_atom,[key]},2 => {t_number,any}}},
                      {t_number,any}}},
           {tr,{y,2},{t_map,any,{t_number,any}}}]}.
    {move,{y,3},{x,1}}.
    {move,{integer,2},{x,2}}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",134}]}.
    {call_ext,3,{extfunc,lists,seq,3}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",135}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,46},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,46}.
    {call,1,{f,333}}. % '-mc_double/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,any},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,51},[{tr,{x,0},{t_list,{t_integer,any},nil}},{y,3}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",138}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,47},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,47}.
    {call,1,{f,328}}. % '-mc_double/1-lc$^4/1-4-'/1
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
    {line,[{location,"mc_SUITE.erl",140}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,48},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,48}.
    {call,1,{f,322}}. % '-mc_double/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {test,is_eq_exact,
          {f,50},
          [{tr,{x,0},{t_map,any,nil}},{tr,{y,2},{t_map,{t_integer,any},nil}}]}.
    {move,{y,2},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"mc_SUITE.erl",142}]}.
    {call_ext,1,{extfunc,maps,keys,1}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,49},
          [{tr,{x,0},{t_list,{t_integer,any},nil}},
           {tr,{y,1},{t_list,{t_integer,any},nil}}]}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",145}]}.
    {call,2,{f,54}}. % test_iterator/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"mc_SUITE.erl",146}]}.
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
    {call,2,{f,54}}. % test_iterator/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"mc_SUITE.erl",147}]}.
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
    {call,2,{f,54}}. % test_iterator/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"mc_SUITE.erl",148}]}.
    {gc_bif,map_size,
            {f,0},
            0,
            [{tr,{y,0},{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},any}}],
            {x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,54},1}. % test_iterator/2
  {label,49}.
    {line,[{location,"mc_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{location,"mc_SUITE.erl",140}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{location,"mc_SUITE.erl",135}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{location,"mc_SUITE.erl",132}]}.
    {badmatch,{x,0}}.


{function, test_iterator, 2, 54}.
  {label,53}.
    {line,[{location,"mc_SUITE.erl",152}]}.
    {func_info,{atom,mc_SUITE},{atom,test_iterator},2}.
  {label,54}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},
                                 any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"mc_SUITE.erl",153}]}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"mc_SUITE.erl",154}]}.
    {call,3,{f,58}}. % grab/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_list,{t_tuple,2,true,#{}},nil}}}}]}}.
    {get_tuple_element,{x,0},0,{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",155}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,55},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,55}.
    {move,{y,1},{x,1}}.
    {trim,2,1}.
    {call,2,{f,318}}. % '-test_iterator/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[{location,"mc_SUITE.erl",156}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {test,is_eq_exact,
          {f,56},
          [{tr,{x,0},{t_map,any,any}},
           {tr,{y,0},{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},any}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,56}.
    {badmatch,{x,0}}.


{function, grab, 3, 58}.
  {label,57}.
    {line,[{location,"mc_SUITE.erl",159}]}.
    {func_info,{atom,mc_SUITE},{atom,grab},3}.
  {label,58}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',288230376151711743}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,59},
          [{tr,{x,0},{t_integer,{'-inf',288230376151711743}}},{integer,0}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.
  {label,59}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",162}]}.
    {call_ext,1,{extfunc,maps,next,1}}.
    {test,is_tuple,{f,60},[{x,0}]}.
    {test,test_arity,{f,61},[{x,0},3]}.
    {line,[{location,"mc_SUITE.erl",166}]}.
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
    {call_last,3,{f,58},3}. % grab/3
  {label,60}.
    {test,is_eq_exact,{f,61},[{x,0},{atom,none}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,0},{y,1}]}}.
    {deallocate,3}.
    return.
  {label,61}.
    {line,[{location,"mc_SUITE.erl",162}]}.
    {case_end,{x,0}}.


{function, duplicate_keys, 1, 63}.
  {label,62}.
    {line,[{location,"mc_SUITE.erl",169}]}.
    {func_info,{atom,mc_SUITE},{atom,duplicate_keys},1}.
  {label,63}.
    {allocate,0,0}.
    {move,{literal,[{a,x},{b,x}]},{x,0}}.
    {line,[{location,"mc_SUITE.erl",170}]}.
    {call,1,{f,315}}. % '-duplicate_keys/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,#{1 => {t_atom,[x]},2 => {t_atom,[a,b]}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,65},
                      {tr,{x,0},{t_map,{t_atom,[x]},{t_atom,[a,b]}}},
                      {list,[{atom,x},{x,1}]}}.
    {test,is_eq_exact,{f,65},[{tr,{x,1},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,[a,b]},{x,0}}.
    {line,[{location,"mc_SUITE.erl",173}]}.
    {call,1,{f,309}}. % '-duplicate_keys/1-lc$^1/1-1-'/1
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
    {get_map_elements,{f,64},
                      {tr,{x,0},{t_map,{t_atom,[a,b]},{t_integer,{0,255}}}},
                      {list,[{atom,b},{x,2},{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,64},[{tr,{x,1},{t_integer,{0,255}}},{integer,4}]}.
    {test,is_eq_exact,{f,64},[{tr,{x,2},{t_integer,{0,255}}},{integer,4}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,64}.
    {line,[{location,"mc_SUITE.erl",172}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{location,"mc_SUITE.erl",170}]}.
    {badmatch,{x,0}}.


{function, mixed, 1, 67}.
  {label,66}.
    {line,[{location,"mc_SUITE.erl",177}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed},1}.
  {label,67}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,#{1 => 10,2 => 5,3 => 88,4 => 99,5 => 36}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",178}]}.
    {call,1,{f,118}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",179}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,68},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,68}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,305}}. % '-mixed/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {line,[{location,"mc_SUITE.erl",180}]}.
    {call,1,{f,302}}. % '-mixed/1-lc$^1/1-1-'/1
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
          {f,69},
          [{tr,{x,0},{t_map,{t_integer,{0,255}},{t_integer,{0,16777215}}}},
           {y,1}]}.
    {move,{integer,122},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,97},{x,0}}.
    {line,[{location,"mc_SUITE.erl",182}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,298}}. % '-mixed/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,64},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",183}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",185}]}.
    {call,2,{f,71}}. % mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",186}]}.
    {call,2,{f,77}}. % mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {line,[{location,"mc_SUITE.erl",187}]}.
    {call,2,{f,87}}. % mixed_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"mc_SUITE.erl",189}]}.
    {call,1,{f,94}}. % sum_of_triangular_numbers/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,10},{x,0}}.
    {call_last,1,{f,94},0}. % sum_of_triangular_numbers/1
  {label,69}.
    {line,[{location,"mc_SUITE.erl",180}]}.
    {badmatch,{x,0}}.


{function, mixed_1, 2, 71}.
  {label,70}.
    {line,[{location,"mc_SUITE.erl",194}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed_1},2}.
  {label,71}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",195}]}.
    {call,1,{f,294}}. % '-mixed_1/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",196}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,72},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,72}.
    {call,1,{f,289}}. % '-mixed_1/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"mc_SUITE.erl",197}]}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,75},[{tr,{x,0},{t_list,any,nil}},{y,2}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",198}]}.
    {call,2,{f,280}}. % '-mixed_1/2-lc$^2/1-2-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {move,{y,3},{x,2}}.
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",199}]}.
    {call,2,{f,271}}. % '-mixed_1/2-lc$^4/1-4-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,74},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,1},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}}]}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"mc_SUITE.erl",200}]}.
    {call,2,{f,265}}. % '-mixed_1/2-lc$^6/1-6-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,73},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,73}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"mc_SUITE.erl",199}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{location,"mc_SUITE.erl",197}]}.
    {badmatch,{x,0}}.


{function, mixed_2, 2, 77}.
  {label,76}.
    {line,[{location,"mc_SUITE.erl",204}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed_2},2}.
  {label,77}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",205}]}.
    {call,1,{f,261}}. % '-mixed_2/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"mc_SUITE.erl",206}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,78},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,78}.
    {call,1,{f,256}}. % '-mixed_2/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",207}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,79},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,79}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,251}}. % '-mixed_2/2-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",208}]}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,85},[{tr,{x,0},{t_list,any,nil}},{y,3}]}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",210}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,80},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,80}.
    {move,{y,4},{x,1}}.
    {call,2,{f,243}}. % '-mixed_2/2-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {move,{x,0},{y,3}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"mc_SUITE.erl",211}]}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{x,0},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,81},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,81}.
    {move,{y,4},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,1,4}.
    {call,2,{f,235}}. % '-mixed_2/2-lc$^5/1-5-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,84},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,2},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}}]}.
    {move,{y,3},{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,3}.
    {line,[{location,"mc_SUITE.erl",212}]}.
    {call,2,{f,229}}. % '-mixed_2/2-lc$^7/1-7-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,any},2 => {t_integer,{0,65535}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,83},
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
    {line,[{location,"mc_SUITE.erl",213}]}.
    {call,2,{f,223}}. % '-mixed_2/2-lc$^9/1-9-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,82},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,any},
                                  2 => {t_integer,{0,65535}}}},
                       nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,82}.
    {badmatch,{x,0}}.
  {label,83}.
    {line,[{location,"mc_SUITE.erl",212}]}.
    {badmatch,{x,0}}.
  {label,84}.
    {line,[{location,"mc_SUITE.erl",211}]}.
    {badmatch,{x,0}}.
  {label,85}.
    {line,[{location,"mc_SUITE.erl",208}]}.
    {badmatch,{x,0}}.


{function, mixed_3, 2, 87}.
  {label,86}.
    {line,[{location,"mc_SUITE.erl",217}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed_3},2}.
  {label,87}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{atom,trim},{x,2}}.
    {line,[{location,"mc_SUITE.erl",218}]}.
    {call_ext,3,{extfunc,lists,zip,3}}.
    {call,1,{f,218}}. % '-mixed_3/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"mc_SUITE.erl",219}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,2}}.
    {test,is_nil,{f,88},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,88}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,2,{f,214}}. % '-mixed_3/2-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {move,{x,0},{y,2}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",220}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,89},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,89}.
    {call,1,{f,210}}. % '-mixed_3/2-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call_ext,1,{extfunc,lists,unzip,1}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",222}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,90},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,90}.
    {move,{y,3},{x,1}}.
    {init_yregs,{list,[{y,3}]}}.
    {call,2,{f,201}}. % '-mixed_3/2-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {get_tuple_element,{y,0},0,{y,3}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,2}}.
    {move,{x,0},{y,2}}.
    {trim,1,3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",223}]}.
    {call,2,{f,195}}. % '-mixed_3/2-lc$^5/1-5-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{2 => {t_integer,{0,65535}}}},
                     nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,92},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,#{2 => {t_integer,{0,65535}}}},nil}},
           {tr,{y,1},{t_list,{t_tuple,2,true,#{}},nil}}]}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"mc_SUITE.erl",224}]}.
    {call,2,{f,189}}. % '-mixed_3/2-lc$^7/1-7-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,91},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{}},nil}},
           {tr,{y,0},
               {t_list,{t_tuple,2,true,#{2 => {t_integer,{0,65535}}}},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,91}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{location,"mc_SUITE.erl",223}]}.
    {badmatch,{x,0}}.


{function, sum_of_triangular_numbers, 1, 94}.
  {label,93}.
    {line,[{location,"mc_SUITE.erl",228}]}.
    {func_info,{atom,mc_SUITE},{atom,sum_of_triangular_numbers},1}.
  {label,94}.
    {'%',{var_info,{x,0},[{type,{t_integer,{7,10}}}]}}.
    {line,[{location,"mc_SUITE.erl",229}]}.
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
    {line,[{location,"mc_SUITE.erl",230}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,181}}. % '-sum_of_triangular_numbers/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",231}]}.
    {call,1,{f,172}}. % '-sum_of_triangular_numbers/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",232}]}.
    {call,1,{f,163}}. % '-sum_of_triangular_numbers/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {call_ext,1,{extfunc,lists,flatten,1}}.
    {test,is_eq_exact,
          {f,97},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,2}.
    {line,[{location,"mc_SUITE.erl",233}]}.
    {call,1,{f,154}}. % '-sum_of_triangular_numbers/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_eq_exact,{f,96},[{x,0},{tr,{y,1},{t_integer,{84,220}}}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"mc_SUITE.erl",234}]}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_eq_exact,{f,95},[{x,0},{tr,{y,0},{t_integer,{84,220}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,95}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{location,"mc_SUITE.erl",233}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{location,"mc_SUITE.erl",232}]}.
    {badmatch,{x,0}}.


{function, shadow, 1, 99}.
  {label,98}.
    {line,[{location,"mc_SUITE.erl",237}]}.
    {func_info,{atom,mc_SUITE},{atom,shadow},1}.
  {label,99}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,nomatch},{x,0}}.
    {line,[{location,"mc_SUITE.erl",239}]}.
    {call,1,{f,118}}. % id/1
    {move,{integer,9},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"mc_SUITE.erl",240}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,150}}. % '-shadow/1-lc$^0/1-0-'/1
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
    {line,[{location,"mc_SUITE.erl",241}]}.
    {call,1,{f,118}}. % id/1
    {test,is_map,{f,102},[{x,0}]}.
    {get_map_elements,{f,102},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,9},
                             {x,3},
                             {integer,8},
                             {x,2},
                             {integer,7},
                             {x,1}]}}.
    {test,is_eq_exact,{f,102},[{x,1},{integer,8}]}.
    {test,is_eq_exact,{f,102},[{x,2},{integer,9}]}.
    {test,is_eq_exact,{f,102},[{x,3},{integer,10}]}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"mc_SUITE.erl",242}]}.
    {call,1,{f,118}}. % id/1
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,100},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,100}.
    {trim,1,0}.
    {call,1,{f,145}}. % '-shadow/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',10}},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},{t_list,{t_number,{'-inf',10}},nil}},{literal,"\b\t"}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,101}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{location,"mc_SUITE.erl",241}]}.
    {badmatch,{x,0}}.


{function, bad_generators, 1, 104}.
  {label,103}.
    {line,[{location,"mc_SUITE.erl",246}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generators},1}.
  {label,104}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {'catch',{y,5},{f,105}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"mc_SUITE.erl",255}]}.
    {call,1,{f,120}}. % bad_generator/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call,1,{f,118}}. % id/1
  {label,105}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,116},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,116},[{x,1}]}.
    {test,test_arity,{f,116},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,116},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,116},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,116},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,116},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,4}]}]}.
    {'catch',{y,4},{f,106}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\n"},{location,"mc_SUITE.erl",260}]}.
    {call,1,{f,123}}. % bad_generator_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,118}}. % id/1
  {label,106}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,115},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,115},[{x,1}]}.
    {test,test_arity,{f,115},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,115},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,115},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,115},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,115},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,7}]}]}.
    {'catch',{y,3},{f,107}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\b"},{location,"mc_SUITE.erl",265}]}.
    {call,1,{f,126}}. % bad_generator_mc/1
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {call,1,{f,118}}. % id/1
  {label,107}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,114},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,114},[{x,1}]}.
    {test,test_arity,{f,114},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,114},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,114},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,114},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,114},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,10}]}]}.
    {'catch',{y,2},{f,108}}.
    {move,{literal,[65535|#{}]},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",272}]}.
    {call,1,{f,120}}. % bad_generator/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call,1,{f,118}}. % id/1
  {label,108}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,113},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,113},[{x,1}]}.
    {test,test_arity,{f,113},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,113},[{x,2},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,113},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,113},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,113},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,4}]}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,113},[{x,1},{literal,[65535|#{}]}]}.
    {'catch',{y,1},{f,109}}.
    {move,{literal,[65535|#{}]},{x,0}}.
    {line,[{scope,[4]},{location,"mc_SUITE.erl",277}]}.
    {call,1,{f,123}}. % bad_generator_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,118}}. % id/1
  {label,109}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,112},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,112},[{x,1}]}.
    {test,test_arity,{f,112},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,112},[{x,2},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,112},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,112},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,112},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,7}]}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,112},[{x,1},{literal,[65535|#{}]}]}.
    {'catch',{y,0},{f,110}}.
    {move,{literal,[65535|#{}]},{x,0}}.
    {line,[{scope,[2]},{location,"mc_SUITE.erl",282}]}.
    {call,1,{f,126}}. % bad_generator_mc/1
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {call,1,{f,118}}. % id/1
  {label,110}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,111},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,111},[{x,1}]}.
    {test,test_arity,{f,111},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,111},[{x,2},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,111},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,111},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,111},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,10}]}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,111},[{x,1},{literal,[65535|#{}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,111}.
    {line,[{scope,[0]},{location,"mc_SUITE.erl",279}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{scope,[2]},{location,"mc_SUITE.erl",274}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{scope,[4]},{location,"mc_SUITE.erl",269}]}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",262}]}.
    {badmatch,{x,0}}.
  {label,115}.
    {line,[{scope,"\b"},{location,"mc_SUITE.erl",257}]}.
    {badmatch,{x,0}}.
  {label,116}.
    {line,[{scope,"\n"},{location,"mc_SUITE.erl",252}]}.
    {badmatch,{x,0}}.


{function, id, 1, 118}.
  {label,117}.
    {line,[{location,"mc_SUITE.erl",286}]}.
    {func_info,{atom,mc_SUITE},{atom,id},1}.
  {label,118}.
    return.


{function, bad_generator, 1, 120}.
  {label,119}.
    {line,[{location,"bad_mc.erl",2}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generator},1}.
  {label,120}.
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
    {test,is_nil,{f,121},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,121}.
    {call_last,1,{f,141},1}. % '-bad_generator/1-lc$^0/1-0-'/1


{function, bad_generator_bc, 1, 123}.
  {label,122}.
    {line,[{location,"bad_mc.erl",5}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generator_bc},1}.
  {label,123}.
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
    {test,is_nil,{f,124},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,124}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,137},2}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2


{function, bad_generator_mc, 1, 126}.
  {label,125}.
    {line,[{location,"bad_mc.erl",8}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generator_mc},1}.
  {label,126}.
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
    {test,is_nil,{f,127},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,127}.
    {trim,1,0}.
    {call,1,{f,133}}. % '-bad_generator_mc/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext_last,1,{extfunc,maps,from_list,1},0}.


{function, module_info, 0, 129}.
  {label,128}.
    {line,[]}.
    {func_info,{atom,mc_SUITE},{atom,module_info},0}.
  {label,129}.
    {move,{atom,mc_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 131}.
  {label,130}.
    {line,[]}.
    {func_info,{atom,mc_SUITE},{atom,module_info},1}.
  {label,131}.
    {move,{x,0},{x,1}}.
    {move,{atom,mc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-bad_generator_mc/1-lc$^0/1-0-', 1, 133}.
  {label,132}.
    {line,[{location,"bad_mc.erl",10}]}.
    {func_info,{atom,mc_SUITE},{atom,'-bad_generator_mc/1-lc$^0/1-0-'},1}.
  {label,133}.
    {test,is_tuple,{f,134},[{x,0}]}.
    {test,test_arity,{f,135},[{x,0},3]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,133}}. % '-bad_generator_mc/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,2},{x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,134}.
    {test,is_eq_exact,{f,135},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,135}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,133},0}. % '-bad_generator_mc/1-lc$^0/1-0-'/1


{function, '-bad_generator_bc/1-lbc$^0/2-0-', 2, 137}.
  {label,136}.
    {line,[{location,"bad_mc.erl",6}]}.
    {func_info,{atom,mc_SUITE},{atom,'-bad_generator_bc/1-lbc$^0/2-0-'},2}.
  {label,137}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_tuple,{f,138},[{x,0}]}.
    {test,test_arity,{f,139},[{x,0},3]}.
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
    {call_only,2,{f,137}}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2
  {label,138}.
    {test,is_eq_exact,{f,139},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,139}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bad_mc.erl",7}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,137},1}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2


{function, '-bad_generator/1-lc$^0/1-0-', 1, 141}.
  {label,140}.
    {line,[{location,"bad_mc.erl",4}]}.
    {func_info,{atom,mc_SUITE},{atom,'-bad_generator/1-lc$^0/1-0-'},1}.
  {label,141}.
    {test,is_tuple,{f,142},[{x,0}]}.
    {test,test_arity,{f,143},[{x,0},3]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,141}}. % '-bad_generator/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,142}.
    {test,is_eq_exact,{f,143},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,143}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,141},0}. % '-bad_generator/1-lc$^0/1-0-'/1


{function, '-shadow/1-lc$^1/1-1-', 1, 145}.
  {label,144}.
    {line,[{location,"mc_SUITE.erl",242}]}.
    {func_info,{atom,mc_SUITE},{atom,'-shadow/1-lc$^1/1-1-'},1}.
  {label,145}.
    {test,is_tuple,{f,147},[{x,0}]}.
    {test,test_arity,{f,148},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_lt,{f,146},[{x,1},{integer,10}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,145}}. % '-shadow/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',10}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,146}.
    {call_only,1,{f,145}}. % '-shadow/1-lc$^1/1-1-'/1
  {label,147}.
    {test,is_eq_exact,{f,148},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,148}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,145},0}. % '-shadow/1-lc$^1/1-1-'/1


{function, '-shadow/1-lc$^0/1-0-', 1, 150}.
  {label,149}.
    {line,[{location,"mc_SUITE.erl",240}]}.
    {func_info,{atom,mc_SUITE},{atom,'-shadow/1-lc$^0/1-0-'},1}.
  {label,150}.
    {test,is_nonempty_list,{f,151},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,150}}. % '-shadow/1-lc$^0/1-0-'/1
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
  {label,151}.
    {test,is_nil,{f,152},[{x,0}]}.
    return.
  {label,152}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sum_of_triangular_numbers/1-lc$^6/1-6-', 1, 154}.
  {label,153}.
    {line,[{location,"mc_SUITE.erl",233}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^6/1-6-'},
               1}.
  {label,154}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_nonempty_list,{f,156},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,155},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,155}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,158}}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,154}}. % '-sum_of_triangular_numbers/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,156}.
    return.


{function, '-sum_of_triangular_numbers/1-lc$^7/1-7-', 1, 158}.
  {label,157}.
    {line,[{location,"mc_SUITE.erl",233}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^7/1-7-'},
               1}.
  {label,158}.
    {test,is_tuple,{f,160},[{x,0}]}.
    {test,test_arity,{f,161},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,159},[{x,2},{x,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,158}}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,159}.
    {call_only,1,{f,158}}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1
  {label,160}.
    {test,is_eq_exact,{f,161},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,161}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,158},0}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1


{function, '-sum_of_triangular_numbers/1-lc$^4/1-4-', 1, 163}.
  {label,162}.
    {line,[{location,"mc_SUITE.erl",232}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^4/1-4-'},
               1}.
  {label,163}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_nonempty_list,{f,165},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,164},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,164}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,167}}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,163}}. % '-sum_of_triangular_numbers/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,165}.
    return.


{function, '-sum_of_triangular_numbers/1-lc$^5/1-5-', 1, 167}.
  {label,166}.
    {line,[{location,"mc_SUITE.erl",232}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^5/1-5-'},
               1}.
  {label,167}.
    {test,is_tuple,{f,169},[{x,0}]}.
    {test,test_arity,{f,170},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,168},[{x,2},{x,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,167}}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,168}.
    {call_only,1,{f,167}}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1
  {label,169}.
    {test,is_eq_exact,{f,170},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,170}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,167},0}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1


{function, '-sum_of_triangular_numbers/1-lc$^2/1-2-', 1, 172}.
  {label,171}.
    {line,[{location,"mc_SUITE.erl",231}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^2/1-2-'},
               1}.
  {label,172}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_nonempty_list,{f,174},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,173},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,173}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,176},2}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2
  {label,174}.
    return.


{function, '-sum_of_triangular_numbers/1-lc$^3/1-3-', 2, 176}.
  {label,175}.
    {line,[{location,"mc_SUITE.erl",231}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^3/1-3-'},
               2}.
  {label,176}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_tuple,{f,178},[{x,0}]}.
    {test,test_arity,{f,179},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,177},[{x,3},{x,2}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,176}}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,177}.
    {call_only,2,{f,176}}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2
  {label,178}.
    {test,is_eq_exact,{f,179},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,172}}. % '-sum_of_triangular_numbers/1-lc$^2/1-2-'/1
  {label,179}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,176},1}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2


{function, '-sum_of_triangular_numbers/1-lc$^0/1-0-', 1, 181}.
  {label,180}.
    {line,[{location,"mc_SUITE.erl",230}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^0/1-0-'},
               1}.
  {label,181}.
    {test,is_nonempty_list,{f,182},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,185}}. % '-sum_of_triangular_numbers/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",230}]}.
    {call,1,{f,181}}. % '-sum_of_triangular_numbers/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,182}.
    {test,is_nil,{f,183},[{x,0}]}.
    return.
  {label,183}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sum_of_triangular_numbers/1-lc$^1/1-1-', 1, 185}.
  {label,184}.
    {line,[{location,"mc_SUITE.erl",230}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^1/1-1-'},
               1}.
  {label,185}.
    {test,is_nonempty_list,{f,186},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,185}}. % '-sum_of_triangular_numbers/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,186}.
    {test,is_nil,{f,187},[{x,0}]}.
    return.
  {label,187}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_3/2-lc$^7/1-7-', 2, 189}.
  {label,188}.
    {line,[{location,"mc_SUITE.erl",224}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^7/1-7-'},2}.
  {label,189}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,190},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,192}}. % '-mixed_3/2-lc$^8/1-8-'/4
  {label,190}.
    return.


{function, '-mixed_3/2-lc$^8/1-8-', 4, 192}.
  {label,191}.
    {line,[{location,"mc_SUITE.erl",224}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^8/1-8-'},4}.
  {label,192}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,193},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,192}}. % '-mixed_3/2-lc$^8/1-8-'/4
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,193}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,189}}. % '-mixed_3/2-lc$^7/1-7-'/2


{function, '-mixed_3/2-lc$^5/1-5-', 2, 195}.
  {label,194}.
    {line,[{location,"mc_SUITE.erl",223}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^5/1-5-'},2}.
  {label,195}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,196},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,198}}. % '-mixed_3/2-lc$^6/1-6-'/4
  {label,196}.
    return.


{function, '-mixed_3/2-lc$^6/1-6-', 4, 198}.
  {label,197}.
    {line,[{location,"mc_SUITE.erl",223}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^6/1-6-'},4}.
  {label,198}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_match,{f,199},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,4,{literal,[]},16,1,{x,4}}]}}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,4,{f,198}}. % '-mixed_3/2-lc$^6/1-6-'/4
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
  {label,199}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,195}}. % '-mixed_3/2-lc$^5/1-5-'/2


{function, '-mixed_3/2-lc$^3/1-3-', 2, 201}.
  {label,200}.
    {line,[{location,"mc_SUITE.erl",222}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^3/1-3-'},2}.
  {label,201}.
    {'%',{var_info,{x,1},[{type,{t_map,any,any}}]}}.
    {test,is_tuple,{f,203},[{x,0}]}.
    {test,test_arity,{f,204},[{x,0},3]}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,202},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,202}.
    {get_tuple_element,{y,1},0,{x,2}}.
    {get_tuple_element,{y,1},2,{x,1}}.
    {move,{y,0},{x,3}}.
    {call_last,4,{f,206},2}. % '-mixed_3/2-lc$^4/1-4-'/4
  {label,203}.
    {test,is_eq_exact,{f,204},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,204}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,201},1}. % '-mixed_3/2-lc$^3/1-3-'/2


{function, '-mixed_3/2-lc$^4/1-4-', 4, 206}.
  {label,205}.
    {line,[{location,"mc_SUITE.erl",222}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^4/1-4-'},4}.
  {label,206}.
    {'%',{var_info,{x,3},[{type,{t_map,any,any}}]}}.
    {test,is_tuple,{f,207},[{x,0}]}.
    {test,test_arity,{f,208},[{x,0},3]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,4,{f,206}}. % '-mixed_3/2-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,207}.
    {test,is_eq_exact,{f,208},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,201}}. % '-mixed_3/2-lc$^3/1-3-'/2
  {label,208}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,206},3}. % '-mixed_3/2-lc$^4/1-4-'/4


{function, '-mixed_3/2-lc$^2/1-2-', 1, 210}.
  {label,209}.
    {line,[{location,"mc_SUITE.erl",220}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^2/1-2-'},1}.
  {label,210}.
    {test,is_tuple,{f,211},[{x,0}]}.
    {test,test_arity,{f,212},[{x,0},3]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,210}}. % '-mixed_3/2-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,211}.
    {test,is_eq_exact,{f,212},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,212}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,210},0}. % '-mixed_3/2-lc$^2/1-2-'/1


{function, '-mixed_3/2-lbc$^1/2-1-', 2, 214}.
  {label,213}.
    {line,[{location,"mc_SUITE.erl",219}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lbc$^1/2-1-'},2}.
  {label,214}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_tuple,{f,215},[{x,0}]}.
    {test,test_arity,{f,216},[{x,0},3]}.
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
    {call_only,2,{f,214}}. % '-mixed_3/2-lbc$^1/2-1-'/2
  {label,215}.
    {test,is_eq_exact,{f,216},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,216}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,214},1}. % '-mixed_3/2-lbc$^1/2-1-'/2


{function, '-mixed_3/2-lc$^0/1-0-', 1, 218}.
  {label,217}.
    {line,[{location,"mc_SUITE.erl",218}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^0/1-0-'},1}.
  {label,218}.
    {test,is_nonempty_list,{f,220},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,219},[{x,1}]}.
    {test,test_arity,{f,219},[{x,1},2]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,218}}. % '-mixed_3/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,219}.
    {call_only,1,{f,218}}. % '-mixed_3/2-lc$^0/1-0-'/1
  {label,220}.
    {test,is_nil,{f,221},[{x,0}]}.
    return.
  {label,221}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_2/2-lc$^9/1-9-', 2, 223}.
  {label,222}.
    {line,[{location,"mc_SUITE.erl",213}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^9/1-9-'},2}.
  {label,223}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,224},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,226}}. % '-mixed_2/2-lc$^10/1-10-'/4
  {label,224}.
    return.


{function, '-mixed_2/2-lc$^10/1-10-', 4, 226}.
  {label,225}.
    {line,[{location,"mc_SUITE.erl",213}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^10/1-10-'},4}.
  {label,226}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,227},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,226}}. % '-mixed_2/2-lc$^10/1-10-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,227}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,223}}. % '-mixed_2/2-lc$^9/1-9-'/2


{function, '-mixed_2/2-lc$^7/1-7-', 2, 229}.
  {label,228}.
    {line,[{location,"mc_SUITE.erl",212}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^7/1-7-'},2}.
  {label,229}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,230},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[]},16,1,{x,2}},
                         {get_tail,3,1,{x,3}}]}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,232}}. % '-mixed_2/2-lc$^8/1-8-'/4
  {label,230}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed_2/2-lc$^8/1-8-', 4, 232}.
  {label,231}.
    {line,[{location,"mc_SUITE.erl",212}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^8/1-8-'},4}.
  {label,232}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,65535}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,16,false}}]}}.
    {test,is_nonempty_list,{f,233},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,232}}. % '-mixed_2/2-lc$^8/1-8-'/4
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
  {label,233}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,229}}. % '-mixed_2/2-lc$^7/1-7-'/2


{function, '-mixed_2/2-lc$^5/1-5-', 2, 235}.
  {label,234}.
    {line,[{location,"mc_SUITE.erl",211}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^5/1-5-'},2}.
  {label,235}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_tuple,{f,237},[{x,0}]}.
    {test,test_arity,{f,238},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_nil,{f,236},[{x,2}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,240}}. % '-mixed_2/2-lc$^6/1-6-'/4
  {label,236}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,235}}. % '-mixed_2/2-lc$^5/1-5-'/2
  {label,237}.
    {test,is_eq_exact,{f,238},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,238}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,235},1}. % '-mixed_2/2-lc$^5/1-5-'/2


{function, '-mixed_2/2-lc$^6/1-6-', 4, 240}.
  {label,239}.
    {line,[{location,"mc_SUITE.erl",211}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^6/1-6-'},4}.
  {label,240}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,241},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,240}}. % '-mixed_2/2-lc$^6/1-6-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,241}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,235}}. % '-mixed_2/2-lc$^5/1-5-'/2


{function, '-mixed_2/2-lc$^3/1-3-', 2, 243}.
  {label,242}.
    {line,[{location,"mc_SUITE.erl",210}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^3/1-3-'},2}.
  {label,243}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_tuple,{f,245},[{x,0}]}.
    {test,test_arity,{f,246},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_nil,{f,244},[{x,2}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,248}}. % '-mixed_2/2-lc$^4/1-4-'/4
  {label,244}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,243}}. % '-mixed_2/2-lc$^3/1-3-'/2
  {label,245}.
    {test,is_eq_exact,{f,246},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,246}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,243},1}. % '-mixed_2/2-lc$^3/1-3-'/2


{function, '-mixed_2/2-lc$^4/1-4-', 4, 248}.
  {label,247}.
    {line,[{location,"mc_SUITE.erl",210}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^4/1-4-'},4}.
  {label,248}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,249},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,248}}. % '-mixed_2/2-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,249}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,243}}. % '-mixed_2/2-lc$^3/1-3-'/2


{function, '-mixed_2/2-lbc$^2/2-2-', 2, 251}.
  {label,250}.
    {line,[{location,"mc_SUITE.erl",207}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lbc$^2/2-2-'},2}.
  {label,251}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_tuple,{f,253},[{x,0}]}.
    {test,test_arity,{f,254},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_nil,{f,252},[{x,2}]}.
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
    {call_only,2,{f,251}}. % '-mixed_2/2-lbc$^2/2-2-'/2
  {label,252}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,251}}. % '-mixed_2/2-lbc$^2/2-2-'/2
  {label,253}.
    {test,is_eq_exact,{f,254},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,254}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,251},1}. % '-mixed_2/2-lbc$^2/2-2-'/2


{function, '-mixed_2/2-lc$^1/1-1-', 1, 256}.
  {label,255}.
    {line,[{location,"mc_SUITE.erl",206}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^1/1-1-'},1}.
  {label,256}.
    {test,is_tuple,{f,258},[{x,0}]}.
    {test,test_arity,{f,259},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,257},[{x,2}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,256}}. % '-mixed_2/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,257}.
    {call_only,1,{f,256}}. % '-mixed_2/2-lc$^1/1-1-'/1
  {label,258}.
    {test,is_eq_exact,{f,259},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,259}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,256},0}. % '-mixed_2/2-lc$^1/1-1-'/1


{function, '-mixed_2/2-lc$^0/1-0-', 1, 261}.
  {label,260}.
    {line,[{location,"mc_SUITE.erl",205}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^0/1-0-'},1}.
  {label,261}.
    {test,is_nonempty_list,{f,262},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,261}}. % '-mixed_2/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,262}.
    {test,is_nil,{f,263},[{x,0}]}.
    return.
  {label,263}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_1/2-lc$^6/1-6-', 2, 265}.
  {label,264}.
    {line,[{location,"mc_SUITE.erl",200}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^6/1-6-'},2}.
  {label,265}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,266},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,268}}. % '-mixed_1/2-lc$^7/1-7-'/4
  {label,266}.
    return.


{function, '-mixed_1/2-lc$^7/1-7-', 4, 268}.
  {label,267}.
    {line,[{location,"mc_SUITE.erl",200}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^7/1-7-'},4}.
  {label,268}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,any}}]}}.
    {test,is_nonempty_list,{f,269},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,268}}. % '-mixed_1/2-lc$^7/1-7-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,269}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,265}}. % '-mixed_1/2-lc$^6/1-6-'/2


{function, '-mixed_1/2-lc$^4/1-4-', 2, 271}.
  {label,270}.
    {line,[{location,"mc_SUITE.erl",199}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^4/1-4-'},2}.
  {label,271}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,any,nil}}]}}.
    {test,is_nonempty_list,{f,273},[{x,0}]}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,272},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,272}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,3}}.
    {call_last,4,{f,275},4}. % '-mixed_1/2-lc$^5/1-5-'/4
  {label,273}.
    return.


{function, '-mixed_1/2-lc$^5/1-5-', 4, 275}.
  {label,274}.
    {line,[{location,"mc_SUITE.erl",199}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^5/1-5-'},4}.
  {label,275}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_map,any,nil}}]}}.
    {test,is_tuple,{f,277},[{x,0}]}.
    {test,test_arity,{f,278},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,276},[{x,5}]}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,4,{f,275}}. % '-mixed_1/2-lc$^5/1-5-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,276}.
    {call_only,4,{f,275}}. % '-mixed_1/2-lc$^5/1-5-'/4
  {label,277}.
    {test,is_eq_exact,{f,278},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,271}}. % '-mixed_1/2-lc$^4/1-4-'/2
  {label,278}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,275},3}. % '-mixed_1/2-lc$^5/1-5-'/4


{function, '-mixed_1/2-lc$^2/1-2-', 2, 280}.
  {label,279}.
    {line,[{location,"mc_SUITE.erl",198}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^2/1-2-'},2}.
  {label,280}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,any,nil}}]}}.
    {test,is_nonempty_list,{f,282},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,281},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,281}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,3}}.
    {call_last,4,{f,284},3}. % '-mixed_1/2-lc$^3/1-3-'/4
  {label,282}.
    return.


{function, '-mixed_1/2-lc$^3/1-3-', 4, 284}.
  {label,283}.
    {line,[{location,"mc_SUITE.erl",198}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^3/1-3-'},4}.
  {label,284}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_map,any,nil}}]}}.
    {test,is_tuple,{f,286},[{x,0}]}.
    {test,test_arity,{f,287},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,285},[{x,5}]}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,4,{f,284}}. % '-mixed_1/2-lc$^3/1-3-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,285}.
    {call_only,4,{f,284}}. % '-mixed_1/2-lc$^3/1-3-'/4
  {label,286}.
    {test,is_eq_exact,{f,287},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,280}}. % '-mixed_1/2-lc$^2/1-2-'/2
  {label,287}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,284},3}. % '-mixed_1/2-lc$^3/1-3-'/4


{function, '-mixed_1/2-lc$^1/1-1-', 1, 289}.
  {label,288}.
    {line,[{location,"mc_SUITE.erl",196}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^1/1-1-'},1}.
  {label,289}.
    {test,is_tuple,{f,291},[{x,0}]}.
    {test,test_arity,{f,292},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,290},[{x,2}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,289}}. % '-mixed_1/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,290}.
    {call_only,1,{f,289}}. % '-mixed_1/2-lc$^1/1-1-'/1
  {label,291}.
    {test,is_eq_exact,{f,292},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,292}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,289},0}. % '-mixed_1/2-lc$^1/1-1-'/1


{function, '-mixed_1/2-lc$^0/1-0-', 1, 294}.
  {label,293}.
    {line,[{location,"mc_SUITE.erl",195}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^0/1-0-'},1}.
  {label,294}.
    {test,is_nonempty_list,{f,295},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,294}}. % '-mixed_1/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,295}.
    {test,is_nil,{f,296},[{x,0}]}.
    return.
  {label,296}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^2/1-2-', 1, 298}.
  {label,297}.
    {line,[{location,"mc_SUITE.erl",182}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed/1-lc$^2/1-2-'},1}.
  {label,298}.
    {test,is_nonempty_list,{f,299},[{x,0}]}.
    {allocate_heap,1,2,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {call_ext,1,{extfunc,erlang,list_to_atom,1}}.
    {swap,{y,0},{x,0}}.
    {call,1,{f,298}}. % '-mixed/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,299}.
    {test,is_nil,{f,300},[{x,0}]}.
    return.
  {label,300}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^1/1-1-', 1, 302}.
  {label,301}.
    {line,[{location,"mc_SUITE.erl",180}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed/1-lc$^1/1-1-'},1}.
  {label,302}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,303},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {integer,2,{literal,[]},24,1,{x,2}}]}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,302}}. % '-mixed/1-lc$^1/1-1-'/1
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
  {label,303}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lbc$^0/2-0-', 2, 305}.
  {label,304}.
    {line,[{location,"mc_SUITE.erl",179}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,305}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_tuple,{f,306},[{x,0}]}.
    {test,test_arity,{f,307},[{x,0},3]}.
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
    {call_only,2,{f,305}}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,306}.
    {test,is_eq_exact,{f,307},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,307}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,305},1}. % '-mixed/1-lbc$^0/2-0-'/2


{function, '-duplicate_keys/1-lc$^1/1-1-', 1, 309}.
  {label,308}.
    {line,[{location,"mc_SUITE.erl",173}]}.
    {func_info,{atom,mc_SUITE},{atom,'-duplicate_keys/1-lc$^1/1-1-'},1}.
  {label,309}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {test,is_nonempty_list,{f,310},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {call_only,3,{f,312}}. % '-duplicate_keys/1-lc$^2/1-2-'/3
  {label,310}.
    return.


{function, '-duplicate_keys/1-lc$^2/1-2-', 3, 312}.
  {label,311}.
    {line,[{location,"mc_SUITE.erl",174}]}.
    {func_info,{atom,mc_SUITE},{atom,'-duplicate_keys/1-lc$^2/1-2-'},3}.
  {label,312}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[a,b]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,313},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,3,{f,312}}. % '-duplicate_keys/1-lc$^2/1-2-'/3
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
  {label,313}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,309}}. % '-duplicate_keys/1-lc$^1/1-1-'/1


{function, '-duplicate_keys/1-lc$^0/1-0-', 1, 315}.
  {label,314}.
    {line,[{location,"mc_SUITE.erl",170}]}.
    {func_info,{atom,mc_SUITE},{atom,'-duplicate_keys/1-lc$^0/1-0-'},1}.
  {label,315}.
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
    {test,is_nonempty_list,{f,316},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,315}}. % '-duplicate_keys/1-lc$^0/1-0-'/1
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
  {label,316}.
    return.


{function, '-test_iterator/2-lc$^0/1-0-', 2, 318}.
  {label,317}.
    {line,[{location,"mc_SUITE.erl",155}]}.
    {func_info,{atom,mc_SUITE},{atom,'-test_iterator/2-lc$^0/1-0-'},2}.
  {label,318}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_tuple,{f,319},[{x,0}]}.
    {test,test_arity,{f,320},[{x,0},3]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,318}}. % '-test_iterator/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,319}.
    {test,is_eq_exact,{f,320},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,320}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,318},1}. % '-test_iterator/2-lc$^0/1-0-'/2


{function, '-mc_double/1-lc$^5/1-5-', 1, 322}.
  {label,321}.
    {line,[{location,"mc_SUITE.erl",140}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^5/1-5-'},1}.
  {label,322}.
    {test,is_tuple,{f,325},[{x,0}]}.
    {test,test_arity,{f,326},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,324},[{x,1},2,{atom,key}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,324},[{x,0},{x,1}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",141}]}.
    {call,1,{f,118}}. % id/1
    {gc_bif,'rem',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,323},[{tr,{x,0},{t_integer,{-1,1}}},{integer,0}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,322},2}. % '-mc_double/1-lc$^5/1-5-'/1
  {label,323}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"mc_SUITE.erl",140}]}.
    {call,1,{f,322}}. % '-mc_double/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,324}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,322}}. % '-mc_double/1-lc$^5/1-5-'/1
  {label,325}.
    {test,is_eq_exact,{f,326},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,326}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,322},0}. % '-mc_double/1-lc$^5/1-5-'/1


{function, '-mc_double/1-lc$^4/1-4-', 1, 328}.
  {label,327}.
    {line,[{location,"mc_SUITE.erl",138}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^4/1-4-'},1}.
  {label,328}.
    {test,is_tuple,{f,330},[{x,0}]}.
    {test,test_arity,{f,331},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,329},[{x,1},2,{atom,key}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,329},[{x,0},{x,1}]}.
    {gc_bif,'rem',{f,329},3,[{x,1},{integer,2}],{x,0}}.
    {test,is_ne_exact,{f,329},[{tr,{x,0},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,328}}. % '-mc_double/1-lc$^4/1-4-'/1
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
  {label,329}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,328}}. % '-mc_double/1-lc$^4/1-4-'/1
  {label,330}.
    {test,is_eq_exact,{f,331},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,331}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,328},0}. % '-mc_double/1-lc$^4/1-4-'/1


{function, '-mc_double/1-lc$^3/1-3-', 1, 333}.
  {label,332}.
    {line,[{location,"mc_SUITE.erl",135}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^3/1-3-'},1}.
  {label,333}.
    {test,is_tuple,{f,335},[{x,0}]}.
    {test,test_arity,{f,336},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,334},[{x,1},2,{atom,key}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,334},[{x,0},{x,1}]}.
    {gc_bif,'rem',{f,334},3,[{x,1},{integer,2}],{x,0}}.
    {test,is_ne_exact,{f,334},[{tr,{x,0},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,333}}. % '-mc_double/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,334}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,333}}. % '-mc_double/1-lc$^3/1-3-'/1
  {label,335}.
    {test,is_eq_exact,{f,336},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,336}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,333},0}. % '-mc_double/1-lc$^3/1-3-'/1


{function, '-mc_double/1-lc$^2/1-2-', 1, 338}.
  {label,337}.
    {line,[{location,"mc_SUITE.erl",132}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^2/1-2-'},1}.
  {label,338}.
    {test,is_nonempty_list,{f,339},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,338}}. % '-mc_double/1-lc$^2/1-2-'/1
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
  {label,339}.
    {test,is_nil,{f,340},[{x,0}]}.
    return.
  {label,340}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mc_double/1-lc$^1/1-1-', 1, 342}.
  {label,341}.
    {line,[{location,"mc_SUITE.erl",131}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^1/1-1-'},1}.
  {label,342}.
    {test,is_tuple,{f,343},[{x,0}]}.
    {test,test_arity,{f,344},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {gc_bif,'*',{f,0},3,[{x,2},{integer,2}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,342}}. % '-mc_double/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{2 => {t_number,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,343}.
    {test,is_eq_exact,{f,344},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,344}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,342},0}. % '-mc_double/1-lc$^1/1-1-'/1


{function, '-mc_double/1-lc$^0/1-0-', 1, 346}.
  {label,345}.
    {line,[{location,"mc_SUITE.erl",129}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^0/1-0-'},1}.
  {label,346}.
    {test,is_nonempty_list,{f,347},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,346}}. % '-mc_double/1-lc$^0/1-0-'/1
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
  {label,347}.
    {test,is_nil,{f,348},[{x,0}]}.
    return.
  {label,348}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^16/1-16-', 1, 350}.
  {label,349}.
    {line,[{location,"mc_SUITE.erl",123}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^16/1-16-'},1}.
  {label,350}.
    {test,is_tuple,{f,352},[{x,0}]}.
    {test,test_arity,{f,353},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,351},[{x,1},3,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {gc_bif,'rem',{f,351},3,[{x,1},{integer,2}],{x,1}}.
    {test,is_eq_exact,{f,351},[{tr,{x,1},{t_integer,{-1,1}}},{integer,1}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,350}}. % '-basic/1-lc$^16/1-16-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,351}.
    {call_only,1,{f,350}}. % '-basic/1-lc$^16/1-16-'/1
  {label,352}.
    {test,is_eq_exact,{f,353},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,353}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,350},0}. % '-basic/1-lc$^16/1-16-'/1


{function, '-basic/1-lc$^15/1-15-', 1, 355}.
  {label,354}.
    {line,[{location,"mc_SUITE.erl",121}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^15/1-15-'},1}.
  {label,355}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_nonempty_list,{f,357},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,356},[{x,2},3,{atom,foo}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'rem',{f,356},3,[{x,2},{integer,2}],{x,2}}.
    {test,is_eq_exact,{f,356},[{tr,{x,2},{t_integer,{-1,1}}},{integer,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,355}}. % '-basic/1-lc$^15/1-15-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,356}.
    {call_only,1,{f,355}}. % '-basic/1-lc$^15/1-15-'/1
  {label,357}.
    return.


{function, '-basic/1-lc$^14/1-14-', 1, 359}.
  {label,358}.
    {line,[{location,"mc_SUITE.erl",118}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^14/1-14-'},1}.
  {label,359}.
    {test,is_tuple,{f,361},[{x,0}]}.
    {test,test_arity,{f,362},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,360},[{x,1},3,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {gc_bif,'rem',{f,360},4,[{x,3},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,360},[{tr,{x,3},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,359}}. % '-basic/1-lc$^14/1-14-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,3,true,#{1 => {t_atom,[foo]}}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,360}.
    {call_only,1,{f,359}}. % '-basic/1-lc$^14/1-14-'/1
  {label,361}.
    {test,is_eq_exact,{f,362},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,362}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,359},0}. % '-basic/1-lc$^14/1-14-'/1


{function, '-basic/1-lc$^13/1-13-', 1, 364}.
  {label,363}.
    {line,[{location,"mc_SUITE.erl",115}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^13/1-13-'},1}.
  {label,364}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_nonempty_list,{f,366},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,365},[{x,2},3,{atom,foo}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'rem',{f,365},3,[{x,2},{integer,2}],{x,2}}.
    {test,is_eq_exact,{f,365},[{tr,{x,2},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,364}}. % '-basic/1-lc$^13/1-13-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,365}.
    {call_only,1,{f,364}}. % '-basic/1-lc$^13/1-13-'/1
  {label,366}.
    return.


{function, '-basic/1-lc$^12/1-12-', 1, 368}.
  {label,367}.
    {line,[{location,"mc_SUITE.erl",112}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^12/1-12-'},1}.
  {label,368}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {test,is_nonempty_list,{f,369},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{1,4}}},{tr,{x,1},{t_integer,{1,4}}}],
            {x,2}}.
    {gc_bif,'*',
            {f,0},
            3,
            [{tr,{x,2},{t_integer,{1,16}}},{tr,{x,1},{t_integer,{1,4}}}],
            {x,3}}.
    {allocate,3,4}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{y,2}}.
    {call,1,{f,368}}. % '-basic/1-lc$^12/1-12-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_tuple,3,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{1,4}},
                                     3 => {t_integer,{1,'+inf'}}}},
                           2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {test_heap,9,1}.
    {put_tuple2,{x,1},{list,[{atom,foo},{y,0},{y,1}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,369}.
    return.


{function, '-basic/1-lbc$^11/2-11-', 2, 371}.
  {label,370}.
    {line,[{location,"mc_SUITE.erl",109}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lbc$^11/2-11-'},2}.
  {label,371}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_tuple,{f,373},[{x,0}]}.
    {test,test_arity,{f,374},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,372},[{x,2},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,372},[{x,0},{atom,b}]}.
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
    {call_only,2,{f,371}}. % '-basic/1-lbc$^11/2-11-'/2
  {label,372}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,371}}. % '-basic/1-lbc$^11/2-11-'/2
  {label,373}.
    {test,is_eq_exact,{f,374},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,374}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,371},1}. % '-basic/1-lbc$^11/2-11-'/2


{function, '-basic/1-lbc$^10/2-10-', 2, 376}.
  {label,375}.
    {line,[{location,"mc_SUITE.erl",108}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lbc$^10/2-10-'},2}.
  {label,376}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_tuple,{f,378},[{x,0}]}.
    {test,test_arity,{f,379},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,377},[{x,2},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,377},[{x,0},{atom,b}]}.
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
    {call_only,2,{f,376}}. % '-basic/1-lbc$^10/2-10-'/2
  {label,377}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,376}}. % '-basic/1-lbc$^10/2-10-'/2
  {label,378}.
    {test,is_eq_exact,{f,379},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,379}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,376},1}. % '-basic/1-lbc$^10/2-10-'/2


{function, '-basic/1-lbc$^9/2-9-', 2, 381}.
  {label,380}.
    {line,[{location,"mc_SUITE.erl",107}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lbc$^9/2-9-'},2}.
  {label,381}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_tuple,{f,383},[{x,0}]}.
    {test,test_arity,{f,384},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,382},[{x,2},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,382},[{x,0},{atom,b}]}.
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
    {call_only,2,{f,381}}. % '-basic/1-lbc$^9/2-9-'/2
  {label,382}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,381}}. % '-basic/1-lbc$^9/2-9-'/2
  {label,383}.
    {test,is_eq_exact,{f,384},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,384}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,381},1}. % '-basic/1-lbc$^9/2-9-'/2


{function, '-basic/1-lc$^8/1-8-', 1, 386}.
  {label,385}.
    {line,[{location,"mc_SUITE.erl",105}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^8/1-8-'},1}.
  {label,386}.
    {test,is_tuple,{f,388},[{x,0}]}.
    {test,test_arity,{f,389},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,387},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,387},[{x,0},{atom,b}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,1,{f,386}}. % '-basic/1-lc$^8/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,387}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,386}}. % '-basic/1-lc$^8/1-8-'/1
  {label,388}.
    {test,is_eq_exact,{f,389},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,389}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,386},0}. % '-basic/1-lc$^8/1-8-'/1


{function, '-basic/1-lc$^7/1-7-', 1, 391}.
  {label,390}.
    {line,[{location,"mc_SUITE.erl",104}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^7/1-7-'},1}.
  {label,391}.
    {test,is_tuple,{f,393},[{x,0}]}.
    {test,test_arity,{f,394},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,392},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,392},[{x,0},{atom,b}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,1,{f,391}}. % '-basic/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,392}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,391}}. % '-basic/1-lc$^7/1-7-'/1
  {label,393}.
    {test,is_eq_exact,{f,394},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,394}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,391},0}. % '-basic/1-lc$^7/1-7-'/1


{function, '-basic/1-lc$^6/1-6-', 1, 396}.
  {label,395}.
    {line,[{location,"mc_SUITE.erl",103}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^6/1-6-'},1}.
  {label,396}.
    {test,is_tuple,{f,398},[{x,0}]}.
    {test,test_arity,{f,399},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,397},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,397},[{x,0},{atom,b}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,1,{f,396}}. % '-basic/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,397}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,396}}. % '-basic/1-lc$^6/1-6-'/1
  {label,398}.
    {test,is_eq_exact,{f,399},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,399}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,396},0}. % '-basic/1-lc$^6/1-6-'/1


{function, '-basic/1-lc$^5/1-5-', 1, 401}.
  {label,400}.
    {line,[{location,"mc_SUITE.erl",100}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^5/1-5-'},1}.
  {label,401}.
    {test,is_tuple,{f,403},[{x,0}]}.
    {test,test_arity,{f,404},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nonempty_list,{f,402},[{x,2}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,401}}. % '-basic/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,402}.
    {call_only,1,{f,401}}. % '-basic/1-lc$^5/1-5-'/1
  {label,403}.
    {test,is_eq_exact,{f,404},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,404}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,401},0}. % '-basic/1-lc$^5/1-5-'/1


{function, '-basic/1-lc$^4/1-4-', 1, 406}.
  {label,405}.
    {line,[{location,"mc_SUITE.erl",99}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^4/1-4-'},1}.
  {label,406}.
    {test,is_tuple,{f,408},[{x,0}]}.
    {test,test_arity,{f,409},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tuple,{f,407},[{x,1}]}.
    {test,test_arity,{f,407},[{x,1},2]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,407},[{x,0}]}.
    {allocate,1,3}.
    {get_hd,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,406}}. % '-basic/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,407}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,406}}. % '-basic/1-lc$^4/1-4-'/1
  {label,408}.
    {test,is_eq_exact,{f,409},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,409}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,406},0}. % '-basic/1-lc$^4/1-4-'/1


{function, '-basic/1-lc$^3/1-3-', 1, 411}.
  {label,410}.
    {line,[{location,"mc_SUITE.erl",98}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^3/1-3-'},1}.
  {label,411}.
    {test,is_tuple,{f,413},[{x,0}]}.
    {test,test_arity,{f,414},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tuple,{f,412},[{x,1}]}.
    {test,test_arity,{f,412},[{x,1},2]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,411}}. % '-basic/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,412}.
    {call_only,1,{f,411}}. % '-basic/1-lc$^3/1-3-'/1
  {label,413}.
    {test,is_eq_exact,{f,414},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,414}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,411},0}. % '-basic/1-lc$^3/1-3-'/1


{function, '-basic/1-lc$^2/1-2-', 1, 416}.
  {label,415}.
    {line,[{location,"mc_SUITE.erl",97}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^2/1-2-'},1}.
  {label,416}.
    {test,is_tuple,{f,418},[{x,0}]}.
    {test,test_arity,{f,419},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_atom,{f,417},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,416}}. % '-basic/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,417}.
    {call_only,1,{f,416}}. % '-basic/1-lc$^2/1-2-'/1
  {label,418}.
    {test,is_eq_exact,{f,419},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,419}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,416},0}. % '-basic/1-lc$^2/1-2-'/1


{function, '-basic/1-lc$^1/1-1-', 1, 421}.
  {label,420}.
    {line,[{location,"mc_SUITE.erl",93}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^1/1-1-'},1}.
  {label,421}.
    {test,is_tuple,{f,422},[{x,0}]}.
    {test,test_arity,{f,423},[{x,0},3]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,1,{f,421}}. % '-basic/1-lc$^1/1-1-'/1
  {label,422}.
    {test,is_eq_exact,{f,423},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,423}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,421},0}. % '-basic/1-lc$^1/1-1-'/1


{function, '-basic/1-lc$^0/1-0-', 1, 425}.
  {label,424}.
    {line,[{location,"mc_SUITE.erl",92}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^0/1-0-'},1}.
  {label,425}.
    {test,is_tuple,{f,426},[{x,0}]}.
    {test,test_arity,{f,427},[{x,0},3]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,1,{f,425}}. % '-basic/1-lc$^0/1-0-'/1
  {label,426}.
    {test,is_eq_exact,{f,427},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,427}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,425},0}. % '-basic/1-lc$^0/1-0-'/1
