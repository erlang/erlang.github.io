{module, beam_utils_SUITE}.  %% version = 0

{exports, [{all,0},
           {apply_fun,1},
           {apply_mf,1},
           {bs_init,1},
           {bs_save,1},
           {cafu,1},
           {coverage,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {id,1},
           {init_per_group,2},
           {init_per_suite,1},
           {is_not_killed,1},
           {is_not_used_at,1},
           {is_used_fr,1},
           {liveopt,1},
           {module_info,0},
           {module_info,1},
           {not_used,1},
           {otp_8949_b,1},
           {read_size_file_version,1},
           {receive_label,1},
           {scan_f,1},
           {select,1},
           {suite,0},
           {unsafe_is_function,1},
           {user_predef,1},
           {y_catch,1},
           {y_registers,1}]}.

{attributes, []}.

{labels, 325}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_utils_SUITE.erl",32}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_utils_SUITE.erl",34}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_utils_SUITE.erl",37}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [apply_fun,apply_mf,bs_init,bs_save,is_not_killed,
                        is_not_used_at,select,y_catch,otp_8949_b,liveopt,
                        coverage,y_registers,user_predef,scan_f,cafu,
                        read_size_file_version,not_used,is_used_fr,
                        unsafe_is_function]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_utils_SUITE.erl",60}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_utils_SUITE},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",61}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_utils_SUITE.erl",64}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_utils_SUITE.erl",67}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_utils_SUITE.erl",70}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, apply_fun, 1, 16}.
  {label,15}.
    {line,[{location,"beam_utils_SUITE.erl",73}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,apply_fun},1}.
  {label,16}.
    {allocate,0,0}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",74}]}.
    {call,2,{f,22}}. % do_apply_fun/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,20},[{tr,{x,0},{t_number,any}},{integer,3}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",75}]}.
    {call,2,{f,22}}. % do_apply_fun/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,19},[{tr,{x,0},{t_number,any}},{integer,3}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",76}]}.
    {call,2,{f,22}}. % do_apply_fun/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,18},[{tr,{x,0},{t_number,any}},{integer,3}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",77}]}.
    {call,2,{f,22}}. % do_apply_fun/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,17},[{tr,{x,0},{t_number,any}},{integer,2}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {badmatch,{x,0}}.
  {label,18}.
    {line,[{location,"beam_utils_SUITE.erl",76}]}.
    {badmatch,{x,0}}.
  {label,19}.
    {line,[{location,"beam_utils_SUITE.erl",75}]}.
    {badmatch,{x,0}}.
  {label,20}.
    {line,[{location,"beam_utils_SUITE.erl",74}]}.
    {badmatch,{x,0}}.


{function, do_apply_fun, 2, 22}.
  {label,21}.
    {line,[{location,"beam_utils_SUITE.erl",80}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_apply_fun},2}.
  {label,22}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {allocate,0,2}.
    {test,is_eq_exact,{f,24},[{x,0},{atom,true}]}.
    {move,{x,1},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",82}]}.
    {call,1,{f,298}}. % id/1
    {select_val,{x,0},{f,26},{list,[{atom,false},{f,24},{atom,true},{f,23}]}}.
  {label,23}.
    {move,{integer,1},{x,0}}.
    {jump,{f,25}}.
  {label,24}.
    {move,{integer,2},{x,0}}.
  {label,25}.
    {call_last,1,{f,322},0}. % '-do_apply_fun/2-fun-0-'/1
  {label,26}.
    {case_end,{x,0}}.


{function, apply_mf, 1, 28}.
  {label,27}.
    {line,[{location,"beam_utils_SUITE.erl",88}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,apply_mf},1}.
  {label,28}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{atom,beam_utils_SUITE},{x,1}}.
    {move,{atom,id},{x,2}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",89}]}.
    {call,3,{f,40}}. % do_apply_mf_used/3
    {test,is_eq_exact,{f,38},[{x,0},{atom,ok}]}.
    {move,{atom,beam_utils_SUITE},{x,1}}.
    {move,{atom,id},{x,2}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[6]},{location,"beam_utils_SUITE.erl",90}]}.
    {call,3,{f,40}}. % do_apply_mf_used/3
    {test,is_eq_exact,{f,37},[{x,0},{atom,error}]}.
    {'catch',{y,2},{f,29}}.
    {move,{atom,beam_utils_SUITE},{x,1}}.
    {move,{atom,id},{x,2}}.
    {move,{literal,{[],b}},{x,0}}.
    {line,[{scope,[6]},{location,"beam_utils_SUITE.erl",91}]}.
    {call,3,{f,40}}. % do_apply_mf_used/3
  {label,29}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,36},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,36},[{x,1}]}.
    {test,test_arity,{f,36},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,36},[{x,1},{literal,{case_clause,{[],b}}}]}.
    {move,{atom,beam_utils_SUITE},{x,1}}.
    {move,{atom,id},{x,2}}.
    {move,{literal,{error,[a]}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",93}]}.
    {call,3,{f,45}}. % do_apply_mf_killed/3
    {test,is_eq_exact,{f,35},[{x,0},{atom,error}]}.
    {move,{atom,beam_utils_SUITE},{x,1}}.
    {move,{atom,id},{x,2}}.
    {move,{literal,[b]},{x,0}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",94}]}.
    {call,3,{f,45}}. % do_apply_mf_killed/3
    {test,is_eq_exact,{f,34},[{x,0},{atom,ok}]}.
    {'catch',{y,1},{f,30}}.
    {move,{atom,beam_utils_SUITE},{x,1}}.
    {move,{atom,id},{x,2}}.
    {move,{literal,{a,[b]}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",95}]}.
    {call,3,{f,45}}. % do_apply_mf_killed/3
  {label,30}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,33},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,33},[{x,1}]}.
    {test,test_arity,{f,33},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,33},[{x,1},{literal,{case_clause,{a,[b]}}}]}.
    {'catch',{y,0},{f,31}}.
    {move,{atom,beam_utils_SUITE},{x,1}}.
    {move,{atom,id},{x,2}}.
    {move,{literal,{error,[]}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",96}]}.
    {call,3,{f,45}}. % do_apply_mf_killed/3
  {label,31}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,32},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,32},[{x,1}]}.
    {test,test_arity,{f,32},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,32},[{x,1},{literal,{case_clause,{error,[]}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,32}.
    {line,[{scope,[0]},{location,"beam_utils_SUITE.erl",96}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",95}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",94}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",93}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",91}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{scope,[6]},{location,"beam_utils_SUITE.erl",90}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,[6]},{location,"beam_utils_SUITE.erl",89}]}.
    {badmatch,{x,0}}.


{function, do_apply_mf_used, 3, 40}.
  {label,39}.
    {line,[{location,"beam_utils_SUITE.erl",100}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_apply_mf_used},3}.
  {label,40}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,{t_atom,[a]},nil},
                     none,
                     [{{2,nil},{t_tuple,2,true,#{1 => nil,2 => {t_atom,[b]}}}},
                      {{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[beam_utils_SUITE]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[id]}}]}}.
    {allocate,0,1}.
    {line,[{location,"beam_utils_SUITE.erl",101}]}.
    {call,1,{f,298}}. % id/1
    {test,is_tuple,{f,41},[{x,0}]}.
    {test,test_arity,{f,41},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_ne_exact,{f,41},[{x,1},nil]}.
    {move,{atom,ok},{x,0}}.
    {jump,{f,42}}.
  {label,41}.
    {test,is_list,{f,43},[{x,0}]}.
    {move,{atom,error},{x,0}}.
  {label,42}.
    {line,[{location,"beam_utils_SUITE.erl",107}]}.
    {call_ext_last,1,{extfunc,beam_utils_SUITE,id,1},0}.
  {label,43}.
    {line,[{location,"beam_utils_SUITE.erl",101}]}.
    {case_end,{x,0}}.


