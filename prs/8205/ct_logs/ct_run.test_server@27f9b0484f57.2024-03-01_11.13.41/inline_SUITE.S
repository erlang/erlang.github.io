{module, inline_SUITE}.  %% version = 0

{exports, [{all,0},
           {attribute,1},
           {badarg,2},
           {barnes2,1},
           {bsdecode,1},
           {bsdes,1},
           {comma_splitter,1},
           {compare,2},
           {coverage,1},
           {decode1,1},
           {end_per_group,2},
           {end_per_suite,1},
           {fail_me_now,0},
           {fname,1},
           {foo,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {itracer,1},
           {lists,1},
           {load_and_call,2},
           {maps_inline_test,1},
           {module_info,0},
           {module_info,1},
           {my_apply,4},
           {otp_7223,1},
           {otp_7223_1,1},
           {otp_7223_2,1},
           {pseudoknot,1},
           {really_inlined,1},
           {smith,1},
           {suite,0},
           {try_inline,2}]}.

{attributes, []}.

{labels, 352}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"inline_SUITE.erl",32}]}.
    {func_info,{atom,inline_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"inline_SUITE.erl",34}]}.
    {func_info,{atom,inline_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"inline_SUITE.erl",37}]}.
    {func_info,{atom,inline_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"inline_SUITE.erl",38}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[attribute,bsdecode,bsdes,barnes2,decode1,
                                 smith,fname,itracer,pseudoknot,
                                 maps_inline_test,comma_splitter,lists,
                                 really_inlined,otp_7223,coverage]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"inline_SUITE.erl",43}]}.
    {func_info,{atom,inline_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",44}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"inline_SUITE.erl",47}]}.
    {func_info,{atom,inline_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"inline_SUITE.erl",50}]}.
    {func_info,{atom,inline_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"inline_SUITE.erl",53}]}.
    {func_info,{atom,inline_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, attribute, 1, 16}.
  {label,15}.
    {line,[{location,"inline_SUITE.erl",57}]}.
    {func_info,{atom,inline_SUITE},{atom,attribute},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"inline_SUITE.erl",59}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"attribute"},{x,1}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"inline_SUITE.erl",60}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,outdir},{x,0}]}}.
    {put_list,{x,1},{literal,[report,time]},{x,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"inline_SUITE.erl",62}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,19},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,19},[{x,1},{atom,attribute}]}.
    {move,{literal,"attribute.beam"},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"inline_SUITE.erl",63}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[locals]},{x,1}}.
    {line,[{location,"inline_SUITE.erl",64}]}.
    {call_ext,2,{extfunc,beam_lib,chunks,2}}.
    {test,is_tagged_tuple,{f,18},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,18},[{x,1}]}.
    {test,test_arity,{f,18},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_nonempty_list,{f,18},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_tagged_tuple,{f,18},[{x,3},2,{atom,locals}]}.
    {test,is_nil,{f,18},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,18},[{x,1},{atom,attribute}]}.
    {test_heap,2,4}.
    {get_tuple_element,{x,3},1,{y,0}}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{literal,"locals: ~p\n"},{x,0}}.
    {line,[{location,"inline_SUITE.erl",65}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test,is_nil,{f,17},[{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,17}.
    {line,[{location,"inline_SUITE.erl",68}]}.
    {badmatch,{y,0}}.
  {label,18}.
    {line,[{location,"inline_SUITE.erl",64}]}.
    {badmatch,{x,0}}.
  {label,19}.
    {line,[{location,"inline_SUITE.erl",62}]}.
    {badmatch,{x,0}}.


{function, bsdecode, 1, 21}.
  {label,20}.
    {line,[{location,"inline_SUITE.erl",76}]}.
    {func_info,{atom,inline_SUITE},{atom,bsdecode},1}.
  {label,21}.
    {test,is_list,{f,20},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,bsdecode},{x,0}}.
    {call_only,2,{f,41}}. % try_inline/2


{function, bsdes, 1, 23}.
  {label,22}.
    {line,[{location,"inline_SUITE.erl",77}]}.
    {func_info,{atom,inline_SUITE},{atom,bsdes},1}.
  {label,23}.
    {test,is_list,{f,22},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,bsdes},{x,0}}.
    {call_only,2,{f,41}}. % try_inline/2


{function, barnes2, 1, 25}.
  {label,24}.
    {line,[{location,"inline_SUITE.erl",78}]}.
    {func_info,{atom,inline_SUITE},{atom,barnes2},1}.
  {label,25}.
    {test,is_list,{f,24},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,barnes2},{x,0}}.
    {call_only,2,{f,41}}. % try_inline/2


{function, decode1, 1, 27}.
  {label,26}.
    {line,[{location,"inline_SUITE.erl",79}]}.
    {func_info,{atom,inline_SUITE},{atom,decode1},1}.
  {label,27}.
    {test,is_list,{f,26},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,decode1},{x,0}}.
    {call_only,2,{f,41}}. % try_inline/2


{function, smith, 1, 29}.
  {label,28}.
    {line,[{location,"inline_SUITE.erl",80}]}.
    {func_info,{atom,inline_SUITE},{atom,smith},1}.
  {label,29}.
    {test,is_list,{f,28},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,smith},{x,0}}.
    {call_only,2,{f,41}}. % try_inline/2


{function, itracer, 1, 31}.
  {label,30}.
    {line,[{location,"inline_SUITE.erl",81}]}.
    {func_info,{atom,inline_SUITE},{atom,itracer},1}.
  {label,31}.
    {test,is_list,{f,30},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,itracer},{x,0}}.
    {call_only,2,{f,41}}. % try_inline/2


{function, pseudoknot, 1, 33}.
  {label,32}.
    {line,[{location,"inline_SUITE.erl",82}]}.
    {func_info,{atom,inline_SUITE},{atom,pseudoknot},1}.
  {label,33}.
    {test,is_list,{f,32},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,pseudoknot},{x,0}}.
    {call_only,2,{f,41}}. % try_inline/2


{function, comma_splitter, 1, 35}.
  {label,34}.
    {line,[{location,"inline_SUITE.erl",83}]}.
    {func_info,{atom,inline_SUITE},{atom,comma_splitter},1}.
  {label,35}.
    {test,is_list,{f,34},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,comma_splitter},{x,0}}.
    {call_only,2,{f,41}}. % try_inline/2


{function, fname, 1, 37}.
  {label,36}.
    {line,[{location,"inline_SUITE.erl",84}]}.
    {func_info,{atom,inline_SUITE},{atom,fname},1}.
  {label,37}.
    {test,is_list,{f,36},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,fname},{x,0}}.
    {call_only,2,{f,41}}. % try_inline/2


{function, maps_inline_test, 1, 39}.
  {label,38}.
    {line,[{location,"inline_SUITE.erl",85}]}.
    {func_info,{atom,inline_SUITE},{atom,maps_inline_test},1}.
  {label,39}.
    {test,is_list,{f,38},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,maps_inline_test},{x,0}}.
    {call_only,2,{f,41}}. % try_inline/2


