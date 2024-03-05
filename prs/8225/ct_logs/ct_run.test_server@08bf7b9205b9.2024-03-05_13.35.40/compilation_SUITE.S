{module, compilation_SUITE}.  %% version = 0

{exports, [{all,0},
           {beam_compiler_10,1},
           {beam_compiler_11,1},
           {beam_compiler_4,1},
           {beam_compiler_6,1},
           {beam_compiler_7,1},
           {beam_compiler_8,1},
           {beam_compiler_9,1},
           {compiler_1,1},
           {const_list_256,1},
           {convopts,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {infinite_loop,0},
           {infinite_loop,1},
           {init_per_group,2},
           {init_per_suite,1},
           {live_var,1},
           {module_info,0},
           {module_info,1},
           {on_load,1},
           {on_load_inline,1},
           {opt_crash,1},
           {otp_2330,1},
           {otp_2380,1},
           {otp_4790,1},
           {otp_5151,1},
           {otp_5235,1},
           {otp_5404,1},
           {otp_5436,1},
           {otp_5481,1},
           {otp_5553,1},
           {otp_5632,1},
           {otp_5714,1},
           {otp_5872,1},
           {otp_6121,1},
           {otp_7202,1},
           {otp_8949_a,1},
           {redundant_case,1},
           {self_compile,1},
           {self_compile_old_inliner,1},
           {split_cases,1},
           {string_table,1},
           {suite,0},
           {vsn_1,1},
           {vsn_2,1},
           {vsn_3,1}]}.

{attributes, []}.

{labels, 166}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"compilation_SUITE.erl",65}]}.
    {func_info,{atom,compilation_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,10}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"compilation_SUITE.erl",69}]}.
    {func_info,{atom,compilation_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[self_compile_old_inliner,self_compile,{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"compilation_SUITE.erl",73}]}.
    {func_info,{atom,compilation_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"compilation_SUITE.erl",75}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,8,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[compiler_1,beam_compiler_4,beam_compiler_6,
                                 beam_compiler_7,beam_compiler_8,
                                 beam_compiler_9,beam_compiler_10,
                                 beam_compiler_11,otp_2330,
                                 {group,vsn},
                                 otp_2380,otp_4790,const_list_256,live_var,
                                 convopts,redundant_case,otp_5151,otp_5235,
                                 opt_crash,otp_5404,otp_5436,otp_5481,
                                 otp_5553,otp_5632,otp_5714,otp_5872,otp_6121,
                                 otp_7202,on_load,on_load_inline,string_table,
                                 otp_8949_a,split_cases,infinite_loop]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,{vsn,[parallel],[vsn_1,vsn_2,vsn_3]}},{x,0},{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"compilation_SUITE.erl",91}]}.
    {func_info,{atom,compilation_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,compilation_SUITE},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",92}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"compilation_SUITE.erl",95}]}.
    {func_info,{atom,compilation_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"compilation_SUITE.erl",98}]}.
    {func_info,{atom,compilation_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"compilation_SUITE.erl",101}]}.
    {func_info,{atom,compilation_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, compiler_1, 1, 16}.
  {label,15}.
    {line,[{location,"compilation_SUITE.erl",107}]}.
    {func_info,{atom,compilation_SUITE},{atom,compiler_1},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,compiler_1},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, beam_compiler_4, 1, 18}.
  {label,17}.
    {line,[{location,"compilation_SUITE.erl",109}]}.
    {func_info,{atom,compilation_SUITE},{atom,beam_compiler_4},1}.
  {label,18}.
    {test,is_list,{f,17},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_4},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, beam_compiler_6, 1, 20}.
  {label,19}.
    {line,[{location,"compilation_SUITE.erl",110}]}.
    {func_info,{atom,compilation_SUITE},{atom,beam_compiler_6},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_6},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, beam_compiler_8, 1, 22}.
  {label,21}.
    {line,[{location,"compilation_SUITE.erl",111}]}.
    {func_info,{atom,compilation_SUITE},{atom,beam_compiler_8},1}.
  {label,22}.
    {test,is_list,{f,21},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_8},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, beam_compiler_9, 1, 24}.
  {label,23}.
    {line,[{location,"compilation_SUITE.erl",112}]}.
    {func_info,{atom,compilation_SUITE},{atom,beam_compiler_9},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_9},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, beam_compiler_10, 1, 26}.
  {label,25}.
    {line,[{location,"compilation_SUITE.erl",113}]}.
    {func_info,{atom,compilation_SUITE},{atom,beam_compiler_10},1}.
  {label,26}.
    {test,is_list,{f,25},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_10},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, beam_compiler_11, 1, 28}.
  {label,27}.
    {line,[{location,"compilation_SUITE.erl",114}]}.
    {func_info,{atom,compilation_SUITE},{atom,beam_compiler_11},1}.
  {label,28}.
    {test,is_list,{f,27},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_11},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_2330, 1, 30}.
  {label,29}.
    {line,[{location,"compilation_SUITE.erl",116}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_2330},1}.
  {label,30}.
    {test,is_list,{f,29},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_2330},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_2380, 1, 32}.
  {label,31}.
    {line,[{location,"compilation_SUITE.erl",117}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_2380},1}.
  {label,32}.
    {test,is_list,{f,31},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_2380},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_4790, 1, 34}.
  {label,33}.
    {line,[{location,"compilation_SUITE.erl",118}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_4790},1}.
  {label,34}.
    {test,is_list,{f,33},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_4790},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_5235, 1, 36}.
  {label,35}.
    {line,[{location,"compilation_SUITE.erl",119}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_5235},1}.
  {label,36}.
    {test,is_list,{f,35},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5235},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, const_list_256, 1, 38}.
  {label,37}.
    {line,[{location,"compilation_SUITE.erl",121}]}.
    {func_info,{atom,compilation_SUITE},{atom,const_list_256},1}.
  {label,38}.
    {test,is_list,{f,37},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,const_list_256},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_5151, 1, 40}.
  {label,39}.
    {line,[{location,"compilation_SUITE.erl",123}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_5151},1}.
  {label,40}.
    {test,is_list,{f,39},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5151},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, live_var, 1, 42}.
  {label,41}.
    {line,[{location,"compilation_SUITE.erl",125}]}.
    {func_info,{atom,compilation_SUITE},{atom,live_var},1}.
  {label,42}.
    {test,is_list,{f,41},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,live_var},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, opt_crash, 1, 44}.
  {label,43}.
    {line,[{location,"compilation_SUITE.erl",126}]}.
    {func_info,{atom,compilation_SUITE},{atom,opt_crash},1}.
  {label,44}.
    {test,is_list,{f,43},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,opt_crash},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_5404, 1, 46}.
  {label,45}.
    {line,[{location,"compilation_SUITE.erl",128}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_5404},1}.
  {label,46}.
    {test,is_list,{f,45},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5404},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_5436, 1, 48}.
  {label,47}.
    {line,[{location,"compilation_SUITE.erl",129}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_5436},1}.
  {label,48}.
    {test,is_list,{f,47},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5436},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_5481, 1, 50}.
  {label,49}.
    {line,[{location,"compilation_SUITE.erl",130}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_5481},1}.
  {label,50}.
    {test,is_list,{f,49},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5481},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_5553, 1, 52}.
  {label,51}.
    {line,[{location,"compilation_SUITE.erl",131}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_5553},1}.
  {label,52}.
    {test,is_list,{f,51},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5553},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_5632, 1, 54}.
  {label,53}.
    {line,[{location,"compilation_SUITE.erl",132}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_5632},1}.
  {label,54}.
    {test,is_list,{f,53},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5632},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_5714, 1, 56}.
  {label,55}.
    {line,[{location,"compilation_SUITE.erl",133}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_5714},1}.
  {label,56}.
    {test,is_list,{f,55},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5714},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_5872, 1, 58}.
  {label,57}.
    {line,[{location,"compilation_SUITE.erl",134}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_5872},1}.
  {label,58}.
    {test,is_list,{f,57},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5872},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_6121, 1, 60}.
  {label,59}.
    {line,[{location,"compilation_SUITE.erl",135}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_6121},1}.
  {label,60}.
    {test,is_list,{f,59},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_6121},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, convopts, 1, 62}.
  {label,61}.
    {line,[{location,"compilation_SUITE.erl",136}]}.
    {func_info,{atom,compilation_SUITE},{atom,convopts},1}.
  {label,62}.
    {test,is_list,{f,61},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,convopts},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, otp_7202, 1, 64}.
  {label,63}.
    {line,[{location,"compilation_SUITE.erl",137}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_7202},1}.
  {label,64}.
    {test,is_list,{f,63},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_7202},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, on_load, 1, 66}.
  {label,65}.
    {line,[{location,"compilation_SUITE.erl",138}]}.
    {func_info,{atom,compilation_SUITE},{atom,on_load},1}.
  {label,66}.
    {test,is_list,{f,65},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,on_load},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, on_load_inline, 1, 68}.
  {label,67}.
    {line,[{location,"compilation_SUITE.erl",139}]}.
    {func_info,{atom,compilation_SUITE},{atom,on_load_inline},1}.
  {label,68}.
    {test,is_list,{f,67},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,on_load_inline},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, infinite_loop, 0, 70}.
  {label,69}.
    {line,[{location,"compilation_SUITE.erl",141}]}.
    {func_info,{atom,compilation_SUITE},{atom,infinite_loop},0}.
  {label,70}.
    {move,{literal,[{timetrap,{minutes,1}}]},{x,0}}.
    return.


