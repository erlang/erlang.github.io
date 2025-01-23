{module, test_lib}.  %% version = 0

{exports, [{binary,1},
           {binary_part,2},
           {get_data_dir,1},
           {get_unique_files,1},
           {get_unique_files,2},
           {highest_opcode,1},
           {id,1},
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

{labels, 103}.


{function, id, 1, 2}.
  {label,1}.
    {line,[{location,"test_lib.erl",34}]}.
    {func_info,{atom,test_lib},{atom,id},1}.
  {label,2}.
    return.


{function, recompile, 1, 4}.
  {label,3}.
    {line,[{location,"test_lib.erl",36}]}.
    {func_info,{atom,test_lib},{atom,recompile},1}.
  {label,4}.
    {test,is_atom,{f,3},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {move,{atom,cover_server},{x,0}}.
    {line,[{location,"test_lib.erl",37}]}.
    {call_ext,1,{extfunc,erlang,whereis,1}}.
    {test,is_ne_exact,{f,5},[{x,0},{atom,undefined}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"test_lib.erl",41}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {move,{literal,".beam"},{x,1}}.
    {line,[{location,"test_lib.erl",42}]}.
    {call_ext,2,{extfunc,filename,rootname,2}}.
    {move,{literal,".erl"},{x,1}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"test_lib.erl",43}]}.
    {call,1,{f,19}}. % opt_opts/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,8,1}.
    {put_list,{atom,recv_opt_info},{x,0},{x,0}}.
    {put_list,{atom,bin_opt_info},{x,0},{y,0}}.
    {put_list,{y,0},nil,{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {move,{literal,"Recompiling ~p (~p)\n"},{x,0}}.
    {line,[{location,"test_lib.erl",44}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"test_lib.erl",45}]}.
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
    {line,[{location,"test_lib.erl",51}]}.
    {func_info,{atom,test_lib},{atom,recompile_core},1}.
  {label,7}.
    {test,is_atom,{f,6},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {move,{atom,cover_server},{x,0}}.
    {line,[{location,"test_lib.erl",52}]}.
    {call_ext,1,{extfunc,erlang,whereis,1}}.
    {test,is_ne_exact,{f,8},[{x,0},{atom,undefined}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"test_lib.erl",56}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {move,{literal,".beam"},{x,1}}.
    {line,[{location,"test_lib.erl",57}]}.
    {call_ext,2,{extfunc,filename,rootname,2}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"test_lib.erl",58}]}.
    {call,1,{f,19}}. % opt_opts/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,8,1}.
    {put_list,{atom,recv_opt_info},{x,0},{x,0}}.
    {put_list,{atom,bin_opt_info},{x,0},{y,0}}.
    {put_list,{y,0},nil,{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {move,{literal,"Recompiling ~p (~p)\n"},{x,0}}.
    {line,[{location,"test_lib.erl",59}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"test_lib.erl",60}]}.
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
    {line,[{location,"test_lib.erl",66}]}.
    {func_info,{atom,test_lib},{atom,smoke_disasm},1}.
  {label,10}.
    {test,is_atom,{f,11},[{x,0}]}.
    {allocate,0,1}.
    {line,[{location,"test_lib.erl",67}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {call_last,1,{f,10},0}. % smoke_disasm/1
  {label,11}.
    {test,is_list,{f,9},[{x,0}]}.
    {allocate,0,1}.
    {line,[{location,"test_lib.erl",69}]}.
    {call_ext,1,{extfunc,beam_disasm,file,1}}.
    {line,[{location,"test_lib.erl",70}]}.
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
    {line,[{location,"test_lib.erl",72}]}.
    {func_info,{atom,test_lib},{atom,parallel},0}.
  {label,14}.
    {allocate,0,0}.
    {move,{atom,schedulers},{x,0}}.
    {line,[{location,"test_lib.erl",73}]}.
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
    {line,[{location,"test_lib.erl",78}]}.
    {func_info,{atom,test_lib},{atom,uniq},0}.
  {label,17}.
    {allocate,0,0}.
    {move,{literal,[positive]},{x,0}}.
    {line,[{location,"test_lib.erl",79}]}.
    {call_ext,1,{extfunc,erlang,unique_integer,1}}.
    {line,[{location,"test_lib.erl",80}]}.
    {call_ext,1,{extfunc,erlang,integer_to_list,1}}.
    {test_heap,2,1}.
    {put_list,{integer,95},{x,0},{x,0}}.
    {deallocate,0}.
    return.


{function, opt_opts, 1, 19}.
  {label,18}.
    {line,[{location,"test_lib.erl",85}]}.
    {func_info,{atom,test_lib},{atom,opt_opts},1}.
  {label,19}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,module_info},{x,2}}.
    {move,{atom,compile},{x,0}}.
    {line,[{location,"test_lib.erl",86}]}.
    {apply,1}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,options},{x,0}}.
    {line,[{location,"test_lib.erl",88}]}.
    {call_ext,3,{extfunc,proplists,get_value,3}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,99},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"test_lib.erl",89}]}.
    {call_ext_last,2,{extfunc,lists,filter,2},0}.