{function, try_inline, 2, 41}.
  {label,40}.
    {line,[{location,"inline_SUITE.erl",87}]}.
    {func_info,{atom,inline_SUITE},{atom,try_inline},2}.
  {label,41}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"inline_SUITE.erl",88}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{y,2}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"inline_SUITE.erl",89}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"inline_SUITE.erl",88}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"inline_SUITE.erl",90}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,2,1}.
    {put_list,{y,3},nil,{x,1}}.
    {move,{x,0},{y,2}}.
    {move,{literal,"Compiling: ~s\n"},{x,0}}.
    {line,[{location,"inline_SUITE.erl",93}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,5,0}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,0},
              {literal,[report,bin_opt_info,recv_opt_info,clint,ssalint]},
              {x,1}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"inline_SUITE.erl",94}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,47},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,47},[{x,1},{y,4}]}.
    {move,{literal,{minutes,10}},{x,0}}.
    {line,[{location,"inline_SUITE.erl",97}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {move,{y,4},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"inline_SUITE.erl",98}]}.
    {call,2,{f,55}}. % load_and_call/2
    {test_heap,2,1}.
    {put_list,{y,3},nil,{x,1}}.
    {move,{x,0},{y,1}}.
    {move,{literal,"Compiling with old inliner: ~s\n"},{x,0}}.
    {line,[{location,"inline_SUITE.erl",101}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,5,0}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,0},
              {literal,[report,bin_opt_info,recv_opt_info,
                        {inline,1000},
                        clint,ssalint]},
              {x,1}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"inline_SUITE.erl",102}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,46},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,46},[{x,1},{y,4}]}.
    {move,{literal,{minutes,10}},{x,0}}.
    {line,[{location,"inline_SUITE.erl",106}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {move,{y,4},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"inline_SUITE.erl",107}]}.
    {call,2,{f,55}}. % load_and_call/2
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"inline_SUITE.erl",110}]}.
    {call,2,{f,49}}. % compare/2
    {test,is_eq_exact,{f,45},[{y,0},{y,1}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,"Compiling with new inliner: ~s\n"},{x,0}}.
    {line,[{location,"inline_SUITE.erl",114}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,5,0}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,0},
              {literal,[report,bin_opt_info,inline,recv_opt_info,clint,
                        ssalint]},
              {x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{location,"inline_SUITE.erl",115}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,44},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,44},[{x,1},{y,4}]}.
    {move,{literal,{minutes,10}},{x,0}}.
    {line,[{location,"inline_SUITE.erl",119}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {move,{y,4},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"inline_SUITE.erl",120}]}.
    {call,2,{f,55}}. % load_and_call/2
    {move,{x,0},{y,3}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"inline_SUITE.erl",123}]}.
    {call,2,{f,49}}. % compare/2
    {test,is_eq_exact,{f,43},[{y,3},{y,1}]}.
    {init_yregs,{list,[{y,3}]}}.
    {trim,2,3}.
    {move,{y,2},{x,0}}.
    {line,[{location,"inline_SUITE.erl",127}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {move,{x,0},{y,1}}.
    {call_ext,0,{extfunc,code,objfile_extension,0}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,2,1}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {call_ext,1,{extfunc,file,delete,1}}.
    {test,is_eq_exact,{f,42},[{x,0},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"inline_SUITE.erl",130}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"inline_SUITE.erl",131}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"inline_SUITE.erl",132}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,42}.
    {line,[{location,"inline_SUITE.erl",127}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{location,"inline_SUITE.erl",124}]}.
    {badmatch,{y,3}}.
  {label,44}.
    {line,[{location,"inline_SUITE.erl",115}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{location,"inline_SUITE.erl",111}]}.
    {badmatch,{y,0}}.
  {label,46}.
    {line,[{location,"inline_SUITE.erl",102}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{location,"inline_SUITE.erl",94}]}.
    {badmatch,{x,0}}.


