{module, trycatch_SUITE}.  %% version = 0

{exports, [{after_oops,1},
           {all,0},
           {andalso_orelse,1},
           {basic,1},
           {bool,1},
           {catch_in_catch,1},
           {catch_oops,1},
           {coverage,1},
           {eclectic,1},
           {end_per_group,2},
           {end_per_suite,1},
           {expression_export,1},
           {get_in_try,1},
           {grab_bag,1},
           {groups,0},
           {handle_info,1},
           {hockey,1},
           {init_per_group,2},
           {init_per_suite,1},
           {last_call_optimization,1},
           {lean_throw,1},
           {module_info,0},
           {module_info,1},
           {nested_after,1},
           {nested_catch,1},
           {nested_horrid,1},
           {nested_of,1},
           {nested_stacktrace,1},
           {no_return_in_try_block,1},
           {raise,1},
           {rethrow,1},
           {stacktrace,1},
           {suite,0},
           {throw_opt_crash,1},
           {throw_opt_funs,1},
           {try_after,1},
           {try_of,1}]}.

{attributes, []}.

{labels, 792}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"trycatch_SUITE.erl",39}]}.
    {func_info,{atom,trycatch_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"trycatch_SUITE.erl",41}]}.
    {func_info,{atom,trycatch_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"trycatch_SUITE.erl",44}]}.
    {func_info,{atom,trycatch_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [basic,lean_throw,try_of,try_after,catch_oops,
                        after_oops,eclectic,rethrow,nested_of,nested_catch,
                        nested_after,nested_horrid,last_call_optimization,
                        bool,andalso_orelse,get_in_try,hockey,handle_info,
                        catch_in_catch,grab_bag,stacktrace,nested_stacktrace,
                        raise,no_return_in_try_block,expression_export,
                        throw_opt_crash,coverage,throw_opt_funs]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"trycatch_SUITE.erl",58}]}.
    {func_info,{atom,trycatch_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,trycatch_SUITE},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",59}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"trycatch_SUITE.erl",62}]}.
    {func_info,{atom,trycatch_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"trycatch_SUITE.erl",65}]}.
    {func_info,{atom,trycatch_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"trycatch_SUITE.erl",68}]}.
    {func_info,{atom,trycatch_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, basic, 1, 16}.
  {label,15}.
    {line,[{location,"trycatch_SUITE.erl",73}]}.
    {func_info,{atom,trycatch_SUITE},{atom,basic},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,17}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",75}]}.
    {call,2,{f,406}}. % my_div/2
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {try_end,{y,1}}.
    {jump,{f,18}}.
  {label,17}.
    {try_case,{y,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
  {label,18}.
    {test,is_eq_exact,
          {f,29},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,any},
                        {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}},
                        none}},
           {integer,2}]}.
    {'try',{y,1},{f,19}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[15]},{location,"trycatch_SUITE.erl",80}]}.
    {call,2,{f,406}}. % my_div/2
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {try_end,{y,1}}.
    {line,[{scope,[15]},{location,"trycatch_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,19}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,25},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,25},[{x,1},{atom,badarith}]}.
    {'try',{y,1},{f,20}}.
    {line,[{scope,"\f"},{location,"trycatch_SUITE.erl",85}]}.
    {call,0,{f,448}}. % zero/0
    {'%',{var_info,{x,0},[{type,{t_float,{0.0,0.0}}}]}}.
    {fmove,{float,1.0},{fr,0}}.
    {fmove,{float,0.0},{fr,1}}.
    {line,[{location,"trycatch_SUITE.erl",85}]}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {try_end,{y,1}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {line,[{scope,"\f"},{location,"trycatch_SUITE.erl",84}]}.
    {badmatch,{x,0}}.
  {label,20}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,25},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,25},[{x,1},{atom,badarith}]}.
    {'try',{y,1},{f,21}}.
    {move,{atom,atom},{x,1}}.
    {move,{integer,53},{x,0}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",90}]}.
    {call,2,{f,408}}. % my_add/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,21}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,25},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,25},[{x,1},{atom,badarith}]}.
    {'try',{y,1},{f,22}}.
    {move,{atom,nisse},{x,0}}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",95}]}.
    {call_ext,1,{extfunc,erlang,exit,1}}.
  {label,22}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,25},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,exit}]}.
    {test,is_eq_exact,{f,25},[{x,1},{atom,nisse}]}.
    {'try',{y,1},{f,23}}.
    {move,{atom,kalle},{x,0}}.
    {line,[{scope,[5]},{location,"trycatch_SUITE.erl",100}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
  {label,23}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,25},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,{f,25},[{x,1},{atom,kalle}]}.
    {move,{literal,{a,variable}},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",107}]}.
    {call,1,{f,743}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",115}]}.
    {call,0,{f,31}}. % after_call/0
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",116}]}.
    {call,0,{f,33}}. % after_clean/0
    {'%',{var_info,{x,0},[{type,{t_atom,[after_was_called]}}]}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",117}]}.
    {call,0,{f,31}}. % after_call/0
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",118}]}.
    {call,0,{f,33}}. % after_clean/0
    {'%',{var_info,{x,0},[{type,{t_atom,[after_was_called]}}]}}.
    {test_heap,2,0}.
    {put_list,{y,1},nil,{y,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",119}]}.
    {call,0,{f,31}}. % after_call/0
    {get_list,{y,0},{x,0},{x,1}}.
    {test,is_nil,{f,28},[{tr,{x,1},{t_list,any,nil}}]}.
    {test,is_eq_exact,{f,28},[{x,0},{y,1}]}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",120}]}.
    {call,0,{f,33}}. % after_clean/0
    {'%',{var_info,{x,0},[{type,{t_atom,[after_was_called]}}]}}.
    {test_heap,3,0}.
    {put_tuple2,{y,0},{list,[{atom,ok},{y,1}]}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",121}]}.
    {call,0,{f,31}}. % after_call/0
    {get_tuple_element,{y,0},1,{x,0}}.
    {test,is_eq_exact,{f,27},[{x,0},{y,1}]}.
    {test,is_eq_exact,{f,26},[{y,1},{literal,{a,variable}}]}.
    {'try',{y,1},{f,24}}.
    {move,{atom,thrown},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",131}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
  {label,24}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,25},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,{f,25},[{x,1},{atom,thrown}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,25}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,26}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",124}]}.
    {try_case_end,{y,1}}.
  {label,27}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",121}]}.
    {badmatch,{y,0}}.
  {label,28}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",119}]}.
    {badmatch,{y,0}}.
  {label,29}.
    {line,[{scope,[15]},{location,"trycatch_SUITE.erl",74}]}.
    {badmatch,{x,0}}.


{function, after_call, 0, 31}.
  {label,30}.
    {line,[{location,"trycatch_SUITE.erl",141}]}.
    {func_info,{atom,trycatch_SUITE},{atom,after_call},0}.
  {label,31}.
    {move,{atom,after_was_called},{x,1}}.
    {move,{atom,basic},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",142}]}.
    {call_ext_only,2,{extfunc,erlang,put,2}}.


{function, after_clean, 0, 33}.
  {label,32}.
    {line,[{location,"trycatch_SUITE.erl",144}]}.
    {func_info,{atom,trycatch_SUITE},{atom,after_clean},0}.
  {label,33}.
    {allocate,0,0}.
    {move,{atom,basic},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",145}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,34},[{x,0},{atom,after_was_called}]}.
    {deallocate,0}.
    return.
  {label,34}.
    {badmatch,{x,0}}.


{function, lean_throw, 1, 36}.
  {label,35}.
    {line,[{location,"trycatch_SUITE.erl",148}]}.
    {func_info,{atom,trycatch_SUITE},{atom,lean_throw},1}.
  {label,36}.
    {test,is_list,{f,35},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,37}}.
    {move,{atom,kalle},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",150}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
  {label,37}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,50},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1}]}}.
    {test,is_eq_exact,
          {f,54},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[throw]}}}},
           {literal,{throw,kalle}}]}.
    {'try',{y,1},{f,38}}.
    {move,{atom,kalle},{x,0}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",155}]}.
    {call_ext,1,{extfunc,erlang,exit,1}}.
  {label,38}.
    {try_case,{y,1}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,50},
                {list,[{atom,exit},{f,40},{atom,throw},{f,39}]}}.
  {label,39}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1}]}}.
    {jump,{f,41}}.
  {label,40}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1}]}}.
  {label,41}.
    {test,is_eq_exact,
          {f,53},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[exit]}},
                          {t_tuple,2,true,#{1 => {t_atom,[exit]}}}},
                         {{2,{t_atom,[throw]}},
                          {t_tuple,2,true,#{1 => {t_atom,[throw]}}}}],
                        none}},
           {literal,{exit,kalle}}]}.
    {'try',{y,1},{f,42}}.
    {move,{atom,kalle},{x,0}}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",161}]}.
    {call_ext,1,{extfunc,erlang,exit,1}}.
  {label,42}.
    {try_case,{y,1}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,50},
                {list,[{atom,exit},{f,44},{atom,throw},{f,43}]}}.
  {label,43}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1}]}}.
    {jump,{f,45}}.
  {label,44}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1}]}}.
  {label,45}.
    {test,is_eq_exact,
          {f,52},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[exit]}},
                          {t_tuple,2,true,#{1 => {t_atom,[exit]}}}},
                         {{2,{t_atom,[throw]}},
                          {t_tuple,2,true,#{1 => {t_atom,[throw]}}}}],
                        none}},
           {literal,{exit,kalle}}]}.
    {'try',{y,1},{f,48}}.
    {'try',{y,0},{f,46}}.
    {move,{atom,kalle},{x,0}}.
    {line,[{scope,[5]},{location,"trycatch_SUITE.erl",167}]}.
    {call_ext,1,{extfunc,erlang,exit,1}}.
  {label,46}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,47},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {try_end,{y,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1}]}}.
    {jump,{f,49}}.
  {label,47}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,48}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,50},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,exit}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1}]}}.
  {label,49}.
    {test,is_eq_exact,
          {f,51},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[exit]}},
                          {t_tuple,2,true,#{1 => {t_atom,[exit]}}}},
                         {{2,{t_atom,[throw]}},
                          {t_tuple,2,true,#{1 => {t_atom,[throw]}}}}],
                        none}},
           {literal,{exit,kalle}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,50}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,51}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",166}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[5]},{location,"trycatch_SUITE.erl",160}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",154}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",149}]}.
    {badmatch,{x,0}}.


{function, try_of, 1, 56}.
  {label,55}.
    {line,[{location,"trycatch_SUITE.erl",178}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_of},1}.
  {label,56}.
    {test,is_list,{f,55},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{value,{good,{some,content}}}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",180}]}.
    {call,1,{f,71}}. % try_of_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,69},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[ok]}},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                 none}},
         {literal,{ok,{some,content}}}]}.
    {move,{literal,{value,{bad,[other,content]}}},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",182}]}.
    {call,1,{f,71}}. % try_of_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,68},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[ok]}},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                 none}},
         {literal,{error,[other,content]}}]}.
    {move,{literal,{exit,{ex,it,[reason]}}},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",184}]}.
    {call,1,{f,71}}. % try_of_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,67},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[ok]}},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                 none}},
         {literal,{caught,{exit,{ex,it,[reason]}}}}]}.
    {move,{literal,{throw,[term,{in,a,{tuple}}]}},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",186}]}.
    {call,1,{f,71}}. % try_of_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,66},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[ok]}},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                 none}},
         {literal,{caught,{throw,[term,{in,a,{tuple}}]}}}]}.
    {move,{literal,{error,[bad,arg]}},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",188}]}.
    {call,1,{f,71}}. % try_of_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,65},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[ok]}},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                 none}},
         {literal,{caught,{error,[bad,arg]}}}]}.
    {move,{literal,{'div',{1,0}}},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",190}]}.
    {call,1,{f,71}}. % try_of_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,64},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[ok]}},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {move,{literal,{add,{a,0}}},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",192}]}.
    {call,1,{f,71}}. % try_of_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,63},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[ok]}},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {move,{literal,{abs,x}},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",194}]}.
    {call,1,{f,71}}. % try_of_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,62},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[ok]}},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                 none}},
         {literal,{caught,{error,badarg}}}]}.
    {move,{atom,illegal},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",196}]}.
    {call,1,{f,71}}. % try_of_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,61},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[ok]}},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                 none}},
         {literal,{caught,{error,function_clause}}}]}.
    {'try',{y,0},{f,57}}.
    {move,{literal,{value,{some,other_garbage}}},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",198}]}.
    {call,1,{f,71}}. % try_of_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {try_end,{y,0}}.
    {jump,{f,58}}.
  {label,57}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,59},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1}]}}.
  {label,58}.
    {test,is_eq_exact,
        {f,60},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[ok]}},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                 none}},
         {literal,{error,{try_clause,{some,other_garbage}}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,59}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,60}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",197}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",195}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",193}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",191}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",189}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",187}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",185}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",183}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",179}]}.
    {badmatch,{x,0}}.


{function, try_of_1, 1, 71}.
  {label,70}.
    {line,[{location,"trycatch_SUITE.erl",203}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_of_1},1}.
  {label,71}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[illegal]},
         none,none,
         [{{2,{t_atom,[abs]}},
           {t_tuple,2,true,#{1 => {t_atom,[abs]},2 => {t_atom,[x]}}}},
          {{2,{t_atom,[add]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[add]},
              2 =>
               {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_integer,{0,0}}}}}}},
          {{2,{t_atom,['div']}},
           {t_tuple,2,true,
            #{1 => {t_atom,['div']},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_integer,{1,1}},2 => {t_integer,{0,0}}}}}}},
          {{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_cons,{t_atom,[arg,bad]},nil}}}},
          {{2,{t_atom,[exit]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[exit]},
              2 =>
               {t_tuple,3,true,
                #{1 => {t_atom,[ex]},
                  2 => {t_atom,[it]},
                  3 => {t_cons,{t_atom,[reason]},nil}}}}}},
          {{2,{t_atom,[throw]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[throw]},
              2 =>
               {t_cons,
                {t_union,
                 {t_atom,[term]},
                 none,none,
                 [{{3,{t_atom,[in]}},
                   {t_tuple,3,true,
                    #{1 => {t_atom,[in]},
                      2 => {t_atom,[a]},
                      3 => {t_tuple,1,true,#{1 => {t_atom,[tuple]}}}}}}],
                 none},
                nil}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_union,none,none,none,
                [{{2,{t_atom,[bad]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[bad]},
                     2 => {t_cons,{t_atom,[content,other]},nil}}}},
                 {{2,{t_atom,[good]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[good]},
                     2 =>
                      {t_tuple,2,true,
                       #{1 => {t_atom,[some]},2 => {t_atom,[content]}}}}}},
                 {{2,{t_atom,[some]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[some]},2 => {t_atom,[other_garbage]}}}}],
                none}}}}],
         none}}]}}.
    {allocate,1,1}.
    {'try',{y,0},{f,74}}.
    {line,[{location,"trycatch_SUITE.erl",204}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,0}}.
    {test,is_tuple,{f,75},[{x,0}]}.
    {test,test_arity,{f,75},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {select_val,{x,1},{f,75},{list,[{atom,bad},{f,73},{atom,good},{f,72}]}}.
  {label,72}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,2}]}}.
    {deallocate,1}.
    return.
  {label,73}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,2}]}}.
    {deallocate,1}.
    return.
  {label,74}.
    {try_case,{y,0}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,caught},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,75}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",204}]}.
    {try_case_end,{x,0}}.


{function, try_after, 1, 77}.
  {label,76}.
    {line,[{location,"trycatch_SUITE.erl",212}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after},1}.
  {label,77}.
    {test,is_list,{f,76},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,96},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",213}]}.
    {call,1,{f,79}}. % try_after_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,106},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",214}]}.
    {call,1,{f,79}}. % try_after_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,120},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",215}]}.
    {call,1,{f,79}}. % try_after_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,130},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",216}]}.
    {call,1,{f,79}}. % try_after_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,140},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",217}]}.
    {call,1,{f,79}}. % try_after_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,150},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",218}]}.
    {call,1,{f,79}}. % try_after_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,160},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",219}]}.
    {call,1,{f,79}}. % try_after_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,176},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",220}]}.
    {call,1,{f,79}}. % try_after_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,194},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {call_last,1,{f,79},0}. % try_after_1/1


{function, try_after_1, 1, 79}.
  {label,78}.
    {line,[{location,"trycatch_SUITE.erl",224}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after_1},1}.
  {label,79}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_fun,2,any,
         {t_tuple,2,true,
          #{1 =>
             {t_union,none,none,none,
              [{{3,{t_atom,[error]}},
                {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
               {{3,{t_atom,[exit]}},{t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
               {{3,{t_atom,[ok]}},{t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
               {{3,{t_atom,[throw]}},
                {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
              none}}}}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,3}]}}.
    {move,{x,0},{y,2}}.
    {move,{atom,finalized},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,{value,{ok,[some,value]}}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",226}]}.
    {call_fun2,
        {atom,safe},
        2,
        {tr,{x,2},
            {t_fun,2,any,
                {t_tuple,2,true,
                    #{1 =>
                          {t_union,none,none,none,
                              [{{3,{t_atom,[error]}},
                                {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                               {{3,{t_atom,[exit]}},
                                {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                               {{3,{t_atom,[ok]}},
                                {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                               {{3,{t_atom,[throw]}},
                                {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                              none}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,94},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,none,none,none,
                           [{{3,{t_atom,[error]}},
                             {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                            {{3,{t_atom,[exit]}},
                             {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                            {{3,{t_atom,[ok]}},
                             {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                            {{3,{t_atom,[throw]}},
                             {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                           none}}}},
         {literal,{{ok,[some,value],undefined},finalized}}]}.
    {move,{atom,finalized},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{literal,{'div',{1,0}}},{x,0}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",228}]}.
    {call_fun2,
        {atom,safe},
        2,
        {tr,{x,2},
            {t_fun,2,any,
                {t_tuple,2,true,
                    #{1 =>
                          {t_union,none,none,none,
                              [{{3,{t_atom,[error]}},
                                {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                               {{3,{t_atom,[exit]}},
                                {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                               {{3,{t_atom,[ok]}},
                                {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                               {{3,{t_atom,[throw]}},
                                {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                              none}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,93},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,none,none,none,
                           [{{3,{t_atom,[error]}},
                             {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                            {{3,{t_atom,[exit]}},
                             {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                            {{3,{t_atom,[ok]}},
                             {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                            {{3,{t_atom,[throw]}},
                             {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                           none}}}},
         {literal,{{error,badarith,undefined},finalized}}]}.
    {move,{atom,finalized},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{literal,{add,{1,a}}},{x,0}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",230}]}.
    {call_fun2,
        {atom,safe},
        2,
        {tr,{x,2},
            {t_fun,2,any,
                {t_tuple,2,true,
                    #{1 =>
                          {t_union,none,none,none,
                              [{{3,{t_atom,[error]}},
                                {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                               {{3,{t_atom,[exit]}},
                                {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                               {{3,{t_atom,[ok]}},
                                {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                               {{3,{t_atom,[throw]}},
                                {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                              none}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,92},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,none,none,none,
                           [{{3,{t_atom,[error]}},
                             {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                            {{3,{t_atom,[exit]}},
                             {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                            {{3,{t_atom,[ok]}},
                             {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                            {{3,{t_atom,[throw]}},
                             {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                           none}}}},
         {literal,{{error,badarith,undefined},finalized}}]}.
    {move,{atom,finalized},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{literal,{abs,a}},{x,0}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",232}]}.
    {call_fun2,
        {atom,safe},
        2,
        {tr,{x,2},
            {t_fun,2,any,
                {t_tuple,2,true,
                    #{1 =>
                          {t_union,none,none,none,
                              [{{3,{t_atom,[error]}},
                                {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                               {{3,{t_atom,[exit]}},
                                {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                               {{3,{t_atom,[ok]}},
                                {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                               {{3,{t_atom,[throw]}},
                                {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                              none}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,91},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,none,none,none,
                           [{{3,{t_atom,[error]}},
                             {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                            {{3,{t_atom,[exit]}},
                             {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                            {{3,{t_atom,[ok]}},
                             {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                            {{3,{t_atom,[throw]}},
                             {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                           none}}}},
         {literal,{{error,badarg,undefined},finalized}}]}.
    {move,{atom,finalized},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{literal,{error,[the,{reason}]}},{x,0}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",234}]}.
    {call_fun2,
        {atom,safe},
        2,
        {tr,{x,2},
            {t_fun,2,any,
                {t_tuple,2,true,
                    #{1 =>
                          {t_union,none,none,none,
                              [{{3,{t_atom,[error]}},
                                {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                               {{3,{t_atom,[exit]}},
                                {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                               {{3,{t_atom,[ok]}},
                                {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                               {{3,{t_atom,[throw]}},
                                {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                              none}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,90},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,none,none,none,
                           [{{3,{t_atom,[error]}},
                             {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                            {{3,{t_atom,[exit]}},
                             {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                            {{3,{t_atom,[ok]}},
                             {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                            {{3,{t_atom,[throw]}},
                             {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                           none}}}},
         {literal,{{error,[the,{reason}],undefined},finalized}}]}.
    {move,{atom,finalized},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{literal,{throw,{thrown,[reason]}}},{x,0}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",236}]}.
    {call_fun2,
        {atom,safe},
        2,
        {tr,{x,2},
            {t_fun,2,any,
                {t_tuple,2,true,
                    #{1 =>
                          {t_union,none,none,none,
                              [{{3,{t_atom,[error]}},
                                {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                               {{3,{t_atom,[exit]}},
                                {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                               {{3,{t_atom,[ok]}},
                                {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                               {{3,{t_atom,[throw]}},
                                {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                              none}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,89},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,none,none,none,
                           [{{3,{t_atom,[error]}},
                             {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                            {{3,{t_atom,[exit]}},
                             {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                            {{3,{t_atom,[ok]}},
                             {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                            {{3,{t_atom,[throw]}},
                             {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                           none}}}},
         {literal,{{throw,{thrown,[reason]},undefined},finalized}}]}.
    {move,{atom,finalized},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{literal,{exit,{exited,{reason}}}},{x,0}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",238}]}.
    {call_fun2,
        {atom,safe},
        2,
        {tr,{x,2},
            {t_fun,2,any,
                {t_tuple,2,true,
                    #{1 =>
                          {t_union,none,none,none,
                              [{{3,{t_atom,[error]}},
                                {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                               {{3,{t_atom,[exit]}},
                                {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                               {{3,{t_atom,[ok]}},
                                {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                               {{3,{t_atom,[throw]}},
                                {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                              none}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,88},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,none,none,none,
                           [{{3,{t_atom,[error]}},
                             {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                            {{3,{t_atom,[exit]}},
                             {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                            {{3,{t_atom,[ok]}},
                             {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                            {{3,{t_atom,[throw]}},
                             {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                           none}}}},
         {literal,{{exit,{exited,{reason}},undefined},finalized}}]}.
    {move,{atom,finalized},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",240}]}.
    {call_fun2,
        {atom,safe},
        2,
        {tr,{x,2},
            {t_fun,2,any,
                {t_tuple,2,true,
                    #{1 =>
                          {t_union,none,none,none,
                              [{{3,{t_atom,[error]}},
                                {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                               {{3,{t_atom,[exit]}},
                                {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                               {{3,{t_atom,[ok]}},
                                {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                               {{3,{t_atom,[throw]}},
                                {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                              none}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,87},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,none,none,none,
                           [{{3,{t_atom,[error]}},
                             {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                            {{3,{t_atom,[exit]}},
                             {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                            {{3,{t_atom,[ok]}},
                             {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                            {{3,{t_atom,[throw]}},
                             {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                           none}}}},
         {literal,{{error,function_clause,undefined},finalized}}]}.
    {'try',{y,3},{f,80}}.
    {move,{atom,finalized},{x,1}}.
    {move,{y,2},{x,2}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{literal,{add,{1,1}}},{x,0}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",243}]}.
    {call_fun2,
        {atom,safe},
        2,
        {tr,{x,2},
            {t_fun,2,any,
                {t_tuple,2,true,
                    #{1 =>
                          {t_union,none,none,none,
                              [{{3,{t_atom,[error]}},
                                {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                               {{3,{t_atom,[exit]}},
                                {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                               {{3,{t_atom,[ok]}},
                                {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                               {{3,{t_atom,[throw]}},
                                {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                              none}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{3,{t_atom,[error]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[error]}}}},
                                {{3,{t_atom,[exit]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[exit]}}}},
                                {{3,{t_atom,[ok]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[ok]}}}},
                                {{3,{t_atom,[throw]}},
                                 {t_tuple,3,true,#{1 => {t_atom,[throw]}}}}],
                               none}}}}]}}.
    {try_end,{y,3}}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",241}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {try_case,{y,3}}.
    {test,is_eq_exact,
          {f,84},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,84},[{x,1},{literal,{try_clause,2}}]}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",247}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,86},[{x,0},{atom,finalized}]}.
    {'try',{y,3},{f,82}}.
    {'try',{y,2},{f,81}}.
    {move,{literal,{exit,[reaso,{n}]}},{x,0}}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",251}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{y,1}}.
    {try_end,{y,2}}.
    {move,{atom,finalized},{x,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",253}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,3}}.
    {test,is_eq_exact,{f,85},[{y,1},{atom,ok}]}.
    {jump,{f,83}}.
  {label,81}.
    {try_case,{y,2}}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{atom,finalized},{x,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[5]},{location,"trycatch_SUITE.erl",253}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,0},{y,1}],{x,0}}.
  {label,82}.
    {try_case,{y,3}}.
    {test,is_eq_exact,
          {f,84},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,exit}]}.
    {test,is_eq_exact,{f,84},[{x,1},{literal,[reaso,{n}]}]}.
  {label,83}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,84}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,85}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",248}]}.
    {badmatch,{y,1}}.
  {label,86}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",247}]}.
    {badmatch,{x,0}}.
  {label,87}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",239}]}.
    {badmatch,{x,0}}.
  {label,88}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",237}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",235}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",233}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",231}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",229}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",227}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,"\t"},{location,"trycatch_SUITE.erl",225}]}.
    {badmatch,{x,0}}.


{function, try_after_basic, 2, 96}.
  {label,95}.
    {line,[{location,"trycatch_SUITE.erl",275}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after_basic},2}.
  {label,96}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",276}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,3},{f,103}}.
    {'try',{y,2},{f,97}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,2}}.
    {test,is_tagged_tuple,{f,104},[{x,0},2,{atom,ok}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,get,{f,0},[{atom,try_after}],{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0},{x,1}]}}.
    {move,{x,0},{y,2}}.
    {jump,{f,102}}.
  {label,97}.
    {try_case,{y,2}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,100},
                {list,[{atom,exit},{f,99},{atom,throw},{f,98}]}}.
  {label,98}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1},{x,0}]}}.
    {jump,{f,101}}.
  {label,99}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1},{x,0}]}}.
    {jump,{f,101}}.
  {label,100}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1},{x,0}]}}.
  {label,101}.
    {move,{x,0},{y,2}}.
  {label,102}.
    {try_end,{y,3}}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{y,3}}.
    {trim,3,1}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[2,4]},{location,"trycatch_SUITE.erl",276}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,try_after},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,103}.
    {try_case,{y,3}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{y,3}}.
    {trim,2,2}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[3,7]},{location,"trycatch_SUITE.erl",276}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,1},{y,0}],{x,0}}.
  {label,104}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",276}]}.
    {try_case_end,{x,0}}.


{function, try_after_catch, 2, 106}.
  {label,105}.
    {line,[{location,"trycatch_SUITE.erl",278}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after_catch},2}.
  {label,106}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",279}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,3},{f,115}}.
    {'try',{y,2},{f,107}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,2}}.
    {test,is_tagged_tuple,{f,118},[{x,0},2,{atom,ok}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,get,{f,0},[{atom,try_after}],{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0},{x,1}]}}.
    {move,{x,0},{y,2}}.
    {jump,{f,112}}.
  {label,107}.
    {try_case,{y,2}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,110},
                {list,[{atom,exit},{f,109},{atom,throw},{f,108}]}}.
  {label,108}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1},{x,0}]}}.
    {jump,{f,111}}.
  {label,109}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1},{x,0}]}}.
    {jump,{f,111}}.
  {label,110}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1},{x,0}]}}.
  {label,111}.
    {move,{x,0},{y,2}}.
  {label,112}.
    {try_end,{y,3}}.
    {'try',{y,3},{f,113}}.
    {move,{y,0},{x,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,"\b\n"},{location,"trycatch_SUITE.erl",279}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,3}}.
    {jump,{f,114}}.
  {label,113}.
    {try_case,{y,3}}.
  {label,114}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{y,3}}.
    {trim,3,1}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[4,5]},{location,"trycatch_SUITE.erl",279}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,try_after},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,115}.
    {try_case,{y,3}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {'try',{y,3},{f,116}}.
    {move,{y,0},{x,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,"\t\r"},{location,"trycatch_SUITE.erl",279}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,3}}.
    {jump,{f,117}}.
  {label,116}.
    {try_case,{y,3}}.
  {label,117}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{y,3}}.
    {trim,2,2}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[0,1]},{location,"trycatch_SUITE.erl",279}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,1},{y,0}],{x,0}}.
  {label,118}.
    {line,[{scope,"\n"},{location,"trycatch_SUITE.erl",279}]}.
    {try_case_end,{x,0}}.


{function, try_after_complex, 2, 120}.
  {label,119}.
    {line,[{location,"trycatch_SUITE.erl",281}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after_complex},2}.
  {label,120}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",283}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,3},{f,127}}.
    {'try',{y,2},{f,121}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,2}}.
    {test,is_tagged_tuple,{f,128},[{x,0},2,{atom,ok}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,get,{f,0},[{atom,try_after}],{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0},{x,1}]}}.
    {move,{x,0},{y,2}}.
    {jump,{f,126}}.
  {label,121}.
    {try_case,{y,2}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,124},
                {list,[{atom,exit},{f,123},{atom,throw},{f,122}]}}.
  {label,122}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1},{x,0}]}}.
    {jump,{f,125}}.
  {label,123}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1},{x,0}]}}.
    {jump,{f,125}}.
  {label,124}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1},{x,0}]}}.
  {label,125}.
    {move,{x,0},{y,2}}.
  {label,126}.
    {try_end,{y,3}}.
    {move,{y,0},{x,0}}.
    {move,{y,2},{y,3}}.
    {trim,3,1}.
    {line,[{scope,[2,4]},{location,"trycatch_SUITE.erl",283}]}.
    {call,1,{f,779}}. % '-try_after_complex/2-after$^0/0-0-'/1
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[2,4]},{location,"trycatch_SUITE.erl",295}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,127}.
    {try_case,{y,3}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,3}}.
    {trim,2,2}.
    {line,[{scope,[3,7]},{location,"trycatch_SUITE.erl",283}]}.
    {call,1,{f,779}}. % '-try_after_complex/2-after$^0/0-0-'/1
    {bif,raise,{f,0},[{y,1},{y,0}],{x,0}}.
  {label,128}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",283}]}.
    {try_case_end,{x,0}}.


{function, try_after_fun, 2, 130}.
  {label,129}.
    {line,[{location,"trycatch_SUITE.erl",297}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after_fun},2}.
  {label,130}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",298}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,3},{f,137}}.
    {'try',{y,2},{f,131}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,2}}.
    {test,is_tagged_tuple,{f,138},[{x,0},2,{atom,ok}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,get,{f,0},[{atom,try_after}],{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0},{x,1}]}}.
    {move,{x,0},{y,2}}.
    {jump,{f,136}}.
  {label,131}.
    {try_case,{y,2}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,134},
                {list,[{atom,exit},{f,133},{atom,throw},{f,132}]}}.
  {label,132}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1},{x,0}]}}.
    {jump,{f,135}}.
  {label,133}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1},{x,0}]}}.
    {jump,{f,135}}.
  {label,134}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1},{x,0}]}}.
  {label,135}.
    {move,{x,0},{y,2}}.
  {label,136}.
    {try_end,{y,3}}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{y,3}}.
    {trim,3,1}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[2,4]},{location,"trycatch_SUITE.erl",298}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,try_after},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,137}.
    {try_case,{y,3}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{y,3}}.
    {trim,2,2}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[3,7]},{location,"trycatch_SUITE.erl",298}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,1},{y,0}],{x,0}}.
  {label,138}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",298}]}.
    {try_case_end,{x,0}}.


{function, try_after_letrec, 2, 140}.
  {label,139}.
    {line,[{location,"trycatch_SUITE.erl",300}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after_letrec},2}.
  {label,140}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0},{y,3},{y,4}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,ok},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",301}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{y,0}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",302}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,4},{f,147}}.
    {'try',{y,3},{f,141}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,3}}.
    {test,is_tagged_tuple,{f,148},[{x,0},2,{atom,ok}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,get,{f,0},[{atom,try_after}],{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
    {jump,{f,146}}.
  {label,141}.
    {try_case,{y,3}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,144},
                {list,[{atom,exit},{f,143},{atom,throw},{f,142}]}}.
  {label,142}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1},{x,0}]}}.
    {jump,{f,145}}.
  {label,143}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1},{x,0}]}}.
    {jump,{f,145}}.
  {label,144}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1},{x,0}]}}.
  {label,145}.
    {move,{x,0},{y,3}}.
  {label,146}.
    {try_end,{y,4}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,4}}.
    {trim,3,2}.
    {line,[{scope,[2,4]},{location,"trycatch_SUITE.erl",302}]}.
    {call,1,{f,776}}. % '-try_after_letrec/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{atom,try_after},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,try_after},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,147}.
    {try_case,{y,4}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,4}}.
    {trim,2,3}.
    {line,[{scope,[3,7]},{location,"trycatch_SUITE.erl",302}]}.
    {call,1,{f,773}}. % '-try_after_letrec/2-lc$^0/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,1,2}.
    {move,{atom,try_after},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,1},{y,0}],{x,0}}.
  {label,148}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",302}]}.
    {try_case_end,{x,0}}.


{function, try_after_protect, 2, 150}.
  {label,149}.
    {line,[{location,"trycatch_SUITE.erl",304}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after_protect},2}.
  {label,150}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",305}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,3},{f,157}}.
    {'try',{y,2},{f,151}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,2}}.
    {test,is_tagged_tuple,{f,158},[{x,0},2,{atom,ok}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,get,{f,0},[{atom,try_after}],{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0},{x,1}]}}.
    {move,{x,0},{y,2}}.
    {jump,{f,156}}.
  {label,151}.
    {try_case,{y,2}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,154},
                {list,[{atom,exit},{f,153},{atom,throw},{f,152}]}}.
  {label,152}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1},{x,0}]}}.
    {jump,{f,155}}.
  {label,153}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1},{x,0}]}}.
    {jump,{f,155}}.
  {label,154}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1},{x,0}]}}.
  {label,155}.
    {move,{x,0},{y,2}}.
  {label,156}.
    {try_end,{y,3}}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{y,3}}.
    {trim,3,1}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[2,4]},{location,"trycatch_SUITE.erl",308}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,try_after},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,157}.
    {try_case,{y,3}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{y,3}}.
    {trim,2,2}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[3,7]},{location,"trycatch_SUITE.erl",308}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,1},{y,0}],{x,0}}.
  {label,158}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",305}]}.
    {try_case_end,{x,0}}.