{function, do_apply_mf_killed, 3, 45}.
  {label,44}.
    {line,[{location,"beam_utils_SUITE.erl",109}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_apply_mf_killed},3}.
  {label,45}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,{t_atom,[b]},nil},
                     none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_cons,{t_atom,[b]},nil}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 => {t_list,{t_atom,[a]},nil}}}}],
                     none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[beam_utils_SUITE]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[id]}}]}}.
    {allocate,0,1}.
    {line,[{location,"beam_utils_SUITE.erl",110}]}.
    {call,1,{f,298}}. % id/1
    {test,is_tuple,{f,46},[{x,0}]}.
    {test,test_arity,{f,46},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_ne_exact,{f,46},[{x,1},nil]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,46},[{x,1},{atom,error}]}.
    {move,{atom,error},{x,0}}.
    {jump,{f,47}}.
  {label,46}.
    {test,is_list,{f,48},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
  {label,47}.
    {line,[{location,"beam_utils_SUITE.erl",116}]}.
    {call_ext_last,1,{extfunc,beam_utils_SUITE,id,1},0}.
  {label,48}.
    {line,[{location,"beam_utils_SUITE.erl",110}]}.
    {case_end,{x,0}}.


{function, bs_init, 1, 50}.
  {label,49}.
    {line,[{location,"beam_utils_SUITE.erl",118}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,bs_init},1}.
  {label,50}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,7},{x,1}}.
    {move,{literal,[beam_utils_SUITE]},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",119}]}.
    {call,2,{f,72}}. % do_bs_init_1/2
    {test,is_eq_exact,{f,70},[{x,0},{literal,<<7>>}]}.
    {move,{float,0.0},{x,1}}.
    {move,{literal,[beam_utils_SUITE]},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_utils_SUITE.erl",120}]}.
    {call,2,{f,72}}. % do_bs_init_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,-43},{x,1}}.
    {move,{literal,[beam_utils_SUITE]},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_utils_SUITE.erl",121}]}.
    {call,2,{f,72}}. % do_bs_init_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,1}}.
    {move,{literal,[beam_utils_SUITE]},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_utils_SUITE.erl",122}]}.
    {call,2,{f,72}}. % do_bs_init_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,nil,{x,0}}.
    {line,[{scope,"\n"},{location,"beam_utils_SUITE.erl",124}]}.
    {call,1,{f,75}}. % do_bs_init_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,69},
          [{tr,{x,0},{t_bitstring,32,true}},{literal,<<>>}]}.
    {move,{literal,[0,4294967295]},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_utils_SUITE.erl",125}]}.
    {call,1,{f,75}}. % do_bs_init_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,68},
          [{tr,{x,0},{t_bitstring,32,true}},
           {literal,<<0,0,0,0,255,255,255,255>>}]}.
    {'catch',{y,4},{f,51}}.
    {move,{literal,[0.5]},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_utils_SUITE.erl",126}]}.
    {call,1,{f,75}}. % do_bs_init_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
  {label,51}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,67},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,67},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,3},{f,52}}.
    {move,{literal,[-1]},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_utils_SUITE.erl",127}]}.
    {call,1,{f,75}}. % do_bs_init_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
  {label,52}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,66},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,66},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,2},{f,53}}.
    {move,{literal,[4294967296]},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_utils_SUITE.erl",128}]}.
    {call,1,{f,75}}. % do_bs_init_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
  {label,53}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,65},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,65},[{x,1},2,{atom,badarg}]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,{tag,0}},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_utils_SUITE.erl",130}]}.
    {call,3,{f,77}}. % do_bs_init_3/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,64},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,{tag,0}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",131}]}.
    {call,3,{f,77}}. % do_bs_init_3/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,63},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0>>}]}.
    {move,{atom,false},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",133}]}.
    {call,2,{f,81}}. % do_bs_init_4/2
    {test,is_eq_exact,{f,62},[{x,0},{literal,<<"_build/shared">>}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",134}]}.
    {call,2,{f,81}}. % do_bs_init_4/2
    {test,is_eq_exact,{f,61},[{x,0},{literal,<<"abc/shared">>}]}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"foo">>},{x,0}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",135}]}.
    {call,2,{f,81}}. % do_bs_init_4/2
    {test,is_eq_exact,{f,60},[{x,0},{literal,<<"foo/foo">>}]}.
    {move,{atom,not_boolean},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",136}]}.
    {call,2,{f,81}}. % do_bs_init_4/2
    {test,is_eq_exact,{f,59},[{x,0},{atom,error}]}.
    {move,{literal,#{domain => -8798798,id => 17575,tag => value}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",141}]}.
    {call,1,{f,96}}. % do_bs_init_5/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,8,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_match,{f,58},
              {x,1},
              {commands,[{ensure_exactly,40},
                         {'=:=',nil,24,655361},
                         {integer,3,{literal,[signed]},16,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,58},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {bs_match,{f,58},
              {x,1},
              {commands,[{ensure_exactly,56},
                         {'=:=',nil,24,524290},
                         {integer,4,{literal,[signed]},32,1,{x,4}}]}}.
    {test,is_nil,{f,58},[{tr,{x,2},{t_list,{t_bitstring,8,false},nil}}]}.
    {test,is_eq_exact,
          {f,58},
          [{tr,{x,3},{t_integer,{-32768,32767}}},{integer,17575}]}.
    {test,is_eq_exact,
          {f,58},
          [{tr,{x,4},{t_integer,{-2147483648,2147483647}}},
           {integer,-8798798}]}.
    {'catch',{y,1},{f,54}}.
    {move,{literal,#{domain => -8798798,id => nil,tag => value}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",143}]}.
    {call,1,{f,96}}. % do_bs_init_5/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,8,false},nil}}]}}.
  {label,54}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,57},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,57},[{x,1}]}.
    {test,test_arity,{f,57},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,57},[{x,2},{literal,{required,id}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,57},[{x,1}]}.
    {'catch',{y,0},{f,55}}.
    {move,{literal,#{domain => nil,id => 17575,tag => value}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",145}]}.
    {call,1,{f,96}}. % do_bs_init_5/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,8,false},nil}}]}}.
  {label,55}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,56},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,56},[{x,1}]}.
    {test,test_arity,{f,56},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,56},[{x,2},{literal,{required,domain}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,56},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,56}.
    {line,[{scope,[0]},{location,"beam_utils_SUITE.erl",144}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",140}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",136}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",135}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",134}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",133}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",131}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",130}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",128}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{scope,[6]},{location,"beam_utils_SUITE.erl",127}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{scope,"\b"},{location,"beam_utils_SUITE.erl",126}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{scope,"\n"},{location,"beam_utils_SUITE.erl",125}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{scope,"\n"},{location,"beam_utils_SUITE.erl",124}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{scope,"\n"},{location,"beam_utils_SUITE.erl",119}]}.
    {badmatch,{x,0}}.


{function, do_bs_init_1, 2, 72}.
  {label,71}.
    {line,[{location,"beam_utils_SUITE.erl",149}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_bs_init_1},2}.
  {label,72}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[beam_utils_SUITE]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{-43,42}}}]}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_cons,{t_atom,[beam_utils_SUITE]},nil}},
           {literal,[beam_utils_SUITE]}]}.
    {test,is_integer,{f,73},[{tr,{x,1},{t_number,{-43,42}}}]}.
    {test,is_ge,{f,73},[{tr,{x,1},{t_integer,{-43,42}}},{integer,-42}]}.
    {test,is_ge,{f,73},[{integer,41},{tr,{x,1},{t_integer,{-42,42}}}]}.
    {line,[{location,"beam_utils_SUITE.erl",152}]}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,1},{t_integer,{-42,41}}},
                          {integer,8}]}}.
    {call_only,1,{f,298}}. % id/1
  {label,73}.
    {move,{atom,error},{x,0}}.
    return.


{function, do_bs_init_2, 1, 75}.
  {label,74}.
    {line,[{location,"beam_utils_SUITE.erl",157}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_bs_init_2},1}.
  {label,75}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{-1,4294967296}},nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,318},1}. % '-do_bs_init_2/1-lbc$^0/2-0-'/2


{function, do_bs_init_3, 3, 77}.
  {label,76}.
    {line,[{location,"beam_utils_SUITE.erl",164}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_bs_init_3},3}.
  {label,77}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[tag]},
                                     2 => {t_integer,{0,0}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,2}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,1}}}]}}.
    {test,is_lt,
          {f,78},
          [{tr,{x,2},{t_integer,{0,1}}},{tr,{x,1},{t_integer,{0,2}}}]}.
    {move,{x,2},{x,0}}.
    {jump,{f,79}}.
  {label,78}.
    {move,{x,1},{x,0}}.
  {label,79}.
    {line,[{location,"beam_utils_SUITE.erl",169}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,integer},
                          1,8,nil,
                          {integer,0},
                          {tr,{x,0},{t_integer,{0,1}}}]}}.
    return.


