{module, test_lib}.  %% version = 0

{exports, [{binary,1},
           {binary_part,2},
           {get_data_dir,1},
           {highest_opcode,1},
           {id,1},
           {is_cloned_mod,1},
           {module_info,0},
           {module_info,1},
           {opt_opts,1},
           {p_run,2},
           {p_run,3},
           {parallel,0},
           {recompile,1},
           {recompile_core,1},
           {smoke_disasm,1},
           {uniq,0}]}.

{attributes, []}.

{labels, 83}.


{function, id, 1, 2}.
  {label,1}.
    {line,[{location,"test_lib.erl",32}]}.
    {func_info,{atom,test_lib},{atom,id},1}.
  {label,2}.
    return.


{function, recompile, 1, 4}.
  {label,3}.
    {line,[{location,"test_lib.erl",34}]}.
    {func_info,{atom,test_lib},{atom,recompile},1}.
  {label,4}.
    {test,is_atom,{f,3},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {move,{atom,cover_server},{x,0}}.
    {line,[{location,"test_lib.erl",35}]}.
    {call_ext,1,{extfunc,erlang,whereis,1}}.
    {test,is_ne_exact,{f,5},[{x,0},{atom,undefined}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"test_lib.erl",39}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {move,{literal,".beam"},{x,1}}.
    {line,[{location,"test_lib.erl",40}]}.
    {call_ext,2,{extfunc,filename,rootname,2}}.
    {move,{literal,".erl"},{x,1}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"test_lib.erl",41}]}.
    {call,1,{f,19}}. % opt_opts/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,8,1}.
    {put_list,{atom,recv_opt_info},{x,0},{x,0}}.
    {put_list,{atom,bin_opt_info},{x,0},{y,0}}.
    {put_list,{y,0},nil,{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {move,{literal,"Recompiling ~p (~p)\n"},{x,0}}.
    {line,[{location,"test_lib.erl",42}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"test_lib.erl",43}]}.
    {call_ext,1,{extfunc,filename,dirname,1}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{x,0}]}}.
    {put_list,{x,0},{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call_ext,2,{extfunc,c,c,2}}.
  {label,5}.
    {move,{y,2},{x,0}}.
    {call_last,1,{f,10},3}. % smoke_disasm/1


{function, recompile_core, 1, 7}.
  {label,6}.
    {line,[{location,"test_lib.erl",49}]}.
    {func_info,{atom,test_lib},{atom,recompile_core},1}.
  {label,7}.
    {test,is_atom,{f,6},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {move,{atom,cover_server},{x,0}}.
    {line,[{location,"test_lib.erl",50}]}.
    {call_ext,1,{extfunc,erlang,whereis,1}}.
    {test,is_ne_exact,{f,8},[{x,0},{atom,undefined}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"test_lib.erl",54}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {move,{literal,".beam"},{x,1}}.
    {line,[{location,"test_lib.erl",55}]}.
    {call_ext,2,{extfunc,filename,rootname,2}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"test_lib.erl",56}]}.
    {call,1,{f,19}}. % opt_opts/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,8,1}.
    {put_list,{atom,recv_opt_info},{x,0},{x,0}}.
    {put_list,{atom,bin_opt_info},{x,0},{y,0}}.
    {put_list,{y,0},nil,{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {move,{literal,"Recompiling ~p (~p)\n"},{x,0}}.
    {line,[{location,"test_lib.erl",57}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"test_lib.erl",58}]}.
    {call_ext,1,{extfunc,filename,dirname,1}}.
    {test_heap,7,1}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{x,0}]}}.
    {put_list,{x,0},{y,0},{x,0}}.
    {put_list,{atom,from_core},{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call_ext,2,{extfunc,c,c,2}}.
  {label,8}.
    {move,{y,2},{x,0}}.
    {call_last,1,{f,10},3}. % smoke_disasm/1


{function, smoke_disasm, 1, 10}.
  {label,9}.
    {line,[{location,"test_lib.erl",64}]}.
    {func_info,{atom,test_lib},{atom,smoke_disasm},1}.
  {label,10}.
    {test,is_atom,{f,11},[{x,0}]}.
    {allocate,0,1}.
    {line,[{location,"test_lib.erl",65}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {call_last,1,{f,10},0}. % smoke_disasm/1
  {label,11}.
    {test,is_list,{f,9},[{x,0}]}.
    {allocate,0,1}.
    {line,[{location,"test_lib.erl",67}]}.
    {call_ext,1,{extfunc,beam_disasm,file,1}}.
    {line,[{location,"test_lib.erl",68}]}.
    {bif,element,{f,0},[{integer,1},{x,0}],{x,1}}.
    {bif,element,{f,0},[{integer,2},{tr,{x,0},{t_tuple,1,false,#{}}}],{x,0}}.
    {test,is_eq_exact,{f,12},[{x,1},{atom,beam_file}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,beam_file},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,12}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {badmatch,{x,0}}.


{function, parallel, 0, 14}.
  {label,13}.
    {line,[{location,"test_lib.erl",70}]}.
    {func_info,{atom,test_lib},{atom,parallel},0}.
  {label,14}.
    {allocate,0,0}.
    {move,{atom,schedulers},{x,0}}.
    {line,[{location,"test_lib.erl",71}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {test,is_eq_exact,{f,15},[{x,0},{integer,1}]}.
    {move,nil,{x,0}}.
    {deallocate,0}.
    return.
  {label,15}.
    {move,{literal,[parallel]},{x,0}}.
    {deallocate,0}.
    return.


{function, uniq, 0, 17}.
  {label,16}.
    {line,[{location,"test_lib.erl",76}]}.
    {func_info,{atom,test_lib},{atom,uniq},0}.
  {label,17}.
    {allocate,0,0}.
    {move,{literal,[positive]},{x,0}}.
    {line,[{location,"test_lib.erl",77}]}.
    {call_ext,1,{extfunc,erlang,unique_integer,1}}.
    {line,[{location,"test_lib.erl",78}]}.
    {call_ext,1,{extfunc,erlang,integer_to_list,1}}.
    {test_heap,2,1}.
    {put_list,{integer,95},{x,0},{x,0}}.
    {deallocate,0}.
    return.


{function, opt_opts, 1, 19}.
  {label,18}.
    {line,[{location,"test_lib.erl",83}]}.
    {func_info,{atom,test_lib},{atom,opt_opts},1}.
  {label,19}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,module_info},{x,2}}.
    {move,{atom,compile},{x,0}}.
    {line,[{location,"test_lib.erl",84}]}.
    {apply,1}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,options},{x,0}}.
    {line,[{location,"test_lib.erl",86}]}.
    {call_ext,3,{extfunc,proplists,get_value,3}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,79},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"test_lib.erl",87}]}.
    {call_ext_last,2,{extfunc,lists,filter,2},0}.


{function, get_data_dir, 1, 21}.
  {label,20}.
    {line,[{location,"test_lib.erl",116}]}.
    {func_info,{atom,test_lib},{atom,get_data_dir},1}.
  {label,21}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"test_lib.erl",117}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,77},0,0,{x,1},{list,[]}}.
    {move,{literal,["_no_opt_SUITE","_no_copt_SUITE","_no_copt_ssa_SUITE",
                    "_post_opt_SUITE","_inline_SUITE","_no_module_opt_SUITE",
                    "_no_type_opt_SUITE","_no_ssa_opt_SUITE"]},
          {x,2}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"test_lib.erl",127}]}.
    {call_ext_last,3,{extfunc,lists,foldl,3},0}.