{function, try_after_receive, 2, 160}.
  {label,159}.
    {line,[{location,"trycatch_SUITE.erl",310}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after_receive},2}.
  {label,160}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0},{y,3}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {recv_marker_reserve,{y,4}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {bif,self,{f,0},[],{x,1}}.
    {recv_marker_bind,{y,4},{x,0}}.
    {move,{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {line,[{location,"trycatch_SUITE.erl",312}]}.
    send.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",313}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,4},{f,170}}.
    {'try',{y,3},{f,161}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,3}}.
    {test,is_tagged_tuple,{f,174},[{x,0},2,{atom,ok}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,get,{f,0},[{atom,try_after}],{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
    {jump,{f,166}}.
  {label,161}.
    {try_case,{y,3}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,164},
                {list,[{atom,exit},{f,163},{atom,throw},{f,162}]}}.
  {label,162}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1},{x,0}]}}.
    {jump,{f,165}}.
  {label,163}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1},{x,0}]}}.
    {jump,{f,165}}.
  {label,164}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1},{x,0}]}}.
  {label,165}.
    {move,{x,0},{y,3}}.
  {label,166}.
    {try_end,{y,4}}.
    {recv_marker_use,{y,0}}.
  {label,167}.
    {loop_rec,{f,169},{x,0}}.
    {test,is_eq_exact,{f,168},[{x,0},{tr,{y,0},reference}]}.
    {recv_marker_clear,{y,0}}.
    remove_message.
    {move,{y,1},{x,1}}.
    {move,{y,3},{y,4}}.
    {trim,4,1}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[1]},{location,"trycatch_SUITE.erl",315}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,try_after},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,168}.
    {loop_rec_end,{f,167}}.
  {label,169}.
    {wait,{f,167}}.
  {label,170}.
    {try_case,{y,4}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
  {label,171}.
    {loop_rec,{f,173},{x,0}}.
    {test,is_eq_exact,{f,172},[{x,0},{tr,{y,0},reference}]}.
    remove_message.
    {move,{y,1},{x,1}}.
    {move,{y,2},{y,4}}.
    {trim,3,2}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",315}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,1},{y,0}],{x,0}}.
  {label,172}.
    {loop_rec_end,{f,171}}.
  {label,173}.
    {wait,{f,171}}.
  {label,174}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",313}]}.
    {try_case_end,{x,0}}.


{function, try_after_receive_timeout, 2, 176}.
  {label,175}.
    {line,[{location,"trycatch_SUITE.erl",317}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after_receive_timeout},2}.
  {label,176}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0},{y,3}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {recv_marker_reserve,{y,4}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {bif,self,{f,0},[],{x,1}}.
    {recv_marker_bind,{y,4},{x,0}}.
    {move,{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {line,[{location,"trycatch_SUITE.erl",319}]}.
    send.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",320}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,4},{f,187}}.
    {'try',{y,3},{f,177}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,3}}.
    {test,is_tagged_tuple,{f,192},[{x,0},2,{atom,ok}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,get,{f,0},[{atom,try_after}],{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
    {jump,{f,182}}.
  {label,177}.
    {try_case,{y,3}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,180},
                {list,[{atom,exit},{f,179},{atom,throw},{f,178}]}}.
  {label,178}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1},{x,0}]}}.
    {jump,{f,181}}.
  {label,179}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1},{x,0}]}}.
    {jump,{f,181}}.
  {label,180}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1},{x,0}]}}.
  {label,181}.
    {move,{x,0},{y,3}}.
  {label,182}.
    {try_end,{y,4}}.
    {recv_marker_use,{y,0}}.
  {label,183}.
    {loop_rec,{f,185},{x,0}}.
    {test,is_eq_exact,{f,184},[{x,0},{tr,{y,0},reference}]}.
    {recv_marker_clear,{y,0}}.
    remove_message.
    {jump,{f,186}}.
  {label,184}.
    {loop_rec_end,{f,183}}.
  {label,185}.
    {wait_timeout,{f,183},{integer,1000}}.
    timeout.
    {recv_marker_clear,{y,0}}.
  {label,186}.
    {move,{y,1},{x,1}}.
    {move,{y,3},{y,4}}.
    {trim,4,1}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[1]},{location,"trycatch_SUITE.erl",323}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,try_after},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,187}.
    {try_case,{y,4}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
  {label,188}.
    {loop_rec,{f,190},{x,0}}.
    {test,is_eq_exact,{f,189},[{x,0},{tr,{y,0},reference}]}.
    remove_message.
    {jump,{f,191}}.
  {label,189}.
    {loop_rec_end,{f,188}}.
  {label,190}.
    {wait_timeout,{f,188},{integer,1000}}.
    timeout.
  {label,191}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{y,4}}.
    {trim,3,2}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",323}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,1},{y,0}],{x,0}}.
  {label,192}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",320}]}.
    {try_case_end,{x,0}}.


{function, try_after_try, 2, 194}.
  {label,193}.
    {line,[{location,"trycatch_SUITE.erl",325}]}.
    {func_info,{atom,trycatch_SUITE},{atom,try_after_try},2}.
  {label,194}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",326}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,3},{f,203}}.
    {'try',{y,2},{f,195}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,2}}.
    {test,is_tagged_tuple,{f,207},[{x,0},2,{atom,ok}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,get,{f,0},[{atom,try_after}],{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0},{x,1}]}}.
    {move,{x,0},{y,2}}.
    {jump,{f,200}}.
  {label,195}.
    {try_case,{y,2}}.
    {select_val,{tr,{x,0},{t_atom,[error,exit,throw]}},
                {f,198},
                {list,[{atom,exit},{f,197},{atom,throw},{f,196}]}}.
  {label,196}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,1},{x,0}]}}.
    {jump,{f,199}}.
  {label,197}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,exit},{x,1},{x,0}]}}.
    {jump,{f,199}}.
  {label,198}.
    {test_heap,4,2}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1},{x,0}]}}.
  {label,199}.
    {move,{x,0},{y,2}}.
  {label,200}.
    {try_end,{y,3}}.
    {'try',{y,3},{f,201}}.
    {move,{y,0},{x,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,"\b\n"},{location,"trycatch_SUITE.erl",327}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,3}}.
    {jump,{f,202}}.
  {label,201}.
    {try_case,{y,3}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
  {label,202}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{y,3}}.
    {trim,3,1}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[4,5]},{location,"trycatch_SUITE.erl",330}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,try_after},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,203}.
    {try_case,{y,3}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {'try',{y,3},{f,204}}.
    {move,{y,0},{x,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,"\t\r"},{location,"trycatch_SUITE.erl",327}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,3}}.
    {jump,{f,205}}.
  {label,204}.
    {try_case,{y,3}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
  {label,205}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{y,3}}.
    {trim,2,2}.
    {move,{atom,try_after},{x,0}}.
    {line,[{scope,[0,1]},{location,"trycatch_SUITE.erl",330}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,1},{y,0}],{x,0}}.
  {label,206}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,207}.
    {line,[{scope,"\n"},{location,"trycatch_SUITE.erl",326}]}.
    {try_case_end,{x,0}}.


{function, catch_oops, 1, 209}.
  {label,208}.
    {line,[{location,"trycatch_SUITE.erl",332}]}.
    {func_info,{atom,trycatch_SUITE},{atom,catch_oops},1}.
  {label,209}.
    {test,is_list,{f,208},[{x,0}]}.
    {allocate_heap,1,8,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{y,0},{list,[{atom,v},{literal,[a,l|u]},{literal,{e}},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {line,[{location,"trycatch_SUITE.erl",334}]}.
    {call,1,{f,217}}. % catch_oops_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[error,exit,throw,value]}}}}]}}.
    {test,is_tagged_tuple,
          {f,215},
          [{tr,{x,0},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           2,
           {atom,value}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,215},
          [{x,1},
           {tr,{y,0},
               {t_tuple,4,true,
                        #{1 => {t_atom,[v]},
                          2 => {t_cons,{t_atom,[a,l]},{t_atom,[u]}},
                          3 => {t_tuple,1,true,#{1 => {t_atom,[e]}}},
                          4 => pid}}}]}.
    {move,{literal,{'div',{1,1}}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",335}]}.
    {call,1,{f,217}}. % catch_oops_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[error,exit,throw,value]}}}}]}}.
    {test,is_eq_exact,
          {f,214},
          [{tr,{x,0},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           {literal,{value,1}}]}.
    {move,{literal,{'div',{1,0}}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",336}]}.
    {call,1,{f,217}}. % catch_oops_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[error,exit,throw,value]}}}}]}}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,0},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           {literal,{error,badarith}}]}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",337}]}.
    {call,1,{f,217}}. % catch_oops_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[error,exit,throw,value]}}}}]}}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,0},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           {literal,{error,function_clause}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,throw},{y,0}]}}.
    {line,[{location,"trycatch_SUITE.erl",338}]}.
    {call,1,{f,217}}. % catch_oops_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[error,exit,throw,value]}}}}]}}.
    {test,is_tagged_tuple,
          {f,211},
          [{tr,{x,0},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           2,
           {atom,throw}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,211},
          [{x,1},
           {tr,{y,0},
               {t_tuple,4,true,
                        #{1 => {t_atom,[v]},
                          2 => {t_cons,{t_atom,[a,l]},{t_atom,[u]}},
                          3 => {t_tuple,1,true,#{1 => {t_atom,[e]}}},
                          4 => pid}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,exit},{y,0}]}}.
    {line,[{location,"trycatch_SUITE.erl",339}]}.
    {call,1,{f,217}}. % catch_oops_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[error,exit,throw,value]}}}}]}}.
    {test,is_tagged_tuple,
          {f,210},
          [{tr,{x,0},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           2,
           {atom,exit}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,210},
          [{x,1},
           {tr,{y,0},
               {t_tuple,4,true,
                        #{1 => {t_atom,[v]},
                          2 => {t_cons,{t_atom,[a,l]},{t_atom,[u]}},
                          3 => {t_tuple,1,true,#{1 => {t_atom,[e]}}},
                          4 => pid}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,210}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{location,"trycatch_SUITE.erl",338}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{location,"trycatch_SUITE.erl",337}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{location,"trycatch_SUITE.erl",336}]}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{location,"trycatch_SUITE.erl",335}]}.
    {badmatch,{x,0}}.
  {label,215}.
    {line,[{location,"trycatch_SUITE.erl",334}]}.
    {badmatch,{x,0}}.


{function, catch_oops_1, 1, 217}.
  {label,216}.
    {line,[{location,"trycatch_SUITE.erl",342}]}.
    {func_info,{atom,trycatch_SUITE},{atom,catch_oops_1},1}.
  {label,217}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[function_clause]},
         none,none,
         [{{2,{t_atom,['div']}},
           {t_tuple,2,true,
            #{1 => {t_atom,['div']},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_integer,{1,1}},2 => {t_integer,{0,1}}}}}}},
          {{2,{t_atom,[exit]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[exit]},
              2 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[v]},
                  2 => {t_cons,{t_atom,[a,l]},{t_atom,[u]}},
                  3 => {t_tuple,1,true,#{1 => {t_atom,[e]}}},
                  4 => pid}}}}},
          {{2,{t_atom,[throw]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[throw]},
              2 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[v]},
                  2 => {t_cons,{t_atom,[a,l]},{t_atom,[u]}},
                  3 => {t_tuple,1,true,#{1 => {t_atom,[e]}}},
                  4 => pid}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,4,true,
                #{1 => {t_atom,[v]},
                  2 => {t_cons,{t_atom,[a,l]},{t_atom,[u]}},
                  3 => {t_tuple,1,true,#{1 => {t_atom,[e]}}},
                  4 => pid}}}}}],
         none}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,2},{y,3}]}}.
    {move,{x,0},{y,1}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,0}]}}.
    {move,{x,0},{y,0}}.
    {'try',{y,3},{f,221}}.
    {'try',{y,2},{f,218}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",344}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,2}}.
    {jump,{f,219}}.
  {label,218}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,220},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,220},[{x,1},{tr,{y,0},reference}]}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",347}]}.
    {call,1,{f,394}}. % foo/1
  {label,219}.
    {try_end,{y,3}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {deallocate,4}.
    return.
  {label,220}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,221}.
    {try_case,{y,3}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,4}.
    return.


{function, after_oops, 1, 223}.
  {label,222}.
    {line,[{location,"trycatch_SUITE.erl",356}]}.
    {func_info,{atom,trycatch_SUITE},{atom,after_oops},1}.
  {label,223}.
    {test,is_list,{f,222},[{x,0}]}.
    {allocate,1,0}.
    {bif,self,{f,0},[],{y,0}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,6,1}.
    {put_tuple2,{y,0},{list,[{y,0},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{y,0}]}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",359}]}.
    {call,2,{f,233}}. % after_oops_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,2,true,
                               #{1 =>
                                     {t_atom,[error,exit,throw,value]}}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,231},
          [{tr,{x,1},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           2,
           {atom,value}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,231},
          [{x,1},{tr,{y,0},{t_tuple,2,true,#{1 => pid,2 => reference}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,231},
          [{x,1},{tr,{y,0},{t_tuple,2,true,#{1 => pid,2 => reference}}}]}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,exit},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{y,0}]}}.
    {line,[{location,"trycatch_SUITE.erl",360}]}.
    {call,2,{f,233}}. % after_oops_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,2,true,
                               #{1 =>
                                     {t_atom,[error,exit,throw,value]}}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,230},
          [{tr,{x,1},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           2,
           {atom,exit}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,230},
          [{x,1},{tr,{y,0},{t_tuple,2,true,#{1 => pid,2 => reference}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,230},
          [{x,1},{tr,{y,0},{t_tuple,2,true,#{1 => pid,2 => reference}}}]}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{y,0}]}}.
    {line,[{location,"trycatch_SUITE.erl",361}]}.
    {call,2,{f,233}}. % after_oops_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,2,true,
                               #{1 =>
                                     {t_atom,[error,exit,throw,value]}}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,229},
          [{tr,{x,1},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           2,
           {atom,error}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,229},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,229},
          [{x,1},{tr,{y,0},{t_tuple,2,true,#{1 => pid,2 => reference}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,exit},{y,0}]}}.
    {move,{atom,function_clause},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",363}]}.
    {call,2,{f,233}}. % after_oops_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,2,true,
                               #{1 =>
                                     {t_atom,[error,exit,throw,value]}}}}}}]}}.
    {test,is_eq_exact,
        {f,228},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error,exit,throw,value]}}}}}},
         {literal,{{error,function_clause},undefined}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,1},{list,[{atom,value},{y,0}]}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",365}]}.
    {call,2,{f,238}}. % after_oops_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,2,true,
                               #{1 =>
                                     {t_atom,[error,exit,throw,value]}}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,227},
          [{tr,{x,1},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           2,
           {atom,value}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,227},
          [{x,1},{tr,{y,0},{t_tuple,2,true,#{1 => pid,2 => reference}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,227},
          [{x,1},{tr,{y,0},{t_tuple,2,true,#{1 => pid,2 => reference}}}]}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,exit},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{y,0}]}}.
    {line,[{location,"trycatch_SUITE.erl",366}]}.
    {call,2,{f,238}}. % after_oops_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,2,true,
                               #{1 =>
                                     {t_atom,[error,exit,throw,value]}}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,226},
          [{tr,{x,1},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           2,
           {atom,exit}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,226},
          [{x,1},{tr,{y,0},{t_tuple,2,true,#{1 => pid,2 => reference}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,226},
          [{x,1},{tr,{y,0},{t_tuple,2,true,#{1 => pid,2 => reference}}}]}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{y,0}]}}.
    {line,[{location,"trycatch_SUITE.erl",367}]}.
    {call,2,{f,238}}. % after_oops_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,2,true,
                               #{1 =>
                                     {t_atom,[error,exit,throw,value]}}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,225},
          [{tr,{x,1},
               {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw,value]}}}},
           2,
           {atom,error}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,225},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,225},
          [{x,1},{tr,{y,0},{t_tuple,2,true,#{1 => pid,2 => reference}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,exit},{y,0}]}}.
    {move,{atom,function_clause},{x,1}}.
    {trim,1,0}.
    {line,[{location,"trycatch_SUITE.erl",369}]}.
    {call,2,{f,238}}. % after_oops_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,2,true,
                               #{1 =>
                                     {t_atom,[error,exit,throw,value]}}}}}}]}}.
    {test,is_eq_exact,
        {f,224},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error,exit,throw,value]}}}}}},
         {literal,{{error,function_clause},undefined}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,224}.
    {line,[{location,"trycatch_SUITE.erl",368}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{location,"trycatch_SUITE.erl",367}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{location,"trycatch_SUITE.erl",366}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{location,"trycatch_SUITE.erl",365}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{location,"trycatch_SUITE.erl",362}]}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{location,"trycatch_SUITE.erl",361}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{location,"trycatch_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{location,"trycatch_SUITE.erl",359}]}.
    {badmatch,{x,0}}.


{function, after_oops_1, 2, 233}.
  {label,232}.
    {line,[{location,"trycatch_SUITE.erl",373}]}.
    {func_info,{atom,trycatch_SUITE},{atom,after_oops_1},2}.
  {label,233}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[exit]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[exit]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => pid,2 => reference}}}}},
                      {{2,{t_atom,[value]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => pid,2 => reference}}}}}],
                     none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[function_clause]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => pid,2 => reference}}}}},
                      {{2,{t_atom,[value]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => pid,2 => reference}}}}}],
                     none}}]}}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0},{y,3},{y,4}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,after_oops},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",374}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,4},{f,235}}.
    {'try',{y,3},{f,234}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"trycatch_SUITE.erl",376}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{y,2}}.
    {try_end,{y,3}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"trycatch_SUITE.erl",378}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,after_oops},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,4}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,2}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,236}}.
  {label,234}.
    {try_case,{y,3}}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[5]},{location,"trycatch_SUITE.erl",378}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,after_oops},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,0},{y,2}],{x,0}}.
  {label,235}.
    {try_case,{y,4}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,4}}.
  {label,236}.
    {move,{atom,after_oops},{x,0}}.
    {line,[{scope,[0,2]},{location,"trycatch_SUITE.erl",384}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,4},{x,0}]}}.
    {deallocate,5}.
    return.


{function, after_oops_2, 2, 238}.
  {label,237}.
    {line,[{location,"trycatch_SUITE.erl",386}]}.
    {func_info,{atom,trycatch_SUITE},{atom,after_oops_2},2}.
  {label,238}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[exit]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[exit]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => pid,2 => reference}}}}},
                      {{2,{t_atom,[value]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => pid,2 => reference}}}}}],
                     none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[function_clause]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => pid,2 => reference}}}}},
                      {{2,{t_atom,[value]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => pid,2 => reference}}}}}],
                     none}}]}}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,2},{y,3},{y,4}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,after_oops},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",389}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,4},{f,241}}.
    {'try',{y,3},{f,240}}.
    {'try',{y,2},{f,239}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"trycatch_SUITE.erl",393}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{y,1}}.
    {try_end,{y,2}}.
    {try_end,{y,3}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"trycatch_SUITE.erl",397}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,after_oops},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,4}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,1}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,242}}.
  {label,239}.
    {try_case,{y,2}}.
    raw_raise.
  {label,240}.
    {try_case,{y,3}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2,8]},{location,"trycatch_SUITE.erl",397}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,after_oops},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,1},{y,2}],{x,0}}.
  {label,241}.
    {try_case,{y,4}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,4}}.
  {label,242}.
    {move,{atom,after_oops},{x,0}}.
    {line,[{scope,[0,3]},{location,"trycatch_SUITE.erl",404}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,4},{x,0}]}}.
    {deallocate,5}.
    return.