{function, infinite_loop, 1, 72}.
  {label,71}.
    {line,[{location,"compilation_SUITE.erl",142}]}.
    {func_info,{atom,compilation_SUITE},{atom,infinite_loop},1}.
  {label,72}.
    {test,is_list,{f,71},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,infinite_loop},{x,0}}.
    {call_only,2,{f,83}}. % try_it/2


{function, beam_compiler_7, 1, 74}.
  {label,73}.
    {line,[{location,"compilation_SUITE.erl",145}]}.
    {func_info,{atom,compilation_SUITE},{atom,beam_compiler_7},1}.
  {label,74}.
    {test,is_list,{f,73},[{x,0}]}.
    {move,{atom,false},{x,1}}.
    {move,{integer,2},{x,0}}.
    {call_only,2,{f,76}}. % empty/2


{function, empty, 2, 76}.
  {label,75}.
    {line,[{location,"compilation_SUITE.erl",148}]}.
    {func_info,{atom,compilation_SUITE},{atom,empty},2}.
  {label,76}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',2}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ge,{f,77},[{tr,{x,0},{t_integer,{'-inf',2}}},{integer,1}]}.
    {line,[{location,"compilation_SUITE.erl",150}]}.
    {gc_bif,'-',{f,0},2,[{tr,{x,0},{t_integer,{1,2}}},{integer,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_atom,[false,true]}},{atom,false}],{x,1}}.
    {call_only,2,{f,76}}. % empty/2
  {label,77}.
    {move,{atom,done},{x,0}}.
    return.


