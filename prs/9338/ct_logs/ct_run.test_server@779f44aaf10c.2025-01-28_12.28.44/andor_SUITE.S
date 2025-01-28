{module, andor_SUITE}.  %% version = 0

{exports, [{all,0},
           {combined,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {in_case,1},
           {init_per_group,2},
           {init_per_suite,1},
           {inside,1},
           {module_info,0},
           {module_info,1},
           {overlap,1},
           {slow_compilation,1},
           {suite,0},
           {t_and_or,1},
           {t_andalso,1},
           {t_case,1},
           {t_orelse,1}]}.

{attributes, []}.

{labels, 347}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"andor_SUITE.erl",29}]}.
    {func_info,{atom,andor_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"andor_SUITE.erl",31}]}.
    {func_info,{atom,andor_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"andor_SUITE.erl",34}]}.
    {func_info,{atom,andor_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [t_case,t_and_or,t_andalso,t_orelse,inside,overlap,
                        combined,in_case,slow_compilation]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"andor_SUITE.erl",39}]}.
    {func_info,{atom,andor_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,andor_SUITE},{x,0}}.
    {line,[{location,"andor_SUITE.erl",40}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"andor_SUITE.erl",43}]}.
    {func_info,{atom,andor_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"andor_SUITE.erl",46}]}.
    {func_info,{atom,andor_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"andor_SUITE.erl",49}]}.
    {func_info,{atom,andor_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, t_case, 1, 16}.
  {label,15}.
    {line,[{location,"andor_SUITE.erl",53}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"andor_SUITE.erl",56}]}.
    {call,2,{f,40}}. % t_case_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[less]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"andor_SUITE.erl",57}]}.
    {call,2,{f,40}}. % t_case_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[not_less]}}]}}.
    {'catch',{y,4},{f,17}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,{x,y,z}},{x,0}}.
    {line,[{location,"andor_SUITE.erl",58}]}.
    {call,2,{f,43}}. % t_case_b/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,17}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,38},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,38},[{x,1}]}.
    {test,test_arity,{f,38},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,38},[{x,1},{literal,{case_clause,false}}]}.
    {'catch',{y,3},{f,18}}.
    {move,{atom,a},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\b"},{location,"andor_SUITE.erl",59}]}.
    {call,2,{f,43}}. % t_case_b/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,18}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,37},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,37},[{x,1}]}.
    {test,test_arity,{f,37},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,37},[{x,1},{literal,{case_clause,true}}]}.
    {move,{atom,a},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[6]},{location,"andor_SUITE.erl",60}]}.
    {call,2,{f,45}}. % t_case_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[eq,ne]}}]}}.
    {test,is_eq_exact,{f,36},[{tr,{x,0},{t_atom,[eq,ne]}},{atom,eq}]}.
    {move,nil,{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[6]},{location,"andor_SUITE.erl",61}]}.
    {call,2,{f,45}}. % t_case_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ne]}}]}}.
    {move,{atom,x},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[6]},{location,"andor_SUITE.erl",62}]}.
    {call,3,{f,48}}. % t_case_d/3
    {'%',{var_info,{x,0},[{type,{t_atom,[f,t]}}]}}.
    {test,is_eq_exact,{f,35},[{tr,{x,0},{t_atom,[f,t]}},{atom,t}]}.
    {move,{atom,x},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[6]},{location,"andor_SUITE.erl",63}]}.
    {call,3,{f,48}}. % t_case_d/3
    {'%',{var_info,{x,0},[{type,{t_atom,[f]}}]}}.
    {move,{atom,y},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[6]},{location,"andor_SUITE.erl",64}]}.
    {call,3,{f,48}}. % t_case_d/3
    {'%',{var_info,{x,0},[{type,{t_atom,[f]}}]}}.
    {'catch',{y,2},{f,19}}.
    {move,{atom,y},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[6]},{location,"andor_SUITE.erl",65}]}.
    {call,3,{f,48}}. % t_case_d/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,19}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,34},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,34},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,1},{f,20}}.
    {move,{literal,{a,b}},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[5,6]},{location,"andor_SUITE.erl",66}]}.
    {call,2,{f,51}}. % t_case_e/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
  {label,20}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,33},[{x,0},{atom,true}]}.
    {'catch',{y,0},{f,21}}.
    {move,{integer,42},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[2]},{location,"andor_SUITE.erl",67}]}.
    {call,2,{f,51}}. % t_case_e/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
  {label,21}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,{f,32},[{x,0},{atom,false}]}.
    {move,{atom,pos},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",69}]}.
    {call,2,{f,53}}. % t_case_f1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,31},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{true,false}}]}.
    {move,{atom,whatever},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",70}]}.
    {call,2,{f,53}}. % t_case_f1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,30},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,true}}]}.
    {move,{atom,pos},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",71}]}.
    {call,2,{f,53}}. % t_case_f1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false]},
                                     2 => {t_atom,[true]}}}}]}}.
    {move,{atom,whatever},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",72}]}.
    {call,2,{f,53}}. % t_case_f1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false]},
                                     2 => {t_atom,[true]}}}}]}}.
    {move,{atom,pos},{x,1}}.
    {move,{atom,not_boolean},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",73}]}.
    {call,2,{f,53}}. % t_case_f1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false]},
                                     2 => {t_atom,[false]}}}}]}}.
    {move,{atom,whatever},{x,1}}.
    {move,{atom,not_boolean},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",74}]}.
    {call,2,{f,53}}. % t_case_f1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false]},
                                     2 => {t_atom,[false]}}}}]}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",76}]}.
    {call,1,{f,58}}. % t_case_f2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",77}]}.
    {call,1,{f,58}}. % t_case_f2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",78}]}.
    {call,1,{f,58}}. % t_case_f2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{integer,100},{x,1}}.
    {move,{integer,700},{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",80}]}.
    {call,3,{f,60}}. % t_case_xy/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,29},[{x,0},{atom,true}]}.
    {move,{integer,100},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",81}]}.
    {call,3,{f,60}}. % t_case_xy/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,28},[{x,0},{atom,true}]}.
    {move,{atom,wrong},{x,1}}.
    {move,{integer,700},{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",82}]}.
    {call,3,{f,60}}. % t_case_xy/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,22},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,22}.
    {move,{atom,wrong},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",83}]}.
    {call,3,{f,60}}. % t_case_xy/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,23},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,23}.
    {move,{atom,whatever},{x,1}}.
    {move,{integer,700},{x,2}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",85}]}.
    {call,3,{f,60}}. % t_case_xy/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,27},[{x,0},{atom,true}]}.
    {move,{integer,100},{x,1}}.
    {move,{integer,700},{x,2}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",86}]}.
    {call,3,{f,60}}. % t_case_xy/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,26},[{x,0},{atom,true}]}.
    {move,{atom,whatever},{x,1}}.
    {move,{atom,wrong},{x,2}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",87}]}.
    {call,3,{f,60}}. % t_case_xy/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,24},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,24}.
    {move,{integer,100},{x,1}}.
    {move,{atom,wrong},{x,2}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",88}]}.
    {call,3,{f,60}}. % t_case_xy/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,25},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,25}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,26}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",86}]}.
    {badmatch,{atom,false}}.
  {label,27}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",85}]}.
    {badmatch,{atom,false}}.
  {label,28}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",81}]}.
    {badmatch,{atom,false}}.
  {label,29}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",80}]}.
    {badmatch,{atom,false}}.
  {label,30}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",70}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",69}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",67}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,[2]},{location,"andor_SUITE.erl",66}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",65}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,[6]},{location,"andor_SUITE.erl",62}]}.
    {badmatch,{atom,f}}.
  {label,36}.
    {line,[{scope,[6]},{location,"andor_SUITE.erl",60}]}.
    {badmatch,{atom,ne}}.
  {label,37}.
    {line,[{scope,[6]},{location,"andor_SUITE.erl",59}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,"\b"},{location,"andor_SUITE.erl",58}]}.
    {badmatch,{x,0}}.


{function, t_case_a, 2, 40}.
  {label,39}.
    {line,[{location,"andor_SUITE.erl",92}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case_a},2}.
  {label,40}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,2}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{2,2}}}]}}.
    {test,is_ge,{f,41},[{integer,1},{tr,{x,0},{t_integer,{1,2}}}]}.
    {move,{atom,less},{x,0}}.
    return.
  {label,41}.
    {move,{atom,not_less},{x,0}}.
    return.


{function, t_case_b, 2, 43}.
  {label,42}.
    {line,[{location,"andor_SUITE.erl",101}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case_b},2}.
  {label,43}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     none,none,
                     [{{3,{t_atom,[x]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[x]},
                             2 => {t_atom,[y]},
                             3 => {t_atom,[z]}}}}],
                     none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{2,2}},
                                   none,none}}]}}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[a]},
                       none,none,
                       [{{3,{t_atom,[x]}},
                         {t_tuple,3,true,
                                  #{1 => {t_atom,[x]},
                                    2 => {t_atom,[y]},
                                    3 => {t_atom,[z]}}}}],
                       none}},
          {tr,{x,1},{t_union,{t_atom,[a]},none,{t_integer,{2,2}},none,none}}],
         {x,0}}.
    {line,[{location,"andor_SUITE.erl",102}]}.
    {case_end,{x,0}}.


{function, t_case_c, 2, 45}.
  {label,44}.
    {line,[{location,"andor_SUITE.erl",106}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case_c},2}.
  {label,45}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_union,{t_atom,[a]},nil,none,none,none}}]}}.
    {test,is_eq_exact,
          {f,46},
          [{tr,{x,0},
               {t_union,{t_atom,[a]},none,{t_integer,{42,42}},none,none}},
           {tr,{x,1},{t_union,{t_atom,[a]},nil,none,none,none}}]}.
    {move,{atom,eq},{x,0}}.
    return.
  {label,46}.
    {move,{atom,ne},{x,0}}.
    return.


