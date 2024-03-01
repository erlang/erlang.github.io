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

{labels, 84}.


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
    {make_fun3,{f,80},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"test_lib.erl",87}]}.
    {call_ext_last,2,{extfunc,lists,filter,2},0}.


{function, get_data_dir, 1, 21}.
  {label,20}.
    {line,[{location,"test_lib.erl",117}]}.
    {func_info,{atom,test_lib},{atom,get_data_dir},1}.
  {label,21}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"test_lib.erl",118}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,78},0,0,{x,1},{list,[]}}.
    {move,{literal,["_no_opt_SUITE","_no_copt_SUITE","_no_copt_ssa_SUITE",
                    "_post_opt_SUITE","_inline_SUITE","_no_module_opt_SUITE",
                    "_no_type_opt_SUITE","_no_ssa_opt_SUITE","_cover_SUITE"]},
          {x,2}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"test_lib.erl",129}]}.
    {call_ext_last,3,{extfunc,lists,foldl,3},0}.


{function, is_cloned_mod, 1, 23}.
  {label,22}.
    {line,[{location,"test_lib.erl",134}]}.
    {func_info,{atom,test_lib},{atom,is_cloned_mod},1}.
  {label,23}.
    {allocate,0,1}.
    {line,[{location,"test_lib.erl",135}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {call_last,1,{f,25},0}. % is_cloned_mod_1/1


{function, is_cloned_mod_1, 1, 25}.
  {label,24}.
    {line,[{location,"test_lib.erl",141}]}.
    {func_info,{atom,test_lib},{atom,is_cloned_mod_1},1}.
  {label,25}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test,is_nonempty_list,{f,39},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,95}]}.
    {test,is_nonempty_list,{f,38},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {select_val,{tr,{x,1},{t_integer,{0,1114111}}},
                {f,38},
                {list,[{integer,99},
                       {f,36},
                       {integer,105},
                       {f,35},
                       {integer,110},
                       {f,27},
                       {integer,112},
                       {f,26}]}}.
  {label,26}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"ost_opt_SUITE"}]}.
    {jump,{f,37}}.
  {label,27}.
    {test,is_nonempty_list,{f,38},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,111}]}.
    {test,is_nonempty_list,{f,38},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,95}]}.
    {test,is_nonempty_list,{f,38},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {select_val,{tr,{x,1},{t_integer,{0,1114111}}},
                {f,38},
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
          {f,38},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"ype_opt_SUITE"}]}.
    {jump,{f,37}}.
  {label,29}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"sa_opt_SUITE"}]}.
    {jump,{f,37}}.
  {label,30}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"pt_SUITE"}]}.
    {jump,{f,37}}.
  {label,31}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"odule_opt_SUITE"}]}.
    {jump,{f,37}}.
  {label,32}.
    {test,is_nonempty_list,{f,38},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,111}]}.
    {test,is_nonempty_list,{f,38},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,112}]}.
    {test,is_nonempty_list,{f,38},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,116}]}.
    {test,is_nonempty_list,{f,38},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,95}]}.
    {test,is_nonempty_list,{f,38},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {select_val,{tr,{x,1},{t_integer,{0,1114111}}},
                {f,38},
                {list,[{integer,83},{f,34},{integer,115},{f,33}]}}.
  {label,33}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"sa_SUITE"}]}.
    {jump,{f,37}}.
  {label,34}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},{literal,"UITE"}]}.
    {jump,{f,37}}.
  {label,35}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"nline_SUITE"}]}.
    {jump,{f,37}}.
  {label,36}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,2},{t_list,{t_integer,{0,1114111}},nil}},
           {literal,"over_SUITE"}]}.
  {label,37}.
    {move,{atom,true},{x,0}}.
    return.
  {label,38}.
    {call_only,1,{f,25}}. % is_cloned_mod_1/1
  {label,39}.
    {move,{atom,false},{x,0}}.
    return.