{function, redundant_case, 1, 79}.
  {label,78}.
    {line,[{location,"compilation_SUITE.erl",154}]}.
    {func_info,{atom,compilation_SUITE},{atom,redundant_case},1}.
  {label,79}.
    {test,is_list,{f,78},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",155}]}.
    {call,1,{f,81}}. % redundant_case_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d]}}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",156}]}.
    {call,1,{f,81}}. % redundant_case_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d]}}]}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",157}]}.
    {call,1,{f,81}}. % redundant_case_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d]}}]}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",158}]}.
    {call,1,{f,81}}. % redundant_case_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d]}}]}}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",159}]}.
    {call,1,{f,81}}. % redundant_case_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d]}}]}}.
    {move,{literal,{glurf,glarf}},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",160}]}.
    {call,1,{f,81}}. % redundant_case_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, redundant_case_1, 1, 81}.
  {label,80}.
    {line,[{location,"compilation_SUITE.erl",165}]}.
    {func_info,{atom,compilation_SUITE},{atom,redundant_case_1},1}.
  {label,81}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{1,5}},
                     [{{2,{t_atom,[glurf]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[glurf]},2 => {t_atom,[glarf]}}}}],
                     none}}]}}.
    {move,{atom,d},{x,0}}.
    return.


{function, try_it, 2, 83}.
  {label,82}.
    {line,[{location,"compilation_SUITE.erl",171}]}.
    {func_info,{atom,compilation_SUITE},{atom,try_it},2}.
  {label,83}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,any}}]}}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",174}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{y,2}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",175}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"compilation_SUITE.erl",174}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",176}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,2,1}.
    {put_list,{y,3},nil,{x,1}}.
    {move,{x,0},{y,2}}.
    {move,{literal,"Compiling: ~s\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",177}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,11,0}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,0},{literal,[report,bin_opt_info,recv_opt_info]},{x,0}}.
    {put_list,{atom,ssalint},{x,0},{x,0}}.
    {put_list,{atom,clint},{x,0},{x,0}}.
    {put_list,{atom,clint0},{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",178}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,1}}.
    {move,{literal,"Result: ~p\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",180}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test,is_tagged_tuple,{f,88},[{y,1},2,{atom,ok}]}.
    {move,{y,4},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",183}]}.
    {call,2,{f,90}}. % load_and_call/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{minutes,10}},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",185}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,1}}.
    {move,{literal,"Compiling (without optimization): ~s\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",186}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,0},{literal,[report]},{x,0}}.
    {put_list,{atom,no_postopt},{x,0},{x,0}}.
    {put_list,{atom,no_copt},{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",187}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"Result: ~p\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",191}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test,is_tagged_tuple,{f,87},[{y,0},2,{atom,ok}]}.
    {get_tuple_element,{y,0},1,{x,0}}.
    {get_tuple_element,{y,1},1,{y,1}}.
    {test,is_eq_exact,{f,87},[{x,0},{y,1}]}.
    {move,{y,4},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",193}]}.
    {call,2,{f,90}}. % load_and_call/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{minutes,10}},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",195}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,1}}.
    {move,{literal,"Compiling (with old inliner): ~s\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",196}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,0},
              {literal,[report,bin_opt_info,recv_opt_info,{inline,1000}]},
              {x,0}}.
    {put_list,{atom,ssalint},{x,0},{x,0}}.
    {put_list,{atom,clint},{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",197}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"Result: ~p\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",200}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test,is_tagged_tuple,{f,86},[{y,0},2,{atom,ok}]}.
    {get_tuple_element,{y,0},1,{x,0}}.
    {test,is_eq_exact,{f,86},[{x,0},{y,1}]}.
    {move,{y,4},{x,1}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",202}]}.
    {call,2,{f,90}}. % load_and_call/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{minutes,10}},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",204}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,1}}.
    {move,{literal,"Compiling (from assembly): ~s\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",205}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,0},{literal,[report]},{x,0}}.
    {put_list,{atom,to_asm},{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{location,"compilation_SUITE.erl",206}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,85},[{x,0},2,{atom,ok}]}.
    {test_heap,2,0}.
    {put_list,{y,4},{literal,[".S"]},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",207}]}.
    {call_ext,1,{extfunc,lists,concat,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {test_heap,7,1}.
    {put_tuple2,{x,1},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,1},{literal,[report]},{x,1}}.
    {put_list,{atom,from_asm},{x,1},{x,1}}.
    {line,[{location,"compilation_SUITE.erl",208}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{literal,"Result: ~p\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",209}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test,is_tagged_tuple,{f,84},[{y,3},2,{atom,ok}]}.
    {move,{y,4},{x,1}}.
    {move,{y,2},{x,0}}.
    {call_last,2,{f,90},5}. % load_and_call/2
  {label,84}.
    {line,[{location,"compilation_SUITE.erl",210}]}.
    {badmatch,{y,3}}.
  {label,85}.
    {line,[{location,"compilation_SUITE.erl",206}]}.
    {badmatch,{x,0}}.
  {label,86}.
    {line,[{location,"compilation_SUITE.erl",201}]}.
    {badmatch,{y,0}}.
  {label,87}.
    {line,[{location,"compilation_SUITE.erl",192}]}.
    {badmatch,{y,0}}.
  {label,88}.
    {line,[{location,"compilation_SUITE.erl",181}]}.
    {badmatch,{y,1}}.


{function, load_and_call, 2, 90}.
  {label,89}.
    {line,[{location,"compilation_SUITE.erl",215}]}.
    {func_info,{atom,compilation_SUITE},{atom,load_and_call},2}.
  {label,90}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,nil,{x,1}}.
    {move,{literal,"Loading...\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",216}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"compilation_SUITE.erl",217}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {call_ext,1,{extfunc,code,load_abs,1}}.
    {test,is_tagged_tuple,{f,92},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,92},[{x,1},{tr,{y,0},{t_atom,any}}]}.
    {move,nil,{x,1}}.
    {move,{literal,"Calling...\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",219}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",221}]}.
    {apply,0}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,1}}.
    {move,{literal,"Got value: ~p\n"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",222}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test,is_eq_exact,{f,91},[{y,1},{atom,ok}]}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",227}]}.
    {call_ext,1,{extfunc,test_lib,smoke_disasm,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",229}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"compilation_SUITE.erl",230}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,trap_exit},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",236}]}.
    {call_ext,2,{extfunc,erlang,process_flag,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,91}.
    {line,[{location,"compilation_SUITE.erl",224}]}.
    {badmatch,{y,1}}.
  {label,92}.
    {line,[{location,"compilation_SUITE.erl",217}]}.
    {badmatch,{x,0}}.


{function, vsn_1, 1, 94}.
  {label,93}.
    {line,[{location,"compilation_SUITE.erl",241}]}.
    {func_info,{atom,compilation_SUITE},{atom,vsn_1},1}.
  {label,94}.
    {test,is_list,{f,93},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",244}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{atom,vsn_1},{x,0}}.
    {call,3,{f,107}}. % compile_load/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,vsn_1},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",245}]}.
    {call,1,{f,104}}. % get_vsn/1
    {move,{x,0},{y,1}}.
    {move,{integer,1000},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",246}]}.
    {call_ext,1,{extfunc,timer,sleep,1}}.
    {move,{y,2},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",248}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{atom,vsn_1},{x,0}}.
    {call,3,{f,107}}. % compile_load/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,vsn_1},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",249}]}.
    {call,1,{f,104}}. % get_vsn/1
    {move,{x,0},{y,0}}.
    {move,{y,2},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",251}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"other"},{x,1}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{atom,vsn_1},{x,0}}.
    {call,3,{f,107}}. % compile_load/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,vsn_1},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",254}]}.
    {call,1,{f,104}}. % get_vsn/1
    {test,is_eq,{f,95},[{y,1},{y,0}]}.
    {test,is_ne,{f,96},[{y,0},{x,0}]}.
  {label,95}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{atom,vsn},{y,1},{y,0},{x,0}]}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"compilation_SUITE.erl",259}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,96}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.