{function, t_case_d, 3, 48}.
  {label,47}.
    {line,[{location,"andor_SUITE.erl",112}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case_d},3}.
  {label,48}.
    {'%',{var_info,{x,0},[{type,{t_atom,[x]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[x,y]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[blurf,false,true]}}]}}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_atom,[x,y]}},{atom,x}],{x,0}}.
    {line,[{location,"andor_SUITE.erl",113}]}.
    {bif,'and',
         {f,0},
         [{tr,{x,0},{t_atom,[false,true]}},
          {tr,{x,2},{t_atom,[blurf,false,true]}}],
         {x,0}}.
    {test,is_eq_exact,{f,49},[{x,0},{atom,true}]}.
    {move,{atom,t},{x,0}}.
    return.
  {label,49}.
    {move,{atom,f},{x,0}}.
    return.


{function, t_case_e, 2, 51}.
  {label,50}.
    {line,[{location,"andor_SUITE.erl",118}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case_e},2}.
  {label,51}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,1},
              {t_union,none,none,
                       {t_integer,{42,42}},
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {literal,{a,b}}],
         {x,0}}.
    {call_only,1,{f,322}}. % id/1


{function, t_case_f1, 2, 53}.
  {label,52}.
    {line,[{location,"andor_SUITE.erl",123}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case_f1},2}.
  {label,53}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_boolean,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[pos,whatever]}}]}}.
    {select_val,{tr,{x,0},{t_atom,[false,not_boolean,true]}},
                {f,56},
                {list,[{atom,false},{f,55},{atom,true},{f,54}]}}.
  {label,54}.
    {test_heap,3,2}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_atom,[pos,whatever]}},{atom,pos}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,55}.
    {move,{literal,{false,true}},{x,0}}.
    return.
  {label,56}.
    {move,{literal,{false,false}},{x,0}}.
    return.


{function, t_case_f2, 1, 58}.
  {label,57}.
    {line,[{location,"andor_SUITE.erl",134}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case_f2},1}.
  {label,58}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true,whatever]}}]}}.
    {bif,'=:=',{f,0},[{x,0},{atom,false}],{x,0}}.
    return.


{function, t_case_xy, 3, 60}.
  {label,59}.
    {line,[{location,"andor_SUITE.erl",142}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case_xy},3}.
  {label,60}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,42}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[whatever,wrong]},
                                   none,
                                   {t_integer,{100,100}},
                                   none,none}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[whatever,wrong]},
                                   none,
                                   {t_integer,{700,700}},
                                   none,none}}]}}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"andor_SUITE.erl",143}]}.
    {call,3,{f,63}}. % t_case_x/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,3}}.
    {move,{x,0},{y,2}}.
    {move,{y,0},{x,2}}.
    {trim,2,1}.
    {move,{x,3},{x,0}}.
    {line,[{location,"andor_SUITE.erl",144}]}.
    {call,3,{f,66}}. % t_case_y/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,
          {f,61},
          [{tr,{x,0},{t_atom,[false,true]}},{tr,{y,0},{t_atom,[false,true]}}]}.
    {deallocate,1}.
    return.
  {label,61}.
    {badmatch,{x,0}}.


{function, t_case_x, 3, 63}.
  {label,62}.
    {line,[{location,"andor_SUITE.erl",146}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case_x},3}.
  {label,63}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,42}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[whatever,wrong]},
                                   none,
                                   {t_integer,{100,100}},
                                   none,none}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[whatever,wrong]},
                                   none,
                                   {t_integer,{700,700}},
                                   none,none}}]}}.
    {line,[{location,"andor_SUITE.erl",147}]}.
    {gc_bif,abs,{f,0},3,[{tr,{x,0},{t_integer,{0,42}}}],{x,0}}.
    {test,is_eq_exact,{f,64},[{tr,{x,0},{t_integer,{0,42}}},{integer,42}]}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,1},
              {t_union,{t_atom,[whatever,wrong]},
                       none,
                       {t_integer,{100,100}},
                       none,none}},
          {integer,100}],
         {x,0}}.
    return.
  {label,64}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,2},
              {t_union,{t_atom,[whatever,wrong]},
                       none,
                       {t_integer,{700,700}},
                       none,none}},
          {integer,700}],
         {x,0}}.
    return.


{function, t_case_y, 3, 66}.
  {label,65}.
    {line,[{location,"andor_SUITE.erl",154}]}.
    {func_info,{atom,andor_SUITE},{atom,t_case_y},3}.
  {label,66}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,42}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[whatever,wrong]},
                                   none,
                                   {t_integer,{100,100}},
                                   none,none}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[whatever,wrong]},
                                   none,
                                   {t_integer,{700,700}},
                                   none,none}}]}}.
    {line,[{location,"andor_SUITE.erl",155}]}.
    {gc_bif,abs,{f,0},3,[{tr,{x,0},{t_integer,{0,42}}}],{x,0}}.
    {test,is_eq_exact,{f,67},[{tr,{x,0},{t_integer,{0,42}}},{integer,42}]}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,1},
              {t_union,{t_atom,[whatever,wrong]},
                       none,
                       {t_integer,{100,100}},
                       none,none}},
          {integer,100}],
         {x,0}}.
    return.
  {label,67}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,2},
              {t_union,{t_atom,[whatever,wrong]},
                       none,
                       {t_integer,{700,700}},
                       none,none}},
          {integer,700}],
         {x,0}}.
    return.


{function, t_and_or, 1, 69}.
  {label,68}.
    {line,[{location,"andor_SUITE.erl",166}]}.
    {func_info,{atom,andor_SUITE},{atom,t_and_or},1}.
  {label,69}.
    {test,is_list,{f,68},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"andor_SUITE.erl",172}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {bif,'and',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,true}],
         {x,0}}.
    {test,is_eq_exact,{f,90},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",173}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",173}]}.
    {bif,'and',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,false}],
         {x,0}}.
    {test,is_eq_exact,{f,70},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",173}]}.
    {badmatch,{atom,true}}.
  {label,70}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",174}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",174}]}.
    {bif,'and',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,true}],
         {x,0}}.
    {test,is_eq_exact,{f,71},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",174}]}.
    {badmatch,{atom,true}}.
  {label,71}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",175}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",175}]}.
    {bif,'and',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,false}],
         {x,0}}.
    {test,is_eq_exact,{f,72},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",175}]}.
    {badmatch,{atom,true}}.
  {label,72}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",177}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",177}]}.
    {bif,'and',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,true}],
         {x,0}}.
    {test,is_eq_exact,{f,89},[{x,0},{atom,true}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",178}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",178}]}.
    {bif,'and',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,true}],
         {x,0}}.
    {test,is_eq_exact,{f,73},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",178}]}.
    {badmatch,{atom,true}}.
  {label,73}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",179}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",179}]}.
    {bif,'and',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,false}],
         {x,0}}.
    {test,is_eq_exact,{f,74},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",179}]}.
    {badmatch,{atom,true}}.
  {label,74}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",180}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",180}]}.
    {bif,'and',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,false}],
         {x,0}}.
    {test,is_eq_exact,{f,75},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",180}]}.
    {badmatch,{atom,true}}.
  {label,75}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",187}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",187}]}.
    {bif,'or',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,true}],
         {x,0}}.
    {test,is_eq_exact,{f,88},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",188}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",188}]}.
    {bif,'or',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,false}],
         {x,0}}.
    {test,is_eq_exact,{f,87},[{x,0},{atom,true}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",189}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",189}]}.
    {bif,'or',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,true}],
         {x,0}}.
    {test,is_eq_exact,{f,86},[{x,0},{atom,true}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",190}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",190}]}.
    {bif,'or',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,false}],
         {x,0}}.
    {test,is_eq_exact,{f,76},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",190}]}.
    {badmatch,{atom,true}}.
  {label,76}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",192}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",192}]}.
    {bif,'or',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,true}],
         {x,0}}.
    {test,is_eq_exact,{f,85},[{x,0},{atom,true}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",193}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",193}]}.
    {bif,'or',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,true}],
         {x,0}}.
    {test,is_eq_exact,{f,84},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",194}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",194}]}.
    {bif,'or',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,false}],
         {x,0}}.
    {test,is_eq_exact,{f,83},[{x,0},{atom,true}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",195}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",195}]}.
    {bif,'or',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}},
          {atom,false}],
         {x,0}}.
    {test,is_eq_exact,{f,77},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",195}]}.
    {badmatch,{atom,true}}.
  {label,77}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",197}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",204}]}.
    {call,1,{f,346}}. % '-t_and_or/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",206}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_tuple,
          {f,82},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}}]}.
    {'catch',{y,1},{f,78}}.
    {bif,'and',{f,0},[{literal,{a,b}},{atom,true}],{x,0}}.
  {label,78}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,81},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,81},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,79}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[3,4]},{location,"andor_SUITE.erl",213}]}.
    {call,1,{f,92}}. % bad_and/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,79}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,80},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,80},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,80}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",213}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{scope,[2]},{location,"andor_SUITE.erl",209}]}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",207}]}.
    {case_end,{x,0}}.
  {label,83}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",194}]}.
    {badmatch,{atom,false}}.
  {label,84}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",193}]}.
    {badmatch,{atom,false}}.
  {label,85}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",192}]}.
    {badmatch,{atom,false}}.
  {label,86}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",189}]}.
    {badmatch,{atom,false}}.
  {label,87}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",188}]}.
    {badmatch,{atom,false}}.
  {label,88}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",187}]}.
    {badmatch,{atom,false}}.
  {label,89}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",177}]}.
    {badmatch,{atom,false}}.
  {label,90}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",172}]}.
    {badmatch,{atom,false}}.


{function, bad_and, 1, 92}.
  {label,91}.
    {line,[{location,"andor_SUITE.erl",217}]}.
    {func_info,{atom,andor_SUITE},{atom,bad_and},1}.
  {label,92}.
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {bif,'not',{f,0},[{atom,ok}],{x,0}}.
    return.