{function, eclectic, 1, 244}.
  {label,243}.
    {line,[{location,"trycatch_SUITE.erl",406}]}.
    {func_info,{atom,trycatch_SUITE},{atom,eclectic},1}.
  {label,244}.
    {test,is_list,{f,243},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,13,1}.
    {put_tuple2,{y,0},{list,[{x,0},{float,3.1415926535},{literal,[[]|{}]}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,foo},{x,1}]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",409}]}.
    {call,3,{f,261}}. % eclectic_1/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_tuple,2,false,#{}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,259},
          [{tr,{x,1},{t_tuple,2,false,#{}}},3,{atom,value}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,259},[{x,2},2,{atom,value}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,
          {f,259},
          [{x,2},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
          {f,259},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,259},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,catch_foo},{x,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{y,0}]}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",411}]}.
    {call,3,{f,261}}. % eclectic_1/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_tuple,2,false,#{}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,258},
          [{tr,{x,1},{t_tuple,2,false,#{}}},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,258},[{x,1}]}.
    {test,test_arity,{f,258},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_nonempty_list,{f,258},[{x,2}]}.
    {get_hd,{x,2},{x,2}}.
    {test,is_tagged_tuple,{f,258},[{x,2},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,258},[{x,3},{atom,foo}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_eq_exact,{f,258},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,258},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,258},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,12,0}.
    {put_tuple2,{x,0},{list,[{atom,exit},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,foo},{x,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{y,0}]}}.
    {move,{atom,error},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",413}]}.
    {call,3,{f,261}}. % eclectic_1/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_tuple,2,false,#{}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,257},
          [{tr,{x,1},{t_tuple,2,false,#{}}},3,{atom,error}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,257},[{x,2},2,{atom,exit}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,257},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,
          {f,257},
          [{x,2},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,257},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,257},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,foo},{x,0}]}}.
    {move,{literal,{add,{0,a}}},{x,2}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",416}]}.
    {call,3,{f,261}}. % eclectic_1/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_tuple,2,false,#{}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,256},
          [{tr,{x,1},{t_tuple,2,false,#{}}},3,{atom,value}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,256},[{x,2},2,{atom,value}]}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {test,is_tagged_tuple,{f,256},[{x,3},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_tagged_tuple,{f,256},[{x,3},2,{atom,badarith}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_nonempty_list,{f,256},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_tagged_tuple,{f,256},[{x,4},4,{atom,erlang}]}.
    {get_tuple_element,{x,4},1,{x,5}}.
    {test,is_eq_exact,{f,256},[{x,5},{atom,'+'}]}.
    {get_tuple_element,{x,4},2,{x,4}}.
    {test,is_eq_exact,{f,256},[{x,4},{literal,[0,a]}]}.
    {test,is_nonempty_list,{f,256},[{x,3}]}.
    {get_hd,{x,3},{x,3}}.
    {test,is_tagged_tuple,{f,256},[{x,3},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,256},[{x,4},{atom,my_add}]}.
    {get_tuple_element,{x,3},2,{x,3}}.
    {test,is_eq_exact,{f,256},[{x,3},{integer,2}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,
          {f,256},
          [{x,2},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
          {f,256},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,exit},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,catch_foo},{x,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,throw},{y,0}]}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",418}]}.
    {call,3,{f,261}}. % eclectic_1/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_tuple,2,false,#{}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,255},
          [{tr,{x,1},{t_tuple,2,false,#{}}},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,255},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,255},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,2},{list,[{atom,exit},{y,0}]}}.
    {move,{atom,error},{x,1}}.
    {move,{literal,{foo,{error,{'div',{1,0}}}}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",421}]}.
    {call,3,{f,261}}. % eclectic_1/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_tuple,2,false,#{}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,254},
          [{tr,{x,1},{t_tuple,2,false,#{}}},3,{atom,error}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,254},[{x,2},{literal,{'div',{1,0}}}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,254},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,254},[{x,1},2,{atom,badarith}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,254},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,254},[{x,2},4,{atom,erlang}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,254},[{x,3},{atom,'div'}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_eq_exact,{f,254},[{x,2},{literal,[1,0]}]}.
    {test,is_nonempty_list,{f,254},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,254},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,254},[{x,2},{atom,my_div}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,254},[{x,1},{integer,2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,254},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,254},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,12,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,catch_foo},{x,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,exit},{y,0}]}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",424}]}.
    {call,3,{f,261}}. % eclectic_1/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_tuple,2,false,#{}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,test_arity,{f,253},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,253},[{x,2},2,{atom,error}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,253},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,253},[{x,1}]}.
    {test,test_arity,{f,253},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_nonempty_list,{f,253},[{x,3}]}.
    {get_hd,{x,3},{x,3}}.
    {test,is_tagged_tuple,{f,253},[{x,3},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,253},[{x,4},{atom,foo}]}.
    {get_tuple_element,{x,3},2,{x,3}}.
    {test,is_eq_exact,{f,253},[{x,3},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {test,is_tagged_tuple,{f,253},[{x,3},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,
          {f,253},
          [{x,2},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,253},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,3},1,{x,1}}.
    {test,is_eq_exact,
          {f,253},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",427}]}.
    {call,3,{f,277}}. % eclectic_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{2,{t_atom,[caught]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                                {{2,{t_atom,[value]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                               none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,252},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                        none}},
           2,
           {atom,value}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,252},[{x,1},3,{atom,value}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,252},[{x,2},2,{atom,value}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,
          {f,252},
          [{x,2},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
          {f,252},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,252},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,throw},{x,0}]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{atom,throw},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",429}]}.
    {call,3,{f,277}}. % eclectic_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{2,{t_atom,[caught]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                                {{2,{t_atom,[value]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                               none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,251},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                        none}},
           2,
           {atom,value}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,251},[{x,1},3,{atom,throw}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,251},[{x,2},2,{atom,value}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,
          {f,251},
          [{x,2},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
          {f,251},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,251},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,exit},{y,0}]}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",431}]}.
    {call,3,{f,277}}. % eclectic_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{2,{t_atom,[caught]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                                {{2,{t_atom,[value]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                               none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,250},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                        none}},
           2,
           {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,250},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,250},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,250},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,error},{y,0}]}}.
    {move,{atom,throw},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",433}]}.
    {call,3,{f,277}}. % eclectic_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{2,{t_atom,[caught]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                                {{2,{t_atom,[value]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                               none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,249},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                        none}},
           2,
           {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,249},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,249},[{x,1}]}.
    {test,test_arity,{f,249},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_nonempty_list,{f,249},[{x,2}]}.
    {get_hd,{x,2},{x,2}}.
    {test,is_tagged_tuple,{f,249},[{x,2},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,249},[{x,3},{atom,foo}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_eq_exact,{f,249},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,249},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,249},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,abs},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{y,0}]}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",435}]}.
    {call,3,{f,277}}. % eclectic_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{2,{t_atom,[caught]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                                {{2,{t_atom,[value]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                               none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,248},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                        none}},
           2,
           {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,248},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,248},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,248},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,248},[{x,1},4,{atom,erlang}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,248},[{x,2},{atom,abs}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,248},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,248},[{x,1}]}.
    {test,is_eq_exact,
          {f,248},
          [{x,2},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,248},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,2},{list,[{atom,value},{y,0}]}}.
    {move,{atom,exit},{x,1}}.
    {move,{literal,{exit,{add,{0,a}}}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",437}]}.
    {call,3,{f,277}}. % eclectic_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{2,{t_atom,[caught]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                                {{2,{t_atom,[value]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                               none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,247},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                        none}},
           2,
           {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,247},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,247},[{x,1},2,{atom,badarith}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,247},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,247},[{x,2},4,{atom,erlang}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,247},[{x,3},{atom,'+'}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_eq_exact,{f,247},[{x,2},{literal,[0,a]}]}.
    {test,is_nonempty_list,{f,247},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,247},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,247},[{x,2},{atom,my_add}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,247},[{x,1},{integer,2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,247},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,exit},{y,0}]}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",439}]}.
    {call,3,{f,277}}. % eclectic_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{2,{t_atom,[caught]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                                {{2,{t_atom,[value]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                               none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,246},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                        none}},
           2,
           {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,246},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,246},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,246},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,2},{list,[{atom,error},{y,0}]}}.
    {move,{atom,throw},{x,1}}.
    {move,{literal,{throw,{'div',{1,0}}}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",441}]}.
    {call,3,{f,277}}. % eclectic_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,none,none,none,
                               [{{2,{t_atom,[caught]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                                {{2,{t_atom,[value]}},
                                 {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                               none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
          {f,245},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value]}}}}],
                        none}},
           2,
           {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,245},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,245},[{x,1}]}.
    {test,test_arity,{f,245},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_nonempty_list,{f,245},[{x,2}]}.
    {get_hd,{x,2},{x,2}}.
    {test,is_tagged_tuple,{f,245},[{x,2},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,245},[{x,3},{atom,foo}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_eq_exact,{f,245},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,245},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,245},
          [{x,1},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => reference,
                          2 => {t_float,{3.1415926535,3.1415926535}},
                          3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,245}.
    {line,[{location,"trycatch_SUITE.erl",440}]}.
    {badmatch,{x,0}}.
  {label,246}.
    {line,[{location,"trycatch_SUITE.erl",438}]}.
    {badmatch,{x,0}}.
  {label,247}.
    {line,[{location,"trycatch_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,248}.
    {line,[{location,"trycatch_SUITE.erl",434}]}.
    {badmatch,{x,0}}.
  {label,249}.
    {line,[{location,"trycatch_SUITE.erl",432}]}.
    {badmatch,{x,0}}.
  {label,250}.
    {line,[{location,"trycatch_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,251}.
    {line,[{location,"trycatch_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,252}.
    {line,[{location,"trycatch_SUITE.erl",426}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{location,"trycatch_SUITE.erl",422}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{location,"trycatch_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{location,"trycatch_SUITE.erl",417}]}.
    {badmatch,{x,0}}.
  {label,256}.
    {line,[{location,"trycatch_SUITE.erl",414}]}.
    {badmatch,{x,0}}.
  {label,257}.
    {line,[{location,"trycatch_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {line,[{location,"trycatch_SUITE.erl",410}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {line,[{location,"trycatch_SUITE.erl",408}]}.
    {badmatch,{x,0}}.


{function, eclectic_1, 3, 261}.
  {label,260}.
    {line,[{location,"trycatch_SUITE.erl",444}]}.
    {func_info,{atom,trycatch_SUITE},{atom,eclectic_1},3}.
  {label,261}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[catch_foo]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[catch_foo]},
              2 =>
               {t_union,none,none,none,
                [{{2,{t_atom,[error]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[error]},
                     2 =>
                      {t_tuple,3,true,
                       #{1 => reference,
                         2 => {t_float,{3.1415926535,3.1415926535}},
                         3 => {t_cons,nil,{t_tuple,0,false,#{}}}}}}}},
                 {{2,{t_atom,[exit]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[exit]},
                     2 =>
                      {t_tuple,3,true,
                       #{1 => reference,
                         2 => {t_float,{3.1415926535,3.1415926535}},
                         3 => {t_cons,nil,{t_tuple,0,false,#{}}}}}}}},
                 {{2,{t_atom,[throw]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[throw]},
                     2 =>
                      {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 =>
                          {t_tuple,3,true,
                           #{1 => reference,
                             2 => {t_float,{3.1415926535,3.1415926535}},
                             3 => {t_cons,any,any}}}}}}}}],
                none}}}},
          {{2,{t_atom,[foo]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[foo]},
              2 =>
               {t_union,none,none,none,
                [{{2,{t_atom,[error]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[error]},
                     2 =>
                      {t_union,none,none,none,
                       [{{2,{t_atom,['div']}},
                         {t_tuple,2,true,
                          #{1 => {t_atom,['div']},
                            2 =>
                             {t_tuple,2,true,
                              #{1 => {t_integer,{1,1}},
                                2 => {t_integer,{0,0}}}}}}},
                        {{2,{t_atom,[exit]}},
                         {t_tuple,2,true,
                          #{1 => {t_atom,[exit]},
                            2 =>
                             {t_tuple,3,true,
                              #{1 => reference,
                                2 => {t_float,{3.1415926535,3.1415926535}},
                                3 => {t_cons,any,any}}}}}}],
                       none}}}},
                 {{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},
                     2 =>
                      {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                          {t_tuple,3,true,
                           #{1 => reference,
                             2 => {t_float,{3.1415926535,3.1415926535}},
                             3 => {t_cons,any,any}}}}}}}}],
                none}}}}],
         none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[error,undefined]}}]}}.
    {'%',
     {var_info,
      {x,2},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[add]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[add]},
              2 =>
               {t_tuple,2,true,#{1 => {t_integer,{0,0}},2 => {t_atom,[a]}}}}}},
          {{2,{t_atom,[exit]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[exit]},
              2 =>
               {t_tuple,3,true,
                #{1 => reference,
                  2 => {t_float,{3.1415926535,3.1415926535}},
                  3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}}},
          {{2,{t_atom,[throw]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[throw]},
              2 =>
               {t_tuple,3,true,
                #{1 => reference,
                  2 => {t_float,{3.1415926535,3.1415926535}},
                  3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,3,true,
                #{1 => reference,
                  2 => {t_float,{3.1415926535,3.1415926535}},
                  3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}}}],
         none}}]}}.
    {allocate,5,3}.
    {init_yregs,{list,[{y,0},{y,4}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{atom,eclectic},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",445}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,0}}.
    {'try',{y,4},{f,274}}.
    {get_tuple_element,{y,3},0,{x,0}}.
    {get_tuple_element,{y,3},1,{x,1}}.
    {'try',{y,3},{f,269}}.
    {test,is_eq_exact,{f,262},[{x,0},{atom,foo}]}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[16]},{location,"trycatch_SUITE.erl",450}]}.
    {call,1,{f,394}}. % foo/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {move,{x,0},{y,2}}.
    {jump,{f,264}}.
  {label,262}.
    {'catch',{y,2},{f,263}}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[16]},{location,"trycatch_SUITE.erl",449}]}.
    {call,1,{f,394}}. % foo/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
  {label,263}.
    {catch_end,{y,2}}.
    {move,{x,0},{y,2}}.
  {label,264}.
    {try_end,{y,3}}.
    {test,is_tuple,{f,267},[{y,2}]}.
    {test,test_arity,{f,267},[{y,2},2]}.
    {get_tuple_element,{y,2},0,{x,0}}.
    {test,is_eq_exact,{f,266},[{x,0},{tr,{y,0},reference}]}.
    {get_tuple_element,{y,2},1,{y,2}}.
    {'catch',{y,3},{f,265}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{y,2},{x,0}}.
    {line,[{scope,"\r"},{location,"trycatch_SUITE.erl",452}]}.
    {call,1,{f,394}}. % foo/1
  {label,265}.
    {catch_end,{y,3}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,2},{x,0}]}}.
    {move,{x,0},{y,2}}.
    {jump,{f,271}}.
  {label,266}.
    {test,is_ne_exact,{f,271},[{x,0},{atom,'EXIT'}]}.
  {label,267}.
    {'catch',{y,3},{f,268}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{y,2},{x,0}}.
    {line,[{scope,"\v\r"},{location,"trycatch_SUITE.erl",454}]}.
    {call,1,{f,394}}. % foo/1
  {label,268}.
    {catch_end,{y,3}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,2},{x,0}]}}.
    {move,{x,0},{y,2}}.
    {jump,{f,271}}.
  {label,269}.
    {try_case,{y,3}}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,273},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,2},{t_atom,[error,undefined]}}]}.
    {'catch',{y,3},{f,270}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,"\b"},{location,"trycatch_SUITE.erl",456}]}.
    {call,1,{f,394}}. % foo/1
  {label,270}.
    {catch_end,{y,3}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,0},{x,0}]}}.
    {move,{x,0},{y,2}}.
  {label,271}.
    {try_end,{y,4}}.
    {'catch',{y,3},{f,272}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[6,9,11]},{location,"trycatch_SUITE.erl",458}]}.
    {call,1,{f,394}}. % foo/1
  {label,272}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{y,4}}.
    {trim,4,1}.
    {move,{atom,eclectic},{x,0}}.
    {line,[{scope,[4,5]},{location,"trycatch_SUITE.erl",458}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,eclectic},{x,0}}.
    {line,[{scope,[4,5]},{location,"trycatch_SUITE.erl",460}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,273}.
    {bif,raise,{f,0},[{x,1},{y,0}],{x,0}}.
  {label,274}.
    {try_case,{y,4}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {'catch',{y,4},{f,275}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{scope,[3,18]},{location,"trycatch_SUITE.erl",458}]}.
    {call,1,{f,394}}. % foo/1
  {label,275}.
    {catch_end,{y,4}}.
    {move,{x,0},{x,1}}.
    {move,{atom,eclectic},{x,0}}.
    {line,[{scope,[1,2]},{location,"trycatch_SUITE.erl",458}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,2},{y,3}],{x,0}}.


{function, eclectic_2, 3, 277}.
  {label,276}.
    {line,[{location,"trycatch_SUITE.erl",462}]}.
    {func_info,{atom,trycatch_SUITE},{atom,eclectic_2},3}.
  {label,277}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_tuple,3,true,
                    #{1 => reference,
                      2 => {t_float,{3.1415926535,3.1415926535}},
                      3 => {t_cons,nil,{t_tuple,0,false,#{}}}}}}}}}},
          {{2,{t_atom,[exit]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[exit]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_atom,[add]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 => {t_integer,{0,0}},2 => {t_atom,[a]}}}}}}}},
          {{2,{t_atom,[throw]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[throw]},
              2 =>
               {t_union,none,none,none,
                [{{2,{t_atom,['div']}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,['div']},
                     2 =>
                      {t_tuple,2,true,
                       #{1 => {t_integer,{1,1}},2 => {t_integer,{0,0}}}}}}},
                 {{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},
                     2 =>
                      {t_tuple,3,true,
                       #{1 => reference,
                         2 => {t_float,{3.1415926535,3.1415926535}},
                         3 => {t_cons,nil,{t_tuple,0,false,#{}}}}}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_union,none,none,none,
                [{{2,{t_atom,[abs]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[abs]},
                     2 =>
                      {t_tuple,3,true,
                       #{1 => reference,
                         2 => {t_float,{3.1415926535,3.1415926535}},
                         3 => {t_cons,nil,{t_tuple,0,false,#{}}}}}}}},
                 {{2,{t_atom,[error]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[error]},
                     2 =>
                      {t_tuple,3,true,
                       #{1 => reference,
                         2 => {t_float,{3.1415926535,3.1415926535}},
                         3 => {t_cons,nil,{t_tuple,0,false,#{}}}}}}}},
                 {{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},
                     2 =>
                      {t_tuple,3,true,
                       #{1 => reference,
                         2 => {t_float,{3.1415926535,3.1415926535}},
                         3 => {t_cons,nil,{t_tuple,0,false,#{}}}}}}}}],
                none}}}}],
         none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[exit,throw,undefined]}}]}}.
    {'%',
     {var_info,
      {x,2},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},
              2 =>
               {t_tuple,3,true,
                #{1 => reference,
                  2 => {t_float,{3.1415926535,3.1415926535}},
                  3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}}},
          {{2,{t_atom,[exit]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[exit]},
              2 =>
               {t_tuple,3,true,
                #{1 => reference,
                  2 => {t_float,{3.1415926535,3.1415926535}},
                  3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,3,true,
                #{1 => reference,
                  2 => {t_float,{3.1415926535,3.1415926535}},
                  3 => {t_cons,nil,{t_tuple,0,true,#{}}}}}}}}],
         none}}]}}.
    {allocate,7,3}.
    {init_yregs,{list,[{y,0},{y,4},{y,5},{y,6}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,0}}.
    {move,{atom,eclectic},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",464}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'catch',{y,6},{f,282}}.
    {'try',{y,5},{f,281}}.
    {'try',{y,4},{f,278}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{location,"trycatch_SUITE.erl",469}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{y,3}}.
    {try_end,{y,4}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"trycatch_SUITE.erl",470}]}.
    {call,1,{f,394}}. % foo/1
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,3},{x,0}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,279}}.
  {label,278}.
    {try_case,{y,4}}.
    {move,{x,1},{y,3}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,280},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,2},{t_atom,[exit,throw,undefined]}}]}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",472}]}.
    {call,1,{f,394}}. % foo/1
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{y,2},{y,3},{x,0}]}}.
    {move,{x,0},{y,4}}.
  {label,279}.
    {try_end,{y,5}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[3,4]},{location,"trycatch_SUITE.erl",474}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,eclectic},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,0},{y,4}]}}.
    {jump,{f,282}}.
  {label,280}.
    {bif,raise,{f,0},[{x,1},{y,3}],{x,0}}.
  {label,281}.
    {try_case,{y,5}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[2,7]},{location,"trycatch_SUITE.erl",474}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,eclectic},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,3},{y,4}],{x,0}}.
  {label,282}.
    {catch_end,{y,6}}.
    {test,is_tuple,{f,283},[{x,0}]}.
    {test,test_arity,{f,283},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,283},[{x,1},{tr,{y,0},reference}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {move,{x,0},{y,6}}.
    {jump,{f,284}}.
  {label,283}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,caught},{x,0}]}}.
    {move,{x,0},{y,6}}.
  {label,284}.
    {trim,6,1}.
    {move,{atom,eclectic},{x,0}}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",479}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, rethrow, 1, 286}.
  {label,285}.
    {line,[{location,"trycatch_SUITE.erl",483}]}.
    {func_info,{atom,trycatch_SUITE},{atom,rethrow},1}.
  {label,286}.
    {test,is_list,{f,285},[{x,0}]}.
    {allocate_heap,1,13,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,c},{x,0}]}}.
    {put_list,{x,0},{literal,[make_ref]},{x,0}}.
    {put_list,{atom,b},{x,0},{x,0}}.
    {put_tuple2,{y,0},{list,[{atom,a},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {move,{y,0},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",486}]}.
    {call,2,{f,299}}. % rethrow_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[caught2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
          {{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{2,{t_atom,[caught1]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,297},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 =>
                             {t_union,
                                 {t_atom,[value1]},
                                 none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{value2,value1}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,0}]}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",488}]}.
    {call,2,{f,306}}. % rethrow_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught2]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught2]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[value2]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value2]},
                             2 => {t_atom,[caught1,value1]}}}}],
                     none}}]}}.
    {test,is_tagged_tuple,
        {f,296},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 => {t_atom,[caught1,value1]}}}}],
                 none}},
         2,
         {atom,caught2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,296},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,error}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
        {f,296},
        [{x,1},
         {tr,{y,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[a]},
                   2 =>
                       {t_cons,
                           {t_union,
                               {t_atom,[b,make_ref]},
                               none,none,
                               [{{2,{t_atom,[c]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[c]},2 => pid}}}],
                               none},
                           nil}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,exit},{y,0}]}}.
    {move,{atom,error},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",490}]}.
    {call,2,{f,299}}. % rethrow_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[caught2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
          {{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{2,{t_atom,[caught1]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,295},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 =>
                             {t_union,
                                 {t_atom,[value1]},
                                 none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,295},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,exit}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
        {f,295},
        [{x,1},
         {tr,{y,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[a]},
                   2 =>
                       {t_cons,
                           {t_union,
                               {t_atom,[b,make_ref]},
                               none,none,
                               [{{2,{t_atom,[c]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[c]},2 => pid}}}],
                               none},
                           nil}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,throw},{y,0}]}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",492}]}.
    {call,2,{f,299}}. % rethrow_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[caught2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
          {{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{2,{t_atom,[caught1]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,294},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 =>
                             {t_union,
                                 {t_atom,[value1]},
                                 none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,294},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,throw}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
        {f,294},
        [{x,1},
         {tr,{y,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[a]},
                   2 =>
                       {t_cons,
                           {t_union,
                               {t_atom,[b,make_ref]},
                               none,none,
                               [{{2,{t_atom,[c]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[c]},2 => pid}}}],
                               none},
                           nil}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,throw},{y,0}]}}.
    {move,{atom,undefined},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",494}]}.
    {call,2,{f,306}}. % rethrow_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught2]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught2]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[value2]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value2]},
                             2 => {t_atom,[caught1,value1]}}}}],
                     none}}]}}.
    {test,is_tagged_tuple,
        {f,293},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 => {t_atom,[caught1,value1]}}}}],
                 none}},
         2,
         {atom,caught2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,293},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,throw}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
        {f,293},
        [{x,1},
         {tr,{y,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[a]},
                   2 =>
                       {t_cons,
                           {t_union,
                               {t_atom,[b,make_ref]},
                               none,none,
                               [{{2,{t_atom,[c]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[c]},2 => pid}}}],
                               none},
                           nil}}}}]}.
    {move,{atom,throw},{x,1}}.
    {move,{literal,{add,{0,a}}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",496}]}.
    {call,2,{f,299}}. % rethrow_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[caught2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
          {{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{2,{t_atom,[caught1]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,292},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 =>
                             {t_union,
                                 {t_atom,[value1]},
                                 none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught2,{error,badarith}}}]}.
    {move,{atom,undefined},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",498}]}.
    {call,2,{f,306}}. % rethrow_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught2]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught2]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[value2]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value2]},
                             2 => {t_atom,[caught1,value1]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,291},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 => {t_atom,[caught1,value1]}}}}],
                 none}},
         {literal,{caught2,{error,function_clause}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,0}]}}.
    {move,{atom,exit},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",500}]}.
    {call,2,{f,299}}. % rethrow_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[caught2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
          {{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{2,{t_atom,[caught1]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,290},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 =>
                             {t_union,
                                 {t_atom,[value1]},
                                 none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,290},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,error}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,290},[{x,1},2,{atom,try_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
        {f,290},
        [{x,1},
         {tr,{y,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[a]},
                   2 =>
                       {t_cons,
                           {t_union,
                               {t_atom,[b,make_ref]},
                               none,none,
                               [{{2,{t_atom,[c]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[c]},2 => pid}}}],
                               none},
                           nil}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,0}]}}.
    {move,{atom,error},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",502}]}.
    {call,2,{f,299}}. % rethrow_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[caught2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
          {{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{2,{t_atom,[caught1]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,289},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 =>
                             {t_union,
                                 {t_atom,[value1]},
                                 none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,value2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,
          {f,289},
          [{tr,{x,1},
               {t_union,{t_atom,[value1]},
                        none,none,
                        [{{2,{t_atom,[caught1]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
        {f,289},
        [{x,1},
         {tr,{y,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[a]},
                   2 =>
                       {t_cons,
                           {t_union,
                               {t_atom,[b,make_ref]},
                               none,none,
                               [{{2,{t_atom,[c]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[c]},2 => pid}}}],
                               none},
                           nil}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,exit},{y,0}]}}.
    {move,{atom,exit},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",504}]}.
    {call,2,{f,299}}. % rethrow_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[caught2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
          {{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{2,{t_atom,[caught1]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,288},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 =>
                             {t_union,
                                 {t_atom,[value1]},
                                 none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,value2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,
          {f,288},
          [{tr,{x,1},
               {t_union,{t_atom,[value1]},
                        none,none,
                        [{{2,{t_atom,[caught1]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
        {f,288},
        [{x,1},
         {tr,{y,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[a]},
                   2 =>
                       {t_cons,
                           {t_union,
                               {t_atom,[b,make_ref]},
                               none,none,
                               [{{2,{t_atom,[c]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[c]},2 => pid}}}],
                               none},
                           nil}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,throw},{y,0}]}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {line,[{location,"trycatch_SUITE.erl",506}]}.
    {call,2,{f,306}}. % rethrow_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[caught2]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[caught2]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[error,exit,throw]}}}}}},
                      {{2,{t_atom,[value2]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value2]},
                             2 => {t_atom,[caught1,value1]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,287},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught2]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value2]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value2]},
                         2 => {t_atom,[caught1,value1]}}}}],
                 none}},
         {literal,{value2,caught1}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,287}.
    {line,[{location,"trycatch_SUITE.erl",505}]}.
    {badmatch,{x,0}}.
  {label,288}.
    {line,[{location,"trycatch_SUITE.erl",503}]}.
    {badmatch,{x,0}}.
  {label,289}.
    {line,[{location,"trycatch_SUITE.erl",501}]}.
    {badmatch,{x,0}}.
  {label,290}.
    {line,[{location,"trycatch_SUITE.erl",499}]}.
    {badmatch,{x,0}}.
  {label,291}.
    {line,[{location,"trycatch_SUITE.erl",497}]}.
    {badmatch,{x,0}}.
  {label,292}.
    {line,[{location,"trycatch_SUITE.erl",495}]}.
    {badmatch,{x,0}}.
  {label,293}.
    {line,[{location,"trycatch_SUITE.erl",493}]}.
    {badmatch,{x,0}}.
  {label,294}.
    {line,[{location,"trycatch_SUITE.erl",491}]}.
    {badmatch,{x,0}}.
  {label,295}.
    {line,[{location,"trycatch_SUITE.erl",489}]}.
    {badmatch,{x,0}}.
  {label,296}.
    {line,[{location,"trycatch_SUITE.erl",487}]}.
    {badmatch,{x,0}}.
  {label,297}.
    {line,[{location,"trycatch_SUITE.erl",485}]}.
    {badmatch,{x,0}}.


{function, rethrow_1, 2, 299}.
  {label,298}.
    {line,[{location,"trycatch_SUITE.erl",509}]}.
    {func_info,{atom,trycatch_SUITE},{atom,rethrow_1},2}.
  {label,299}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[add]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[add]},
              2 =>
               {t_tuple,2,true,#{1 => {t_integer,{0,0}},2 => {t_atom,[a]}}}}}},
          {{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_atom,[a]},
                  2 =>
                   {t_cons,
                    {t_union,
                     {t_atom,[b,make_ref]},
                     none,none,
                     [{{2,{t_atom,[c]}},
                       {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                     none},
                    nil}}}}}},
          {{2,{t_atom,[exit]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[exit]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_atom,[a]},
                  2 =>
                   {t_cons,
                    {t_union,
                     {t_atom,[b,make_ref]},
                     none,none,
                     [{{2,{t_atom,[c]}},
                       {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                     none},
                    nil}}}}}},
          {{2,{t_atom,[throw]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[throw]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_atom,[a]},
                  2 =>
                   {t_cons,
                    {t_union,
                     {t_atom,[b,make_ref]},
                     none,none,
                     [{{2,{t_atom,[c]}},
                       {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                     none},
                    nil}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_atom,[a]},
                  2 =>
                   {t_cons,
                    {t_union,
                     {t_atom,[b,make_ref]},
                     none,none,
                     [{{2,{t_atom,[c]}},
                       {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                     none},
                    nil}}}}}}],
         none}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_union,
         {t_atom,[error,exit,throw,undefined]},
         none,none,
         [{{2,{t_atom,[a]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[a]},
              2 =>
               {t_cons,
                {t_union,
                 {t_atom,[b,make_ref]},
                 none,none,
                 [{{2,{t_atom,[c]}},
                   {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                 none},
                nil}}}}],
         none}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,1},{y,0}}.
    {'try',{y,2},{f,303}}.
    {'try',{y,1},{f,300}}.
    {line,[{location,"trycatch_SUITE.erl",510}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,1}}.
    {test,is_eq_exact,
     {f,304},
     [{x,0},
      {tr,
       {y,0},
       {t_union,
        {t_atom,[error,exit,throw,undefined]},
        none,none,
        [{{2,{t_atom,[a]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[a]},
             2 =>
              {t_cons,
               {t_union,
                {t_atom,[b,make_ref]},
                none,none,
                [{{2,{t_atom,[c]}},
                  {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                none},
               nil}}}}],
        none}}]}.
    {move,{atom,value1},{x,0}}.
    {jump,{f,301}}.
  {label,300}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
     {f,302},
     [{tr,{x,0},{t_atom,[error,exit,throw]}},
      {tr,
       {y,0},
       {t_union,
        {t_atom,[error,exit,throw,undefined]},
        none,none,
        [{{2,{t_atom,[a]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[a]},
             2 =>
              {t_cons,
               {t_union,
                {t_atom,[b,make_ref]},
                none,none,
                [{{2,{t_atom,[c]}},
                  {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                none},
               nil}}}}],
        none}}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,caught1},{x,1}]}}.
  {label,301}.
    {try_end,{y,2}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,value2},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,302}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,303}.
    {try_case,{y,2}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,caught2},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,304}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",510}]}.
    {try_case_end,{x,0}}.


{function, rethrow_2, 2, 306}.
  {label,305}.
    {line,[{location,"trycatch_SUITE.erl",520}]}.
    {func_info,{atom,trycatch_SUITE},{atom,rethrow_2},2}.
  {label,306}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[function_clause]},
         none,none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_atom,[a]},
                  2 =>
                   {t_cons,
                    {t_union,
                     {t_atom,[b,make_ref]},
                     none,none,
                     [{{2,{t_atom,[c]}},
                       {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                     none},
                    nil}}}}}},
          {{2,{t_atom,[throw]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[throw]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_atom,[a]},
                  2 =>
                   {t_cons,
                    {t_union,
                     {t_atom,[b,make_ref]},
                     none,none,
                     [{{2,{t_atom,[c]}},
                       {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                     none},
                    nil}}}}}}],
         none}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_union,
         {t_atom,[undefined]},
         none,none,
         [{{2,{t_atom,[a]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[a]},
              2 =>
               {t_cons,
                {t_union,
                 {t_atom,[b,make_ref]},
                 none,none,
                 [{{2,{t_atom,[c]}},
                   {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                 none},
                nil}}}}],
         none}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,1},{y,0}}.
    {'try',{y,2},{f,310}}.
    {'try',{y,1},{f,307}}.
    {line,[{location,"trycatch_SUITE.erl",521}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,1}}.
    {test,is_eq_exact,
     {f,311},
     [{x,0},
      {tr,
       {y,0},
       {t_union,
        {t_atom,[undefined]},
        none,none,
        [{{2,{t_atom,[a]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[a]},
             2 =>
              {t_cons,
               {t_union,
                {t_atom,[b,make_ref]},
                none,none,
                [{{2,{t_atom,[c]}},
                  {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                none},
               nil}}}}],
        none}}]}.
    {move,{atom,value1},{x,0}}.
    {jump,{f,308}}.
  {label,307}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,309},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,
     {f,309},
     [{x,1},
      {tr,
       {y,0},
       {t_union,
        {t_atom,[undefined]},
        none,none,
        [{{2,{t_atom,[a]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[a]},
             2 =>
              {t_cons,
               {t_union,
                {t_atom,[b,make_ref]},
                none,none,
                [{{2,{t_atom,[c]}},
                  {t_tuple,2,true,#{1 => {t_atom,[c]},2 => pid}}}],
                none},
               nil}}}}],
        none}}]}.
    {move,{atom,caught1},{x,0}}.
  {label,308}.
    {try_end,{y,2}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,value2},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,309}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,310}.
    {try_case,{y,2}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,caught2},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,311}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",521}]}.
    {try_case_end,{x,0}}.


