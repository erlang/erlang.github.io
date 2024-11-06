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

{labels, 522}.


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
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",61}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",62}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",63}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",64}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"mc_SUITE.erl",65}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"mc_SUITE.erl",66}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,17},{x,0}}.
    {line,[{location,"mc_SUITE.erl",68}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,18},{x,0}}.
    {line,[{location,"mc_SUITE.erl",69}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,19},{x,0}}.
    {line,[{location,"mc_SUITE.erl",70}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,30},{x,0}}.
    {line,[{location,"mc_SUITE.erl",72}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,31},{x,0}}.
    {line,[{location,"mc_SUITE.erl",73}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"mc_SUITE.erl",74}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,33},{x,0}}.
    {line,[{location,"mc_SUITE.erl",75}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,34},{x,0}}.
    {line,[{location,"mc_SUITE.erl",76}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,63},{x,0}}.
    {line,[{location,"mc_SUITE.erl",78}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"mc_SUITE.erl",79}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,65},{x,0}}.
    {line,[{location,"mc_SUITE.erl",80}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,77},{x,0}}.
    {line,[{location,"mc_SUITE.erl",82}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,127},{x,0}}.
    {line,[{location,"mc_SUITE.erl",83}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,128},{x,0}}.
    {line,[{location,"mc_SUITE.erl",84}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,255},{x,0}}.
    {line,[{location,"mc_SUITE.erl",85}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,333},{x,0}}.
    {line,[{location,"mc_SUITE.erl",86}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,444},{x,0}}.
    {line,[{location,"mc_SUITE.erl",87}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7777},{x,0}}.
    {line,[{location,"mc_SUITE.erl",88}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,8765},{x,0}}.
    {line,[{location,"mc_SUITE.erl",89}]}.
    {call,1,{f,59}}. % mc_double/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{a => [b]}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",92}]}.
    {call,1,{f,133}}. % id/1
    {move,{x,0},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,17},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",92}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,17}.
    {init_yregs,{list,[{y,2}]}}.
    {call,1,{f,518}}. % '-basic/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{literal,#{42 => whatever}},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",93}]}.
    {call,1,{f,133}}. % id/1
    {move,{x,0},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,18},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,18}.
    {init_yregs,{list,[{y,2}]}}.
    {call,1,{f,513}}. % '-basic/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",97}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,19},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,19}.
    {call,1,{f,507}}. % '-basic/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,57},
          [{tr,{x,0},{t_list,{t_atom,any},nil}},{literal,[c,d]}]}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",98}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,20},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,20}.
    {call,1,{f,501}}. % '-basic/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,56},
          [{tr,{x,0},{t_list,any,nil}},{literal,[{a,b,c},[1,2,3]]}]}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",99}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,21},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,21}.
    {call,1,{f,495}}. % '-basic/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,{f,55},[{tr,{x,0},{t_list,any,nil}},{literal,[1]}]}.
    {move,{literal,#{c => [4,5,6],
                     d => {x,y},
                     {a,1} => {a,b,c},
                     {b,42} => [1,2,3]}},
          {x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",100}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,22},[{x,0}]}.
    {move,{literal,{bad_generator,#{c => [4,5,6],
                                    d => {x,y},
                                    {a,1} => {a,b,c},
                                    {b,42} => [1,2,3]}}},
          {x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,22}.
    {call,1,{f,489}}. % '-basic/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,54},
          [{tr,{x,0},{t_list,any,nil}},{literal,[c,{b,42}]}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",103}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,23},[{x,0}]}.
    {move,{literal,{bad_generator,#{}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,23}.
    {call,1,{f,483}}. % '-basic/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_nil,{f,53},[{tr,{x,0},{t_list,{t_integer,{0,0}},nil}}]}.
    {move,{literal,#{x => y}},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",104}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,24},[{x,0}]}.
    {move,{literal,{bad_generator,#{x => y}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,24}.
    {call,1,{f,477}}. % '-basic/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_nil,{f,52},[{tr,{x,0},{t_list,{t_integer,{0,0}},nil}}]}.
    {move,{literal,#{a => b}},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",105}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,25},[{x,0}]}.
    {move,{literal,{bad_generator,#{a => b}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,25}.
    {call,1,{f,471}}. % '-basic/1-lc$^8/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_eq_exact,
          {f,51},
          [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{literal,[0]}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",107}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,2}}.
    {test,is_nil,{f,26},[{x,0}]}.
    {move,{literal,{bad_generator,#{}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,26}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,2,{f,465}}. % '-basic/1-lbc$^9/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,{f,50},[{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{literal,#{x => y}},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",108}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,2}}.
    {test,is_nil,{f,27},[{x,0}]}.
    {move,{literal,{bad_generator,#{x => y}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,27}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,2,{f,459}}. % '-basic/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,{f,49},[{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{literal,#{a => b}},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",109}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,2}}.
    {test,is_nil,{f,28},[{x,0}]}.
    {move,{literal,{bad_generator,#{a => b}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,28}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,2,{f,453}}. % '-basic/1-lbc$^11/2-11-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,48},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<0>>}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",112}]}.
    {call,1,{f,450}}. % '-basic/1-lc$^12/1-12-'/1
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
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",112}]}.
    {call,1,{f,133}}. % id/1
    {move,{x,0},{y,2}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",115}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {call,1,{f,446}}. % '-basic/1-lc$^13/1-13-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",114}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",118}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,29},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,29}.
    {call,1,{f,440}}. % '-basic/1-lc$^14/1-14-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,3,true,#{1 => {t_atom,[foo]}}}}},
                     nil}}]}}.
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {test,is_eq_exact,
          {f,47},
          [{tr,{x,0},{t_map,{t_tuple,3,true,#{1 => {t_atom,[foo]}}},any}},
           {tr,{y,1},{t_map,any,any}}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",121}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {call,1,{f,436}}. % '-basic/1-lc$^15/1-15-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",123}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,30},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,30}.
    {init_yregs,{list,[{y,2}]}}.
    {call,1,{f,430}}. % '-basic/1-lc$^16/1-16-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,46},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,1},{t_list,any,nil}}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",126}]}.
    {call,1,{f,427}}. % '-basic/1-lc$^17/1-17-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,3}},
                           2 => {t_integer,{2,'+inf'}}}},
                     nil}}]}}.
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,45},
                      {tr,{x,0},
                          {t_map,{t_integer,{1,3}},{t_integer,{2,'+inf'}}}},
                      {list,[{integer,3},
                             {x,3},
                             {integer,2},
                             {x,2},
                             {integer,1},
                             {x,1}]}}.
    {test,is_eq_exact,{f,45},[{tr,{x,1},{t_integer,{2,'+inf'}}},{integer,2}]}.
    {test,is_eq_exact,{f,45},[{tr,{x,2},{t_integer,{2,'+inf'}}},{integer,3}]}.
    {test,is_eq_exact,{f,45},[{tr,{x,3},{t_integer,{2,'+inf'}}},{integer,4}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",127}]}.
    {call,1,{f,423}}. % '-basic/1-lc$^18/1-18-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{0,255}},
                           2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,44},
                      {tr,{x,0},
                          {t_map,{t_integer,{0,255}},{t_integer,{1,'+inf'}}}},
                      {list,[{integer,3},
                             {x,3},
                             {integer,2},
                             {x,2},
                             {integer,1},
                             {x,1}]}}.
    {test,is_eq_exact,{f,44},[{tr,{x,1},{t_integer,{1,'+inf'}}},{integer,2}]}.
    {test,is_eq_exact,{f,44},[{tr,{x,2},{t_integer,{1,'+inf'}}},{integer,3}]}.
    {test,is_eq_exact,{f,44},[{tr,{x,3},{t_integer,{1,'+inf'}}},{integer,4}]}.
    {move,{literal,#{1 => 2,3 => 4}},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",128}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,31},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => 2,3 => 4}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,31}.
    {call,1,{f,418}}. % '-basic/1-lc$^19/1-19-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,43},
                      {tr,{x,0},{t_map,{t_number,any},{t_number,any}}},
                      {list,[{integer,4},{x,2},{integer,2},{x,1}]}}.
    {test,is_eq_exact,{f,43},[{tr,{x,1},{t_number,any}},{integer,4}]}.
    {test,is_eq_exact,{f,43},[{tr,{x,2},{t_number,any}},{integer,8}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",131}]}.
    {call,1,{f,414}}. % '-basic/1-lc$^20/1-20-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{2,3}},
                           2 => {t_integer,{3,'+inf'}}}},
                     nil}}]}}.
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,42},
                      {tr,{x,0},
                          {t_map,{t_integer,{2,3}},{t_integer,{3,'+inf'}}}},
                      {list,[{integer,3},{x,2},{integer,2},{x,1}]}}.
    {test,is_eq_exact,{f,42},[{tr,{x,1},{t_integer,{3,'+inf'}}},{integer,3}]}.
    {test,is_eq_exact,{f,42},[{tr,{x,2},{t_integer,{3,'+inf'}}},{integer,4}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",132}]}.
    {call,1,{f,409}}. % '-basic/1-lc$^21/1-21-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{2,255}},
                           2 => {t_integer,{3,'+inf'}}}},
                     nil}}]}}.
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,41},
                      {tr,{x,0},
                          {t_map,{t_integer,{2,255}},{t_integer,{3,'+inf'}}}},
                      {list,[{integer,3},{x,2},{integer,2},{x,1}]}}.
    {test,is_eq_exact,{f,41},[{tr,{x,1},{t_integer,{3,'+inf'}}},{integer,3}]}.
    {test,is_eq_exact,{f,41},[{tr,{x,2},{t_integer,{3,'+inf'}}},{integer,4}]}.
    {move,{literal,#{1 => 2,3 => 4}},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",133}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,32},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => 2,3 => 4}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,32}.
    {call,1,{f,403}}. % '-basic/1-lc$^22/1-22-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,{2,'+inf'}},2 => {t_number,any}}},
                     nil}}]}}.
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,40},
                      {tr,{x,0},{t_map,{t_number,{2,'+inf'}},{t_number,any}}},
                      {list,[{integer,4},{x,1}]}}.
    {test,is_eq_exact,{f,40},[{tr,{x,1},{t_number,any}},{integer,8}]}.
    {'catch',{y,2},{f,33}}.
    {move,{literal,[{ok,1},2,{ok,3}]},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",136}]}.
    {call,1,{f,399}}. % '-basic/1-lc$^23/1-23-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,3}},
                           2 => {t_integer,{2,'+inf'}}}},
                     nil}}]}}.
    {line,[{scope,[6]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
  {label,33}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,39},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,39},[{x,1}]}.
    {test,test_arity,{f,39},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,39},[{x,1},{literal,{badmatch,2}}]}.
    {'catch',{y,1},{f,34}}.
    {move,{literal,<<1,128,2>>},{x,0}}.
    {line,[{scope,[4]},{location,"mc_SUITE.erl",137}]}.
    {call,1,{f,395}}. % '-basic/1-lc$^24/1-24-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{0,127}},
                           2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {line,[{scope,[4]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
  {label,34}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,38},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,38},[{x,1}]}.
    {test,test_arity,{f,38},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,38},[{x,1},{literal,{badmatch,<<128,2>>}}]}.
    {'catch',{y,0},{f,36}}.
    {move,{literal,#{1 => ok,2 => error,3 => ok}},{x,0}}.
    {line,[{scope,[2]},{location,"mc_SUITE.erl",138}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,35},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => ok,2 => error,3 => ok}}},{x,0}}.
    {line,[{scope,[1]},{location,"mc_SUITE.erl",138}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {jump,{f,36}}.
  {label,35}.
    {call,1,{f,389}}. % '-basic/1-lc$^25/1-25-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {line,[{scope,[1]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
  {label,36}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,37},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,37},[{x,1}]}.
    {test,test_arity,{f,37},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,37},[{x,1},{literal,{badmatch,{2,error}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,37}.
    {line,[{scope,[0]},{location,"mc_SUITE.erl",138}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,[2]},{location,"mc_SUITE.erl",137}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{scope,[4]},{location,"mc_SUITE.erl",136}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",133}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",131}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",128}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",127}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",126}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",123}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",117}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",108}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",107}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",105}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",104}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",103}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",100}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",98}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",97}]}.
    {badmatch,{x,0}}.