{function, t_andalso, 1, 94}.
  {label,93}.
    {line,[{location,"andor_SUITE.erl",220}]}.
    {func_info,{atom,andor_SUITE},{atom,t_andalso},1}.
  {label,94}.
    {test,is_list,{f,93},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[true,false]},{x,0}}.
    {line,[{location,"andor_SUITE.erl",222}]}.
    {call,1,{f,340}}. % '-t_andalso/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[false,true]},
                           2 => {t_atom,[false,true]}}},
                     nil}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,338},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"andor_SUITE.erl",223}]}.
    {call_ext,2,{extfunc,lists,foreach,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"andor_SUITE.erl",238}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,118},
        {list,[{atom,false},{f,95},{atom,true},{f,96}]}}.
  {label,95}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",238}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",238}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,1}}.
    {test,is_eq_exact,{f,97},[{x,0},{atom,true}]}.
  {label,96}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",238}]}.
    {badmatch,{atom,false}}.
  {label,97}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",239}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,117},
        {list,[{atom,false},{f,98},{atom,true},{f,99}]}}.
  {label,98}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",239}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,1}}.
    {test,is_eq_exact,{f,124},[{x,0},{atom,true}]}.
  {label,99}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",240}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,116},
        {list,[{atom,false},{f,100},{atom,true},{f,101}]}}.
  {label,100}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",240}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,1}}.
    {test,is_eq_exact,{f,123},[{x,0},{atom,true}]}.
  {label,101}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",241}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,115},
        {list,[{atom,false},{f,102},{atom,true},{f,103}]}}.
  {label,102}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",241}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,1}}.
    {test,is_eq_exact,{f,122},[{x,0},{atom,true}]}.
  {label,103}.
    {'catch',{y,1},{f,107}}.
    {move,{atom,glurf},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",243}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,106},
        {list,[{atom,false},{f,105},{atom,true},{f,104}]}}.
  {label,104}.
    {move,{atom,false},{x,0}}.
    {jump,{f,107}}.
  {label,105}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[3]},{location,"andor_SUITE.erl",243}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {jump,{f,107}}.
  {label,106}.
    {move,{atom,badarg},{x,0}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,107}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,121},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,121},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,111}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[3,4]},{location,"andor_SUITE.erl",244}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,110},
        {list,[{atom,false},{f,109},{atom,true},{f,108}]}}.
  {label,108}.
    {move,{atom,false},{x,0}}.
    {jump,{f,111}}.
  {label,109}.
    {move,{atom,glurf},{x,0}}.
    {line,[{scope,[1]},{location,"andor_SUITE.erl",244}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",244}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,0}}.
    {jump,{f,111}}.
  {label,110}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[1]},{location,"andor_SUITE.erl",244}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,111}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,120},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,120},[{x,1},2,{atom,badarg}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[1,2]},{location,"andor_SUITE.erl",245}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,114},
        {list,[{atom,false},{f,113},{atom,true},{f,112}]}}.
  {label,112}.
    {move,{atom,glurf},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",245}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",245}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,1}}.
    {test,is_eq_exact,{f,119},[{x,0},{atom,true}]}.
  {label,113}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",255}]}.
    {call,1,{f,336}}. % '-t_andalso/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,114}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",245}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,115}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",241}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,116}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",240}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,117}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",239}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,118}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",238}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,119}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",245}]}.
    {badmatch,{atom,true}}.
  {label,120}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",244}]}.
    {badmatch,{x,0}}.
  {label,121}.
    {line,[{scope,[2]},{location,"andor_SUITE.erl",243}]}.
    {badmatch,{x,0}}.
  {label,122}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",241}]}.
    {badmatch,{atom,true}}.
  {label,123}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",240}]}.
    {badmatch,{atom,true}}.
  {label,124}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",239}]}.
    {badmatch,{atom,true}}.


{function, t_orelse, 1, 126}.
  {label,125}.
    {line,[{location,"andor_SUITE.erl",259}]}.
    {func_info,{atom,andor_SUITE},{atom,t_orelse},1}.
  {label,126}.
    {test,is_list,{f,125},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[true,false]},{x,0}}.
    {line,[{location,"andor_SUITE.erl",261}]}.
    {call,1,{f,330}}. % '-t_orelse/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[false,true]},
                           2 => {t_atom,[false,true]}}},
                     nil}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,328},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"andor_SUITE.erl",262}]}.
    {call_ext,2,{extfunc,lists,foreach,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"andor_SUITE.erl",277}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,148},
        {list,[{atom,false},{f,128},{atom,true},{f,127}]}}.
  {label,127}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",277}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",277}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,1}}.
    {test,is_eq_exact,{f,128},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",277}]}.
    {badmatch,{atom,false}}.
  {label,128}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",278}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,147},
        {list,[{atom,false},{f,130},{atom,true},{f,129}]}}.
  {label,129}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",278}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,1}}.
    {test,is_eq_exact,{f,130},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",278}]}.
    {badmatch,{atom,false}}.
  {label,130}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",279}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,146},
        {list,[{atom,false},{f,132},{atom,true},{f,131}]}}.
  {label,131}.
    {move,{atom,false},{x,0}}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",279}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,1}}.
    {test,is_eq_exact,{f,132},[{x,0},{atom,true}]}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",279}]}.
    {badmatch,{atom,false}}.
  {label,132}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",280}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,145},
        {list,[{atom,false},{f,151},{atom,true},{f,133}]}}.
  {label,133}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",280}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,1}}.
    {test,is_eq_exact,{f,151},[{x,0},{atom,true}]}.
    {'catch',{y,1},{f,137}}.
    {move,{atom,glurf},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",282}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,136},
        {list,[{atom,false},{f,135},{atom,true},{f,134}]}}.
  {label,134}.
    {line,[{scope,[3]},{location,"andor_SUITE.erl",282}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {jump,{f,137}}.
  {label,135}.
    {move,{atom,true},{x,0}}.
    {jump,{f,137}}.
  {label,136}.
    {move,{atom,badarg},{x,0}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,137}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,150},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,150},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,141}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[3,4]},{location,"andor_SUITE.erl",283}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,140},
        {list,[{atom,false},{f,139},{atom,true},{f,138}]}}.
  {label,138}.
    {move,{atom,glurf},{x,0}}.
    {line,[{scope,[1]},{location,"andor_SUITE.erl",283}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",283}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,0}}.
    {jump,{f,141}}.
  {label,139}.
    {move,{atom,true},{x,0}}.
    {jump,{f,141}}.
  {label,140}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[1]},{location,"andor_SUITE.erl",283}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,141}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,149},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,149},[{x,1},2,{atom,badarg}]}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[1,2]},{location,"andor_SUITE.erl",284}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,[false,glurf,true]},
                none,none,
                [{{2,{t_atom,[a]}},
                  {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                none}},
        {f,144},
        {list,[{atom,false},{f,142},{atom,true},{f,143}]}}.
  {label,142}.
    {move,{atom,glurf},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",284}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {line,[{location,"andor_SUITE.erl",284}]}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,1}}.
    {test,is_eq_exact,{f,143},[{x,0},{atom,true}]}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",284}]}.
    {badmatch,{atom,false}}.
  {label,143}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,144}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,145}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",280}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,146}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",279}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,147}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",278}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,148}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",277}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,149}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",283}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{scope,[2]},{location,"andor_SUITE.erl",282}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",280}]}.
    {badmatch,{atom,true}}.