{function, nested_of, 1, 313}.
  {label,312}.
    {line,[{location,"trycatch_SUITE.erl",533}]}.
    {func_info,{atom,trycatch_SUITE},{atom,nested_of},1}.
  {label,313}.
    {test,is_list,{f,312},[{x,0}]}.
    {allocate,1,0}.
    {bif,self,{f,0},[],{y,0}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,33,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_tuple2,{y,0},{list,[{x,0},{float,1.4142136}]}}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,2}]}}.
    {put_tuple2,{x,3},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,3}]}}.
    {line,[{location,"trycatch_SUITE.erl",539}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,327},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,value}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,327},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught1]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                         {{2,{t_atom,[value1]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                        none}},
           2,
           {atom,value1}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,327},[{x,1}]}.
    {test,test_arity,{f,327},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,327},[{x,2},{atom,x2}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,327},[{x,2}]}.
    {test,test_arity,{f,327},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,327},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tuple,{f,327},[{x,3}]}.
    {test,test_arity,{f,327},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,327},[{x,4},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,4}}.
    {test,is_eq_exact,{f,327},[{x,4},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,327},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,327},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,3},0,{x,1}}.
    {test,is_eq_exact,
          {f,327},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,28,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,throw},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,2}]}}.
    {put_tuple2,{x,3},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,3}]}}.
    {line,[{location,"trycatch_SUITE.erl",545}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,326},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,326},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,throw}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,326},[{x,1}]}.
    {test,test_arity,{f,326},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,326},[{x,2},{atom,x2}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,326},[{x,2}]}.
    {test,test_arity,{f,326},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,326},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tuple,{f,326},[{x,3}]}.
    {test,test_arity,{f,326},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,326},[{x,4},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,4}}.
    {test,is_eq_exact,{f,326},[{x,4},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,326},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,326},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,3},0,{x,1}}.
    {test,is_eq_exact,
          {f,326},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,throw},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,2}]}}.
    {move,{literal,{'div',{1,0}}},{x,2}}.
    {line,[{location,"trycatch_SUITE.erl",551}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,325},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,325},[{x,1},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tuple,{f,325},[{x,1}]}.
    {test,test_arity,{f,325},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,325},[{x,2},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_eq_exact,{f,325},[{x,2},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,325},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,16,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,throw},{x,1}]}}.
    {move,{literal,{add,{0,b}}},{x,3}}.
    {move,{literal,{'div',{1,0}}},{x,2}}.
    {line,[{location,"trycatch_SUITE.erl",557}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,324},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,none,none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},
                 2 =>
                  {t_union,none,none,none,
                   [{{2,{t_atom,[caught1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                    {{2,{t_atom,[value1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                   none}}}}],
            none}}}},
      {literal,{{caught,{error,badarith}},undefined,undefined,finalized}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,void},{atom,try_clause}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,2}]}}.
    {move,{x,1},{x,2}}.
    {move,{atom,void},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",564}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,323},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,323},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,error}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,323},[{x,1},2,{atom,try_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,323},[{x,1}]}.
    {test,test_arity,{f,323},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,323},[{x,2},{atom,x1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,323},[{x,2}]}.
    {test,test_arity,{f,323},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,323},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tuple,{f,323},[{x,3}]}.
    {test,test_arity,{f,323},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,323},[{x,4},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,4}}.
    {test,is_eq_exact,{f,323},[{x,4},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,323},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,323},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,3},0,{x,1}}.
    {test,is_eq_exact,
          {f,323},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,void},{atom,try_clause}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,1},{list,[{atom,exit},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,2}]}}.
    {move,{x,1},{x,2}}.
    {move,{atom,void},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",570}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,322},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,322},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,exit}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,322},[{x,1}]}.
    {test,test_arity,{f,322},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,322},[{x,2},{atom,x3}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,322},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tuple,{f,322},[{x,2}]}.
    {test,test_arity,{f,322},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,322},[{x,3},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,322},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,322},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,322},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,void},{atom,try_clause}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,1},{list,[{atom,exit},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,throw},{x,2}]}}.
    {move,{x,1},{x,2}}.
    {move,{atom,void},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",576}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,321},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,321},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,throw}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,321},[{x,1}]}.
    {test,test_arity,{f,321},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,321},[{x,2},{atom,x4}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,321},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,321},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_eq_exact,{f,321},[{x,2},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,321},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,28,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,error},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,2}]}}.
    {put_tuple2,{x,3},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,3}]}}.
    {line,[{location,"trycatch_SUITE.erl",583}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,320},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,value}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,320},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught1]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                         {{2,{t_atom,[value1]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                        none}},
           2,
           {atom,caught1}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,320},[{x,1}]}.
    {test,test_arity,{f,320},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,320},[{x,2},{atom,x2}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,320},[{x,2}]}.
    {test,test_arity,{f,320},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,320},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tuple,{f,320},[{x,3}]}.
    {test,test_arity,{f,320},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,320},[{x,4},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,4}}.
    {test,is_eq_exact,{f,320},[{x,4},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,320},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,320},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,3},0,{x,1}}.
    {test,is_eq_exact,
          {f,320},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,error},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,2}]}}.
    {move,{x,1},{x,2}}.
    {move,{literal,{add,{1,c}}},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",589}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,319},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,319},[{x,1}]}.
    {test,test_arity,{f,319},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,319},[{x,2},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tuple,{f,319},[{x,2}]}.
    {test,test_arity,{f,319},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,319},[{x,3},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,319},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,319},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,319},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,16,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,error},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,1}]}}.
    {move,{literal,{'div',{17,0}}},{x,2}}.
    {move,{literal,{add,{1,c}}},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",595}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,318},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,318},[{x,1},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tuple,{f,318},[{x,1}]}.
    {test,test_arity,{f,318},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,318},[{x,2},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_eq_exact,{f,318},[{x,2},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,318},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,13,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,error},{x,0}]}}.
    {put_tuple2,{x,3},{list,[{atom,abs},{y,0}]}}.
    {move,{literal,{'div',{17,0}}},{x,2}}.
    {move,{literal,{add,{1,c}}},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",601}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,317},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,none,none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},
                 2 =>
                  {t_union,none,none,none,
                   [{{2,{t_atom,[caught1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                    {{2,{t_atom,[value1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                   none}}}}],
            none}}}},
      {literal,{{caught,{error,badarg}},undefined,undefined,finalized}}]}.
    {test_heap,12,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,1}]}}.
    {move,{atom,void},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,{{add,{2,c}},rethrow,void}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",608}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,316},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,316},[{x,1}]}.
    {test,test_arity,{f,316},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,316},[{x,2},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tuple,{f,316},[{x,2}]}.
    {test,test_arity,{f,316},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,316},[{x,3},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,316},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,316},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,316},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,abs},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,1}]}}.
    {move,{atom,void},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,{{add,{2,c}},rethrow,void}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",614}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,315},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught,{error,badarg}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,315},[{x,1},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tuple,{f,315},[{x,1}]}.
    {test,test_arity,{f,315},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,315},[{x,2},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_eq_exact,{f,315},[{x,2},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,315},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,pid,reference},
                          2 => {t_float,{1.4142136,1.4142136}}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,2},{list,[{atom,abs},{y,0}]}}.
    {move,{atom,void},{x,1}}.
    {move,{atom,function_clause},{x,3}}.
    {trim,1,0}.
    {move,{literal,{{add,{2,c}},rethrow,void}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",620}]}.
    {call,4,{f,329}}. % nested_of_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,314},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,none,none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},
                 2 =>
                  {t_union,none,none,none,
                   [{{2,{t_atom,[caught1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                    {{2,{t_atom,[value1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                   none}}}}],
            none}}}},
      {literal,
       {{caught,{error,function_clause}},undefined,undefined,finalized}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,314}.
    {line,[{location,"trycatch_SUITE.erl",616}]}.
    {badmatch,{x,0}}.
  {label,315}.
    {line,[{location,"trycatch_SUITE.erl",610}]}.
    {badmatch,{x,0}}.
  {label,316}.
    {line,[{location,"trycatch_SUITE.erl",604}]}.
    {badmatch,{x,0}}.
  {label,317}.
    {line,[{location,"trycatch_SUITE.erl",597}]}.
    {badmatch,{x,0}}.
  {label,318}.
    {line,[{location,"trycatch_SUITE.erl",591}]}.
    {badmatch,{x,0}}.
  {label,319}.
    {line,[{location,"trycatch_SUITE.erl",585}]}.
    {badmatch,{x,0}}.
  {label,320}.
    {line,[{location,"trycatch_SUITE.erl",579}]}.
    {badmatch,{x,0}}.
  {label,321}.
    {line,[{location,"trycatch_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,322}.
    {line,[{location,"trycatch_SUITE.erl",566}]}.
    {badmatch,{x,0}}.
  {label,323}.
    {line,[{location,"trycatch_SUITE.erl",560}]}.
    {badmatch,{x,0}}.
  {label,324}.
    {line,[{location,"trycatch_SUITE.erl",553}]}.
    {badmatch,{x,0}}.
  {label,325}.
    {line,[{location,"trycatch_SUITE.erl",547}]}.
    {badmatch,{x,0}}.
  {label,326}.
    {line,[{location,"trycatch_SUITE.erl",541}]}.
    {badmatch,{x,0}}.
  {label,327}.
    {line,[{location,"trycatch_SUITE.erl",535}]}.
    {badmatch,{x,0}}.


{function, nested_of_1, 4, 329}.
  {label,328}.
    {line,[{location,"trycatch_SUITE.erl",624}]}.
    {func_info,{atom,trycatch_SUITE},{atom,nested_of_1},4}.
  {label,329}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[add]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[add]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 => {t_integer,{2,2}},2 => {t_atom,[c]}}}}}},
              {{2,{t_atom,[error]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[error]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 =>
                       {t_tuple,2,true,
                        #{1 => {t_cons,any,any},
                          2 => {t_float,{1.4142136,1.4142136}}}},
                      2 => {t_atom,[x1]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 =>
                       {t_tuple,2,true,
                        #{1 => {t_cons,any,any},
                          2 => {t_float,{1.4142136,1.4142136}}}},
                      2 => {t_atom,[x1]}}}}}}],
             none},
           2 => {t_atom,[error,rethrow,void]},
           3 =>
            {t_union,
             {t_atom,[try_clause,void]},
             none,none,
             {t_tuple,2,true,
              #{1 =>
                 {t_tuple,2,true,
                  #{1 => {t_cons,pid,reference},
                    2 => {t_float,{1.4142136,1.4142136}}}},
                2 => {t_atom,[x1]}}},
             none}}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_union,
         {t_atom,[void]},
         none,none,
         [{{2,{t_atom,[add]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[add]},
              2 =>
               {t_tuple,2,true,#{1 => {t_integer,{1,1}},2 => {t_atom,[c]}}}}}},
          {{2,{t_atom,[throw]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[throw]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,2,true,
                    #{1 => {t_cons,pid,reference},
                      2 => {t_float,{1.4142136,1.4142136}}}},
                  2 => {t_atom,[x2]}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,2,true,
                    #{1 => {t_cons,pid,reference},
                      2 => {t_float,{1.4142136,1.4142136}}}},
                  2 => {t_atom,[x2]}}}}}}],
         none}}]}}.
    {'%',
     {var_info,
      {x,2},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[abs]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[abs]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_cons,pid,reference},
                  2 => {t_float,{1.4142136,1.4142136}}}}}}},
          {{2,{t_atom,['div']}},
           {t_tuple,2,true,
            #{1 => {t_atom,['div']},
              2 =>
               {t_union,none,none,none,
                [{{2,{t_integer,{1,1}}},
                  {t_tuple,2,true,
                   #{1 => {t_integer,{1,1}},2 => {t_integer,{0,0}}}}},
                 {{2,{t_integer,{17,17}}},
                  {t_tuple,2,true,
                   #{1 => {t_integer,{17,17}},2 => {t_integer,{0,0}}}}}],
                none}}}},
          {{2,{t_atom,[exit]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[exit]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,2,true,
                    #{1 => {t_cons,pid,reference},
                      2 => {t_float,{1.4142136,1.4142136}}}},
                  2 => {t_atom,[x3]}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,2,true,
                    #{1 => {t_cons,pid,reference},
                      2 => {t_float,{1.4142136,1.4142136}}}},
                  2 => {t_atom,[x3]}}}}}}],
         none}}]}}.
    {'%',
     {var_info,
      {x,3},
      [{type,
        {t_union,
         {t_atom,[function_clause]},
         none,none,
         [{{2,{t_atom,[abs]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[abs]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_cons,pid,reference},
                  2 => {t_float,{1.4142136,1.4142136}}}}}}},
          {{2,{t_atom,[add]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[add]},
              2 =>
               {t_tuple,2,true,#{1 => {t_integer,{0,0}},2 => {t_atom,[b]}}}}}},
          {{2,{t_atom,[throw]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[throw]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,2,true,
                    #{1 => {t_cons,pid,reference},
                      2 => {t_float,{1.4142136,1.4142136}}}},
                  2 => {t_atom,[x4]}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,2,true,
                    #{1 => {t_cons,pid,reference},
                      2 => {t_float,{1.4142136,1.4142136}}}},
                  2 => {t_atom,[x4]}}}}}}],
         none}}]}}.
    {allocate,9,4}.
    {init_yregs,{list,[{y,0},{y,6},{y,7},{y,8}]}}.
    {move,{x,3},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,0},{y,5}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{atom,nested3},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",626}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{atom,nested4},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",627}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{atom,nested},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",628}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,8},{f,335}}.
    {'try',{y,7},{f,334}}.
    {get_tuple_element,{y,5},2,{y,0}}.
    {'try',{y,6},{f,333}}.
    {get_tuple_element,{y,5},0,{x,0}}.
    {'try',{y,5},{f,330}}.
    {line,[{location,"trycatch_SUITE.erl",636}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,5}}.
    {test,is_eq_exact,
        {f,337},
        [{x,0},
         {tr,{y,0},
             {t_union,
                 {t_atom,[try_clause,void]},
                 none,none,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,2,true,
                               #{1 => {t_cons,pid,reference},
                                 2 => {t_float,{1.4142136,1.4142136}}}},
                       2 => {t_atom,[x1]}}},
                 none}}]}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1},{y,4},{y,5}]}}.
    {line,[{scope,"\b"},{location,"trycatch_SUITE.erl",638}]}.
    {call,1,{f,394}}. % foo/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,value1},{x,0}]}}.
    {move,{x,0},{y,5}}.
    {jump,{f,331}}.
  {label,330}.
    {try_case,{y,5}}.
    {test,is_eq_exact,
          {f,332},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,1},{t_atom,[error,rethrow,void]}}]}.
    {test,is_eq_exact,
        {f,332},
        [{x,1},
         {tr,{y,0},
             {t_union,
                 {t_atom,[try_clause,void]},
                 none,none,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,2,true,
                               #{1 => {t_cons,pid,reference},
                                 2 => {t_float,{1.4142136,1.4142136}}}},
                       2 => {t_atom,[x1]}}},
                 none}}]}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1},{y,4},{y,5}]}}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",640}]}.
    {call,1,{f,394}}. % foo/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,caught1},{x,0}]}}.
    {move,{x,0},{y,5}}.
  {label,331}.
    {try_end,{y,6}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[6,8]},{location,"trycatch_SUITE.erl",642}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,nested3},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,7}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[6,8]},{location,"trycatch_SUITE.erl",645}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,nested4},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,8}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,5}]}}.
    {move,{x,0},{y,8}}.
    {jump,{f,336}}.
  {label,332}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,333}.
    {try_case,{y,6}}.
    {move,{x,2},{y,4}}.
    {move,{x,1},{y,5}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[3,7,11]},{location,"trycatch_SUITE.erl",642}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,nested3},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,4},{y,5}],{x,0}}.
  {label,334}.
    {try_case,{y,7}}.
    {move,{x,2},{y,5}}.
    {move,{x,1},{y,6}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[2,12]},{location,"trycatch_SUITE.erl",645}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,nested4},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,5},{y,6}],{x,0}}.
  {label,335}.
    {try_case,{y,8}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,caught},{x,0}]}}.
    {move,{x,0},{y,8}}.
  {label,336}.
    {move,{atom,finalized},{x,1}}.
    {move,{atom,nested},{x,0}}.
    {line,[{scope,[0,3]},{location,"trycatch_SUITE.erl",652}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,nested3},{x,0}}.
    {line,[{scope,[0,3]},{location,"trycatch_SUITE.erl",654}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{x,0},{y,7}}.
    {move,{atom,nested4},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{x,0},{y,6}}.
    {move,{atom,nested},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{y,8},{y,7},{y,6},{x,0}]}}.
    {deallocate,9}.
    return.
  {label,337}.
    {line,[{scope,"\b"},{location,"trycatch_SUITE.erl",635}]}.
    {try_case_end,{x,0}}.


{function, nested_catch, 1, 339}.
  {label,338}.
    {line,[{location,"trycatch_SUITE.erl",658}]}.
    {func_info,{atom,trycatch_SUITE},{atom,nested_catch},1}.
  {label,339}.
    {test,is_list,{f,338},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,36,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{float,1.4142136},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_tuple2,{y,0},{list,[{x,0}]}}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,2}]}}.
    {put_tuple2,{x,3},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,3}]}}.
    {line,[{location,"trycatch_SUITE.erl",664}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,353},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,value}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,353},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught1]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                         {{2,{t_atom,[value1]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                        none}},
           2,
           {atom,value1}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,353},[{x,1}]}.
    {test,test_arity,{f,353},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,353},[{x,2},{atom,x2}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,353},[{x,2}]}.
    {test,test_arity,{f,353},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,353},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tuple,{f,353},[{x,3}]}.
    {test,test_arity,{f,353},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,353},[{x,4},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,4}}.
    {test,is_eq_exact,{f,353},[{x,4},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,353},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
        {f,353},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,3},0,{x,1}}.
    {test,is_eq_exact,
        {f,353},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,28,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,throw},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,2}]}}.
    {put_tuple2,{x,3},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,3}]}}.
    {line,[{location,"trycatch_SUITE.erl",670}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,352},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,352},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,throw}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,352},[{x,1}]}.
    {test,test_arity,{f,352},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,352},[{x,2},{atom,x2}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,352},[{x,2}]}.
    {test,test_arity,{f,352},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,352},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tuple,{f,352},[{x,3}]}.
    {test,test_arity,{f,352},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,352},[{x,4},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,4}}.
    {test,is_eq_exact,{f,352},[{x,4},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,352},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
        {f,352},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,3},0,{x,1}}.
    {test,is_eq_exact,
        {f,352},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,throw},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,2}]}}.
    {move,{literal,{'div',{1,0}}},{x,2}}.
    {line,[{location,"trycatch_SUITE.erl",676}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,351},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,351},[{x,1},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tuple,{f,351},[{x,1}]}.
    {test,test_arity,{f,351},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,351},[{x,2},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_eq_exact,{f,351},[{x,2},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,351},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,16,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,throw},{x,1}]}}.
    {move,{literal,{add,{0,b}}},{x,3}}.
    {move,{literal,{'div',{1,0}}},{x,2}}.
    {line,[{location,"trycatch_SUITE.erl",682}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,350},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,none,none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},
                 2 =>
                  {t_union,none,none,none,
                   [{{2,{t_atom,[caught1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                    {{2,{t_atom,[value1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                   none}}}}],
            none}}}},
      {literal,{{caught,{error,badarith}},undefined,undefined,finalized}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,void},{atom,try_clause}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,2}]}}.
    {move,{x,1},{x,2}}.
    {move,{atom,void},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",689}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,349},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,349},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,error}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,349},[{x,1},2,{atom,try_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,349},[{x,1}]}.
    {test,test_arity,{f,349},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,349},[{x,2},{atom,x1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,349},[{x,2}]}.
    {test,test_arity,{f,349},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,349},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tuple,{f,349},[{x,3}]}.
    {test,test_arity,{f,349},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,349},[{x,4},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,4}}.
    {test,is_eq_exact,{f,349},[{x,4},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,349},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
        {f,349},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,3},0,{x,1}}.
    {test,is_eq_exact,
        {f,349},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,void},{atom,try_clause}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,1},{list,[{atom,exit},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,2}]}}.
    {move,{x,1},{x,2}}.
    {move,{atom,void},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",695}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,348},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,348},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,exit}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,348},[{x,1}]}.
    {test,test_arity,{f,348},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,348},[{x,2},{atom,x3}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,348},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tuple,{f,348},[{x,2}]}.
    {test,test_arity,{f,348},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,348},[{x,3},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,348},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,348},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
        {f,348},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,void},{atom,try_clause}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,1},{list,[{atom,exit},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,throw},{x,2}]}}.
    {move,{x,1},{x,2}}.
    {move,{atom,void},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",701}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,347},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,caught}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,347},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,throw}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,347},[{x,1}]}.
    {test,test_arity,{f,347},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,347},[{x,2},{atom,x4}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,347},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,347},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_eq_exact,{f,347},[{x,2},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,347},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,28,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,error},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,2}]}}.
    {put_tuple2,{x,3},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,3}]}}.
    {line,[{location,"trycatch_SUITE.erl",708}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,
        {f,346},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         2,
         {atom,value}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,346},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[caught1]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                         {{2,{t_atom,[value1]}},
                          {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                        none}},
           2,
           {atom,caught1}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,346},[{x,1}]}.
    {test,test_arity,{f,346},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,346},[{x,2},{atom,x2}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,346},[{x,2}]}.
    {test,test_arity,{f,346},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,346},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tuple,{f,346},[{x,3}]}.
    {test,test_arity,{f,346},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,346},[{x,4},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,4}}.
    {test,is_eq_exact,{f,346},[{x,4},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,346},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
        {f,346},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,3},0,{x,1}}.
    {test,is_eq_exact,
        {f,346},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,error},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,2}]}}.
    {move,{x,1},{x,2}}.
    {move,{literal,{add,{1,c}}},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",714}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,345},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,345},[{x,1}]}.
    {test,test_arity,{f,345},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,345},[{x,2},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tuple,{f,345},[{x,2}]}.
    {test,test_arity,{f,345},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,345},[{x,3},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,345},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,345},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
        {f,345},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,16,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,error},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,1}]}}.
    {move,{literal,{'div',{17,0}}},{x,2}}.
    {move,{literal,{add,{1,c}}},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",720}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,344},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,344},[{x,1},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tuple,{f,344},[{x,1}]}.
    {test,test_arity,{f,344},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,344},[{x,2},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_eq_exact,{f,344},[{x,2},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,344},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,13,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,error},{x,0}]}}.
    {put_tuple2,{x,3},{list,[{atom,abs},{y,0}]}}.
    {move,{literal,{'div',{17,0}}},{x,2}}.
    {move,{literal,{add,{1,c}}},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",726}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,343},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,none,none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},
                 2 =>
                  {t_union,none,none,none,
                   [{{2,{t_atom,[caught1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                    {{2,{t_atom,[value1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                   none}}}}],
            none}}}},
      {literal,{{caught,{error,badarg}},undefined,undefined,finalized}}]}.
    {test_heap,12,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,1}]}}.
    {move,{atom,void},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,{{add,{2,c}},rethrow,void}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",733}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,342},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,342},[{x,1}]}.
    {test,test_arity,{f,342},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,342},[{x,2},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tuple,{f,342},[{x,2}]}.
    {test,test_arity,{f,342},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,342},[{x,3},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,342},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,342},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
        {f,342},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,9,0}.
    {put_tuple2,{x,0},{list,[{atom,abs},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x4}]}}.
    {put_tuple2,{x,3},{list,[{atom,value},{x,1}]}}.
    {move,{atom,void},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,{{add,{2,c}},rethrow,void}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",739}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,341},
        [{tr,{x,1},
             {t_union,none,none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},
                         2 =>
                             {t_union,none,none,none,
                                 [{{2,{t_atom,[caught1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught1]}}}},
                                  {{2,{t_atom,[value1]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value1]}}}}],
                                 none}}}}],
                 none}},
         {literal,{caught,{error,badarg}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,341},[{x,1},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tuple,{f,341},[{x,1}]}.
    {test,test_arity,{f,341},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,341},[{x,2},{atom,x4}]}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_eq_exact,{f,341},[{x,2},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
        {f,341},
        [{x,1},
         {tr,{y,0},
             {t_tuple,1,true,
                 #{1 =>
                       {t_cons,
                           {t_union,none,none,
                               {t_float,{1.4142136,1.4142136}},
                               none,identifier},
                           nil}}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,2},{list,[{atom,abs},{y,0}]}}.
    {move,{atom,void},{x,1}}.
    {move,{atom,function_clause},{x,3}}.
    {trim,1,0}.
    {move,{literal,{{add,{2,c}},rethrow,void}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",745}]}.
    {call,4,{f,355}}. % nested_catch_1/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_union,none,none,none,
                    [{{2,{t_atom,[caught1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                     {{2,{t_atom,[value1]}},
                      {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                    none}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,340},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,none,none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},
                 2 =>
                  {t_union,none,none,none,
                   [{{2,{t_atom,[caught1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[caught1]}}}},
                    {{2,{t_atom,[value1]}},
                     {t_tuple,2,true,#{1 => {t_atom,[value1]}}}}],
                   none}}}}],
            none}}}},
      {literal,
       {{caught,{error,function_clause}},undefined,undefined,finalized}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,340}.
    {line,[{location,"trycatch_SUITE.erl",741}]}.
    {badmatch,{x,0}}.
  {label,341}.
    {line,[{location,"trycatch_SUITE.erl",735}]}.
    {badmatch,{x,0}}.
  {label,342}.
    {line,[{location,"trycatch_SUITE.erl",729}]}.
    {badmatch,{x,0}}.
  {label,343}.
    {line,[{location,"trycatch_SUITE.erl",722}]}.
    {badmatch,{x,0}}.
  {label,344}.
    {line,[{location,"trycatch_SUITE.erl",716}]}.
    {badmatch,{x,0}}.
  {label,345}.
    {line,[{location,"trycatch_SUITE.erl",710}]}.
    {badmatch,{x,0}}.
  {label,346}.
    {line,[{location,"trycatch_SUITE.erl",704}]}.
    {badmatch,{x,0}}.
  {label,347}.
    {line,[{location,"trycatch_SUITE.erl",697}]}.
    {badmatch,{x,0}}.
  {label,348}.
    {line,[{location,"trycatch_SUITE.erl",691}]}.
    {badmatch,{x,0}}.
  {label,349}.
    {line,[{location,"trycatch_SUITE.erl",685}]}.
    {badmatch,{x,0}}.
  {label,350}.
    {line,[{location,"trycatch_SUITE.erl",678}]}.
    {badmatch,{x,0}}.
  {label,351}.
    {line,[{location,"trycatch_SUITE.erl",672}]}.
    {badmatch,{x,0}}.
  {label,352}.
    {line,[{location,"trycatch_SUITE.erl",666}]}.
    {badmatch,{x,0}}.
  {label,353}.
    {line,[{location,"trycatch_SUITE.erl",660}]}.
    {badmatch,{x,0}}.


{function, nested_catch_1, 4, 355}.
  {label,354}.
    {line,[{location,"trycatch_SUITE.erl",749}]}.
    {func_info,{atom,trycatch_SUITE},{atom,nested_catch_1},4}.
  {label,355}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[add]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[add]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 => {t_integer,{2,2}},2 => {t_atom,[c]}}}}}},
              {{2,{t_atom,[error]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[error]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 => {t_tuple,1,true,#{1 => {t_cons,any,any}}},
                      2 => {t_atom,[x1]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 => {t_tuple,1,true,#{1 => {t_cons,any,any}}},
                      2 => {t_atom,[x1]}}}}}}],
             none},
           2 => {t_atom,[error,rethrow,void]},
           3 =>
            {t_union,
             {t_atom,[try_clause,void]},
             none,none,
             {t_tuple,2,true,
              #{1 =>
                 {t_tuple,1,true,
                  #{1 =>
                     {t_cons,
                      {t_union,none,none,
                       {t_float,{1.4142136,1.4142136}},
                       none,identifier},
                      nil}}},
                2 => {t_atom,[x1]}}},
             none}}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_union,
         {t_atom,[void]},
         none,none,
         [{{2,{t_atom,[add]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[add]},
              2 =>
               {t_tuple,2,true,#{1 => {t_integer,{1,1}},2 => {t_atom,[c]}}}}}},
          {{2,{t_atom,[throw]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[throw]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,1,true,
                    #{1 =>
                       {t_cons,
                        {t_union,none,none,
                         {t_float,{1.4142136,1.4142136}},
                         none,identifier},
                        nil}}},
                  2 => {t_atom,[x2]}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,1,true,
                    #{1 =>
                       {t_cons,
                        {t_union,none,none,
                         {t_float,{1.4142136,1.4142136}},
                         none,identifier},
                        nil}}},
                  2 => {t_atom,[x2]}}}}}}],
         none}}]}}.
    {'%',
     {var_info,
      {x,2},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[abs]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[abs]},
              2 =>
               {t_tuple,1,true,
                #{1 =>
                   {t_cons,
                    {t_union,none,none,
                     {t_float,{1.4142136,1.4142136}},
                     none,identifier},
                    nil}}}}}},
          {{2,{t_atom,['div']}},
           {t_tuple,2,true,
            #{1 => {t_atom,['div']},
              2 =>
               {t_union,none,none,none,
                [{{2,{t_integer,{1,1}}},
                  {t_tuple,2,true,
                   #{1 => {t_integer,{1,1}},2 => {t_integer,{0,0}}}}},
                 {{2,{t_integer,{17,17}}},
                  {t_tuple,2,true,
                   #{1 => {t_integer,{17,17}},2 => {t_integer,{0,0}}}}}],
                none}}}},
          {{2,{t_atom,[exit]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[exit]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,1,true,
                    #{1 =>
                       {t_cons,
                        {t_union,none,none,
                         {t_float,{1.4142136,1.4142136}},
                         none,identifier},
                        nil}}},
                  2 => {t_atom,[x3]}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,1,true,
                    #{1 =>
                       {t_cons,
                        {t_union,none,none,
                         {t_float,{1.4142136,1.4142136}},
                         none,identifier},
                        nil}}},
                  2 => {t_atom,[x3]}}}}}}],
         none}}]}}.
    {'%',
     {var_info,
      {x,3},
      [{type,
        {t_union,
         {t_atom,[function_clause]},
         none,none,
         [{{2,{t_atom,[abs]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[abs]},
              2 =>
               {t_tuple,1,true,
                #{1 =>
                   {t_cons,
                    {t_union,none,none,
                     {t_float,{1.4142136,1.4142136}},
                     none,identifier},
                    nil}}}}}},
          {{2,{t_atom,[add]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[add]},
              2 =>
               {t_tuple,2,true,#{1 => {t_integer,{0,0}},2 => {t_atom,[b]}}}}}},
          {{2,{t_atom,[throw]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[throw]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,1,true,
                    #{1 =>
                       {t_cons,
                        {t_union,none,none,
                         {t_float,{1.4142136,1.4142136}},
                         none,identifier},
                        nil}}},
                  2 => {t_atom,[x4]}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_tuple,1,true,
                    #{1 =>
                       {t_cons,
                        {t_union,none,none,
                         {t_float,{1.4142136,1.4142136}},
                         none,identifier},
                        nil}}},
                  2 => {t_atom,[x4]}}}}}}],
         none}}]}}.
    {allocate,9,4}.
    {init_yregs,{list,[{y,0},{y,6},{y,7},{y,8}]}}.
    {move,{x,3},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,0},{y,5}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{atom,nested3},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",751}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{atom,nested4},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",752}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{atom,nested},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",753}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,0}}.
    {'try',{y,8},{f,363}}.
    {'try',{y,7},{f,362}}.
    {'try',{y,6},{f,356}}.
    {line,[{location,"trycatch_SUITE.erl",757}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
  {label,356}.
    {try_case,{y,6}}.
    {test,is_eq_exact,
          {f,361},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,{f,361},[{x,1},{tr,{y,0},reference}]}.
    {get_tuple_element,{y,5},2,{y,0}}.
    {'try',{y,6},{f,360}}.
    {get_tuple_element,{y,5},0,{x,0}}.
    {'try',{y,5},{f,357}}.
    {line,[{scope,"\v"},{location,"trycatch_SUITE.erl",761}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,5}}.
    {test,is_eq_exact,
     {f,365},
     [{x,0},
      {tr,
       {y,0},
       {t_union,
        {t_atom,[try_clause,void]},
        none,none,
        {t_tuple,2,true,
         #{1 =>
            {t_tuple,1,true,
             #{1 =>
                {t_cons,
                 {t_union,none,none,
                  {t_float,{1.4142136,1.4142136}},
                  none,identifier},
                 nil}}},
           2 => {t_atom,[x1]}}},
        none}}]}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1},{y,4},{y,5}]}}.
    {line,[{scope,"\b"},{location,"trycatch_SUITE.erl",763}]}.
    {call,1,{f,394}}. % foo/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,value1},{x,0}]}}.
    {move,{x,0},{y,5}}.
    {jump,{f,358}}.
  {label,357}.
    {try_case,{y,5}}.
    {test,is_eq_exact,
          {f,359},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,1},{t_atom,[error,rethrow,void]}}]}.
    {test,is_eq_exact,
     {f,359},
     [{x,1},
      {tr,
       {y,0},
       {t_union,
        {t_atom,[try_clause,void]},
        none,none,
        {t_tuple,2,true,
         #{1 =>
            {t_tuple,1,true,
             #{1 =>
                {t_cons,
                 {t_union,none,none,
                  {t_float,{1.4142136,1.4142136}},
                  none,identifier},
                 nil}}},
           2 => {t_atom,[x1]}}},
        none}}]}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1},{y,4},{y,5}]}}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",765}]}.
    {call,1,{f,394}}. % foo/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,caught1},{x,0}]}}.
    {move,{x,0},{y,5}}.
  {label,358}.
    {try_end,{y,6}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[6,8]},{location,"trycatch_SUITE.erl",767}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,nested3},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,7}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[6,8]},{location,"trycatch_SUITE.erl",770}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,nested4},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,8}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,5}]}}.
    {move,{x,0},{y,8}}.
    {jump,{f,364}}.
  {label,359}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,360}.
    {try_case,{y,6}}.
    {move,{x,2},{y,4}}.
    {move,{x,1},{y,5}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[3,7,11]},{location,"trycatch_SUITE.erl",767}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,nested3},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,4},{y,5}],{x,0}}.
  {label,361}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,362}.
    {try_case,{y,7}}.
    {move,{x,2},{y,5}}.
    {move,{x,1},{y,6}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[2,14]},{location,"trycatch_SUITE.erl",770}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,nested4},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,5},{y,6}],{x,0}}.
  {label,363}.
    {try_case,{y,8}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,caught},{x,0}]}}.
    {move,{x,0},{y,8}}.
  {label,364}.
    {move,{atom,finalized},{x,1}}.
    {move,{atom,nested},{x,0}}.
    {line,[{scope,[0,3]},{location,"trycatch_SUITE.erl",777}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,nested3},{x,0}}.
    {line,[{scope,[0,3]},{location,"trycatch_SUITE.erl",779}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{x,0},{y,7}}.
    {move,{atom,nested4},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{x,0},{y,6}}.
    {move,{atom,nested},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{y,8},{y,7},{y,6},{x,0}]}}.
    {deallocate,9}.
    return.
  {label,365}.
    {line,[{scope,"\b"},{location,"trycatch_SUITE.erl",760}]}.
    {try_case_end,{x,0}}.