{function, vsn_2, 1, 98}.
  {label,97}.
    {line,[{location,"compilation_SUITE.erl",264}]}.
    {func_info,{atom,compilation_SUITE},{atom,vsn_2},1}.
  {label,98}.
    {test,is_list,{f,97},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",267}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,vsn_2},{x,0}}.
    {call,3,{f,107}}. % compile_load/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,vsn_2},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",268}]}.
    {call,1,{f,104}}. % get_vsn/1
    {test,is_ne_exact,{f,99},[{x,0},{literal,"\""}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,vsn},{x,0}]}}.
    {line,[{location,"compilation_SUITE.erl",273}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,99}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.


{function, vsn_3, 1, 101}.
  {label,100}.
    {line,[{location,"compilation_SUITE.erl",278}]}.
    {func_info,{atom,compilation_SUITE},{atom,vsn_3},1}.
  {label,101}.
    {test,is_list,{f,100},[{x,0}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",281}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{atom,vsn_3},{x,0}}.
    {call,3,{f,107}}. % compile_load/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,vsn_3},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",282}]}.
    {call,1,{f,104}}. % get_vsn/1
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",284}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"other"},{x,1}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{atom,vsn_3},{x,0}}.
    {call,3,{f,107}}. % compile_load/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,vsn_3},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",287}]}.
    {call,1,{f,104}}. % get_vsn/1
    {test,is_eq,{f,102},[{y,0},{x,0}]}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,vsn},{y,0},{x,0}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"compilation_SUITE.erl",292}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,102}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.