{function, t_andalso_1, 1, 153}.
  {label,152}.
    {line,[{location,"andor_SUITE.erl",295}]}.
    {func_info,{atom,andor_SUITE},{atom,t_andalso_1},1}.
  {label,153}.
    {test,is_tuple,{f,152},[{x,0}]}.
    {test,test_arity,{f,152},[{x,0},2]}.
    {allocate_heap,3,4,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tuple_element,{x,0},0,{y,2}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {put_list,{y,1},nil,{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {move,{literal,"~w andalso ~w: "},{x,0}}.
    {line,[{location,"andor_SUITE.erl",296}]}.
    {call_ext,2,{extfunc,io,fwrite,2}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"andor_SUITE.erl",297}]}.
    {call,1,{f,320}}. % echo/1
    {select_val,{x,0},
                {f,159},
                {list,[{atom,false},{f,155},{atom,true},{f,154}]}}.
  {label,154}.
    {move,{y,1},{x,0}}.
    {call,1,{f,320}}. % echo/1
    {move,{x,0},{y,0}}.
    {jump,{f,156}}.
  {label,155}.
    {move,{atom,false},{y,0}}.
  {label,156}.
    {test,is_eq_exact,{f,157},[{y,2},{atom,true}]}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,0}}.
    {jump,{f,158}}.
  {label,157}.
    {move,{atom,false},{x,0}}.
  {label,158}.
    {test,is_eq_exact,{f,161},[{tr,{x,0},{t_atom,[false,true]}},{y,0}]}.
    {line,[{location,"andor_SUITE.erl",302}]}.
    {bif,'and',{f,0},[{y,2},{y,1}],{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,160},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {tr,{y,0},{t_atom,[false,true]}}]}.
    {deallocate,1}.
    return.
  {label,159}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"andor_SUITE.erl",297}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,160}.
    {line,[{location,"andor_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"andor_SUITE.erl",298}]}.
    {badmatch,{x,0}}.


{function, t_orelse_1, 1, 163}.
  {label,162}.
    {line,[{location,"andor_SUITE.erl",304}]}.
    {func_info,{atom,andor_SUITE},{atom,t_orelse_1},1}.
  {label,163}.
    {test,is_tuple,{f,162},[{x,0}]}.
    {test,test_arity,{f,162},[{x,0},2]}.
    {allocate_heap,3,4,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tuple_element,{x,0},0,{y,2}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {put_list,{y,1},nil,{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {move,{literal,"~w orelse ~w: "},{x,0}}.
    {line,[{location,"andor_SUITE.erl",305}]}.
    {call_ext,2,{extfunc,io,fwrite,2}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"andor_SUITE.erl",306}]}.
    {call,1,{f,320}}. % echo/1
    {select_val,{x,0},
                {f,171},
                {list,[{atom,false},{f,165},{atom,true},{f,164}]}}.
  {label,164}.
    {move,{atom,true},{y,0}}.
    {jump,{f,166}}.
  {label,165}.
    {move,{y,1},{x,0}}.
    {call,1,{f,320}}. % echo/1
    {move,{x,0},{y,0}}.
  {label,166}.
    {select_val,{y,2},
                {f,169},
                {list,[{atom,false},{f,168},{atom,true},{f,167}]}}.
  {label,167}.
    {move,{atom,true},{x,0}}.
    {jump,{f,170}}.
  {label,168}.
    {bif,'=:=',{f,0},[{y,1},{atom,true}],{x,0}}.
    {jump,{f,170}}.
  {label,169}.
    {move,{atom,false},{x,0}}.
  {label,170}.
    {test,is_eq_exact,{f,173},[{tr,{x,0},{t_atom,[false,true]}},{y,0}]}.
    {line,[{location,"andor_SUITE.erl",311}]}.
    {bif,'or',{f,0},[{y,2},{y,1}],{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,172},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {tr,{y,0},{t_atom,[false,true]}}]}.
    {deallocate,1}.
    return.
  {label,171}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"andor_SUITE.erl",306}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,172}.
    {line,[{location,"andor_SUITE.erl",311}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{location,"andor_SUITE.erl",307}]}.
    {badmatch,{x,0}}.


{function, inside, 1, 175}.
  {label,174}.
    {line,[{location,"andor_SUITE.erl",313}]}.
    {func_info,{atom,andor_SUITE},{atom,inside},1}.
  {label,175}.
    {test,is_list,{f,174},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,1},{x,1}}.
    {move,{integer,-8},{x,0}}.
    {line,[{location,"andor_SUITE.erl",314}]}.
    {call,2,{f,187}}. % inside/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,185},[{x,0},{atom,true}]}.
    {move,{integer,-879798},{x,1}}.
    {move,{float,-53.5},{x,0}}.
    {line,[{location,"andor_SUITE.erl",315}]}.
    {call,2,{f,187}}. % inside/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,176},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,176}.
    {move,{integer,-879},{x,1}}.
    {move,{float,1.0},{x,0}}.
    {line,[{location,"andor_SUITE.erl",316}]}.
    {call,2,{f,187}}. % inside/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,177},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,177}.
    {move,{integer,-879},{x,1}}.
    {move,{integer,59},{x,0}}.
    {line,[{location,"andor_SUITE.erl",317}]}.
    {call,2,{f,187}}. % inside/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,178},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,178}.
    {move,{float,1.0},{x,1}}.
    {move,{integer,-11},{x,0}}.
    {line,[{location,"andor_SUITE.erl",318}]}.
    {call,2,{f,187}}. % inside/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,179},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,179}.
    {move,{float,0.2},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"andor_SUITE.erl",319}]}.
    {call,2,{f,187}}. % inside/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,180},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,180}.
    {move,{float,1.2},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"andor_SUITE.erl",320}]}.
    {call,2,{f,187}}. % inside/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,181},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,181}.
    {move,{integer,4},{x,1}}.
    {move,{float,-53.5},{x,0}}.
    {line,[{location,"andor_SUITE.erl",321}]}.
    {call,2,{f,187}}. % inside/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,182},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,182}.
    {move,{float,5.3},{x,1}}.
    {move,{float,1.0},{x,0}}.
    {line,[{location,"andor_SUITE.erl",322}]}.
    {call,2,{f,187}}. % inside/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,183},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,183}.
    {move,{integer,879},{x,1}}.
    {move,{integer,59},{x,0}}.
    {line,[{location,"andor_SUITE.erl",323}]}.
    {call,2,{f,187}}. % inside/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,184},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,184}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,185}.
    {line,[{location,"andor_SUITE.erl",314}]}.
    {badmatch,{atom,false}}.