{function, nested_after, 1, 367}.
  {label,366}.
    {line,[{location,"trycatch_SUITE.erl",783}]}.
    {func_info,{atom,trycatch_SUITE},{atom,nested_after},1}.
  {label,367}.
    {test,is_list,{f,366},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,28,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{float,1.4142136},{x,1}]}}.
    {put_list,{x,0},nil,{y,0}}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,2}]}}.
    {line,[{location,"trycatch_SUITE.erl",789}]}.
    {call,3,{f,379}}. % nested_after_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,
             {t_atom,[value]},
             none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 =>
                   {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
             none}}}}]}}.
    {test,is_tagged_tuple,
     {f,377},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,
            {t_atom,[value]},
            none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
            none}}}},
      4,
      {atom,value}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,377},[{x,1}]}.
    {test,test_arity,{f,377},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,377},[{x,2},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,377},[{x,2},2,{atom,value1}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_tuple,{f,377},[{x,2}]}.
    {test,test_arity,{f,377},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,377},[{x,3},{atom,x2}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,377},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,377},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,377},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,2}]}}.
    {line,[{location,"trycatch_SUITE.erl",795}]}.
    {call,3,{f,379}}. % nested_after_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,
             {t_atom,[value]},
             none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 =>
                   {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tuple,
        {f,376},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[value]},
                 none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}}],
                 none}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,376},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,error}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,376},[{x,1}]}.
    {test,test_arity,{f,376},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,376},[{x,2},{atom,x2}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,376},[{x,2}]}.
    {test,test_arity,{f,376},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,376},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,376},[{x,3},{atom,undefined}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,376},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,376},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,376},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,error},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,exit},{x,2}]}}.
    {line,[{location,"trycatch_SUITE.erl",801}]}.
    {call,3,{f,379}}. % nested_after_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,
             {t_atom,[value]},
             none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 =>
                   {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tuple,
        {f,375},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[value]},
                 none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}}],
                 none}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,375},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,exit}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,375},[{x,1}]}.
    {test,test_arity,{f,375},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,375},[{x,2},{atom,x3}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,375},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,375},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_eq_exact,{f,375},[{x,2},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,375},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {test_heap,16,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,void},{atom,try_clause}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,1}]}}.
    {move,{atom,void},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",808}]}.
    {call,3,{f,379}}. % nested_after_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,
             {t_atom,[value]},
             none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 =>
                   {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tuple,
        {f,374},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[value]},
                 none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}}],
                 none}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,374},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,error}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,374},[{x,1},2,{atom,try_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,374},[{x,1}]}.
    {test,test_arity,{f,374},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,374},[{x,2},{atom,x1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,374},[{x,2}]}.
    {test,test_arity,{f,374},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,374},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,374},[{x,3},{atom,undefined}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,374},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,374},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,374},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {test_heap,10,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,void},{atom,try_clause}]}}.
    {move,{literal,{'div',{17,0}}},{x,2}}.
    {move,{atom,void},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",814}]}.
    {call,3,{f,379}}. % nested_after_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,
             {t_atom,[value]},
             none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 =>
                   {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,373},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,
            {t_atom,[value]},
            none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
            none}}}},
      {literal,{{caught,{error,badarith}},undefined,undefined,finalized}}]}.
    {test_heap,22,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,throw},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,throw},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,2},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,2}]}}.
    {line,[{location,"trycatch_SUITE.erl",821}]}.
    {call,3,{f,379}}. % nested_after_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,
             {t_atom,[value]},
             none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 =>
                   {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
             none}}}}]}}.
    {test,is_tagged_tuple,
     {f,372},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,
            {t_atom,[value]},
            none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
            none}}}},
      4,
      {atom,value}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,372},[{x,1}]}.
    {test,test_arity,{f,372},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,372},[{x,2},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_tagged_tuple,{f,372},[{x,2},2,{atom,caught1}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_tuple,{f,372},[{x,2}]}.
    {test,test_arity,{f,372},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,372},[{x,3},{atom,x2}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,372},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,372},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,372},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {test_heap,16,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,throw},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,throw},{x,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,1}]}}.
    {move,{literal,{add,{a,b}}},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",827}]}.
    {call,3,{f,379}}. % nested_after_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,
             {t_atom,[value]},
             none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 =>
                   {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
        {f,371},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[value]},
                 none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}}],
                 none}},
         {literal,{caught,{error,badarith}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,371},[{x,1}]}.
    {test,test_arity,{f,371},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,371},[{x,2},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,371},[{x,2},{atom,undefined}]}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_eq_exact,{f,371},[{x,2},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,371},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {test_heap,13,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,throw},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,throw},{x,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,abs},{y,0}]}}.
    {move,{literal,{add,{a,b}}},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",833}]}.
    {call,3,{f,379}}. % nested_after_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,
             {t_atom,[value]},
             none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 =>
                   {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,370},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,
            {t_atom,[value]},
            none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
            none}}}},
      {literal,{{caught,{error,badarg}},undefined,undefined,finalized}}]}.
    {test_heap,16,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,rethrow},{atom,void}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x3}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,1}]}}.
    {move,{atom,void},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",840}]}.
    {call,3,{f,379}}. % nested_after_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,
             {t_atom,[value]},
             none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 =>
                   {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tuple,
        {f,369},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[value]},
                 none,none,
                 [{{2,{t_atom,[caught]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[caught]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[error,exit,throw]}}}}}}],
                 none}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,369},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,throw}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,369},[{x,1}]}.
    {test,test_arity,{f,369},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,369},[{x,2},{atom,x1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,369},[{x,2}]}.
    {test,test_arity,{f,369},[{x,2},2]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,369},[{x,3},{atom,x3}]}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,369},[{x,3},{atom,undefined}]}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,369},[{x,3},{atom,finalized}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,369},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,369},
          [{x,1},
           {tr,{y,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => reference,
                                  2 => {t_float,{1.4142136,1.4142136}},
                                  3 => pid}},
                       nil}}]}.
    {test_heap,10,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,throw},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,rethrow},{atom,void}]}}.
    {move,{literal,{'div',{1,0}}},{x,2}}.
    {move,{atom,void},{x,1}}.
    {trim,1,0}.
    {line,[{location,"trycatch_SUITE.erl",846}]}.
    {call,3,{f,379}}. % nested_after_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 =>
            {t_union,
             {t_atom,[value]},
             none,none,
             [{{2,{t_atom,[caught]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[caught]},
                  2 =>
                   {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,368},
     [{tr,
       {x,0},
       {t_tuple,4,true,
        #{1 =>
           {t_union,
            {t_atom,[value]},
            none,none,
            [{{2,{t_atom,[caught]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[caught]},
                 2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
            none}}}},
      {literal,{{caught,{error,badarith}},undefined,undefined,finalized}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,368}.
    {line,[{location,"trycatch_SUITE.erl",842}]}.
    {badmatch,{x,0}}.
  {label,369}.
    {line,[{location,"trycatch_SUITE.erl",836}]}.
    {badmatch,{x,0}}.
  {label,370}.
    {line,[{location,"trycatch_SUITE.erl",829}]}.
    {badmatch,{x,0}}.
  {label,371}.
    {line,[{location,"trycatch_SUITE.erl",823}]}.
    {badmatch,{x,0}}.
  {label,372}.
    {line,[{location,"trycatch_SUITE.erl",817}]}.
    {badmatch,{x,0}}.
  {label,373}.
    {line,[{location,"trycatch_SUITE.erl",810}]}.
    {badmatch,{x,0}}.
  {label,374}.
    {line,[{location,"trycatch_SUITE.erl",804}]}.
    {badmatch,{x,0}}.
  {label,375}.
    {line,[{location,"trycatch_SUITE.erl",797}]}.
    {badmatch,{x,0}}.
  {label,376}.
    {line,[{location,"trycatch_SUITE.erl",791}]}.
    {badmatch,{x,0}}.
  {label,377}.
    {line,[{location,"trycatch_SUITE.erl",785}]}.
    {badmatch,{x,0}}.


{function, nested_after_1, 3, 379}.
  {label,378}.
    {line,[{location,"trycatch_SUITE.erl",850}]}.
    {func_info,{atom,trycatch_SUITE},{atom,nested_after_1},3}.
  {label,379}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[throw]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[throw]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 => {t_cons,{t_tuple,0,false,#{}},nil},
                      2 => {t_atom,[x1]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 => {t_cons,{t_tuple,0,false,#{}},nil},
                      2 => {t_atom,[x1]}}}}}}],
             none},
           2 => {t_atom,[rethrow,throw,void]},
           3 =>
            {t_union,
             {t_atom,[try_clause,void]},
             none,none,
             {t_tuple,2,true,
              #{1 =>
                 {t_cons,
                  {t_tuple,3,true,
                   #{1 => reference,
                     2 => {t_float,{1.4142136,1.4142136}},
                     3 => pid}},
                  nil},
                2 => {t_atom,[x1]}}},
             none}}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_union,
         {t_atom,[void]},
         none,none,
         [{{2,{t_atom,[add]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[add]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}}},
          {{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_cons,
                    {t_tuple,3,true,
                     #{1 => reference,
                       2 => {t_float,{1.4142136,1.4142136}},
                       3 => pid}},
                    nil},
                  2 => {t_atom,[x2]}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_cons,
                    {t_tuple,3,true,
                     #{1 => reference,
                       2 => {t_float,{1.4142136,1.4142136}},
                       3 => pid}},
                    nil},
                  2 => {t_atom,[x2]}}}}}}],
         none}}]}}.
    {'%',
     {var_info,
      {x,2},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[abs]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[abs]},
              2 =>
               {t_cons,
                {t_tuple,3,true,
                 #{1 => reference,
                   2 => {t_float,{1.4142136,1.4142136}},
                   3 => pid}},
                nil}}}},
          {{2,{t_atom,['div']}},
           {t_tuple,2,true,
            #{1 => {t_atom,['div']},
              2 =>
               {t_union,none,none,none,
                [{{2,{t_integer,{1,1}}},
                  {t_tuple,2,true,
                   #{1 => {t_integer,{1,1}},2 => {t_integer,{0,0}}}}},
                 {{2,{t_integer,{17,17}}},
                  {t_tuple,2,true,
                   #{1 => {t_integer,{17,17}},2 => {t_integer,{0,0}}}}}],
                none}}}},
          {{2,{t_atom,[exit]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[exit]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_cons,
                    {t_tuple,3,true,
                     #{1 => reference,
                       2 => {t_float,{1.4142136,1.4142136}},
                       3 => pid}},
                    nil},
                  2 => {t_atom,[x3]}}}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},
              2 =>
               {t_tuple,2,true,
                #{1 =>
                   {t_cons,
                    {t_tuple,3,true,
                     #{1 => reference,
                       2 => {t_float,{1.4142136,1.4142136}},
                       3 => pid}},
                    nil},
                  2 => {t_atom,[x3]}}}}}}],
         none}}]}}.
    {allocate,7,3}.
    {init_yregs,{list,[{y,0},{y,1},{y,5},{y,6}]}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{atom,nested3},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",852}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{atom,nested4},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",853}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{atom,nested},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",854}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {get_tuple_element,{y,4},1,{y,1}}.
    {'try',{y,6},{f,384}}.
    {get_tuple_element,{y,4},2,{y,0}}.
    {'try',{y,5},{f,383}}.
    {get_tuple_element,{y,4},0,{x,0}}.
    {'try',{y,4},{f,380}}.
    {line,[{location,"trycatch_SUITE.erl",862}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,4}}.
    {test,is_eq_exact,
        {f,386},
        [{x,0},
         {tr,{y,0},
             {t_union,
                 {t_atom,[try_clause,void]},
                 none,none,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_cons,
                               {t_tuple,3,true,
                                   #{1 => reference,
                                     2 => {t_float,{1.4142136,1.4142136}},
                                     3 => pid}},
                               nil},
                       2 => {t_atom,[x1]}}},
                 none}}]}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1},{y,3},{y,4}]}}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",864}]}.
    {call,1,{f,394}}. % foo/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,value1},{x,0}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,381}}.
  {label,380}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,382},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,1},{t_atom,[rethrow,throw,void]}}]}.
    {test,is_eq_exact,
        {f,382},
        [{x,1},
         {tr,{y,0},
             {t_union,
                 {t_atom,[try_clause,void]},
                 none,none,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_cons,
                               {t_tuple,3,true,
                                   #{1 => reference,
                                     2 => {t_float,{1.4142136,1.4142136}},
                                     3 => pid}},
                               nil},
                       2 => {t_atom,[x1]}}},
                 none}}]}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1},{y,3},{y,4}]}}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",866}]}.
    {call,1,{f,394}}. % foo/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,caught1},{x,0}]}}.
    {move,{x,0},{y,4}}.
  {label,381}.
    {try_end,{y,5}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[4,6]},{location,"trycatch_SUITE.erl",868}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,nested3},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,4},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{atom,nested4},{x,0}}.
    {line,[{scope,[4,6]},{location,"trycatch_SUITE.erl",870}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,6}}.
    {move,{atom,value},{y,6}}.
    {jump,{f,385}}.
  {label,382}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,383}.
    {try_case,{y,5}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[2,5,9]},{location,"trycatch_SUITE.erl",868}]}.
    {call,1,{f,394}}. % foo/1
    {move,{x,0},{x,1}}.
    {move,{atom,nested3},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,raise,{f,0},[{y,3},{y,4}],{x,0}}.
  {label,384}.
    {try_case,{y,6}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,caught},{x,0}]}}.
    {move,{x,0},{y,6}}.
  {label,385}.
    {move,{atom,finalized},{x,1}}.
    {move,{atom,nested},{x,0}}.
    {line,[{scope,[0,2]},{location,"trycatch_SUITE.erl",877}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,nested3},{x,0}}.
    {line,[{scope,[0,2]},{location,"trycatch_SUITE.erl",879}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{x,0},{y,5}}.
    {move,{atom,nested4},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{x,0},{y,4}}.
    {move,{atom,nested},{x,0}}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{y,6},{y,5},{y,4},{x,0}]}}.
    {deallocate,7}.
    return.
  {label,386}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",861}]}.
    {try_case_end,{x,0}}.


{function, nested_horrid, 1, 388}.
  {label,387}.
    {line,[{location,"trycatch_SUITE.erl",883}]}.
    {func_info,{atom,trycatch_SUITE},{atom,nested_horrid},1}.
  {label,388}.
    {test,is_list,{f,387},[{x,0}]}.
    {allocate,0,0}.
    {move,{float,1.0},{x,1}}.
    {move,{literal,{true,void,void}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",885}]}.
    {call,2,{f,391}}. % nested_horrid_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_cons,{t_atom,[true]},nil},
           2 =>
            {t_tuple,2,true,
             #{1 =>
                {t_cons,
                 {t_union,{t_atom,[true]},none,{t_float,{1.0,1.0}},none,none},
                 nil}}}}}}]}}.
    {test,is_eq_exact,
     {f,389},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 => {t_cons,{t_atom,[true]},nil},
          2 =>
           {t_tuple,2,true,
            #{1 =>
               {t_cons,
                {t_union,{t_atom,[true]},none,{t_float,{1.0,1.0}},none,none},
                nil}}}}}},
      {literal,{[true,true],{[true,1.0],1.0}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,389}.
    {line,[{location,"trycatch_SUITE.erl",884}]}.
    {badmatch,{x,0}}.


{function, nested_horrid_1, 2, 391}.
  {label,390}.
    {line,[{location,"trycatch_SUITE.erl",888}]}.
    {func_info,{atom,trycatch_SUITE},{atom,nested_horrid_1},2}.
  {label,391}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[true]},
                                     2 => {t_atom,[void]},
                                     3 => {t_atom,[void]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_float,{1.0,1.0}}}]}}.
    {allocate,1,0}.
    {'try',{y,0},{f,392}}.
    {move,{float,1.0},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",892}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},{list,[{literal,[true,1.0]},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{literal,[true,true]},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,392}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, foo, 1, 394}.
  {label,393}.
    {line,[{location,"trycatch_SUITE.erl",906}]}.
    {func_info,{atom,trycatch_SUITE},{atom,foo},1}.
  {label,394}.
    {test,is_tuple,{f,403},[{x,0}]}.
    {test,test_arity,{f,403},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {select_val,{x,1},
                {f,403},
                {list,[{atom,abs},
                       {f,402},
                       {atom,add},
                       {f,401},
                       {atom,'div'},
                       {f,400},
                       {atom,error},
                       {f,399},
                       {atom,exit},
                       {f,398},
                       {atom,raise},
                       {f,397},
                       {atom,throw},
                       {f,396},
                       {atom,value},
                       {f,395}]}}.
  {label,395}.
    {move,{x,2},{x,0}}.
    return.
  {label,396}.
    {move,{x,2},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",916}]}.
    {call_ext_only,1,{extfunc,erlang,throw,1}}.
  {label,397}.
    {test,is_tuple,{f,403},[{x,2}]}.
    {test,test_arity,{f,403},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,0}}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",920}]}.
    {call_ext_only,2,{extfunc,erlang,raise,2}}.
  {label,398}.
    {move,{x,2},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",918}]}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.
  {label,399}.
    {move,{x,2},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",914}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,400}.
    {test,is_tuple,{f,403},[{x,2}]}.
    {test,test_arity,{f,403},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,0}}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {call_only,2,{f,406}}. % my_div/2
  {label,401}.
    {test,is_tuple,{f,403},[{x,2}]}.
    {test,test_arity,{f,403},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,0}}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {call_only,2,{f,408}}. % my_add/2
  {label,402}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,410}}. % my_abs/1
  {label,403}.
    {test,is_atom,{f,404},[{x,0}]}.
    {jump,{f,393}}.
  {label,404}.
    return.


{function, my_div, 2, 406}.
  {label,405}.
    {line,[{location,"trycatch_SUITE.erl",924}]}.
    {func_info,{atom,trycatch_SUITE},{atom,my_div},2}.
  {label,406}.
    {line,[{location,"trycatch_SUITE.erl",925}]}.
    {gc_bif,'div',{f,0},2,[{x,0},{x,1}],{x,0}}.
    return.


{function, my_add, 2, 408}.
  {label,407}.
    {line,[{location,"trycatch_SUITE.erl",927}]}.
    {func_info,{atom,trycatch_SUITE},{atom,my_add},2}.
  {label,408}.
    {line,[{location,"trycatch_SUITE.erl",928}]}.
    {gc_bif,'+',{f,0},2,[{x,0},{x,1}],{x,0}}.
    return.


{function, my_abs, 1, 410}.
  {label,409}.
    {line,[{location,"trycatch_SUITE.erl",930}]}.
    {func_info,{atom,trycatch_SUITE},{atom,my_abs},1}.
  {label,410}.
    {gc_bif,abs,{f,0},1,[{x,0}],{x,0}}.
    return.


{function, last_call_optimization, 1, 412}.
  {label,411}.
    {line,[{location,"trycatch_SUITE.erl",933}]}.
    {func_info,{atom,trycatch_SUITE},{atom,last_call_optimization},1}.
  {label,412}.
    {test,is_list,{f,411},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{atom,dum},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",934}]}.
    {call,1,{f,415}}. % in_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",935}]}.
    {call,1,{f,415}}. % in_tail/1
    {move,{x,0},{y,1}}.
    {move,{integer,50000},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",936}]}.
    {call,1,{f,415}}. % in_tail/1
    {test_heap,2,1}.
    {put_list,{y,1},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"StkSize0 = ~p"},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",937}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,2,0}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{literal,"StkSize  = ~p"},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",938}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test,is_eq_exact,{f,413},[{y,1},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,413}.
    {line,[{location,"trycatch_SUITE.erl",939}]}.
    {badmatch,{y,1}}.


{function, in_tail, 1, 415}.
  {label,414}.
    {line,[{location,"trycatch_SUITE.erl",942}]}.
    {func_info,{atom,trycatch_SUITE},{atom,in_tail},1}.
  {label,415}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[dum]},
                                   none,
                                   {t_integer,any},
                                   none,none}}]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'try',{y,2},{f,416}}.
    {line,[{location,"trycatch_SUITE.erl",943}]}.
    {gc_bif,abs,
            {f,0},
            1,
            [{tr,{x,0},
                 {t_union,{t_atom,[dum]},none,{t_integer,any},none,none}}],
            {y,1}}.
    {try_end,{y,2}}.
    {move,nil,{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",945}]}.
    {call,1,{f,743}}. % id/1
    {move,{x,0},{y,2}}.
    {move,nil,{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",946}]}.
    {call,1,{f,743}}. % id/1
    {move,{x,0},{y,0}}.
    {move,nil,{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",947}]}.
    {call,1,{f,743}}. % id/1
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"trycatch_SUITE.erl",948}]}.
    {call,1,{f,743}}. % id/1
    {move,{y,0},{x,0}}.
    {call_last,1,{f,419},1}. % do_tail/1
  {label,416}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,417},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,417},[{x,1},{atom,badarg}]}.
    {move,{atom,error},{x,0}}.
    {deallocate,3}.
    return.
  {label,417}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, do_tail, 1, 419}.
  {label,418}.
    {line,[{location,"trycatch_SUITE.erl",953}]}.
    {func_info,{atom,trycatch_SUITE},{atom,do_tail},1}.
  {label,419}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,420},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,stack_size},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",954}]}.
    {call_ext_only,2,{extfunc,erlang,process_info,2}}.
  {label,420}.
    {line,[{location,"trycatch_SUITE.erl",956}]}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,1}],{x,0}}.
    {call_only,1,{f,415}}. % in_tail/1


{function, bool, 1, 422}.
  {label,421}.
    {line,[{location,"trycatch_SUITE.erl",958}]}.
    {func_info,{atom,trycatch_SUITE},{atom,bool},1}.
  {label,422}.
    {test,is_list,{f,421},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",959}]}.
    {call,2,{f,427}}. % do_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,425},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",960}]}.
    {call,2,{f,427}}. % do_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",961}]}.
    {call,2,{f,427}}. % do_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",962}]}.
    {call,2,{f,427}}. % do_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,blurf},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",963}]}.
    {call,2,{f,427}}. % do_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,0},{f,423}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",964}]}.
    {call,2,{f,427}}. % do_bool/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,423}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,424},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,424}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",964}]}.
    {badmatch,{x,0}}.
  {label,425}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",959}]}.
    {badmatch,{atom,error}}.


