{module, regressions_SUITE}.  %% version = 0

{exports, [{all,0},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {maps,1},
           {module_info,0},
           {module_info,1},
           {suite,0}]}.

{attributes, []}.

{labels, 46}.


{function, groups, 0, 2}.
  {label,1}.
    {line,[{location,"regressions_SUITE.erl",30}]}.
    {func_info,{atom,regressions_SUITE},{atom,groups},0}.
  {label,2}.
    {allocate,0,0}.
    {line,[{location,"regressions_SUITE.erl",31}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},{list,[{atom,p},{x,0},{literal,[maps]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 4}.
  {label,3}.
    {line,[{location,"regressions_SUITE.erl",34}]}.
    {func_info,{atom,regressions_SUITE},{atom,init_per_suite},1}.
  {label,4}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,regressions_SUITE},{x,0}}.
    {line,[{location,"regressions_SUITE.erl",35}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 6}.
  {label,5}.
    {line,[{location,"regressions_SUITE.erl",38}]}.
    {func_info,{atom,regressions_SUITE},{atom,end_per_suite},1}.
  {label,6}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 8}.
  {label,7}.
    {line,[{location,"regressions_SUITE.erl",41}]}.
    {func_info,{atom,regressions_SUITE},{atom,init_per_group},2}.
  {label,8}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 10}.
  {label,9}.
    {line,[{location,"regressions_SUITE.erl",44}]}.
    {func_info,{atom,regressions_SUITE},{atom,end_per_group},2}.
  {label,10}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 12}.
  {label,11}.
    {line,[{location,"regressions_SUITE.erl",47}]}.
    {func_info,{atom,regressions_SUITE},{atom,init_per_testcase},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 14}.
  {label,13}.
    {line,[{location,"regressions_SUITE.erl",50}]}.
    {func_info,{atom,regressions_SUITE},{atom,end_per_testcase},2}.
  {label,14}.
    {move,{atom,ok},{x,0}}.
    return.


{function, suite, 0, 16}.
  {label,15}.
    {line,[{location,"regressions_SUITE.erl",53}]}.
    {func_info,{atom,regressions_SUITE},{atom,suite},0}.
  {label,16}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,2}}]},
          {x,0}}.
    return.


{function, all, 0, 18}.
  {label,17}.
    {line,[{location,"regressions_SUITE.erl",57}]}.
    {func_info,{atom,regressions_SUITE},{atom,all},0}.
  {label,18}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, maps, 1, 20}.
  {label,19}.
    {line,[{location,"regressions_SUITE.erl",62}]}.
    {func_info,{atom,regressions_SUITE},{atom,maps},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{beam_bool_get_elements,
                 <<"century(#{ron := operator}, _century) ->\n                  if 0.0; _century, _century, _century -> _century end.\n           ">>},
             {empty_map_clauses,
                 <<"politics(#{}, researchers) -> concerned;\n              politics(#{[] := _}, workers) -> dot;\n              politics(#{[] := ct}, counsel) -> calls.\n             ">>},
             {empty_map_clauses_variable,
                 <<"georgia(#{a := effectively}, ratio, is, eventually) -> teens;\n              georgia(#{a := government}, knowledge, poker, partly) -> signed;\n              georgia(#{}, recording, bring, vital) -> divided;\n              georgia(#{0 := 0}, articles, brought, #{true := true, a := There}) -> There.\n             ">>}]},
        {x,1}}.
    {line,[{location,"regressions_SUITE.erl",78}]}.
    {call,2,{f,23}}. % run/2
    {test,is_eq_exact,{f,21},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,21}.
    {badmatch,{x,0}}.


{function, run, 2, 23}.
  {label,22}.
    {line,[{location,"regressions_SUITE.erl",83}]}.
    {func_info,{atom,regressions_SUITE},{atom,run},2}.
  {label,23}.
    {'%',{var_info,{x,0},[{type,{t_list,any,any}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_cons,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[beam_bool_get_elements]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[beam_bool_get_elements]},
                                 2 => {t_bitstring,32,false}}}},
                          {{2,{t_atom,[empty_map_clauses]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[empty_map_clauses]},
                                 2 => {t_bitstring,8,false}}}},
                          {{2,{t_atom,[empty_map_clauses_variable]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[empty_map_clauses_variable]},
                                 2 => {t_bitstring,8,false}}}}],
                         none},
                     nil}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {make_fun3,{f,40},0,0,{x,0},{list,[{x,0}]}}.
    {line,[{location,"regressions_SUITE.erl",94}]}.
    {call_ext_only,2,{extfunc,lists,foreach,2}}.