{function, inside, 2, 187}.
  {label,186}.
    {line,[{location,"andor_SUITE.erl",326}]}.
    {func_info,{atom,andor_SUITE},{atom,inside},2}.
  {label,187}.
    {'%',{var_info,{x,0},[{type,{t_number,{-54,100}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{-879798,879}}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{float,20.0},{x,4}}.
    {move,{float,-2.0},{x,3}}.
    {move,{float,4.0},{x,5}}.
    {move,{float,-10.0},{x,2}}.
    {line,[{location,"andor_SUITE.erl",331}]}.
    {call,6,{f,196}}. % inside/6
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {move,{x,0},{y,0}}.
    {test,is_ge,{f,188},[{tr,{y,2},{t_number,{-54,100}}},{float,-10.0}]}.
    {test,is_lt,{f,188},[{tr,{y,2},{t_number,{-54,100}}},{float,10.0}]}.
    {test,is_ge,{f,188},[{tr,{y,1},{t_number,{-879798,879}}},{float,-2.0}]}.
    {bif,'<',{f,0},[{tr,{y,1},{t_number,{-879798,879}}},{float,2.0}],{x,0}}.
    {jump,{f,189}}.
  {label,188}.
    {move,{atom,false},{x,0}}.
  {label,189}.
    {test,is_eq_exact,
          {f,194},
          [{tr,{x,0},{t_atom,[false,true]}},{tr,{y,0},{t_atom,[false,true]}}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"andor_SUITE.erl",336}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {bif,'not',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,glurf,true]},
                       none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       none}}],
         {x,0}}.
    {test,is_ge,{f,190},[{tr,{y,2},{t_number,{-54,100}}},{float,-10.0}]}.
    {test,is_lt,{f,190},[{tr,{y,2},{t_number,{-54,100}}},{float,10.0}]}.
    {test,is_ge,{f,190},[{tr,{y,1},{t_number,{-879798,879}}},{float,-2.0}]}.
    {test,is_lt,{f,190},[{tr,{y,1},{t_number,{-879798,879}}},{float,2.0}]}.
    {move,{atom,false},{x,1}}.
    {jump,{f,191}}.
  {label,190}.
    {move,{atom,true},{x,1}}.
  {label,191}.
    {test,is_eq_exact,
          {f,193},
          [{tr,{x,1},{t_atom,[false,true]}},{tr,{x,0},{t_atom,[false,true]}}]}.
    {move,{float,-2.0},{x,3}}.
    {move,{float,-10.0},{x,2}}.
    {move,{float,20.0},{x,4}}.
    {move,{y,1},{x,1}}.
    {move,{float,4.0},{x,5}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"andor_SUITE.erl",343}]}.
    {call,6,{f,199}}. % inside_guard/6
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{7,{t_atom,[false]}},
                       {t_tuple,7,true,
                           #{1 => {t_atom,[false]},
                             2 => {t_number,{-54,100}},
                             3 => {t_number,{-879798,879}},
                             4 => {t_float,{-10.0,-10.0}},
                             5 => {t_float,{-2.0,-2.0}},
                             6 => {t_float,{20.0,20.0}},
                             7 => {t_float,{4.0,4.0}}}}},
                      {{7,{t_atom,[true]}},
                       {t_tuple,7,true,
                           #{1 => {t_atom,[true]},
                             2 => {t_number,{-54,100}},
                             3 => {t_number,{-879798,879}},
                             4 => {t_float,{-10.0,-10.0}},
                             5 => {t_float,{-2.0,-2.0}},
                             6 => {t_float,{20.0,20.0}},
                             7 => {t_float,{4.0,4.0}}}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,192},
          [{tr,{x,1},{t_atom,[false,true]}},{tr,{y,0},{t_atom,[false,true]}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,192},
          [{tr,{x,1},{t_number,{-54,100}}},{tr,{y,2},{t_number,{-54,100}}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,192},
          [{tr,{x,1},{t_number,{-879798,879}}},
           {tr,{y,1},{t_number,{-879798,879}}}]}.
    {test_heap,18,0}.
    {put_list,{y,0},nil,{x,0}}.
    {put_list,{float,2.0},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{float,-2.0},{x,0},{x,0}}.
    {put_list,{float,10.0},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {put_list,{float,-10.0},{x,0},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {move,{literal,"~p =< ~p andalso ~p < ~p andalso ~p =< ~p andalso ~p < ~p ==> ~p"},
          {x,0}}.
    {line,[{location,"andor_SUITE.erl",344}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,192}.
    {line,[{location,"andor_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{location,"andor_SUITE.erl",338}]}.
    {badmatch,{x,1}}.
  {label,194}.
    {line,[{location,"andor_SUITE.erl",332}]}.
    {badmatch,{x,0}}.


{function, inside, 6, 196}.
  {label,195}.
    {line,[{location,"andor_SUITE.erl",348}]}.
    {func_info,{atom,andor_SUITE},{atom,inside},6}.
  {label,196}.
    {'%',{var_info,{x,0},[{type,{t_number,{-54,100}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{-879798,879}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_float,{-10.0,-10.0}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_float,{-2.0,-2.0}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_float,{20.0,20.0}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_float,{4.0,4.0}}}]}}.
    {test,is_ge,{f,197},[{tr,{x,0},{t_number,{-54,100}}},{float,-10.0}]}.
    {test,is_lt,{f,197},[{tr,{x,0},{t_number,{-54,100}}},{float,10.0}]}.
    {test,is_ge,{f,197},[{tr,{x,1},{t_number,{-879798,879}}},{float,-2.0}]}.
    {bif,'<',{f,0},[{tr,{x,1},{t_number,{-879798,879}}},{float,2.0}],{x,0}}.
    return.
  {label,197}.
    {move,{atom,false},{x,0}}.
    return.


{function, inside_guard, 6, 199}.
  {label,198}.
    {line,[{location,"andor_SUITE.erl",351}]}.
    {func_info,{atom,andor_SUITE},{atom,inside_guard},6}.
  {label,199}.
    {'%',{var_info,{x,0},[{type,{t_number,{-54,100}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{-879798,879}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_float,{-10.0,-10.0}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_float,{-2.0,-2.0}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_float,{20.0,20.0}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_float,{4.0,4.0}}}]}}.
    {test,is_ge,{f,200},[{tr,{x,0},{t_number,{-54,100}}},{float,-10.0}]}.
    {test,is_lt,{f,200},[{tr,{x,0},{t_number,{-54,100}}},{float,10.0}]}.
    {test,is_ge,{f,200},[{tr,{x,1},{t_number,{-879798,879}}},{float,-2.0}]}.
    {test,is_lt,{f,200},[{tr,{x,1},{t_number,{-879798,879}}},{float,2.0}]}.
    {test_heap,8,2}.
    {put_tuple2,{x,0},
                {list,[{atom,true},
                       {x,0},
                       {x,1},
                       {float,-10.0},
                       {float,-2.0},
                       {float,20.0},
                       {float,4.0}]}}.
    return.
  {label,200}.
    {test_heap,8,2}.
    {put_tuple2,{x,0},
                {list,[{atom,false},
                       {x,0},
                       {x,1},
                       {float,-10.0},
                       {float,-2.0},
                       {float,20.0},
                       {float,4.0}]}}.
    return.


{function, overlap, 1, 202}.
  {label,201}.
    {line,[{location,"andor_SUITE.erl",357}]}.
    {func_info,{atom,andor_SUITE},{atom,overlap},1}.
  {label,202}.
    {test,is_list,{f,201},[{x,0}]}.
    {allocate,0,0}.
    {move,{float,8.0},{x,2}}.
    {move,{float,2.0},{x,1}}.
    {move,{float,0.5},{x,3}}.
    {move,{float,7.0},{x,0}}.
    {line,[{location,"andor_SUITE.erl",358}]}.
    {call,4,{f,212}}. % overlap/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,210},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{float,8.0},{x,2}}.
    {move,{float,2.0},{x,1}}.
    {move,{float,2.5},{x,3}}.
    {move,{float,7.0},{x,0}}.
    {line,[{location,"andor_SUITE.erl",359}]}.
    {call,4,{f,212}}. % overlap/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{float,5.3},{x,2}}.
    {move,{float,2.0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{float,7.0},{x,0}}.
    {line,[{location,"andor_SUITE.erl",360}]}.
    {call,4,{f,212}}. % overlap/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,208},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{float,0.0},{x,2}}.
    {move,{float,2.0},{x,1}}.
    {move,{float,100.0},{x,3}}.
    {move,{float,7.0},{x,0}}.
    {line,[{location,"andor_SUITE.erl",361}]}.
    {call,4,{f,212}}. % overlap/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,207},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{integer,-35},{x,2}}.
    {move,{integer,2},{x,1}}.
    {move,{float,0.5},{x,3}}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"andor_SUITE.erl",363}]}.
    {call,4,{f,212}}. % overlap/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,false}]}.
    {move,{integer,777},{x,2}}.
    {move,{integer,2},{x,1}}.
    {move,{float,0.5},{x,3}}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"andor_SUITE.erl",364}]}.
    {call,4,{f,212}}. % overlap/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,205},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,false}]}.
    {move,{integer,2},{x,2}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,10},{x,3}}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"andor_SUITE.erl",365}]}.
    {call,4,{f,212}}. % overlap/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,204},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,false}]}.
    {move,{integer,12},{x,2}}.
    {move,{integer,10},{x,1}}.
    {move,{float,55.3},{x,3}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"andor_SUITE.erl",366}]}.
    {call,4,{f,212}}. % overlap/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,203},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,203}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{location,"andor_SUITE.erl",365}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{location,"andor_SUITE.erl",364}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{location,"andor_SUITE.erl",363}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{location,"andor_SUITE.erl",361}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{location,"andor_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{location,"andor_SUITE.erl",359}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{location,"andor_SUITE.erl",358}]}.
    {badmatch,{x,0}}.


{function, overlap, 4, 212}.
  {label,211}.
    {line,[{location,"andor_SUITE.erl",369}]}.
    {func_info,{atom,andor_SUITE},{atom,overlap},4}.
  {label,212}.
    {'%',{var_info,{x,0},[{type,{t_number,{-1,7}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{2,10}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_number,{-35,777}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_number,{0,100}}}]}}.
    {test,is_ge,
          {f,213},
          [{tr,{x,0},{t_number,{-1,7}}},{tr,{x,2},{t_number,{-35,777}}}]}.
    {gc_bif,'+',
            {f,214},
            4,
            [{tr,{x,2},{t_number,{-35,7}}},{tr,{x,3},{t_number,{0,100}}}],
            {x,4}}.
    {test,is_lt,
          {f,213},
          [{tr,{x,0},{t_number,{-1,7}}},{tr,{x,4},{t_number,{-35,107}}}]}.
    {move,{atom,true},{x,4}}.
    {jump,{f,215}}.
  {label,213}.
    {test,is_ge,
          {f,214},
          [{tr,{x,2},{t_number,{-35,777}}},{tr,{x,0},{t_number,{-1,7}}}]}.
    {gc_bif,'+',
            {f,214},
            4,
            [{tr,{x,0},{t_number,{-1,7}}},{tr,{x,1},{t_number,{2,10}}}],
            {x,4}}.
    {bif,'<',
         {f,0},
         [{tr,{x,2},{t_number,{-1,777}}},{tr,{x,4},{t_number,{1,17}}}],
         {x,4}}.
    {jump,{f,215}}.
  {label,214}.
    {move,{atom,false},{x,4}}.
  {label,215}.
    {test,is_ge,
          {f,216},
          [{tr,{x,0},{t_number,{-1,7}}},{tr,{x,2},{t_number,{-35,777}}}]}.
    {line,[{location,"andor_SUITE.erl",376}]}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,2},{t_number,{-35,7}}},{tr,{x,3},{t_number,{0,100}}}],
            {x,5}}.
    {test,is_lt,
          {f,216},
          [{tr,{x,0},{t_number,{-1,7}}},{tr,{x,5},{t_number,{-35,107}}}]}.
    {move,{atom,true},{x,5}}.
    {jump,{f,218}}.
  {label,216}.
    {test,is_ge,
          {f,217},
          [{tr,{x,2},{t_number,{-35,777}}},{tr,{x,0},{t_number,{-1,7}}}]}.
    {line,[{location,"andor_SUITE.erl",377}]}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,0},{t_number,{-1,7}}},{tr,{x,1},{t_number,{2,10}}}],
            {x,5}}.
    {bif,'<',
         {f,0},
         [{tr,{x,2},{t_number,{-1,777}}},{tr,{x,5},{t_number,{1,17}}}],
         {x,5}}.
    {jump,{f,218}}.
  {label,217}.
    {move,{atom,false},{x,5}}.
  {label,218}.
    {test,is_eq_exact,
          {f,223},
          [{tr,{x,5},{t_atom,[false,true]}},{tr,{x,4},{t_atom,[false,true]}}]}.
    {test,is_ge,
          {f,219},
          [{tr,{x,0},{t_number,{-1,7}}},{tr,{x,2},{t_number,{-35,777}}}]}.
    {gc_bif,'+',
            {f,220},
            5,
            [{tr,{x,2},{t_number,{-35,7}}},{tr,{x,3},{t_number,{0,100}}}],
            {x,3}}.
    {test,is_lt,
          {f,219},
          [{tr,{x,0},{t_number,{-1,7}}},{tr,{x,3},{t_number,{-35,107}}}]}.
    {move,{atom,true},{x,0}}.
    {jump,{f,221}}.
  {label,219}.
    {test,is_ge,
          {f,220},
          [{tr,{x,2},{t_number,{-35,777}}},{tr,{x,0},{t_number,{-1,7}}}]}.
    {gc_bif,'+',
            {f,220},
            5,
            [{tr,{x,0},{t_number,{-1,7}}},{tr,{x,1},{t_number,{2,10}}}],
            {x,0}}.
    {bif,'<',
         {f,0},
         [{tr,{x,2},{t_number,{-1,777}}},{tr,{x,0},{t_number,{1,17}}}],
         {x,0}}.
    {jump,{f,221}}.
  {label,220}.
    {move,{atom,false},{x,0}}.
  {label,221}.
    {test,is_eq_exact,
          {f,222},
          [{tr,{x,0},{t_atom,[false,true]}},{tr,{x,4},{t_atom,[false,true]}}]}.
    {move,{x,4},{x,0}}.
    {call_only,1,{f,322}}. % id/1
  {label,222}.
    {line,[{location,"andor_SUITE.erl",378}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{location,"andor_SUITE.erl",376}]}.
    {badmatch,{x,5}}.


{function, combined, 1, 225}.
  {label,224}.
    {line,[{location,"andor_SUITE.erl",389}]}.
    {func_info,{atom,andor_SUITE},{atom,combined},1}.
  {label,225}.
    {test,is_list,{f,224},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"andor_SUITE.erl",390}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,240},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,false}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,2}}.
    {line,[{location,"andor_SUITE.erl",391}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,239},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"andor_SUITE.erl",392}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,238},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,false}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,2}}.
    {line,[{location,"andor_SUITE.erl",393}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,237},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,2}}.
    {line,[{location,"andor_SUITE.erl",395}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,236},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,false}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"andor_SUITE.erl",396}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,235},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,2}}.
    {line,[{location,"andor_SUITE.erl",397}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,234},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,2}}.
    {line,[{location,"andor_SUITE.erl",398}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,233},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{atom,blurf},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"andor_SUITE.erl",400}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,232},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,false}]}.
    {move,{atom,blurf},{x,1}}.
    {move,{atom,true},{x,2}}.
    {line,[{location,"andor_SUITE.erl",401}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,231},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {line,[{location,"andor_SUITE.erl",402}]}.
    {call,3,{f,242}}. % comb/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,230},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,true}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"andor_SUITE.erl",418}]}.
    {call,2,{f,272}}. % simple_comb/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,226},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,226}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"andor_SUITE.erl",419}]}.
    {call,2,{f,272}}. % simple_comb/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,227},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,227}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"andor_SUITE.erl",420}]}.
    {call,2,{f,272}}. % simple_comb/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,228},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,228}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"andor_SUITE.erl",421}]}.
    {call,2,{f,272}}. % simple_comb/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,229},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,229}.
    {badmatch,{atom,false}}.
  {label,230}.
    {line,[{location,"andor_SUITE.erl",402}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{location,"andor_SUITE.erl",401}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{location,"andor_SUITE.erl",400}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{location,"andor_SUITE.erl",398}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{location,"andor_SUITE.erl",397}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{location,"andor_SUITE.erl",396}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{location,"andor_SUITE.erl",395}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{location,"andor_SUITE.erl",393}]}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{location,"andor_SUITE.erl",392}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{location,"andor_SUITE.erl",391}]}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{location,"andor_SUITE.erl",390}]}.
    {badmatch,{x,0}}.