{function, get_data_dir, 1, 21}.
  {label,20}.
    {line,[{location,"test_lib.erl",121}]}.
    {func_info,{atom,test_lib},{atom,get_data_dir},1}.
  {label,21}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"test_lib.erl",122}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,97},0,0,{x,1},{list,[]}}.
    {move,{literal,["_no_opt_SUITE","_no_bool_opt_SUITE","_no_copt_SUITE",
                    "_no_copt_ssa_SUITE","_post_opt_SUITE","_inline_SUITE",
                    "_no_module_opt_SUITE","_no_type_opt_SUITE",
                    "_no_ssa_opt_SUITE","_cover_SUITE"]},
          {x,2}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"test_lib.erl",134}]}.
    {call_ext_last,3,{extfunc,lists,foldl,3},0}.


{function, is_cloned, 1, 23}.
  {label,22}.
    {line,[{location,"test_lib.erl",143}]}.
    {func_info,{atom,test_lib},{atom,is_cloned},1}.
  {label,23}.
    {test,is_nonempty_list,{f,38},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,37},[{x,1},{integer,95}]}.
    {test,is_nonempty_list,{f,37},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {select_val,{x,1},
                {f,37},
                {list,[{integer,99},
                       {f,35},
                       {integer,105},
                       {f,34},
                       {integer,110},
                       {f,25},
                       {integer,112},
                       {f,24}]}}.
  {label,24}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,"ost_opt_SUITE"}]}.
    {jump,{f,36}}.
  {label,25}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,37},[{x,1},{integer,111}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,37},[{x,1},{integer,95}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {select_val,{x,1},
                {f,37},
                {list,[{integer,98},
                       {f,33},
                       {integer,99},
                       {f,30},
                       {integer,109},
                       {f,29},
                       {integer,111},
                       {f,28},
                       {integer,115},
                       {f,27},
                       {integer,116},
                       {f,26}]}}.
  {label,26}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,"ype_opt_SUITE"}]}.
    {jump,{f,36}}.
  {label,27}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,"sa_opt_SUITE"}]}.
    {jump,{f,36}}.
  {label,28}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,"pt_SUITE"}]}.
    {jump,{f,36}}.
  {label,29}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,"odule_opt_SUITE"}]}.
    {jump,{f,36}}.
  {label,30}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,37},[{x,1},{integer,111}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,37},[{x,1},{integer,112}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,37},[{x,1},{integer,116}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,37},[{x,1},{integer,95}]}.
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {select_val,{x,1},
                {f,37},
                {list,[{integer,83},{f,32},{integer,115},{f,31}]}}.
  {label,31}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,"sa_SUITE"}]}.
    {jump,{f,36}}.
  {label,32}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,"UITE"}]}.
    {jump,{f,36}}.
  {label,33}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,"ool_opt_SUITE"}]}.
    {jump,{f,36}}.
  {label,34}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,"nline_SUITE"}]}.
    {jump,{f,36}}.
  {label,35}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,"over_SUITE"}]}.
  {label,36}.
    {move,{atom,true},{x,0}}.
    return.
  {label,37}.
    {call_only,1,{f,23}}. % is_cloned/1
  {label,38}.
    {test,is_nil,{f,22},[{x,0}]}.
    {move,{atom,false},{x,0}}.
    return.


{function, highest_opcode, 1, 40}.
  {label,39}.
    {line,[{location,"test_lib.erl",158}]}.
    {func_info,{atom,test_lib},{atom,highest_opcode},1}.
  {label,40}.
    {allocate,0,1}.
    {move,{literal,["Code"]},{x,1}}.
    {line,[{location,"test_lib.erl",159}]}.
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
    {line,[{location,"test_lib.erl",161}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{location,"test_lib.erl",159}]}.
    {badmatch,{x,0}}.


{function, get_unique_files, 1, 44}.
  {label,43}.
    {line,[{location,"test_lib.erl",165}]}.
    {func_info,{atom,test_lib},{atom,get_unique_files},1}.
  {label,44}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,95},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false]}}]}}.
    {call_only,2,{f,46}}. % get_unique_files/2