{function, do_bool, 2, 427}.
  {label,426}.
    {line,[{location,"trycatch_SUITE.erl",968}]}.
    {func_info,{atom,trycatch_SUITE},{atom,do_bool},2}.
  {label,427}.
    {'%',{var_info,{x,0},[{type,{t_atom,[blurf,false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[blurf,false,true]}}]}}.
    {line,[{location,"trycatch_SUITE.erl",969}]}.
    {bif,'not',{f,0},[{tr,{x,0},{t_atom,[blurf,false,true]}}],{x,2}}.
    {allocate,3,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {'try',{y,2},{f,428}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",971}]}.
    {call,1,{f,743}}. % id/1
    {test,is_ne_exact,{f,429},[{y,1},{atom,true}]}.
    {test,is_eq_exact,
          {f,429},
          [{tr,{y,0},{t_atom,[blurf,false,true]}},{atom,false}]}.
    {try_end,{y,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,428}.
    {try_case,{y,2}}.
    {move,{atom,error},{x,0}}.
    {deallocate,3}.
    return.
  {label,429}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",972}]}.
    if_end.


{function, andalso_orelse, 1, 431}.
  {label,430}.
    {line,[{location,"trycatch_SUITE.erl",980}]}.
    {func_info,{atom,trycatch_SUITE},{atom,andalso_orelse},1}.
  {label,431}.
    {test,is_list,{f,430},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{a,42}},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",981}]}.
    {call,2,{f,439}}. % andalso_orelse_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,
                               {t_atom,[a,b,caught]},
                               none,
                               {t_integer,{1,16777215}},
                               none,none},
                       2 =>
                           {t_union,
                               {t_atom,[no_tuple]},
                               none,none,
                               [{{1,{t_atom,[b]}},
                                 {t_tuple,1,true,#{1 => {t_atom,[b]}}}},
                                {{2,{t_atom,[a]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[a]},
                                       2 => {t_integer,{42,42}}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,437},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,
                           {t_atom,[a,b,caught]},
                           none,
                           {t_integer,{1,16777215}},
                           none,none},
                   2 =>
                       {t_union,
                           {t_atom,[no_tuple]},
                           none,none,
                           [{{1,{t_atom,[b]}},
                             {t_tuple,1,true,#{1 => {t_atom,[b]}}}},
                            {{2,{t_atom,[a]}},
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[a]},
                                   2 => {t_integer,{42,42}}}}}],
                           none}}}},
         {literal,{2,{a,42}}}]}.
    {move,{literal,{b}},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",982}]}.
    {call,2,{f,439}}. % andalso_orelse_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,
                               {t_atom,[a,b,caught]},
                               none,
                               {t_integer,{1,16777215}},
                               none,none},
                       2 =>
                           {t_union,
                               {t_atom,[no_tuple]},
                               none,none,
                               [{{1,{t_atom,[b]}},
                                 {t_tuple,1,true,#{1 => {t_atom,[b]}}}},
                                {{2,{t_atom,[a]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[a]},
                                       2 => {t_integer,{42,42}}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,436},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,
                           {t_atom,[a,b,caught]},
                           none,
                           {t_integer,{1,16777215}},
                           none,none},
                   2 =>
                       {t_union,
                           {t_atom,[no_tuple]},
                           none,none,
                           [{{1,{t_atom,[b]}},
                             {t_tuple,1,true,#{1 => {t_atom,[b]}}}},
                            {{2,{t_atom,[a]}},
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[a]},
                                   2 => {t_integer,{42,42}}}}}],
                           none}}}},
         {literal,{b,{b}}}]}.
    {move,{atom,no_tuple},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",983}]}.
    {call,2,{f,439}}. % andalso_orelse_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[caught]},
                       2 =>
                           {t_union,
                               {t_atom,[no_tuple]},
                               none,none,
                               [{{1,{t_atom,[b]}},
                                 {t_tuple,1,true,#{1 => {t_atom,[b]}}}},
                                {{2,{t_atom,[a]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[a]},
                                       2 => {t_integer,{42,42}}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,435},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[caught]},
                   2 =>
                       {t_union,
                           {t_atom,[no_tuple]},
                           none,none,
                           [{{1,{t_atom,[b]}},
                             {t_tuple,1,true,#{1 => {t_atom,[b]}}}},
                            {{2,{t_atom,[a]}},
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[a]},
                                   2 => {t_integer,{42,42}}}}}],
                           none}}}},
         {literal,{caught,no_tuple}}]}.
    {move,{literal,{type,[a]}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",985}]}.
    {call,1,{f,445}}. % andalso_orelse_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[also_ok,ok]}}]}}.
    {test,is_eq_exact,{f,434},[{tr,{x,0},{t_atom,[also_ok,ok]}},{atom,ok}]}.
    {move,{literal,{type,[]}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",986}]}.
    {call,1,{f,445}}. % andalso_orelse_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[also_ok,ok]}}]}}.
    {test,is_eq_exact,
          {f,433},
          [{tr,{x,0},{t_atom,[also_ok,ok]}},{atom,also_ok}]}.
    {move,{literal,{type,{a}}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",987}]}.
    {call,1,{f,445}}. % andalso_orelse_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[also_ok,ok]}}]}}.
    {test,is_eq_exact,
          {f,432},
          [{tr,{x,0},{t_atom,[also_ok,ok]}},{atom,also_ok}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,432}.
    {badmatch,{atom,ok}}.
  {label,433}.
    {line,[{location,"trycatch_SUITE.erl",986}]}.
    {badmatch,{atom,ok}}.
  {label,434}.
    {line,[{location,"trycatch_SUITE.erl",985}]}.
    {badmatch,{atom,also_ok}}.
  {label,435}.
    {line,[{location,"trycatch_SUITE.erl",983}]}.
    {badmatch,{x,0}}.
  {label,436}.
    {line,[{location,"trycatch_SUITE.erl",982}]}.
    {badmatch,{x,0}}.
  {label,437}.
    {line,[{location,"trycatch_SUITE.erl",981}]}.
    {badmatch,{x,0}}.


{function, andalso_orelse_1, 2, 439}.
  {label,438}.
    {line,[{location,"trycatch_SUITE.erl",990}]}.
    {func_info,{atom,trycatch_SUITE},{atom,andalso_orelse_1},2}.
  {label,439}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[no_tuple]},
                     none,none,
                     [{{1,{t_atom,[b]}},{t_tuple,1,true,#{1 => {t_atom,[b]}}}},
                      {{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_integer,{42,42}}}}}],
                     none}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {'try',{y,1},{f,442}}.
    {test,is_eq_exact,{f,440},[{x,0},{atom,true}]}.
    {bif,element,
         {f,440},
         [{integer,1},
          {tr,{x,1},
              {t_union,{t_atom,[no_tuple]},
                       none,none,
                       [{{1,{t_atom,[b]}},
                         {t_tuple,1,true,#{1 => {t_atom,[b]}}}},
                        {{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_integer,{42,42}}}}}],
                       none}}],
         {x,0}}.
    {test,is_eq_exact,{f,440},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bif,tuple_size,
         {f,0},
         [{tr,{x,1},
              {t_union,none,none,none,
                       [{{1,{t_atom,[b]}},
                         {t_tuple,1,true,#{1 => {t_atom,[b]}}}},
                        {{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_integer,{42,42}}}}}],
                       none}}],
         {x,0}}.
    {jump,{f,441}}.
  {label,440}.
    {line,[{location,"trycatch_SUITE.erl",996}]}.
    {bif,element,
         {f,0},
         [{integer,1},
          {tr,{x,1},
              {t_union,{t_atom,[no_tuple]},
                       none,none,
                       [{{1,{t_atom,[b]}},
                         {t_tuple,1,true,#{1 => {t_atom,[b]}}}},
                        {{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_integer,{42,42}}}}}],
                       none}}],
         {x,0}}.
  {label,441}.
    {try_end,{y,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,2}.
    return.
  {label,442}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,443},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,caught},{y,0}]}}.
    {deallocate,2}.
    return.
  {label,443}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, andalso_orelse_2, 1, 445}.
  {label,444}.
    {line,[{location,"trycatch_SUITE.erl",1002}]}.
    {func_info,{atom,trycatch_SUITE},{atom,andalso_orelse_2},1}.
  {label,445}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[type]},
                       2 =>
                           {t_union,none,
                               {t_list,{t_atom,[a]},nil},
                               none,
                               [{{1,{t_atom,[a]}},
                                 {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                               none}}}}]}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {gc_bif,length,
            {f,446},
            1,
            [{tr,{x,0},
                 {t_union,none,
                          {t_list,{t_atom,[a]},nil},
                          none,
                          [{{1,{t_atom,[a]}},
                            {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                          none}}],
            {x,0}}.
    {test,is_ge,
          {f,446},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,446}.
    {move,{atom,also_ok},{x,0}}.
    return.


{function, zero, 0, 448}.
  {label,447}.
    {line,[{location,"trycatch_SUITE.erl",1011}]}.
    {func_info,{atom,trycatch_SUITE},{atom,zero},0}.
  {label,448}.
    {move,{float,0.0},{x,0}}.
    return.


{function, get_in_try, 1, 450}.
  {label,449}.
    {line,[{location,"trycatch_SUITE.erl",1014}]}.
    {func_info,{atom,trycatch_SUITE},{atom,get_in_try},1}.
  {label,450}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1015}]}.
    {call,2,{f,453}}. % get_valid_line/2
    {test,is_eq_exact,{f,451},[{x,0},{atom,undefined}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,451}.
    {badmatch,{x,0}}.


{function, get_valid_line, 2, 453}.
  {label,452}.
    {line,[{location,"trycatch_SUITE.erl",1018}]}.
    {func_info,{atom,trycatch_SUITE},{atom,get_valid_line},2}.
  {label,453}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {test,is_nonempty_list,{f,452},[{x,0}]}.
    {bif,get,{f,0},[{tr,{x,0},{t_cons,{t_atom,[a]},nil}}],{x,0}}.
    return.


{function, hockey, 1, 455}.
  {label,454}.
    {line,[{location,"trycatch_SUITE.erl",1028}]}.
    {func_info,{atom,trycatch_SUITE},{atom,hockey},1}.
  {label,455}.
    {allocate,1,0}.
    {'catch',{y,0},{f,456}}.
    {line,[{location,"trycatch_SUITE.erl",1029}]}.
    {call,0,{f,459}}. % hockey/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,456}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,457},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,457},[{x,1}]}.
    {test,test_arity,{f,457},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,457},[{x,2},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,457},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,457}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1029}]}.
    {badmatch,{x,0}}.


{function, hockey, 0, 459}.
  {label,458}.
    {line,[{location,"trycatch_SUITE.erl",1032}]}.
    {func_info,{atom,trycatch_SUITE},{atom,hockey},0}.
  {label,459}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {loop_rec,{f,460},{x,0}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    remove_message.
    {make_fun3,{f,771},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",1035}]}.
    {badmatch,{x,0}}.
  {label,460}.
    timeout.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,769},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {'try',{y,0},{f,461}}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",1036}]}.
    {badmatch,{x,0}}.
  {label,461}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,462},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,462}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, handle_info, 1, 464}.
  {label,463}.
    {line,[{location,"trycatch_SUITE.erl",1042}]}.
    {func_info,{atom,trycatch_SUITE},{atom,handle_info},1}.
  {label,464}.
    {allocate,0,0}.
    {move,{literal,{state,undefined}},{x,1}}.
    {move,{literal,{foo}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1043}]}.
    {call,2,{f,466}}. % do_handle_info/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[stop]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[state]},
                                 2 => {t_atom,[undefined]}}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, do_handle_info, 2, 466}.
  {label,465}.
    {line,[{location,"trycatch_SUITE.erl",1046}]}.
    {func_info,{atom,trycatch_SUITE},{atom,do_handle_info},2}.
  {label,466}.
    {'%',{var_info,{x,0},[{type,{t_tuple,1,true,#{1 => {t_atom,[foo]}}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[state]},
                                     2 => {t_atom,[undefined]}}}}]}}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"trycatch_SUITE.erl",1047}]}.
    {call,0,{f,470}}. % handle_info_ok/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,467}}.
    {line,[{location,"trycatch_SUITE.erl",1051}]}.
    {call,0,{f,470}}. % handle_info_ok/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,467}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,{f,468},[{x,0},{atom,ok}]}.
    {move,{literal,{stop,{state,undefined}}},{x,0}}.
    {deallocate,1}.
    return.
  {label,468}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1051}]}.
    {case_end,{x,0}}.


{function, handle_info_ok, 0, 470}.
  {label,469}.
    {line,[{location,"trycatch_SUITE.erl",1069}]}.
    {func_info,{atom,trycatch_SUITE},{atom,handle_info_ok},0}.
  {label,470}.
    {move,{atom,ok},{x,0}}.
    return.


{function, catch_in_catch, 1, 472}.
  {label,471}.
    {line,[{location,"trycatch_SUITE.erl",1071}]}.
    {func_info,{atom,trycatch_SUITE},{atom,catch_in_catch},1}.
  {label,472}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,trap_exit},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1072}]}.
    {call_ext,2,{extfunc,erlang,process_flag,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,767},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"trycatch_SUITE.erl",1073}]}.
    {call_ext,1,{extfunc,erlang,spawn_link,1}}.
    {move,{x,0},{y,0}}.
  {label,473}.
    {loop_rec,{f,475},{x,0}}.
    {test,is_tagged_tuple,{f,474},[{x,0},3,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,474},[{x,2},{atom,good_exit}]}.
    {test,is_eq_exact,{f,474},[{x,1},{tr,{y,0},pid}]}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,474}.
    {test_heap,2,1}.
    remove_message.
    {put_list,{x,0},nil,{x,1}}.
    {trim,1,0}.
    {move,{literal,"Unexpected: ~p\n"},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1081}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,error},{x,0}}.
    {deallocate,0}.
    return.
  {label,475}.
    {wait_timeout,{f,473},{integer,32000}}.
    timeout.
    {trim,1,0}.
    {move,{literal,"No message received\n"},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1084}]}.
    {call_ext,1,{extfunc,io,format,1}}.
    {move,{atom,error},{x,0}}.
    {deallocate,0}.
    return.


{function, catch_in_catch_init, 1, 477}.
  {label,476}.
    {line,[{location,"trycatch_SUITE.erl",1088}]}.
    {func_info,{atom,trycatch_SUITE},{atom,catch_in_catch_init},1}.
  {label,477}.
    {'%',{var_info,{x,0},[{type,{t_atom,[x]}}]}}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,trap_exit},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1089}]}.
    {call_ext,2,{extfunc,erlang,process_flag,2}}.
    {'try',{y,1},{f,479}}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1092}]}.
    {call,1,{f,743}}. % id/1
    {'catch',{y,0},{f,478}}.
    {move,{atom,bar},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1093}]}.
    {call_ext,1,{extfunc,erlang,exit,1}}.
  {label,478}.
    {catch_end,{y,0}}.
    {try_end,{y,1}}.
    {jump,{f,480}}.
  {label,479}.
    {try_case,{y,1}}.
  {label,480}.
    {move,{atom,ignore},{x,0}}.
    {deallocate,2}.
    return.


{function, grab_bag, 1, 482}.
  {label,481}.
    {line,[{location,"trycatch_SUITE.erl",1098}]}.
    {func_info,{atom,trycatch_SUITE},{atom,grab_bag},1}.
  {label,482}.
    {allocate,1,0}.
    {'try',{y,0},{f,484}}.
    {move,nil,{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1110}]}.
    {call_ext,1,{extfunc,io,fwrite,1}}.
    {try_end,{y,0}}.
    {move,{atom,any},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1121}]}.
    {call,1,{f,490}}. % grab_bag_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_fun,1,{id,1},any}}}]}}.
    {test,is_function2,
          {f,488},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_fun,1,{id,1},any}}},
           {integer,1}]}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1125}]}.
    {call,1,{f,494}}. % grab_bag_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,487},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {'catch',{y,0},{f,483}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1127}]}.
    {call,0,{f,496}}. % grab_bag_3/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,483}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,486},[{x,0},2,{atom,'EXIT'}]}.
    {line,[{scope,[2,3]},{location,"trycatch_SUITE.erl",1129}]}.
    {call,0,{f,498}}. % grab_bag_4/0
    {test,is_eq_exact,{f,485},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,484}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,485}.
    {line,[{scope,[1]},{location,"trycatch_SUITE.erl",1129}]}.
    {badmatch,{x,0}}.
  {label,486}.
    {line,[{scope,[1]},{location,"trycatch_SUITE.erl",1127}]}.
    {badmatch,{x,0}}.
  {label,487}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1125}]}.
    {badmatch,{x,0}}.
  {label,488}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1122}]}.
    {badmatch,{atom,false}}.


{function, grab_bag_1, 1, 490}.
  {label,489}.
    {line,[{location,"trycatch_SUITE.erl",1133}]}.
    {func_info,{atom,trycatch_SUITE},{atom,grab_bag_1},1}.
  {label,490}.
    {'%',{var_info,{x,0},[{type,{t_atom,[any]}}]}}.
    {allocate,1,0}.
    {'try',{y,0},{f,491}}.
    timeout.
    {try_end,{y,0}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,743},0,0,{x,0},{list,[]}}.
    {deallocate,1}.
    return.
  {label,491}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,{f,492},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,492}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, grab_bag_2, 1, 494}.
  {label,493}.
    {line,[{location,"trycatch_SUITE.erl",1154}]}.
    {func_info,{atom,trycatch_SUITE},{atom,grab_bag_2},1}.
  {label,494}.
    {'%',{var_info,{x,0},[{type,{t_atom,[whatever]}}]}}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {deallocate,0}.
    return.


{function, grab_bag_3, 0, 496}.
  {label,495}.
    {line,[{location,"trycatch_SUITE.erl",1172}]}.
    {func_info,{atom,trycatch_SUITE},{atom,grab_bag_3},0}.
  {label,496}.
    {line,[{location,"trycatch_SUITE.erl",1173}]}.
    {try_case_end,{integer,2}}.


{function, grab_bag_4, 0, 498}.
  {label,497}.
    {line,[{location,"trycatch_SUITE.erl",1185}]}.
    {func_info,{atom,trycatch_SUITE},{atom,grab_bag_4},0}.
  {label,498}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {'try',{y,3},{f,501}}.
    {line,[{location,"trycatch_SUITE.erl",1187}]}.
    {call_ext,0,{extfunc,erlang,yield,0}}.
    {move,{x,0},{y,1}}.
    {try_end,{y,3}}.
    {'try',{y,3},{f,500}}.
    {'catch',{y,2},{f,499}}.
    {line,[{location,"trycatch_SUITE.erl",1191}]}.
    {badmatch,{atom,ok}}.
  {label,499}.
    {catch_end,{y,2}}.
    {gc_bif,size,{f,0},1,[{x,0}],{x,0}}.
    {line,[{scope,"\b"},{location,"trycatch_SUITE.erl",1191}]}.
    {badmatch,{x,0}}.
  {label,500}.
    {try_case,{y,3}}.
    {move,{y,1},{x,0}}.
    {deallocate,4}.
    return.
  {label,501}.
    {try_case,{y,3}}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {'try',{y,3},{f,503}}.
    {'catch',{y,2},{f,502}}.
    {line,[{scope,"\v"},{location,"trycatch_SUITE.erl",1191}]}.
    {badmatch,{atom,ok}}.
  {label,502}.
    {catch_end,{y,2}}.
    {line,[{location,"trycatch_SUITE.erl",1191}]}.
    {gc_bif,size,{f,0},1,[{x,0}],{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1191}]}.
    {badmatch,{x,0}}.
  {label,503}.
    {try_case,{y,3}}.
    {bif,raise,{f,0},[{y,0},{y,1}],{x,0}}.


{function, stacktrace, 1, 505}.
  {label,504}.
    {line,[{location,"trycatch_SUITE.erl",1195}]}.
    {func_info,{atom,trycatch_SUITE},{atom,stacktrace},1}.
  {label,505}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,2,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_list,{x,0},{x,1},{y,1}}.
    {move,{atom,native},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1197}]}.
    {call_ext,1,{extfunc,trycatch_SUITE,module_info,1}}.
    {select_val,{x,0},
                {f,528},
                {list,[{atom,false},{f,507},{atom,true},{f,506}]}}.
  {label,506}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,abs},{y,1}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{y,1}]}}.
    {move,{atom,error},{x,1}}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1206}]}.
    {call,3,{f,530}}. % stacktrace_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{3,{t_atom,[caught1]}},
                  {t_tuple,3,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}},
          {{3,{t_atom,[caught2]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
         none}}]}}.
    {test,test_arity,{f,519},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,
          {f,519},
          [{tr,{x,1},
               {t_union,{t_atom,[value1]},
                        none,none,
                        [{{3,{t_atom,[caught1]}},
                          {t_tuple,3,true,#{1 => {t_atom,[caught1]}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,519},[{x,2},{atom,badarg}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,519},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,519},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,519},[{x,2},{atom,my_abs}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,519},[{x,1},{integer,1}]}.
    {move,{atom,error},{x,1}}.
    {move,{literal,{add,{0,a}}},{x,2}}.
    {move,{literal,{'div',{1,0}}},{x,0}}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1208}]}.
    {call,3,{f,530}}. % stacktrace_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{3,{t_atom,[caught1]}},
                  {t_tuple,3,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}},
          {{3,{t_atom,[caught2]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
         none}}]}}.
    {test,test_arity,{f,518},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,518},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           {literal,{error,badarith}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nonempty_list,{f,518},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,518},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,518},[{x,2},{atom,my_add}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,518},[{x,1},{integer,2}]}.
    {jump,{f,508}}.
  {label,507}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,abs},{y,1}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{y,1}]}}.
    {move,{atom,error},{x,1}}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1200}]}.
    {call,3,{f,530}}. % stacktrace_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{3,{t_atom,[caught1]}},
                  {t_tuple,3,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}},
          {{3,{t_atom,[caught2]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
         none}}]}}.
    {test,test_arity,{f,527},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,
          {f,527},
          [{tr,{x,1},
               {t_union,{t_atom,[value1]},
                        none,none,
                        [{{3,{t_atom,[caught1]}},
                          {t_tuple,3,true,#{1 => {t_atom,[caught1]}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,527},[{x,2},{atom,badarg}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,527},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,527},[{x,1},4,{atom,erlang}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,527},[{x,2},{atom,abs}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,527},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,527},[{x,1}]}.
    {test,is_eq_exact,{f,527},[{x,2},{tr,{y,1},{t_cons,reference,pid}}]}.
    {move,{atom,error},{x,1}}.
    {move,{literal,{add,{0,a}}},{x,2}}.
    {move,{literal,{'div',{1,0}}},{x,0}}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1203}]}.
    {call,3,{f,530}}. % stacktrace_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{3,{t_atom,[caught1]}},
                  {t_tuple,3,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}},
          {{3,{t_atom,[caught2]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
         none}}]}}.
    {test,test_arity,{f,526},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,526},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           {literal,{error,badarith}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nonempty_list,{f,526},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,526},[{x,2},4,{atom,erlang}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,526},[{x,3},{atom,'+'}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_eq_exact,{f,526},[{x,2},{literal,[0,a]}]}.
    {test,is_nonempty_list,{f,526},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,526},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,526},[{x,2},{atom,my_add}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,526},[{x,1},{integer,2}]}.
  {label,508}.
    {test_heap,3,0}.
    {put_tuple2,{x,2},{list,[{atom,value},{y,1}]}}.
    {move,{atom,error},{x,1}}.
    {move,{x,2},{x,0}}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1211}]}.
    {call,3,{f,530}}. % stacktrace_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{3,{t_atom,[caught1]}},
                  {t_tuple,3,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}},
          {{3,{t_atom,[caught2]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
         none}}]}}.
    {test,test_arity,{f,525},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,525},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,error}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,525},[{x,1},2,{atom,try_clause}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_nonempty_list,{f,525},[{x,2}]}.
    {get_hd,{x,2},{x,2}}.
    {test,is_tagged_tuple,{f,525},[{x,2},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,525},[{x,3},{atom,stacktrace_1}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_eq_exact,{f,525},[{x,2},{integer,3}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,525},[{x,1},{tr,{y,1},{t_cons,reference,pid}}]}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,value},{y,1}]}}.
    {put_tuple2,{x,2},{list,[{atom,throw},{y,1}]}}.
    {move,{atom,error},{x,1}}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1213}]}.
    {call,3,{f,530}}. % stacktrace_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[value2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value2]},
              2 =>
               {t_union,
                {t_atom,[value1]},
                none,none,
                [{{3,{t_atom,[caught1]}},
                  {t_tuple,3,true,#{1 => {t_atom,[caught1]}}}}],
                none}}}},
          {{3,{t_atom,[caught2]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught2]},
              2 => {t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}}}}],
         none}}]}}.
    {test,test_arity,{f,524},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,
          {f,524},
          [{tr,{x,1},{t_tuple,2,true,#{1 => {t_atom,[error,exit,throw]}}}},
           2,
           {atom,throw}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_nonempty_list,{f,524},[{x,2}]}.
    {get_hd,{x,2},{x,2}}.
    {test,is_tagged_tuple,{f,524},[{x,2},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,524},[{x,3},{atom,foo}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_eq_exact,{f,524},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,524},[{x,1},{tr,{y,1},{t_cons,reference,pid}}]}.
    {'try',{y,1},{f,509}}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1216}]}.
    {call,0,{f,538}}. % stacktrace_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,1}}.
    {jump,{f,510}}.
  {label,509}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,517},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_tagged_tuple,{f,517},[{x,1},2,{atom,badmatch}]}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test,is_nonempty_list,{f,523},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,523},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,523},[{x,3},{atom,stacktrace_2}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,523},[{x,1},{integer,0}]}.
    {test,is_nonempty_list,{f,523},[{x,2}]}.
    {get_hd,{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,523},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,523},[{x,2},{atom,stacktrace}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,523},[{x,1},{integer,1}]}.
  {label,510}.
    {'try',{y,1},{f,511}}.
    {move,{atom,b},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4,5]},{location,"trycatch_SUITE.erl",1225}]}.
    {call,2,{f,541}}. % stacktrace_3/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,511}.
    {try_case,{y,1}}.
    {move,{x,2},{y,0}}.
    {test,is_eq_exact,
          {f,516},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,516},[{x,1},{atom,function_clause}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{atom,native},{x,0}}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",1228}]}.
    {call_ext,1,{extfunc,lists,module_info,1}}.
    {select_val,{x,0},
                {f,522},
                {list,[{atom,false},{f,513},{atom,true},{f,512}]}}.
  {label,512}.
    {move,{y,0},{x,0}}.
    build_stacktrace.
    {test,is_nonempty_list,{f,520},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,520},[{x,1},4,{atom,lists}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,520},[{x,2},{atom,prefix}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,520},[{x,1},{integer,2}]}.
    {jump,{f,514}}.
  {label,513}.
    {move,{y,0},{x,0}}.
    build_stacktrace.
    {test,is_nonempty_list,{f,521},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,521},[{x,1},4,{atom,lists}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,521},[{x,2},{atom,prefix}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,521},[{x,1},{literal,[a,b]}]}.
  {label,514}.
    {'try',{y,1},{f,515}}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",1237}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
  {label,515}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,517},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,{f,517},[{x,1},{atom,x}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,516}.
    {bif,raise,{f,0},[{y,0},{x,1}],{x,0}}.
  {label,517}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,518}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1207}]}.
    {badmatch,{x,0}}.
  {label,519}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1205}]}.
    {badmatch,{x,0}}.
  {label,520}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",1232}]}.
    {badmatch,{x,0}}.
  {label,521}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",1230}]}.
    {badmatch,{x,0}}.
  {label,522}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",1228}]}.
    {case_end,{x,0}}.
  {label,523}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",1219}]}.
    {badmatch,{x,0}}.
  {label,524}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1212}]}.
    {badmatch,{x,0}}.
  {label,525}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1210}]}.
    {badmatch,{x,0}}.
  {label,526}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1201}]}.
    {badmatch,{x,0}}.
  {label,527}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1199}]}.
    {badmatch,{x,0}}.
  {label,528}.
    {line,[{scope,[7]},{location,"trycatch_SUITE.erl",1197}]}.
    {case_end,{x,0}}.


{function, stacktrace_1, 3, 530}.
  {label,529}.
    {line,[{location,"trycatch_SUITE.erl",1243}]}.
    {func_info,{atom,trycatch_SUITE},{atom,stacktrace_1},3}.
  {label,530}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[abs]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[abs]},
                             2 => {t_cons,reference,pid}}}},
                      {{2,{t_atom,['div']}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,['div']},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_integer,{1,1}},
                                       2 => {t_integer,{0,0}}}}}}},
                      {{2,{t_atom,[value]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value]},
                             2 => {t_cons,reference,pid}}}}],
                     none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[error]}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[add]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[add]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_integer,{0,0}},
                                       2 => {t_atom,[a]}}}}}},
                      {{2,{t_atom,[throw]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[throw]},
                             2 => {t_cons,reference,pid}}}},
                      {{2,{t_atom,[value]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value]},
                             2 => {t_cons,reference,pid}}}}],
                     none}}]}}.
    {allocate,5,3}.
    {init_yregs,{list,[{y,0},{y,2},{y,3}]}}.
    {move,{x,2},{y,1}}.
    {'try',{y,4},{f,535}}.
    {'try',{y,3},{f,534}}.
    {'try',{y,2},{f,531}}.
    {line,[{location,"trycatch_SUITE.erl",1244}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,2}}.
    {test,is_eq_exact,{f,536},[{x,0},{atom,error}]}.
    {move,{atom,value1},{y,2}}.
    {jump,{f,532}}.
  {label,531}.
    {try_case,{y,2}}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,533},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {move,{x,1},{x,0}}.
    build_stacktrace.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,caught1},{y,0},{x,0}]}}.
    {move,{x,0},{y,2}}.
  {label,532}.
    {try_end,{y,3}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[4,6]},{location,"trycatch_SUITE.erl",1250}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,4}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,value2},{y,2}]}}.
    {deallocate,5}.
    return.
  {label,533}.
    {bif,raise,{f,0},[{x,1},{y,0}],{x,0}}.
  {label,534}.
    {try_case,{y,3}}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[2,5,9]},{location,"trycatch_SUITE.erl",1250}]}.
    {call,1,{f,394}}. % foo/1
    {bif,raise,{f,0},[{y,0},{y,2}],{x,0}}.
  {label,535}.
    {try_case,{y,4}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test_heap,7,1}.
    {put_tuple2,{x,1},{list,[{y,3},{y,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,caught2},{x,1},{x,0}]}}.
    {deallocate,5}.
    return.
  {label,536}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",1244}]}.
    {try_case_end,{x,0}}.


{function, stacktrace_2, 0, 538}.
  {label,537}.
    {line,[{location,"trycatch_SUITE.erl",1258}]}.
    {func_info,{atom,trycatch_SUITE},{atom,stacktrace_2},0}.
  {label,538}.
    {allocate,0,0}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,current_function},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",1259}]}.
    {call_ext,2,{extfunc,erlang,process_info,2}}.
    {test,is_eq_exact,{f,539},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,539}.
    {badmatch,{x,0}}.


{function, stacktrace_3, 2, 541}.
  {label,540}.
    {line,[{location,"trycatch_SUITE.erl",1262}]}.
    {func_info,{atom,trycatch_SUITE},{atom,stacktrace_3},2}.
  {label,541}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[b]}}]}}.
    {line,[{location,"trycatch_SUITE.erl",1263}]}.
    {call_ext_only,2,{extfunc,lists,prefix,2}}.