{function, comb, 3, 242}.
  {label,241}.
    {line,[{location,"andor_SUITE.erl",426}]}.
    {func_info,{atom,andor_SUITE},{atom,comb},3}.
  {label,242}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[blurf,false,true]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[blurf,false,true]}}]}}.
    {test,is_eq_exact,{f,245},[{x,0},{atom,true}]}.
    {select_val,{tr,{x,1},{t_atom,[blurf,false,true]}},
                {f,244},
                {list,[{atom,false},{f,245},{atom,true},{f,243}]}}.
  {label,243}.
    {move,{atom,true},{x,3}}.
    {jump,{f,246}}.
  {label,244}.
    {move,{literal,{badarg,blurf}},{x,0}}.
    {line,[{location,"andor_SUITE.erl",427}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,245}.
    {move,{x,2},{x,3}}.
  {label,246}.
    {test,is_eq_exact,{f,249},[{x,0},{atom,true}]}.
    {select_val,{tr,{x,1},{t_atom,[blurf,false,true]}},
                {f,248},
                {list,[{atom,false},{f,249},{atom,true},{f,247}]}}.
  {label,247}.
    {move,{atom,true},{x,4}}.
    {jump,{f,250}}.
  {label,248}.
    {move,{atom,false},{x,4}}.
    {jump,{f,250}}.
  {label,249}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,2},{t_atom,[blurf,false,true]}},{atom,true}],
         {x,4}}.
  {label,250}.
    {test,is_eq_exact,
          {f,270},
          [{tr,{x,4},{t_atom,[false,true]}},
           {tr,{x,3},{t_atom,[blurf,false,true]}}]}.
    {allocate,5,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {test,is_eq_exact,{f,251},[{x,0},{atom,true}]}.
    {test,is_ne_exact,{f,251},[{x,1},{atom,false}]}.
    {move,{atom,false},{y,0}}.
    {jump,{f,252}}.
  {label,251}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,2},{t_atom,[blurf,false,true]}},{atom,false}],
         {x,0}}.
    {move,{x,0},{y,0}}.
  {label,252}.
    {bif,'=:=',{f,0},[{tr,{x,3},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {line,[{location,"andor_SUITE.erl",436}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,269},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {tr,{y,0},{t_atom,[false,true]}}]}.
    {test,is_eq_exact,{f,255},[{y,4},{atom,true}]}.
    {select_val,{tr,{y,3},{t_atom,[blurf,false,true]}},
                {f,254},
                {list,[{atom,false},{f,255},{atom,true},{f,253}]}}.
  {label,253}.
    {move,{atom,true},{x,0}}.
    {jump,{f,256}}.
  {label,254}.
    {move,{literal,{badarg,blurf}},{x,0}}.
    {line,[{location,"andor_SUITE.erl",437}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,255}.
    {move,{y,2},{x,0}}.
  {label,256}.
    {test,is_eq_exact,
          {f,268},
          [{tr,{x,0},{t_atom,[blurf,false,true]}},
           {tr,{y,1},{t_atom,[false,true]}}]}.
    {test,is_eq_exact,{f,259},[{y,4},{atom,true}]}.
    {select_val,{tr,{y,3},{t_atom,[blurf,false,true]}},
                {f,258},
                {list,[{atom,false},{f,259},{atom,true},{f,257}]}}.
  {label,257}.
    {move,{atom,true},{x,0}}.
    {jump,{f,260}}.
  {label,258}.
    {move,{atom,false},{x,0}}.
    {jump,{f,260}}.
  {label,259}.
    {bif,'=:=',
         {f,0},
         [{tr,{y,2},{t_atom,[blurf,false,true]}},{atom,true}],
         {x,0}}.
  {label,260}.
    {test,is_eq_exact,
          {f,267},
          [{tr,{x,0},{t_atom,[false,true]}},{tr,{y,1},{t_atom,[false,true]}}]}.
    {bif,'=:=',{f,0},[{tr,{y,1},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {line,[{location,"andor_SUITE.erl",442}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,266},
          [{tr,{x,0},
               {t_union,{t_atom,[false,glurf,true]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {tr,{y,0},{t_atom,[false,true]}}]}.
    {test,is_eq_exact,{f,263},[{y,4},{atom,true}]}.
    {select_val,{tr,{y,3},{t_atom,[blurf,false,true]}},
                {f,262},
                {list,[{atom,false},{f,263},{atom,true},{f,261}]}}.
  {label,261}.
    {move,{atom,true},{x,0}}.
    {jump,{f,264}}.
  {label,262}.
    {move,{atom,false},{x,0}}.
    {jump,{f,264}}.
  {label,263}.
    {bif,'=:=',
         {f,0},
         [{tr,{y,2},{t_atom,[blurf,false,true]}},{atom,true}],
         {x,0}}.
  {label,264}.
    {test,is_eq_exact,
          {f,265},
          [{tr,{x,0},{t_atom,[false,true]}},{tr,{y,1},{t_atom,[false,true]}}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,322},5}. % id/1
  {label,265}.
    {line,[{location,"andor_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{location,"andor_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{location,"andor_SUITE.erl",438}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{location,"andor_SUITE.erl",437}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{location,"andor_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,270}.
    {line,[{location,"andor_SUITE.erl",428}]}.
    {badmatch,{x,4}}.


{function, simple_comb, 2, 272}.
  {label,271}.
    {line,[{location,"andor_SUITE.erl",449}]}.
    {func_info,{atom,andor_SUITE},{atom,simple_comb},2}.
  {label,272}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {test,is_eq_exact,{f,273},[{x,0},{atom,true}]}.
    {move,{x,1},{y,0}}.
    {jump,{f,274}}.
  {label,273}.
    {move,{atom,false},{y,0}}.
  {label,274}.
    {bif,'=:=',{f,0},[{tr,{y,0},{t_atom,[false,true]}},{atom,false}],{x,0}}.
    {line,[{location,"andor_SUITE.erl",453}]}.
    {call,1,{f,322}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, in_case, 1, 276}.
  {label,275}.
    {line,[{location,"andor_SUITE.erl",458}]}.
    {func_info,{atom,andor_SUITE},{atom,in_case},1}.
  {label,276}.
    {test,is_list,{f,275},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,4}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"andor_SUITE.erl",459}]}.
    {call,5,{f,289}}. % in_case_1/5
    {'%',{var_info,{x,0},[{type,{t_atom,[edge_rings,loop,not_loop]}}]}}.
    {test,is_eq_exact,
          {f,287},
          [{tr,{x,0},{t_atom,[edge_rings,loop,not_loop]}},{atom,edge_rings}]}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,4}}.
    {move,{float,0.5},{x,0}}.
    {line,[{scope,"\b"},{location,"andor_SUITE.erl",460}]}.
    {call,5,{f,289}}. % in_case_1/5
    {'%',{var_info,{x,0},[{type,{t_atom,[edge_rings,loop,not_loop]}}]}}.
    {test,is_eq_exact,
          {f,286},
          [{tr,{x,0},{t_atom,[edge_rings,loop,not_loop]}},{atom,not_loop}]}.
    {move,{float,1.1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{float,0.9},{x,1}}.
    {move,{integer,4},{x,4}}.
    {move,{float,0.5},{x,0}}.
    {line,[{scope,"\b"},{location,"andor_SUITE.erl",461}]}.
    {call,5,{f,289}}. % in_case_1/5
    {'%',{var_info,{x,0},[{type,{t_atom,[edge_rings,loop,not_loop]}}]}}.
    {test,is_eq_exact,
          {f,285},
          [{tr,{x,0},{t_atom,[edge_rings,loop,not_loop]}},{atom,loop}]}.
    {'catch',{y,3},{f,277}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,0},{x,4}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,"\b"},{location,"andor_SUITE.erl",462}]}.
    {call,5,{f,289}}. % in_case_1/5
    {'%',{var_info,{x,0},[{type,{t_atom,[edge_rings,loop,not_loop]}}]}}.
  {label,277}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,284},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,284},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,2},{f,278}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{atom,nan},{x,4}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[7,8]},{location,"andor_SUITE.erl",463}]}.
    {call,5,{f,289}}. % in_case_1/5
    {'%',{var_info,{x,0},[{type,{t_atom,[edge_rings,loop,not_loop]}}]}}.
  {label,278}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,283},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,283},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,1},{f,279}}.
    {move,{integer,1},{x,2}}.
    {move,{atom,blurf},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,4}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"andor_SUITE.erl",464}]}.
    {call,5,{f,289}}. % in_case_1/5
    {'%',{var_info,{x,0},[{type,{t_atom,[edge_rings,loop,not_loop]}}]}}.
  {label,279}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,282},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,282},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,280}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,4}}.
    {move,{literal,[nan]},{x,0}}.
    {line,[{scope,[3,4]},{location,"andor_SUITE.erl",465}]}.
    {call,5,{f,289}}. % in_case_1/5
    {'%',{var_info,{x,0},[{type,{t_atom,[edge_rings,loop,not_loop]}}]}}.
  {label,280}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,281},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,281},[{x,1},2,{atom,badarith}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,281}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",465}]}.
    {badmatch,{x,0}}.
  {label,282}.
    {line,[{scope,[2]},{location,"andor_SUITE.erl",464}]}.
    {badmatch,{x,0}}.
  {label,283}.
    {line,[{scope,[4]},{location,"andor_SUITE.erl",463}]}.
    {badmatch,{x,0}}.
  {label,284}.
    {line,[{scope,[6]},{location,"andor_SUITE.erl",462}]}.
    {badmatch,{x,0}}.
  {label,285}.
    {line,[{scope,"\b"},{location,"andor_SUITE.erl",461}]}.
    {badmatch,{x,0}}.
  {label,286}.
    {line,[{scope,"\b"},{location,"andor_SUITE.erl",460}]}.
    {badmatch,{x,0}}.
  {label,287}.
    {line,[{scope,"\b"},{location,"andor_SUITE.erl",459}]}.
    {badmatch,{x,0}}.