{function, get_unique_files, 2, 46}.
  {label,45}.
    {line,[{location,"test_lib.erl",168}]}.
    {func_info,{atom,test_lib},{atom,get_unique_files},2}.
  {label,46}.
    {test,is_function2,{f,45},[{x,1},{integer,1}]}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,test_lib},{x,0}}.
    {line,[{location,"test_lib.erl",169}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {call_ext,1,{extfunc,filename,dirname,1}}.
    {test_heap,2,1}.
    {put_list,{integer,42},{y,1},{x,1}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {line,[{location,"test_lib.erl",170}]}.
    {call_ext,1,{extfunc,filelib,wildcard,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {call_last,3,{f,87},2}. % '-get_unique_files/2-lc$^0/1-0-'/3


{function, is_cloned, 3, 48}.
  {label,47}.
    {line,[{location,"test_lib.erl",173}]}.
    {func_info,{atom,test_lib},{atom,is_cloned},3}.
  {label,48}.
    {'%',{var_info,{x,2},[{type,{t_fun,1,any,any}}]}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {line,[{location,"test_lib.erl",174}]}.
    {call_ext,2,{extfunc,filename,basename,2}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"test_lib.erl",175}]}.
    {call,1,{f,23}}. % is_cloned/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,49},[{x,0},{atom,true}]}.
    {deallocate,2}.
    return.
  {label,49}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,any}}}.
    {deallocate,2}.
    return.


{function, is_lfe_module, 2, 51}.
  {label,50}.
    {line,[{location,"test_lib.erl",177}]}.
    {func_info,{atom,test_lib},{atom,is_lfe_module},2}.
  {label,51}.
    {allocate,0,2}.
    {line,[{location,"test_lib.erl",178}]}.
    {call_ext,2,{extfunc,filename,basename,2}}.
    {test,is_nonempty_list,{f,52},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,52},[{x,1},{integer,108}]}.
    {test,is_nonempty_list,{f,52},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,52},[{x,1},{integer,102}]}.
    {test,is_nonempty_list,{f,52},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,52},[{x,1},{integer,101}]}.
    {test,is_nonempty_list,{f,52},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {bif,'=:=',{f,0},[{x,0},{integer,95}],{x,0}}.
    {deallocate,0}.
    return.
  {label,52}.
    {move,{atom,false},{x,0}}.
    {deallocate,0}.
    return.


{function, p_run, 2, 54}.
  {label,53}.
    {line,[{location,"test_lib.erl",186}]}.
    {func_info,{atom,test_lib},{atom,p_run},2}.
  {label,54}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,schedulers},{x,0}}.
    {line,[{location,"test_lib.erl",191}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,wordsize},{x,0}}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},{f,58},{list,[{integer,4},{f,56},{integer,8},{f,55}]}}.
  {label,55}.
    {bif,min,{f,0},[{y,0},{integer,8}],{x,2}}.
    {jump,{f,57}}.
  {label,56}.
    {move,{integer,1},{x,2}}.
  {label,57}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {call_last,3,{f,60},3}. % p_run/3
  {label,58}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {case_end,{x,0}}.