{function, nested_stacktrace, 1, 543}.
  {label,542}.
    {line,[{location,"trycatch_SUITE.erl",1265}]}.
    {func_info,{atom,trycatch_SUITE},{atom,nested_stacktrace},1}.
  {label,543}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,16,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {put_list,{x,0},{x,1},{y,0}}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,1},{list,[{atom,value},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,void},{x,0}]}}.
    {move,{literal,{void,void,void}},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",1267}]}.
    {call,2,{f,554}}. % nested_stacktrace_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[value1]},
         none,none,
         [{{3,{t_atom,[caught1]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught1]},
              3 =>
               {t_union,
                {t_atom,[value2]},
                none,none,
                [{{2,{t_atom,[caught2]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught2]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,552},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[value1]},
                 none,none,
                 [{{3,{t_atom,[caught1]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[caught1]},
                         3 =>
                             {t_union,
                                 {t_atom,[value2]},
                                 none,none,
                                 [{{2,{t_atom,[caught2]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught2]}}}}],
                                 none}}}}],
                 none}},
         {atom,value1}]}.
    {move,{atom,native},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1269}]}.
    {call_ext,1,{extfunc,trycatch_SUITE,module_info,1}}.
    {select_val,{x,0},
                {f,551},
                {list,[{atom,false},{f,545},{atom,true},{f,544}]}}.
  {label,544}.
    {test_heap,20,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,add},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,error},{atom,badarith}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,1},{list,[{x,2},{atom,void},{x,1}]}}.
    {line,[{location,"trycatch_SUITE.erl",1285}]}.
    {call,2,{f,554}}. % nested_stacktrace_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[value1]},
         none,none,
         [{{3,{t_atom,[caught1]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught1]},
              3 =>
               {t_union,
                {t_atom,[value2]},
                none,none,
                [{{2,{t_atom,[caught2]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught2]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_tuple,
        {f,548},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[value1]},
                 none,none,
                 [{{3,{t_atom,[caught1]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[caught1]},
                         3 =>
                             {t_union,
                                 {t_atom,[value2]},
                                 none,none,
                                 [{{2,{t_atom,[caught2]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught2]}}}}],
                                 none}}}}],
                 none}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,548},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,548},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,548},[{x,2},{atom,my_add}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,548},[{x,1},{integer,2}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,548},
          [{tr,{x,1},
               {t_union,{t_atom,[value2]},
                        none,none,
                        [{{2,{t_atom,[caught2]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught2]}}}}],
                        none}},
           {atom,value2}]}.
    {test_heap,17,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,add},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,error},{atom,badarith}]}}.
    {put_tuple2,{x,1},{list,[{atom,abs},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{atom,error},{atom,badarg}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"trycatch_SUITE.erl",1290}]}.
    {call,2,{f,554}}. % nested_stacktrace_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[value1]},
         none,none,
         [{{3,{t_atom,[caught1]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught1]},
              3 =>
               {t_union,
                {t_atom,[value2]},
                none,none,
                [{{2,{t_atom,[caught2]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught2]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_tuple,
        {f,547},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[value1]},
                 none,none,
                 [{{3,{t_atom,[caught1]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[caught1]},
                         3 =>
                             {t_union,
                                 {t_atom,[value2]},
                                 none,none,
                                 [{{2,{t_atom,[caught2]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught2]}}}}],
                                 none}}}}],
                 none}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,547},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,547},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,547},[{x,2},{atom,my_add}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,547},[{x,1},{integer,2}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tuple,
          {f,547},
          [{tr,{x,1},
               {t_union,{t_atom,[value2]},
                        none,none,
                        [{{2,{t_atom,[caught2]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught2]}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,547},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,547},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,547},[{x,2},{atom,my_abs}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,547},[{x,1},{integer,1}]}.
    {jump,{f,546}}.
  {label,545}.
    {test_heap,20,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,add},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,error},{atom,badarith}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{atom,x2}]}}.
    {put_tuple2,{x,2},{list,[{atom,value},{x,1}]}}.
    {put_tuple2,{x,1},{list,[{x,2},{atom,void},{x,1}]}}.
    {line,[{location,"trycatch_SUITE.erl",1274}]}.
    {call,2,{f,554}}. % nested_stacktrace_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[value1]},
         none,none,
         [{{3,{t_atom,[caught1]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught1]},
              3 =>
               {t_union,
                {t_atom,[value2]},
                none,none,
                [{{2,{t_atom,[caught2]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught2]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_tuple,
        {f,550},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[value1]},
                 none,none,
                 [{{3,{t_atom,[caught1]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[caught1]},
                         3 =>
                             {t_union,
                                 {t_atom,[value2]},
                                 none,none,
                                 [{{2,{t_atom,[caught2]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught2]}}}}],
                                 none}}}}],
                 none}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,550},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,550},[{x,2},4,{atom,erlang}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,550},[{x,3},{atom,'+'}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_nonempty_list,{f,550},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_eq_exact,{f,550},[{x,2},{literal,[x1]}]}.
    {test,is_nonempty_list,{f,550},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,550},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,550},[{x,2},{atom,my_add}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,550},[{x,1},{integer,2}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,550},
          [{tr,{x,1},
               {t_union,{t_atom,[value2]},
                        none,none,
                        [{{2,{t_atom,[caught2]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught2]}}}}],
                        none}},
           {atom,value2}]}.
    {test,is_eq_exact,
          {f,550},
          [{x,3},
           {tr,{y,0},
               {t_cons,{t_union,none,none,none,
                                {t_tuple,1,true,#{1 => reference}},
                                pid},
                       nil}}]}.
    {test_heap,17,0}.
    {put_tuple2,{x,0},{list,[{y,0},{atom,x1}]}}.
    {put_tuple2,{x,0},{list,[{atom,add},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,error},{atom,badarith}]}}.
    {put_tuple2,{x,1},{list,[{atom,abs},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{atom,error},{atom,badarg}]}}.
    {line,[{location,"trycatch_SUITE.erl",1279}]}.
    {call,2,{f,554}}. % nested_stacktrace_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[value1]},
         none,none,
         [{{3,{t_atom,[caught1]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[caught1]},
              3 =>
               {t_union,
                {t_atom,[value2]},
                none,none,
                [{{2,{t_atom,[caught2]}},
                  {t_tuple,2,true,#{1 => {t_atom,[caught2]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_tuple,
        {f,549},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[value1]},
                 none,none,
                 [{{3,{t_atom,[caught1]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[caught1]},
                         3 =>
                             {t_union,
                                 {t_atom,[value2]},
                                 none,none,
                                 [{{2,{t_atom,[caught2]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[caught2]}}}}],
                                 none}}}}],
                 none}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,549},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,549},[{x,2},4,{atom,erlang}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,549},[{x,3},{atom,'+'}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_nonempty_list,{f,549},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_eq_exact,{f,549},[{x,2},{literal,[x1]}]}.
    {test,is_nonempty_list,{f,549},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,549},[{x,1},4,{atom,trycatch_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,549},[{x,2},{atom,my_add}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,549},[{x,1},{integer,2}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tuple,
          {f,549},
          [{tr,{x,1},
               {t_union,{t_atom,[value2]},
                        none,none,
                        [{{2,{t_atom,[caught2]}},
                          {t_tuple,2,true,#{1 => {t_atom,[caught2]}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,549},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,549},[{x,1},4,{atom,erlang}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,549},[{x,2},{atom,abs}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,549},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,549},[{x,1}]}.
    {test,is_eq_exact,
          {f,549},
          [{x,3},
           {tr,{y,0},
               {t_cons,{t_union,none,none,none,
                                {t_tuple,1,true,#{1 => reference}},
                                pid},
                       nil}}]}.
    {test,is_eq_exact,
          {f,549},
          [{x,2},
           {tr,{y,0},
               {t_cons,{t_union,none,none,none,
                                {t_tuple,1,true,#{1 => reference}},
                                pid},
                       nil}}]}.
  {label,546}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,547}.
    {line,[{location,"trycatch_SUITE.erl",1287}]}.
    {badmatch,{x,0}}.
  {label,548}.
    {line,[{location,"trycatch_SUITE.erl",1282}]}.
    {badmatch,{x,0}}.
  {label,549}.
    {line,[{location,"trycatch_SUITE.erl",1276}]}.
    {badmatch,{x,0}}.
  {label,550}.
    {line,[{location,"trycatch_SUITE.erl",1271}]}.
    {badmatch,{x,0}}.
  {label,551}.
    {line,[{location,"trycatch_SUITE.erl",1269}]}.
    {case_end,{x,0}}.
  {label,552}.
    {line,[{location,"trycatch_SUITE.erl",1267}]}.
    {badmatch,{x,0}}.


{function, nested_stacktrace_1, 2, 554}.
  {label,553}.
    {line,[{location,"trycatch_SUITE.erl",1295}]}.
    {func_info,{atom,trycatch_SUITE},{atom,nested_stacktrace_1},2}.
  {label,554}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 =>
            {t_union,none,none,none,
             [{{2,{t_atom,[add]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[add]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 =>
                       {t_cons,
                        {t_union,none,none,none,{t_tuple,0,false,#{}},pid},
                        nil},
                      2 => {t_atom,[x1]}}}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 =>
                       {t_cons,
                        {t_union,none,none,none,{t_tuple,0,false,#{}},pid},
                        nil},
                      2 => {t_atom,[x1]}}}}}}],
             none},
           2 => {t_atom,[error,void]},
           3 =>
            {t_union,
             {t_atom,[badarith]},
             none,none,
             {t_tuple,2,true,
              #{1 =>
                 {t_cons,
                  {t_union,none,none,none,
                   {t_tuple,1,true,#{1 => reference}},
                   pid},
                  nil},
                2 => {t_atom,[x1]}}},
             none}}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_tuple,3,true,
         #{1 =>
            {t_union,
             {t_atom,[void]},
             none,none,
             [{{2,{t_atom,[abs]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[abs]},
                  2 =>
                   {t_cons,
                    {t_union,none,none,none,
                     {t_tuple,1,true,#{1 => reference}},
                     pid},
                    nil}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},
                  2 =>
                   {t_tuple,2,true,
                    #{1 =>
                       {t_cons,
                        {t_union,none,none,none,{t_tuple,0,false,#{}},pid},
                        nil},
                      2 => {t_atom,[x2]}}}}}}],
             none},
           2 => {t_atom,[error,void]},
           3 =>
            {t_union,
             {t_atom,[badarg,void]},
             none,none,
             {t_tuple,2,true,
              #{1 =>
                 {t_cons,
                  {t_union,none,none,none,
                   {t_tuple,1,true,#{1 => reference}},
                   pid},
                  nil},
                2 => {t_atom,[x2]}}},
             none}}}}]}}.
    {allocate,6,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,4}}.
    {get_tuple_element,{x,0},1,{y,3}}.
    {get_tuple_element,{x,0},2,{y,2}}.
    {get_tuple_element,{x,1},1,{y,1}}.
    {'try',{y,5},{f,555}}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1296}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,5}}.
    {test,is_eq_exact,
        {f,560},
        [{x,0},
         {tr,{y,2},
             {t_union,
                 {t_atom,[badarith]},
                 none,none,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_cons,
                               {t_union,none,none,none,
                                   {t_tuple,1,true,#{1 => reference}},
                                   pid},
                               nil},
                       2 => {t_atom,[x1]}}},
                 none}}]}.
    {move,{atom,value1},{x,0}}.
    {deallocate,6}.
    return.
  {label,555}.
    {try_case,{y,5}}.
    {move,{x,2},{y,0}}.
    {test,is_eq_exact,
          {f,559},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,3},{t_atom,[error,void]}}]}.
    {test,is_eq_exact,
        {f,559},
        [{x,1},
         {tr,{y,2},
             {t_union,
                 {t_atom,[badarith]},
                 none,none,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_cons,
                               {t_union,none,none,none,
                                   {t_tuple,1,true,#{1 => reference}},
                                   pid},
                               nil},
                       2 => {t_atom,[x1]}}},
                 none}}]}.
    {get_tuple_element,{y,4},2,{y,3}}.
    {'try',{y,5},{f,556}}.
    {get_tuple_element,{y,4},0,{x,0}}.
    {init_yregs,{list,[{y,2},{y,4}]}}.
    {line,[{scope,[4]},{location,"trycatch_SUITE.erl",1300}]}.
    {call,1,{f,394}}. % foo/1
    {try_end,{y,5}}.
    {test,is_eq_exact,
        {f,561},
        [{x,0},
         {tr,{y,3},
             {t_union,
                 {t_atom,[badarg,void]},
                 none,none,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_cons,
                               {t_union,none,none,none,
                                   {t_tuple,1,true,#{1 => reference}},
                                   pid},
                               nil},
                       2 => {t_atom,[x2]}}},
                 none}}]}.
    {move,{atom,value2},{y,5}}.
    {jump,{f,557}}.
  {label,556}.
    {try_case,{y,5}}.
    {test,is_eq_exact,
          {f,558},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,1},{t_atom,[error,void]}}]}.
    {test,is_eq_exact,
        {f,558},
        [{x,1},
         {tr,{y,3},
             {t_union,
                 {t_atom,[badarg,void]},
                 none,none,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_cons,
                               {t_union,none,none,none,
                                   {t_tuple,1,true,#{1 => reference}},
                                   pid},
                               nil},
                       2 => {t_atom,[x2]}}},
                 none}}]}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,caught2},{x,0}]}}.
    {move,{x,0},{y,5}}.
  {label,557}.
    {move,{y,0},{x,0}}.
    build_stacktrace.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,caught1},{x,0},{y,5}]}}.
    {deallocate,6}.
    return.
  {label,558}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,559}.
    {bif,raise,{f,0},[{y,0},{x,1}],{x,0}}.
  {label,560}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",1296}]}.
    {try_case_end,{x,0}}.
  {label,561}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",1300}]}.
    {try_case_end,{x,0}}.


{function, raise, 1, 563}.
  {label,562}.
    {line,[{location,"trycatch_SUITE.erl",1309}]}.
    {func_info,{atom,trycatch_SUITE},{atom,raise},1}.
  {label,563}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,765},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"trycatch_SUITE.erl",1310}]}.
    {call,1,{f,575}}. % test_raise/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,763},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,{0,'+inf'}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",1311}]}.
    {call,1,{f,575}}. % test_raise/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,761},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"trycatch_SUITE.erl",1312}]}.
    {call,1,{f,575}}. % test_raise/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,759},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,{0,'+inf'}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",1314}]}.
    {call,1,{f,572}}. % bad_raise/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[badarg]},
                                   none,
                                   {t_number,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,565},
          [{tr,{x,0},
               {t_union,{t_atom,[badarg]},
                        none,
                        {t_number,{0,'+inf'}},
                        none,none}},
           {atom,badarg}]}.
    {move,{literal,<<0,0,0,0,0,0:2>>},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1316}]}.
    {call,1,{f,567}}. % stk_used_in_bin_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,564},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,564}.
    {badmatch,{atom,ok}}.
  {label,565}.
    {line,[{location,"trycatch_SUITE.erl",1314}]}.
    {badmatch,{x,0}}.


{function, stk_used_in_bin_size, 1, 567}.
  {label,566}.
    {line,[{location,"trycatch_SUITE.erl",1319}]}.
    {func_info,{atom,trycatch_SUITE},{atom,stk_used_in_bin_size},1}.
  {label,567}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,2,false}}]}}.
    {allocate,2,1}.
    {move,{x,0},{y,0}}.
    {'try',{y,1},{f,568}}.
    {move,{atom,fail},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1321}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
  {label,568}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,570},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,{f,570},[{x,1},{atom,fail}]}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {test,bs_get_integer2,
          {f,569},
          2,
          [{tr,{x,1},{t_bs_context,2}},
           {x,0},
           1,
           {field_flags,[{anno,[1327,{file,"trycatch_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {test,is_eq_exact,{f,569},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {bs_match,{f,569},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,569}.
    {move,{atom,error},{x,0}}.
    {deallocate,2}.
    return.
  {label,570}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, bad_raise, 1, 572}.
  {label,571}.
    {line,[{location,"trycatch_SUITE.erl",1332}]}.
    {func_info,{atom,trycatch_SUITE},{atom,bad_raise},1}.
  {label,572}.
    {'%',{var_info,{x,0},
                   [{type,{t_fun,0,
                                 {'-raise/1-fun-3-',0},
                                 {t_number,{0,'+inf'}}}}]}}.
    {allocate,1,0}.
    {'try',{y,0},{f,573}}.
    {line,[{location,"trycatch_SUITE.erl",1334}]}.
    {call,0,{f,759}}. % '-raise/1-fun-3-'/0
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,573}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,1},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_class},{x,0}}.
    raw_raise.
    {move,{atom,badarg},{x,0}}.
    {deallocate,1}.
    return.


{function, test_raise, 1, 575}.
  {label,574}.
    {line,[{location,"trycatch_SUITE.erl",1340}]}.
    {func_info,{atom,trycatch_SUITE},{atom,test_raise},1}.
  {label,575}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_number,{0,'+inf'}}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"trycatch_SUITE.erl",1341}]}.
    {call,1,{f,577}}. % test_raise_1/1
    {move,{y,0},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1342}]}.
    {call,1,{f,584}}. % test_raise_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_cons,any,any},
                                   {t_number,{0,'+inf'}},
                                   none,none}}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1343}]}.
    {call,1,{f,594}}. % test_raise_3/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_cons,any,any},
                                   {t_number,{0,'+inf'}},
                                   none,none}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,605},1}. % test_raise_4/1


{function, test_raise_1, 1, 577}.
  {label,576}.
    {line,[{location,"trycatch_SUITE.erl",1346}]}.
    {func_info,{atom,trycatch_SUITE},{atom,test_raise_1},1}.
  {label,577}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_number,{0,'+inf'}}}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,3}]}}.
    {move,{x,0},{y,2}}.
    {move,{atom,exception},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1347}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,3},{f,578}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"trycatch_SUITE.erl",1349}]}.
    {call,1,{f,581}}. % do_test_raise_1/1
    {try_end,{y,3}}.
    {deallocate,4}.
    return.
  {label,578}.
    {try_case,{y,3}}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,exception},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1352}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,0},{x,0}}.
    build_stacktrace.
    {test,is_tuple,{f,579},[{y,3}]}.
    {test,test_arity,{f,579},[{y,3},3]}.
    {get_tuple_element,{y,3},0,{x,1}}.
    {test,is_eq_exact,{f,579},[{x,1},{tr,{y,2},{t_atom,[error,exit,throw]}}]}.
    {get_tuple_element,{y,3},1,{x,1}}.
    {test,is_eq_exact,{f,579},[{x,1},{y,1}]}.
    {get_tuple_element,{y,3},2,{x,1}}.
    {test,is_eq_exact,{f,579},[{x,1},{x,0}]}.
    {move,{y,3},{x,0}}.
    {deallocate,4}.
    return.
  {label,579}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1352}]}.
    {badmatch,{y,3}}.


{function, do_test_raise_1, 1, 581}.
  {label,580}.
    {line,[{location,"trycatch_SUITE.erl",1355}]}.
    {func_info,{atom,trycatch_SUITE},{atom,do_test_raise_1},1}.
  {label,581}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_number,{0,'+inf'}}}}]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'try',{y,2},{f,582}}.
    {line,[{location,"trycatch_SUITE.erl",1357}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_number,{0,'+inf'}}}}}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {try_end,{y,2}}.
    {deallocate,3}.
    return.
  {label,582}.
    {try_case,{y,2}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {move,{x,0},{y,2}}.
    {test_heap,4,0}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0},{y,2}]}}.
    {move,{atom,exception},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1361}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1362}]}.
    {call_ext_last,3,{extfunc,erlang,raise,3},3}.


{function, test_raise_2, 1, 584}.
  {label,583}.
    {line,[{location,"trycatch_SUITE.erl",1365}]}.
    {func_info,{atom,trycatch_SUITE},{atom,test_raise_2},1}.
  {label,584}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_number,{0,'+inf'}}}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,4}]}}.
    {move,{x,0},{y,3}}.
    {move,{atom,exception},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1366}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {'try',{y,4},{f,585}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1368}]}.
    {call,1,{f,591}}. % do_test_raise_2/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {try_end,{y,4}}.
    {deallocate,5}.
    return.
  {label,585}.
    {try_case,{y,4}}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,exception},{x,0}}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",1371}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_tuple,{f,589},[{x,0}]}.
    {test,test_arity,{f,589},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,589},[{x,1},{tr,{y,2},{t_atom,[error,exit,throw]}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,589},[{x,1},{y,1}]}.
    {move,{y,0},{x,0}}.
    build_stacktrace.
    {move,{x,0},{y,2}}.
    {'try',{y,4},{f,586}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1},{y,3}]}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1373}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_number,{0,'+inf'}}}}}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {try_end,{y,4}}.
    {deallocate,5}.
    return.
  {label,586}.
    {try_case,{y,4}}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test,is_nonempty_list,{f,588},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {test,is_nonempty_list,{f,587},[{y,2}]}.
    {get_hd,{y,2},{x,1}}.
    {test,is_eq_exact,{f,587},[{x,1},{x,0}]}.
    {move,{y,2},{x,0}}.
    {deallocate,5}.
    return.
  {label,587}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1377}]}.
    {badmatch,{y,2}}.
  {label,588}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1376}]}.
    {badmatch,{x,0}}.
  {label,589}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1371}]}.
    {badmatch,{x,0}}.


{function, do_test_raise_2, 1, 591}.
  {label,590}.
    {line,[{location,"trycatch_SUITE.erl",1381}]}.
    {func_info,{atom,trycatch_SUITE},{atom,do_test_raise_2},1}.
  {label,591}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_number,{0,'+inf'}}}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {'try',{y,3},{f,592}}.
    {line,[{location,"trycatch_SUITE.erl",1383}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_number,{0,'+inf'}}}}}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {try_end,{y,3}}.
    {deallocate,4}.
    return.
  {label,592}.
    {try_case,{y,3}}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {test_heap,3,0}.
    {put_tuple2,{x,1},{list,[{y,2},{y,1}]}}.
    {move,{atom,exception},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1389}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    raw_raise.
    {deallocate,4}.
    return.


{function, test_raise_3, 1, 594}.
  {label,593}.
    {line,[{location,"trycatch_SUITE.erl",1393}]}.
    {func_info,{atom,trycatch_SUITE},{atom,test_raise_3},1}.
  {label,594}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_number,{0,'+inf'}}}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {'try',{y,3},{f,595}}.
    {line,[{location,"trycatch_SUITE.erl",1395}]}.
    {call,1,{f,602}}. % do_test_raise_3/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {try_end,{y,3}}.
    {deallocate,4}.
    return.
  {label,595}.
    {try_case,{y,3}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,598},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,exit}]}.
    {test,is_tagged_tuple,{f,598},[{y,1},3,{atom,exception}]}.
    {move,{x,1},{x,0}}.
    build_stacktrace.
    {move,{x,0},{y,0}}.
    {'try',{y,3},{f,596}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1399}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_number,{0,'+inf'}}}}}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {try_end,{y,3}}.
    {deallocate,4}.
    return.
  {label,596}.
    {try_case,{y,3}}.
    {get_tuple_element,{y,1},1,{x,3}}.
    {test,is_eq_exact,{f,597},[{tr,{x,0},{t_atom,[error,exit,throw]}},{x,3}]}.
    {get_tuple_element,{y,1},2,{x,0}}.
    {test,is_eq_exact,{f,597},[{x,1},{x,0}]}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test,is_nonempty_list,{f,600},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {test,is_nonempty_list,{f,599},[{y,0}]}.
    {get_hd,{y,0},{x,1}}.
    {test,is_eq_exact,{f,599},[{x,1},{x,0}]}.
    {move,{y,0},{x,0}}.
    {deallocate,4}.
    return.
  {label,597}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,598}.
    {bif,raise,{f,0},[{x,1},{y,1}],{x,0}}.
  {label,599}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1403}]}.
    {badmatch,{y,0}}.
  {label,600}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1402}]}.
    {badmatch,{x,0}}.


{function, do_test_raise_3, 1, 602}.
  {label,601}.
    {line,[{location,"trycatch_SUITE.erl",1407}]}.
    {func_info,{atom,trycatch_SUITE},{atom,do_test_raise_3},1}.
  {label,602}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_number,{0,'+inf'}}}}]}}.
    {allocate,1,1}.
    {'try',{y,0},{f,603}}.
    {line,[{location,"trycatch_SUITE.erl",1409}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_number,{0,'+inf'}}}}}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,603}.
    {try_case,{y,0}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{atom,exception},{x,0},{x,1}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,exit},{x,0}}.
    raw_raise.
    {deallocate,1}.
    return.


{function, test_raise_4, 1, 605}.
  {label,604}.
    {line,[{location,"trycatch_SUITE.erl",1418}]}.
    {func_info,{atom,trycatch_SUITE},{atom,test_raise_4},1}.
  {label,605}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_number,{0,'+inf'}}}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {'try',{y,3},{f,606}}.
    {line,[{location,"trycatch_SUITE.erl",1420}]}.
    {call,1,{f,614}}. % do_test_raise_4/1
    {try_end,{y,3}}.
    {deallocate,4}.
    return.
  {label,606}.
    {try_case,{y,3}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,609},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,exit}]}.
    {test,is_tagged_tuple,{f,609},[{y,1},4,{atom,exception}]}.
    {get_tuple_element,{y,1},3,{y,3}}.
    {move,{x,1},{x,0}}.
    build_stacktrace.
    {move,{x,0},{y,0}}.
    {test,is_eq_exact,{f,612},[{y,0},{y,3}]}.
    {'try',{y,3},{f,607}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1426}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_number,{0,'+inf'}}}}}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {try_end,{y,3}}.
    {deallocate,4}.
    return.
  {label,607}.
    {try_case,{y,3}}.
    {get_tuple_element,{y,1},1,{x,3}}.
    {test,is_eq_exact,{f,608},[{tr,{x,0},{t_atom,[error,exit,throw]}},{x,3}]}.
    {get_tuple_element,{y,1},2,{x,0}}.
    {test,is_eq_exact,{f,608},[{x,1},{x,0}]}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test,is_nonempty_list,{f,611},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {test,is_nonempty_list,{f,610},[{y,0}]}.
    {get_hd,{y,0},{x,1}}.
    {test,is_eq_exact,{f,610},[{x,1},{x,0}]}.
    {move,{y,0},{x,0}}.
    {deallocate,4}.
    return.
  {label,608}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,609}.
    {bif,raise,{f,0},[{x,1},{y,1}],{x,0}}.
  {label,610}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1430}]}.
    {badmatch,{y,0}}.
  {label,611}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1429}]}.
    {badmatch,{x,0}}.
  {label,612}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1424}]}.
    {badmatch,{atom,false}}.


{function, do_test_raise_4, 1, 614}.
  {label,613}.
    {line,[{location,"trycatch_SUITE.erl",1434}]}.
    {func_info,{atom,trycatch_SUITE},{atom,do_test_raise_4},1}.
  {label,614}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_number,{0,'+inf'}}}}]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'try',{y,2},{f,615}}.
    {line,[{location,"trycatch_SUITE.erl",1436}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_number,{0,'+inf'}}}}}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {try_end,{y,2}}.
    {deallocate,3}.
    return.
  {label,615}.
    {try_case,{y,2}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,exception},{y,1},{y,0},{x,0}]}}.
    {move,{x,0},{x,2}}.
    {move,{atom,exit},{x,0}}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1440}]}.
    {call_ext_last,3,{extfunc,erlang,raise,3},3}.


{function, no_return_in_try_block, 1, 617}.
  {label,616}.
    {line,[{location,"trycatch_SUITE.erl",1443}]}.
    {func_info,{atom,trycatch_SUITE},{atom,no_return_in_try_block},1}.
  {label,617}.
    {test,is_list,{f,616},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1444}]}.
    {call,1,{f,623}}. % no_return_in_try_block_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[gurka]},
                                   nil,
                                   {t_number,any},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,621},
          [{tr,{x,0},{t_union,{t_atom,[gurka]},nil,{t_number,any},none,none}},
           {float,1.0}]}.
    {move,{float,0.0},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1445}]}.
    {call,1,{f,623}}. % no_return_in_try_block_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[gurka]},
                                   nil,
                                   {t_number,any},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,620},
          [{tr,{x,0},{t_union,{t_atom,[gurka]},nil,{t_number,any},none,none}},
           {float,1.0}]}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1447}]}.
    {call,1,{f,623}}. % no_return_in_try_block_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[gurka]},
                                   nil,
                                   {t_number,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,619},
          [{tr,{x,0},
               {t_union,{t_atom,[gurka]},nil,{t_number,{0,0}},none,none}},
           {atom,gurka}]}.
    {move,nil,{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1448}]}.
    {call,1,{f,623}}. % no_return_in_try_block_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[gurka]},
                                   nil,
                                   {t_number,{0,0}},
                                   none,none}}]}}.
    {test,is_nil,
          {f,618},
          [{tr,{x,0},
               {t_union,{t_atom,[gurka]},nil,{t_number,{0,0}},none,none}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,618}.
    {badmatch,{x,0}}.
  {label,619}.
    {line,[{location,"trycatch_SUITE.erl",1447}]}.
    {badmatch,{x,0}}.
  {label,620}.
    {line,[{location,"trycatch_SUITE.erl",1445}]}.
    {badmatch,{x,0}}.
  {label,621}.
    {line,[{location,"trycatch_SUITE.erl",1444}]}.
    {badmatch,{x,0}}.


{function, no_return_in_try_block_1, 1, 623}.
  {label,622}.
    {line,[{location,"trycatch_SUITE.erl",1452}]}.
    {func_info,{atom,trycatch_SUITE},{atom,no_return_in_try_block_1},1}.
  {label,623}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[gurka]},
                                   nil,
                                   {t_number,{0,0}},
                                   none,none}}]}}.
    {allocate,2,1}.
    {move,{x,0},{y,0}}.
    {'try',{y,1},{f,625}}.
    {test,is_number,
          {f,624},
          [{tr,{x,0},
               {t_union,{t_atom,[gurka]},nil,{t_number,{0,0}},none,none}}]}.
    {line,[{location,"trycatch_SUITE.erl",1455}]}.
    {gc_bif,float,{f,0},1,[{tr,{x,0},{t_number,{0,0}}}],{x,0}}.
    {fmove,{x,0},{fr,0}}.
    {fmove,{float,1.0},{fr,1}}.
    {line,[{location,"trycatch_SUITE.erl",1458}]}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {try_end,{y,1}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,624}.
    {line,[{scope,[2]},{location,"trycatch_SUITE.erl",1456}]}.
    {call,0,{f,628}}. % no_return/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,625}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,626},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,{f,626},[{x,1},{atom,no_return}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,626}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, no_return, 0, 628}.
  {label,627}.
    {line,[{location,"trycatch_SUITE.erl",1463}]}.
    {func_info,{atom,trycatch_SUITE},{atom,no_return},0}.
  {label,628}.
    {move,{atom,no_return},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.


{function, expression_export, 1, 630}.
  {label,629}.
    {line,[{location,"trycatch_SUITE.erl",1465}]}.
    {func_info,{atom,trycatch_SUITE},{atom,expression_export},1}.
  {label,630}.
    {allocate,0,0}.
    {line,[{location,"trycatch_SUITE.erl",1466}]}.
    {call,0,{f,641}}. % expr_export_1/0
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",1467}]}.
    {call,0,{f,643}}. % expr_export_2/0
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,757},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[bar]}}]}}.
    {line,[{location,"trycatch_SUITE.erl",1469}]}.
    {call,1,{f,645}}. % expr_export_3/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[beer,is_42,no_good]},
                     none,
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,639},
          [{tr,{x,0},
               {t_union,{t_atom,[beer,is_42,no_good]},
                        none,
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                        none}},
           {integer,42}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,755},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[pub]}}]}}.
    {line,[{location,"trycatch_SUITE.erl",1470}]}.
    {call,1,{f,645}}. % expr_export_3/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[beer,is_42,no_good]},
                     none,
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,638},
          [{tr,{x,0},
               {t_union,{t_atom,[beer,is_42,no_good]},
                        none,
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                        none}},
           {atom,beer}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,753},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"trycatch_SUITE.erl",1471}]}.
    {call,1,{f,645}}. % expr_export_3/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[beer,is_42,no_good]},
                     none,
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,637},
          [{tr,{x,0},
               {t_union,{t_atom,[beer,is_42,no_good]},
                        none,
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                        none}},
           {literal,{error,failed}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,751},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{42,42}}}]}}.
    {line,[{location,"trycatch_SUITE.erl",1472}]}.
    {call,1,{f,645}}. % expr_export_3/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[beer,is_42,no_good]},
                     none,
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,636},
          [{tr,{x,0},
               {t_union,{t_atom,[beer,is_42,no_good]},
                        none,
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                        none}},
           {atom,is_42}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,749},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[bad]}}]}}.
    {line,[{location,"trycatch_SUITE.erl",1473}]}.
    {call,1,{f,645}}. % expr_export_3/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[beer,is_42,no_good]},
                     none,
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,635},
          [{tr,{x,0},
               {t_union,{t_atom,[beer,is_42,no_good]},
                        none,
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                        none}},
           {atom,no_good}]}.
    {move,{literal,<<0,0,0,1>>},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1475}]}.
    {call,1,{f,653}}. % expr_export_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,634},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<>>}]}.
    {move,{literal,<<0,0,0,2,97,98,99,100>>},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1476}]}.
    {call,1,{f,653}}. % expr_export_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,633},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"abcd">>}]}.
    {move,{literal,<<0,0,0,0>>},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1477}]}.
    {call,1,{f,653}}. % expr_export_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,632},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,no_match}]}.
    {move,{literal,<<0,0,3,9>>},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1478}]}.
    {call,1,{f,653}}. % expr_export_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,631},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,no_match}]}.
    {line,[{location,"trycatch_SUITE.erl",1480}]}.
    {call,0,{f,661}}. % expr_export_5/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,631}.
    {line,[{location,"trycatch_SUITE.erl",1478}]}.
    {badmatch,{x,0}}.
  {label,632}.
    {line,[{location,"trycatch_SUITE.erl",1477}]}.
    {badmatch,{x,0}}.
  {label,633}.
    {line,[{location,"trycatch_SUITE.erl",1476}]}.
    {badmatch,{x,0}}.
  {label,634}.
    {line,[{location,"trycatch_SUITE.erl",1475}]}.
    {badmatch,{x,0}}.
  {label,635}.
    {line,[{location,"trycatch_SUITE.erl",1473}]}.
    {badmatch,{x,0}}.
  {label,636}.
    {line,[{location,"trycatch_SUITE.erl",1472}]}.
    {badmatch,{x,0}}.
  {label,637}.
    {line,[{location,"trycatch_SUITE.erl",1471}]}.
    {badmatch,{x,0}}.
  {label,638}.
    {line,[{location,"trycatch_SUITE.erl",1470}]}.
    {badmatch,{x,0}}.
  {label,639}.
    {line,[{location,"trycatch_SUITE.erl",1469}]}.
    {badmatch,{x,0}}.