{function, do_bs_init_4, 2, 81}.
  {label,80}.
    {line,[{location,"beam_utils_SUITE.erl",171}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_bs_init_4},2}.
  {label,81}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,not_boolean,true]}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"beam_utils_SUITE.erl",173}]}.
    {call,1,{f,298}}. % id/1
    {test,is_ne_exact,{f,82},[{x,0},nil]}.
    {test,is_eq_exact,
          {f,83},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,any,any},
                        {t_number,any},
                        {t_tuple,0,false,#{}},
                        other}},
           {atom,false}]}.
  {label,82}.
    {move,{literal,<<"_build">>},{y,0}}.
    {jump,{f,84}}.
  {label,83}.
    {move,{x,0},{y,0}}.
  {label,84}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"beam_utils_SUITE.erl",177}]}.
    {call,1,{f,298}}. % id/1
    {select_val,{x,0},{f,93},{list,[{atom,false},{f,90},{atom,true},{f,85}]}}.
  {label,85}.
    {test,is_binary,
          {f,86},
          [{tr,{y,0},
               {t_union,{t_atom,any},
                        {t_cons,any,any},
                        {t_number,any},
                        {t_tuple,0,false,#{}},
                        other}}]}.
    {move,{y,0},{y,1}}.
    {jump,{f,87}}.
  {label,86}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",183}]}.
    {call,1,{f,298}}. % id/1
    {move,{x,0},{y,1}}.
  {label,87}.
    {move,{literal,<<"foo">>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",186}]}.
    {call,1,{f,298}}. % id/1
    {test,is_eq_exact,
          {f,94},
          [{x,0},
           {tr,{y,0},
               {t_union,{t_atom,any},
                        {t_cons,any,any},
                        {t_number,any},
                        {t_tuple,0,false,#{}},
                        other}}]}.
    {test,is_binary,
          {f,88},
          [{tr,{y,0},
               {t_union,{t_atom,any},
                        {t_cons,any,any},
                        {t_number,any},
                        {t_tuple,0,false,#{}},
                        other}}]}.
    {move,{y,0},{x,0}}.
    {jump,{f,89}}.
  {label,88}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_utils_SUITE.erl",190}]}.
    {call,1,{f,298}}. % id/1
  {label,89}.
    {line,[{location,"beam_utils_SUITE.erl",179}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {y,1},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"/">>},
                          {integer,1},
                          {atom,binary},
                          3,8,nil,
                          {x,0},
                          {atom,all}]}}.
    {call_last,1,{f,298},2}. % id/1
  {label,90}.
    {test,is_binary,
          {f,91},
          [{tr,{y,0},
               {t_union,{t_atom,any},
                        {t_cons,any,any},
                        {t_number,any},
                        {t_tuple,0,false,#{}},
                        other}}]}.
    {move,{y,0},{x,0}}.
    {jump,{f,92}}.
  {label,91}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_utils_SUITE.erl",197}]}.
    {call,1,{f,298}}. % id/1
  {label,92}.
    {line,[{location,"beam_utils_SUITE.erl",193}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {x,0},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"/shared">>},
                          {integer,7}]}}.
    {call_last,1,{f,298},2}. % id/1
  {label,93}.
    {move,{atom,error},{x,0}}.
    {deallocate,2}.
    return.
  {label,94}.
    {line,[{location,"beam_utils_SUITE.erl",186}]}.
    {case_end,{x,0}}.


{function, do_bs_init_5, 1, 96}.
  {label,95}.
    {line,[{location,"beam_utils_SUITE.erl",204}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_bs_init_5},1}.
  {label,96}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_map,
                     {t_atom,[domain,id,tag]},
                     {t_union,
                         {t_atom,[nil,value]},
                         none,
                         {t_integer,{-8798798,17575}},
                         none,none}}}]}}.
    {get_map_elements,
        {f,95},
        {tr,{x,0},
            {t_map,
                {t_atom,[domain,id,tag]},
                {t_union,
                    {t_atom,[nil,value]},
                    none,
                    {t_integer,{-8798798,17575}},
                    none,none}}},
        {list,[{atom,tag},{x,3},{atom,id},{x,2},{atom,domain},{x,1}]}}.
    {test,is_eq_exact,
          {f,95},
          [{tr,{x,3},
               {t_union,{t_atom,[nil,value]},
                        none,
                        {t_integer,{-8798798,17575}},
                        none,none}},
           {atom,value}]}.
    {test,is_eq_exact,
          {f,97},
          [{tr,{x,2},
               {t_union,{t_atom,[nil,value]},
                        none,
                        {t_integer,{-8798798,17575}},
                        none,none}},
           {atom,nil}]}.
    {allocate,0,0}.
    {move,{literal,{required,id}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",207}]}.
    {call,1,{f,298}}. % id/1
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,97}.
    {line,[{location,"beam_utils_SUITE.erl",209}]}.
    {bs_create_bin,
        {f,0},
        0,3,8,
        {x,0},
        {list,
            [{atom,string},
             0,8,nil,
             {string,<<10,0,1>>},
             {integer,3},
             {atom,integer},
             3,1,nil,
             {tr,{x,2},
                 {t_union,
                     {t_atom,[value]},
                     none,
                     {t_integer,{-8798798,17575}},
                     none,none}},
             {integer,16}]}}.
    {test,is_eq_exact,
          {f,98},
          [{tr,{x,1},
               {t_union,{t_atom,[nil,value]},
                        none,
                        {t_integer,{-8798798,17575}},
                        none,none}},
           {atom,nil}]}.
    {allocate,0,0}.
    {move,{literal,{required,domain}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",213}]}.
    {call,1,{f,298}}. % id/1
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,98}.
    {line,[{location,"beam_utils_SUITE.erl",215}]}.
    {bs_create_bin,
        {f,0},
        4,2,8,
        {x,1},
        {list,
            [{atom,string},
             0,8,nil,
             {string,<<8,0,2>>},
             {integer,3},
             {atom,integer},
             3,1,nil,
             {tr,{x,1},
                 {t_union,
                     {t_atom,[value]},
                     none,
                     {t_integer,{-8798798,17575}},
                     none,none}},
             {integer,32}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    return.


{function, bs_save, 1, 100}.
  {label,99}.
    {line,[{location,"beam_utils_SUITE.erl",218}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,bs_save},1}.
  {label,100}.
    {allocate,0,0}.
    {move,{literal,<<62:6>>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",219}]}.
    {call,1,{f,107}}. % do_bs_save/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_integer,{0,30}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[b]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[b]},
                             2 => {t_integer,{0,127}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[c]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[c]},
                             2 => {t_integer,{0,127}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[d]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[d]},
                             2 => {t_integer,{1024,1024}},
                             3 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,105},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{0,30}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[b]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{0,127}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[c]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[c]},
                                     2 => {t_integer,{0,127}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[d]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[d]},
                                     2 => {t_integer,{1024,1024}},
                                     3 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{a,30,<<>>}}]}.
    {move,{literal,<<253,63:6>>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",220}]}.
    {call,1,{f,107}}. % do_bs_save/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_integer,{0,30}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[b]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[b]},
                             2 => {t_integer,{0,127}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[c]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[c]},
                             2 => {t_integer,{0,127}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[d]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[d]},
                             2 => {t_integer,{1024,1024}},
                             3 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,104},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{0,30}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[b]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{0,127}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[c]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[c]},
                                     2 => {t_integer,{0,127}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[d]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[d]},
                                     2 => {t_integer,{1024,1024}},
                                     3 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{b,127,<<>>}}]}.
    {move,{literal,<<255,63:6>>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",221}]}.
    {call,1,{f,107}}. % do_bs_save/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_integer,{0,30}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[b]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[b]},
                             2 => {t_integer,{0,127}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[c]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[c]},
                             2 => {t_integer,{0,127}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[d]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[d]},
                             2 => {t_integer,{1024,1024}},
                             3 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,103},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{0,30}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[b]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{0,127}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[c]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[c]},
                                     2 => {t_integer,{0,127}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[d]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[d]},
                                     2 => {t_integer,{1024,1024}},
                                     3 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{c,127,<<>>}}]}.
    {move,{literal,<<127,63:6>>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",222}]}.
    {call,1,{f,107}}. % do_bs_save/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_integer,{0,30}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[b]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[b]},
                             2 => {t_integer,{0,127}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[c]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[c]},
                             2 => {t_integer,{0,127}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[d]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[d]},
                             2 => {t_integer,{1024,1024}},
                             3 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,102},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{0,30}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[b]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{0,127}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[c]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[c]},
                                     2 => {t_integer,{0,127}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[d]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[d]},
                                     2 => {t_integer,{1024,1024}},
                                     3 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{c,127,<<>>}}]}.
    {move,{literal,<<31:6>>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",223}]}.
    {call,1,{f,107}}. % do_bs_save/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_integer,{0,30}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[b]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[b]},
                             2 => {t_integer,{0,127}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[c]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[c]},
                             2 => {t_integer,{0,127}},
                             3 => {t_bitstring,8,false}}}},
                      {{3,{t_atom,[d]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[d]},
                             2 => {t_integer,{1024,1024}},
                             3 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{0,30}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[b]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{0,127}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[c]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[c]},
                                     2 => {t_integer,{0,127}},
                                     3 => {t_bitstring,8,false}}}},
                         {{3,{t_atom,[d]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[d]},
                                     2 => {t_integer,{1024,1024}},
                                     3 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{d,1024,<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,101}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{location,"beam_utils_SUITE.erl",222}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{location,"beam_utils_SUITE.erl",221}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{location,"beam_utils_SUITE.erl",220}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{location,"beam_utils_SUITE.erl",219}]}.
    {badmatch,{x,0}}.


{function, do_bs_save, 1, 107}.
  {label,106}.
    {line,[{location,"beam_utils_SUITE.erl",226}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_bs_save},1}.
  {label,107}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,2,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,111},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}}]}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,108},
              {x,0},
              {commands,[{ensure_at_least,5,8},
                         {integer,4,{literal,[]},5,1,{x,4}},
                         {get_tail,5,8,{x,5}}]}}.
    {test,is_ge,{f,108},[{integer,30},{tr,{x,4},{t_integer,{0,31}}}]}.
    {test_heap,4,6}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,4},{x,5}]}}.
    return.
  {label,108}.
    {test,is_eq_exact,{f,109},[{tr,{x,2},{t_integer,{0,1}}},{integer,1}]}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,109},
              {x,0},
              {commands,[{ensure_at_least,13,8},
                         {'=:=',nil,6,62},
                         {integer,1,{literal,[]},7,1,{x,1}},
                         {get_tail,2,8,{x,0}}]}}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,1},{x,0}]}}.
    return.
  {label,109}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,111},
              {x,0},
              {commands,[{ensure_at_least,5,1},{'=:=',nil,5,31}]}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,110},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,3,{literal,[]},1,1,{x,3}}]}}.
    {test,is_eq_exact,{f,110},[{tr,{x,3},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,110},
              {x,0},
              {commands,[{ensure_at_least,7,8},
                         {integer,1,{literal,[]},7,1,{x,1}},
                         {get_tail,2,8,{x,0}}]}}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{atom,c},{x,1},{x,0}]}}.
    return.
  {label,110}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,111},
              {x,0},
              {commands,[{ensure_at_least,0,8},{get_tail,1,8,{x,0}}]}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,d},{integer,1024},{x,0}]}}.
    return.
  {label,111}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,106}}.