{function, get_vsn, 1, 104}.
  {label,103}.
    {line,[{location,"compilation_SUITE.erl",296}]}.
    {func_info,{atom,compilation_SUITE},{atom,get_vsn},1}.
  {label,104}.
    {'%',{var_info,{x,0},[{type,{t_atom,[vsn_1,vsn_2,vsn_3]}}]}}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,module_info},{x,2}}.
    {move,{atom,attributes},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",297}]}.
    {apply,1}.
    {move,{integer,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,vsn},{x,0}}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_tuple,{f,105},[{x,0}]}.
    {test,test_arity,{f,105},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,0}.
    return.
  {label,105}.
    {badmatch,{x,0}}.


{function, compile_load, 3, 107}.
  {label,106}.
    {line,[{location,"compilation_SUITE.erl",300}]}.
    {func_info,{atom,compilation_SUITE},{atom,compile_load},3}.
  {label,107}.
    {'%',{var_info,{x,0},[{type,{t_atom,[vsn_1,vsn_2,vsn_3]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,any}}]}}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"compilation_SUITE.erl",301}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,1}}.
    {trim,1,2}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",302}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,outdir},{x,0}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",303}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,109},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,109},[{x,1},{tr,{y,1},{t_atom,[vsn_1,vsn_2,vsn_3]}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",305}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",307}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {call_ext,1,{extfunc,code,load_abs,1}}.
    {test,is_tagged_tuple,{f,108},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,108},[{x,1},{tr,{y,0},{t_atom,[vsn_1,vsn_2,vsn_3]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,108}.
    {line,[{location,"compilation_SUITE.erl",306}]}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{location,"compilation_SUITE.erl",304}]}.
    {badmatch,{x,0}}.


{function, self_compile, 1, 111}.
  {label,110}.
    {line,[{location,"compilation_SUITE.erl",310}]}.
    {func_info,{atom,compilation_SUITE},{atom,self_compile},1}.
  {label,111}.
    {test,is_list,{f,110},[{x,0}]}.
    {move,{literal,[inline]},{x,2}}.
    {move,{literal,"new"},{x,1}}.
    {call_only,3,{f,115}}. % self_compile_1/3


{function, self_compile_old_inliner, 1, 113}.
  {label,112}.
    {line,[{location,"compilation_SUITE.erl",313}]}.
    {func_info,{atom,compilation_SUITE},{atom,self_compile_old_inliner},1}.
  {label,113}.
    {test,is_list,{f,112},[{x,0}]}.
    {move,{literal,[verbose,{inline,500}]},{x,2}}.
    {move,{literal,"old"},{x,1}}.
    {call_only,3,{f,115}}. % self_compile_1/3


{function, self_compile_1, 3, 115}.
  {label,114}.
    {line,[{location,"compilation_SUITE.erl",318}]}.
    {func_info,{atom,compilation_SUITE},{atom,self_compile_1},3}.
  {label,115}.
    {'%',{var_info,{x,0},[{type,{t_list,any,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{100,119}},nil}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[inline,verbose]},
                         none,none,
                         [{{2,{t_atom,[inline]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[inline]},
                                 2 => {t_integer,{500,500}}}}}],
                         none},
                     nil}}]}}.
    {allocate,5,3}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{literal,{minutes,40}},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",319}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {move,{y,4},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",321}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{y,4}}.
    {line,[{location,"compilation_SUITE.erl",322}]}.
    {call,0,{f,126}}. % compiler_version/0
    {move,{x,0},{y,1}}.
    {move,{y,3},{x,0}}.
    {move,{literal,"compiler_a"},{x,1}}.
    {line,[{location,"compilation_SUITE.erl",325}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {call,2,{f,123}}. % make_compiler_dir/2
    {swap,{y,1},{x,0}}.
    {move,{literal,".0"},{x,1}}.
    {line,[{location,"compilation_SUITE.erl",326}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"compilation_SUITE.erl",327}]}.
    {call,0,{f,121}}. % compiler_src/0
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,3}}.
    {call,4,{f,119}}. % compile_compiler/4
    {move,{literal,"compiler_b"},{x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{location,"compilation_SUITE.erl",331}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {line,[{location,"compilation_SUITE.erl",332}]}.
    {call,2,{f,123}}. % make_compiler_dir/2
    {move,{x,0},{y,4}}.
    {move,{y,0},{x,0}}.
    {move,{literal,".0"},{x,1}}.
    {trim,1,4}.
    {line,[{location,"compilation_SUITE.erl",333}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,2}}.
    {move,{y,1},{x,3}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,2,2}.
    {move,{y,0},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",334}]}.
    {call,4,{f,117}}. % self_compile_node/4
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,129},2}. % compare_compilers/2


{function, self_compile_node, 4, 117}.
  {label,116}.
    {line,[{location,"compilation_SUITE.erl",342}]}.
    {func_info,{atom,compilation_SUITE},{atom,self_compile_node},4}.
  {label,117}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {'%',
        {var_info,
            {x,3},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[inline,verbose]},
                         none,none,
                         [{{2,{t_atom,[inline]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[inline]},
                                 2 => {t_integer,{500,500}}}}}],
                         none},
                     nil}}]}}.
    {allocate,4,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{literal,{minutes,15}},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",343}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {move,{atom,compilation_SUITE},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",344}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {call_ext,1,{extfunc,filename,dirname,1}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{literal," -pa "},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",345}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{location,"compilation_SUITE.erl",344}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,8,1}.
    {put_list,{integer,32},{x,0},{x,0}}.
    {put_list,{integer,97},{x,0},{x,0}}.
    {put_list,{integer,112},{x,0},{x,0}}.
    {put_list,{integer,45},{x,0},{y,3}}.
    {line,[{location,"compilation_SUITE.erl",346}]}.
    {call,0,{f,121}}. % compiler_src/0
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,165},0,0,{x,0},{list,[{y,2},{y,1},{y,0},{x,0}]}}.
    {move,{y,3},{x,1}}.
    {trim,4,0}.
    {line,[{location,"compilation_SUITE.erl",352}]}.
    {call_ext,2,{extfunc,test_server,run_on_shielded_node,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, compile_compiler, 4, 119}.
  {label,118}.
    {line,[{location,"compilation_SUITE.erl",359}]}.
    {func_info,{atom,compilation_SUITE},{atom,compile_compiler},4}.
  {label,119}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {'%',
        {var_info,
            {x,3},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[inline,verbose]},
                         none,none,
                         [{{2,{t_atom,[inline]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[inline]},
                                 2 => {t_integer,{500,500}}}}}],
                         none},
                     nil}}]}}.
    {allocate,4,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{atom,compile},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",360}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{literal,"~ts"},{x,0}}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,4,0}.
    {put_list,{y,2},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {move,{literal,"Compiling ~s into ~ts"},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",361}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{literal,"\""},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"compilation_SUITE.erl",367}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,2,1}.
    {put_list,{integer,34},{x,0},{y,1}}.
    {move,{atom,stdlib},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",369}]}.
    {call_ext,1,{extfunc,code,lib_dir,1}}.
    {move,{literal,"include"},{x,1}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {test_heap,{alloc,[{words,31},{floats,0},{funs,1}]},1}.
    {put_tuple2,{x,0},{list,[{atom,i},{x,0}]}}.
    {put_list,{x,0},{y,0},{x,0}}.
    {put_list,{atom,nowarn_shadow_vars},{x,0},{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,d},{atom,'COMPILER_VSN'},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{atom,recv_opt_info},{x,0},{x,0}}.
    {put_list,{atom,bin_opt_info},{x,0},{x,0}}.
    {put_list,{atom,ssalint},{x,0},{x,0}}.
    {put_list,{atom,clint},{x,0},{x,0}}.
    {put_list,{atom,clint0},{x,0},{x,0}}.
    {put_list,{atom,report},{x,0},{x,0}}.
    {make_fun3,{f,162},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[error,ok]}}]}}.
    {move,{y,3},{x,1}}.
    {line,[{location,"compilation_SUITE.erl",370}]}.
    {call_ext_last,2,{extfunc,test_lib,p_run,2},4}.