{function, is_cloned_mod, 1, 23}.
  {label,22}.
    {line,[{location,"test_lib.erl",132}]}.
    {func_info,{atom,test_lib},{atom,is_cloned_mod},1}.
  {label,23}.
    {allocate,0,1}.
    {line,[{location,"test_lib.erl",133}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {call_last,1,{f,25},0}. % is_cloned_mod_1/1


{function, is_cloned_mod_1, 1, 25}.
  {label,24}.
    {line,[{location,"test_lib.erl",139}]}.
    {func_info,{atom,test_lib},{atom,is_cloned_mod_1},1}.
  {label,25}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test,is_nonempty_list,{f,38},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,95}]}.
    {test,is_nonempty_list,{f,37},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {select_val,{tr,{x,1},{t_integer,{0,1114111}}},
                {f,37},
                {list,[{integer,105},
                       {f,35},
                       {integer,110},
                       {f,27},
                       {integer,112},
                       {f,26}]}}.
  {label,26}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"ost_opt_SUITE"}]}.
    {jump,{f,36}}.
  {label,27}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,111}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,95}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {select_val,{tr,{x,1},{t_integer,{0,1114111}}},
                {f,37},
                {list,[{integer,99},
                       {f,32},
                       {integer,109},
                       {f,31},
                       {integer,111},
                       {f,30},
                       {integer,115},
                       {f,29},
                       {integer,116},
                       {f,28}]}}.
  {label,28}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"ype_opt_SUITE"}]}.
    {jump,{f,36}}.
  {label,29}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"sa_opt_SUITE"}]}.
    {jump,{f,36}}.
  {label,30}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"pt_SUITE"}]}.
    {jump,{f,36}}.
  {label,31}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"odule_opt_SUITE"}]}.
    {jump,{f,36}}.
  {label,32}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,111}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,112}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,116}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,95}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {select_val,{tr,{x,1},{t_integer,{0,1114111}}},
                {f,37},
                {list,[{integer,83},{f,34},{integer,115},{f,33}]}}.
  {label,33}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"sa_SUITE"}]}.
    {jump,{f,36}}.
  {label,34}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},{literal,"UITE"}]}.
    {jump,{f,36}}.
  {label,35}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"nline_SUITE"}]}.
  {label,36}.
    {move,{atom,true},{x,0}}.
    return.
  {label,37}.
    {call_only,1,{f,25}}. % is_cloned_mod_1/1
  {label,38}.
    {move,{atom,false},{x,0}}.
    return.