{function, mc_double, 1, 59}.
  {label,58}.
    {line,[{location,"mc_SUITE.erl",142}]}.
    {func_info,{atom,mc_SUITE},{atom,mc_double},1}.
  {label,59}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,8765}}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {move,{x,0},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",143}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"mc_SUITE.erl",144}]}.
    {call,1,{f,385}}. % '-mc_double/1-lc$^0/1-0-'/1
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
    {line,[{location,"mc_SUITE.erl",146}]}.
    {call,1,{f,133}}. % id/1
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,60},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,60}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,380}}. % '-mc_double/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{2 => {t_number,any}}},
                                  nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {swap,{y,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",147}]}.
    {call,1,{f,376}}. % '-mc_double/1-lc$^2/1-2-'/1
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
          {f,67},
          [{tr,{x,0},
               {t_map,{t_tuple,2,true,
                               #{1 => {t_atom,[key]},2 => {t_number,any}}},
                      {t_number,any}}},
           {tr,{y,2},{t_map,any,{t_number,any}}}]}.
    {move,{y,3},{x,1}}.
    {move,{integer,2},{x,2}}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",149}]}.
    {call_ext,3,{extfunc,lists,seq,3}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",150}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,61},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,61}.
    {call,1,{f,370}}. % '-mc_double/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,any},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,66},[{tr,{x,0},{t_list,{t_integer,any},nil}},{y,3}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",153}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,62},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,62}.
    {call,1,{f,364}}. % '-mc_double/1-lc$^4/1-4-'/1
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
    {line,[{location,"mc_SUITE.erl",155}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,63},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,63}.
    {call,1,{f,357}}. % '-mc_double/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {test,is_eq_exact,
          {f,65},
          [{tr,{x,0},{t_map,any,nil}},{tr,{y,2},{t_map,{t_integer,any},nil}}]}.
    {move,{y,2},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"mc_SUITE.erl",157}]}.
    {call_ext,1,{extfunc,maps,keys,1}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,64},
          [{tr,{x,0},{t_list,{t_integer,any},nil}},
           {tr,{y,1},{t_list,{t_integer,any},nil}}]}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",160}]}.
    {call,2,{f,69}}. % test_iterator/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"mc_SUITE.erl",161}]}.
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
    {call,2,{f,69}}. % test_iterator/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"mc_SUITE.erl",162}]}.
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
    {call,2,{f,69}}. % test_iterator/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"mc_SUITE.erl",163}]}.
    {gc_bif,map_size,
            {f,0},
            0,
            [{tr,{y,0},{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},any}}],
            {x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,69},1}. % test_iterator/2
  {label,64}.
    {line,[{location,"mc_SUITE.erl",157}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{location,"mc_SUITE.erl",155}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{location,"mc_SUITE.erl",150}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{location,"mc_SUITE.erl",147}]}.
    {badmatch,{x,0}}.


{function, test_iterator, 2, 69}.
  {label,68}.
    {line,[{location,"mc_SUITE.erl",167}]}.
    {func_info,{atom,mc_SUITE},{atom,test_iterator},2}.
  {label,69}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},
                                 any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"mc_SUITE.erl",168}]}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"mc_SUITE.erl",169}]}.
    {call,3,{f,73}}. % grab/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_list,{t_tuple,2,true,#{}},nil}}}}]}}.
    {get_tuple_element,{x,0},0,{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",170}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,70},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,70}.
    {move,{y,1},{x,1}}.
    {trim,2,1}.
    {call,2,{f,352}}. % '-test_iterator/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[{location,"mc_SUITE.erl",171}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_map,any,any}},
           {tr,{y,0},{t_map,{t_tuple,2,true,#{1 => {t_atom,[key]}}},any}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,71}.
    {badmatch,{x,0}}.


{function, grab, 3, 73}.
  {label,72}.
    {line,[{location,"mc_SUITE.erl",174}]}.
    {func_info,{atom,mc_SUITE},{atom,grab},3}.
  {label,73}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',288230376151711743}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,74},
          [{tr,{x,0},{t_integer,{'-inf',288230376151711743}}},{integer,0}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.
  {label,74}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",177}]}.
    {call_ext,1,{extfunc,maps,next,1}}.
    {test,is_tuple,{f,75},[{x,0}]}.
    {test,test_arity,{f,76},[{x,0},3]}.
    {line,[{location,"mc_SUITE.erl",181}]}.
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
    {call_last,3,{f,73},3}. % grab/3
  {label,75}.
    {test,is_eq_exact,{f,76},[{x,0},{atom,none}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,0},{y,1}]}}.
    {deallocate,3}.
    return.
  {label,76}.
    {line,[{location,"mc_SUITE.erl",177}]}.
    {case_end,{x,0}}.


{function, duplicate_keys, 1, 78}.
  {label,77}.
    {line,[{location,"mc_SUITE.erl",184}]}.
    {func_info,{atom,mc_SUITE},{atom,duplicate_keys},1}.
  {label,78}.
    {allocate,0,0}.
    {move,{literal,[{a,x},{b,x}]},{x,0}}.
    {line,[{location,"mc_SUITE.erl",185}]}.
    {call,1,{f,349}}. % '-duplicate_keys/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,#{1 => {t_atom,[x]},2 => {t_atom,[a,b]}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,80},
                      {tr,{x,0},{t_map,{t_atom,[x]},{t_atom,[a,b]}}},
                      {list,[{atom,x},{x,1}]}}.
    {test,is_eq_exact,{f,80},[{tr,{x,1},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,[a,b]},{x,0}}.
    {line,[{location,"mc_SUITE.erl",188}]}.
    {call,1,{f,343}}. % '-duplicate_keys/1-lc$^1/1-1-'/1
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
    {get_map_elements,{f,79},
                      {tr,{x,0},{t_map,{t_atom,[a,b]},{t_integer,{0,255}}}},
                      {list,[{atom,b},{x,2},{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,79},[{tr,{x,1},{t_integer,{0,255}}},{integer,4}]}.
    {test,is_eq_exact,{f,79},[{tr,{x,2},{t_integer,{0,255}}},{integer,4}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,79}.
    {line,[{location,"mc_SUITE.erl",187}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"mc_SUITE.erl",185}]}.
    {badmatch,{x,0}}.


{function, mixed, 1, 82}.
  {label,81}.
    {line,[{location,"mc_SUITE.erl",192}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed},1}.
  {label,82}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,#{1 => 10,2 => 5,3 => 88,4 => 99,5 => 36}},{x,0}}.
    {line,[{location,"mc_SUITE.erl",193}]}.
    {call,1,{f,133}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",194}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,83},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,83}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,338}}. % '-mixed/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {line,[{location,"mc_SUITE.erl",195}]}.
    {call,1,{f,335}}. % '-mixed/1-lc$^1/1-1-'/1
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
          {f,84},
          [{tr,{x,0},{t_map,{t_integer,{0,255}},{t_integer,{0,16777215}}}},
           {y,1}]}.
    {move,{integer,122},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,97},{x,0}}.
    {line,[{location,"mc_SUITE.erl",197}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,331}}. % '-mixed/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,64},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",198}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",200}]}.
    {call,2,{f,86}}. % mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",201}]}.
    {call,2,{f,92}}. % mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {line,[{location,"mc_SUITE.erl",202}]}.
    {call,2,{f,102}}. % mixed_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"mc_SUITE.erl",204}]}.
    {call,1,{f,109}}. % sum_of_triangular_numbers/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,10},{x,0}}.
    {call_last,1,{f,109},0}. % sum_of_triangular_numbers/1
  {label,84}.
    {line,[{location,"mc_SUITE.erl",195}]}.
    {badmatch,{x,0}}.


{function, mixed_1, 2, 86}.
  {label,85}.
    {line,[{location,"mc_SUITE.erl",209}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed_1},2}.
  {label,86}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",210}]}.
    {call,1,{f,327}}. % '-mixed_1/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",211}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,87},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,87}.
    {call,1,{f,321}}. % '-mixed_1/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"mc_SUITE.erl",212}]}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,90},[{tr,{x,0},{t_list,any,nil}},{y,2}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",213}]}.
    {call,2,{f,311}}. % '-mixed_1/2-lc$^2/1-2-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {move,{y,3},{x,2}}.
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",214}]}.
    {call,2,{f,301}}. % '-mixed_1/2-lc$^4/1-4-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,89},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,1},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}}]}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"mc_SUITE.erl",215}]}.
    {call,2,{f,295}}. % '-mixed_1/2-lc$^6/1-6-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,88},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,88}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{location,"mc_SUITE.erl",214}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{location,"mc_SUITE.erl",212}]}.
    {badmatch,{x,0}}.


{function, mixed_2, 2, 92}.
  {label,91}.
    {line,[{location,"mc_SUITE.erl",219}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed_2},2}.
  {label,92}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",220}]}.
    {call,1,{f,291}}. % '-mixed_2/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"mc_SUITE.erl",221}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,93},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,93}.
    {call,1,{f,285}}. % '-mixed_2/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",222}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,94},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,94}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,279}}. % '-mixed_2/2-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",223}]}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,{f,100},[{tr,{x,0},{t_list,any,nil}},{y,3}]}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",225}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,95},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,95}.
    {move,{y,4},{x,1}}.
    {call,2,{f,270}}. % '-mixed_2/2-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {move,{x,0},{y,3}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"mc_SUITE.erl",226}]}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{x,0},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,96},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,96}.
    {move,{y,4},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,1,4}.
    {call,2,{f,261}}. % '-mixed_2/2-lc$^5/1-5-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,99},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,2},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}}]}.
    {move,{y,3},{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,3}.
    {line,[{location,"mc_SUITE.erl",227}]}.
    {call,2,{f,255}}. % '-mixed_2/2-lc$^7/1-7-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,any},2 => {t_integer,{0,65535}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,98},
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
    {line,[{location,"mc_SUITE.erl",228}]}.
    {call,2,{f,249}}. % '-mixed_2/2-lc$^9/1-9-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,97},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},nil}},
           {tr,{y,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,any},
                                  2 => {t_integer,{0,65535}}}},
                       nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,97}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{location,"mc_SUITE.erl",227}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{location,"mc_SUITE.erl",226}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{location,"mc_SUITE.erl",223}]}.
    {badmatch,{x,0}}.