{function, compiler_src, 0, 121}.
  {label,120}.
    {line,[{location,"compilation_SUITE.erl",377}]}.
    {func_info,{atom,compilation_SUITE},{atom,compiler_src},0}.
  {label,121}.
    {allocate,0,0}.
    {move,{atom,compiler},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",378}]}.
    {call_ext,1,{extfunc,code,lib_dir,1}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,["src","*.erl"]},{x,0}}.
    {call_ext,1,{extfunc,filename,join,1}}.
    {call_ext_last,1,{extfunc,filelib,wildcard,1},0}.


{function, make_compiler_dir, 2, 123}.
  {label,122}.
    {line,[{location,"compilation_SUITE.erl",380}]}.
    {func_info,{atom,compilation_SUITE},{atom,make_compiler_dir},2}.
  {label,123}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{95,119}},nil}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"compilation_SUITE.erl",381}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"compilation_SUITE.erl",382}]}.
    {call_ext,1,{extfunc,file,make_dir,1}}.
    {test,is_eq_exact,{f,124},[{x,0},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,124}.
    {badmatch,{x,0}}.


{function, compiler_version, 0, 126}.
  {label,125}.
    {line,[{location,"compilation_SUITE.erl",385}]}.
    {func_info,{atom,compilation_SUITE},{atom,compiler_version},0}.
  {label,126}.
    {allocate,0,0}.
    {move,{atom,compile},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",387}]}.
    {call_ext,1,{extfunc,compile,module_info,1}}.
    {move,{integer,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,version},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",386}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_tuple,{f,127},[{x,0}]}.
    {test,test_arity,{f,127},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,0}.
    return.
  {label,127}.
    {badmatch,{x,0}}.


{function, compare_compilers, 2, 129}.
  {label,128}.
    {line,[{location,"compilation_SUITE.erl",390}]}.
    {func_info,{atom,compilation_SUITE},{atom,compare_compilers},2}.
  {label,129}.
    {allocate,0,2}.
    {line,[{location,"compilation_SUITE.erl",391}]}.
    {call_ext,2,{extfunc,beam_lib,cmp_dirs,2}}.
    {test,is_tuple,{f,131},[{x,0}]}.
    {test,test_arity,{f,131},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_nil,{f,131},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nil,{f,131},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {line,[{location,"compilation_SUITE.erl",395}]}.
    {call,1,{f,157}}. % '-compare_compilers/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,130},
          [{tr,{x,0},{t_list,any,nil}},{literal,["beam_asm.beam"]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,130}.
    {badmatch,{x,0}}.
  {label,131}.
    {line,[{location,"compilation_SUITE.erl",391}]}.
    {badmatch,{x,0}}.


{function, string_table, 1, 133}.
  {label,132}.
    {line,[{location,"compilation_SUITE.erl",400}]}.
    {func_info,{atom,compilation_SUITE},{atom,string_table},1}.
  {label,133}.
    {test,is_list,{f,132},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",401}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"string_table.erl"},{x,1}}.
    {line,[{location,"compilation_SUITE.erl",402}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[return,binary]},{x,1}}.
    {line,[{location,"compilation_SUITE.erl",403}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,136},[{x,0},4,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,136},[{x,1},{atom,string_table}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_nil,{f,136},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {move,{literal,["StrT"]},{x,1}}.
    {line,[{location,"compilation_SUITE.erl",404}]}.
    {call_ext,2,{extfunc,beam_lib,chunks,2}}.
    {test,is_tagged_tuple,{f,135},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,135},[{x,1},2,{atom,string_table}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,135},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,135},[{x,1}]}.
    {test,is_eq_exact,
          {f,134},
          [{x,2},{literal,{"StrT",<<"abcdefghiABCDEFGHI">>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,134}.
    {line,[{location,"compilation_SUITE.erl",405}]}.
    {badmatch,{x,2}}.
  {label,135}.
    {line,[{location,"compilation_SUITE.erl",404}]}.
    {badmatch,{x,0}}.
  {label,136}.
    {line,[{location,"compilation_SUITE.erl",403}]}.
    {badmatch,{x,0}}.


{function, otp_8949_a, 1, 138}.
  {label,137}.
    {line,[{location,"compilation_SUITE.erl",408}]}.
    {func_info,{atom,compilation_SUITE},{atom,otp_8949_a},1}.
  {label,138}.
    {test,is_list,{f,137},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"compilation_SUITE.erl",409}]}.
    {call,0,{f,141}}. % do_otp_8949_a/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[value]},
                     {t_cons,
                         {t_tuple,4,true,
                             #{1 => {t_atom,[cs]},
                               2 => {t_atom,[undefined]},
                               3 => nil,
                               4 => {t_integer,{1,1}}}},
                         nil},
                     none,none,none}}]}}.
    {test,is_eq_exact,
        {f,139},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[value]},
                 {t_cons,
                     {t_tuple,4,true,
                         #{1 => {t_atom,[cs]},
                           2 => {t_atom,[undefined]},
                           3 => nil,
                           4 => {t_integer,{1,1}}}},
                     nil},
                 none,none,none}},
         {atom,value}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,139}.
    {badmatch,{x,0}}.