{function, is_not_killed, 1, 113}.
  {label,112}.
    {line,[{location,"beam_utils_SUITE.erl",235}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,is_not_killed},1}.
  {label,113}.
    {allocate_heap,3,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {make_fun3,{f,316},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {recv_marker_reserve,{y,2}}.
    {line,[{location,"beam_utils_SUITE.erl",236}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {get_tuple_element,{x,0},0,{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {recv_marker_bind,{y,2},{y,0}}.
    {recv_marker_use,{y,0}}.
  {label,114}.
    {loop_rec,{f,116},{x,0}}.
    {test,is_tagged_tuple,{f,115},[{x,0},5,{atom,'DOWN'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {get_tuple_element,{x,0},4,{x,0}}.
    {test,is_eq_exact,{f,115},[{x,2},{atom,process}]}.
    {test,is_eq_exact,{f,115},[{x,0},{atom,banan}]}.
    {test,is_eq_exact,{f,115},[{x,1},{tr,{y,0},reference}]}.
    {test,is_eq_exact,{f,115},[{x,3},{tr,{y,1},pid}]}.
    {recv_marker_clear,{y,0}}.
    remove_message.
    timeout.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,115}.
    {loop_rec_end,{f,114}}.
  {label,116}.
    {wait,{f,114}}.


{function, is_not_used_at, 1, 118}.
  {label,117}.
    {line,[{location,"beam_utils_SUITE.erl",243}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,is_not_used_at},1}.
  {label,118}.
    {allocate,0,0}.
    {move,{literal,[{a,b}]},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",244}]}.
    {call,2,{f,126}}. % do_is_not_used_at/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[none]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,124},
          [{tr,{x,0},
               {t_union,{t_atom,[none]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {literal,{a,b}}]}.
    {move,{literal,[x,{a,b}]},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",245}]}.
    {call,2,{f,126}}. % do_is_not_used_at/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[none]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,123},
          [{tr,{x,0},
               {t_union,{t_atom,[none]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {literal,{a,b}}]}.
    {move,{literal,[{x,y},{a,b}]},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",246}]}.
    {call,2,{f,126}}. % do_is_not_used_at/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[none]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,122},
          [{tr,{x,0},
               {t_union,{t_atom,[none]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {literal,{a,b}}]}.
    {move,{literal,[{a,b}]},{x,1}}.
    {move,{atom,z},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",247}]}.
    {call,2,{f,126}}. % do_is_not_used_at/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[none]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,121},
          [{tr,{x,0},
               {t_union,{t_atom,[none]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,none}]}.
    {move,{literal,[x]},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",248}]}.
    {call,2,{f,126}}. % do_is_not_used_at/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[none]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,120},
          [{tr,{x,0},
               {t_union,{t_atom,[none]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,none}]}.
    {move,{literal,[{x,y}]},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",249}]}.
    {call,2,{f,126}}. % do_is_not_used_at/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[none]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,119},
          [{tr,{x,0},
               {t_union,{t_atom,[none]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,none}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,119}.
    {badmatch,{literal,{a,b}}}.
  {label,120}.
    {line,[{location,"beam_utils_SUITE.erl",248}]}.
    {badmatch,{literal,{a,b}}}.
  {label,121}.
    {line,[{location,"beam_utils_SUITE.erl",247}]}.
    {badmatch,{literal,{a,b}}}.
  {label,122}.
    {line,[{location,"beam_utils_SUITE.erl",246}]}.
    {badmatch,{atom,none}}.
  {label,123}.
    {line,[{location,"beam_utils_SUITE.erl",245}]}.
    {badmatch,{atom,none}}.
  {label,124}.
    {line,[{location,"beam_utils_SUITE.erl",244}]}.
    {badmatch,{atom,none}}.


{function, do_is_not_used_at, 2, 126}.
  {label,125}.
    {line,[{location,"beam_utils_SUITE.erl",252}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_is_not_used_at},2}.
  {label,126}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,z]}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[x]},
                         none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{2,{t_atom,[x]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,128},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,
          {f,127},
          [{tr,{x,2},
               {t_union,{t_atom,[x]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                         {{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        none}}]}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {test,is_eq_exact,
          {f,127},
          [{tr,{x,2},{t_atom,[a,x]}},{tr,{x,0},{t_atom,[a,z]}}]}.
    {move,{literal,{a,b}},{x,0}}.
    return.
  {label,127}.
    {call_only,2,{f,126}}. % do_is_not_used_at/2
  {label,128}.
    {move,{atom,none},{x,0}}.
    return.


{function, select, 1, 130}.
  {label,129}.
    {line,[{location,"beam_utils_SUITE.erl",263}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,select},1}.
  {label,130}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,{select,false}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",264}]}.
    {call,3,{f,136}}. % do_select/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,134},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,a}]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,{select,false}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",265}]}.
    {call,3,{f,136}}. % do_select/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,133},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,b}]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,{select,true}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",266}]}.
    {call,3,{f,136}}. % do_select/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,132},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,c}]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,{select,true}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",267}]}.
    {call,3,{f,136}}. % do_select/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,131},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,c}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,131}.
    {badmatch,{x,0}}.
  {label,132}.
    {line,[{location,"beam_utils_SUITE.erl",266}]}.
    {badmatch,{x,0}}.
  {label,133}.
    {line,[{location,"beam_utils_SUITE.erl",265}]}.
    {badmatch,{x,0}}.
  {label,134}.
    {line,[{location,"beam_utils_SUITE.erl",264}]}.
    {badmatch,{x,0}}.


{function, do_select, 3, 136}.
  {label,135}.
    {line,[{location,"beam_utils_SUITE.erl",270}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_select},3}.
  {label,136}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[select]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,1}}}]}}.
    {test,is_eq_exact,{f,137},[{tr,{x,2},{t_integer,{0,1}}},{integer,0}]}.
    {move,{atom,same},{x,1}}.
    {jump,{f,138}}.
  {label,137}.
    {move,{atom,true},{x,1}}.
  {label,138}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,139},[{x,0},{atom,true}]}.
    {move,{atom,c},{x,0}}.
    return.
  {label,139}.
    {test,is_eq_exact,{f,140},[{x,1},{atom,true}]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,140}.
    {move,{atom,a},{x,0}}.
    return.


{function, y_catch, 1, 142}.
  {label,141}.
    {line,[{location,"beam_utils_SUITE.erl",292}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,y_catch},1}.
  {label,142}.
    {allocate,1,0}.
    {'try',{y,0},{f,143}}.
    {move,{literal,{state}},{x,1}}.
    {move,{literal,<<"<?xmlX">>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",294}]}.
    {call,2,{f,146}}. % do_y_catch/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,143}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,144},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,{f,144},[{x,1},{literal,{<<"<?xmlX">>,{state}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,144}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, do_y_catch, 2, 146}.
  {label,145}.
    {line,[{location,"beam_utils_SUITE.erl",301}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_y_catch},2}.
  {label,146}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,1,true,#{1 => {t_atom,[state]}}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,148},
              {x,0},
              {commands,[{ensure_at_least,40,1},
                         {'=:=',nil,31,505396278},
                         {'=:=',nil,9,364}]}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"beam_utils_SUITE.erl",303}]}.
    {call,2,{f,150}}. % do_y_catch_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{literal,{state}}]}}.
    {'catch',{y,1},{f,147}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_utils_SUITE.erl",310}]}.
    {call,1,{f,298}}. % id/1
  {label,147}.
    {catch_end,{y,1}}.
    {line,[{scope,[1,2]},{location,"beam_utils_SUITE.erl",312}]}.
    {call_ext_last,1,{extfunc,erlang,throw,1},2}.
  {label,148}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,145}}.


{function, do_y_catch_1, 2, 150}.
  {label,149}.
    {line,[{location,"beam_utils_SUITE.erl",315}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_y_catch_1},2}.
  {label,150}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,1,true,#{1 => {t_atom,[state]}}}}]}}.
    {bs_start_match4,{atom,resume},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,151},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {move,{atom,false},{x,0}}.
    return.
  {label,151}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,149}}.


{function, otp_8949_b, 1, 153}.
  {label,152}.
    {line,[{location,"beam_utils_SUITE.erl",320}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,otp_8949_b},1}.
  {label,153}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,something},{x,1}}.
    {line,[{location,"beam_utils_SUITE.erl",321}]}.
    send.
    {move,{atom,false},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",322}]}.
    {call,2,{f,158}}. % otp_8949_b/2
    {test,is_eq_exact,{f,156},[{x,0},{atom,value}]}.
    {'catch',{y,0},{f,154}}.
    {move,{atom,true},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",323}]}.
    {call,2,{f,158}}. % otp_8949_b/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,154}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,155},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,155}.
    {line,[{scope,[0]},{location,"beam_utils_SUITE.erl",323}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",322}]}.
    {badmatch,{x,0}}.


{function, otp_8949_b, 2, 158}.
  {label,157}.
    {line,[{location,"beam_utils_SUITE.erl",327}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,otp_8949_b},2}.
  {label,158}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{atom,value},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",328}]}.
    {call,1,{f,298}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_eq_exact,{f,159},[{y,1},{atom,true}]}.
    {line,[{location,"beam_utils_SUITE.erl",329}]}.
    if_end.
  {label,159}.
    {loop_rec,{f,161},{x,0}}.
    {test,is_eq_exact,{f,160},[{x,0},{atom,something}]}.
    remove_message.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,298},2}. % id/1
  {label,160}.
    {loop_rec_end,{f,159}}.
  {label,161}.
    {wait,{f,159}}.


{function, liveopt, 1, 163}.
  {label,162}.
    {line,[{location,"beam_utils_SUITE.erl",340}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,liveopt},1}.
  {label,163}.
    {allocate,0,0}.
    {move,{atom,pebkac},{x,1}}.
    {move,{atom,user},{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",341}]}.
    {call,3,{f,167}}. % liveopt_fun/3
    {'%',{var_info,{x,0},
                   [{type,{t_fun,2,
                                 {'-liveopt_fun/3-fun-0-',5},
                                 {t_atom,[void]}}}]}}.
    {move,{literal,{alarmInfo,sctp,pebkac,user}},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",342}]}.
    {call_fun2,{f,313},
               2,
               {tr,{x,2},
                   {t_fun,2,{'-liveopt_fun/3-fun-0-',5},{t_atom,[void]}}}}.
    {'%',{var_info,{x,0},[{type,{t_atom,[void]}}]}}.
    {move,{literal,{{alarmInfo,undefined,{abc,def},undefined},ghi}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",346}]}.
    {call,1,{f,169}}. % liveopt_guard_bif/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,
            {t_tuple,4,true,
             #{1 => {t_atom,[alarmInfo]},
               2 => {t_atom,[undefined]},
               3 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}},
               4 => {t_atom,[undefined]}}}},
           {t_tuple,2,true,
            #{1 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[alarmInfo]},
                  2 => {t_atom,[undefined]},
                  3 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}},
                  4 => {t_atom,[undefined]}}},
              2 => {t_atom,[def]}}}},
          {{2,
            {t_tuple,4,true,
             #{1 => {t_atom,[alarmInfo]},
               2 => {t_atom,[undefined]},
               3 =>
                {t_tuple,1,true,
                 #{1 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}}}},
               4 => {t_atom,[undefined]}}}},
           {t_tuple,2,true,
            #{1 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[alarmInfo]},
                  2 => {t_atom,[undefined]},
                  3 =>
                   {t_tuple,1,true,
                    #{1 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}}}},
                  4 => {t_atom,[undefined]}}},
              2 => {t_atom,[def,ghi]}}}},
          {{2,
            {t_tuple,4,true,
             #{1 => {t_atom,[alarmInfo]},
               2 => {t_atom,[undefined]},
               3 =>
                {t_tuple,2,true,#{1 => {t_atom,[abc]},2 => {t_atom,[def]}}},
               4 => {t_atom,[undefined]}}}},
           {t_tuple,2,true,
            #{1 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[alarmInfo]},
                  2 => {t_atom,[undefined]},
                  3 =>
                   {t_tuple,2,true,#{1 => {t_atom,[abc]},2 => {t_atom,[def]}}},
                  4 => {t_atom,[undefined]}}},
              2 => {t_atom,[ghi]}}}}],
         none}}]}}.
    {test,is_eq_exact,
     {f,165},
     [{tr,
       {x,0},
       {t_union,none,none,none,
        [{{2,
           {t_tuple,4,true,
            #{1 => {t_atom,[alarmInfo]},
              2 => {t_atom,[undefined]},
              3 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}},
              4 => {t_atom,[undefined]}}}},
          {t_tuple,2,true,
           #{1 =>
              {t_tuple,4,true,
               #{1 => {t_atom,[alarmInfo]},
                 2 => {t_atom,[undefined]},
                 3 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}},
                 4 => {t_atom,[undefined]}}},
             2 => {t_atom,[def]}}}},
         {{2,
           {t_tuple,4,true,
            #{1 => {t_atom,[alarmInfo]},
              2 => {t_atom,[undefined]},
              3 =>
               {t_tuple,1,true,
                #{1 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}}}},
              4 => {t_atom,[undefined]}}}},
          {t_tuple,2,true,
           #{1 =>
              {t_tuple,4,true,
               #{1 => {t_atom,[alarmInfo]},
                 2 => {t_atom,[undefined]},
                 3 =>
                  {t_tuple,1,true,
                   #{1 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}}}},
                 4 => {t_atom,[undefined]}}},
             2 => {t_atom,[def,ghi]}}}},
         {{2,
           {t_tuple,4,true,
            #{1 => {t_atom,[alarmInfo]},
              2 => {t_atom,[undefined]},
              3 => {t_tuple,2,true,#{1 => {t_atom,[abc]},2 => {t_atom,[def]}}},
              4 => {t_atom,[undefined]}}}},
          {t_tuple,2,true,
           #{1 =>
              {t_tuple,4,true,
               #{1 => {t_atom,[alarmInfo]},
                 2 => {t_atom,[undefined]},
                 3 =>
                  {t_tuple,2,true,#{1 => {t_atom,[abc]},2 => {t_atom,[def]}}},
                 4 => {t_atom,[undefined]}}},
             2 => {t_atom,[ghi]}}}}],
        none}},
      {literal,{{alarmInfo,undefined,{abc,def},undefined},ghi}}]}.
    {move,{literal,{{alarmInfo,undefined,{abc},undefined},def}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",349}]}.
    {call,1,{f,169}}. % liveopt_guard_bif/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,
            {t_tuple,4,true,
             #{1 => {t_atom,[alarmInfo]},
               2 => {t_atom,[undefined]},
               3 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}},
               4 => {t_atom,[undefined]}}}},
           {t_tuple,2,true,
            #{1 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[alarmInfo]},
                  2 => {t_atom,[undefined]},
                  3 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}},
                  4 => {t_atom,[undefined]}}},
              2 => {t_atom,[def]}}}},
          {{2,
            {t_tuple,4,true,
             #{1 => {t_atom,[alarmInfo]},
               2 => {t_atom,[undefined]},
               3 =>
                {t_tuple,1,true,
                 #{1 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}}}},
               4 => {t_atom,[undefined]}}}},
           {t_tuple,2,true,
            #{1 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[alarmInfo]},
                  2 => {t_atom,[undefined]},
                  3 =>
                   {t_tuple,1,true,
                    #{1 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}}}},
                  4 => {t_atom,[undefined]}}},
              2 => {t_atom,[def,ghi]}}}},
          {{2,
            {t_tuple,4,true,
             #{1 => {t_atom,[alarmInfo]},
               2 => {t_atom,[undefined]},
               3 =>
                {t_tuple,2,true,#{1 => {t_atom,[abc]},2 => {t_atom,[def]}}},
               4 => {t_atom,[undefined]}}}},
           {t_tuple,2,true,
            #{1 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[alarmInfo]},
                  2 => {t_atom,[undefined]},
                  3 =>
                   {t_tuple,2,true,#{1 => {t_atom,[abc]},2 => {t_atom,[def]}}},
                  4 => {t_atom,[undefined]}}},
              2 => {t_atom,[ghi]}}}}],
         none}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
        {f,164},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{1,{t_atom,[abc]}},{t_tuple,1,true,#{1 => {t_atom,[abc]}}}},
                  {{1,{t_tuple,1,true,#{1 => {t_atom,[abc]}}}},
                   {t_tuple,1,true,
                       #{1 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}}}}},
                  {{2,{t_atom,[abc]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[abc]},2 => {t_atom,[def]}}}}],
                 none}},
         {literal,{{abc}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,164},[{tr,{x,1},{t_atom,[def,ghi]}},{atom,def}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,164}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"beam_utils_SUITE.erl",346}]}.
    {badmatch,{x,0}}.