{function, compare, 2, 49}.
  {label,48}.
    {line,[{location,"inline_SUITE.erl",136}]}.
    {func_info,{atom,inline_SUITE},{atom,compare},2}.
  {label,49}.
    {test,is_ne_exact,{f,53},[{x,1},{x,0}]}.
    {test,is_nonempty_list,{f,52},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,48},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_eq_exact,{f,50},[{x,0},{x,2}]}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,49}}. % compare/2
  {label,50}.
    {test,is_tuple,{f,51},[{x,2}]}.
    {test,test_arity,{f,51},[{x,2},3]}.
    {test,is_tuple,{f,51},[{x,0}]}.
    {test,test_arity,{f,51},[{x,0},3]}.
    {get_tuple_element,{x,2},0,{x,4}}.
    {get_tuple_element,{x,0},0,{x,5}}.
    {test,is_eq_exact,{f,51},[{x,5},{x,4}]}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {get_tuple_element,{x,2},1,{x,6}}.
    {test,is_eq_exact,{f,51},[{x,5},{x,6}]}.
    {allocate_heap,2,8,7}.
    {move,{x,1},{y,0}}.
    {move,{x,3},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {get_tuple_element,{x,2},2,{x,1}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{x,6},{x,0},{x,0}}.
    {put_list,{x,4},{x,0},{x,1}}.
    {move,{literal,"X = ~p, Y = ~p, RGB normal = ~p, RGB inlined ~p\n"},{x,0}}.
    {line,[{location,"inline_SUITE.erl",140}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,49},2}. % compare/2
  {label,51}.
    {allocate_heap,0,4,3}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {move,{literal,"Normal = ~p, Inlined = ~p\n"},{x,0}}.
    {line,[{location,"inline_SUITE.erl",143}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,different},{x,0}}.
    {line,[{location,"inline_SUITE.erl",144}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,52}.
    {test,is_nil,{f,48},[{x,0}]}.
    {test,is_nil,{f,48},[{x,1}]}.
  {label,53}.
    {move,{atom,ok},{x,0}}.
    return.


{function, load_and_call, 2, 55}.
  {label,54}.
    {line,[{location,"inline_SUITE.erl",147}]}.
    {func_info,{atom,inline_SUITE},{atom,load_and_call},2}.
  {label,55}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,nil,{x,1}}.
    {move,{literal,"Loading...\n"},{x,0}}.
    {line,[{location,"inline_SUITE.erl",148}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"inline_SUITE.erl",149}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"inline_SUITE.erl",150}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {call_ext,1,{extfunc,code,load_abs,1}}.
    {test,is_tagged_tuple,{f,57},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,57},[{x,1},{y,0}]}.
    {move,nil,{x,1}}.
    {move,{literal,"Calling...\n"},{x,0}}.
    {line,[{location,"inline_SUITE.erl",153}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"inline_SUITE.erl",154}]}.
    {call_ext,3,{extfunc,timer,tc,3}}.
    {test,is_tuple,{f,56},[{x,0}]}.
    {test,test_arity,{f,56},[{x,0},2]}.
    {test_heap,2,1}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {move,{literal,"Time: ~p\n"},{x,0}}.
    {line,[{location,"inline_SUITE.erl",155}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,56}.
    {line,[{location,"inline_SUITE.erl",154}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{location,"inline_SUITE.erl",151}]}.
    {badmatch,{x,0}}.


{function, lists, 1, 59}.
  {label,58}.
    {line,[{location,"inline_SUITE.erl",190}]}.
    {func_info,{atom,inline_SUITE},{atom,lists},1}.
  {label,59}.
    {test,is_list,{f,58},[{x,0}]}.
    {allocate,20,0}.
    {init_yregs,{list,[{y,0},
                       {y,1},
                       {y,2},
                       {y,3},
                       {y,4},
                       {y,5},
                       {y,6},
                       {y,7},
                       {y,8},
                       {y,9},
                       {y,10},
                       {y,11},
                       {y,12},
                       {y,13},
                       {y,14},
                       {y,15},
                       {y,16},
                       {y,17},
                       {y,18},
                       {y,19}]}}.
    {move,{integer,20},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"inline_SUITE.erl",191}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,19}}.
    {move,nil,{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",194}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,321},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,255}}}]}}.
    {move,{y,19},{x,0}}.
    {call,2,{f,317}}. % '-lists/1-lists^map/1-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {line,[{location,"inline_SUITE.erl",199}]}.
    {call,1,{f,323}}. % '-lists/1-fun-2-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,19},{x,1}}.
    {line,[{location,"inline_SUITE.erl",194}]}.
    {call,2,{f,325}}. % '-lists/1-fun-1-'/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",202}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,307},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_list,any,nil}}]}}.
    {move,{y,19},{x,0}}.
    {call,2,{f,303}}. % '-lists/1-lists^flatmap/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {line,[{location,"inline_SUITE.erl",207}]}.
    {call,1,{f,309}}. % '-lists/1-fun-6-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,19},{x,1}}.
    {line,[{location,"inline_SUITE.erl",202}]}.
    {call,2,{f,311}}. % '-lists/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",210}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,293},0,0,{x,1},{list,[]}}.
    {move,{y,19},{x,0}}.
    {call,2,{f,289}}. % '-lists/1-lists^foreach/1-5-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"inline_SUITE.erl",213}]}.
    {call,1,{f,295}}. % '-lists/1-fun-10-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,19},{x,1}}.
    {line,[{location,"inline_SUITE.erl",210}]}.
    {call,2,{f,297}}. % '-lists/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",216}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,279},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{y,19},{x,0}}.
    {call,2,{f,274}}. % '-lists/1-lists^filter/1-7-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {line,[{location,"inline_SUITE.erl",220}]}.
    {call,1,{f,281}}. % '-lists/1-fun-14-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,19},{x,1}}.
    {line,[{location,"inline_SUITE.erl",216}]}.
    {call,2,{f,283}}. % '-lists/1-fun-13-'/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",223}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,264},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false]}}]}}.
    {move,{y,19},{x,0}}.
    {call,2,{f,260}}. % '-lists/1-lists^any/1-9-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {line,[{location,"inline_SUITE.erl",227}]}.
    {call,1,{f,266}}. % '-lists/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,19},{x,1}}.
    {line,[{location,"inline_SUITE.erl",223}]}.
    {call,2,{f,268}}. % '-lists/1-fun-17-'/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",230}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,250},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[true]}}]}}.
    {move,{y,19},{x,0}}.
    {call,2,{f,246}}. % '-lists/1-lists^all/1-11-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {line,[{location,"inline_SUITE.erl",234}]}.
    {call,1,{f,252}}. % '-lists/1-fun-22-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,19},{x,1}}.
    {line,[{location,"inline_SUITE.erl",230}]}.
    {call,2,{f,254}}. % '-lists/1-fun-21-'/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",237}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,236},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,any}}]}}.
    {move,{integer,0},{x,1}}.
    {move,{y,19},{x,0}}.
    {call,3,{f,232}}. % '-lists/1-lists^foldl/2-13-'/3
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {line,[{location,"inline_SUITE.erl",241}]}.
    {call,1,{f,238}}. % '-lists/1-fun-26-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,19},{x,1}}.
    {line,[{location,"inline_SUITE.erl",237}]}.
    {call,2,{f,240}}. % '-lists/1-fun-25-'/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",244}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,222},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,any}}]}}.
    {move,{integer,0},{x,1}}.
    {move,{y,19},{x,0}}.
    {call,3,{f,218}}. % '-lists/1-lists^foldr/2-15-'/3
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {line,[{location,"inline_SUITE.erl",248}]}.
    {call,1,{f,224}}. % '-lists/1-fun-30-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,19},{x,1}}.
    {line,[{location,"inline_SUITE.erl",244}]}.
    {call,2,{f,226}}. % '-lists/1-fun-29-'/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",251}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,208},0,0,{x,2},{list,[]}}.
    {'%',
        {var_info,
            {x,2},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,any},2 => {t_integer,any}}}}]}}.
    {move,{integer,0},{x,1}}.
    {move,{y,19},{x,0}}.
    {call,3,{f,204}}. % '-lists/1-lists^mapfoldl/2-17-'/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_integer,any}}}}]}}.
    {line,[{location,"inline_SUITE.erl",255}]}.
    {call,1,{f,210}}. % '-lists/1-fun-34-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,19},{x,1}}.
    {line,[{location,"inline_SUITE.erl",251}]}.
    {call,2,{f,212}}. % '-lists/1-fun-33-'/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,nil,{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",258}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,194},0,0,{x,2},{list,[]}}.
    {'%',
        {var_info,
            {x,2},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,any},2 => {t_integer,any}}}}]}}.
    {move,{integer,0},{x,1}}.
    {move,{y,19},{x,0}}.
    {call,3,{f,190}}. % '-lists/1-lists^mapfoldr/2-19-'/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_integer,any}}}}]}}.
    {line,[{location,"inline_SUITE.erl",262}]}.
    {call,1,{f,196}}. % '-lists/1-fun-38-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,19},{x,1}}.
    {init_yregs,{list,[{y,19}]}}.
    {line,[{location,"inline_SUITE.erl",258}]}.
    {call,2,{f,198}}. % '-lists/1-fun-37-'/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",265}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,188},0,0,{x,1},{list,[]}}.
    {'catch',{y,19},{f,60}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{location,"inline_SUITE.erl",268}]}.
    {call,2,{f,186}}. % '-lists/1-lists^map/1-20-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,60}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,99},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,99},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,99},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,99},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,99},[{x,1},{literal,[not_a_list]}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,184},0,0,{x,1},{list,[]}}.
    {'catch',{y,18},{f,61}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,"&"},{location,"inline_SUITE.erl",270}]}.
    {call,2,{f,182}}. % '-lists/1-lists^flatmap/1-21-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,61}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,98},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,98},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,98},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,98},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,98},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,98},[{x,1},{literal,[not_a_list]}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,180},0,0,{x,1},{list,[]}}.
    {'catch',{y,17},{f,62}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,"$"},{location,"inline_SUITE.erl",272}]}.
    {call,2,{f,178}}. % '-lists/1-lists^foreach/1-22-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,62}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,97},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,97},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,97},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,97},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,97},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,97},[{x,1},{literal,[not_a_list]}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,176},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[true]}}]}}.
    {'catch',{y,16},{f,63}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,"\""},{location,"inline_SUITE.erl",274}]}.
    {call,2,{f,174}}. % '-lists/1-lists^filter/1-23-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,63}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,96},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,96},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,96},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,96},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,96},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,96},[{x,1},{literal,[not_a_list]}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,172},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false]}}]}}.
    {'catch',{y,15},{f,64}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope," "},{location,"inline_SUITE.erl",276}]}.
    {call,2,{f,170}}. % '-lists/1-lists^any/1-24-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,64}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,95},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,95},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,95},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,95},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,95},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,95},[{x,1},{literal,[not_a_list]}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,168},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[true]}}]}}.
    {'catch',{y,14},{f,65}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,[30]},{location,"inline_SUITE.erl",278}]}.
    {call,2,{f,166}}. % '-lists/1-lists^all/1-25-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,65}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,94},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,94},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,94},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,94},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,94},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,94},[{x,1},{literal,[not_a_list]}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,164},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {'catch',{y,13},{f,66}}.
    {move,{atom,acc},{x,1}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,[28]},{location,"inline_SUITE.erl",280}]}.
    {call,3,{f,162}}. % '-lists/1-lists^foldl/2-26-'/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,66}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,93},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,93},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,93},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,93},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,93},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,93},[{x,1},{literal,[acc,not_a_list]}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,160},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {'catch',{y,12},{f,67}}.
    {move,{atom,acc},{x,1}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,[26]},{location,"inline_SUITE.erl",282}]}.
    {call,3,{f,158}}. % '-lists/1-lists^foldr/2-27-'/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,67}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,92},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,92},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,92},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,92},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,92},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,92},[{x,1},{literal,[acc,not_a_list]}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,156},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {'catch',{y,11},{f,68}}.
    {move,{atom,acc},{x,1}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,[24]},{location,"inline_SUITE.erl",284}]}.
    {call,3,{f,154}}. % '-lists/1-lists^mapfoldl/2-28-'/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,68}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,91},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,91},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,91},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,91},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,91},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,91},[{x,1},{literal,[acc,not_a_list]}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,152},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {'catch',{y,10},{f,69}}.
    {move,{atom,acc},{x,1}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,[22]},{location,"inline_SUITE.erl",286}]}.
    {call,3,{f,150}}. % '-lists/1-lists^mapfoldr/2-29-'/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,69}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,90},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,90},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,90},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,90},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,90},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,90},[{x,1},{literal,[acc,not_a_list]}]}.
    {'catch',{y,9},{f,70}}.
    {move,nil,{x,0}}.
    {line,[{scope,[20]},{location,"inline_SUITE.erl",289}]}.
    {call,1,{f,148}}. % '-lists/1-lists^map/1-30-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,70}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,89},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,89},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,89},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,89},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,89},[{x,1},{literal,[not_a_function,[]]}]}.
    {'catch',{y,8},{f,71}}.
    {move,nil,{x,0}}.
    {line,[{scope,[18]},{location,"inline_SUITE.erl",291}]}.
    {call,1,{f,146}}. % '-lists/1-lists^flatmap/1-31-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,71}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,88},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,88},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,88},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,88},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,88},[{x,1},{literal,[not_a_function,[]]}]}.
    {'catch',{y,7},{f,72}}.
    {move,nil,{x,0}}.
    {line,[{scope,[16]},{location,"inline_SUITE.erl",293}]}.
    {call,1,{f,144}}. % '-lists/1-lists^foreach/1-32-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,72}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,87},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,87},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,87},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,87},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,87},[{x,1},{literal,[not_a_function,[]]}]}.
    {'catch',{y,6},{f,73}}.
    {move,nil,{x,0}}.
    {line,[{scope,[14]},{location,"inline_SUITE.erl",295}]}.
    {call,1,{f,142}}. % '-lists/1-lists^filter/1-33-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,73}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,86},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,86},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,86},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,86},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,86},[{x,1},{literal,[not_a_function,[]]}]}.
    {'catch',{y,5},{f,74}}.
    {move,nil,{x,0}}.
    {line,[{scope,"\f"},{location,"inline_SUITE.erl",297}]}.
    {call,1,{f,140}}. % '-lists/1-lists^any/1-34-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,74}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,85},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,85},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,85},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,85},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,85},[{x,1},{literal,[not_a_function,[]]}]}.
    {'catch',{y,4},{f,75}}.
    {move,nil,{x,0}}.
    {line,[{scope,"\n"},{location,"inline_SUITE.erl",299}]}.
    {call,1,{f,138}}. % '-lists/1-lists^all/1-35-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,75}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,84},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,84},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,84},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,84},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,84},[{x,1},{literal,[not_a_function,[]]}]}.
    {'catch',{y,3},{f,76}}.
    {move,{atom,acc},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,"\b"},{location,"inline_SUITE.erl",301}]}.
    {call,2,{f,136}}. % '-lists/1-lists^foldl/2-36-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,76}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,83},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,83},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,83},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,83},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,83},[{x,1},{literal,[not_a_function,acc,[]]}]}.
    {'catch',{y,2},{f,77}}.
    {move,{atom,acc},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"inline_SUITE.erl",303}]}.
    {call,2,{f,134}}. % '-lists/1-lists^foldr/2-37-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,77}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,82},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,82},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,82},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,82},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,82},[{x,1},{literal,[not_a_function,acc,[]]}]}.
    {'catch',{y,1},{f,78}}.
    {move,{atom,acc},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[4]},{location,"inline_SUITE.erl",305}]}.
    {call,2,{f,132}}. % '-lists/1-lists^mapfoldl/2-38-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,78}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,81},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,81},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,81},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,81},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,81},[{x,1},{literal,[not_a_function,acc,[]]}]}.
    {'catch',{y,0},{f,79}}.
    {move,{atom,acc},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"inline_SUITE.erl",307}]}.
    {call,2,{f,130}}. % '-lists/1-lists^mapfoldr/2-39-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,79}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,80},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,80},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,80},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,80},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,80},[{x,1},{literal,[not_a_function,acc,[]]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,20}.
    return.
  {label,80}.
    {line,[{scope,[0]},{location,"inline_SUITE.erl",306}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{scope,[2]},{location,"inline_SUITE.erl",304}]}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{scope,[4]},{location,"inline_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,83}.
    {line,[{scope,[6]},{location,"inline_SUITE.erl",300}]}.
    {badmatch,{x,0}}.
  {label,84}.
    {line,[{scope,"\b"},{location,"inline_SUITE.erl",298}]}.
    {badmatch,{x,0}}.
  {label,85}.
    {line,[{scope,"\n"},{location,"inline_SUITE.erl",296}]}.
    {badmatch,{x,0}}.
  {label,86}.
    {line,[{scope,"\f"},{location,"inline_SUITE.erl",294}]}.
    {badmatch,{x,0}}.
  {label,87}.
    {line,[{scope,[14]},{location,"inline_SUITE.erl",292}]}.
    {badmatch,{x,0}}.
  {label,88}.
    {line,[{scope,[16]},{location,"inline_SUITE.erl",290}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{scope,[18]},{location,"inline_SUITE.erl",288}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{scope,[20]},{location,"inline_SUITE.erl",285}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{scope,[22]},{location,"inline_SUITE.erl",283}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[24]},{location,"inline_SUITE.erl",281}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[26]},{location,"inline_SUITE.erl",279}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[28]},{location,"inline_SUITE.erl",277}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[30]},{location,"inline_SUITE.erl",275}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope," "},{location,"inline_SUITE.erl",273}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,"\""},{location,"inline_SUITE.erl",271}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,"$"},{location,"inline_SUITE.erl",269}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,"&"},{location,"inline_SUITE.erl",267}]}.
    {badmatch,{x,0}}.