{function, p_run, 3, 60}.
  {label,59}.
    {line,[{location,"test_lib.erl",199}]}.
    {func_info,{atom,test_lib},{atom,p_run},3}.
  {label,60}.
    {line,[{location,"test_lib.erl",201}]}.
    {gc_bif,length,{f,0},3,[{x,1}],{x,3}}.
    {allocate_heap,3,4,4}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {put_list,{x,3},nil,{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {move,{literal,"p_run: ~p parallel processes; ~p jobs\n"},{x,0}}.
    {line,[{location,"test_lib.erl",200}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,nil,{x,3}}.
    {move,{y,0},{x,2}}.
    {move,{integer,0},{x,4}}.
    {move,{y,1},{x,1}}.
    {move,{integer,0},{x,5}}.
    {move,{y,2},{x,0}}.
    {call_last,6,{f,62},3}. % p_run_loop/6


{function, p_run_loop, 6, 62}.
  {label,61}.
    {line,[{location,"test_lib.erl",204}]}.
    {func_info,{atom,test_lib},{atom,p_run_loop},6}.
  {label,62}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,reference,nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{0,'+inf'}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_nonempty_list,{f,63},[{x,1}]}.
    {get_list,{x,1},{x,6},{x,7}}.
    {line,[{location,"test_lib.erl",215}]}.
    {gc_bif,length,{f,0},8,[{tr,{x,3},{t_list,reference,nil}}],{x,8}}.
    {test,is_lt,{f,68},[{tr,{x,8},{t_integer,{0,288230376151711743}}},{x,2}]}.
    {allocate_heap,6,{alloc,[{words,2},{floats,0},{funs,1}]},8}.
    {move,{x,7},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{x,2},{y,4}}.
    {move,{x,0},{y,5}}.
    {make_fun3,{f,85},0,0,{x,0},{list,[{x,0},{x,6}]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"test_lib.erl",216}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {test_heap,2,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{x,0},{y,3},{x,3}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,5}}.
    {move,{y,2},{x,4}}.
    {move,{y,4},{x,2}}.
    {move,{y,5},{x,0}}.
    {call_last,6,{f,62},6}. % p_run_loop/6
  {label,63}.
    {test,is_nil,{f,68},[{tr,{x,3},{t_list,reference,nil}}]}.
    {test,is_eq_exact,{f,67},[{tr,{x,4},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {select_val,{tr,{x,5},{t_integer,{0,'+inf'}}},
                {f,66},
                {list,[{integer,0},{f,65},{integer,1},{f,64}]}}.
  {label,64}.
    {move,{literal,{comment,"1 warning"}},{x,0}}.
    return.
  {label,65}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,66}.
    {allocate,0,6}.
    {move,{x,5},{x,0}}.
    {line,[{location,"test_lib.erl",210}]}.
    {call_ext,1,{extfunc,erlang,integer_to_list,1}}.
    {move,{literal," warnings"},{x,1}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,comment},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,67}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,4},{atom,errors}]}}.
    {line,[{location,"test_lib.erl",213}]}.
    {call_ext_only,1,{extfunc,ct,fail,1}}.
  {label,68}.
    {allocate,6,6}.
    {move,{x,5},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,0},{y,5}}.
  {label,69}.
    {loop_rec,{f,74},{x,0}}.
    {test,is_tagged_tuple,{f,73},[{x,0},5,{atom,'DOWN'}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,73},[{x,1},{atom,process}]}.
    {get_tuple_element,{x,0},4,{x,1}}.
    remove_message.
    {select_val,{x,1},
                {f,75},
                {list,[{atom,error},
                       {f,71},
                       {atom,ok},
                       {f,72},
                       {atom,warning},
                       {f,70}]}}.
  {label,70}.
    {line,[{location,"test_lib.erl",224}]}.
    {gc_bif,'+',{f,0},1,[{tr,{y,0},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {move,{x,1},{y,0}}.
    {jump,{f,72}}.
  {label,71}.
    {line,[{location,"test_lib.erl",223}]}.
    {gc_bif,'+',{f,0},1,[{tr,{y,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {move,{x,1},{y,1}}.
  {label,72}.
    {test_heap,2,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"test_lib.erl",226}]}.
    {call_ext,2,{extfunc,erlang,'--',2}}.
    {move,{x,0},{x,3}}.
    {move,{y,0},{x,5}}.
    {move,{y,1},{x,4}}.
    {move,{y,3},{x,2}}.
    {move,{y,4},{x,1}}.
    {move,{y,5},{x,0}}.
    {call_last,6,{f,62},6}. % p_run_loop/6
  {label,73}.
    {loop_rec_end,{f,69}}.
  {label,74}.
    {wait,{f,69}}.
  {label,75}.
    {line,[{location,"test_lib.erl",221}]}.
    {case_end,{x,1}}.


{function, binary_part, 2, 77}.
  {label,76}.
    {line,[{location,"test_lib.erl",231}]}.
    {func_info,{atom,test_lib},{atom,binary_part},2}.
  {label,77}.
    {move,{atom,dummy},{x,0}}.
    return.


{function, binary, 1, 79}.
  {label,78}.
    {line,[{location,"test_lib.erl",235}]}.
    {func_info,{atom,test_lib},{atom,binary},1}.
  {label,79}.
    {line,[{location,"test_lib.erl",236}]}.
    {gc_bif,'rem',{f,0},1,[{x,0},{integer,10}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{-9,9}}},{integer,0}],{x,0}}.
    return.


{function, module_info, 0, 81}.
  {label,80}.
    {line,[]}.
    {func_info,{atom,test_lib},{atom,module_info},0}.
  {label,81}.
    {move,{atom,test_lib},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 83}.
  {label,82}.
    {line,[]}.
    {func_info,{atom,test_lib},{atom,module_info},1}.
  {label,83}.
    {move,{x,0},{x,1}}.
    {move,{atom,test_lib},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-p_run_loop/6-fun-0-', 2, 85}.
  {label,84}.
    {line,[{location,"test_lib.erl",216}]}.
    {func_info,{atom,test_lib},{atom,'-p_run_loop/6-fun-0-'},2}.
  {label,85}.
    {allocate,0,2}.
    {swap,{x,0},{x,1}}.
    {call_fun,1}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.


{function, '-get_unique_files/2-lc$^0/1-0-', 3, 87}.
  {label,86}.
    {line,[{location,"test_lib.erl",170}]}.
    {func_info,{atom,test_lib},{atom,'-get_unique_files/2-lc$^0/1-0-'},3}.
  {label,87}.
    {'%',{var_info,{x,2},[{type,{t_fun,1,any,any}}]}}.
    {test,is_nonempty_list,{f,92},[{x,0}]}.
    {allocate,4,3}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"test_lib.erl",171}]}.
    {call,3,{f,48}}. % is_cloned/3
    {select_val,{x,0},{f,91},{list,[{atom,false},{f,88},{atom,true},{f,89}]}}.
  {label,88}.
    {move,{y,3},{x,1}}.
    {move,{y,1},{x,0}}.
    {call,2,{f,51}}. % is_lfe_module/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,90},[{x,0},{atom,true}]}.
  {label,89}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,87},4}. % '-get_unique_files/2-lc$^0/1-0-'/3
  {label,90}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,3}}.
    {trim,3,1}.
    {line,[{location,"test_lib.erl",170}]}.
    {call,3,{f,87}}. % '-get_unique_files/2-lc$^0/1-0-'/3
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,91}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"test_lib.erl",171}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,92}.
    {test,is_nil,{f,93},[{x,0}]}.
    return.
  {label,93}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"test_lib.erl",170}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-get_unique_files/1-fun-0-', 1, 95}.
  {label,94}.
    {line,[{location,"test_lib.erl",166}]}.
    {func_info,{atom,test_lib},{atom,'-get_unique_files/1-fun-0-'},1}.
  {label,95}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-get_data_dir/1-fun-0-', 2, 97}.
  {label,96}.
    {line,[{location,"test_lib.erl",134}]}.
    {func_info,{atom,test_lib},{atom,'-get_data_dir/1-fun-0-'},2}.
  {label,97}.
    {move,{literal,[{return,list}]},{x,3}}.
    {move,{literal,"_SUITE"},{x,2}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"test_lib.erl",136}]}.
    {call_ext_only,4,{extfunc,re,replace,4}}.