{function, mixed_3, 2, 102}.
  {label,101}.
    {line,[{location,"mc_SUITE.erl",232}]}.
    {func_info,{atom,mc_SUITE},{atom,mixed_3},2}.
  {label,102}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{atom,trim},{x,2}}.
    {line,[{location,"mc_SUITE.erl",233}]}.
    {call_ext,3,{extfunc,lists,zip,3}}.
    {call,1,{f,244}}. % '-mixed_3/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"mc_SUITE.erl",234}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,2}}.
    {test,is_nil,{f,103},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,103}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,2,{f,239}}. % '-mixed_3/2-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {move,{x,0},{y,2}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",235}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,104},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,104}.
    {call,1,{f,234}}. % '-mixed_3/2-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call_ext,1,{extfunc,lists,unzip,1}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"mc_SUITE.erl",237}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,105},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,105}.
    {move,{y,3},{x,1}}.
    {init_yregs,{list,[{y,3}]}}.
    {call,2,{f,223}}. % '-mixed_3/2-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {get_tuple_element,{y,0},0,{y,3}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,2}}.
    {move,{x,0},{y,2}}.
    {trim,1,3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"mc_SUITE.erl",238}]}.
    {call,2,{f,217}}. % '-mixed_3/2-lc$^5/1-5-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{2 => {t_integer,{0,65535}}}},
                     nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,107},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,#{2 => {t_integer,{0,65535}}}},nil}},
           {tr,{y,1},{t_list,{t_tuple,2,true,#{}},nil}}]}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"mc_SUITE.erl",239}]}.
    {call,2,{f,211}}. % '-mixed_3/2-lc$^7/1-7-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,106},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{}},nil}},
           {tr,{y,0},
               {t_list,{t_tuple,2,true,#{2 => {t_integer,{0,65535}}}},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,106}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{location,"mc_SUITE.erl",238}]}.
    {badmatch,{x,0}}.


{function, sum_of_triangular_numbers, 1, 109}.
  {label,108}.
    {line,[{location,"mc_SUITE.erl",243}]}.
    {func_info,{atom,mc_SUITE},{atom,sum_of_triangular_numbers},1}.
  {label,109}.
    {'%',{var_info,{x,0},[{type,{t_integer,{7,10}}}]}}.
    {line,[{location,"mc_SUITE.erl",244}]}.
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
    {line,[{location,"mc_SUITE.erl",245}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,203}}. % '-sum_of_triangular_numbers/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"mc_SUITE.erl",246}]}.
    {call,1,{f,193}}. % '-sum_of_triangular_numbers/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",247}]}.
    {call,1,{f,183}}. % '-sum_of_triangular_numbers/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {call_ext,1,{extfunc,lists,flatten,1}}.
    {test,is_eq_exact,
          {f,112},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,2}.
    {line,[{location,"mc_SUITE.erl",248}]}.
    {call,1,{f,173}}. % '-sum_of_triangular_numbers/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_eq_exact,{f,111},[{x,0},{tr,{y,1},{t_integer,{84,220}}}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"mc_SUITE.erl",249}]}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_eq_exact,{f,110},[{x,0},{tr,{y,0},{t_integer,{84,220}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,110}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{location,"mc_SUITE.erl",248}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{location,"mc_SUITE.erl",247}]}.
    {badmatch,{x,0}}.


{function, shadow, 1, 114}.
  {label,113}.
    {line,[{location,"mc_SUITE.erl",252}]}.
    {func_info,{atom,mc_SUITE},{atom,shadow},1}.
  {label,114}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,nomatch},{x,0}}.
    {line,[{location,"mc_SUITE.erl",254}]}.
    {call,1,{f,133}}. % id/1
    {move,{integer,9},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"mc_SUITE.erl",255}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,169}}. % '-shadow/1-lc$^0/1-0-'/1
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
    {line,[{location,"mc_SUITE.erl",256}]}.
    {call,1,{f,133}}. % id/1
    {test,is_map,{f,117},[{x,0}]}.
    {get_map_elements,{f,117},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,9},
                             {x,3},
                             {integer,8},
                             {x,2},
                             {integer,7},
                             {x,1}]}}.
    {test,is_eq_exact,{f,117},[{x,1},{integer,8}]}.
    {test,is_eq_exact,{f,117},[{x,2},{integer,9}]}.
    {test,is_eq_exact,{f,117},[{x,3},{integer,10}]}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"mc_SUITE.erl",257}]}.
    {call,1,{f,133}}. % id/1
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,115},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,115}.
    {trim,1,0}.
    {call,1,{f,163}}. % '-shadow/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',10}},nil}}]}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test,is_eq_exact,
          {f,116},
          [{tr,{x,0},{t_list,{t_number,{'-inf',10}},nil}},{literal,"\b\t"}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,116}.
    {badmatch,{x,0}}.
  {label,117}.
    {line,[{location,"mc_SUITE.erl",256}]}.
    {badmatch,{x,0}}.