{function, liveopt_fun, 3, 167}.
  {label,166}.
    {line,[{location,"beam_utils_SUITE.erl",353}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,liveopt_fun},3}.
  {label,167}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[pebkac]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[user]}}]}}.
    {test_heap,{alloc,[{words,3},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,313},
               0,0,
               {x,0},
               {list,[{integer,42},{atom,pebkac},{atom,user}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[void]}}]}}.
    return.


{function, liveopt_guard_bif, 1, 169}.
  {label,168}.
    {line,[{location,"beam_utils_SUITE.erl",362}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,liveopt_guard_bif},1}.
  {label,169}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,
            {t_tuple,4,true,
             #{1 => {t_atom,[alarmInfo]},
               2 => {t_atom,[undefined]},
               3 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}},
               4 => {t_atom,[undefined]}}}},
           {t_tuple,2,true,
            #{1 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[alarmInfo]},
                  2 => {t_atom,[undefined]},
                  3 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}},
                  4 => {t_atom,[undefined]}}},
              2 => {t_atom,[def]}}}},
          {{2,
            {t_tuple,4,true,
             #{1 => {t_atom,[alarmInfo]},
               2 => {t_atom,[undefined]},
               3 =>
                {t_tuple,2,true,#{1 => {t_atom,[abc]},2 => {t_atom,[def]}}},
               4 => {t_atom,[undefined]}}}},
           {t_tuple,2,true,
            #{1 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[alarmInfo]},
                  2 => {t_atom,[undefined]},
                  3 =>
                   {t_tuple,2,true,#{1 => {t_atom,[abc]},2 => {t_atom,[def]}}},
                  4 => {t_atom,[undefined]}}},
              2 => {t_atom,[ghi]}}}}],
         none}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,test_arity,{f,170},[{x,1},2]}.
    return.
  {label,170}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{literal,{alarmInfo,undefined,{{abc}},undefined}},
                       {x,0}]}}.
    return.


{function, coverage, 1, 172}.
  {label,171}.
    {line,[{location,"beam_utils_SUITE.erl",372}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,coverage},1}.
  {label,172}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,[[],7,false]},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",373}]}.
    {call,1,{f,185}}. % merchant/1
    {'%',{var_info,{x,0},[{type,{t_integer,{49,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,183},
          [{tr,{x,0},{t_integer,{49,'+inf'}}},{integer,49}]}.
    {'catch',{y,3},{f,173}}.
    {move,{atom,stone},{x,1}}.
    {move,{literal,[0]},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_utils_SUITE.erl",375}]}.
    {call,2,{f,191}}. % resulting/2
    {'%',{var_info,{x,0},[{type,{t_float,{0.0,0.0}}}]}}.
  {label,173}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,182},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,182},[{x,1}]}.
    {test,test_arity,{f,182},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,182},[{x,1},{literal,{try_clause,0}}]}.
    {move,{atom,stone},{x,1}}.
    {move,{literal,[true]},{x,0}}.
    {line,[{scope,[6]},{location,"beam_utils_SUITE.erl",376}]}.
    {call,2,{f,191}}. % resulting/2
    {'%',{var_info,{x,0},[{type,{t_float,{0.0,0.0}}}]}}.
    {test,is_eq_exact,{f,181},[{tr,{x,0},{t_float,{0.0,0.0}}},{float,0.0}]}.
    {'catch',{y,2},{f,174}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[6]},{location,"beam_utils_SUITE.erl",378}]}.
    {call,1,{f,195}}. % clinic/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,174}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,180},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,180},[{x,1},2,{atom,if_clause}]}.
    {'catch',{y,1},{f,175}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_utils_SUITE.erl",379}]}.
    {call,1,{f,195}}. % clinic/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,175}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,179},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,179},[{x,1}]}.
    {test,test_arity,{f,179},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,179},[{x,1},{literal,{try_clause,"trials"}}]}.
    {'catch',{y,0},{f,176}}.
    {move,{literal,{{abc},alcohol}},{x,1}}.
    {move,{atom,overall},{x,0}}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",381}]}.
    {call,2,{f,189}}. % town/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,176}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,178},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,178},[{x,1},2,{atom,function_clause}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,junk_message},{x,1}}.
    {line,[{scope,[1,2]},{location,"beam_utils_SUITE.erl",383}]}.
    send.
    {move,{literal,#{"resolution" => "url"}},{x,0}}.
    {line,[{scope,[1,2]},{location,"beam_utils_SUITE.erl",384}]}.
    {call,1,{f,219}}. % appointment/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_cons,{t_integer,{108,117}},nil},
                       2 =>
                           {t_map,
                               {t_atom,[true]},
                               {t_cons,{t_integer,{108,117}},nil}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,177},
          [{tr,{x,1},{t_cons,{t_integer,{108,117}},nil}},{literal,"url"}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_map_elements,{f,177},
                      {tr,{x,1},
                          {t_map,{t_atom,[true]},
                                 {t_cons,{t_integer,{108,117}},nil}}},
                      {list,[{atom,true},{x,1}]}}.
    {test,is_eq_exact,
          {f,177},
          [{tr,{x,1},{t_cons,{t_integer,{108,117}},nil}},{literal,"url"}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,177}.
    {line,[{scope,[0]},{location,"beam_utils_SUITE.erl",384}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[0]},{location,"beam_utils_SUITE.erl",381}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",379}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",378}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,[6]},{location,"beam_utils_SUITE.erl",376}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[6]},{location,"beam_utils_SUITE.erl",375}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,"\b"},{location,"beam_utils_SUITE.erl",373}]}.
    {badmatch,{x,0}}.


{function, merchant, 1, 185}.
  {label,184}.
    {line,[{location,"beam_utils_SUITE.erl",389}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,merchant},1}.
  {label,185}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[false]},
                         nil,
                         {t_integer,{7,7}},
                         none,none},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nonempty_list,{f,184},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_nonempty_list,{f,184},[{x,2}]}.
    {get_tl,{x,2},{x,2}}.
    {test,is_nil,
          {f,184},
          [{tr,{x,2},
               {t_list,{t_union,{t_atom,[false]},
                                nil,
                                {t_integer,{7,7}},
                                none,none},
                       nil}}]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",390}]}.
    {call,1,{f,298}}. % id/1
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"beam_utils_SUITE.erl",391}]}.
    {call,1,{f,310}}. % '-merchant/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,nil,{x,0}}.
    {call,2,{f,187}}. % oklahoma/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   nil,
                                   {t_integer,{7,7}},
                                   none,none}}]}}.
    {line,[{location,"beam_utils_SUITE.erl",392}]}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{x,0},
                 {t_union,{t_atom,[false]},nil,{t_integer,{7,7}},none,none}},
             {integer,42}],
            {x,0}}.
    {deallocate,0}.
    return.