{function, do_otp_8949_a, 0, 141}.
  {label,140}.
    {line,[{location,"compilation_SUITE.erl",415}]}.
    {func_info,{atom,compilation_SUITE},{atom,do_otp_8949_a},0}.
  {label,141}.
    {allocate,0,0}.
    {move,{literal,[{cs,undefined,[],1}]},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",416}]}.
    {call,1,{f,151}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[value]},
                     {t_cons,
                         {t_tuple,4,true,
                             #{1 => {t_atom,[cs]},
                               2 => {t_atom,[undefined]},
                               3 => nil,
                               4 => {t_integer,{1,1}}}},
                         nil},
                     none,none,none}}]}}.
    {test,is_nonempty_list,{f,142},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nil,
          {f,142},
          [{tr,{x,1},
               {t_list,{t_tuple,4,true,
                                #{1 => {t_atom,[cs]},
                                  2 => {t_atom,[undefined]},
                                  3 => nil,
                                  4 => {t_integer,{1,1}}}},
                       nil}}]}.
    {move,{atom,value},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",418}]}.
    {call,1,{f,151}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[value]},
                     {t_cons,
                         {t_tuple,4,true,
                             #{1 => {t_atom,[cs]},
                               2 => {t_atom,[undefined]},
                               3 => nil,
                               4 => {t_integer,{1,1}}}},
                         nil},
                     none,none,none}}]}}.
    {call_last,1,{f,151},0}. % id/1
  {label,142}.
    {line,[{location,"compilation_SUITE.erl",416}]}.
    {case_end,{x,0}}.