{function, bad_generators, 1, 119}.
  {label,118}.
    {line,[{location,"mc_SUITE.erl",261}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generators},1}.
  {label,119}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {'catch',{y,5},{f,120}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"mc_SUITE.erl",270}]}.
    {call,1,{f,135}}. % bad_generator/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call,1,{f,133}}. % id/1
  {label,120}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,131},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,131},[{x,1}]}.
    {test,test_arity,{f,131},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,131},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,131},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,131},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,131},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,4}]}]}.
    {'catch',{y,4},{f,121}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\n"},{location,"mc_SUITE.erl",275}]}.
    {call,1,{f,138}}. % bad_generator_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,133}}. % id/1
  {label,121}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,130},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,130},[{x,1}]}.
    {test,test_arity,{f,130},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,130},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,130},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,130},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,130},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,7}]}]}.
    {'catch',{y,3},{f,122}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\b"},{location,"mc_SUITE.erl",280}]}.
    {call,1,{f,141}}. % bad_generator_mc/1
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {call,1,{f,133}}. % id/1
  {label,122}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,129},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,129},[{x,1}]}.
    {test,test_arity,{f,129},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,129},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,129},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,129},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,129},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,10}]}]}.
    {'catch',{y,2},{f,123}}.
    {move,{literal,[65535|#{}]},{x,0}}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",287}]}.
    {call,1,{f,135}}. % bad_generator/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call,1,{f,133}}. % id/1
  {label,123}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,128},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,128},[{x,1}]}.
    {test,test_arity,{f,128},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,128},[{x,2},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,128},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,128},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,128},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,4}]}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,128},[{x,1},{literal,[65535|#{}]}]}.
    {'catch',{y,1},{f,124}}.
    {move,{literal,[65535|#{}]},{x,0}}.
    {line,[{scope,[4]},{location,"mc_SUITE.erl",292}]}.
    {call,1,{f,138}}. % bad_generator_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,133}}. % id/1
  {label,124}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,127},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,127},[{x,1}]}.
    {test,test_arity,{f,127},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,127},[{x,2},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,127},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,127},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,127},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,7}]}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,127},[{x,1},{literal,[65535|#{}]}]}.
    {'catch',{y,0},{f,125}}.
    {move,{literal,[65535|#{}]},{x,0}}.
    {line,[{scope,[2]},{location,"mc_SUITE.erl",297}]}.
    {call,1,{f,141}}. % bad_generator_mc/1
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {call,1,{f,133}}. % id/1
  {label,125}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,126},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,126},[{x,1}]}.
    {test,test_arity,{f,126},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,126},[{x,2},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,126},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,126},[{x,1},4,{atom,mc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,126},
          [{x,1},{literal,[{file,"bad_mc.erl"},{line,10}]}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,126},[{x,1},{literal,[65535|#{}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,126}.
    {line,[{scope,[0]},{location,"mc_SUITE.erl",294}]}.
    {badmatch,{x,0}}.
  {label,127}.
    {line,[{scope,[2]},{location,"mc_SUITE.erl",289}]}.
    {badmatch,{x,0}}.
  {label,128}.
    {line,[{scope,[4]},{location,"mc_SUITE.erl",284}]}.
    {badmatch,{x,0}}.
  {label,129}.
    {line,[{scope,[6]},{location,"mc_SUITE.erl",277}]}.
    {badmatch,{x,0}}.
  {label,130}.
    {line,[{scope,"\b"},{location,"mc_SUITE.erl",272}]}.
    {badmatch,{x,0}}.
  {label,131}.
    {line,[{scope,"\n"},{location,"mc_SUITE.erl",267}]}.
    {badmatch,{x,0}}.


{function, id, 1, 133}.
  {label,132}.
    {line,[{location,"mc_SUITE.erl",301}]}.
    {func_info,{atom,mc_SUITE},{atom,id},1}.
  {label,133}.
    return.


{function, bad_generator, 1, 135}.
  {label,134}.
    {line,[{location,"bad_mc.erl",2}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generator},1}.
  {label,135}.
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
    {test,is_nil,{f,136},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,136}.
    {call_last,1,{f,158},1}. % '-bad_generator/1-lc$^0/1-0-'/1


{function, bad_generator_bc, 1, 138}.
  {label,137}.
    {line,[{location,"bad_mc.erl",5}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generator_bc},1}.
  {label,138}.
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
    {test,is_nil,{f,139},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,139}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,153},2}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2


{function, bad_generator_mc, 1, 141}.
  {label,140}.
    {line,[{location,"bad_mc.erl",8}]}.
    {func_info,{atom,mc_SUITE},{atom,bad_generator_mc},1}.
  {label,141}.
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
    {test,is_nil,{f,142},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,142}.
    {trim,1,0}.
    {call,1,{f,148}}. % '-bad_generator_mc/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext_last,1,{extfunc,maps,from_list,1},0}.


{function, module_info, 0, 144}.
  {label,143}.
    {line,[]}.
    {func_info,{atom,mc_SUITE},{atom,module_info},0}.
  {label,144}.
    {move,{atom,mc_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 146}.
  {label,145}.
    {line,[]}.
    {func_info,{atom,mc_SUITE},{atom,module_info},1}.
  {label,146}.
    {move,{x,0},{x,1}}.
    {move,{atom,mc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-bad_generator_mc/1-lc$^0/1-0-', 1, 148}.
  {label,147}.
    {line,[{location,"bad_mc.erl",10}]}.
    {func_info,{atom,mc_SUITE},{atom,'-bad_generator_mc/1-lc$^0/1-0-'},1}.
  {label,148}.
    {test,is_nonempty_list,{f,149},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,148},0}. % '-bad_generator_mc/1-lc$^0/1-0-'/1
  {label,149}.
    {test,is_tuple,{f,150},[{x,0}]}.
    {test,test_arity,{f,151},[{x,0},3]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,148}}. % '-bad_generator_mc/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,2},{x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,150}.
    {test,is_eq_exact,{f,151},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,151}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generator_bc/1-lbc$^0/2-0-', 2, 153}.
  {label,152}.
    {line,[{location,"bad_mc.erl",6}]}.
    {func_info,{atom,mc_SUITE},{atom,'-bad_generator_bc/1-lbc$^0/2-0-'},2}.
  {label,153}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,154},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bad_mc.erl",7}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,153},1}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2
  {label,154}.
    {test,is_tuple,{f,155},[{x,0}]}.
    {test,test_arity,{f,156},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {line,[{location,"bad_mc.erl",6}]}.
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
    {call_only,2,{f,153}}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2
  {label,155}.
    {test,is_eq_exact,{f,156},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,156}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generator/1-lc$^0/1-0-', 1, 158}.
  {label,157}.
    {line,[{location,"bad_mc.erl",4}]}.
    {func_info,{atom,mc_SUITE},{atom,'-bad_generator/1-lc$^0/1-0-'},1}.
  {label,158}.
    {test,is_nonempty_list,{f,159},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,158},0}. % '-bad_generator/1-lc$^0/1-0-'/1
  {label,159}.
    {test,is_tuple,{f,160},[{x,0}]}.
    {test,test_arity,{f,161},[{x,0},3]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,158}}. % '-bad_generator/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,160}.
    {test,is_eq_exact,{f,161},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,161}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-shadow/1-lc$^1/1-1-', 1, 163}.
  {label,162}.
    {line,[{location,"mc_SUITE.erl",257}]}.
    {func_info,{atom,mc_SUITE},{atom,'-shadow/1-lc$^1/1-1-'},1}.
  {label,163}.
    {test,is_nonempty_list,{f,164},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,163},0}. % '-shadow/1-lc$^1/1-1-'/1
  {label,164}.
    {test,is_tuple,{f,166},[{x,0}]}.
    {test,test_arity,{f,167},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_lt,{f,165},[{x,1},{integer,10}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,163}}. % '-shadow/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',10}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,165}.
    {call_only,1,{f,163}}. % '-shadow/1-lc$^1/1-1-'/1
  {label,166}.
    {test,is_eq_exact,{f,167},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,167}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-shadow/1-lc$^0/1-0-', 1, 169}.
  {label,168}.
    {line,[{location,"mc_SUITE.erl",255}]}.
    {func_info,{atom,mc_SUITE},{atom,'-shadow/1-lc$^0/1-0-'},1}.
  {label,169}.
    {test,is_nonempty_list,{f,170},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,169}}. % '-shadow/1-lc$^0/1-0-'/1
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
  {label,170}.
    {test,is_nil,{f,171},[{x,0}]}.
    return.
  {label,171}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sum_of_triangular_numbers/1-lc$^6/1-6-', 1, 173}.
  {label,172}.
    {line,[{location,"mc_SUITE.erl",248}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^6/1-6-'},
               1}.
  {label,173}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_nonempty_list,{f,175},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,174},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,174}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,177}}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,173}}. % '-sum_of_triangular_numbers/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,175}.
    return.


{function, '-sum_of_triangular_numbers/1-lc$^7/1-7-', 1, 177}.
  {label,176}.
    {line,[{location,"mc_SUITE.erl",248}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^7/1-7-'},
               1}.
  {label,177}.
    {test,is_nonempty_list,{f,178},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,177},0}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1
  {label,178}.
    {test,is_tuple,{f,180},[{x,0}]}.
    {test,test_arity,{f,181},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,179},[{x,2},{x,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,177}}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,179}.
    {call_only,1,{f,177}}. % '-sum_of_triangular_numbers/1-lc$^7/1-7-'/1
  {label,180}.
    {test,is_eq_exact,{f,181},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,181}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sum_of_triangular_numbers/1-lc$^4/1-4-', 1, 183}.
  {label,182}.
    {line,[{location,"mc_SUITE.erl",247}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^4/1-4-'},
               1}.
  {label,183}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_nonempty_list,{f,185},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,184},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,184}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,187}}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,183}}. % '-sum_of_triangular_numbers/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,185}.
    return.


{function, '-sum_of_triangular_numbers/1-lc$^5/1-5-', 1, 187}.
  {label,186}.
    {line,[{location,"mc_SUITE.erl",247}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^5/1-5-'},
               1}.
  {label,187}.
    {test,is_nonempty_list,{f,188},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,187},0}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1
  {label,188}.
    {test,is_tuple,{f,190},[{x,0}]}.
    {test,test_arity,{f,191},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,189},[{x,2},{x,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,187}}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,189}.
    {call_only,1,{f,187}}. % '-sum_of_triangular_numbers/1-lc$^5/1-5-'/1
  {label,190}.
    {test,is_eq_exact,{f,191},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,191}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sum_of_triangular_numbers/1-lc$^2/1-2-', 1, 193}.
  {label,192}.
    {line,[{location,"mc_SUITE.erl",246}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^2/1-2-'},
               1}.
  {label,193}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_nonempty_list,{f,195},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,194},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,194}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,197},2}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2
  {label,195}.
    return.


{function, '-sum_of_triangular_numbers/1-lc$^3/1-3-', 2, 197}.
  {label,196}.
    {line,[{location,"mc_SUITE.erl",246}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^3/1-3-'},
               2}.
  {label,197}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test,is_nonempty_list,{f,198},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,197},1}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2
  {label,198}.
    {test,is_tuple,{f,200},[{x,0}]}.
    {test,test_arity,{f,201},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_eq_exact,{f,199},[{x,3},{x,2}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,197}}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,199}.
    {call_only,2,{f,197}}. % '-sum_of_triangular_numbers/1-lc$^3/1-3-'/2
  {label,200}.
    {test,is_eq_exact,{f,201},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,193}}. % '-sum_of_triangular_numbers/1-lc$^2/1-2-'/1
  {label,201}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sum_of_triangular_numbers/1-lc$^0/1-0-', 1, 203}.
  {label,202}.
    {line,[{location,"mc_SUITE.erl",245}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^0/1-0-'},
               1}.
  {label,203}.
    {test,is_nonempty_list,{f,204},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,207}}. % '-sum_of_triangular_numbers/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"mc_SUITE.erl",245}]}.
    {call,1,{f,203}}. % '-sum_of_triangular_numbers/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_map,any,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,204}.
    {test,is_nil,{f,205},[{x,0}]}.
    return.
  {label,205}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sum_of_triangular_numbers/1-lc$^1/1-1-', 1, 207}.
  {label,206}.
    {line,[{location,"mc_SUITE.erl",245}]}.
    {func_info,{atom,mc_SUITE},
               {atom,'-sum_of_triangular_numbers/1-lc$^1/1-1-'},
               1}.
  {label,207}.
    {test,is_nonempty_list,{f,208},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,207}}. % '-sum_of_triangular_numbers/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,208}.
    {test,is_nil,{f,209},[{x,0}]}.
    return.
  {label,209}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_3/2-lc$^7/1-7-', 2, 211}.
  {label,210}.
    {line,[{location,"mc_SUITE.erl",239}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^7/1-7-'},2}.
  {label,211}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,212},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,214}}. % '-mixed_3/2-lc$^8/1-8-'/4
  {label,212}.
    return.