{function, oklahoma, 2, 187}.
  {label,186}.
    {line,[{location,"beam_utils_SUITE.erl",393}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,oklahoma},2}.
  {label,187}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[false]},
                                   nil,
                                   {t_integer,{7,7}},
                                   none,none}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, town, 2, 189}.
  {label,188}.
    {line,[{location,"beam_utils_SUITE.erl",395}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,town},2}.
  {label,189}.
    {'%',{var_info,{x,0},[{type,{t_atom,[overall]}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_tuple,1,true,#{1 => {t_atom,[abc]}}},
                       2 => {t_atom,[alcohol]}}}}]}}.
    {jump,{f,188}}.


{function, resulting, 2, 191}.
  {label,190}.
    {line,[{location,"beam_utils_SUITE.erl",400}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,resulting},2}.
  {label,191}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[true]},
                         none,
                         {t_integer,{0,0}},
                         none,none},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[stone]}}]}}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nil,
          {f,190},
          [{tr,{x,3},
               {t_list,{t_union,{t_atom,[true]},
                                none,
                                {t_integer,{0,0}},
                                none,none},
                       nil}}]}.
    {allocate,1,3}.
    {'try',{y,0},{f,192}}.
    {test,is_eq_exact,
          {f,193},
          [{tr,{x,2},
               {t_union,{t_atom,[true]},none,{t_integer,{0,0}},none,none}},
           {atom,true}]}.
    {try_end,{y,0}}.
    {move,{float,0.0},{x,0}}.
    {deallocate,1}.
    return.
  {label,192}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,193}.
    {line,[{scope,[3]},{location,"beam_utils_SUITE.erl",401}]}.
    {try_case_end,{integer,0}}.


{function, clinic, 1, 195}.
  {label,194}.
    {line,[{location,"beam_utils_SUITE.erl",409}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,clinic},1}.
  {label,195}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,196},[{x,0},{atom,true}]}.
    {line,[{scope,[1]},{location,"beam_utils_SUITE.erl",412}]}.
    {try_case_end,{literal,"trials"}}.
  {label,196}.
    {line,[{scope,[1]},{location,"beam_utils_SUITE.erl",410}]}.
    if_end.


{function, y_registers, 1, 198}.
  {label,197}.
    {line,[{location,"beam_utils_SUITE.erl",416}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,y_registers},1}.
  {label,198}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'catch',{y,2},{f,199}}.
    {move,{atom,jim},{x,1}}.
    {move,{float,0.0},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",417}]}.
    {call,2,{f,207}}. % economic/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,199}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,205},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,205},[{x,1}]}.
    {test,test_arity,{f,205},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,205},[{x,1},{literal,{badfun,0}}]}.
    {'catch',{y,1},{f,200}}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",418}]}.
    {call,0,{f,209}}. % louisiana/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[necessarily]},
                                     2 => {t_atom,[barbara]}}}}]}}.
  {label,200}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,204},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,204},[{x,1}]}.
    {test,test_arity,{f,204},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,204},[{x,1},{literal,{badmatch,apartments}}]}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",419}]}.
    {call,1,{f,213}}. % boxes/1
    {'%',{var_info,{x,0},[{type,{t_fun,1,{id,1},any}}]}}.
    {move,{literal,{a,b}},{x,0}}.
    {call,1,{f,298}}. % id/1
    {test,is_eq_exact,{f,203},[{x,0},{literal,{a,b}}]}.
    {'catch',{y,0},{f,201}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",420}]}.
    {call,1,{f,215}}. % yellow/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,201}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,202},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,202},[{x,1}]}.
    {test,test_arity,{f,202},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,202},[{x,1},{literal,{case_clause,webmaster}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,202}.
    {line,[{scope,[0]},{location,"beam_utils_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[2]},{location,"beam_utils_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[4]},{location,"beam_utils_SUITE.erl",417}]}.
    {badmatch,{x,0}}.


{function, economic, 2, 207}.
  {label,206}.
    {line,[{location,"beam_utils_SUITE.erl",423}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,economic},2}.
  {label,207}.
    {'%',{var_info,{x,0},[{type,{t_float,{0.0,0.0}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[jim]}}]}}.
    {test,is_eq_exact,{f,206},[{tr,{x,0},{t_float,{0.0,0.0}}},{float,0.0}]}.
    {move,{literal,{badfun,0}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",428}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, louisiana, 0, 209}.
  {label,208}.
    {line,[{location,"beam_utils_SUITE.erl",432}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,louisiana},0}.
  {label,209}.
    {allocate,1,0}.
    {'try',{y,0},{f,210}}.
    {line,[{location,"beam_utils_SUITE.erl",436}]}.
    {badmatch,{atom,apartments}}.
  {label,210}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,211},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_nil,{f,211},[{x,1}]}.
    {move,{literal,{necessarily,barbara}},{x,0}}.
    {deallocate,1}.
    return.
  {label,211}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, boxes, 1, 213}.
  {label,212}.
    {line,[{location,"beam_utils_SUITE.erl",440}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,boxes},1}.
  {label,213}.
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,298},0,0,{x,0},{list,[]}}.
    return.


{function, yellow, 1, 215}.
  {label,214}.
    {line,[{location,"beam_utils_SUITE.erl",447}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,yellow},1}.
  {label,215}.
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {line,[{location,"beam_utils_SUITE.erl",448}]}.
    {case_end,{atom,webmaster}}.


{function, do, 2, 217}.
  {label,216}.
    {line,[{location,"beam_utils_SUITE.erl",455}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do},2}.
  {label,217}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{108,117}},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_map,{t_atom,[true]},
                                 {t_cons,{t_integer,{108,117}},nil}}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, appointment, 1, 219}.
  {label,218}.
    {line,[{location,"beam_utils_SUITE.erl",456}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,appointment},1}.
  {label,219}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_cons,{t_integer,{101,117}},nil},
                                 {t_cons,{t_integer,{108,117}},nil}}}]}}.
    {get_map_elements,{f,218},
                      {tr,{x,0},
                          {t_map,{t_cons,{t_integer,{101,117}},nil},
                                 {t_cons,{t_integer,{108,117}},nil}}},
                      {list,[{literal,"resolution"},{x,1}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
  {label,220}.
    {loop_rec,{f,221},{x,0}}.
    remove_message.
    {put_map_assoc,{f,0},{literal,#{}},{x,1},0,{list,[{atom,true},{y,0}]}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,217},1}. % do/2
  {label,221}.
    {wait,{f,220}}.


{function, user_predef, 1, 223}.
  {label,222}.
    {line,[{location,"beam_utils_SUITE.erl",460}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,user_predef},1}.
  {label,223}.
    {allocate,0,0}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,{key,"value"}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",461}]}.
    {call,2,{f,228}}. % user_predef/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,none,
                     {t_map,
                         {t_atom,[key]},
                         {t_union,
                             {t_atom,[defined]},
                             {t_cons,
                                 {t_union,
                                     {t_atom,[defined]},
                                     none,
                                     {t_integer,{97,118}},
                                     none,none},
                                 nil},
                             none,none,none}}}}]}}.
    {test,is_map,
        {f,226},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error]},
                 none,none,none,
                 {t_map,
                     {t_atom,[key]},
                     {t_union,
                         {t_atom,[defined]},
                         {t_cons,
                             {t_union,
                                 {t_atom,[defined]},
                                 none,
                                 {t_integer,{97,118}},
                                 none,none},
                             nil},
                         none,none,none}}}}]}.
    {get_map_elements,
        {f,226},
        {tr,{x,0},
            {t_map,
                {t_atom,[key]},
                {t_union,
                    {t_atom,[defined]},
                    {t_cons,
                        {t_union,
                            {t_atom,[defined]},
                            none,
                            {t_integer,{97,118}},
                            none,none},
                        nil},
                    none,none,none}}},
        {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,
        {f,226},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[defined]},
                 {t_cons,
                     {t_union,
                         {t_atom,[defined]},
                         none,
                         {t_integer,{97,118}},
                         none,none},
                     nil},
                 none,none,none}},
         {literal,"value"}]}.
    {move,{literal,#{key => defined}},{x,1}}.
    {move,{literal,{key,"value"}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",462}]}.
    {call,2,{f,228}}. % user_predef/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,none,
                     {t_map,
                         {t_atom,[key]},
                         {t_union,
                             {t_atom,[defined]},
                             {t_cons,
                                 {t_union,
                                     {t_atom,[defined]},
                                     none,
                                     {t_integer,{97,118}},
                                     none,none},
                                 nil},
                             none,none,none}}}}]}}.
    {test,is_map,
        {f,225},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error]},
                 none,none,none,
                 {t_map,
                     {t_atom,[key]},
                     {t_union,
                         {t_atom,[defined]},
                         {t_cons,
                             {t_union,
                                 {t_atom,[defined]},
                                 none,
                                 {t_integer,{97,118}},
                                 none,none},
                             nil},
                         none,none,none}}}}]}.
    {get_map_elements,
        {f,225},
        {tr,{x,0},
            {t_map,
                {t_atom,[key]},
                {t_union,
                    {t_atom,[defined]},
                    {t_cons,
                        {t_union,
                            {t_atom,[defined]},
                            none,
                            {t_integer,{97,118}},
                            none,none},
                        nil},
                    none,none,none}}},
        {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,
        {f,225},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[defined]},
                 {t_cons,
                     {t_union,
                         {t_atom,[defined]},
                         none,
                         {t_integer,{97,118}},
                         none,none},
                     nil},
                 none,none,none}},
         {literal,"value"}]}.
    {move,{literal,#{key => [defined]}},{x,1}}.
    {move,{literal,{key,"value"}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",463}]}.
    {call,2,{f,228}}. % user_predef/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,none,
                     {t_map,
                         {t_atom,[key]},
                         {t_union,
                             {t_atom,[defined]},
                             {t_cons,
                                 {t_union,
                                     {t_atom,[defined]},
                                     none,
                                     {t_integer,{97,118}},
                                     none,none},
                                 nil},
                             none,none,none}}}}]}}.
    {test,is_eq_exact,
        {f,224},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error]},
                 none,none,none,
                 {t_map,
                     {t_atom,[key]},
                     {t_union,
                         {t_atom,[defined]},
                         {t_cons,
                             {t_union,
                                 {t_atom,[defined]},
                                 none,
                                 {t_integer,{97,118}},
                                 none,none},
                             nil},
                         none,none,none}}}},
         {atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,224}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{location,"beam_utils_SUITE.erl",462}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{location,"beam_utils_SUITE.erl",461}]}.
    {badmatch,{x,0}}.