{function, highest_opcode, 1, 40}.
  {label,39}.
    {line,[{location,"test_lib.erl",152}]}.
    {func_info,{atom,test_lib},{atom,highest_opcode},1}.
  {label,40}.
    {allocate,0,1}.
    {move,{literal,["Code"]},{x,1}}.
    {line,[{location,"test_lib.erl",153}]}.
    {call_ext,2,{extfunc,beam_lib,chunks,2}}.
    {test,is_tagged_tuple,{f,42},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,42},[{x,1}]}.
    {test,test_arity,{f,42},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,42},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,42},[{x,2}]}.
    {test,test_arity,{f,42},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,42},[{x,3},{literal,"Code"}]}.
    {test,is_nil,{f,42},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,0}}.
    {test,bs_start_match3,{f,41},1,[{x,0}],{x,1}}.
    {bs_match,{f,41},
              {x,1},
              {commands,[{ensure_at_least,96,8},
                         {'=:=',nil,31,8},
                         {'=:=',nil,1,0},
                         {integer,2,{literal,[]},32,1,{x,2}},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test,is_eq_exact,
          {f,41},
          [{tr,{x,2},{t_integer,{0,4294967295}}},{integer,0}]}.
    {move,{x,3},{x,0}}.
    {deallocate,0}.
    return.
  {label,41}.
    {line,[{location,"test_lib.erl",155}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{location,"test_lib.erl",153}]}.
    {badmatch,{x,0}}.


{function, p_run, 2, 44}.
  {label,43}.
    {line,[{location,"test_lib.erl",161}]}.
    {func_info,{atom,test_lib},{atom,p_run},2}.
  {label,44}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,schedulers},{x,0}}.
    {line,[{location,"test_lib.erl",164}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,wordsize},{x,0}}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},{f,48},{list,[{integer,4},{f,46},{integer,8},{f,45}]}}.
  {label,45}.
    {bif,min,{f,0},[{y,0},{integer,8}],{x,0}}.
    {jump,{f,47}}.
  {label,46}.
    {bif,min,{f,0},[{y,0},{integer,2}],{x,0}}.
  {label,47}.
    {line,[{location,"test_lib.erl",170}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_number,{'-inf',8}}},{integer,1}],{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {call_last,3,{f,50},3}. % p_run/3
  {label,48}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {line,[{location,"test_lib.erl",164}]}.
    {case_end,{x,0}}.


{function, p_run, 3, 50}.
  {label,49}.
    {line,[{location,"test_lib.erl",173}]}.
    {func_info,{atom,test_lib},{atom,p_run},3}.
  {label,50}.
    {line,[{location,"test_lib.erl",175}]}.
    {gc_bif,length,{f,0},3,[{x,1}],{x,3}}.
    {allocate_heap,3,4,4}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {put_list,{x,3},nil,{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {move,{literal,"p_run: ~p parallel processes; ~p jobs\n"},{x,0}}.
    {line,[{location,"test_lib.erl",174}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,nil,{x,3}}.
    {move,{y,0},{x,2}}.
    {move,{integer,0},{x,4}}.
    {move,{y,1},{x,1}}.
    {move,{integer,0},{x,5}}.
    {move,{y,2},{x,0}}.
    {call_last,6,{f,52},3}. % p_run_loop/6


{function, p_run_loop, 6, 52}.
  {label,51}.
    {line,[{location,"test_lib.erl",178}]}.
    {func_info,{atom,test_lib},{atom,p_run_loop},6}.
  {label,52}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,reference,nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{0,'+inf'}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_nonempty_list,{f,53},[{x,1}]}.
    {get_list,{x,1},{x,6},{x,7}}.
    {line,[{location,"test_lib.erl",189}]}.
    {gc_bif,length,{f,0},8,[{tr,{x,3},{t_list,reference,nil}}],{x,8}}.
    {test,is_lt,{f,58},[{tr,{x,8},{t_integer,{0,288230376151711743}}},{x,2}]}.
    {allocate_heap,6,{alloc,[{words,2},{floats,0},{funs,1}]},8}.
    {move,{x,7},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{x,2},{y,4}}.
    {move,{x,0},{y,5}}.
    {make_fun3,{f,75},0,0,{x,0},{list,[{x,0},{x,6}]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"test_lib.erl",190}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {test_heap,2,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{x,0},{y,3},{x,3}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,5}}.
    {move,{y,2},{x,4}}.
    {move,{y,4},{x,2}}.
    {move,{y,5},{x,0}}.
    {call_last,6,{f,52},6}. % p_run_loop/6
  {label,53}.
    {test,is_nil,{f,58},[{tr,{x,3},{t_list,reference,nil}}]}.
    {test,is_eq_exact,{f,57},[{tr,{x,4},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {select_val,{tr,{x,5},{t_integer,{0,'+inf'}}},
                {f,56},
                {list,[{integer,0},{f,55},{integer,1},{f,54}]}}.
  {label,54}.
    {move,{literal,{comment,"1 warning"}},{x,0}}.
    return.
  {label,55}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,56}.
    {allocate,0,6}.
    {move,{x,5},{x,0}}.
    {line,[{location,"test_lib.erl",184}]}.
    {call_ext,1,{extfunc,erlang,integer_to_list,1}}.
    {move,{literal," warnings"},{x,1}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,comment},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,57}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,4},{atom,errors}]}}.
    {line,[{location,"test_lib.erl",187}]}.
    {call_ext_only,1,{extfunc,ct,fail,1}}.
  {label,58}.
    {allocate,6,6}.
    {move,{x,5},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,0},{y,5}}.
  {label,59}.
    {loop_rec,{f,64},{x,0}}.
    {test,is_tagged_tuple,{f,63},[{x,0},5,{atom,'DOWN'}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,63},[{x,1},{atom,process}]}.
    {get_tuple_element,{x,0},4,{x,1}}.
    remove_message.
    {select_val,{x,1},
                {f,65},
                {list,[{atom,error},
                       {f,61},
                       {atom,ok},
                       {f,62},
                       {atom,warning},
                       {f,60}]}}.
  {label,60}.
    {line,[{location,"test_lib.erl",198}]}.
    {gc_bif,'+',{f,0},1,[{tr,{y,0},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {move,{x,1},{y,0}}.
    {jump,{f,62}}.
  {label,61}.
    {line,[{location,"test_lib.erl",197}]}.
    {gc_bif,'+',{f,0},1,[{tr,{y,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {move,{x,1},{y,1}}.
  {label,62}.
    {test_heap,2,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"test_lib.erl",200}]}.
    {call_ext,2,{extfunc,erlang,'--',2}}.
    {move,{x,0},{x,3}}.
    {move,{y,0},{x,5}}.
    {move,{y,1},{x,4}}.
    {move,{y,3},{x,2}}.
    {move,{y,4},{x,1}}.
    {move,{y,5},{x,0}}.
    {call_last,6,{f,52},6}. % p_run_loop/6
  {label,63}.
    {loop_rec_end,{f,59}}.
  {label,64}.
    {wait,{f,59}}.
  {label,65}.
    {line,[{location,"test_lib.erl",195}]}.
    {case_end,{x,1}}.


{function, binary_part, 2, 67}.
  {label,66}.
    {line,[{location,"test_lib.erl",205}]}.
    {func_info,{atom,test_lib},{atom,binary_part},2}.
  {label,67}.
    {move,{atom,dummy},{x,0}}.
    return.


{function, binary, 1, 69}.
  {label,68}.
    {line,[{location,"test_lib.erl",209}]}.
    {func_info,{atom,test_lib},{atom,binary},1}.
  {label,69}.
    {line,[{location,"test_lib.erl",210}]}.
    {gc_bif,'rem',{f,0},1,[{x,0},{integer,10}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{-9,9}}},{integer,0}],{x,0}}.
    return.


{function, module_info, 0, 71}.
  {label,70}.
    {line,[]}.
    {func_info,{atom,test_lib},{atom,module_info},0}.
  {label,71}.
    {move,{atom,test_lib},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 73}.
  {label,72}.
    {line,[]}.
    {func_info,{atom,test_lib},{atom,module_info},1}.
  {label,73}.
    {move,{x,0},{x,1}}.
    {move,{atom,test_lib},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-p_run_loop/6-fun-0-', 2, 75}.
  {label,74}.
    {line,[{location,"test_lib.erl",190}]}.
    {func_info,{atom,test_lib},{atom,'-p_run_loop/6-fun-0-'},2}.
  {label,75}.
    {allocate,0,2}.
    {swap,{x,0},{x,1}}.
    {call_fun,1}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.


{function, '-get_data_dir/1-fun-0-', 2, 77}.
  {label,76}.
    {line,[{location,"test_lib.erl",127}]}.
    {func_info,{atom,test_lib},{atom,'-get_data_dir/1-fun-0-'},2}.
  {label,77}.
    {move,{literal,[{return,list}]},{x,3}}.
    {move,{literal,"_SUITE"},{x,2}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"test_lib.erl",129}]}.
    {call_ext_only,4,{extfunc,re,replace,4}}.


{function, '-opt_opts/1-fun-0-', 1, 79}.
  {label,78}.
    {line,[{location,"test_lib.erl",87}]}.
    {func_info,{atom,test_lib},{atom,'-opt_opts/1-fun-0-'},1}.
  {label,79}.
    {test,is_tuple,{f,80},[{x,0}]}.
    {test,is_tagged_tuple,
          {f,82},
          [{tr,{x,0},{t_tuple,0,false,#{}}},3,{atom,feature}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {select_val,{x,0},
                {f,82},
                {list,[{atom,disable},{f,81},{atom,enable},{f,81}]}}.
  {label,80}.
    {select_val,{x,0},
                {f,82},
                {list,[{atom,debug_info},
                       {f,81},
                       {atom,dialyzer},
                       {f,81},
                       {atom,inline},
                       {f,81},
                       {atom,no_badrecord},
                       {f,81},
                       {atom,no_bs_create_bin},
                       {f,81},
                       {atom,no_bs_match},
                       {f,81},
                       {atom,no_bsm_opt},
                       {f,81},
                       {atom,no_copt},
                       {f,81},
                       {atom,no_fun_opt},
                       {f,81},
                       {atom,no_min_max_bifs},
                       {f,81},
                       {atom,no_module_opt},
                       {f,81},
                       {atom,no_postopt},
                       {f,81},
                       {atom,no_recv_opt},
                       {f,81},
                       {atom,no_share_opt},
                       {f,81},
                       {atom,no_ssa_opt},
                       {f,81},
                       {atom,no_ssa_opt_float},
                       {f,81},
                       {atom,no_ssa_opt_ranges},
                       {f,81},
                       {atom,no_stack_trimming},
                       {f,81},
                       {atom,no_type_opt},
                       {f,81}]}}.
  {label,81}.
    {move,{atom,true},{x,0}}.
    return.
  {label,82}.
    {move,{atom,false},{x,0}}.
    return.