{function, my_apply, 4, 101}.
  {label,100}.
    {line,[{location,"inline_SUITE.erl",311}]}.
    {func_info,{atom,inline_SUITE},{atom,my_apply},4}.
  {label,101}.
    {allocate,3,4}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,3},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",312}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {trim,3,0}.
    {line,[{location,"inline_SUITE.erl",313}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,0}.
    return.


{function, really_inlined, 1, 103}.
  {label,102}.
    {line,[{location,"inline_SUITE.erl",316}]}.
    {func_info,{atom,inline_SUITE},{atom,really_inlined},1}.
  {label,103}.
    {test,is_list,{f,102},[{x,0}]}.
    {allocate,1,0}.
    {'catch',{y,0},{f,104}}.
    {line,[{location,"inline_SUITE.erl",319}]}.
    {call,0,{f,107}}. % fail_me_now/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,104}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,105},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,105},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,105},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,105},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,105},[{x,2},{atom,fail_me_now}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nil,{f,105},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,105}.
    {line,[{scope,[0]},{location,"inline_SUITE.erl",318}]}.
    {badmatch,{x,0}}.


{function, fail_me_now, 0, 107}.
  {label,106}.
    {line,[{location,"inline_SUITE.erl",322}]}.
    {func_info,{atom,inline_SUITE},{atom,fail_me_now},0}.
  {label,107}.
    {allocate,0,0}.
    {move,{atom,bar},{x,0}}.
    {line,[{location,"inline_SUITE.erl",323}]}.
    {call,1,{f,109}}. % foo/1
    {'%',{var_info,{x,0},[{type,{t_atom,[badarg]}}]}}.
    {move,nil,{x,1}}.
    {line,[{location,"inline_SUITE.erl",330}]}.
    {call_ext_last,2,{extfunc,erlang,error,2},0}.


{function, foo, 1, 109}.
  {label,108}.
    {line,[{location,"inline_SUITE.erl",325}]}.
    {func_info,{atom,inline_SUITE},{atom,foo},1}.
  {label,109}.
    {move,{atom,badarg},{x,0}}.
    return.