{function, user_predef, 2, 228}.
  {label,227}.
    {line,[{location,"beam_utils_SUITE.erl",466}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,user_predef},2}.
  {label,228}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[key]},
                       2 => {t_cons,{t_integer,{97,118}},nil}}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_atom,[key]},
                     {t_union,
                         {t_atom,[defined]},
                         {t_cons,{t_atom,[defined]},nil},
                         none,none,none}}}]}}.
    {get_map_elements,
        {f,229},
        {tr,{x,1},
            {t_map,
                {t_atom,[key]},
                {t_union,
                    {t_atom,[defined]},
                    {t_cons,{t_atom,[defined]},nil},
                    none,none,none}}},
        {list,[{atom,key},{x,2}]}}.
    {test,is_nonempty_list,{f,229},[{x,2}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,229}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_map_assoc,{f,0},{x,1},{x,0},2,{list,[{atom,key},{x,0}]}}.
    return.


{function, scan_f, 1, 231}.
  {label,230}.
    {line,[{location,"beam_utils_SUITE.erl",475}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,scan_f},1}.
  {label,231}.
    {allocate,0,0}.
    {move,{integer,1},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<0,0,0,1>>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",476}]}.
    {call,3,{f,235}}. % scan_f/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{0,1}},
                       2 => {t_bitstring,8,false},
                       3 => {t_list,{t_bitstring,8,false},nil}}}}]}}.
    {test,is_eq_exact,
          {f,233},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,1}},
                          2 => {t_bitstring,8,false},
                          3 => {t_list,{t_bitstring,8,false},nil}}}},
           {literal,{1,<<>>,[]}}]}.
    {move,{integer,1},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<0,0,0,1,156,0,0,0,1>>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",477}]}.
    {call,3,{f,235}}. % scan_f/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{0,1}},
                       2 => {t_bitstring,8,false},
                       3 => {t_list,{t_bitstring,8,false},nil}}}}]}}.
    {test,is_eq_exact,
          {f,232},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,1}},
                          2 => {t_bitstring,8,false},
                          3 => {t_list,{t_bitstring,8,false},nil}}}},
           {literal,{1,<<>>,[<<156>>]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,232}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{location,"beam_utils_SUITE.erl",476}]}.
    {badmatch,{x,0}}.


{function, scan_f, 3, 235}.
  {label,234}.
    {line,[{location,"beam_utils_SUITE.erl",480}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,scan_f},3}.
  {label,235}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{1,1}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,237},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test,is_ge,{f,237},[{integer,1},{tr,{x,4},{t_integer,{0,4294967295}}}]}.
    {test,bs_get_binary2,
          {f,236},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,4},{t_integer,{0,1}}},
           8,
           {field_flags,[{anno,[482,{file,"beam_utils_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,2,4}.
    {put_list,{x,3},{x,2},{x,2}}.
    {call_only,3,{f,235}}. % scan_f/3
  {label,236}.
    {bs_get_tail,{x,0},{x,0},5}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,4},{x,0},{x,2}]}}.
    return.
  {label,237}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,234}}.


{function, cafu, 1, 239}.
  {label,238}.
    {line,[{location,"beam_utils_SUITE.erl",489}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,cafu},1}.
  {label,239}.
    {allocate,0,0}.
    {move,{integer,0},{x,2}}.
    {move,{integer,-1},{x,1}}.
    {move,{literal,{utf32,big}},{x,3}}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",490}]}.
    {call,4,{f,241}}. % cafu/4
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,0},{x,2}}.
    {move,{integer,10},{x,1}}.
    {move,{literal,{utf32,big}},{x,3}}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",491}]}.
    {call,4,{f,241}}. % cafu/4
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,0},{x,2}}.
    {move,{integer,-1},{x,1}}.
    {move,{literal,{utf32,little}},{x,3}}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",492}]}.
    {call,4,{f,241}}. % cafu/4
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cafu, 4, 241}.
  {label,240}.
    {line,[{location,"beam_utils_SUITE.erl",495}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,cafu},4}.
  {label,241}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{'-inf',10}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,'+inf'}}}]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[utf32]},
                                     2 => {t_atom,[big,little]}}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,4},4}.
    {test,bs_skip_utf32,
          {f,243},
          [{x,0},
           5,
           {field_flags,[{anno,[495,{file,"beam_utils_SUITE.erl"}]},
                         unsigned,big]}]}.
    {get_tuple_element,{x,3},1,{x,5}}.
    {test,is_eq_exact,{f,243},[{tr,{x,5},{t_atom,[big,little]}},{atom,big}]}.
    {test,is_ge,{f,242},[{integer,-1},{tr,{x,1},{t_integer,{'-inf',10}}}]}.
    {line,[{location,"beam_utils_SUITE.erl",496}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,1}],{x,2}}.
    {move,{literal,{utf32,big}},{x,3}}.
    {move,{integer,-1},{x,1}}.
    {call_only,4,{f,241}}. % cafu/4
  {label,242}.
    {line,[{location,"beam_utils_SUITE.erl",498}]}.
    {gc_bif,'-',{f,0},3,[{tr,{x,1},{t_integer,{0,10}}},{integer,1}],{x,1}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,1}],{x,2}}.
    {move,{literal,{utf32,big}},{x,3}}.
    {call_only,4,{f,241}}. % cafu/4
  {label,243}.
    {bs_set_position,{x,0},{x,4}}.
    {test,bs_skip_utf32,
          {f,244},
          [{x,0},
           4,
           {field_flags,[{anno,[499,{file,"beam_utils_SUITE.erl"}]},
                         unsigned,little]}]}.
    {test,is_eq_exact,
          {f,244},
          [{tr,{x,3},
               {t_tuple,2,true,
                        #{1 => {t_atom,[utf32]},2 => {t_atom,[big,little]}}}},
           {literal,{utf32,little}}]}.
    {test,is_ge,{f,244},[{integer,-1},{tr,{x,1},{t_integer,{'-inf',10}}}]}.
    {line,[{location,"beam_utils_SUITE.erl",500}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,1}],{x,2}}.
    {move,{literal,{utf32,little}},{x,3}}.
    {move,{integer,-1},{x,1}}.
    {call_only,4,{f,241}}. % cafu/4
  {label,244}.
    {move,{atom,error},{x,0}}.
    return.


{function, receive_label, 1, 246}.
  {label,245}.
    {line,[{location,"beam_utils_SUITE.erl",506}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,receive_label},1}.
  {label,246}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0}]}}.
    {make_fun3,{f,308},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"beam_utils_SUITE.erl",507}]}.
    {call_ext,1,{extfunc,erlang,spawn_link,1}}.
    {test_heap,3,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,1},{list,[{x,1},{literal,{a,b,c}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_utils_SUITE.erl",509}]}.
    send.
  {label,247}.
    {loop_rec,{f,249},{x,0}}.
    {test,is_tagged_tuple,{f,248},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,248},[{x,0},{literal,{a,b,c}}]}.
    remove_message.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",512}]}.
    {call_ext,1,{extfunc,erlang,unlink,1}}.
    {move,{atom,die},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"beam_utils_SUITE.erl",513}]}.
    {call_ext,2,{extfunc,erlang,exit,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,248}.
    {loop_rec_end,{f,247}}.
  {label,249}.
    {wait,{f,247}}.


{function, do_receive_label, 1, 251}.
  {label,250}.
    {line,[{location,"beam_utils_SUITE.erl",517}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_receive_label},1}.
  {label,251}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[rec_label]},
                                     2 => {t_atom,[true]}}}}]}}.
    {allocate,0,0}.
  {label,252}.
    {loop_rec,{f,254},{x,0}}.
    {test,is_tuple,{f,253},[{x,0}]}.
    {test,test_arity,{f,253},[{x,0},2]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    remove_message.
    {put_tuple2,{x,1},{list,[{atom,ok},{x,1}]}}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",520}]}.
    send.
    {move,{literal,{rec_label,true}},{x,0}}.
    {call_last,1,{f,251},0}. % do_receive_label/1
  {label,253}.
    {loop_rec_end,{f,252}}.
  {label,254}.
    {wait,{f,252}}.


{function, read_size_file_version, 1, 256}.
  {label,255}.
    {line,[{location,"beam_utils_SUITE.erl",524}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,read_size_file_version},1}.
  {label,256}.
    {allocate,0,0}.
    {move,{literal,{ok,<<"*">>}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",525}]}.
    {call,1,{f,260}}. % do_read_size_file_version/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},
                             2 => {t_integer,{0,4294967295}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,258},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{0,4294967295}}}}}],
                        none}},
           {atom,ok}]}.
    {move,{literal,{ok,<<0,0,30,97>>}},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",526}]}.
    {call,1,{f,260}}. % do_read_size_file_version/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},
                             2 => {t_integer,{0,4294967295}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,257},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{0,4294967295}}}}}],
                        none}},
           {literal,{ok,7777}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,257}.
    {badmatch,{x,0}}.
  {label,258}.
    {line,[{location,"beam_utils_SUITE.erl",525}]}.
    {badmatch,{x,0}}.


{function, do_read_size_file_version, 1, 260}.
  {label,259}.
    {line,[{location,"beam_utils_SUITE.erl",529}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,do_read_size_file_version},1}.
  {label,260}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,261},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,{f,261},[{tr,{x,3},{t_integer,{0,255}}},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,261}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,262},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,2}]}}.
    return.
  {label,262}.
    {line,[{location,"beam_utils_SUITE.erl",530}]}.
    {case_end,{x,0}}.