{function, expr_export_1, 0, 641}.
  {label,640}.
    {line,[{location,"trycatch_SUITE.erl",1483}]}.
    {func_info,{atom,trycatch_SUITE},{atom,expr_export_1},0}.
  {label,641}.
    {move,{integer,42},{x,0}}.
    return.


{function, expr_export_2, 0, 643}.
  {label,642}.
    {line,[{location,"trycatch_SUITE.erl",1490}]}.
    {func_info,{atom,trycatch_SUITE},{atom,expr_export_2},0}.
  {label,643}.
    {move,{integer,42},{x,0}}.
    return.


{function, expr_export_3, 1, 645}.
  {label,644}.
    {line,[{location,"trycatch_SUITE.erl",1498}]}.
    {func_info,{atom,trycatch_SUITE},{atom,expr_export_3},1}.
  {label,645}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,0,any,
                     {t_union,
                         {t_atom,[bad,bar,pub]},
                         none,
                         {t_integer,{42,42}},
                         none,none}}}]}}.
    {allocate,1,1}.
    {'try',{y,0},{f,650}}.
    {line,[{location,"trycatch_SUITE.erl",1501}]}.
    {call_fun2,{atom,safe},
               0,
               {tr,{x,0},
                   {t_fun,0,any,
                          {t_union,{t_atom,[bad,bar,pub]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,none}}}}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[bad,bar,pub]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,none}}]}}.
    {try_end,{y,0}}.
    {select_val,{tr,{x,0},
                    {t_union,{t_atom,[bad,bar,pub]},
                             none,
                             {t_integer,{42,42}},
                             none,none}},
                {f,648},
                {list,[{atom,bar},{f,647},{atom,pub},{f,646}]}}.
  {label,646}.
    {move,{atom,beer},{x,0}}.
    {deallocate,1}.
    return.
  {label,647}.
    {move,{integer,42},{x,0}}.
    {deallocate,1}.
    return.
  {label,648}.
    {test,is_eq_exact,
          {f,649},
          [{tr,{x,0},
               {t_union,{t_atom,[bad]},none,{t_integer,{42,42}},none,none}},
           {integer,42}]}.
    {move,{atom,is_42},{x,0}}.
    {deallocate,1}.
    return.
  {label,649}.
    {move,{atom,no_good},{x,0}}.
    {deallocate,1}.
    return.
  {label,650}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,651},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1}]}}.
    {deallocate,1}.
    return.
  {label,651}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, expr_export_4, 1, 653}.
  {label,652}.
    {line,[{location,"trycatch_SUITE.erl",1512}]}.
    {func_info,{atom,trycatch_SUITE},{atom,expr_export_4},1}.
  {label,653}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,0},{y,0}}.
    {'try',{y,2},{f,659}}.
    {'try',{y,1},{f,658}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1514}]}.
    {call,1,{f,743}}. % id/1
    {try_end,{y,1}}.
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {test,bs_get_integer2,
          {f,656},
          2,
          [{tr,{x,1},{t_bs_context,32}},
           {x,0},
           1,
           {field_flags,[{anno,[1517,{file,"trycatch_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {gc_bif,'*',
            {f,654},
            2,
            [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,4}],
            {x,0}}.
    {gc_bif,'-',
            {f,654},
            2,
            [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,4}],
            {x,0}}.
    {jump,{f,655}}.
  {label,654}.
    {move,{atom,bad_size},{x,0}}.
  {label,655}.
    {test,bs_get_binary2,
          {f,656},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,0},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           8,
           {field_flags,[{anno,[1517,{file,"trycatch_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_match,{f,656},{x,1},{commands,[{ensure_exactly,0}]}}.
    {jump,{f,657}}.
  {label,656}.
    {move,{atom,no_match},{x,0}}.
  {label,657}.
    {try_end,{y,2}}.
    {deallocate,3}.
    return.
  {label,658}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,659}.
    {try_case,{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, expr_export_5, 0, 661}.
  {label,660}.
    {line,[{location,"trycatch_SUITE.erl",1523}]}.
    {func_info,{atom,trycatch_SUITE},{atom,expr_export_5},0}.
  {label,661}.
    {move,{literal,{1,2,3}},{x,0}}.
    return.


{function, throw_opt_crash, 1, 663}.
  {label,662}.
    {line,[{location,"trycatch_SUITE.erl",1537}]}.
    {func_info,{atom,trycatch_SUITE},{atom,throw_opt_crash},1}.
  {label,663}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'try',{y,2},{f,664}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1539}]}.
    {call,1,{f,743}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,b},{x,0}}.
    {call,1,{f,743}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{atom,c},{x,0}}.
    {call,1,{f,743}}. % id/1
    {test_heap,4,1}.
    {put_tuple2,{x,1},{list,[{atom,pass},{y,0},{x,0}]}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call,2,{f,670}}. % throw_opt_crash_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1540}]}.
    {call,1,{f,743}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,b},{x,0}}.
    {call,1,{f,743}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,crash},{x,0}]}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,670}}. % throw_opt_crash_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,664}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,668},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_tuple,{f,668},[{x,1}]}.
    {test,test_arity,{f,668},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {get_tuple_element,{x,1},2,{x,4}}.
    {select_val,{x,0},
                {f,668},
                {list,[{atom,beta},
                       {f,667},
                       {atom,gamma},
                       {f,666},
                       {atom,pass},
                       {f,665}]}}.
  {label,665}.
    {test_heap,7,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    {put_tuple2,{x,0},{list,[{atom,error},{atom,gurka},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,666}.
    {test_heap,7,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    {put_tuple2,{x,0},{list,[{atom,error},{atom,grammofon},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,667}.
    {test_heap,7,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    {put_tuple2,{x,0},{list,[{atom,error},{atom,gaffel},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,668}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, throw_opt_crash_1, 2, 670}.
  {label,669}.
    {line,[{location,"trycatch_SUITE.erl",1551}]}.
    {func_info,{atom,trycatch_SUITE},{atom,throw_opt_crash_1},2}.
  {label,670}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[crash]}},
                       {t_tuple,2,true,#{1 => {t_atom,[crash]}}}},
                      {{3,{t_atom,[pass]}},
                       {t_tuple,3,true,#{1 => {t_atom,[pass]}}}}],
                     none}}]}}.
    {select_val,{x,0},
                {f,669},
                {list,[{atom,false},{f,673},{atom,true},{f,671}]}}.
  {label,671}.
    {select_tuple_arity,
        {tr,{x,1},
            {t_union,none,none,none,
                [{{2,{t_atom,[crash]}},
                  {t_tuple,2,true,#{1 => {t_atom,[crash]}}}},
                 {{3,{t_atom,[pass]}},
                  {t_tuple,3,true,#{1 => {t_atom,[pass]}}}}],
                none}},
        {f,669},
        {list,[2,{f,672},3,{f,672}]}}.
  {label,672}.
    {move,{x,1},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1554}]}.
    {call_ext_only,1,{extfunc,erlang,throw,1}}.
  {label,673}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage, 1, 675}.
  {label,674}.
    {line,[{location,"trycatch_SUITE.erl",1558}]}.
    {func_info,{atom,trycatch_SUITE},{atom,coverage},1}.
  {label,675}.
    {allocate,2,1}.
    {move,{x,0},{y,0}}.
    {'catch',{y,1},{f,676}}.
    {line,[{location,"trycatch_SUITE.erl",1559}]}.
    {call,0,{f,680}}. % coverage_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,676}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,678},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,678},[{x,1}]}.
    {test,test_arity,{f,678},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,678},[{x,2},{literal,{badfun,true}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,678},[{x,1}]}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1560}]}.
    {call,0,{f,682}}. % coverage_ssa_throw/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1561}]}.
    {call,0,{f,717}}. % coverage_pre_codegen/0
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1562}]}.
    {call,1,{f,719}}. % do_plain_catch_list/1
    {test,is_eq_exact,{f,677},[{x,0},{literal,{a,"*"}}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,722},2}. % cover_raise/1
  {label,677}.
    {badmatch,{x,0}}.
  {label,678}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1559}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 0, 680}.
  {label,679}.
    {line,[{location,"trycatch_SUITE.erl",1568}]}.
    {func_info,{atom,trycatch_SUITE},{atom,coverage_1},0}.
  {label,680}.
    {move,{literal,{badfun,true}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1569}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, coverage_ssa_throw, 0, 682}.
  {label,681}.
    {line,[{location,"trycatch_SUITE.erl",1583}]}.
    {func_info,{atom,trycatch_SUITE},{atom,coverage_ssa_throw},0}.
  {label,682}.
    {allocate,0,0}.
    {line,[{location,"trycatch_SUITE.erl",1584}]}.
    {call,0,{f,684}}. % cst_trivial/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"trycatch_SUITE.erl",1585}]}.
    {call,0,{f,711}}. % cst_raw/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"trycatch_SUITE.erl",1586}]}.
    {call,0,{f,705}}. % cst_stacktrace/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {call_last,0,{f,689},0}. % cst_types/0


{function, cst_trivial, 0, 684}.
  {label,683}.
    {line,[{location,"trycatch_SUITE.erl",1591}]}.
    {func_info,{atom,trycatch_SUITE},{atom,cst_trivial},0}.
  {label,684}.
    {allocate,1,0}.
    {'try',{y,0},{f,685}}.
    {line,[{location,"trycatch_SUITE.erl",1594}]}.
    {call,0,{f,687}}. % cst_trivial_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,685}.
    {try_case,{y,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.


{function, cst_trivial_1, 0, 687}.
  {label,686}.
    {line,[{location,"trycatch_SUITE.erl",1600}]}.
    {func_info,{atom,trycatch_SUITE},{atom,cst_trivial_1},0}.
  {label,687}.
    {allocate,0,0}.
    {move,{atom,gurka},{x,0}}.
    {call,1,{f,743}}. % id/1
    {move,{x,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {call_ext_last,3,{extfunc,erlang,raise,3},0}.


{function, cst_types, 0, 689}.
  {label,688}.
    {line,[{location,"trycatch_SUITE.erl",1602}]}.
    {func_info,{atom,trycatch_SUITE},{atom,cst_types},0}.
  {label,689}.
    {allocate,1,0}.
    {'try',{y,0},{f,690}}.
    {line,[{location,"trycatch_SUITE.erl",1605}]}.
    {call,0,{f,703}}. % cst_types_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,690}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,701},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_atom,{f,691},[{x,1}]}.
    {jump,{f,700}}.
  {label,691}.
    {test,is_bitstr,{f,692},[{x,1}]}.
    {jump,{f,700}}.
  {label,692}.
    {test,is_binary,{f,693},[{x,1}]}.
    {jump,{f,700}}.
  {label,693}.
    {test,is_float,{f,694},[{x,1}]}.
    {jump,{f,700}}.
  {label,694}.
    {test,is_integer,{f,695},[{x,1}]}.
    {jump,{f,700}}.
  {label,695}.
    {test,is_list,{f,696},[{x,1}]}.
    {jump,{f,700}}.
  {label,696}.
    {test,is_map,{f,697},[{x,1}]}.
    {jump,{f,700}}.
  {label,697}.
    {test,is_number,{f,698},[{x,1}]}.
    {jump,{f,700}}.
  {label,698}.
    {test,is_tuple,{f,699},[{x,1}]}.
    {jump,{f,700}}.
  {label,699}.
    {bif,tuple_size,{f,701},[{x,1}],{x,0}}.
    {test,is_ge,{f,701},[{integer,4},{tr,{x,0},{t_integer,{0,16777215}}}]}.
  {label,700}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,701}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, cst_types_1, 0, 703}.
  {label,702}.
    {line,[{location,"trycatch_SUITE.erl",1626}]}.
    {func_info,{atom,trycatch_SUITE},{atom,cst_types_1},0}.
  {label,703}.
    {allocate,0,0}.
    {move,{atom,gurka},{x,0}}.
    {call,1,{f,743}}. % id/1
    {call_ext_last,1,{extfunc,erlang,throw,1},0}.


{function, cst_stacktrace, 0, 705}.
  {label,704}.
    {line,[{location,"trycatch_SUITE.erl",1628}]}.
    {func_info,{atom,trycatch_SUITE},{atom,cst_stacktrace},0}.
  {label,705}.
    {allocate,1,0}.
    {'try',{y,0},{f,706}}.
    {line,[{location,"trycatch_SUITE.erl",1631}]}.
    {call,0,{f,709}}. % cst_stacktrace_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,706}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,707},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,{f,707},[{x,1},{atom,gurka}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,707}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1636}]}.
    {call,1,{f,743}}. % id/1
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.


{function, cst_stacktrace_1, 0, 709}.
  {label,708}.
    {line,[{location,"trycatch_SUITE.erl",1640}]}.
    {func_info,{atom,trycatch_SUITE},{atom,cst_stacktrace_1},0}.
  {label,709}.
    {allocate,0,0}.
    {move,{atom,gurka},{x,0}}.
    {call,1,{f,743}}. % id/1
    {call_ext_last,1,{extfunc,erlang,throw,1},0}.


{function, cst_raw, 0, 711}.
  {label,710}.
    {line,[{location,"trycatch_SUITE.erl",1642}]}.
    {func_info,{atom,trycatch_SUITE},{atom,cst_raw},0}.
  {label,711}.
    {allocate,1,0}.
    {'try',{y,0},{f,712}}.
    {line,[{location,"trycatch_SUITE.erl",1645}]}.
    {call,0,{f,715}}. % cst_raw_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,712}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,713},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,{f,713},[{x,1},{atom,gurka}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,713}.
    {move,{atom,dummy},{x,1}}.
    {move,{atom,error},{x,0}}.
    raw_raise.
    {deallocate,1}.
    return.


{function, cst_raw_1, 0, 715}.
  {label,714}.
    {line,[{location,"trycatch_SUITE.erl",1653}]}.
    {func_info,{atom,trycatch_SUITE},{atom,cst_raw_1},0}.
  {label,715}.
    {allocate,0,0}.
    {move,{atom,gurka},{x,0}}.
    {call,1,{f,743}}. % id/1
    {call_ext_last,1,{extfunc,erlang,throw,1},0}.


{function, coverage_pre_codegen, 0, 717}.
  {label,716}.
    {line,[{location,"trycatch_SUITE.erl",1656}]}.
    {func_info,{atom,trycatch_SUITE},{atom,coverage_pre_codegen},0}.
  {label,717}.
    {move,{atom,error},{x,0}}.
    return.


{function, do_plain_catch_list, 1, 719}.
  {label,718}.
    {line,[{location,"trycatch_SUITE.erl",1666}]}.
    {func_info,{atom,trycatch_SUITE},{atom,do_plain_catch_list},1}.
  {label,719}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {allocate,1,0}.
    {'catch',{y,0},{f,720}}.
    {move,{literal,{a,"*"}},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1668}]}.
    {call,1,{f,743}}. % id/1
  {label,720}.
    {catch_end,{y,0}}.
    {deallocate,1}.
    return.


{function, cover_raise, 1, 722}.
  {label,721}.
    {line,[{location,"trycatch_SUITE.erl",1670}]}.
    {func_info,{atom,trycatch_SUITE},{atom,cover_raise},1}.
  {label,722}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"trycatch_SUITE.erl",1671}]}.
    {call,1,{f,726}}. % uncertain_class/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,undefined_class]}}]}}.
    {move,nil,{x,2}}.
    {move,{atom,reason},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",1672}]}.
    {call_ext,3,{extfunc,erlang,raise,3}}.
    {test,is_eq_exact,{f,724},[{x,0},{atom,badarg}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"trycatch_SUITE.erl",1673}]}.
    {call,1,{f,729}}. % bad_class/1
    {'%',{var_info,{x,0},[{type,{t_atom,[also_bad,bad_class]}}]}}.
    {move,nil,{x,2}}.
    {move,{atom,reason},{x,1}}.
    {line,[{location,"trycatch_SUITE.erl",1674}]}.
    {call_ext,3,{extfunc,erlang,raise,3}}.
    {test,is_eq_exact,{f,723},[{x,0},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,723}.
    {badmatch,{x,0}}.
  {label,724}.
    {line,[{location,"trycatch_SUITE.erl",1672}]}.
    {badmatch,{x,0}}.


{function, uncertain_class, 1, 726}.
  {label,725}.
    {line,[{location,"trycatch_SUITE.erl",1677}]}.
    {func_info,{atom,trycatch_SUITE},{atom,uncertain_class},1}.
  {label,726}.
    {test,is_eq_exact,{f,727},[{x,0},{literal,[never_ever]}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,727}.
    {move,{atom,undefined_class},{x,0}}.
    return.


{function, bad_class, 1, 729}.
  {label,728}.
    {line,[{location,"trycatch_SUITE.erl",1683}]}.
    {func_info,{atom,trycatch_SUITE},{atom,bad_class},1}.
  {label,729}.
    {test,is_eq_exact,{f,730},[{x,0},{literal,[never_ever]}]}.
    {move,{atom,bad_class},{x,0}}.
    return.
  {label,730}.
    {move,{atom,also_bad},{x,0}}.
    return.


{function, throw_opt_funs, 1, 732}.
  {label,731}.
    {line,[{location,"trycatch_SUITE.erl",1691}]}.
    {func_info,{atom,trycatch_SUITE},{atom,throw_opt_funs},1}.
  {label,732}.
    {allocate,1,0}.
    {'try',{y,0},{f,733}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1692}]}.
    {call,1,{f,743}}. % id/1
    {call,1,{f,740}}. % throw_opt_funs_1/1
    {try_end,{y,0}}.
    {jump,{f,734}}.
  {label,733}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[6]},{location,"trycatch_SUITE.erl",1695}]}.
    {call,1,{f,743}}. % id/1
    {test,is_eq_exact,{f,738},[{x,0},{atom,a}]}.
  {label,734}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,740},0,0,{x,0},{list,[]}}.
    {line,[{scope,[3,4]},{location,"trycatch_SUITE.erl",1698}]}.
    {call,1,{f,743}}. % id/1
    {'try',{y,0},{f,735}}.
    {move,{x,0},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[3,4]},{location,"trycatch_SUITE.erl",1700}]}.
    {call_fun,1}.
    {try_end,{y,0}}.
    {jump,{f,736}}.
  {label,735}.
    {try_case,{y,0}}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {line,[{location,"trycatch_SUITE.erl",1703}]}.
    {gc_bif,length,{f,0},1,[{x,0}],{x,0}}.
    {test,is_ge,
          {f,737},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,1}]}.
  {label,736}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,737}.
    {line,[{scope,[0]},{location,"trycatch_SUITE.erl",1703}]}.
    {badmatch,{atom,false}}.
  {label,738}.
    {line,[{scope,[3]},{location,"trycatch_SUITE.erl",1695}]}.
    {badmatch,{x,0}}.


{function, throw_opt_funs_1, 1, 740}.
  {label,739}.
    {line,[{location,"trycatch_SUITE.erl",1708}]}.
    {func_info,{atom,trycatch_SUITE},{atom,throw_opt_funs_1},1}.
  {label,740}.
    {test,is_eq_exact,{f,741},[{x,0},{atom,a}]}.
    {line,[{location,"trycatch_SUITE.erl",1709}]}.
    {call_ext_only,1,{extfunc,erlang,throw,1}}.
  {label,741}.
    return.


{function, id, 1, 743}.
  {label,742}.
    {line,[{location,"trycatch_SUITE.erl",1713}]}.
    {func_info,{atom,trycatch_SUITE},{atom,id},1}.
  {label,743}.
    return.


{function, module_info, 0, 745}.
  {label,744}.
    {line,[]}.
    {func_info,{atom,trycatch_SUITE},{atom,module_info},0}.
  {label,745}.
    {move,{atom,trycatch_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 747}.
  {label,746}.
    {line,[]}.
    {func_info,{atom,trycatch_SUITE},{atom,module_info},1}.
  {label,747}.
    {move,{x,0},{x,1}}.
    {move,{atom,trycatch_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-expression_export/1-fun-4-', 0, 749}.
  {label,748}.
    {line,[{location,"trycatch_SUITE.erl",1473}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-expression_export/1-fun-4-'},0}.
  {label,749}.
    {move,{atom,bad},{x,0}}.
    return.


{function, '-expression_export/1-fun-3-', 0, 751}.
  {label,750}.
    {line,[{location,"trycatch_SUITE.erl",1472}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-expression_export/1-fun-3-'},0}.
  {label,751}.
    {move,{integer,42},{x,0}}.
    return.


{function, '-expression_export/1-fun-2-', 0, 753}.
  {label,752}.
    {line,[{location,"trycatch_SUITE.erl",1471}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-expression_export/1-fun-2-'},0}.
  {label,753}.
    {move,{atom,failed},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-expression_export/1-fun-1-', 0, 755}.
  {label,754}.
    {line,[{location,"trycatch_SUITE.erl",1470}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-expression_export/1-fun-1-'},0}.
  {label,755}.
    {move,{atom,pub},{x,0}}.
    return.


{function, '-expression_export/1-fun-0-', 0, 757}.
  {label,756}.
    {line,[{location,"trycatch_SUITE.erl",1469}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-expression_export/1-fun-0-'},0}.
  {label,757}.
    {move,{atom,bar},{x,0}}.
    return.


{function, '-raise/1-fun-3-', 0, 759}.
  {label,758}.
    {line,[{location,"trycatch_SUITE.erl",1314}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-raise/1-fun-3-'},0}.
  {label,759}.
    {allocate,0,0}.
    {move,{atom,x},{x,0}}.
    {call,1,{f,743}}. % id/1
    {gc_bif,abs,{f,0},1,[{x,0}],{x,0}}.
    {deallocate,0}.
    return.


{function, '-raise/1-fun-2-', 0, 761}.
  {label,760}.
    {line,[{location,"trycatch_SUITE.erl",1312}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-raise/1-fun-2-'},0}.
  {label,761}.
    {move,{literal,{was,thrown}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,throw,1}}.


{function, '-raise/1-fun-1-', 0, 763}.
  {label,762}.
    {line,[{location,"trycatch_SUITE.erl",1311}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-raise/1-fun-1-'},0}.
  {label,763}.
    {allocate,0,0}.
    {move,{atom,x},{x,0}}.
    {call,1,{f,743}}. % id/1
    {gc_bif,abs,{f,0},1,[{x,0}],{x,0}}.
    {deallocate,0}.
    return.


{function, '-raise/1-fun-0-', 0, 765}.
  {label,764}.
    {line,[{location,"trycatch_SUITE.erl",1310}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-raise/1-fun-0-'},0}.
  {label,765}.
    {move,{literal,{exit,tuple}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, '-catch_in_catch/1-fun-0-', 0, 767}.
  {label,766}.
    {line,[{location,"trycatch_SUITE.erl",1073}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-catch_in_catch/1-fun-0-'},0}.
  {label,767}.
    {allocate,0,0}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1074}]}.
    {call,1,{f,477}}. % catch_in_catch_init/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ignore]}}]}}.
    {move,{atom,good_exit},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",1075}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.


{function, '-hockey/0-fun-1-', 0, 769}.
  {label,768}.
    {line,[{location,"trycatch_SUITE.erl",1036}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-hockey/0-fun-1-'},0}.
  {label,769}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-hockey/0-fun-0-', 0, 771}.
  {label,770}.
    {line,[{location,"trycatch_SUITE.erl",1035}]}.
    {func_info,{atom,trycatch_SUITE},{atom,'-hockey/0-fun-0-'},0}.
  {label,771}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-try_after_letrec/2-lc$^0/1-1-', 1, 773}.
  {label,772}.
    {line,[{location,"trycatch_SUITE.erl",302}]}.
    {func_info,{atom,trycatch_SUITE},
               {atom,'-try_after_letrec/2-lc$^0/1-1-'},
               1}.
  {label,773}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test,is_nonempty_list,{f,774},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,773}}. % '-try_after_letrec/2-lc$^0/1-1-'/1
  {label,774}.
    return.


{function, '-try_after_letrec/2-lc$^0/1-0-', 1, 776}.
  {label,775}.
    {line,[{location,"trycatch_SUITE.erl",302}]}.
    {func_info,{atom,trycatch_SUITE},
               {atom,'-try_after_letrec/2-lc$^0/1-0-'},
               1}.
  {label,776}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test,is_nonempty_list,{f,777},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,776}}. % '-try_after_letrec/2-lc$^0/1-0-'/1
  {label,777}.
    return.


{function, '-try_after_complex/2-after$^0/0-0-', 1, 779}.
  {label,778}.
    {line,[{location,"trycatch_SUITE.erl",283}]}.
    {func_info,{atom,trycatch_SUITE},
               {atom,'-try_after_complex/2-after$^0/0-0-'},
               1}.
  {label,779}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {bif,get,{f,0},[{atom,try_after}],{x,0}}.
    {select_val,{x,0},
                {f,790},
                {list,[{atom,unreachable_0},
                       {f,789},
                       {atom,unreachable_1},
                       {f,788},
                       {atom,unreachable_2},
                       {f,787},
                       {atom,unreachable_3},
                       {f,786},
                       {atom,unreachable_4},
                       {f,785},
                       {atom,unreachable_5},
                       {f,784},
                       {atom,unreachable_6},
                       {f,783},
                       {atom,unreachable_7},
                       {f,782},
                       {atom,unreachable_8},
                       {f,781},
                       {atom,unreachable_9},
                       {f,780}]}}.
  {label,780}.
    {line,[{location,"trycatch_SUITE.erl",293}]}.
    {call_ext,0,{extfunc,dummy,unreachable_9,0}}.
    {jump,{f,791}}.
  {label,781}.
    {line,[{location,"trycatch_SUITE.erl",292}]}.
    {call_ext,0,{extfunc,dummy,unreachable_8,0}}.
    {jump,{f,791}}.
  {label,782}.
    {line,[{location,"trycatch_SUITE.erl",291}]}.
    {call_ext,0,{extfunc,dummy,unreachable_7,0}}.
    {jump,{f,791}}.
  {label,783}.
    {line,[{location,"trycatch_SUITE.erl",290}]}.
    {call_ext,0,{extfunc,dummy,unreachable_6,0}}.
    {jump,{f,791}}.
  {label,784}.
    {line,[{location,"trycatch_SUITE.erl",289}]}.
    {call_ext,0,{extfunc,dummy,unreachable_5,0}}.
    {jump,{f,791}}.
  {label,785}.
    {line,[{location,"trycatch_SUITE.erl",288}]}.
    {call_ext,0,{extfunc,dummy,unreachable_4,0}}.
    {jump,{f,791}}.
  {label,786}.
    {line,[{location,"trycatch_SUITE.erl",287}]}.
    {call_ext,0,{extfunc,dummy,unreachable_3,0}}.
    {jump,{f,791}}.
  {label,787}.
    {line,[{location,"trycatch_SUITE.erl",286}]}.
    {call_ext,0,{extfunc,dummy,unreachable_2,0}}.
    {jump,{f,791}}.
  {label,788}.
    {line,[{location,"trycatch_SUITE.erl",285}]}.
    {call_ext,0,{extfunc,dummy,unreachable_1,0}}.
    {jump,{f,791}}.
  {label,789}.
    {line,[{location,"trycatch_SUITE.erl",284}]}.
    {call_ext,0,{extfunc,dummy,unreachable_0,0}}.
    {jump,{f,791}}.
  {label,790}.
    {move,{y,0},{x,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",294}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
  {label,791}.
    {move,{y,0},{x,1}}.
    {move,{atom,try_after},{x,0}}.
    {line,[{location,"trycatch_SUITE.erl",295}]}.
    {call_ext_last,2,{extfunc,erlang,put,2},1}.