{function, '-mixed_3/2-lc$^8/1-8-', 4, 214}.
  {label,213}.
    {line,[{location,"mc_SUITE.erl",239}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^8/1-8-'},4}.
  {label,214}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,215},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,214}}. % '-mixed_3/2-lc$^8/1-8-'/4
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,215}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,211}}. % '-mixed_3/2-lc$^7/1-7-'/2


{function, '-mixed_3/2-lc$^5/1-5-', 2, 217}.
  {label,216}.
    {line,[{location,"mc_SUITE.erl",238}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^5/1-5-'},2}.
  {label,217}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,218},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,220}}. % '-mixed_3/2-lc$^6/1-6-'/4
  {label,218}.
    return.


{function, '-mixed_3/2-lc$^6/1-6-', 4, 220}.
  {label,219}.
    {line,[{location,"mc_SUITE.erl",238}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^6/1-6-'},4}.
  {label,220}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_match,{f,221},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,4,{literal,[]},16,1,{x,4}}]}}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,4,{f,220}}. % '-mixed_3/2-lc$^6/1-6-'/4
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
  {label,221}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,217}}. % '-mixed_3/2-lc$^5/1-5-'/2


{function, '-mixed_3/2-lc$^3/1-3-', 2, 223}.
  {label,222}.
    {line,[{location,"mc_SUITE.erl",237}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^3/1-3-'},2}.
  {label,223}.
    {'%',{var_info,{x,1},[{type,{t_map,any,any}}]}}.
    {test,is_nonempty_list,{f,224},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,223},1}. % '-mixed_3/2-lc$^3/1-3-'/2
  {label,224}.
    {test,is_tuple,{f,226},[{x,0}]}.
    {test,test_arity,{f,227},[{x,0},3]}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,225},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,225}.
    {get_tuple_element,{y,1},0,{x,2}}.
    {get_tuple_element,{y,1},2,{x,1}}.
    {move,{y,0},{x,3}}.
    {call_last,4,{f,229},2}. % '-mixed_3/2-lc$^4/1-4-'/4
  {label,226}.
    {test,is_eq_exact,{f,227},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,227}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_3/2-lc$^4/1-4-', 4, 229}.
  {label,228}.
    {line,[{location,"mc_SUITE.erl",237}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^4/1-4-'},4}.
  {label,229}.
    {'%',{var_info,{x,3},[{type,{t_map,any,any}}]}}.
    {test,is_nonempty_list,{f,230},[{x,0}]}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,229},3}. % '-mixed_3/2-lc$^4/1-4-'/4
  {label,230}.
    {test,is_tuple,{f,231},[{x,0}]}.
    {test,test_arity,{f,232},[{x,0},3]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,4,{f,229}}. % '-mixed_3/2-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,231}.
    {test,is_eq_exact,{f,232},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,223}}. % '-mixed_3/2-lc$^3/1-3-'/2
  {label,232}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_3/2-lc$^2/1-2-', 1, 234}.
  {label,233}.
    {line,[{location,"mc_SUITE.erl",235}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^2/1-2-'},1}.
  {label,234}.
    {test,is_nonempty_list,{f,235},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,234},0}. % '-mixed_3/2-lc$^2/1-2-'/1
  {label,235}.
    {test,is_tuple,{f,236},[{x,0}]}.
    {test,test_arity,{f,237},[{x,0},3]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,234}}. % '-mixed_3/2-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,236}.
    {test,is_eq_exact,{f,237},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,237}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_3/2-lbc$^1/2-1-', 2, 239}.
  {label,238}.
    {line,[{location,"mc_SUITE.erl",234}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lbc$^1/2-1-'},2}.
  {label,239}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,240},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,239},1}. % '-mixed_3/2-lbc$^1/2-1-'/2
  {label,240}.
    {test,is_tuple,{f,241},[{x,0}]}.
    {test,test_arity,{f,242},[{x,0},3]}.
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
    {call_only,2,{f,239}}. % '-mixed_3/2-lbc$^1/2-1-'/2
  {label,241}.
    {test,is_eq_exact,{f,242},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,242}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_3/2-lc$^0/1-0-', 1, 244}.
  {label,243}.
    {line,[{location,"mc_SUITE.erl",233}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_3/2-lc$^0/1-0-'},1}.
  {label,244}.
    {test,is_nonempty_list,{f,246},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,245},[{x,1}]}.
    {test,test_arity,{f,245},[{x,1},2]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,244}}. % '-mixed_3/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,245}.
    {call_only,1,{f,244}}. % '-mixed_3/2-lc$^0/1-0-'/1
  {label,246}.
    {test,is_nil,{f,247},[{x,0}]}.
    return.
  {label,247}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_2/2-lc$^9/1-9-', 2, 249}.
  {label,248}.
    {line,[{location,"mc_SUITE.erl",228}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^9/1-9-'},2}.
  {label,249}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,250},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,252}}. % '-mixed_2/2-lc$^10/1-10-'/4
  {label,250}.
    return.


{function, '-mixed_2/2-lc$^10/1-10-', 4, 252}.
  {label,251}.
    {line,[{location,"mc_SUITE.erl",228}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^10/1-10-'},4}.
  {label,252}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,253},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,252}}. % '-mixed_2/2-lc$^10/1-10-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,253}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,249}}. % '-mixed_2/2-lc$^9/1-9-'/2


{function, '-mixed_2/2-lc$^7/1-7-', 2, 255}.
  {label,254}.
    {line,[{location,"mc_SUITE.erl",227}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^7/1-7-'},2}.
  {label,255}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,256},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[]},16,1,{x,2}},
                         {get_tail,3,1,{x,3}}]}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,258}}. % '-mixed_2/2-lc$^8/1-8-'/4
  {label,256}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed_2/2-lc$^8/1-8-', 4, 258}.
  {label,257}.
    {line,[{location,"mc_SUITE.erl",227}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^8/1-8-'},4}.
  {label,258}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,65535}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,16,false}}]}}.
    {test,is_nonempty_list,{f,259},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,258}}. % '-mixed_2/2-lc$^8/1-8-'/4
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
  {label,259}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,255}}. % '-mixed_2/2-lc$^7/1-7-'/2


{function, '-mixed_2/2-lc$^5/1-5-', 2, 261}.
  {label,260}.
    {line,[{location,"mc_SUITE.erl",226}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^5/1-5-'},2}.
  {label,261}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,262},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,261},1}. % '-mixed_2/2-lc$^5/1-5-'/2
  {label,262}.
    {test,is_tuple,{f,264},[{x,0}]}.
    {test,test_arity,{f,265},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_nil,{f,263},[{x,2}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,267}}. % '-mixed_2/2-lc$^6/1-6-'/4
  {label,263}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,261}}. % '-mixed_2/2-lc$^5/1-5-'/2
  {label,264}.
    {test,is_eq_exact,{f,265},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,265}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_2/2-lc$^6/1-6-', 4, 267}.
  {label,266}.
    {line,[{location,"mc_SUITE.erl",226}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^6/1-6-'},4}.
  {label,267}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,268},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,267}}. % '-mixed_2/2-lc$^6/1-6-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,268}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,261}}. % '-mixed_2/2-lc$^5/1-5-'/2


{function, '-mixed_2/2-lc$^3/1-3-', 2, 270}.
  {label,269}.
    {line,[{location,"mc_SUITE.erl",225}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^3/1-3-'},2}.
  {label,270}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,271},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,270},1}. % '-mixed_2/2-lc$^3/1-3-'/2
  {label,271}.
    {test,is_tuple,{f,273},[{x,0}]}.
    {test,test_arity,{f,274},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_nil,{f,272},[{x,2}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,276}}. % '-mixed_2/2-lc$^4/1-4-'/4
  {label,272}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,270}}. % '-mixed_2/2-lc$^3/1-3-'/2
  {label,273}.
    {test,is_eq_exact,{f,274},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,274}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_2/2-lc$^4/1-4-', 4, 276}.
  {label,275}.
    {line,[{location,"mc_SUITE.erl",225}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^4/1-4-'},4}.
  {label,276}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test,is_nonempty_list,{f,277},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,276}}. % '-mixed_2/2-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,277}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,270}}. % '-mixed_2/2-lc$^3/1-3-'/2


{function, '-mixed_2/2-lbc$^2/2-2-', 2, 279}.
  {label,278}.
    {line,[{location,"mc_SUITE.erl",222}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lbc$^2/2-2-'},2}.
  {label,279}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,280},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,279},1}. % '-mixed_2/2-lbc$^2/2-2-'/2
  {label,280}.
    {test,is_tuple,{f,282},[{x,0}]}.
    {test,test_arity,{f,283},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_nil,{f,281},[{x,2}]}.
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
    {call_only,2,{f,279}}. % '-mixed_2/2-lbc$^2/2-2-'/2
  {label,281}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,279}}. % '-mixed_2/2-lbc$^2/2-2-'/2
  {label,282}.
    {test,is_eq_exact,{f,283},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,283}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_2/2-lc$^1/1-1-', 1, 285}.
  {label,284}.
    {line,[{location,"mc_SUITE.erl",221}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^1/1-1-'},1}.
  {label,285}.
    {test,is_nonempty_list,{f,286},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,285},0}. % '-mixed_2/2-lc$^1/1-1-'/1
  {label,286}.
    {test,is_tuple,{f,288},[{x,0}]}.
    {test,test_arity,{f,289},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,287},[{x,2}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,285}}. % '-mixed_2/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,287}.
    {call_only,1,{f,285}}. % '-mixed_2/2-lc$^1/1-1-'/1
  {label,288}.
    {test,is_eq_exact,{f,289},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,289}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_2/2-lc$^0/1-0-', 1, 291}.
  {label,290}.
    {line,[{location,"mc_SUITE.erl",220}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_2/2-lc$^0/1-0-'},1}.
  {label,291}.
    {test,is_nonempty_list,{f,292},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,291}}. % '-mixed_2/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,292}.
    {test,is_nil,{f,293},[{x,0}]}.
    return.
  {label,293}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_1/2-lc$^6/1-6-', 2, 295}.
  {label,294}.
    {line,[{location,"mc_SUITE.erl",215}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^6/1-6-'},2}.
  {label,295}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,296},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{x,1},{x,0}}.
    {call_only,4,{f,298}}. % '-mixed_1/2-lc$^7/1-7-'/4
  {label,296}.
    return.


{function, '-mixed_1/2-lc$^7/1-7-', 4, 298}.
  {label,297}.
    {line,[{location,"mc_SUITE.erl",215}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^7/1-7-'},4}.
  {label,298}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,any}}]}}.
    {test,is_nonempty_list,{f,299},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,4,{f,298}}. % '-mixed_1/2-lc$^7/1-7-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,299}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,295}}. % '-mixed_1/2-lc$^6/1-6-'/2