{function, not_used, 1, 264}.
  {label,263}.
    {line,[{location,"beam_utils_SUITE.erl",540}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,not_used},1}.
  {label,264}.
    {allocate,0,0}.
    {move,{literal,{k,undefined}},{x,2}}.
    {move,{literal,{s,undefined,true}},{x,1}}.
    {move,{atom,ignored},{x,3}}.
    {move,{atom,any},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",541}]}.
    {call,4,{f,269}}. % not_used_p/4
    {test,is_nil,{f,267},[{x,0}]}.
    {move,{literal,{k,42}},{x,2}}.
    {move,{literal,{s,undefined,false}},{x,1}}.
    {move,{atom,ignored},{x,3}}.
    {move,{atom,any},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",542}]}.
    {call,4,{f,269}}. % not_used_p/4
    {test,is_eq_exact,{f,266},[{x,0},{literal,{k,42}}]}.
    {move,{literal,{k,42}},{x,2}}.
    {move,{literal,{s,undefined,bad}},{x,1}}.
    {move,{atom,ignored},{x,3}}.
    {move,{atom,any},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",543}]}.
    {call,4,{f,269}}. % not_used_p/4
    {test,is_eq_exact,{f,265},[{x,0},{literal,{k,42}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,265}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{location,"beam_utils_SUITE.erl",542}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{location,"beam_utils_SUITE.erl",541}]}.
    {badmatch,{x,0}}.


{function, not_used_p, 4, 269}.
  {label,268}.
    {line,[{location,"beam_utils_SUITE.erl",546}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,not_used_p},4}.
  {label,269}.
    {'%',{var_info,{x,0},[{type,{t_atom,[any]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[s]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[bad,false,true]}}}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[k]},
                       2 =>
                           {t_union,
                               {t_atom,[undefined]},
                               none,
                               {t_integer,{42,42}},
                               none,none}}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,[ignored]}}]}}.
    {get_tuple_element,{x,1},2,{x,0}}.
    {test,is_eq_exact,
          {f,270},
          [{tr,{x,0},{t_atom,[bad,false,true]}},{atom,true}]}.
    {move,nil,{x,0}}.
    return.
  {label,270}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{atom,ignored},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",551}]}.
    {call,1,{f,298}}. % id/1
    {get_tuple_element,{y,0},1,{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",552}]}.
    {call,1,{f,298}}. % id/1
    {move,{y,0},{x,0}}.
    {call_last,1,{f,298},1}. % id/1


{function, is_used_fr, 1, 272}.
  {label,271}.
    {line,[{location,"beam_utils_SUITE.erl",556}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,is_used_fr},1}.
  {label,272}.
    {allocate,0,0}.
    {bif,self,{f,0},[],{x,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",557}]}.
    {call,2,{f,288}}. % is_used_fr/2
    {test,is_eq_exact,{f,286},[{x,0},{integer,1}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,other},{x,1}}.
    {line,[{location,"beam_utils_SUITE.erl",558}]}.
    {call,2,{f,288}}. % is_used_fr/2
    {test,is_eq_exact,{f,285},[{x,0},{integer,1}]}.
  {label,273}.
    {loop_rec,{f,284},{x,0}}.
    {test,is_eq_exact,{f,283},[{x,0},{integer,1}]}.
    remove_message.
  {label,274}.
    {loop_rec,{f,282},{x,0}}.
    {test,is_eq_exact,{f,281},[{x,0},{integer,1}]}.
    remove_message.
  {label,275}.
    {loop_rec,{f,280},{x,0}}.
    {test,is_eq_exact,{f,279},[{x,0},{integer,1}]}.
    remove_message.
  {label,276}.
    {loop_rec,{f,278},{x,0}}.
    {test,is_eq_exact,{f,277},[{x,0},{integer,1}]}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,277}.
    {loop_rec_end,{f,276}}.
  {label,278}.
    {wait,{f,276}}.
  {label,279}.
    {loop_rec_end,{f,275}}.
  {label,280}.
    {wait,{f,275}}.
  {label,281}.
    {loop_rec_end,{f,274}}.
  {label,282}.
    {wait,{f,274}}.
  {label,283}.
    {loop_rec_end,{f,273}}.
  {label,284}.
    {wait,{f,273}}.
  {label,285}.
    {badmatch,{x,0}}.
  {label,286}.
    {line,[{location,"beam_utils_SUITE.erl",557}]}.
    {badmatch,{x,0}}.


{function, is_used_fr, 2, 288}.
  {label,287}.
    {line,[{location,"beam_utils_SUITE.erl",565}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,is_used_fr},2}.
  {label,288}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[other]},none,none,none,pid}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_utils_SUITE.erl",567}]}.
    send.
    {fmove,{float,0.0},{fr,0}}.
    {fconv,{x,0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {move,{integer,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",572}]}.
    send.
    {deallocate,1}.
    return.


{function, unsafe_is_function, 1, 290}.
  {label,289}.
    {line,[{location,"beam_utils_SUITE.erl",575}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,unsafe_is_function},1}.
  {label,290}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,any},{x,1}}.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",576}]}.
    {call,2,{f,294}}. % unsafe_is_function/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[undefined]},
                                     2 => {t_atom,[any]}}}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,306},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{atom,any},{x,1}}.
    {line,[{location,"beam_utils_SUITE.erl",577}]}.
    {call,2,{f,294}}. % unsafe_is_function/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_atom,[any]}}}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,304},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,291}}.
    {move,{atom,any},{x,1}}.
    {line,[{location,"beam_utils_SUITE.erl",578}]}.
    {call,2,{f,294}}. % unsafe_is_function/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,291}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,292},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,292},[{x,1}]}.
    {test,test_arity,{f,292},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,292},[{x,1},2,{atom,case_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,292}.
    {line,[{scope,[0]},{location,"beam_utils_SUITE.erl",578}]}.
    {badmatch,{x,0}}.


{function, unsafe_is_function, 2, 294}.
  {label,293}.
    {line,[{location,"beam_utils_SUITE.erl",581}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,unsafe_is_function},2}.
  {label,294}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[undefined]},
                                   none,none,none,
                                   {t_fun,any,any,{t_atom,[ok]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[any]}}]}}.
    {test,is_function2,
          {f,295},
          [{tr,{x,0},
               {t_union,{t_atom,[undefined]},
                        none,none,none,
                        {t_fun,any,any,{t_atom,[ok]}}}},
           {integer,0}]}.
    {allocate,0,1}.
    {line,[{location,"beam_utils_SUITE.erl",587}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_atom,[ok]}}}}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{ok,any}},{x,0}}.
    {deallocate,0}.
    return.
  {label,295}.
    {test,is_eq_exact,
          {f,296},
          [{tr,{x,0},
               {t_union,{t_atom,[undefined]},
                        none,none,none,
                        {t_fun,any,any,{t_atom,[ok]}}}},
           {atom,undefined}]}.
    {move,{literal,{undefined,any}},{x,0}}.
    return.
  {label,296}.
    {line,[{location,"beam_utils_SUITE.erl",586}]}.
    {case_end,{atom,false}}.


{function, id, 1, 298}.
  {label,297}.
    {line,[{location,"beam_utils_SUITE.erl",594}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,id},1}.
  {label,298}.
    return.


{function, module_info, 0, 300}.
  {label,299}.
    {line,[]}.
    {func_info,{atom,beam_utils_SUITE},{atom,module_info},0}.
  {label,300}.
    {move,{atom,beam_utils_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 302}.
  {label,301}.
    {line,[]}.
    {func_info,{atom,beam_utils_SUITE},{atom,module_info},1}.
  {label,302}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_utils_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-unsafe_is_function/1-fun-1-', 1, 304}.
  {label,303}.
    {line,[{location,"beam_utils_SUITE.erl",578}]}.
    {func_info,{atom,beam_utils_SUITE},
               {atom,'-unsafe_is_function/1-fun-1-'},
               1}.
  {label,304}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-unsafe_is_function/1-fun-0-', 0, 306}.
  {label,305}.
    {line,[{location,"beam_utils_SUITE.erl",577}]}.
    {func_info,{atom,beam_utils_SUITE},
               {atom,'-unsafe_is_function/1-fun-0-'},
               0}.
  {label,306}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-receive_label/1-fun-0-', 0, 308}.
  {label,307}.
    {line,[{location,"beam_utils_SUITE.erl",507}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,'-receive_label/1-fun-0-'},0}.
  {label,308}.
    {move,{literal,{rec_label,true}},{x,0}}.
    {call_only,1,{f,251}}. % do_receive_label/1


{function, '-merchant/1-lc$^0/1-0-', 1, 310}.
  {label,309}.
    {line,[{location,"beam_utils_SUITE.erl",391}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,'-merchant/1-lc$^0/1-0-'},1}.
  {label,310}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   nil,
                                   {t_integer,{7,7}},
                                   none,none}}]}}.
    {test,is_nil,
          {f,311},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},nil,{t_integer,{7,7}},none,none}}]}.
    return.
  {label,311}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-liveopt_fun/3-fun-0-', 5, 313}.
  {label,312}.
    {line,[{location,"beam_utils_SUITE.erl",354}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,'-liveopt_fun/3-fun-0-'},5}.
  {label,313}.
    {'%',{var_info,{x,2},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,[pebkac]}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[user]}}]}}.
    {test,is_eq,{f,314},[{x,0},{integer,42}]}.
    {test,is_eq_exact,{f,314},[{x,1},{literal,{alarmInfo,sctp,pebkac,user}}]}.
    {move,{atom,void},{x,0}}.
    return.
  {label,314}.
    {call_only,2,{f,324}}. % '-liveopt_fun/3-inlined-0-'/2


{function, '-is_not_killed/1-fun-0-', 0, 316}.
  {label,315}.
    {line,[{location,"beam_utils_SUITE.erl",236}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,'-is_not_killed/1-fun-0-'},0}.
  {label,316}.
    {move,{atom,banan},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, '-do_bs_init_2/1-lbc$^0/2-0-', 2, 318}.
  {label,317}.
    {line,[{location,"beam_utils_SUITE.erl",158}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,'-do_bs_init_2/1-lbc$^0/2-0-'},2}.
  {label,318}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{-1,4294967296}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,320},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_integer,{f,319},[{tr,{x,2},{t_number,{-1,4294967296}}}]}.
    {test,is_ge,{f,319},[{tr,{x,2},{t_integer,{-1,4294967296}}},{integer,0}]}.
    {test,is_ge,
          {f,319},
          [{integer,4294967295},{tr,{x,2},{t_integer,{0,4294967296}}}]}.
    {bs_create_bin,{f,0},
                   0,3,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,4294967295}}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,2,{f,318}}. % '-do_bs_init_2/1-lbc$^0/2-0-'/2
  {label,319}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"beam_utils_SUITE.erl",161}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,320}.
    {move,{x,1},{x,0}}.
    return.


{function, '-do_apply_fun/2-fun-0-', 1, 322}.
  {label,321}.
    {line,[{location,"beam_utils_SUITE.erl",81}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,'-do_apply_fun/2-fun-0-'},1}.
  {label,322}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    return.


{function, '-liveopt_fun/3-inlined-0-', 2, 324}.
  {label,323}.
    {line,[{location,"beam_utils_SUITE.erl",354}]}.
    {func_info,{atom,beam_utils_SUITE},{atom,'-liveopt_fun/3-inlined-0-'},2}.
  {label,324}.
    {jump,{f,323}}.