{function, in_case_1, 5, 289}.
  {label,288}.
    {line,[{location,"andor_SUITE.erl",468}]}.
    {func_info,{atom,andor_SUITE},{atom,in_case_1},5}.
  {label,289}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[nan]},nil},
                                   {t_number,{0,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{0,1}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_number,{1,2}}}]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,4},
                   [{type,{t_union,{t_atom,[nan]},
                                   none,
                                   {t_integer,{0,4}},
                                   none,none}}]}}.
    {allocate,5,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {line,[{location,"andor_SUITE.erl",469}]}.
    {call,5,{f,292}}. % in_case_1_body/5
    {'%',{var_info,{x,0},[{type,{t_atom,[edge_rings,loop,not_loop]}}]}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,5}}.
    {move,{x,0},{y,4}}.
    {move,{y,0},{x,4}}.
    {trim,4,1}.
    {move,{x,5},{x,0}}.
    {line,[{location,"andor_SUITE.erl",470}]}.
    {call,5,{f,297}}. % in_case_1_guard/5
    {'%',{var_info,{x,0},[{type,{t_atom,[edge_rings,loop,not_loop]}}]}}.
    {test,is_eq_exact,
          {f,290},
          [{tr,{x,0},{t_atom,[edge_rings,loop,not_loop]}},
           {tr,{y,0},{t_atom,[edge_rings,loop,not_loop]}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,290}.
    {badmatch,{x,0}}.


{function, in_case_1_body, 5, 292}.
  {label,291}.
    {line,[{location,"andor_SUITE.erl",473}]}.
    {func_info,{atom,andor_SUITE},{atom,in_case_1_body},5}.
  {label,292}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[nan]},nil},
                                   {t_number,{0,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{0,1}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_number,{1,2}}}]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,4},
                   [{type,{t_union,{t_atom,[nan]},
                                   none,
                                   {t_integer,{0,4}},
                                   none,none}}]}}.
    {line,[{location,"andor_SUITE.erl",474}]}.
    {fconv,{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[nan]},nil},
                        {t_number,{0,1}},
                        none,none}},
           {fr,0}}.
    {fconv,{tr,{x,4},
               {t_union,{t_atom,[nan]},none,{t_integer,{0,4}},none,none}},
           {fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},5}.
    {fmove,{fr,0},{x,5}}.
    {bif,'<',{f,0},[{float,0.707},{tr,{x,5},{t_float,any}}],{x,5}}.
    {fconv,{tr,{x,2},{t_number,{1,2}}},{fr,0}}.
    {fconv,{tr,{x,4},{t_integer,{0,4}}},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},6}.
    {fmove,{fr,0},{x,6}}.
    {bif,'<',{f,0},[{float,0.707},{tr,{x,6},{t_float,any}}],{x,6}}.
    {bif,'and',
         {f,0},
         [{tr,{x,5},{t_atom,[false,true]}},{tr,{x,6},{t_atom,[false,true]}}],
         {x,5}}.
    {line,[{location,"andor_SUITE.erl",475}]}.
    {gc_bif,abs,
            {f,0},
            6,
            [{tr,{x,3},
                 {t_union,{t_atom,[blurf]},none,{t_integer,{1,1}},none,none}}],
            {x,3}}.
    {bif,'<',{f,0},[{float,0.707},{tr,{x,3},{t_integer,{0,1}}}],{x,3}}.
    {test,is_eq_exact,{f,293},[{tr,{x,5},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,293},[{tr,{x,3},{t_atom,[false,true]}},{atom,true}]}.
    {move,{atom,edge_rings},{x,0}}.
    return.
  {label,293}.
    {bif,'>=',{f,0},[{tr,{x,0},{t_number,{0,1}}},{integer,1}],{x,0}}.
    {bif,'>=',{f,0},[{tr,{x,1},{t_number,{0,1}}},{integer,1}],{x,1}}.
    {bif,'or',
         {f,0},
         [{tr,{x,0},{t_atom,[false,true]}},{tr,{x,1},{t_atom,[false,true]}}],
         {x,0}}.
    {bif,'>=',{f,0},[{integer,1},{tr,{x,2},{t_number,{1,2}}}],{x,1}}.
    {bif,'or',
         {f,0},
         [{tr,{x,0},{t_atom,[false,true]}},{tr,{x,1},{t_atom,[false,true]}}],
         {x,0}}.
    {bif,'>=',{f,0},[{integer,3},{tr,{x,4},{t_integer,{0,4}}}],{x,1}}.
    {test,is_eq_exact,{f,294},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,295},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
  {label,294}.
    {move,{atom,not_loop},{x,0}}.
    return.
  {label,295}.
    {move,{atom,loop},{x,0}}.
    return.


{function, in_case_1_guard, 5, 297}.
  {label,296}.
    {line,[{location,"andor_SUITE.erl",488}]}.
    {func_info,{atom,andor_SUITE},{atom,in_case_1_guard},5}.
  {label,297}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[nan]},nil},
                                   {t_number,{0,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{0,1}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_number,{1,2}}}]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,4},
                   [{type,{t_union,{t_atom,[nan]},
                                   none,
                                   {t_integer,{0,4}},
                                   none,none}}]}}.
    {line,[{location,"andor_SUITE.erl",489}]}.
    {fconv,{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[nan]},nil},
                        {t_number,{0,1}},
                        none,none}},
           {fr,0}}.
    {fconv,{tr,{x,4},
               {t_union,{t_atom,[nan]},none,{t_integer,{0,4}},none,none}},
           {fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},5}.
    {fmove,{fr,0},{x,5}}.
    {test,is_lt,{f,298},[{float,0.707},{tr,{x,5},{t_float,any}}]}.
    {fconv,{tr,{x,2},{t_number,{1,2}}},{fr,0}}.
    {fconv,{tr,{x,4},{t_integer,{0,4}}},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},5}.
    {fmove,{fr,0},{x,5}}.
    {test,is_lt,{f,298},[{float,0.707},{tr,{x,5},{t_float,any}}]}.
    {line,[{location,"andor_SUITE.erl",490}]}.
    {gc_bif,abs,
            {f,0},
            5,
            [{tr,{x,3},
                 {t_union,{t_atom,[blurf]},none,{t_integer,{1,1}},none,none}}],
            {x,3}}.
    {test,is_lt,{f,298},[{float,0.707},{tr,{x,3},{t_integer,{0,1}}}]}.
    {move,{atom,edge_rings},{x,0}}.
    return.
  {label,298}.
    {test,is_lt,{f,299},[{tr,{x,0},{t_number,{0,1}}},{integer,1}]}.
    {test,is_lt,{f,299},[{tr,{x,1},{t_number,{0,1}}},{integer,1}]}.
    {test,is_lt,{f,299},[{integer,1},{tr,{x,2},{t_number,{1,2}}}]}.
    {test,is_ge,{f,300},[{integer,3},{tr,{x,4},{t_integer,{0,4}}}]}.
  {label,299}.
    {move,{atom,not_loop},{x,0}}.
    return.
  {label,300}.
    {move,{atom,loop},{x,0}}.
    return.