{function, run_test, 2, 25}.
  {label,24}.
    {line,[{location,"regressions_SUITE.erl",97}]}.
    {func_info,{atom,regressions_SUITE},{atom,run_test},2}.
  {label,25}.
    {'%',{var_info,{x,0},[{type,{t_list,any,any}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"regressions_SUITE.erl",98}]}.
    {call_ext,0,{extfunc,test_lib,uniq,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,"regressions_"},{x,0}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,0}}.
    {move,{literal,".erl"},{x,1}}.
    {line,[{location,"regressions_SUITE.erl",99}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{y,2},{x,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"regressions_SUITE.erl",100}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,8,1}.
    {put_list,{y,1},nil,{x,1}}.
    {put_list,{literal,"). "},{x,1},{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{literal,"-module("},{x,1},{y,1}}.
    {move,{y,2},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {trim,1,2}.
    {line,[{location,"regressions_SUITE.erl",102}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,1}}.
    {move,{literal,[[no_postopt],
                    [no_copt],
                    [no_postopt,no_copt],
                    [inline],
                    [inline,no_postopt],
                    []]},
          {x,0}}.
    {line,[{location,"regressions_SUITE.erl",105}]}.
    {call,1,{f,37}}. % '-run_test/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_list,{t_atom,any},nil},nil}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"regressions_SUITE.erl",112}]}.
    {call_ext,2,{extfunc,file,write_file,2}}.
    {test,is_eq_exact,{f,26},[{x,0},{atom,ok}]}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,34},0,0,{x,0},{list,[{y,1}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_tuple,4,true,#{1 => {t_atom,[ok]}}}}]}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"regressions_SUITE.erl",113}]}.
    {call_ext,2,{extfunc,lists,foreach,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"regressions_SUITE.erl",117}]}.
    {call_ext,1,{extfunc,file,delete,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,26}.
    {line,[{location,"regressions_SUITE.erl",112}]}.
    {badmatch,{x,0}}.


{function, fail, 0, 28}.
  {label,27}.
    {line,[{location,"regressions_SUITE.erl",120}]}.
    {func_info,{atom,regressions_SUITE},{atom,fail},0}.
  {label,28}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"regressions_SUITE.erl",121}]}.
    {call_ext_only,1,{extfunc,ct,fail,1}}.


{function, module_info, 0, 30}.
  {label,29}.
    {line,[]}.
    {func_info,{atom,regressions_SUITE},{atom,module_info},0}.
  {label,30}.
    {move,{atom,regressions_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 32}.
  {label,31}.
    {line,[]}.
    {func_info,{atom,regressions_SUITE},{atom,module_info},1}.
  {label,32}.
    {move,{x,0},{x,1}}.
    {move,{atom,regressions_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-run_test/2-fun-1-', 2, 34}.
  {label,33}.
    {line,[{location,"regressions_SUITE.erl",113}]}.
    {func_info,{atom,regressions_SUITE},{atom,'-run_test/2-fun-1-'},2}.
  {label,34}.
    {allocate_heap,2,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{literal,"  - compiling with ~p~n"},{x,0}}.
    {line,[{location,"regressions_SUITE.erl",114}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"regressions_SUITE.erl",115}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,35},[{x,0},4,{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,35}.
    {badmatch,{x,0}}.


{function, '-run_test/2-lc$^0/1-0-', 1, 37}.
  {label,36}.
    {line,[{location,"regressions_SUITE.erl",105}]}.
    {func_info,{atom,regressions_SUITE},{atom,'-run_test/2-lc$^0/1-0-'},1}.
  {label,37}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_list,{t_atom,[inline,no_copt,no_postopt]},nil},
                     nil}}]}}.
    {test,is_nonempty_list,{f,38},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {move,{literal,[binary,export_all,return]},{x,1}}.
    {line,[{location,"regressions_SUITE.erl",104}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"regressions_SUITE.erl",105}]}.
    {call,1,{f,37}}. % '-run_test/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,{t_atom,any},nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,38}.
    return.


{function, '-run/2-fun-0-', 2, 40}.
  {label,39}.
    {line,[{location,"regressions_SUITE.erl",84}]}.
    {func_info,{atom,regressions_SUITE},{atom,'-run/2-fun-0-'},2}.
  {label,40}.
    {'%',{var_info,{x,1},[{type,{t_list,any,any}}]}}.
    {test,is_tuple,{f,43},[{x,0}]}.
    {test,test_arity,{f,43},[{x,0},2]}.
    {allocate_heap,4,2,2}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{x,1},{y,2}}.
    {get_tuple_element,{x,0},0,{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {put_list,{y,1},nil,{x,1}}.
    {move,{literal,"Compiling test for: ~w~n"},{x,0}}.
    {line,[{location,"regressions_SUITE.erl",85}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {'catch',{y,3},{f,41}}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,0},{y,2}]}}.
    {line,[{location,"regressions_SUITE.erl",86}]}.
    {call,2,{f,25}}. % run_test/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,41}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,42},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {trim,4,0}.
    {move,{literal,"~nTest ~p failed.~nReason: ~p~n"},{x,0}}.
    {line,[{scope,[1,2]},{location,"regressions_SUITE.erl",88}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {call_last,0,{f,28},0}. % fail/0
  {label,42}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,43}.
    {call_only,1,{f,45}}. % '-run/2-inlined-0-'/1


{function, '-run/2-inlined-0-', 1, 45}.
  {label,44}.
    {line,[{location,"regressions_SUITE.erl",84}]}.
    {func_info,{atom,regressions_SUITE},{atom,'-run/2-inlined-0-'},1}.
  {label,45}.
    {jump,{f,44}}.