{function, split_cases, 1, 144}.
  {label,143}.
    {line,[{location,"compilation_SUITE.erl",430}]}.
    {func_info,{atom,compilation_SUITE},{atom,split_cases},1}.
  {label,144}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",431}]}.
    {call,1,{f,148}}. % do_split_cases/1
    {'%',{var_info,{x,0},[{type,{t_atom,[dummy1]}}]}}.
    {'catch',{y,0},{f,145}}.
    {move,{atom,y},{x,0}}.
    {line,[{location,"compilation_SUITE.erl",432}]}.
    {call,1,{f,148}}. % do_split_cases/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,145}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,146},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,146},[{x,1}]}.
    {test,test_arity,{f,146},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,146},[{x,1},{literal,{badmatch,b}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,146}.
    {line,[{scope,[0]},{location,"compilation_SUITE.erl",432}]}.
    {badmatch,{x,0}}.


{function, do_split_cases, 1, 148}.
  {label,147}.
    {line,[{location,"compilation_SUITE.erl",435}]}.
    {func_info,{atom,compilation_SUITE},{atom,do_split_cases},1}.
  {label,148}.
    {'%',{var_info,{x,0},[{type,{t_atom,[x,y]}}]}}.
    {test,is_eq_exact,{f,149},[{tr,{x,0},{t_atom,[x,y]}},{atom,x}]}.
    {move,{atom,dummy1},{x,0}}.
    return.
  {label,149}.
    {line,[{location,"compilation_SUITE.erl",441}]}.
    {badmatch,{atom,b}}.


{function, id, 1, 151}.
  {label,150}.
    {line,[{location,"compilation_SUITE.erl",446}]}.
    {func_info,{atom,compilation_SUITE},{atom,id},1}.
  {label,151}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[value]},
                     {t_cons,
                         {t_tuple,4,true,
                             #{1 => {t_atom,[cs]},
                               2 => {t_atom,[undefined]},
                               3 => nil,
                               4 => {t_integer,{1,1}}}},
                         nil},
                     none,none,none}}]}}.
    return.


{function, module_info, 0, 153}.
  {label,152}.
    {line,[]}.
    {func_info,{atom,compilation_SUITE},{atom,module_info},0}.
  {label,153}.
    {move,{atom,compilation_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 155}.
  {label,154}.
    {line,[]}.
    {func_info,{atom,compilation_SUITE},{atom,module_info},1}.
  {label,155}.
    {move,{x,0},{x,1}}.
    {move,{atom,compilation_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-compare_compilers/2-lc$^0/1-0-', 1, 157}.
  {label,156}.
    {line,[{location,"compilation_SUITE.erl",395}]}.
    {func_info,{atom,compilation_SUITE},
               {atom,'-compare_compilers/2-lc$^0/1-0-'},
               1}.
  {label,157}.
    {test,is_nonempty_list,{f,159},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,158},[{x,1}]}.
    {test,test_arity,{f,158},[{x,1},2]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {call_ext,1,{extfunc,filename,basename,1}}.
    {swap,{y,0},{x,0}}.
    {call,1,{f,157}}. % '-compare_compilers/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,158}.
    {call_only,1,{f,157}}. % '-compare_compilers/2-lc$^0/1-0-'/1
  {label,159}.
    {test,is_nil,{f,160},[{x,0}]}.
    return.
  {label,160}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-compile_compiler/4-fun-0-', 2, 162}.
  {label,161}.
    {line,[{location,"compilation_SUITE.erl",370}]}.
    {func_info,{atom,compilation_SUITE},{atom,'-compile_compiler/4-fun-0-'},2}.
  {label,162}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,any},
                         none,none,
                         [{{2,{t_atom,[i]}},
                           {t_tuple,2,true,#{1 => {t_atom,[i]}}}},
                          {{2,{t_atom,[inline]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[inline]},
                                 2 => {t_integer,{500,500}}}}},
                          {{2,{t_atom,[outdir]}},
                           {t_tuple,2,true,#{1 => {t_atom,[outdir]}}}},
                          {{3,{t_atom,[d]}},
                           {t_tuple,3,true,
                               #{1 => {t_atom,[d]},
                                 2 => {t_atom,['COMPILER_VSN']},
                                 3 => {t_cons,any,nil}}}}],
                         none},
                     nil}}]}}.
    {allocate,0,2}.
    {line,[{location,"compilation_SUITE.erl",371}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,163},[{x,0},2,{atom,ok}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,163}.
    {move,{atom,error},{x,0}}.
    {deallocate,0}.
    return.


{function, '-self_compile_node/4-fun-0-', 4, 165}.
  {label,164}.
    {line,[{location,"compilation_SUITE.erl",353}]}.
    {func_info,{atom,compilation_SUITE},
               {atom,'-self_compile_node/4-fun-0-'},
               4}.
  {label,165}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[inline,verbose]},
                         none,none,
                         [{{2,{t_atom,[inline]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[inline]},
                                 2 => {t_integer,{500,500}}}}}],
                         none},
                     nil}}]}}.
    {swap,{x,2},{x,3}}.
    {swap,{x,1},{x,2}}.
    {swap,{x,0},{x,1}}.
    {call_only,4,{f,119}}. % compile_compiler/4