{function, badarg, 2, 111}.
  {label,110}.
    {line,[{location,"inline_SUITE.erl",329}]}.
    {func_info,{atom,inline_SUITE},{atom,badarg},2}.
  {label,111}.
    {test,is_eq_exact,{f,112},[{x,0},{atom,badarg}]}.
    {line,[{location,"inline_SUITE.erl",330}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.
  {label,112}.
    return.


{function, otp_7223, 1, 114}.
  {label,113}.
    {line,[{location,"inline_SUITE.erl",334}]}.
    {func_info,{atom,inline_SUITE},{atom,otp_7223},1}.
  {label,114}.
    {test,is_list,{f,113},[{x,0}]}.
    {allocate,1,0}.
    {'catch',{y,0},{f,115}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"inline_SUITE.erl",343}]}.
    {call,1,{f,331}}. % '-inlined-otp_7223_2/1-'/1
  {label,115}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,116},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,116},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,116},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,116},[{x,1},4,{atom,inline_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,116},[{x,1},{literal,[1]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,116}.
    {line,[{scope,[0]},{location,"inline_SUITE.erl",335}]}.
    {badmatch,{x,0}}.


{function, otp_7223_1, 1, 118}.
  {label,117}.
    {line,[{location,"inline_SUITE.erl",339}]}.
    {func_info,{atom,inline_SUITE},{atom,otp_7223_1},1}.
  {label,118}.
    {test,is_eq_exact,{f,119},[{x,0},{literal,{a}}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,119}.
    {call_only,1,{f,331}}. % '-inlined-otp_7223_2/1-'/1


{function, otp_7223_2, 1, 121}.
  {label,120}.
    {line,[{location,"inline_SUITE.erl",343}]}.
    {func_info,{atom,inline_SUITE},{atom,otp_7223_2},1}.
  {label,121}.
    {test,is_eq_exact,{f,120},[{x,0},{literal,{a}}]}.
    {move,{integer,1},{x,0}}.
    return.


{function, coverage, 1, 123}.
  {label,122}.
    {line,[{location,"inline_SUITE.erl",346}]}.
    {func_info,{atom,inline_SUITE},{atom,coverage},1}.
  {label,123}.
    {test,is_list,{f,122},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"inline_SUITE.erl",348}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{atom,attribute},{x,1}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[binary,report,{inline,0},clint,ssalint]},{x,1}}.
    {line,[{location,"inline_SUITE.erl",349}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,124},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,124},[{x,1},{atom,attribute}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,124}.
    {badmatch,{x,0}}.


{function, module_info, 0, 126}.
  {label,125}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,module_info},0}.
  {label,126}.
    {move,{atom,inline_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 128}.
  {label,127}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,module_info},1}.
  {label,128}.
    {move,{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-lists/1-lists^mapfoldr/2-39-', 2, 130}.
  {label,129}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^mapfoldr/2-39-'},2}.
  {label,130}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[acc]}}]}}.
    {move,{literal,[not_a_function,acc,[]]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",307}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-lists^mapfoldl/2-38-', 2, 132}.
  {label,131}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^mapfoldl/2-38-'},2}.
  {label,132}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[acc]}}]}}.
    {move,{literal,[not_a_function,acc,[]]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",305}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-lists^foldr/2-37-', 2, 134}.
  {label,133}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^foldr/2-37-'},2}.
  {label,134}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[acc]}}]}}.
    {move,{literal,[not_a_function,acc,[]]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",303}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-lists^foldl/2-36-', 2, 136}.
  {label,135}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^foldl/2-36-'},2}.
  {label,136}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[acc]}}]}}.
    {move,{literal,[not_a_function,acc,[]]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",301}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-lists^all/1-35-', 1, 138}.
  {label,137}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^all/1-35-'},1}.
  {label,138}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[not_a_function,[]]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",299}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-lists^any/1-34-', 1, 140}.
  {label,139}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^any/1-34-'},1}.
  {label,140}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[not_a_function,[]]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",297}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-lists^filter/1-33-', 1, 142}.
  {label,141}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^filter/1-33-'},1}.
  {label,142}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[not_a_function,[]]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",295}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-lists^foreach/1-32-', 1, 144}.
  {label,143}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^foreach/1-32-'},1}.
  {label,144}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[not_a_function,[]]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",293}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-lists^flatmap/1-31-', 1, 146}.
  {label,145}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^flatmap/1-31-'},1}.
  {label,146}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[not_a_function,[]]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",291}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-lists^map/1-30-', 1, 148}.
  {label,147}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^map/1-30-'},1}.
  {label,148}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[not_a_function,[]]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",289}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-lists^mapfoldr/2-29-', 3, 150}.
  {label,149}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^mapfoldr/2-29-'},3}.
  {label,150}.
    {'%',{var_info,{x,0},[{type,{t_atom,[not_a_list]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[acc]}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_fun,2,
                                 {'-lists/1-fun-49-',2},
                                 {t_tuple,2,true,#{}}}}]}}.
    {test_heap,2,3}.
    {put_list,{x,2},{literal,[acc,not_a_list]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",286}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-49-', 2, 152}.
  {label,151}.
    {line,[{location,"inline_SUITE.erl",286}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-49-'},2}.
  {label,152}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-lists^mapfoldl/2-28-', 3, 154}.
  {label,153}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^mapfoldl/2-28-'},3}.
  {label,154}.
    {'%',{var_info,{x,0},[{type,{t_atom,[not_a_list]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[acc]}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_fun,2,
                                 {'-lists/1-fun-48-',2},
                                 {t_tuple,2,true,#{}}}}]}}.
    {test_heap,2,3}.
    {put_list,{x,2},{literal,[acc,not_a_list]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",284}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-48-', 2, 156}.
  {label,155}.
    {line,[{location,"inline_SUITE.erl",284}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-48-'},2}.
  {label,156}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-lists^foldr/2-27-', 3, 158}.
  {label,157}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^foldr/2-27-'},3}.
  {label,158}.
    {'%',{var_info,{x,0},[{type,{t_atom,[not_a_list]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[acc]}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_fun,2,
                                 {'-lists/1-fun-47-',2},
                                 {t_tuple,2,true,#{}}}}]}}.
    {test_heap,2,3}.
    {put_list,{x,2},{literal,[acc,not_a_list]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",282}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-47-', 2, 160}.
  {label,159}.
    {line,[{location,"inline_SUITE.erl",282}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-47-'},2}.
  {label,160}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-lists^foldl/2-26-', 3, 162}.
  {label,161}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^foldl/2-26-'},3}.
  {label,162}.
    {'%',{var_info,{x,0},[{type,{t_atom,[not_a_list]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[acc]}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_fun,2,
                                 {'-lists/1-fun-46-',2},
                                 {t_tuple,2,true,#{}}}}]}}.
    {test_heap,2,3}.
    {put_list,{x,2},{literal,[acc,not_a_list]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",280}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-46-', 2, 164}.
  {label,163}.
    {line,[{location,"inline_SUITE.erl",280}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-46-'},2}.
  {label,164}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-lists^all/1-25-', 2, 166}.
  {label,165}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^all/1-25-'},2}.
  {label,166}.
    {'%',{var_info,{x,0},[{type,{t_atom,[not_a_list]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_fun,1,{'-lists/1-fun-45-',1},{t_atom,[true]}}}]}}.
    {test_heap,2,2}.
    {put_list,{x,1},{literal,[not_a_list]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",278}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-45-', 1, 168}.
  {label,167}.
    {line,[{location,"inline_SUITE.erl",278}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-45-'},1}.
  {label,168}.
    {move,{atom,true},{x,0}}.
    return.


{function, '-lists/1-lists^any/1-24-', 2, 170}.
  {label,169}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^any/1-24-'},2}.
  {label,170}.
    {'%',{var_info,{x,0},[{type,{t_atom,[not_a_list]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_fun,1,
                                 {'-lists/1-fun-44-',1},
                                 {t_atom,[false]}}}]}}.
    {test_heap,2,2}.
    {put_list,{x,1},{literal,[not_a_list]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",276}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-44-', 1, 172}.
  {label,171}.
    {line,[{location,"inline_SUITE.erl",276}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-44-'},1}.
  {label,172}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-lists/1-lists^filter/1-23-', 2, 174}.
  {label,173}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^filter/1-23-'},2}.
  {label,174}.
    {'%',{var_info,{x,0},[{type,{t_atom,[not_a_list]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_fun,1,{'-lists/1-fun-43-',1},{t_atom,[true]}}}]}}.
    {test_heap,2,2}.
    {put_list,{x,1},{literal,[not_a_list]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",274}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-43-', 1, 176}.
  {label,175}.
    {line,[{location,"inline_SUITE.erl",274}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-43-'},1}.
  {label,176}.
    {move,{atom,true},{x,0}}.
    return.


{function, '-lists/1-lists^foreach/1-22-', 2, 178}.
  {label,177}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^foreach/1-22-'},2}.
  {label,178}.
    {'%',{var_info,{x,0},[{type,{t_atom,[not_a_list]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,{'-lists/1-fun-42-',1},any}}]}}.
    {test_heap,2,2}.
    {put_list,{x,1},{literal,[not_a_list]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",272}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-42-', 1, 180}.
  {label,179}.
    {line,[{location,"inline_SUITE.erl",272}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-42-'},1}.
  {label,180}.
    return.


{function, '-lists/1-lists^flatmap/1-21-', 2, 182}.
  {label,181}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^flatmap/1-21-'},2}.
  {label,182}.
    {'%',{var_info,{x,0},[{type,{t_atom,[not_a_list]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,{'-lists/1-fun-41-',1},any}}]}}.
    {test_heap,2,2}.
    {put_list,{x,1},{literal,[not_a_list]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",270}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-41-', 1, 184}.
  {label,183}.
    {line,[{location,"inline_SUITE.erl",270}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-41-'},1}.
  {label,184}.
    return.


{function, '-lists/1-lists^map/1-20-', 2, 186}.
  {label,185}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^map/1-20-'},2}.
  {label,186}.
    {'%',{var_info,{x,0},[{type,{t_atom,[not_a_list]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,{'-lists/1-fun-40-',1},any}}]}}.
    {test_heap,2,2}.
    {put_list,{x,1},{literal,[not_a_list]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"inline_SUITE.erl",268}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-40-', 1, 188}.
  {label,187}.
    {line,[{location,"inline_SUITE.erl",268}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-40-'},1}.
  {label,188}.
    return.


{function, '-lists/1-lists^mapfoldr/2-19-', 3, 190}.
  {label,189}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^mapfoldr/2-19-'},3}.
  {label,190}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_fun,2,
                     {'-lists/1-fun-39-',2},
                     {t_tuple,2,true,
                         #{1 => {t_integer,any},2 => {t_integer,any}}}}}]}}.
    {test,is_nonempty_list,{f,191},[{x,0}]}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,1},{x,0}}.
    {line,[{location,"inline_SUITE.erl",258}]}.
    {call,3,{f,190}}. % '-lists/1-lists^mapfoldr/2-19-'/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_integer,any}}}}]}}.
    {get_tuple_element,{x,0},0,{y,0}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {call,2,{f,194}}. % '-lists/1-fun-39-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_integer,any}}}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{x,1},{y,0},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,191}.
    {test,is_nil,{f,192},[{x,0}]}.
    {move,{literal,{[],0}},{x,0}}.
    return.
  {label,192}.
    {test_heap,6,3}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-39-', 2, 194}.
  {label,193}.
    {line,[{location,"inline_SUITE.erl",259}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-39-'},2}.
  {label,194}.
    {allocate_heap,2,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",260}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"inline_SUITE.erl",261}]}.
    {gc_bif,'bnot',{f,0},0,[{y,0}],{x,0}}.
    {gc_bif,'bxor',{f,0},1,[{y,1},{tr,{x,0},{t_integer,any}}],{x,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,2}.
    return.


{function, '-lists/1-fun-38-', 1, 196}.
  {label,195}.
    {line,[{location,"inline_SUITE.erl",262}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-38-'},1}.
  {label,196}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-fun-37-', 2, 198}.
  {label,197}.
    {line,[{location,"inline_SUITE.erl",258}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-37-'},2}.
  {label,198}.
    {test,is_tuple,{f,199},[{x,0}]}.
    {test,test_arity,{f,199},[{x,0},2]}.
    {allocate_heap,1,{alloc,[{words,6},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,202},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,any},2 => {t_integer,any}}}}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{integer,0},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {move,{atom,mapfoldr},{x,1}}.
    {move,nil,{x,3}}.
    {move,{atom,lists},{x,0}}.
    {call,4,{f,101}}. % my_apply/4
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,200},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,200},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,199}.
    {call_only,1,{f,343}}. % '-lists/1-inlined-18-'/1
  {label,200}.
    {badmatch,{x,0}}.


{function, '-lists/1-fun-36-', 2, 202}.
  {label,201}.
    {line,[{location,"inline_SUITE.erl",259}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-36-'},2}.
  {label,202}.
    {allocate_heap,2,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",260}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"inline_SUITE.erl",261}]}.
    {gc_bif,'bnot',{f,0},0,[{y,0}],{x,0}}.
    {gc_bif,'bxor',{f,0},1,[{y,1},{tr,{x,0},{t_integer,any}}],{x,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,2}.
    return.


{function, '-lists/1-lists^mapfoldl/2-17-', 3, 204}.
  {label,203}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^mapfoldl/2-17-'},3}.
  {label,204}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_fun,2,
                     {'-lists/1-fun-35-',2},
                     {t_tuple,2,true,
                         #{1 => {t_integer,any},2 => {t_integer,any}}}}}]}}.
    {test,is_nonempty_list,{f,205},[{x,0}]}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,2}}.
    {get_list,{x,0},{x,0},{y,1}}.
    {line,[{location,"inline_SUITE.erl",251}]}.
    {call,2,{f,208}}. % '-lists/1-fun-35-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_integer,any}}}}]}}.
    {get_tuple_element,{x,0},0,{y,0}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {call,3,{f,204}}. % '-lists/1-lists^mapfoldl/2-17-'/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_integer,any}}}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,205}.
    {test,is_nil,{f,206},[{x,0}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[nil,{x,1}]}}.
    return.
  {label,206}.
    {test_heap,6,3}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-35-', 2, 208}.
  {label,207}.
    {line,[{location,"inline_SUITE.erl",252}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-35-'},2}.
  {label,208}.
    {allocate_heap,2,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",253}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"inline_SUITE.erl",254}]}.
    {gc_bif,'bnot',{f,0},0,[{y,0}],{x,0}}.
    {gc_bif,'bxor',{f,0},1,[{y,1},{tr,{x,0},{t_integer,any}}],{x,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,2}.
    return.


{function, '-lists/1-fun-34-', 1, 210}.
  {label,209}.
    {line,[{location,"inline_SUITE.erl",255}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-34-'},1}.
  {label,210}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-fun-33-', 2, 212}.
  {label,211}.
    {line,[{location,"inline_SUITE.erl",251}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-33-'},2}.
  {label,212}.
    {test,is_tuple,{f,213},[{x,0}]}.
    {test,test_arity,{f,213},[{x,0},2]}.
    {allocate_heap,1,{alloc,[{words,6},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,216},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,any},2 => {t_integer,any}}}}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{integer,0},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {move,{atom,mapfoldl},{x,1}}.
    {move,nil,{x,3}}.
    {move,{atom,lists},{x,0}}.
    {call,4,{f,101}}. % my_apply/4
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,214},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,214},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,213}.
    {call_only,1,{f,341}}. % '-lists/1-inlined-16-'/1
  {label,214}.
    {badmatch,{x,0}}.


{function, '-lists/1-fun-32-', 2, 216}.
  {label,215}.
    {line,[{location,"inline_SUITE.erl",252}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-32-'},2}.
  {label,216}.
    {allocate_heap,2,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",253}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"inline_SUITE.erl",254}]}.
    {gc_bif,'bnot',{f,0},0,[{y,0}],{x,0}}.
    {gc_bif,'bxor',{f,0},1,[{y,1},{tr,{x,0},{t_integer,any}}],{x,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,2}.
    return.


{function, '-lists/1-lists^foldr/2-15-', 3, 218}.
  {label,217}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^foldr/2-15-'},3}.
  {label,218}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_fun,2,{'-lists/1-fun-31-',2},{t_integer,any}}}]}}.
    {test,is_nonempty_list,{f,219},[{x,0}]}.
    {allocate,1,3}.
    {get_list,{x,0},{y,0},{x,0}}.
    {line,[{location,"inline_SUITE.erl",244}]}.
    {call,3,{f,218}}. % '-lists/1-lists^foldr/2-15-'/3
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,222},1}. % '-lists/1-fun-31-'/2
  {label,219}.
    {test,is_nil,{f,220},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,220}.
    {test_heap,6,3}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-31-', 2, 222}.
  {label,221}.
    {line,[{location,"inline_SUITE.erl",245}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-31-'},2}.
  {label,222}.
    {allocate_heap,2,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",246}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"inline_SUITE.erl",247}]}.
    {gc_bif,'bnot',{f,0},0,[{y,0}],{x,0}}.
    {gc_bif,'bxor',{f,0},1,[{y,1},{tr,{x,0},{t_integer,any}}],{x,0}}.
    {deallocate,2}.
    return.


{function, '-lists/1-fun-30-', 1, 224}.
  {label,223}.
    {line,[{location,"inline_SUITE.erl",248}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-30-'},1}.
  {label,224}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-fun-29-', 2, 226}.
  {label,225}.
    {line,[{location,"inline_SUITE.erl",244}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-29-'},2}.
  {label,226}.
    {test,is_tuple,{f,227},[{x,0}]}.
    {test,test_arity,{f,227},[{x,0},2]}.
    {allocate_heap,1,{alloc,[{words,6},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,230},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,any}}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{integer,0},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {move,{atom,foldr},{x,1}}.
    {move,nil,{x,3}}.
    {move,{atom,lists},{x,0}}.
    {call,4,{f,101}}. % my_apply/4
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,228},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,228},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,227}.
    {call_only,1,{f,339}}. % '-lists/1-inlined-14-'/1
  {label,228}.
    {badmatch,{x,0}}.


{function, '-lists/1-fun-28-', 2, 230}.
  {label,229}.
    {line,[{location,"inline_SUITE.erl",245}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-28-'},2}.
  {label,230}.
    {allocate_heap,2,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",246}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"inline_SUITE.erl",247}]}.
    {gc_bif,'bnot',{f,0},0,[{y,0}],{x,0}}.
    {gc_bif,'bxor',{f,0},1,[{y,1},{tr,{x,0},{t_integer,any}}],{x,0}}.
    {deallocate,2}.
    return.


{function, '-lists/1-lists^foldl/2-13-', 3, 232}.
  {label,231}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^foldl/2-13-'},3}.
  {label,232}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_fun,2,{'-lists/1-fun-27-',2},{t_integer,any}}}]}}.
    {test,is_nonempty_list,{f,233},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"inline_SUITE.erl",237}]}.
    {call,2,{f,236}}. % '-lists/1-fun-27-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,232},2}. % '-lists/1-lists^foldl/2-13-'/3
  {label,233}.
    {test,is_nil,{f,234},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,234}.
    {test_heap,6,3}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-27-', 2, 236}.
  {label,235}.
    {line,[{location,"inline_SUITE.erl",238}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-27-'},2}.
  {label,236}.
    {allocate_heap,2,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",239}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"inline_SUITE.erl",240}]}.
    {gc_bif,'bxor',{f,0},0,[{y,1},{y,0}],{x,0}}.
    {deallocate,2}.
    return.


{function, '-lists/1-fun-26-', 1, 238}.
  {label,237}.
    {line,[{location,"inline_SUITE.erl",241}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-26-'},1}.
  {label,238}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-fun-25-', 2, 240}.
  {label,239}.
    {line,[{location,"inline_SUITE.erl",237}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-25-'},2}.
  {label,240}.
    {test,is_tuple,{f,241},[{x,0}]}.
    {test,test_arity,{f,241},[{x,0},2]}.
    {allocate_heap,1,{alloc,[{words,6},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,244},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,any}}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{integer,0},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {move,{atom,foldl},{x,1}}.
    {move,nil,{x,3}}.
    {move,{atom,lists},{x,0}}.
    {call,4,{f,101}}. % my_apply/4
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,242},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,242},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,241}.
    {call_only,1,{f,337}}. % '-lists/1-inlined-12-'/1
  {label,242}.
    {badmatch,{x,0}}.


{function, '-lists/1-fun-24-', 2, 244}.
  {label,243}.
    {line,[{location,"inline_SUITE.erl",238}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-24-'},2}.
  {label,244}.
    {allocate_heap,2,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",239}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"inline_SUITE.erl",240}]}.
    {gc_bif,'bxor',{f,0},0,[{y,1},{y,0}],{x,0}}.
    {deallocate,2}.
    return.


{function, '-lists/1-lists^all/1-11-', 2, 246}.
  {label,245}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^all/1-11-'},2}.
  {label,246}.
    {'%',{var_info,{x,1},
                   [{type,{t_fun,1,{'-lists/1-fun-23-',1},{t_atom,[true]}}}]}}.
    {test,is_nonempty_list,{f,247},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"inline_SUITE.erl",230}]}.
    {call,1,{f,250}}. % '-lists/1-fun-23-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,246},2}. % '-lists/1-lists^all/1-11-'/2
  {label,247}.
    {test,is_nil,{f,248},[{x,0}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,248}.
    {test_heap,4,2}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-23-', 1, 250}.
  {label,249}.
    {line,[{location,"inline_SUITE.erl",231}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-23-'},1}.
  {label,250}.
    {allocate_heap,0,2,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",232}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,true},{x,0}}.
    {deallocate,0}.
    return.


{function, '-lists/1-fun-22-', 1, 252}.
  {label,251}.
    {line,[{location,"inline_SUITE.erl",234}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-22-'},1}.
  {label,252}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-fun-21-', 2, 254}.
  {label,253}.
    {line,[{location,"inline_SUITE.erl",230}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-21-'},2}.
  {label,254}.
    {test,is_tuple,{f,255},[{x,0}]}.
    {test,test_arity,{f,255},[{x,0},2]}.
    {allocate_heap,1,{alloc,[{words,4},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,258},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[true]}}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {move,{atom,all},{x,1}}.
    {move,nil,{x,3}}.
    {move,{atom,lists},{x,0}}.
    {call,4,{f,101}}. % my_apply/4
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,256},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,256},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,255}.
    {call_only,1,{f,335}}. % '-lists/1-inlined-10-'/1
  {label,256}.
    {badmatch,{x,0}}.


{function, '-lists/1-fun-20-', 1, 258}.
  {label,257}.
    {line,[{location,"inline_SUITE.erl",231}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-20-'},1}.
  {label,258}.
    {allocate_heap,0,2,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",232}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,true},{x,0}}.
    {deallocate,0}.
    return.


{function, '-lists/1-lists^any/1-9-', 2, 260}.
  {label,259}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^any/1-9-'},2}.
  {label,260}.
    {'%',{var_info,{x,1},
                   [{type,{t_fun,1,
                                 {'-lists/1-fun-19-',1},
                                 {t_atom,[false]}}}]}}.
    {test,is_nonempty_list,{f,261},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"inline_SUITE.erl",223}]}.
    {call,1,{f,264}}. % '-lists/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,260},2}. % '-lists/1-lists^any/1-9-'/2
  {label,261}.
    {test,is_nil,{f,262},[{x,0}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,262}.
    {test_heap,4,2}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-19-', 1, 264}.
  {label,263}.
    {line,[{location,"inline_SUITE.erl",224}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-19-'},1}.
  {label,264}.
    {allocate_heap,0,2,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",225}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,false},{x,0}}.
    {deallocate,0}.
    return.


{function, '-lists/1-fun-18-', 1, 266}.
  {label,265}.
    {line,[{location,"inline_SUITE.erl",227}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-18-'},1}.
  {label,266}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-fun-17-', 2, 268}.
  {label,267}.
    {line,[{location,"inline_SUITE.erl",223}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-17-'},2}.
  {label,268}.
    {test,is_tuple,{f,269},[{x,0}]}.
    {test,test_arity,{f,269},[{x,0},2]}.
    {allocate_heap,1,{alloc,[{words,4},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,272},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false]}}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {move,{atom,any},{x,1}}.
    {move,nil,{x,3}}.
    {move,{atom,lists},{x,0}}.
    {call,4,{f,101}}. % my_apply/4
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,270},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,270},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,269}.
    {call_only,1,{f,351}}. % '-lists/1-inlined-8-'/1
  {label,270}.
    {badmatch,{x,0}}.


{function, '-lists/1-fun-16-', 1, 272}.
  {label,271}.
    {line,[{location,"inline_SUITE.erl",224}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-16-'},1}.
  {label,272}.
    {allocate_heap,0,2,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",225}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,false},{x,0}}.
    {deallocate,0}.
    return.


{function, '-lists/1-lists^filter/1-7-', 2, 274}.
  {label,273}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^filter/1-7-'},2}.
  {label,274}.
    {'%',{var_info,{x,1},
                   [{type,{t_fun,1,
                                 {'-lists/1-fun-15-',1},
                                 {t_atom,[false,true]}}}]}}.
    {test,is_nonempty_list,{f,276},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"inline_SUITE.erl",216}]}.
    {call,1,{f,279}}. % '-lists/1-fun-15-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{x,0},{y,2}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{x,0}}.
    {call,2,{f,274}}. % '-lists/1-lists^filter/1-7-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,{f,275},[{y,2},{atom,true}]}.
    {test_heap,2,1}.
    {put_list,{y,1},{x,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,275}.
    {deallocate,3}.
    return.
  {label,276}.
    {test,is_nil,{f,277},[{x,0}]}.
    return.
  {label,277}.
    {test_heap,4,2}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-15-', 1, 279}.
  {label,278}.
    {line,[{location,"inline_SUITE.erl",217}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-15-'},1}.
  {label,279}.
    {allocate_heap,1,2,1}.
    {move,{x,0},{y,0}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",218}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"inline_SUITE.erl",219}]}.
    {gc_bif,'bsr',{f,0},0,[{y,0},{integer,1}],{x,0}}.
    {gc_bif,'band',{f,0},1,[{tr,{x,0},{t_integer,any}},{integer,1}],{x,0}}.
    {bif,'=/=',{f,0},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}],{x,0}}.
    {deallocate,1}.
    return.


{function, '-lists/1-fun-14-', 1, 281}.
  {label,280}.
    {line,[{location,"inline_SUITE.erl",220}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-14-'},1}.
  {label,281}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-fun-13-', 2, 283}.
  {label,282}.
    {line,[{location,"inline_SUITE.erl",216}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-13-'},2}.
  {label,283}.
    {test,is_tuple,{f,284},[{x,0}]}.
    {test,test_arity,{f,284},[{x,0},2]}.
    {allocate_heap,1,{alloc,[{words,4},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,287},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {move,{atom,filter},{x,1}}.
    {move,nil,{x,3}}.
    {move,{atom,lists},{x,0}}.
    {call,4,{f,101}}. % my_apply/4
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,285},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,285},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,284}.
    {call_only,1,{f,349}}. % '-lists/1-inlined-6-'/1
  {label,285}.
    {badmatch,{x,0}}.


{function, '-lists/1-fun-12-', 1, 287}.
  {label,286}.
    {line,[{location,"inline_SUITE.erl",217}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-12-'},1}.
  {label,287}.
    {allocate_heap,1,2,1}.
    {move,{x,0},{y,0}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",218}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"inline_SUITE.erl",219}]}.
    {gc_bif,'bsr',{f,0},0,[{y,0},{integer,1}],{x,0}}.
    {gc_bif,'band',{f,0},1,[{tr,{x,0},{t_integer,any}},{integer,1}],{x,0}}.
    {bif,'=/=',{f,0},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}],{x,0}}.
    {deallocate,1}.
    return.


{function, '-lists/1-lists^foreach/1-5-', 2, 289}.
  {label,288}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^foreach/1-5-'},2}.
  {label,289}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,{'-lists/1-fun-11-',1},any}}]}}.
    {test,is_nonempty_list,{f,290},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"inline_SUITE.erl",210}]}.
    {call,1,{f,293}}. % '-lists/1-fun-11-'/1
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,289},2}. % '-lists/1-lists^foreach/1-5-'/2
  {label,290}.
    {test,is_nil,{f,291},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,291}.
    {test_heap,4,2}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-11-', 1, 293}.
  {label,292}.
    {line,[{location,"inline_SUITE.erl",211}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-11-'},1}.
  {label,293}.
    {line,[{location,"inline_SUITE.erl",212}]}.
    {gc_bif,'bor',{f,0},1,[{x,0},{integer,7}],{x,0}}.
    {test_heap,2,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,put,2}}.


{function, '-lists/1-fun-10-', 1, 295}.
  {label,294}.
    {line,[{location,"inline_SUITE.erl",213}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-10-'},1}.
  {label,295}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-fun-9-', 2, 297}.
  {label,296}.
    {line,[{location,"inline_SUITE.erl",210}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-9-'},2}.
  {label,297}.
    {test,is_tuple,{f,298},[{x,0}]}.
    {test,test_arity,{f,298},[{x,0},2]}.
    {allocate_heap,1,{alloc,[{words,4},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,301},0,0,{x,0},{list,[]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {move,{atom,foreach},{x,1}}.
    {move,nil,{x,3}}.
    {move,{atom,lists},{x,0}}.
    {call,4,{f,101}}. % my_apply/4
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,299},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,299},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,298}.
    {call_only,1,{f,347}}. % '-lists/1-inlined-4-'/1
  {label,299}.
    {badmatch,{x,0}}.


{function, '-lists/1-fun-8-', 1, 301}.
  {label,300}.
    {line,[{location,"inline_SUITE.erl",211}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-8-'},1}.
  {label,301}.
    {line,[{location,"inline_SUITE.erl",212}]}.
    {gc_bif,'bor',{f,0},1,[{x,0},{integer,7}],{x,0}}.
    {test_heap,2,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,put,2}}.


{function, '-lists/1-lists^flatmap/1-3-', 2, 303}.
  {label,302}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^flatmap/1-3-'},2}.
  {label,303}.
    {'%',{var_info,{x,1},
                   [{type,{t_fun,1,{'-lists/1-fun-7-',1},{t_list,any,nil}}}]}}.
    {test,is_nonempty_list,{f,304},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"inline_SUITE.erl",202}]}.
    {call,1,{f,307}}. % '-lists/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,303}}. % '-lists/1-lists^flatmap/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_ext_last,2,{extfunc,erlang,'++',2},1}.
  {label,304}.
    {test,is_nil,{f,305},[{x,0}]}.
    return.
  {label,305}.
    {test_heap,4,2}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-7-', 1, 307}.
  {label,306}.
    {line,[{location,"inline_SUITE.erl",203}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-7-'},1}.
  {label,307}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"inline_SUITE.erl",204}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {test_heap,2,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",205}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, '-lists/1-fun-6-', 1, 309}.
  {label,308}.
    {line,[{location,"inline_SUITE.erl",207}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-6-'},1}.
  {label,309}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-fun-5-', 2, 311}.
  {label,310}.
    {line,[{location,"inline_SUITE.erl",202}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-5-'},2}.
  {label,311}.
    {test,is_tuple,{f,312},[{x,0}]}.
    {test,test_arity,{f,312},[{x,0},2]}.
    {allocate_heap,1,{alloc,[{words,4},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,315},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,any,nil}}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {move,{atom,flatmap},{x,1}}.
    {move,nil,{x,3}}.
    {move,{atom,lists},{x,0}}.
    {call,4,{f,101}}. % my_apply/4
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,313},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,313},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,312}.
    {call_only,1,{f,345}}. % '-lists/1-inlined-2-'/1
  {label,313}.
    {badmatch,{x,0}}.


{function, '-lists/1-fun-4-', 1, 315}.
  {label,314}.
    {line,[{location,"inline_SUITE.erl",203}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-4-'},1}.
  {label,315}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"inline_SUITE.erl",204}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {test_heap,2,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",205}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, '-lists/1-lists^map/1-1-', 2, 317}.
  {label,316}.
    {line,[]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-lists^map/1-1-'},2}.
  {label,317}.
    {'%',{var_info,{x,1},
                   [{type,{t_fun,1,
                                 {'-lists/1-fun-3-',1},
                                 {t_integer,{0,255}}}}]}}.
    {test,is_nonempty_list,{f,318},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"inline_SUITE.erl",194}]}.
    {call,1,{f,321}}. % '-lists/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,317}}. % '-lists/1-lists^map/1-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,318}.
    {test,is_nil,{f,319},[{x,0}]}.
    return.
  {label,319}.
    {test_heap,4,2}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, '-lists/1-fun-3-', 1, 321}.
  {label,320}.
    {line,[{location,"inline_SUITE.erl",195}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-3-'},1}.
  {label,321}.
    {line,[{location,"inline_SUITE.erl",196}]}.
    {gc_bif,'band',{f,0},1,[{x,0},{integer,255}],{x,1}}.
    {allocate_heap,1,2,2}.
    {move,{x,1},{y,0}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",197}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, '-lists/1-fun-2-', 1, 323}.
  {label,322}.
    {line,[{location,"inline_SUITE.erl",199}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-2-'},1}.
  {label,323}.
    {test_heap,3,1}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-lists/1-fun-1-', 2, 325}.
  {label,324}.
    {line,[{location,"inline_SUITE.erl",194}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-1-'},2}.
  {label,325}.
    {test,is_tuple,{f,326},[{x,0}]}.
    {test,test_arity,{f,326},[{x,0},2]}.
    {allocate_heap,1,{alloc,[{words,4},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,329},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,255}}}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {move,{atom,map},{x,1}}.
    {move,nil,{x,3}}.
    {move,{atom,lists},{x,0}}.
    {call,4,{f,101}}. % my_apply/4
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,327},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,327},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,326}.
    {call_only,1,{f,333}}. % '-lists/1-inlined-0-'/1
  {label,327}.
    {badmatch,{x,0}}.


{function, '-lists/1-fun-0-', 1, 329}.
  {label,328}.
    {line,[{location,"inline_SUITE.erl",195}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-fun-0-'},1}.
  {label,329}.
    {line,[{location,"inline_SUITE.erl",196}]}.
    {gc_bif,'band',{f,0},1,[{x,0},{integer,255}],{x,1}}.
    {allocate_heap,1,2,2}.
    {move,{x,1},{y,0}}.
    {bif,get,{f,0},[{atom,inline_SUITE}],{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{atom,inline_SUITE},{x,0}}.
    {line,[{location,"inline_SUITE.erl",197}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, '-inlined-otp_7223_2/1-', 1, 331}.
  {label,330}.
    {line,[{location,"inline_SUITE.erl",343}]}.
    {func_info,{atom,inline_SUITE},{atom,'-inlined-otp_7223_2/1-'},1}.
  {label,331}.
    {jump,{f,330}}.


{function, '-lists/1-inlined-0-', 1, 333}.
  {label,332}.
    {line,[{location,"inline_SUITE.erl",194}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-inlined-0-'},1}.
  {label,333}.
    {jump,{f,332}}.


{function, '-lists/1-inlined-10-', 1, 335}.
  {label,334}.
    {line,[{location,"inline_SUITE.erl",230}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-inlined-10-'},1}.
  {label,335}.
    {jump,{f,334}}.


{function, '-lists/1-inlined-12-', 1, 337}.
  {label,336}.
    {line,[{location,"inline_SUITE.erl",237}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-inlined-12-'},1}.
  {label,337}.
    {jump,{f,336}}.


{function, '-lists/1-inlined-14-', 1, 339}.
  {label,338}.
    {line,[{location,"inline_SUITE.erl",244}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-inlined-14-'},1}.
  {label,339}.
    {jump,{f,338}}.


{function, '-lists/1-inlined-16-', 1, 341}.
  {label,340}.
    {line,[{location,"inline_SUITE.erl",251}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-inlined-16-'},1}.
  {label,341}.
    {jump,{f,340}}.


{function, '-lists/1-inlined-18-', 1, 343}.
  {label,342}.
    {line,[{location,"inline_SUITE.erl",258}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-inlined-18-'},1}.
  {label,343}.
    {jump,{f,342}}.


{function, '-lists/1-inlined-2-', 1, 345}.
  {label,344}.
    {line,[{location,"inline_SUITE.erl",202}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-inlined-2-'},1}.
  {label,345}.
    {jump,{f,344}}.


{function, '-lists/1-inlined-4-', 1, 347}.
  {label,346}.
    {line,[{location,"inline_SUITE.erl",210}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-inlined-4-'},1}.
  {label,347}.
    {jump,{f,346}}.


{function, '-lists/1-inlined-6-', 1, 349}.
  {label,348}.
    {line,[{location,"inline_SUITE.erl",216}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-inlined-6-'},1}.
  {label,349}.
    {jump,{f,348}}.


{function, '-lists/1-inlined-8-', 1, 351}.
  {label,350}.
    {line,[{location,"inline_SUITE.erl",223}]}.
    {func_info,{atom,inline_SUITE},{atom,'-lists/1-inlined-8-'},1}.
  {label,351}.
    {jump,{f,350}}.