{function, highest_opcode, 1, 41}.
  {label,40}.
    {line,[{location,"test_lib.erl",155}]}.
    {func_info,{atom,test_lib},{atom,highest_opcode},1}.
  {label,41}.
    {allocate,0,1}.
    {move,{literal,["Code"]},{x,1}}.
    {line,[{location,"test_lib.erl",156}]}.
    {call_ext,2,{extfunc,beam_lib,chunks,2}}.
    {test,is_tagged_tuple,{f,43},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,43},[{x,1}]}.
    {test,test_arity,{f,43},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,43},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,43},[{x,2}]}.
    {test,test_arity,{f,43},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,43},[{x,3},{literal,"Code"}]}.
    {test,is_nil,{f,43},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,0}}.
    {test,bs_start_match3,{f,42},1,[{x,0}],{x,1}}.
    {bs_match,{f,42},
              {x,1},
              {commands,[{ensure_at_least,96,8},
                         {'=:=',nil,31,8},
                         {'=:=',nil,1,0},
                         {integer,2,{literal,[]},32,1,{x,2}},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test,is_eq_exact,
          {f,42},
          [{tr,{x,2},{t_integer,{0,4294967295}}},{integer,0}]}.
    {move,{x,3},{x,0}}.
    {deallocate,0}.
    return.
  {label,42}.
    {line,[{location,"test_lib.erl",158}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{location,"test_lib.erl",156}]}.
    {badmatch,{x,0}}.


{function, p_run, 2, 45}.
  {label,44}.
    {line,[{location,"test_lib.erl",164}]}.
    {func_info,{atom,test_lib},{atom,p_run},2}.
  {label,45}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,schedulers},{x,0}}.
    {line,[{location,"test_lib.erl",167}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,wordsize},{x,0}}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},{f,49},{list,[{integer,4},{f,47},{integer,8},{f,46}]}}.
  {label,46}.
    {bif,min,{f,0},[{y,0},{integer,8}],{x,0}}.
    {jump,{f,48}}.
  {label,47}.
    {bif,min,{f,0},[{y,0},{integer,2}],{x,0}}.
  {label,48}.
    {line,[{location,"test_lib.erl",173}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_number,{'-inf',8}}},{integer,1}],{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {call_last,3,{f,51},3}. % p_run/3
  {label,49}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {line,[{location,"test_lib.erl",167}]}.
    {case_end,{x,0}}.


{function, p_run, 3, 51}.
  {label,50}.
    {line,[{location,"test_lib.erl",176}]}.
    {func_info,{atom,test_lib},{atom,p_run},3}.
  {label,51}.
    {line,[{location,"test_lib.erl",178}]}.
    {gc_bif,length,{f,0},3,[{x,1}],{x,3}}.
    {allocate_heap,3,4,4}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {put_list,{x,3},nil,{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {move,{literal,"p_run: ~p parallel processes; ~p jobs\n"},{x,0}}.
    {line,[{location,"test_lib.erl",177}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,nil,{x,3}}.
    {move,{y,0},{x,2}}.
    {move,{integer,0},{x,4}}.
    {move,{y,1},{x,1}}.
    {move,{integer,0},{x,5}}.
    {move,{y,2},{x,0}}.
    {call_last,6,{f,53},3}. % p_run_loop/6


{function, p_run_loop, 6, 53}.
  {label,52}.
    {line,[{location,"test_lib.erl",181}]}.
    {func_info,{atom,test_lib},{atom,p_run_loop},6}.
  {label,53}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,reference,nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{0,'+inf'}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_nonempty_list,{f,54},[{x,1}]}.
    {get_list,{x,1},{x,6},{x,7}}.
    {line,[{location,"test_lib.erl",192}]}.
    {gc_bif,length,{f,0},8,[{tr,{x,3},{t_list,reference,nil}}],{x,8}}.
    {test,is_lt,{f,59},[{tr,{x,8},{t_integer,{0,288230376151711743}}},{x,2}]}.
    {allocate_heap,6,{alloc,[{words,2},{floats,0},{funs,1}]},8}.
    {move,{x,7},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{x,2},{y,4}}.
    {move,{x,0},{y,5}}.
    {make_fun3,{f,76},0,0,{x,0},{list,[{x,0},{x,6}]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"test_lib.erl",193}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {test_heap,2,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{x,0},{y,3},{x,3}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,5}}.
    {move,{y,2},{x,4}}.
    {move,{y,4},{x,2}}.
    {move,{y,5},{x,0}}.
    {call_last,6,{f,53},6}. % p_run_loop/6
  {label,54}.
    {test,is_nil,{f,59},[{tr,{x,3},{t_list,reference,nil}}]}.
    {test,is_eq_exact,{f,58},[{tr,{x,4},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {select_val,{tr,{x,5},{t_integer,{0,'+inf'}}},
                {f,57},
                {list,[{integer,0},{f,56},{integer,1},{f,55}]}}.
  {label,55}.
    {move,{literal,{comment,"1 warning"}},{x,0}}.
    return.
  {label,56}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,57}.
    {allocate,0,6}.
    {move,{x,5},{x,0}}.
    {line,[{location,"test_lib.erl",187}]}.
    {call_ext,1,{extfunc,erlang,integer_to_list,1}}.
    {move,{literal," warnings"},{x,1}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,comment},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,58}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,4},{atom,errors}]}}.
    {line,[{location,"test_lib.erl",190}]}.
    {call_ext_only,1,{extfunc,ct,fail,1}}.
  {label,59}.
    {allocate,6,6}.
    {move,{x,5},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,0},{y,5}}.
  {label,60}.
    {loop_rec,{f,65},{x,0}}.
    {test,is_tagged_tuple,{f,64},[{x,0},5,{atom,'DOWN'}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,64},[{x,1},{atom,process}]}.
    {get_tuple_element,{x,0},4,{x,1}}.
    remove_message.
    {select_val,{x,1},
                {f,66},
                {list,[{atom,error},
                       {f,62},
                       {atom,ok},
                       {f,63},
                       {atom,warning},
                       {f,61}]}}.
  {label,61}.
    {line,[{location,"test_lib.erl",201}]}.
    {gc_bif,'+',{f,0},1,[{tr,{y,0},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {move,{x,1},{y,0}}.
    {jump,{f,63}}.
  {label,62}.
    {line,[{location,"test_lib.erl",200}]}.
    {gc_bif,'+',{f,0},1,[{tr,{y,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {move,{x,1},{y,1}}.
  {label,63}.
    {test_heap,2,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"test_lib.erl",203}]}.
    {call_ext,2,{extfunc,erlang,'--',2}}.
    {move,{x,0},{x,3}}.
    {move,{y,0},{x,5}}.
    {move,{y,1},{x,4}}.
    {move,{y,3},{x,2}}.
    {move,{y,4},{x,1}}.
    {move,{y,5},{x,0}}.
    {call_last,6,{f,53},6}. % p_run_loop/6
  {label,64}.
    {loop_rec_end,{f,60}}.
  {label,65}.
    {wait,{f,60}}.
  {label,66}.
    {line,[{location,"test_lib.erl",198}]}.
    {case_end,{x,1}}.


{function, binary_part, 2, 68}.
  {label,67}.
    {line,[{location,"test_lib.erl",208}]}.
    {func_info,{atom,test_lib},{atom,binary_part},2}.
  {label,68}.
    {move,{atom,dummy},{x,0}}.
    return.


{function, binary, 1, 70}.
  {label,69}.
    {line,[{location,"test_lib.erl",212}]}.
    {func_info,{atom,test_lib},{atom,binary},1}.
  {label,70}.
    {line,[{location,"test_lib.erl",213}]}.
    {gc_bif,'rem',{f,0},1,[{x,0},{integer,10}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{-9,9}}},{integer,0}],{x,0}}.
    return.


{function, module_info, 0, 72}.
  {label,71}.
    {line,[]}.
    {func_info,{atom,test_lib},{atom,module_info},0}.
  {label,72}.
    {move,{atom,test_lib},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 74}.
  {label,73}.
    {line,[]}.
    {func_info,{atom,test_lib},{atom,module_info},1}.
  {label,74}.
    {move,{x,0},{x,1}}.
    {move,{atom,test_lib},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-p_run_loop/6-fun-0-', 2, 76}.
  {label,75}.
    {line,[{location,"test_lib.erl",193}]}.
    {func_info,{atom,test_lib},{atom,'-p_run_loop/6-fun-0-'},2}.
  {label,76}.
    {allocate,0,2}.
    {swap,{x,0},{x,1}}.
    {call_fun,1}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.


{function, '-get_data_dir/1-fun-0-', 2, 78}.
  {label,77}.
    {line,[{location,"test_lib.erl",129}]}.
    {func_info,{atom,test_lib},{atom,'-get_data_dir/1-fun-0-'},2}.
  {label,78}.
    {move,{literal,[{return,list}]},{x,3}}.
    {move,{literal,"_SUITE"},{x,2}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"test_lib.erl",131}]}.
    {call_ext_only,4,{extfunc,re,replace,4}}.


{function, '-opt_opts/1-fun-0-', 1, 80}.
  {label,79}.
    {line,[{location,"test_lib.erl",87}]}.
    {func_info,{atom,test_lib},{atom,'-opt_opts/1-fun-0-'},1}.
  {label,80}.
    {test,is_tuple,{f,81},[{x,0}]}.
    {test,is_tagged_tuple,
          {f,83},
          [{tr,{x,0},{t_tuple,0,false,#{}}},3,{atom,feature}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {select_val,{x,0},
                {f,83},
                {list,[{atom,disable},{f,82},{atom,enable},{f,82}]}}.
  {label,81}.
    {select_val,{x,0},
                {f,83},
                {list,[{atom,debug_info},
                       {f,82},
                       {atom,dialyzer},
                       {f,82},
                       {atom,inline},
                       {f,82},
                       {atom,line_coverage},
                       {f,82},
                       {atom,no_badrecord},
                       {f,82},
                       {atom,no_bs_create_bin},
                       {f,82},
                       {atom,no_bs_match},
                       {f,82},
                       {atom,no_bsm_opt},
                       {f,82},
                       {atom,no_copt},
                       {f,82},
                       {atom,no_fun_opt},
                       {f,82},
                       {atom,no_min_max_bifs},
                       {f,82},
                       {atom,no_module_opt},
                       {f,82},
                       {atom,no_postopt},
                       {f,82},
                       {atom,no_recv_opt},
                       {f,82},
                       {atom,no_share_opt},
                       {f,82},
                       {atom,no_ssa_opt},
                       {f,82},
                       {atom,no_ssa_opt_float},
                       {f,82},
                       {atom,no_ssa_opt_ranges},
                       {f,82},
                       {atom,no_stack_trimming},
                       {f,82},
                       {atom,no_type_opt},
                       {f,82}]}}.
  {label,82}.
    {move,{atom,true},{x,0}}.
    return.
  {label,83}.
    {move,{atom,false},{x,0}}.
    return.