{function, slow_compilation, 1, 302}.
  {label,301}.
    {line,[{location,"andor_SUITE.erl",500}]}.
    {func_info,{atom,andor_SUITE},{atom,slow_compilation},1}.
  {label,302}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,{state,[]}},{x,1}}.
    {move,{literal,{a}},{x,0}}.
    {line,[{location,"andor_SUITE.erl",501}]}.
    {call,2,{f,312}}. % slow_compilation_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,303}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"andor_SUITE.erl",503}]}.
    {call,1,{f,314}}. % slow_compilation_2/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,303}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,310},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,310},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,304}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[3,4]},{location,"andor_SUITE.erl",504}]}.
    {call,1,{f,314}}. % slow_compilation_2/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,304}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,309},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,309},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,{conf,[],[],[],[],[],[]}},{x,1}}.
    {move,{literal,{conf,[],[],[],[],[],[]}},{x,0}}.
    {line,[{scope,[1,2]},{location,"andor_SUITE.erl",506}]}.
    {call,2,{f,316}}. % slow_compilation_3/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,7,true,
                     #{1 => {t_atom,[conf]},
                       2 => {t_union,{t_atom,[a]},nil,none,none,none},
                       3 => nil,
                       4 => {t_union,{t_atom,[c]},nil,none,none,none},
                       5 => nil,6 => nil,
                       7 => {t_union,{t_atom,[f]},nil,none,none,none}}}}]}}.
    {test,is_eq_exact,
          {f,308},
          [{tr,{x,0},
               {t_tuple,7,true,
                        #{1 => {t_atom,[conf]},
                          2 => {t_union,{t_atom,[a]},nil,none,none,none},
                          3 => nil,
                          4 => {t_union,{t_atom,[c]},nil,none,none,none},
                          5 => nil,6 => nil,
                          7 => {t_union,{t_atom,[f]},nil,none,none,none}}}},
           {literal,{conf,[],[],[],[],[],[]}}]}.
    {move,{literal,{conf,[],[],[],[],[],[]}},{x,1}}.
    {move,{literal,{conf,a,[],[],[],[],[]}},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",508}]}.
    {call,2,{f,316}}. % slow_compilation_3/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,7,true,
                     #{1 => {t_atom,[conf]},
                       2 => {t_union,{t_atom,[a]},nil,none,none,none},
                       3 => nil,
                       4 => {t_union,{t_atom,[c]},nil,none,none,none},
                       5 => nil,6 => nil,
                       7 => {t_union,{t_atom,[f]},nil,none,none,none}}}}]}}.
    {test,is_eq_exact,
          {f,307},
          [{tr,{x,0},
               {t_tuple,7,true,
                        #{1 => {t_atom,[conf]},
                          2 => {t_union,{t_atom,[a]},nil,none,none,none},
                          3 => nil,
                          4 => {t_union,{t_atom,[c]},nil,none,none,none},
                          5 => nil,6 => nil,
                          7 => {t_union,{t_atom,[f]},nil,none,none,none}}}},
           {literal,{conf,a,[],[],[],[],[]}}]}.
    {move,{literal,{conf,[],[],[],[],[],[]}},{x,1}}.
    {move,{literal,{conf,[],[],c,[],[],[]}},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",510}]}.
    {call,2,{f,316}}. % slow_compilation_3/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,7,true,
                     #{1 => {t_atom,[conf]},
                       2 => {t_union,{t_atom,[a]},nil,none,none,none},
                       3 => nil,
                       4 => {t_union,{t_atom,[c]},nil,none,none,none},
                       5 => nil,6 => nil,
                       7 => {t_union,{t_atom,[f]},nil,none,none,none}}}}]}}.
    {test,is_eq_exact,
          {f,306},
          [{tr,{x,0},
               {t_tuple,7,true,
                        #{1 => {t_atom,[conf]},
                          2 => {t_union,{t_atom,[a]},nil,none,none,none},
                          3 => nil,
                          4 => {t_union,{t_atom,[c]},nil,none,none,none},
                          5 => nil,6 => nil,
                          7 => {t_union,{t_atom,[f]},nil,none,none,none}}}},
           {literal,{conf,[],[],c,[],[],[]}}]}.
    {move,{literal,{conf,[],[],[],[],[],[]}},{x,1}}.
    {move,{literal,{conf,[],[],[],[],[],f}},{x,0}}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",512}]}.
    {call,2,{f,316}}. % slow_compilation_3/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,7,true,
                     #{1 => {t_atom,[conf]},
                       2 => {t_union,{t_atom,[a]},nil,none,none,none},
                       3 => nil,
                       4 => {t_union,{t_atom,[c]},nil,none,none,none},
                       5 => nil,6 => nil,
                       7 => {t_union,{t_atom,[f]},nil,none,none,none}}}}]}}.
    {test,is_eq_exact,
          {f,305},
          [{tr,{x,0},
               {t_tuple,7,true,
                        #{1 => {t_atom,[conf]},
                          2 => {t_union,{t_atom,[a]},nil,none,none,none},
                          3 => nil,
                          4 => {t_union,{t_atom,[c]},nil,none,none,none},
                          5 => nil,6 => nil,
                          7 => {t_union,{t_atom,[f]},nil,none,none,none}}}},
           {literal,{conf,[],[],[],[],[],f}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,305}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",511}]}.
    {badmatch,{x,0}}.
  {label,306}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",509}]}.
    {badmatch,{x,0}}.
  {label,307}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",507}]}.
    {badmatch,{x,0}}.
  {label,308}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",506}]}.
    {badmatch,{atom,false}}.
  {label,309}.
    {line,[{scope,[0]},{location,"andor_SUITE.erl",504}]}.
    {badmatch,{x,0}}.
  {label,310}.
    {line,[{scope,[2]},{location,"andor_SUITE.erl",503}]}.
    {badmatch,{x,0}}.


{function, slow_compilation_1, 2, 312}.
  {label,311}.
    {line,[{location,"andor_SUITE.erl",517}]}.
    {func_info,{atom,andor_SUITE},{atom,slow_compilation_1},2}.
  {label,312}.
    {'%',{var_info,{x,0},[{type,{t_tuple,1,true,#{1 => {t_atom,[a]}}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[state]},2 => nil}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, slow_compilation_2, 1, 314}.
  {label,313}.
    {line,[{location,"andor_SUITE.erl",543}]}.
    {func_info,{atom,andor_SUITE},{atom,slow_compilation_2},1}.
  {label,314}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[true]},
                                   none,none,none,
                                   {t_map,none,none}}}]}}.
    {jump,{f,313}}.


{function, slow_compilation_3, 2, 316}.
  {label,315}.
    {line,[{location,"andor_SUITE.erl",553}]}.
    {func_info,{atom,andor_SUITE},{atom,slow_compilation_3},2}.
  {label,316}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,7,true,
                     #{1 => {t_atom,[conf]},
                       2 => {t_union,{t_atom,[a]},nil,none,none,none},
                       3 => nil,
                       4 => {t_union,{t_atom,[c]},nil,none,none,none},
                       5 => nil,6 => nil,
                       7 => {t_union,{t_atom,[f]},nil,none,none,none}}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,7,true,
                                   #{1 => {t_atom,[conf]},
                                     2 => nil,3 => nil,4 => nil,5 => nil,
                                     6 => nil,7 => nil}}}]}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,2},{t_union,{t_atom,[a]},nil,none,none,none}},nil],
         {x,2}}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,3},{t_union,{t_atom,[c]},nil,none,none,none}},nil],
         {x,3}}.
    {get_tuple_element,{x,0},6,{x,4}}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,4},{t_union,{t_atom,[f]},nil,none,none,none}},nil],
         {x,4}}.
    {bif,'or',
         {f,0},
         [{tr,{x,3},{t_atom,[false,true]}},{tr,{x,4},{t_atom,[false,true]}}],
         {x,3}}.
    {test,is_eq_exact,{f,317},[{tr,{x,2},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,318},[{tr,{x,3},{t_atom,[false,true]}},{atom,true}]}.
  {label,317}.
    return.
  {label,318}.
    {move,{x,1},{x,0}}.
    return.


{function, echo, 1, 320}.
  {label,319}.
    {line,[{location,"andor_SUITE.erl",567}]}.
    {func_info,{atom,andor_SUITE},{atom,echo},1}.
  {label,320}.
    {allocate_heap,1,2,1}.
    {move,{x,0},{y,0}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{literal,"eval(~w); "},{x,0}}.
    {line,[{location,"andor_SUITE.erl",568}]}.
    {call_ext,2,{extfunc,io,fwrite,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, id, 1, 322}.
  {label,321}.
    {line,[{location,"andor_SUITE.erl",571}]}.
    {func_info,{atom,andor_SUITE},{atom,id},1}.
  {label,322}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,glurf,true]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    return.


{function, module_info, 0, 324}.
  {label,323}.
    {line,[]}.
    {func_info,{atom,andor_SUITE},{atom,module_info},0}.
  {label,324}.
    {move,{atom,andor_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 326}.
  {label,325}.
    {line,[]}.
    {func_info,{atom,andor_SUITE},{atom,module_info},1}.
  {label,326}.
    {move,{x,0},{x,1}}.
    {move,{atom,andor_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-t_orelse/1-fun-2-', 1, 328}.
  {label,327}.
    {line,[{location,"andor_SUITE.erl",262}]}.
    {func_info,{atom,andor_SUITE},{atom,'-t_orelse/1-fun-2-'},1}.
  {label,328}.
    {call_only,1,{f,163}}. % t_orelse_1/1


{function, '-t_orelse/1-lc$^0/1-0-', 1, 330}.
  {label,329}.
    {line,[{location,"andor_SUITE.erl",261}]}.
    {func_info,{atom,andor_SUITE},{atom,'-t_orelse/1-lc$^0/1-0-'},1}.
  {label,330}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {test,is_nonempty_list,{f,331},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,1}}.
    {move,{literal,[true,false]},{x,0}}.
    {call_only,3,{f,333}}. % '-t_orelse/1-lc$^1/1-1-'/3
  {label,331}.
    return.


{function, '-t_orelse/1-lc$^1/1-1-', 3, 333}.
  {label,332}.
    {line,[{location,"andor_SUITE.erl",261}]}.
    {func_info,{atom,andor_SUITE},{atom,'-t_orelse/1-lc$^1/1-1-'},3}.
  {label,333}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[false,true]}}]}}.
    {test,is_nonempty_list,{f,334},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,3,{f,333}}. % '-t_orelse/1-lc$^1/1-1-'/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[false,true]},
                           2 => {t_atom,[false,true]}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,334}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,330}}. % '-t_orelse/1-lc$^0/1-0-'/1


{function, '-t_andalso/1-fun-3-', 1, 336}.
  {label,335}.
    {line,[{location,"andor_SUITE.erl",255}]}.
    {func_info,{atom,andor_SUITE},{atom,'-t_andalso/1-fun-3-'},1}.
  {label,336}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-t_andalso/1-fun-2-', 1, 338}.
  {label,337}.
    {line,[{location,"andor_SUITE.erl",223}]}.
    {func_info,{atom,andor_SUITE},{atom,'-t_andalso/1-fun-2-'},1}.
  {label,338}.
    {call_only,1,{f,153}}. % t_andalso_1/1


{function, '-t_andalso/1-lc$^0/1-0-', 1, 340}.
  {label,339}.
    {line,[{location,"andor_SUITE.erl",222}]}.
    {func_info,{atom,andor_SUITE},{atom,'-t_andalso/1-lc$^0/1-0-'},1}.
  {label,340}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {test,is_nonempty_list,{f,341},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,1}}.
    {move,{literal,[true,false]},{x,0}}.
    {call_only,3,{f,343}}. % '-t_andalso/1-lc$^1/1-1-'/3
  {label,341}.
    return.


{function, '-t_andalso/1-lc$^1/1-1-', 3, 343}.
  {label,342}.
    {line,[{location,"andor_SUITE.erl",222}]}.
    {func_info,{atom,andor_SUITE},{atom,'-t_andalso/1-lc$^1/1-1-'},3}.
  {label,343}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[false,true]}}]}}.
    {test,is_nonempty_list,{f,344},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,3,{f,343}}. % '-t_andalso/1-lc$^1/1-1-'/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[false,true]},
                           2 => {t_atom,[false,true]}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,344}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,340}}. % '-t_andalso/1-lc$^0/1-0-'/1


{function, '-t_and_or/1-fun-0-', 1, 346}.
  {label,345}.
    {line,[{location,"andor_SUITE.erl",204}]}.
    {func_info,{atom,andor_SUITE},{atom,'-t_and_or/1-fun-0-'},1}.
  {label,346}.
    {test,is_eq_exact,{f,345},[{x,0},{atom,true}]}.
    return.