{function, '-opt_opts/1-fun-0-', 1, 99}.
  {label,98}.
    {line,[{location,"test_lib.erl",89}]}.
    {func_info,{atom,test_lib},{atom,'-opt_opts/1-fun-0-'},1}.
  {label,99}.
    {test,is_tuple,{f,100},[{x,0}]}.
    {test,is_tagged_tuple,
          {f,102},
          [{tr,{x,0},{t_tuple,0,false,#{}}},3,{atom,feature}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {select_val,{x,0},
                {f,102},
                {list,[{atom,disable},{f,101},{atom,enable},{f,101}]}}.
  {label,100}.
    {select_val,{x,0},
                {f,102},
                {list,[{atom,beam_debug_info},
                       {f,101},
                       {atom,debug_info},
                       {f,101},
                       {atom,dialyzer},
                       {f,101},
                       {atom,inline},
                       {f,101},
                       {atom,line_coverage},
                       {f,101},
                       {atom,no_badrecord},
                       {f,101},
                       {atom,no_bool_opt},
                       {f,101},
                       {atom,no_bs_create_bin},
                       {f,101},
                       {atom,no_bs_match},
                       {f,101},
                       {atom,no_bsm_opt},
                       {f,101},
                       {atom,no_copt},
                       {f,101},
                       {atom,no_fun_opt},
                       {f,101},
                       {atom,no_min_max_bifs},
                       {f,101},
                       {atom,no_module_opt},
                       {f,101},
                       {atom,no_postopt},
                       {f,101},
                       {atom,no_recv_opt},
                       {f,101},
                       {atom,no_share_opt},
                       {f,101},
                       {atom,no_ssa_opt},
                       {f,101},
                       {atom,no_ssa_opt_float},
                       {f,101},
                       {atom,no_ssa_opt_ranges},
                       {f,101},
                       {atom,no_stack_trimming},
                       {f,101},
                       {atom,no_type_opt},
                       {f,101}]}}.
  {label,101}.
    {move,{atom,true},{x,0}}.
    return.
  {label,102}.
    {move,{atom,false},{x,0}}.
    return.