{function, '-mixed_1/2-lc$^4/1-4-', 2, 301}.
  {label,300}.
    {line,[{location,"mc_SUITE.erl",214}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^4/1-4-'},2}.
  {label,301}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,any,nil}}]}}.
    {test,is_nonempty_list,{f,303},[{x,0}]}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,302},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,302}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,3}}.
    {call_last,4,{f,305},4}. % '-mixed_1/2-lc$^5/1-5-'/4
  {label,303}.
    return.


{function, '-mixed_1/2-lc$^5/1-5-', 4, 305}.
  {label,304}.
    {line,[{location,"mc_SUITE.erl",214}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^5/1-5-'},4}.
  {label,305}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_map,any,nil}}]}}.
    {test,is_nonempty_list,{f,306},[{x,0}]}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,305},3}. % '-mixed_1/2-lc$^5/1-5-'/4
  {label,306}.
    {test,is_tuple,{f,308},[{x,0}]}.
    {test,test_arity,{f,309},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,307},[{x,5}]}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,4,{f,305}}. % '-mixed_1/2-lc$^5/1-5-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,307}.
    {call_only,4,{f,305}}. % '-mixed_1/2-lc$^5/1-5-'/4
  {label,308}.
    {test,is_eq_exact,{f,309},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,301}}. % '-mixed_1/2-lc$^4/1-4-'/2
  {label,309}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_1/2-lc$^2/1-2-', 2, 311}.
  {label,310}.
    {line,[{location,"mc_SUITE.erl",213}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^2/1-2-'},2}.
  {label,311}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,any,nil}}]}}.
    {test,is_nonempty_list,{f,313},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,312},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,312}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,3}}.
    {call_last,4,{f,315},3}. % '-mixed_1/2-lc$^3/1-3-'/4
  {label,313}.
    return.


{function, '-mixed_1/2-lc$^3/1-3-', 4, 315}.
  {label,314}.
    {line,[{location,"mc_SUITE.erl",213}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^3/1-3-'},4}.
  {label,315}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,any},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_map,any,nil}}]}}.
    {test,is_nonempty_list,{f,316},[{x,0}]}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,315},3}. % '-mixed_1/2-lc$^3/1-3-'/4
  {label,316}.
    {test,is_tuple,{f,318},[{x,0}]}.
    {test,test_arity,{f,319},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,317},[{x,5}]}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,4,{f,315}}. % '-mixed_1/2-lc$^3/1-3-'/4
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,317}.
    {call_only,4,{f,315}}. % '-mixed_1/2-lc$^3/1-3-'/4
  {label,318}.
    {test,is_eq_exact,{f,319},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,311}}. % '-mixed_1/2-lc$^2/1-2-'/2
  {label,319}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_1/2-lc$^1/1-1-', 1, 321}.
  {label,320}.
    {line,[{location,"mc_SUITE.erl",211}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^1/1-1-'},1}.
  {label,321}.
    {test,is_nonempty_list,{f,322},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,321},0}. % '-mixed_1/2-lc$^1/1-1-'/1
  {label,322}.
    {test,is_tuple,{f,324},[{x,0}]}.
    {test,test_arity,{f,325},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nil,{f,323},[{x,2}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,321}}. % '-mixed_1/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,323}.
    {call_only,1,{f,321}}. % '-mixed_1/2-lc$^1/1-1-'/1
  {label,324}.
    {test,is_eq_exact,{f,325},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,325}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_1/2-lc$^0/1-0-', 1, 327}.
  {label,326}.
    {line,[{location,"mc_SUITE.erl",210}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed_1/2-lc$^0/1-0-'},1}.
  {label,327}.
    {test,is_nonempty_list,{f,328},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,327}}. % '-mixed_1/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,328}.
    {test,is_nil,{f,329},[{x,0}]}.
    return.
  {label,329}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^2/1-2-', 1, 331}.
  {label,330}.
    {line,[{location,"mc_SUITE.erl",197}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed/1-lc$^2/1-2-'},1}.
  {label,331}.
    {test,is_nonempty_list,{f,332},[{x,0}]}.
    {allocate_heap,1,2,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {call_ext,1,{extfunc,erlang,list_to_atom,1}}.
    {swap,{y,0},{x,0}}.
    {call,1,{f,331}}. % '-mixed/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,332}.
    {test,is_nil,{f,333},[{x,0}]}.
    return.
  {label,333}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^1/1-1-', 1, 335}.
  {label,334}.
    {line,[{location,"mc_SUITE.erl",195}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed/1-lc$^1/1-1-'},1}.
  {label,335}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,336},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {integer,2,{literal,[]},24,1,{x,2}}]}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,335}}. % '-mixed/1-lc$^1/1-1-'/1
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
  {label,336}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lbc$^0/2-0-', 2, 338}.
  {label,337}.
    {line,[{location,"mc_SUITE.erl",194}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,338}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,339},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,338},1}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,339}.
    {test,is_tuple,{f,340},[{x,0}]}.
    {test,test_arity,{f,341},[{x,0},3]}.
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
    {call_only,2,{f,338}}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,340}.
    {test,is_eq_exact,{f,341},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,341}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-duplicate_keys/1-lc$^1/1-1-', 1, 343}.
  {label,342}.
    {line,[{location,"mc_SUITE.erl",188}]}.
    {func_info,{atom,mc_SUITE},{atom,'-duplicate_keys/1-lc$^1/1-1-'},1}.
  {label,343}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {test,is_nonempty_list,{f,344},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {call_only,3,{f,346}}. % '-duplicate_keys/1-lc$^2/1-2-'/3
  {label,344}.
    return.


{function, '-duplicate_keys/1-lc$^2/1-2-', 3, 346}.
  {label,345}.
    {line,[{location,"mc_SUITE.erl",189}]}.
    {func_info,{atom,mc_SUITE},{atom,'-duplicate_keys/1-lc$^2/1-2-'},3}.
  {label,346}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[a,b]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,347},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,3,{f,346}}. % '-duplicate_keys/1-lc$^2/1-2-'/3
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
  {label,347}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,343}}. % '-duplicate_keys/1-lc$^1/1-1-'/1


{function, '-duplicate_keys/1-lc$^0/1-0-', 1, 349}.
  {label,348}.
    {line,[{location,"mc_SUITE.erl",185}]}.
    {func_info,{atom,mc_SUITE},{atom,'-duplicate_keys/1-lc$^0/1-0-'},1}.
  {label,349}.
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
    {test,is_nonempty_list,{f,350},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,349}}. % '-duplicate_keys/1-lc$^0/1-0-'/1
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
  {label,350}.
    return.


{function, '-test_iterator/2-lc$^0/1-0-', 2, 352}.
  {label,351}.
    {line,[{location,"mc_SUITE.erl",170}]}.
    {func_info,{atom,mc_SUITE},{atom,'-test_iterator/2-lc$^0/1-0-'},2}.
  {label,352}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_nonempty_list,{f,353},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,352},1}. % '-test_iterator/2-lc$^0/1-0-'/2
  {label,353}.
    {test,is_tuple,{f,354},[{x,0}]}.
    {test,test_arity,{f,355},[{x,0},3]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,352}}. % '-test_iterator/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,354}.
    {test,is_eq_exact,{f,355},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,355}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mc_double/1-lc$^5/1-5-', 1, 357}.
  {label,356}.
    {line,[{location,"mc_SUITE.erl",155}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^5/1-5-'},1}.
  {label,357}.
    {test,is_nonempty_list,{f,358},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,357},0}. % '-mc_double/1-lc$^5/1-5-'/1
  {label,358}.
    {test,is_tuple,{f,361},[{x,0}]}.
    {test,test_arity,{f,362},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,360},[{x,1},2,{atom,key}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,360},[{x,0},{x,1}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"mc_SUITE.erl",156}]}.
    {call,1,{f,133}}. % id/1
    {gc_bif,'rem',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,359},[{tr,{x,0},{t_integer,{-1,1}}},{integer,0}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,357},2}. % '-mc_double/1-lc$^5/1-5-'/1
  {label,359}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"mc_SUITE.erl",155}]}.
    {call,1,{f,357}}. % '-mc_double/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => nil}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,360}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,357}}. % '-mc_double/1-lc$^5/1-5-'/1
  {label,361}.
    {test,is_eq_exact,{f,362},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,362}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mc_double/1-lc$^4/1-4-', 1, 364}.
  {label,363}.
    {line,[{location,"mc_SUITE.erl",153}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^4/1-4-'},1}.
  {label,364}.
    {test,is_nonempty_list,{f,365},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,364},0}. % '-mc_double/1-lc$^4/1-4-'/1
  {label,365}.
    {test,is_tuple,{f,367},[{x,0}]}.
    {test,test_arity,{f,368},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,366},[{x,1},2,{atom,key}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,366},[{x,0},{x,1}]}.
    {gc_bif,'rem',{f,366},3,[{x,1},{integer,2}],{x,0}}.
    {test,is_ne_exact,{f,366},[{tr,{x,0},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,364}}. % '-mc_double/1-lc$^4/1-4-'/1
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
  {label,366}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,364}}. % '-mc_double/1-lc$^4/1-4-'/1
  {label,367}.
    {test,is_eq_exact,{f,368},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,368}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mc_double/1-lc$^3/1-3-', 1, 370}.
  {label,369}.
    {line,[{location,"mc_SUITE.erl",150}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^3/1-3-'},1}.
  {label,370}.
    {test,is_nonempty_list,{f,371},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,370},0}. % '-mc_double/1-lc$^3/1-3-'/1
  {label,371}.
    {test,is_tuple,{f,373},[{x,0}]}.
    {test,test_arity,{f,374},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,372},[{x,1},2,{atom,key}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,372},[{x,0},{x,1}]}.
    {gc_bif,'rem',{f,372},3,[{x,1},{integer,2}],{x,0}}.
    {test,is_ne_exact,{f,372},[{tr,{x,0},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,370}}. % '-mc_double/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,372}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,370}}. % '-mc_double/1-lc$^3/1-3-'/1
  {label,373}.
    {test,is_eq_exact,{f,374},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,374}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mc_double/1-lc$^2/1-2-', 1, 376}.
  {label,375}.
    {line,[{location,"mc_SUITE.erl",147}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^2/1-2-'},1}.
  {label,376}.
    {test,is_nonempty_list,{f,377},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,376}}. % '-mc_double/1-lc$^2/1-2-'/1
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
  {label,377}.
    {test,is_nil,{f,378},[{x,0}]}.
    return.
  {label,378}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mc_double/1-lc$^1/1-1-', 1, 380}.
  {label,379}.
    {line,[{location,"mc_SUITE.erl",146}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^1/1-1-'},1}.
  {label,380}.
    {test,is_nonempty_list,{f,381},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,380},0}. % '-mc_double/1-lc$^1/1-1-'/1
  {label,381}.
    {test,is_tuple,{f,382},[{x,0}]}.
    {test,test_arity,{f,383},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {gc_bif,'*',{f,0},3,[{x,2},{integer,2}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,380}}. % '-mc_double/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{2 => {t_number,any}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,382}.
    {test,is_eq_exact,{f,383},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,383}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mc_double/1-lc$^0/1-0-', 1, 385}.
  {label,384}.
    {line,[{location,"mc_SUITE.erl",144}]}.
    {func_info,{atom,mc_SUITE},{atom,'-mc_double/1-lc$^0/1-0-'},1}.
  {label,385}.
    {test,is_nonempty_list,{f,386},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,385}}. % '-mc_double/1-lc$^0/1-0-'/1
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
  {label,386}.
    {test,is_nil,{f,387},[{x,0}]}.
    return.
  {label,387}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^25/1-25-', 1, 389}.
  {label,388}.
    {line,[{location,"mc_SUITE.erl",138}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^25/1-25-'},1}.
  {label,389}.
    {test,is_nonempty_list,{f,390},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,389},0}. % '-basic/1-lc$^25/1-25-'/1
  {label,390}.
    {test,is_tuple,{f,392},[{x,0}]}.
    {test,test_arity,{f,393},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,391},[{x,2},{atom,ok}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,389}}. % '-basic/1-lc$^25/1-25-'/1
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
  {label,391}.
    {test_heap,6,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,392}.
    {test,is_eq_exact,{f,393},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,393}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^24/1-24-', 1, 395}.
  {label,394}.
    {line,[{location,"mc_SUITE.erl",137}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^24/1-24-'},1}.
  {label,395}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,396},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}}]}}.
    {test,is_eq_exact,{f,396},[{tr,{x,2},{t_integer,{0,1}}},{integer,0}]}.
    {bs_match,{f,396},
              {x,0},
              {commands,[{ensure_at_least,7,1},
                         {integer,1,{literal,[]},7,1,{x,1}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,127}}},{integer,1}],{y,0}}.
    {call,1,{f,395}}. % '-basic/1-lc$^24/1-24-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{0,127}},
                           2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,396}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test,is_eq_exact,
          {f,397},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.
  {label,397}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^23/1-23-', 1, 399}.
  {label,398}.
    {line,[{location,"mc_SUITE.erl",136}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^23/1-23-'},1}.
  {label,399}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,
                         {t_integer,{2,2}},
                         [{{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => {t_integer,{1,3}}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,401},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,
          {f,400},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{1,3}}}}}],
                        none}}]}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tuple_element,{x,1},1,{y,1}}.
    {gc_bif,'+',{f,0},1,[{tr,{y,1},{t_integer,{1,3}}},{integer,1}],{y,0}}.
    {call,1,{f,399}}. % '-basic/1-lc$^23/1-23-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,3}},
                           2 => {t_integer,{2,'+inf'}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,400}.
    {move,{literal,{badmatch,2}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,401}.
    return.


{function, '-basic/1-lc$^22/1-22-', 1, 403}.
  {label,402}.
    {line,[{location,"mc_SUITE.erl",133}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^22/1-22-'},1}.
  {label,403}.
    {test,is_nonempty_list,{f,404},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,403},0}. % '-basic/1-lc$^22/1-22-'/1
  {label,404}.
    {test,is_tuple,{f,406},[{x,0}]}.
    {test,test_arity,{f,407},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_lt,{f,405},[{integer,1},{x,1}]}.
    {gc_bif,'+',
            {f,0},
            3,
            [{tr,{x,1},
                 {t_union,{t_atom,any},
                          {t_list,any,any},
                          {t_number,{1,'+inf'}},
                          {t_tuple,0,false,#{}},
                          other}},
             {integer,1}],
            {x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {gc_bif,'*',{f,0},3,[{x,0},{integer,2}],{x,0}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,403}}. % '-basic/1-lc$^22/1-22-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,{2,'+inf'}},2 => {t_number,any}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,405}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,403}}. % '-basic/1-lc$^22/1-22-'/1
  {label,406}.
    {test,is_eq_exact,{f,407},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,407}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^21/1-21-', 1, 409}.
  {label,408}.
    {line,[{location,"mc_SUITE.erl",132}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^21/1-21-'},1}.
  {label,409}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,411},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,is_ge,{f,410},[{tr,{x,1},{t_integer,{0,255}}},{integer,2}]}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{2,255}}},{integer,1}],{y,0}}.
    {call,1,{f,409}}. % '-basic/1-lc$^21/1-21-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{2,255}},
                           2 => {t_integer,{3,'+inf'}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,410}.
    {call_only,1,{f,409}}. % '-basic/1-lc$^21/1-21-'/1
  {label,411}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test,is_eq_exact,
          {f,412},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.
  {label,412}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^20/1-20-', 1, 414}.
  {label,413}.
    {line,[{location,"mc_SUITE.erl",131}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^20/1-20-'},1}.
  {label,414}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,416},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_ge,{f,415},[{tr,{x,1},{t_integer,{1,3}}},{integer,2}]}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{2,3}}},{integer,1}],{y,0}}.
    {call,1,{f,414}}. % '-basic/1-lc$^20/1-20-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{2,3}},
                           2 => {t_integer,{3,'+inf'}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,415}.
    {call_only,1,{f,414}}. % '-basic/1-lc$^20/1-20-'/1
  {label,416}.
    return.


{function, '-basic/1-lc$^19/1-19-', 1, 418}.
  {label,417}.
    {line,[{location,"mc_SUITE.erl",128}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^19/1-19-'},1}.
  {label,418}.
    {test,is_nonempty_list,{f,419},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,418},0}. % '-basic/1-lc$^19/1-19-'/1
  {label,419}.
    {test,is_tuple,{f,420},[{x,0}]}.
    {test,test_arity,{f,421},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {gc_bif,'*',{f,0},3,[{x,2},{integer,2}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,418}}. % '-basic/1-lc$^19/1-19-'/1
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
  {label,420}.
    {test,is_eq_exact,{f,421},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,421}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^18/1-18-', 1, 423}.
  {label,422}.
    {line,[{location,"mc_SUITE.erl",127}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^18/1-18-'},1}.
  {label,423}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,424},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,255}}},{integer,1}],{y,0}}.
    {call,1,{f,423}}. % '-basic/1-lc$^18/1-18-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{0,255}},
                           2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,424}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test,is_eq_exact,
          {f,425},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.
  {label,425}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^17/1-17-', 1, 427}.
  {label,426}.
    {line,[{location,"mc_SUITE.erl",126}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^17/1-17-'},1}.
  {label,427}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,428},[{x,0}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,1},{x,0}}.
    {gc_bif,'+',{f,0},1,[{tr,{y,1},{t_integer,{1,3}}},{integer,1}],{y,0}}.
    {call,1,{f,427}}. % '-basic/1-lc$^17/1-17-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,3}},
                           2 => {t_integer,{2,'+inf'}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,428}.
    return.


{function, '-basic/1-lc$^16/1-16-', 1, 430}.
  {label,429}.
    {line,[{location,"mc_SUITE.erl",123}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^16/1-16-'},1}.
  {label,430}.
    {test,is_nonempty_list,{f,431},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,430},0}. % '-basic/1-lc$^16/1-16-'/1
  {label,431}.
    {test,is_tuple,{f,433},[{x,0}]}.
    {test,test_arity,{f,434},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,432},[{x,1},3,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {gc_bif,'rem',{f,432},3,[{x,1},{integer,2}],{x,1}}.
    {test,is_eq_exact,{f,432},[{tr,{x,1},{t_integer,{-1,1}}},{integer,1}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,430}}. % '-basic/1-lc$^16/1-16-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,432}.
    {call_only,1,{f,430}}. % '-basic/1-lc$^16/1-16-'/1
  {label,433}.
    {test,is_eq_exact,{f,434},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,434}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^15/1-15-', 1, 436}.
  {label,435}.
    {line,[{location,"mc_SUITE.erl",121}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^15/1-15-'},1}.
  {label,436}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_nonempty_list,{f,438},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,437},[{x,2},3,{atom,foo}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'rem',{f,437},3,[{x,2},{integer,2}],{x,2}}.
    {test,is_eq_exact,{f,437},[{tr,{x,2},{t_integer,{-1,1}}},{integer,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,436}}. % '-basic/1-lc$^15/1-15-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,437}.
    {call_only,1,{f,436}}. % '-basic/1-lc$^15/1-15-'/1
  {label,438}.
    return.


{function, '-basic/1-lc$^14/1-14-', 1, 440}.
  {label,439}.
    {line,[{location,"mc_SUITE.erl",118}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^14/1-14-'},1}.
  {label,440}.
    {test,is_nonempty_list,{f,441},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,440},0}. % '-basic/1-lc$^14/1-14-'/1
  {label,441}.
    {test,is_tuple,{f,443},[{x,0}]}.
    {test,test_arity,{f,444},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tagged_tuple,{f,442},[{x,1},3,{atom,foo}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {gc_bif,'rem',{f,442},4,[{x,3},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,442},[{tr,{x,3},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,440}}. % '-basic/1-lc$^14/1-14-'/1
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
  {label,442}.
    {call_only,1,{f,440}}. % '-basic/1-lc$^14/1-14-'/1
  {label,443}.
    {test,is_eq_exact,{f,444},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,444}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^13/1-13-', 1, 446}.
  {label,445}.
    {line,[{location,"mc_SUITE.erl",115}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^13/1-13-'},1}.
  {label,446}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_nonempty_list,{f,448},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,447},[{x,2},3,{atom,foo}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'rem',{f,447},3,[{x,2},{integer,2}],{x,2}}.
    {test,is_eq_exact,{f,447},[{tr,{x,2},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,446}}. % '-basic/1-lc$^13/1-13-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,447}.
    {call_only,1,{f,446}}. % '-basic/1-lc$^13/1-13-'/1
  {label,448}.
    return.


{function, '-basic/1-lc$^12/1-12-', 1, 450}.
  {label,449}.
    {line,[{location,"mc_SUITE.erl",112}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^12/1-12-'},1}.
  {label,450}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {test,is_nonempty_list,{f,451},[{x,0}]}.
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
    {call,1,{f,450}}. % '-basic/1-lc$^12/1-12-'/1
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
  {label,451}.
    return.


{function, '-basic/1-lbc$^11/2-11-', 2, 453}.
  {label,452}.
    {line,[{location,"mc_SUITE.erl",109}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lbc$^11/2-11-'},2}.
  {label,453}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,454},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,453},1}. % '-basic/1-lbc$^11/2-11-'/2
  {label,454}.
    {test,is_tuple,{f,456},[{x,0}]}.
    {test,test_arity,{f,457},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,455},[{x,2},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,455},[{x,0},{atom,b}]}.
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
    {call_only,2,{f,453}}. % '-basic/1-lbc$^11/2-11-'/2
  {label,455}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,453}}. % '-basic/1-lbc$^11/2-11-'/2
  {label,456}.
    {test,is_eq_exact,{f,457},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,457}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lbc$^10/2-10-', 2, 459}.
  {label,458}.
    {line,[{location,"mc_SUITE.erl",108}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lbc$^10/2-10-'},2}.
  {label,459}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,460},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,459},1}. % '-basic/1-lbc$^10/2-10-'/2
  {label,460}.
    {test,is_tuple,{f,462},[{x,0}]}.
    {test,test_arity,{f,463},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,461},[{x,2},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,461},[{x,0},{atom,b}]}.
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
    {call_only,2,{f,459}}. % '-basic/1-lbc$^10/2-10-'/2
  {label,461}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,459}}. % '-basic/1-lbc$^10/2-10-'/2
  {label,462}.
    {test,is_eq_exact,{f,463},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,463}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lbc$^9/2-9-', 2, 465}.
  {label,464}.
    {line,[{location,"mc_SUITE.erl",107}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lbc$^9/2-9-'},2}.
  {label,465}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,466},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,465},1}. % '-basic/1-lbc$^9/2-9-'/2
  {label,466}.
    {test,is_tuple,{f,468},[{x,0}]}.
    {test,test_arity,{f,469},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,467},[{x,2},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,467},[{x,0},{atom,b}]}.
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
    {call_only,2,{f,465}}. % '-basic/1-lbc$^9/2-9-'/2
  {label,467}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,465}}. % '-basic/1-lbc$^9/2-9-'/2
  {label,468}.
    {test,is_eq_exact,{f,469},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,469}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^8/1-8-', 1, 471}.
  {label,470}.
    {line,[{location,"mc_SUITE.erl",105}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^8/1-8-'},1}.
  {label,471}.
    {test,is_nonempty_list,{f,472},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,471},0}. % '-basic/1-lc$^8/1-8-'/1
  {label,472}.
    {test,is_tuple,{f,474},[{x,0}]}.
    {test,test_arity,{f,475},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,473},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,473},[{x,0},{atom,b}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,1,{f,471}}. % '-basic/1-lc$^8/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,473}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,471}}. % '-basic/1-lc$^8/1-8-'/1
  {label,474}.
    {test,is_eq_exact,{f,475},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,475}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^7/1-7-', 1, 477}.
  {label,476}.
    {line,[{location,"mc_SUITE.erl",104}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^7/1-7-'},1}.
  {label,477}.
    {test,is_nonempty_list,{f,478},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,477},0}. % '-basic/1-lc$^7/1-7-'/1
  {label,478}.
    {test,is_tuple,{f,480},[{x,0}]}.
    {test,test_arity,{f,481},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,479},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,479},[{x,0},{atom,b}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,1,{f,477}}. % '-basic/1-lc$^7/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,479}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,477}}. % '-basic/1-lc$^7/1-7-'/1
  {label,480}.
    {test,is_eq_exact,{f,481},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,481}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^6/1-6-', 1, 483}.
  {label,482}.
    {line,[{location,"mc_SUITE.erl",103}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^6/1-6-'},1}.
  {label,483}.
    {test,is_nonempty_list,{f,484},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,483},0}. % '-basic/1-lc$^6/1-6-'/1
  {label,484}.
    {test,is_tuple,{f,486},[{x,0}]}.
    {test,test_arity,{f,487},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,485},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,485},[{x,0},{atom,b}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,1,{f,483}}. % '-basic/1-lc$^6/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,485}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,483}}. % '-basic/1-lc$^6/1-6-'/1
  {label,486}.
    {test,is_eq_exact,{f,487},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,487}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^5/1-5-', 1, 489}.
  {label,488}.
    {line,[{location,"mc_SUITE.erl",100}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^5/1-5-'},1}.
  {label,489}.
    {test,is_nonempty_list,{f,490},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,489},0}. % '-basic/1-lc$^5/1-5-'/1
  {label,490}.
    {test,is_tuple,{f,492},[{x,0}]}.
    {test,test_arity,{f,493},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_nonempty_list,{f,491},[{x,2}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,489}}. % '-basic/1-lc$^5/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,491}.
    {call_only,1,{f,489}}. % '-basic/1-lc$^5/1-5-'/1
  {label,492}.
    {test,is_eq_exact,{f,493},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,493}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^4/1-4-', 1, 495}.
  {label,494}.
    {line,[{location,"mc_SUITE.erl",99}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^4/1-4-'},1}.
  {label,495}.
    {test,is_nonempty_list,{f,496},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,495},0}. % '-basic/1-lc$^4/1-4-'/1
  {label,496}.
    {test,is_tuple,{f,498},[{x,0}]}.
    {test,test_arity,{f,499},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tuple,{f,497},[{x,1}]}.
    {test,test_arity,{f,497},[{x,1},2]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,497},[{x,0}]}.
    {allocate,1,3}.
    {get_hd,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,495}}. % '-basic/1-lc$^4/1-4-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,497}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,495}}. % '-basic/1-lc$^4/1-4-'/1
  {label,498}.
    {test,is_eq_exact,{f,499},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,499}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^3/1-3-', 1, 501}.
  {label,500}.
    {line,[{location,"mc_SUITE.erl",98}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^3/1-3-'},1}.
  {label,501}.
    {test,is_nonempty_list,{f,502},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,501},0}. % '-basic/1-lc$^3/1-3-'/1
  {label,502}.
    {test,is_tuple,{f,504},[{x,0}]}.
    {test,test_arity,{f,505},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tuple,{f,503},[{x,1}]}.
    {test,test_arity,{f,503},[{x,1},2]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,501}}. % '-basic/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,503}.
    {call_only,1,{f,501}}. % '-basic/1-lc$^3/1-3-'/1
  {label,504}.
    {test,is_eq_exact,{f,505},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,505}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^2/1-2-', 1, 507}.
  {label,506}.
    {line,[{location,"mc_SUITE.erl",97}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^2/1-2-'},1}.
  {label,507}.
    {test,is_nonempty_list,{f,508},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,507},0}. % '-basic/1-lc$^2/1-2-'/1
  {label,508}.
    {test,is_tuple,{f,510},[{x,0}]}.
    {test,test_arity,{f,511},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_atom,{f,509},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,507}}. % '-basic/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,509}.
    {call_only,1,{f,507}}. % '-basic/1-lc$^2/1-2-'/1
  {label,510}.
    {test,is_eq_exact,{f,511},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,511}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^1/1-1-', 1, 513}.
  {label,512}.
    {line,[{location,"mc_SUITE.erl",93}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^1/1-1-'},1}.
  {label,513}.
    {test,is_nonempty_list,{f,514},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,513},0}. % '-basic/1-lc$^1/1-1-'/1
  {label,514}.
    {test,is_tuple,{f,515},[{x,0}]}.
    {test,test_arity,{f,516},[{x,0},3]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,1,{f,513}}. % '-basic/1-lc$^1/1-1-'/1
  {label,515}.
    {test,is_eq_exact,{f,516},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,516}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^0/1-0-', 1, 518}.
  {label,517}.
    {line,[{location,"mc_SUITE.erl",92}]}.
    {func_info,{atom,mc_SUITE},{atom,'-basic/1-lc$^0/1-0-'},1}.
  {label,518}.
    {test,is_nonempty_list,{f,519},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,518},0}. % '-basic/1-lc$^0/1-0-'/1
  {label,519}.
    {test,is_tuple,{f,520},[{x,0}]}.
    {test,test_arity,{f,521},[{x,0},3]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,1,{f,518}}. % '-basic/1-lc$^0/1-0-'/1
  {label,520}.
    {test,is_eq_exact,{f,521},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,521}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
