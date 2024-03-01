{module, beam_ssa_SUITE}.  %% version = 0

{exports, [{all,0},
           {beam_ssa_dead_crash,1},
           {calls,1},
           {combine_sw,1},
           {cover_ssa_dead,1},
           {coverage,1},
           {end_per_group,2},
           {end_per_suite,1},
           {gh_6599,1},
           {grab_bag,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {mapfoldl,0},
           {mapfoldl,1},
           {maps,1},
           {module_info,0},
           {module_info,1},
           {normalize,1},
           {recv,1},
           {redundant_br,1},
           {share_opt,1},
           {stack_init,1},
           {suite,0},
           {trycatch,1},
           {tuple_matching,1}]}.

{attributes, []}.

{labels, 638}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_ssa_SUITE.erl",33}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_ssa_SUITE.erl",35}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[mapfoldl,{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_ssa_SUITE.erl",39}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"beam_ssa_SUITE.erl",40}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[tuple_matching,calls,recv,maps,
                                 cover_ssa_dead,combine_sw,share_opt,
                                 beam_ssa_dead_crash,stack_init,grab_bag,
                                 redundant_br,coverage,normalize,trycatch,
                                 gh_6599]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_ssa_SUITE.erl",58}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",59}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_ssa_SUITE.erl",62}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_ssa_SUITE.erl",65}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_ssa_SUITE.erl",68}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, calls, 1, 16}.
  {label,15}.
    {line,[{location,"beam_ssa_SUITE.erl",71}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,calls},1}.
  {label,16}.
    {allocate_heap,3,{alloc,[{words,4},{floats,0},{funs,1}]},1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {put_tuple2,{y,2},{list,[{atom,return},{atom,value},{x,0}]}}.
    {make_fun3,{f,637},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{y,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",73}]}.
    {call,2,{f,28}}. % fun_call/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,26},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {tr,{y,2},
             {t_tuple,3,true,
                 #{1 => {t_atom,[return]},2 => {t_atom,[value]}}}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,635},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{y,2},{x,2}}.
    {move,{literal,[a,b]},{x,1}}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",74}]}.
    {call,3,{f,30}}. % apply_fun/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,25},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {tr,{y,2},
             {t_tuple,3,true,
                 #{1 => {t_atom,[return]},2 => {t_atom,[value]}}}}]}.
    {move,{literal,[anything]},{x,2}}.
    {move,{atom,id},{x,1}}.
    {move,{y,2},{x,3}}.
    {move,{atom,test_lib},{x,0}}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",75}]}.
    {call,4,{f,32}}. % apply_mfa/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,24},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {tr,{y,2},
             {t_tuple,3,true,
                 #{1 => {t_atom,[return]},2 => {t_atom,[value]}}}}]}.
    {'catch',{y,2},{f,17}}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",76}]}.
    {call,0,{f,34}}. % call_error/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,17}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,23},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,23},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,1},{f,18}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_ssa_SUITE.erl",77}]}.
    {call,1,{f,36}}. % call_error/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,18}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,22},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,22},[{x,1},2,{atom,badarg}]}.
    {move,{literal,[erlang,length,1,2,3,4,5]},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_ssa_SUITE.erl",78}]}.
    {call,1,{f,38}}. % start_it/1
    {test,is_eq_exact,{f,21},[{x,0},{integer,5}]}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",80}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,41}}. % cover_call/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_atom,[ok]}}}}]}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",81}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,41}}. % cover_call/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_atom,[ok]}}}}]}}.
    {'catch',{y,0},{f,19}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",82}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,41}}. % cover_call/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_atom,[ok]}}}}]}}.
  {label,19}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,20},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,20},[{x,1}]}.
    {test,test_arity,{f,20},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,20},[{x,1},{literal,{case_clause,ok}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,20}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",82}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",78}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",77}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",76}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",75}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",74}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",73}]}.
    {badmatch,{x,0}}.


{function, fun_call, 2, 28}.
  {label,27}.
    {line,[{location,"beam_ssa_SUITE.erl",86}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,fun_call},2}.
  {label,28}.
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,{'-calls/1-fun-0-',1},{t_atom,[ok]}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[return]},
                                     2 => {t_atom,[value]}}}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",87}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",88}]}.
    {call,1,{f,637}}. % '-calls/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, apply_fun, 3, 30}.
  {label,29}.
    {line,[{location,"beam_ssa_SUITE.erl",91}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,apply_fun},3}.
  {label,30}.
    {'%',{var_info,{x,0},
                   [{type,{t_fun,2,{'-calls/1-fun-1-',2},{t_atom,[ok]}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_atom,[a,b]},nil}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[return]},
                                     2 => {t_atom,[value]}}}}]}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",92}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"beam_ssa_SUITE.erl",93}]}.
    {call_ext,2,{extfunc,erlang,apply,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, apply_mfa, 4, 32}.
  {label,31}.
    {line,[{location,"beam_ssa_SUITE.erl",96}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,apply_mfa},4}.
  {label,32}.
    {'%',{var_info,{x,0},[{type,{t_atom,[test_lib]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[id]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_cons,{t_atom,[anything]},nil}}]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[return]},
                                     2 => {t_atom,[value]}}}}]}}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",97}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{y,0},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{atom,id},{x,1}}.
    {move,{atom,test_lib},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",98}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, call_error, 0, 34}.
  {label,33}.
    {line,[{location,"beam_ssa_SUITE.erl",101}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,call_error},0}.
  {label,34}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",102}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, call_error, 1, 36}.
  {label,35}.
    {line,[{location,"beam_ssa_SUITE.erl",105}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,call_error},1}.
  {label,36}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",106}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, start_it, 1, 38}.
  {label,37}.
    {line,[{location,"beam_ssa_SUITE.erl",109}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,start_it},1}.
  {label,38}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[erlang,length]},
                         none,
                         {t_integer,{1,5}},
                         none,none},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nonempty_list,{f,39},[{x,2}]}.
    {allocate,0,3}.
    {get_list,{x,2},{x,2},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",111}]}.
    {apply_last,1,0}.
  {label,39}.
    {line,[{location,"beam_ssa_SUITE.erl",110}]}.
    {case_end,{x,0}}.


{function, cover_call, 1, 41}.
  {label,40}.
    {line,[{location,"beam_ssa_SUITE.erl",114}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,cover_call},1}.
  {label,41}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {allocate,1,1}.
    {bif,'=/=',
        {f,0},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {atom,ok}],
        {y,0}}.
    {move,{atom,ok},{x,0}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {test,is_eq_exact,{f,42},[{y,0},{atom,true}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,ok}]}}.
    {deallocate,1}.
    return.
  {label,42}.
    {line,[{location,"beam_ssa_SUITE.erl",118}]}.
    {case_end,{atom,ok}}.


{function, tuple_matching, 1, 44}.
  {label,43}.
    {line,[{location,"beam_ssa_SUITE.erl",124}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tuple_matching},1}.
  {label,44}.
    {allocate,0,0}.
    {move,{literal,{tag,42}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",125}]}.
    {call,1,{f,48}}. % do_tuple_matching/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",127}]}.
    {call,1,{f,57}}. % is_two_tuple/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,46},[{x,0},{atom,true}]}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",128}]}.
    {call,1,{f,57}}. % is_two_tuple/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,45},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,45}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",129}]}.
    {call,1,{f,57}}. % is_two_tuple/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,46}.
    {line,[{location,"beam_ssa_SUITE.erl",127}]}.
    {badmatch,{atom,false}}.


{function, do_tuple_matching, 1, 48}.
  {label,47}.
    {line,[{location,"beam_ssa_SUITE.erl",133}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_tuple_matching},1}.
  {label,48}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[tag]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",134}]}.
    {call,1,{f,50}}. % do_tuple_matching_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{literal,{tag,42}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",135}]}.
    {call,1,{f,52}}. % do_tuple_matching_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{literal,{tag,42}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",136}]}.
    {call,1,{f,54}}. % do_tuple_matching_3/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, do_tuple_matching_1, 1, 50}.
  {label,49}.
    {line,[{location,"beam_ssa_SUITE.erl",139}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_tuple_matching_1},1}.
  {label,50}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[tag]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{literal,{ok,42}},{x,0}}.
    return.


{function, do_tuple_matching_2, 1, 52}.
  {label,51}.
    {line,[{location,"beam_ssa_SUITE.erl",142}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_tuple_matching_2},1}.
  {label,52}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[tag]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{literal,{ok,42}},{x,0}}.
    return.


{function, do_tuple_matching_3, 1, 54}.
  {label,53}.
    {line,[{location,"beam_ssa_SUITE.erl",149}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_tuple_matching_3},1}.
  {label,54}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[tag]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {allocate,0,0}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",153}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,55},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {integer,2}]}.
    {move,{literal,{ok,42}},{x,0}}.
    {deallocate,0}.
    return.
  {label,55}.
    {badmatch,{x,0}}.


{function, is_two_tuple, 1, 57}.
  {label,56}.
    {line,[{location,"beam_ssa_SUITE.erl",157}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,is_two_tuple},1}.
  {label,57}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[atom]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {test,is_tuple,
          {f,58},
          [{tr,{x,0},
               {t_union,{t_atom,[atom]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                         {{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        none}}]}.
    {bif,tuple_size,
         {f,0},
         [{tr,{x,0},
              {t_union,none,none,none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                        {{3,{t_atom,[a]}},
                         {t_tuple,3,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_atom,[b]},
                                    3 => {t_atom,[c]}}}}],
                       none}}],
         {x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{2,16777215}}},{integer,2}],{x,0}}.
    return.
  {label,58}.
    {move,{atom,false},{x,0}}.
    return.


{function, recv, 1, 60}.
  {label,59}.
    {line,[{location,"beam_ssa_SUITE.erl",166}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,recv},1}.
  {label,60}.
    {allocate_heap,1,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {bif,self,{f,0},[],{y,0}}.
    {make_fun3,{f,633},0,0,{x,0},{list,[{y,0}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",171}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {move,{atom,infinity},{x,1}}.
    {call,2,{f,80}}. % sync_wait_mon/2
    {test,is_eq_exact,{f,78},[{x,0},{literal,{result,42}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,631},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",174}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {move,{atom,infinity},{x,1}}.
    {call,2,{f,80}}. % sync_wait_mon/2
    {test,is_eq_exact,{f,77},[{x,0},{literal,{error,down}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,625},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",181}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {move,{atom,infinity},{x,1}}.
    {call,2,{f,80}}. % sync_wait_mon/2
    {test,is_eq_exact,{f,76},[{x,0},{literal,{error,kill_me}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,621},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",184}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {move,{integer,0},{x,1}}.
    {call,2,{f,80}}. % sync_wait_mon/2
    {test,is_eq_exact,{f,75},[{x,0},{literal,{error,timeout}}]}.
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{atom,a},{y,0}]}}.
    {put_tuple2,{x,0},
                {list,[{atom,reporter_state},{x,0},{literal,{run_config,0}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",187}]}.
    {call,1,{f,89}}. % reporter_loop/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => pid}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,74},[{tr,{x,1},pid},{tr,{y,0},pid}]}.
    {line,[{location,"beam_ssa_SUITE.erl",191}]}.
    {call,0,{f,91}}. % bad_sink/0
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",194}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",195}]}.
    {call,0,{f,99}}. % tricky_recv_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,73},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",196}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",197}]}.
    {call,0,{f,99}}. % tricky_recv_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,72},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",200}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",201}]}.
    {call,0,{f,106}}. % tricky_recv_2/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_atom,[no,yes]}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_atom,['maybe']}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_integer,{1,1}}},
                          {t_tuple,2,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_atom,[no,yes]}}}},
                         {{2,{t_integer,{2,2}}},
                          {t_tuple,2,true,
                                   #{1 => {t_integer,{2,2}},
                                     2 => {t_atom,['maybe']}}}}],
                        none}},
           {literal,{1,yes}}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",202}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",203}]}.
    {call,0,{f,106}}. % tricky_recv_2/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_atom,[no,yes]}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_atom,['maybe']}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,70},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_integer,{1,1}}},
                          {t_tuple,2,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_atom,[no,yes]}}}},
                         {{2,{t_integer,{2,2}}},
                          {t_tuple,2,true,
                                   #{1 => {t_integer,{2,2}},
                                     2 => {t_atom,['maybe']}}}}],
                        none}},
           {literal,{2,'maybe'}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,114},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",206}]}.
    {call_ext,1,{extfunc,erlang,spawn,1}}.
    {move,{atom,done},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",207}]}.
    {call_ext,2,{extfunc,erlang,exit,2}}.
    {test_heap,6,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,1},{list,[{x,0},{atom,r0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{literal,{1,42,"name"}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",210}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",211}]}.
    {call,0,{f,119}}. % tricky_recv_3/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_tuple,
        {f,69},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,test_arity,{f,69},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,69},[{x,1},{atom,r0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,69},[{x,1},{literal,[<<0,0,0,1,1,42>>,"name",0]}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,69},[{x,1},{tr,{y,0},pid}]}.
    {test_heap,6,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,1},{list,[{x,0},{atom,r1}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{literal,{2,99,<<"data">>}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",212}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",213}]}.
    {call,0,{f,119}}. % tricky_recv_3/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_tuple,
        {f,68},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,test_arity,{f,68},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,68},[{x,1},{atom,r1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,68},[{x,1},{literal,<<0,0,0,1,2,99,100,97,116,97>>}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,68},[{x,1},{tr,{y,0},pid}]}.
    {test_heap,5,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_list,{x,0},{literal,[r0]},{x,1}}.
    {put_tuple2,{x,1},{list,[{x,1},{literal,{1,42,"name"}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",216}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",217}]}.
    {call,0,{f,127}}. % tricky_recv_4/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_tuple,
        {f,67},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,test_arity,{f,67},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,67},[{x,1},{atom,r0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,67},[{x,1},{literal,[<<0,0,0,1,1,42>>,"name",0]}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,67},[{x,1},{tr,{y,0},pid}]}.
    {test_heap,5,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_list,{x,0},{literal,[r1]},{x,1}}.
    {put_tuple2,{x,1},{list,[{x,1},{literal,{2,99,<<"data">>}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",218}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",219}]}.
    {call,0,{f,127}}. % tricky_recv_4/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_tuple,
        {f,66},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,test_arity,{f,66},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,66},[{x,1},{atom,r1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,66},[{x,1},{literal,<<0,0,0,1,2,99,100,97,116,97>>}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,66},[{x,1},{tr,{y,0},pid}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {trim,1,0}.
    {line,[{location,"beam_ssa_SUITE.erl",222}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",223}]}.
    {call,0,{f,135}}. % tricky_recv_5/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,65},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,a}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",224}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",225}]}.
    {call,0,{f,135}}. % tricky_recv_5/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,64},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,b}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",228}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",229}]}.
    {call,0,{f,144}}. % tricky_recv_5a/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,63},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,a}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",230}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",231}]}.
    {call,0,{f,144}}. % tricky_recv_5a/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,62},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,b}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,any},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",232}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",233}]}.
    {call,0,{f,144}}. % tricky_recv_5a/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,61},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,b}]}.
    {line,[{location,"beam_ssa_SUITE.erl",236}]}.
    {call,0,{f,153}}. % tricky_recv_6/0
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,
                                   {t_float,any},
                                   none,none}}]}}.
    {call_last,0,{f,159},0}. % recv_coverage/0
  {label,61}.
    {line,[{location,"beam_ssa_SUITE.erl",233}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"beam_ssa_SUITE.erl",231}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{location,"beam_ssa_SUITE.erl",229}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"beam_ssa_SUITE.erl",225}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{location,"beam_ssa_SUITE.erl",223}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{location,"beam_ssa_SUITE.erl",219}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{location,"beam_ssa_SUITE.erl",217}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{location,"beam_ssa_SUITE.erl",213}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{location,"beam_ssa_SUITE.erl",211}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{location,"beam_ssa_SUITE.erl",203}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{location,"beam_ssa_SUITE.erl",201}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"beam_ssa_SUITE.erl",197}]}.
    {badmatch,{atom,a}}.
  {label,73}.
    {line,[{location,"beam_ssa_SUITE.erl",195}]}.
    {badmatch,{atom,b}}.
  {label,74}.
    {line,[{location,"beam_ssa_SUITE.erl",187}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{location,"beam_ssa_SUITE.erl",184}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{location,"beam_ssa_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,77}.
    {line,[{location,"beam_ssa_SUITE.erl",174}]}.
    {badmatch,{x,0}}.
  {label,78}.
    {line,[{location,"beam_ssa_SUITE.erl",171}]}.
    {badmatch,{x,0}}.


{function, sync_wait_mon, 2, 80}.
  {label,79}.
    {line,[{location,"beam_ssa_SUITE.erl",242}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,sync_wait_mon},2}.
  {label,80}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => pid,2 => reference}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[infinity]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_tuple_element,{x,0},0,{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
  {label,81}.
    {loop_rec,{f,87},{x,0}}.
    {test,is_tuple,{f,86},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,86},
                        {list,[3,{f,83},5,{f,82}]}}.
  {label,82}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,86},[{x,1},{atom,'DOWN'}]}.
    {test,is_eq_exact,{f,86},[{x,2},{tr,{y,0},reference}]}.
    {test,is_eq_exact,{f,86},[{x,3},{tr,{y,1},pid}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},4,{x,0}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,83}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {select_val,{x,1},{f,86},{list,[{atom,'EXIT'},{f,85},{atom,ack},{f,84}]}}.
  {label,84}.
    {test,is_eq_exact,{f,86},[{x,2},{tr,{y,1},pid}]}.
    {move,{x,0},{y,2}}.
    remove_message.
    {move,{literal,[flush]},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",245}]}.
    {call_ext,2,{extfunc,erlang,demonitor,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,85}.
    {test,is_eq_exact,{f,86},[{x,2},{tr,{y,1},pid}]}.
    {move,{x,0},{y,2}}.
    remove_message.
    {move,{literal,[flush]},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",250}]}.
    {call_ext,2,{extfunc,erlang,demonitor,2}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,86}.
    {loop_rec_end,{f,81}}.
  {label,87}.
    {wait_timeout,{f,81},{y,2}}.
    timeout.
    {move,{literal,[flush]},{x,1}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",253}]}.
    {call_ext,2,{extfunc,erlang,demonitor,2}}.
    {move,{atom,kill},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"beam_ssa_SUITE.erl",254}]}.
    {call_ext,2,{extfunc,erlang,exit,2}}.
    {move,{literal,{error,timeout}},{x,0}}.
    {deallocate,0}.
    return.


{function, reporter_loop, 1, 89}.
  {label,88}.
    {line,[{location,"beam_ssa_SUITE.erl",258}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,reporter_loop},1}.
  {label,89}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[reporter_state]},
                       2 => {t_tuple,2,true,#{1 => {t_atom,[a]},2 => pid}},
                       3 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[run_config]},
                                 2 => {t_integer,{0,0}}}}}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    timeout.
    {get_tuple_element,{y,0},1,{x,0}}.
    {deallocate,1}.
    return.


{function, bad_sink, 0, 91}.
  {label,90}.
    {line,[{location,"beam_ssa_SUITE.erl",264}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,bad_sink},0}.
  {label,91}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",265}]}.
    {call,1,{f,97}}. % my_spawn/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[ok]},2 => pid}}}]}}.
    {get_tuple_element,{x,0},1,{y,0}}.
  {label,92}.
    {loop_rec,{f,95},{x,0}}.
    {test,is_tuple,{f,93},[{x,0}]}.
    {test,is_tagged_tuple,
          {f,94},
          [{tr,{x,0},{t_tuple,0,false,#{}}},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,94},[{x,0},{tr,{y,0},pid}]}.
    remove_message.
    {move,{atom,kill},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",276}]}.
    {call_ext_last,2,{extfunc,erlang,exit,2},1}.
  {label,93}.
    {test,is_eq_exact,{f,94},[{x,0},{atom,error}]}.
    remove_message.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",274}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},1}.
  {label,94}.
    {loop_rec_end,{f,92}}.
  {label,95}.
    {wait,{f,92}}.


{function, my_spawn, 1, 97}.
  {label,96}.
    {line,[{location,"beam_ssa_SUITE.erl",278}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,my_spawn},1}.
  {label,97}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,617},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",279}]}.
    {call_ext,1,{extfunc,erlang,spawn,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {deallocate,0}.
    return.


{function, tricky_recv_1, 0, 99}.
  {label,98}.
    {line,[{location,"beam_ssa_SUITE.erl",285}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_1},0}.
  {label,99}.
    {allocate,0,0}.
  {label,100}.
    {loop_rec,{f,104},{x,0}}.
    {select_val,{x,0},
                {f,103},
                {list,[{integer,1},{f,102},{integer,2},{f,101}]}}.
  {label,101}.
    remove_message.
    {move,{atom,b},{x,0}}.
    {deallocate,0}.
    return.
  {label,102}.
    remove_message.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",288}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{atom,a},{x,0}}.
    {deallocate,0}.
    return.
  {label,103}.
    {loop_rec_end,{f,100}}.
  {label,104}.
    {wait,{f,100}}.


{function, tricky_recv_2, 0, 106}.
  {label,105}.
    {line,[{location,"beam_ssa_SUITE.erl",298}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_2},0}.
  {label,106}.
    {allocate,0,0}.
  {label,107}.
    {loop_rec,{f,112},{x,0}}.
    {select_val,{x,0},
                {f,111},
                {list,[{integer,1},{f,109},{integer,2},{f,108}]}}.
  {label,108}.
    remove_message.
    {move,{literal,{2,'maybe'}},{x,0}}.
    {deallocate,0}.
    return.
  {label,109}.
    remove_message.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",301}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,110},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {integer,1}]}.
    {move,{literal,{1,yes}},{x,0}}.
    {deallocate,0}.
    return.
  {label,110}.
    {move,{literal,{1,no}},{x,0}}.
    {deallocate,0}.
    return.
  {label,111}.
    {loop_rec_end,{f,107}}.
  {label,112}.
    {wait,{f,107}}.


{function, recv_after_inf_in_try, 0, 114}.
  {label,113}.
    {line,[{location,"beam_ssa_SUITE.erl",312}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,recv_after_inf_in_try},0}.
  {label,114}.
    {allocate,1,0}.
    {'try',{y,0},{f,116}}.
  {label,115}.
    {wait,{f,115}}.
  {label,116}.
    {try_case,{y,0}}.
  {label,117}.
    {wait,{f,117}}.


{function, tricky_recv_3, 0, 119}.
  {label,118}.
    {line,[{location,"beam_ssa_SUITE.erl",321}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_3},0}.
  {label,119}.
    {allocate,0,0}.
  {label,120}.
    {loop_rec,{f,125},{x,0}}.
    {test,is_tuple,{f,124},[{x,0}]}.
    {test,test_arity,{f,124},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,124},[{x,1}]}.
    {test,test_arity,{f,124},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,124},[{x,0}]}.
    {test,test_arity,{f,124},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,3}}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {select_val,{x,3},
                {f,124},
                {list,[{integer,1},{f,122},{integer,2},{f,121}]}}.
  {label,121}.
    {move,{x,4},{x,3}}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",329}]}.
    {bs_create_bin,{f,0},
                   4,4,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<0,0,0,1,2>>},
                          {integer,5},
                          {atom,integer},
                          3,1,nil,
                          {x,3},
                          {integer,8},
                          {atom,binary},
                          4,8,nil,
                          {x,0},
                          {atom,all}]}}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1},{x,0}]}}.
    {jump,{f,123}}.
  {label,122}.
    {move,{x,4},{x,3}}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",326}]}.
    {bs_create_bin,{f,0},
                   8,4,16,
                   {x,3},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<0,0,0,1,1>>},
                          {integer,5},
                          {atom,integer},
                          3,1,nil,
                          {x,3},
                          {integer,8}]}}.
    {put_list,{x,0},{literal,[0]},{x,0}}.
    {put_list,{x,3},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1},{x,0}]}}.
  {label,123}.
    {call_last,1,{f,597},0}. % id/1
  {label,124}.
    {loop_rec_end,{f,120}}.
  {label,125}.
    {wait,{f,120}}.


{function, tricky_recv_4, 0, 127}.
  {label,126}.
    {line,[{location,"beam_ssa_SUITE.erl",333}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_4},0}.
  {label,127}.
    {allocate,0,0}.
  {label,128}.
    {loop_rec,{f,133},{x,0}}.
    {test,is_tuple,{f,132},[{x,0}]}.
    {test,test_arity,{f,132},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,132},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,132},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nil,{f,132},[{x,1}]}.
    {test,is_tuple,{f,132},[{x,0}]}.
    {test,test_arity,{f,132},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {select_val,{x,1},
                {f,132},
                {list,[{integer,1},{f,130},{integer,2},{f,129}]}}.
  {label,129}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,3}}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",341}]}.
    {bs_create_bin,{f,0},
                   4,4,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<0,0,0,1,2>>},
                          {integer,5},
                          {atom,integer},
                          3,1,nil,
                          {x,3},
                          {integer,8},
                          {atom,binary},
                          4,8,nil,
                          {x,0},
                          {atom,all}]}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    {jump,{f,131}}.
  {label,130}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,3}}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",338}]}.
    {bs_create_bin,{f,0},
                   8,4,16,
                   {x,3},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<0,0,0,1,1>>},
                          {integer,5},
                          {atom,integer},
                          3,1,nil,
                          {x,3},
                          {integer,8}]}}.
    {put_list,{x,0},{literal,[0]},{x,0}}.
    {put_list,{x,3},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
  {label,131}.
    {call_last,1,{f,597},0}. % id/1
  {label,132}.
    {loop_rec_end,{f,128}}.
  {label,133}.
    {wait,{f,128}}.


{function, tricky_recv_5, 0, 135}.
  {label,134}.
    {line,[{location,"beam_ssa_SUITE.erl",348}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_5},0}.
  {label,135}.
    {allocate,1,0}.
    {'try',{y,0},{f,142}}.
  {label,136}.
    {loop_rec,{f,141},{x,0}}.
    {select_val,{x,0},
                {f,140},
                {list,[{integer,1},{f,138},{integer,2},{f,137}]}}.
  {label,137}.
    remove_message.
    {move,{atom,b},{x,0}}.
    {jump,{f,139}}.
  {label,138}.
    remove_message.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",352}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{atom,a},{x,0}}.
  {label,139}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,140}.
    {loop_rec_end,{f,136}}.
  {label,141}.
    {wait,{f,136}}.
  {label,142}.
    {try_case,{y,0}}.
    {move,{atom,c},{x,0}}.
    {deallocate,1}.
    return.


{function, tricky_recv_5a, 0, 144}.
  {label,143}.
    {line,[{location,"beam_ssa_SUITE.erl",367}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_5a},0}.
  {label,144}.
    {allocate,1,0}.
    {'try',{y,0},{f,151}}.
  {label,145}.
    {loop_rec,{f,150},{x,0}}.
    {test,is_eq_exact,{f,146},[{x,0},{integer,1}]}.
    remove_message.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",371}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {jump,{f,147}}.
  {label,146}.
    remove_message.
    {test,is_eq_exact,{f,148},[{x,0},{integer,1}]}.
  {label,147}.
    {move,{atom,a},{x,0}}.
    {jump,{f,149}}.
  {label,148}.
    {move,{atom,b},{x,0}}.
  {label,149}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,150}.
    {wait,{f,145}}.
  {label,151}.
    {try_case,{y,0}}.
    {move,{atom,c},{x,0}}.
    {deallocate,1}.
    return.


{function, tricky_recv_6, 0, 153}.
  {label,152}.
    {line,[{location,"beam_ssa_SUITE.erl",390}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_6},0}.
  {label,153}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,1}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,0}}.
  {label,154}.
    {loop_rec,{f,157},{x,0}}.
    {test,is_tuple,{f,156},[{x,0}]}.
    {test,test_arity,{f,156},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,155},[{x,1},{tr,{y,1},reference}]}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",394}]}.
    {fconv,{x,0},{fr,0}}.
    {fmove,{float,1.0},{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,155}.
    {test,is_eq_exact,{f,156},[{x,1},{tr,{y,0},reference}]}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",395}]}.
    {fconv,{x,0},{fr,0}}.
    {fmove,{float,2.0},{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,156}.
    {loop_rec_end,{f,154}}.
  {label,157}.
    timeout.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.


{function, recv_coverage, 0, 159}.
  {label,158}.
    {line,[{location,"beam_ssa_SUITE.erl",400}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,recv_coverage},0}.
  {label,159}.
    {allocate,0,0}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",401}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",402}]}.
    {call,0,{f,165}}. % recv_coverage_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,163},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",403}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",404}]}.
    {call,0,{f,165}}. % recv_coverage_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,162},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",406}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",407}]}.
    {call,0,{f,179}}. % recv_coverage_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,161},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",408}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",409}]}.
    {call,0,{f,179}}. % recv_coverage_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,160},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,160}.
    {badmatch,{atom,a}}.
  {label,161}.
    {line,[{location,"beam_ssa_SUITE.erl",407}]}.
    {badmatch,{atom,b}}.
  {label,162}.
    {line,[{location,"beam_ssa_SUITE.erl",404}]}.
    {badmatch,{atom,a}}.
  {label,163}.
    {line,[{location,"beam_ssa_SUITE.erl",402}]}.
    {badmatch,{atom,b}}.


{function, recv_coverage_1, 0, 165}.
  {label,164}.
    {line,[{location,"beam_ssa_SUITE.erl",415}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,recv_coverage_1},0}.
  {label,165}.
    {allocate,0,0}.
  {label,166}.
    {loop_rec,{f,176},{x,0}}.
    {select_val,{x,0},
                {f,175},
                {list,[{integer,1},{f,173},{integer,2},{f,167}]}}.
  {label,167}.
    remove_message.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",427}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,
                        {t_atom,[a]},
                        {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                        none,none,none},
                    nil},
                {t_number,any},
                {t_tuple,2,false,#{}},
                other}},
        {f,172},
        {list,
            [{integer,0},
             {f,171},
             {integer,1},
             {f,170},
             {integer,2},
             {f,169},
             {integer,3},
             {f,168}]}}.
  {label,168}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",431}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,169}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",430}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,170}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",429}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,171}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",428}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,172}.
    {move,{atom,b},{x,0}}.
    {deallocate,0}.
    return.
  {label,173}.
    remove_message.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",419}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,
                        {t_atom,[a]},
                        {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                        none,none,none},
                    nil},
                {t_number,any},
                {t_tuple,2,false,#{}},
                other}},
        {f,177},
        {list,
            [{integer,0},
             {f,174},
             {integer,1},
             {f,174},
             {integer,2},
             {f,174},
             {integer,3},
             {f,174}]}}.
  {label,174}.
    {move,{atom,a},{x,0}}.
    {deallocate,0}.
    return.
  {label,175}.
    {loop_rec_end,{f,166}}.
  {label,176}.
    {wait,{f,166}}.
  {label,177}.
    {case_end,{x,0}}.


{function, recv_coverage_2, 0, 179}.
  {label,178}.
    {line,[{location,"beam_ssa_SUITE.erl",441}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,recv_coverage_2},0}.
  {label,179}.
    {allocate,0,0}.
  {label,180}.
    {loop_rec,{f,186},{x,0}}.
    {select_val,{x,0},
                {f,185},
                {list,[{integer,1},{f,183},{integer,2},{f,181}]}}.
  {label,181}.
    remove_message.
    {move,{integer,2},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",451}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,182},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {integer,1}]}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",454}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,182}.
    {move,{atom,b},{x,0}}.
    {deallocate,0}.
    return.
  {label,183}.
    remove_message.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",444}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,184},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {integer,1}]}.
    {move,{atom,a},{x,0}}.
    {deallocate,0}.
    return.
  {label,184}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",448}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,185}.
    {loop_rec_end,{f,180}}.
  {label,186}.
    {wait,{f,180}}.


{function, maps, 1, 188}.
  {label,187}.
    {line,[{location,"beam_ssa_SUITE.erl",463}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps},1}.
  {label,188}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,189}}.
    {move,{atom,any},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",464}]}.
    {call,1,{f,200}}. % maps_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,189}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,198},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,198},[{x,1}]}.
    {test,test_arity,{f,198},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,198},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,198},[{x,1}]}.
    {move,{literal,#{abc => 0,jkl => 0}},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_ssa_SUITE.erl",466}]}.
    {call,1,{f,202}}. % maps_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{3,{t_atom,[def]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[def]},
                             2 => {t_atom,[ghi]},
                             3 => {t_atom,[abc,jkl]}}}},
                      {{3,{t_atom,[jkl]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[jkl]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[nil]}}}},
                      {{3,{t_atom,[mno]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[mno]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[abc]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,197},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{3,{t_atom,[def]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[def]},
                                     2 => {t_atom,[ghi]},
                                     3 => {t_atom,[abc,jkl]}}}},
                         {{3,{t_atom,[jkl]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[jkl]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[nil]}}}},
                         {{3,{t_atom,[mno]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[mno]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[abc]}}}}],
                        none}},
           {literal,{jkl,nil,nil}}]}.
    {move,{literal,#{abc => 0,def => 0}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",467}]}.
    {call,1,{f,202}}. % maps_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{3,{t_atom,[def]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[def]},
                             2 => {t_atom,[ghi]},
                             3 => {t_atom,[abc,jkl]}}}},
                      {{3,{t_atom,[jkl]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[jkl]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[nil]}}}},
                      {{3,{t_atom,[mno]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[mno]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[abc]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,196},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{3,{t_atom,[def]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[def]},
                                     2 => {t_atom,[ghi]},
                                     3 => {t_atom,[abc,jkl]}}}},
                         {{3,{t_atom,[jkl]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[jkl]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[nil]}}}},
                         {{3,{t_atom,[mno]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[mno]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[abc]}}}}],
                        none}},
           {literal,{def,ghi,abc}}]}.
    {move,{literal,#{def => 0,jkl => 0}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",468}]}.
    {call,1,{f,202}}. % maps_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{3,{t_atom,[def]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[def]},
                             2 => {t_atom,[ghi]},
                             3 => {t_atom,[abc,jkl]}}}},
                      {{3,{t_atom,[jkl]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[jkl]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[nil]}}}},
                      {{3,{t_atom,[mno]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[mno]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[abc]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,195},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{3,{t_atom,[def]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[def]},
                                     2 => {t_atom,[ghi]},
                                     3 => {t_atom,[abc,jkl]}}}},
                         {{3,{t_atom,[jkl]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[jkl]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[nil]}}}},
                         {{3,{t_atom,[mno]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[mno]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[abc]}}}}],
                        none}},
           {literal,{def,ghi,jkl}}]}.
    {move,{literal,#{abc => 0,jkl => 0,mno => 0}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",469}]}.
    {call,1,{f,202}}. % maps_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{3,{t_atom,[def]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[def]},
                             2 => {t_atom,[ghi]},
                             3 => {t_atom,[abc,jkl]}}}},
                      {{3,{t_atom,[jkl]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[jkl]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[nil]}}}},
                      {{3,{t_atom,[mno]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[mno]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[abc]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,194},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{3,{t_atom,[def]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[def]},
                                     2 => {t_atom,[ghi]},
                                     3 => {t_atom,[abc,jkl]}}}},
                         {{3,{t_atom,[jkl]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[jkl]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[nil]}}}},
                         {{3,{t_atom,[mno]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[mno]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[abc]}}}}],
                        none}},
           {literal,{mno,nil,abc}}]}.
    {move,{literal,#{jkl => 0}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",470}]}.
    {call,1,{f,202}}. % maps_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{3,{t_atom,[def]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[def]},
                             2 => {t_atom,[ghi]},
                             3 => {t_atom,[abc,jkl]}}}},
                      {{3,{t_atom,[jkl]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[jkl]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[nil]}}}},
                      {{3,{t_atom,[mno]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[mno]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[abc]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,193},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{3,{t_atom,[def]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[def]},
                                     2 => {t_atom,[ghi]},
                                     3 => {t_atom,[abc,jkl]}}}},
                         {{3,{t_atom,[jkl]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[jkl]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[nil]}}}},
                         {{3,{t_atom,[mno]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[mno]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[abc]}}}}],
                        none}},
           {literal,{jkl,nil,nil}}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",471}]}.
    {call,1,{f,202}}. % maps_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{3,{t_atom,[def]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[def]},
                             2 => {t_atom,[ghi]},
                             3 => {t_atom,[abc,jkl]}}}},
                      {{3,{t_atom,[jkl]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[jkl]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[nil]}}}},
                      {{3,{t_atom,[mno]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[mno]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[abc]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,192},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{3,{t_atom,[def]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[def]},
                                     2 => {t_atom,[ghi]},
                                     3 => {t_atom,[abc,jkl]}}}},
                         {{3,{t_atom,[jkl]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[jkl]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[nil]}}}},
                         {{3,{t_atom,[mno]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[mno]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[abc]}}}}],
                        none}},
           {atom,error}]}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",473}]}.
    {call,0,{f,217}}. % maps_3/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,0},{f,190}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",475}]}.
    {call,1,{f,597}}. % id/1
    {move,{x,0},{y,1}}.
    {'%',
        {var_info,
            {y,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,219}}. % maps_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
  {label,190}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,191},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,191},[{x,1}]}.
    {test,test_arity,{f,191},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,191},[{x,1},{literal,{badmap,true}}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",476}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {trim,1,1}.
    {call,2,{f,219}}. % maps_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",477}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{y,0}}.
    {move,{literal,#{}},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,219}}. % maps_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,191}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",475}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",471}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",470}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",469}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",468}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",467}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",466}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",464}]}.
    {badmatch,{x,0}}.


{function, maps_1, 1, 200}.
  {label,199}.
    {line,[{location,"beam_ssa_SUITE.erl",481}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_1},1}.
  {label,200}.
    {'%',{var_info,{x,0},[{type,{t_atom,[any]}}]}}.
    {allocate,0,0}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",482}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",483}]}.
    {badmatch,{literal,#{}}}.


{function, maps_2, 1, 202}.
  {label,201}.
    {line,[{location,"beam_ssa_SUITE.erl",486}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_2},1}.
  {label,202}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[abc,def,jkl,mno]},
                                 {t_integer,{0,0}}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",487}]}.
    {call,1,{f,205}}. % maps_2a/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{3,{t_atom,[def]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[def]},
                             2 => {t_atom,[ghi]},
                             3 => {t_atom,[abc,jkl]}}}},
                      {{3,{t_atom,[jkl]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[jkl]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[nil]}}}},
                      {{3,{t_atom,[mno]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[mno]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[abc]}}}}],
                     none}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",488}]}.
    {call,1,{f,211}}. % maps_2b/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{3,{t_atom,[def]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[def]},
                             2 => {t_atom,[ghi]},
                             3 => {t_atom,[abc,jkl]}}}},
                      {{3,{t_atom,[jkl]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[jkl]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[nil]}}}},
                      {{3,{t_atom,[mno]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[mno]},
                             2 => {t_atom,[nil]},
                             3 => {t_atom,[abc]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,203},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{3,{t_atom,[def]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[def]},
                                     2 => {t_atom,[ghi]},
                                     3 => {t_atom,[abc,jkl]}}}},
                         {{3,{t_atom,[jkl]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[jkl]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[nil]}}}},
                         {{3,{t_atom,[mno]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[mno]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[abc]}}}}],
                        none}},
           {tr,{y,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{3,{t_atom,[def]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[def]},
                                     2 => {t_atom,[ghi]},
                                     3 => {t_atom,[abc,jkl]}}}},
                         {{3,{t_atom,[jkl]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[jkl]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[nil]}}}},
                         {{3,{t_atom,[mno]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[mno]},
                                     2 => {t_atom,[nil]},
                                     3 => {t_atom,[abc]}}}}],
                        none}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,203}.
    {badmatch,{x,0}}.


{function, maps_2a, 1, 205}.
  {label,204}.
    {line,[{location,"beam_ssa_SUITE.erl",491}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_2a},1}.
  {label,205}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[abc,def,jkl,mno]},
                                 {t_integer,{0,0}}}}]}}.
    {bif,is_map_key,{f,206},[{atom,abc},{x,0}],{x,1}}.
    {test,is_eq_exact,{f,206},[{x,1},{atom,true}]}.
    {test,has_map_fields,{f,206},{x,0},{list,[{atom,def}]}}.
    {move,{literal,{def,ghi,abc}},{x,0}}.
    return.
  {label,206}.
    {bif,is_map_key,{f,207},[{atom,jkl},{x,0}],{x,2}}.
    {test,is_eq_exact,{f,207},[{x,2},{atom,true}]}.
    {test,has_map_fields,{f,207},{x,0},{list,[{atom,def}]}}.
    {move,{literal,{def,ghi,jkl}},{x,0}}.
    return.
  {label,207}.
    {test,is_eq_exact,{f,208},[{x,1},{atom,true}]}.
    {test,has_map_fields,{f,208},{x,0},{list,[{atom,mno}]}}.
    {move,{literal,{mno,nil,abc}},{x,0}}.
    return.
  {label,208}.
    {test,is_eq_exact,{f,209},[{x,2},{atom,true}]}.
    {move,{literal,{jkl,nil,nil}},{x,0}}.
    return.
  {label,209}.
    {move,{atom,error},{x,0}}.
    return.


{function, maps_2b, 1, 211}.
  {label,210}.
    {line,[{location,"beam_ssa_SUITE.erl",521}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_2b},1}.
  {label,211}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[abc,def,jkl,mno]},
                                 {t_integer,{0,0}}}}]}}.
    {bif,is_map_key,{f,212},[{atom,abc},{x,0}],{x,1}}.
    {test,is_eq_exact,{f,212},[{x,1},{atom,true}]}.
    {test,has_map_fields,{f,212},{x,0},{list,[{atom,def}]}}.
    {move,{literal,{def,ghi,abc}},{x,0}}.
    return.
  {label,212}.
    {bif,is_map_key,{f,213},[{atom,jkl},{x,0}],{x,2}}.
    {test,is_eq_exact,{f,213},[{x,2},{atom,true}]}.
    {test,has_map_fields,{f,213},{x,0},{list,[{atom,def}]}}.
    {move,{literal,{def,ghi,jkl}},{x,0}}.
    return.
  {label,213}.
    {test,is_eq_exact,{f,214},[{x,1},{atom,true}]}.
    {test,has_map_fields,{f,214},{x,0},{list,[{atom,mno}]}}.
    {move,{literal,{mno,nil,abc}},{x,0}}.
    return.
  {label,214}.
    {test,is_eq_exact,{f,215},[{x,2},{atom,true}]}.
    {move,{literal,{jkl,nil,nil}},{x,0}}.
    return.
  {label,215}.
    {move,{atom,error},{x,0}}.
    return.


{function, maps_3, 0, 217}.
  {label,216}.
    {line,[{location,"beam_ssa_SUITE.erl",552}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_3},0}.
  {label,217}.
    {move,nil,{x,0}}.
    return.


{function, maps_4, 2, 219}.
  {label,218}.
    {line,[{location,"beam_ssa_SUITE.erl",560}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_4},2}.
  {label,219}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,223},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,is_eq_exact,
        {f,221},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {atom,true}]}.
    {test,is_map,
        {f,222},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {line,[{location,"beam_ssa_SUITE.erl",561}]}.
    {put_map_exact,{f,0},{x,0},{x,1},1,{list,[{atom,ok},{atom,ok}]}}.
    {allocate,1,1}.
    {'try',{y,0},{f,220}}.
    {line,[{scope,[3]},{location,"beam_ssa_SUITE.erl",562}]}.
    {try_case_end,{x,0}}.
  {label,220}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,221}.
    {test,is_eq_exact,
        {f,223},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {atom,true}]}.
  {label,222}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{scope,[0,3]},{location,"beam_ssa_SUITE.erl",561}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,223}.
    {move,{atom,error},{x,0}}.
    return.


{function, cover_ssa_dead, 1, 225}.
  {label,224}.
    {line,[{location,"beam_ssa_SUITE.erl",572}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,cover_ssa_dead},1}.
  {label,225}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,nil,{x,2}}.
    {move,{atom,escapable},{x,1}}.
    {move,{atom,true},{x,3}}.
    {move,{atom,str},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",573}]}.
    {call,4,{f,257}}. % format_str/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,255},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {atom,str}]}.
    {move,{atom,iolist},{x,2}}.
    {move,{atom,escapable},{x,1}}.
    {move,{atom,true},{x,3}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",574}]}.
    {call,4,{f,257}}. % format_str/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[bad]},
         {t_cons,
          {t_union,
           {t_atom,any},
           {t_list,
            {t_union,
             {t_atom,[a]},
             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
             none,none,none},
            nil},
           {t_number,any},
           {t_tuple,2,false,#{}},
           other},
          nil},
         none,none,none}}]}}.
    {test,is_eq_exact,
        {f,254},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[bad]},
                 {t_cons,
                     {t_union,
                         {t_atom,any},
                         {t_list,
                             {t_union,
                                 {t_atom,[a]},
                                 {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                 none,none,none},
                             nil},
                         {t_number,any},
                         {t_tuple,2,false,#{}},
                         other},
                     nil},
                 none,none,none}},
         {literal,[iolist,str]}]}.
    {move,nil,{x,2}}.
    {move,{atom,not_escapable},{x,1}}.
    {move,{atom,true},{x,3}}.
    {move,{atom,str},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",575}]}.
    {call,4,{f,257}}. % format_str/4
    {'%',{var_info,{x,0},[{type,{t_atom,[bad]}}]}}.
    {move,{atom,iolist},{x,2}}.
    {move,{atom,not_escapable},{x,1}}.
    {move,{atom,true},{x,3}}.
    {move,{atom,str},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",576}]}.
    {call,4,{f,257}}. % format_str/4
    {'%',{var_info,{x,0},[{type,{t_atom,[bad]}}]}}.
    {move,nil,{x,2}}.
    {move,{atom,escapable},{x,1}}.
    {move,{atom,false},{x,3}}.
    {move,{atom,str},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",577}]}.
    {call,4,{f,257}}. % format_str/4
    {'%',{var_info,{x,0},[{type,{t_atom,[bad]}}]}}.
    {move,nil,{x,2}}.
    {move,{atom,escapable},{x,1}}.
    {move,{atom,bad},{x,3}}.
    {move,{atom,str},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",578}]}.
    {call,4,{f,257}}. % format_str/4
    {'%',{var_info,{x,0},[{type,{t_atom,[bad]}}]}}.
    {move,{integer,77},{x,1}}.
    {move,{integer,9999},{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",581}]}.
    {call,3,{f,261}}. % contains/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_atom,[wx_ref]},
                                 2 => {t_atom,[any_type]},
                                 3 => {t_atom,[any_ref]}}},
                       2 => {t_number,{77,77}},
                       3 => {t_number,{9999,9999}},
                       4 => nil}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,253},[{tr,{x,1},{t_number,{77,77}}},{integer,77}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,253},
          [{tr,{x,1},{t_number,{9999,9999}}},{integer,9999}]}.
    {move,{float,77.0},{x,1}}.
    {move,{integer,9999},{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",582}]}.
    {call,3,{f,261}}. % contains/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_atom,[wx_ref]},
                                 2 => {t_atom,[any_type]},
                                 3 => {t_atom,[any_ref]}}},
                       2 => {t_number,{77,77}},
                       3 => {t_number,{9999,9999}},
                       4 => nil}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,252},[{tr,{x,1},{t_number,{77,77}}},{float,77.0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,252},
          [{tr,{x,1},{t_number,{9999,9999}}},{integer,9999}]}.
    {move,{integer,77},{x,1}}.
    {move,{float,9999.0},{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",583}]}.
    {call,3,{f,261}}. % contains/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_atom,[wx_ref]},
                                 2 => {t_atom,[any_type]},
                                 3 => {t_atom,[any_ref]}}},
                       2 => {t_number,{77,77}},
                       3 => {t_number,{9999,9999}},
                       4 => nil}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,251},[{tr,{x,1},{t_number,{77,77}}},{integer,77}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,251},
          [{tr,{x,1},{t_number,{9999,9999}}},{float,9999.0}]}.
    {move,{float,77.0},{x,1}}.
    {move,{float,9999.0},{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",584}]}.
    {call,3,{f,261}}. % contains/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_atom,[wx_ref]},
                                 2 => {t_atom,[any_type]},
                                 3 => {t_atom,[any_ref]}}},
                       2 => {t_number,{77,77}},
                       3 => {t_number,{9999,9999}},
                       4 => nil}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,250},[{tr,{x,1},{t_number,{77,77}}},{float,77.0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,250},
          [{tr,{x,1},{t_number,{9999,9999}}},{float,9999.0}]}.
    {move,{literal,{42,43}},{x,1}}.
    {move,{literal,[option]},{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",585}]}.
    {call,3,{f,261}}. % contains/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[any_type]},
                                     2 => {t_atom,[any_ref]},
                                     3 => {t_number,{42,42}},
                                     4 => {t_number,{43,43}},
                                     5 => {t_list,{t_atom,[option]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,249},
          [{tr,{x,0},
               {t_tuple,5,true,
                        #{1 => {t_atom,[any_type]},
                          2 => {t_atom,[any_ref]},
                          3 => {t_number,{42,42}},
                          4 => {t_number,{43,43}},
                          5 => {t_list,{t_atom,[option]},nil}}}},
           {literal,{any_type,any_ref,42,43,[option]}}]}.
    {move,{literal,{42,43}},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",586}]}.
    {call,3,{f,261}}. % contains/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[any_type]},
                                     2 => {t_atom,[any_ref]},
                                     3 => {t_number,{42,42}},
                                     4 => {t_number,{43,43}},
                                     5 => {t_list,{t_atom,[option]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,248},
          [{tr,{x,0},
               {t_tuple,5,true,
                        #{1 => {t_atom,[any_type]},
                          2 => {t_atom,[any_ref]},
                          3 => {t_number,{42,42}},
                          4 => {t_number,{43,43}},
                          5 => {t_list,{t_atom,[option]},nil}}}},
           {literal,{any_type,any_ref,42,43,[]}}]}.
    {move,{literal,{42.0,43}},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",587}]}.
    {call,3,{f,261}}. % contains/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[any_type]},
                                     2 => {t_atom,[any_ref]},
                                     3 => {t_number,{42,42}},
                                     4 => {t_number,{43,43}},
                                     5 => {t_list,{t_atom,[option]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,247},
          [{tr,{x,0},
               {t_tuple,5,true,
                        #{1 => {t_atom,[any_type]},
                          2 => {t_atom,[any_ref]},
                          3 => {t_number,{42,42}},
                          4 => {t_number,{43,43}},
                          5 => {t_list,{t_atom,[option]},nil}}}},
           {literal,{any_type,any_ref,42.0,43,[]}}]}.
    {move,{literal,{42,43.0}},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",588}]}.
    {call,3,{f,261}}. % contains/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[any_type]},
                                     2 => {t_atom,[any_ref]},
                                     3 => {t_number,{42,42}},
                                     4 => {t_number,{43,43}},
                                     5 => {t_list,{t_atom,[option]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,246},
          [{tr,{x,0},
               {t_tuple,5,true,
                        #{1 => {t_atom,[any_type]},
                          2 => {t_atom,[any_ref]},
                          3 => {t_number,{42,42}},
                          4 => {t_number,{43,43}},
                          5 => {t_list,{t_atom,[option]},nil}}}},
           {literal,{any_type,any_ref,42,43.0,[]}}]}.
    {move,{literal,{42.0,43.0}},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",589}]}.
    {call,3,{f,261}}. % contains/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[any_type]},
                                     2 => {t_atom,[any_ref]},
                                     3 => {t_number,{42,42}},
                                     4 => {t_number,{43,43}},
                                     5 => {t_list,{t_atom,[option]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,245},
          [{tr,{x,0},
               {t_tuple,5,true,
                        #{1 => {t_atom,[any_type]},
                          2 => {t_atom,[any_ref]},
                          3 => {t_number,{42,42}},
                          4 => {t_number,{43,43}},
                          5 => {t_list,{t_atom,[option]},nil}}}},
           {literal,{any_type,any_ref,42.0,43.0,[]}}]}.
    {move,{atom,'=:='},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",591}]}.
    {call,2,{f,264}}. % conv_alub/2
    {'%',{var_info,{x,0},[{type,{t_atom,[nope]}}]}}.
    {move,{atom,'=:='},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",592}]}.
    {call,2,{f,264}}. % conv_alub/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,none},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",593}]}.
    {call,2,{f,264}}. % conv_alub/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,none},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",594}]}.
    {call,2,{f,264}}. % conv_alub/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",596}]}.
    {call,3,{f,268}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,244},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,false}}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",597}]}.
    {call,3,{f,268}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,243},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{true,false}}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",598}]}.
    {call,3,{f,268}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,242},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,true}}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",599}]}.
    {call,3,{f,268}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,241},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,false}}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",600}]}.
    {call,3,{f,268}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,240},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,true}}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",601}]}.
    {call,3,{f,268}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,239},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,false}}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",602}]}.
    {call,3,{f,268}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,238},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{true,true}}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",603}]}.
    {call,3,{f,268}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,237},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,true}}]}.
    {move,{float,0.0},{x,1}}.
    {move,{float,1.0},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",605}]}.
    {call,2,{f,279}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,236},[{tr,{x,0},{t_float,any}},{float,100.0}]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",606}]}.
    {call,2,{f,279}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,235},[{tr,{x,0},{t_float,any}},{float,100.0}]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",607}]}.
    {call,2,{f,279}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,234},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {move,{float,0.0},{x,1}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",608}]}.
    {call,2,{f,279}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,233},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {move,{float,10.0},{x,1}}.
    {move,{float,4.0},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",609}]}.
    {call,2,{f,279}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,232},[{tr,{x,0},{t_float,any}},{float,40.0}]}.
    {move,{integer,10},{x,1}}.
    {move,{integer,6},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",610}]}.
    {call,2,{f,279}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,231},[{tr,{x,0},{t_float,any}},{float,60.0}]}.
    {'catch',{y,0},{f,226}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",612}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {badmatch,{x,0}}.
  {label,226}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,230},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,230},[{x,1}]}.
    {test,test_arity,{f,230},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,230},[{x,1},{literal,{badmatch,42}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",614}]}.
    {call,2,{f,615}}. % '-cover_ssa_dead/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,229},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {literal,<<>>}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",616}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_nil,
        {f,228},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {move,{atom,false},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,227},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,227}.
    {badmatch,{x,0}}.
  {label,228}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",614}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",612}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",610}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",609}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",608}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",607}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",606}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",605}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",603}]}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",602}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",601}]}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",600}]}.
    {badmatch,{x,0}}.
  {label,241}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",599}]}.
    {badmatch,{x,0}}.
  {label,242}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",598}]}.
    {badmatch,{x,0}}.
  {label,243}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",597}]}.
    {badmatch,{x,0}}.
  {label,244}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",596}]}.
    {badmatch,{x,0}}.
  {label,245}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",589}]}.
    {badmatch,{x,0}}.
  {label,246}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",588}]}.
    {badmatch,{x,0}}.
  {label,247}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",587}]}.
    {badmatch,{x,0}}.
  {label,248}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",586}]}.
    {badmatch,{x,0}}.
  {label,249}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",585}]}.
    {badmatch,{x,0}}.
  {label,250}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",584}]}.
    {badmatch,{x,0}}.
  {label,251}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",583}]}.
    {badmatch,{x,0}}.
  {label,252}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",582}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",581}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",573}]}.
    {badmatch,{x,0}}.


{function, format_str, 4, 257}.
  {label,256}.
    {line,[{location,"beam_ssa_SUITE.erl",620}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,format_str},4}.
  {label,257}.
    {'%',{var_info,{x,0},[{type,{t_atom,[str]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[escapable,not_escapable]}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[iolist]},nil,none,none,none}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,[bad,false,true]}}]}}.
    {allocate,3,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,1},{t_atom,[escapable,not_escapable]}},{atom,escapable}],
         {y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",622}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,{f,259},[{y,0},{atom,true}]}.
    {test,is_eq_exact,
          {f,259},
          [{tr,{y,1},{t_atom,[bad,false,true]}},{atom,true}]}.
    {test,is_nil,
          {f,258},
          [{tr,{y,2},{t_union,{t_atom,[iolist]},nil,none,none,none}}]}.
    {call_last,1,{f,597},3}. % id/1
  {label,258}.
    {trim,3,0}.
    {line,[{location,"beam_ssa_SUITE.erl",626}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,iolist},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,259}.
    {move,{atom,bad},{x,0}}.
    {deallocate,3}.
    return.


{function, contains, 3, 261}.
  {label,260}.
    {line,[{location,"beam_ssa_SUITE.erl",631}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,contains},3}.
  {label,261}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[wx_ref]},
                                     2 => {t_atom,[any_type]},
                                     3 => {t_atom,[any_ref]}}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,
                     {t_number,{77,77}},
                     [{{2,{t_float,{42.0,42.0}}},
                       {t_tuple,2,true,
                           #{1 => {t_float,{42.0,42.0}},
                             2 => {t_number,{43,43}}}}},
                      {{2,{t_integer,{42,42}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{42,42}},
                             2 => {t_number,{43,43}}}}}],
                     none}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,
                                   {t_list,{t_atom,[option]},nil},
                                   {t_number,{9999,9999}},
                                   none,none}}]}}.
    {test,is_number,
          {f,262},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{77,77}},
                        [{{2,{t_float,{42.0,42.0}}},
                          {t_tuple,2,true,
                                   #{1 => {t_float,{42.0,42.0}},
                                     2 => {t_number,{43,43}}}}},
                         {{2,{t_integer,{42,42}}},
                          {t_tuple,2,true,
                                   #{1 => {t_integer,{42,42}},
                                     2 => {t_number,{43,43}}}}}],
                        none}}]}.
    {test,is_number,
          {f,262},
          [{tr,{x,2},
               {t_union,none,
                        {t_list,{t_atom,[option]},nil},
                        {t_number,{9999,9999}},
                        none,none}}]}.
    {test_heap,5,3}.
    {put_tuple2,{x,0},
                {list,[{literal,{wx_ref,any_type,any_ref}},{x,1},{x,2},nil]}}.
    return.
  {label,262}.
    {test,is_tuple,
          {f,260},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{77,77}},
                        [{{2,{t_float,{42.0,42.0}}},
                          {t_tuple,2,true,
                                   #{1 => {t_float,{42.0,42.0}},
                                     2 => {t_number,{43,43}}}}},
                         {{2,{t_integer,{42,42}}},
                          {t_tuple,2,true,
                                   #{1 => {t_integer,{42,42}},
                                     2 => {t_number,{43,43}}}}}],
                        none}}]}.
    {test,is_list,
          {f,260},
          [{tr,{x,2},
               {t_union,none,
                        {t_list,{t_atom,[option]},nil},
                        {t_number,{9999,9999}},
                        none,none}}]}.
    {test_heap,6,3}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,any_type},{atom,any_ref},{x,0},{x,1},{x,2}]}}.
    return.


{function, conv_alub, 2, 264}.
  {label,263}.
    {line,[{location,"beam_ssa_SUITE.erl",637}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,conv_alub},2}.
  {label,264}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,['=:=',none]}}]}}.
    {test,is_eq_exact,{f,265},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,265}.
    {test,is_eq_exact,{f,266},[{tr,{x,1},{t_atom,['=:=',none]}},{atom,none}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,266}.
    {move,{atom,nope},{x,0}}.
    return.


{function, eval_alu, 3, 268}.
  {label,267}.
    {line,[{location,"beam_ssa_SUITE.erl",647}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,eval_alu},3}.
  {label,268}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,269},[{x,0},{atom,true}]}.
    {test,is_eq_exact,{f,269},[{x,1},{atom,true}]}.
    {bif,'=:=',{f,0},[{tr,{x,2},{t_atom,[false,true]}},{atom,false}],{x,3}}.
    {jump,{f,270}}.
  {label,269}.
    {move,{atom,false},{x,3}}.
  {label,270}.
    {test,is_ne_exact,{f,271},[{x,0},{atom,true}]}.
    {test,is_eq_exact,{f,272},[{x,1},{atom,true}]}.
  {label,271}.
    {move,{atom,false},{x,4}}.
    {jump,{f,273}}.
  {label,272}.
    {move,{x,2},{x,4}}.
  {label,273}.
    {bif,'or',
         {f,0},
         [{tr,{x,3},{t_atom,[false,true]}},{tr,{x,4},{t_atom,[false,true]}}],
         {x,3}}.
    {test,is_eq_exact,{f,274},[{x,0},{atom,true}]}.
    {move,{x,1},{x,4}}.
    {jump,{f,275}}.
  {label,274}.
    {move,{atom,false},{x,4}}.
  {label,275}.
    {test,is_eq_exact,{f,276},[{x,2},{atom,true}]}.
    {move,{atom,false},{x,0}}.
    {jump,{f,277}}.
  {label,276}.
    {test,is_ne_exact,{f,277},[{x,0},{atom,true}]}.
    {move,{x,1},{x,0}}.
  {label,277}.
    {test_heap,3,5}.
    {bif,'or',
         {f,0},
         [{tr,{x,4},{t_atom,[false,true]}},{tr,{x,0},{t_atom,[false,true]}}],
         {x,0}}.
    {put_tuple2,{x,0},{list,[{x,3},{x,0}]}}.
    return.


{function, percentage, 2, 279}.
  {label,278}.
    {line,[{location,"beam_ssa_SUITE.erl",654}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,percentage},2}.
  {label,279}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,6}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{0,10}}}]}}.
    {test,is_eq,{f,281},[{tr,{x,1},{t_number,{0,10}}},{integer,0}]}.
    {test,is_eq,{f,280},[{tr,{x,0},{t_number,{0,6}}},{integer,0}]}.
    {move,{float,0.0},{x,0}}.
    return.
  {label,280}.
    {move,{float,100.0},{x,0}}.
    return.
  {label,281}.
    {line,[{location,"beam_ssa_SUITE.erl",660}]}.
    {fconv,{tr,{x,0},{t_number,{0,6}}},{fr,0}}.
    {fconv,{tr,{x,1},{t_number,{0,10}}},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {fmove,{float,100.0},{fr,1}}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    return.


{function, combine_sw, 1, 283}.
  {label,282}.
    {line,[{location,"beam_ssa_SUITE.erl",663}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,combine_sw},1}.
  {label,283}.
    {allocate,0,0}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",664}]}.
    {call,1,{f,295}}. % do_comb_sw_1/1
    {test,is_eq_exact,{f,293},[{x,0},{literal,[a]}]}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",665}]}.
    {call,1,{f,295}}. % do_comb_sw_1/1
    {test,is_eq_exact,{f,292},[{x,0},{literal,[b,b]}]}.
    {move,{atom,c},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",666}]}.
    {call,1,{f,295}}. % do_comb_sw_1/1
    {test,is_eq_exact,{f,291},[{x,0},{literal,[c]}]}.
    {move,{atom,c},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",667}]}.
    {call,1,{f,295}}. % do_comb_sw_1/1
    {test,is_eq_exact,{f,290},[{x,0},{literal,[c]}]}.
    {move,{atom,z},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",668}]}.
    {call,1,{f,295}}. % do_comb_sw_1/1
    {test,is_nil,{f,289},[{x,0}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",670}]}.
    {call,1,{f,300}}. % do_comb_sw_2/1
    {test,is_eq_exact,{f,288},[{x,0},{literal,[a]}]}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",671}]}.
    {call,1,{f,300}}. % do_comb_sw_2/1
    {test,is_eq_exact,{f,287},[{x,0},{literal,[b2,b1]}]}.
    {move,{atom,c},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",672}]}.
    {call,1,{f,300}}. % do_comb_sw_2/1
    {test,is_eq_exact,{f,286},[{x,0},{literal,[c]}]}.
    {move,{atom,c},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",673}]}.
    {call,1,{f,300}}. % do_comb_sw_2/1
    {test,is_eq_exact,{f,285},[{x,0},{literal,[c]}]}.
    {move,{atom,z},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",674}]}.
    {call,1,{f,300}}. % do_comb_sw_2/1
    {test,is_nil,{f,284},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,284}.
    {badmatch,{x,0}}.
  {label,285}.
    {line,[{location,"beam_ssa_SUITE.erl",673}]}.
    {badmatch,{x,0}}.
  {label,286}.
    {line,[{location,"beam_ssa_SUITE.erl",672}]}.
    {badmatch,{x,0}}.
  {label,287}.
    {line,[{location,"beam_ssa_SUITE.erl",671}]}.
    {badmatch,{x,0}}.
  {label,288}.
    {line,[{location,"beam_ssa_SUITE.erl",670}]}.
    {badmatch,{x,0}}.
  {label,289}.
    {line,[{location,"beam_ssa_SUITE.erl",668}]}.
    {badmatch,{x,0}}.
  {label,290}.
    {line,[{location,"beam_ssa_SUITE.erl",667}]}.
    {badmatch,{x,0}}.
  {label,291}.
    {line,[{location,"beam_ssa_SUITE.erl",666}]}.
    {badmatch,{x,0}}.
  {label,292}.
    {line,[{location,"beam_ssa_SUITE.erl",665}]}.
    {badmatch,{x,0}}.
  {label,293}.
    {line,[{location,"beam_ssa_SUITE.erl",664}]}.
    {badmatch,{x,0}}.


{function, do_comb_sw_1, 1, 295}.
  {label,294}.
    {line,[{location,"beam_ssa_SUITE.erl",678}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_comb_sw_1},1}.
  {label,295}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,z]}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,nil,{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",679}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {select_val,{tr,{y,0},{t_atom,[a,b,c,z]}},
                {f,298},
                {list,[{atom,a},{f,296},{atom,b},{f,296},{atom,c},{f,297}]}}.
  {label,296}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",682}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test,is_eq_exact,{f,298},[{y,0},{atom,b}]}.
  {label,297}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",688}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
  {label,298}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",692}]}.
    {call_ext_last,1,{extfunc,erlang,erase,1},1}.


{function, do_comb_sw_2, 1, 300}.
  {label,299}.
    {line,[{location,"beam_ssa_SUITE.erl",694}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_comb_sw_2},1}.
  {label,300}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,z]}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,nil,{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",695}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {select_val,{tr,{y,0},{t_atom,[a,b,c,z]}},
                {f,303},
                {list,[{atom,a},{f,302},{atom,b},{f,301}]}}.
  {label,301}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{atom,b1},{x,0},{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",700}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {jump,{f,303}}.
  {label,302}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{atom,a},{x,0},{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",698}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
  {label,303}.
    {select_val,{tr,{y,0},{t_atom,[a,b,c,z]}},
                {f,306},
                {list,[{atom,b},{f,305},{atom,c},{f,304}]}}.
  {label,304}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{atom,c},{x,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",708}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {jump,{f,306}}.
  {label,305}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{atom,b2},{x,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",706}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
  {label,306}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",712}]}.
    {call_ext_last,1,{extfunc,erlang,erase,1},1}.


{function, share_opt, 1, 308}.
  {label,307}.
    {line,[{location,"beam_ssa_SUITE.erl",714}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,share_opt},1}.
  {label,308}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",715}]}.
    {call,1,{f,310}}. % do_share_opt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",716}]}.
    {call,0,{f,313}}. % do_share_opt_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {call_last,0,{f,321},0}. % do_share_opt_3/0


{function, do_share_opt_1, 1, 310}.
  {label,309}.
    {line,[{location,"beam_ssa_SUITE.erl",720}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_share_opt_1},1}.
  {label,310}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {allocate,0,0}.
  {label,311}.
    {wait_timeout,{f,311},{integer,1}}.
    timeout.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, do_share_opt_2, 0, 313}.
  {label,312}.
    {line,[{location,"beam_ssa_SUITE.erl",729}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_share_opt_2},0}.
  {label,313}.
    {allocate,0,0}.
    {move,{atom,ok},{x,1}}.
    {move,{literal,{[pointtopoint],[{dstaddr,any}]}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",730}]}.
    {call,2,{f,315}}. % sopt_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,ok},{x,1}}.
    {move,{literal,{[broadcast],[{broadaddr,any}]}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",731}]}.
    {call,2,{f,315}}. % sopt_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,ok},{x,1}}.
    {move,{literal,{[],[]}},{x,0}}.
    {call_last,2,{f,315},0}. % sopt_2/2


{function, sopt_2, 2, 315}.
  {label,314}.
    {line,[{location,"beam_ssa_SUITE.erl",735}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,sopt_2},2}.
  {label,315}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_list,{t_atom,[broadcast,pointtopoint]},nil},
           2 =>
            {t_list,
             {t_union,none,none,none,
              [{{2,{t_atom,[broadaddr]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[broadaddr]},2 => {t_atom,[any]}}}},
               {{2,{t_atom,[dstaddr]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[dstaddr]},2 => {t_atom,[any]}}}}],
              none},
             nil}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ok]}}]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tuple_element,{x,0},0,{y,2}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{y,2},{x,1}}.
    {move,{atom,broadcast},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",736}]}.
    {call_ext,2,{extfunc,lists,member,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,2},{x,1}}.
    {move,{atom,pointtopoint},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",737}]}.
    {call_ext,2,{extfunc,lists,member,2}}.
    {test,is_nonempty_list,{f,318},[{y,1}]}.
    {get_list,{y,1},{x,1},{x,2}}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,316},[{x,1},{atom,dstaddr}]}.
    {test,is_eq_exact,{f,319},[{x,0},{atom,true}]}.
    {jump,{f,317}}.
  {label,316}.
    {test,is_eq_exact,{f,319},[{y,0},{atom,true}]}.
  {label,317}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{y,2},{x,2}]}}.
    {move,{atom,ok},{x,1}}.
    {call_last,2,{f,315},3}. % sopt_2/2
  {label,318}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,319}.
    {line,[{location,"beam_ssa_SUITE.erl",738}]}.
    {case_end,{y,1}}.


{function, do_share_opt_3, 0, 321}.
  {label,320}.
    {line,[{location,"beam_ssa_SUITE.erl",749}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_share_opt_3},0}.
  {label,321}.
    {allocate,0,0}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",750}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,325}}. % sopt_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,323},[{x,0},{atom,true}]}.
    {move,{atom,nok},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",751}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,325}}. % sopt_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,322},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,322}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,323}.
    {line,[{location,"beam_ssa_SUITE.erl",750}]}.
    {badmatch,{atom,false}}.


{function, sopt_3, 1, 325}.
  {label,324}.
    {line,[{location,"beam_ssa_SUITE.erl",754}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,sopt_3},1}.
  {label,325}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,326},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {atom,ok}]}.
    {allocate,0,0}.
    {move,{integer,756},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",756}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{atom,true},{x,0}}.
    {deallocate,0}.
    return.
  {label,326}.
    {allocate,0,0}.
    {move,{integer,756},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{atom,false},{x,0}}.
    {deallocate,0}.
    return.


{function, beam_ssa_dead_crash, 1, 328}.
  {label,327}.
    {line,[{location,"beam_ssa_SUITE.erl",758}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,beam_ssa_dead_crash},1}.
  {label,328}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",759}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,332}}. % do_beam_ssa_dead_crash/2
    {'%',{var_info,{x,0},[{type,{t_atom,[neither,not_A_B,not_A_not_B]}}]}}.
    {test,is_eq_exact,
          {f,330},
          [{tr,{x,0},{t_atom,[neither,not_A_B,not_A_not_B]}},{atom,not_A_B}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",760}]}.
    {call,2,{f,332}}. % do_beam_ssa_dead_crash/2
    {'%',{var_info,{x,0},[{type,{t_atom,[not_A_B,not_A_not_B]}}]}}.
    {test,is_eq_exact,
          {f,329},
          [{tr,{x,0},{t_atom,[not_A_B,not_A_not_B]}},{atom,not_A_not_B}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",761}]}.
    {call,2,{f,332}}. % do_beam_ssa_dead_crash/2
    {'%',{var_info,{x,0},[{type,{t_atom,[neither]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",762}]}.
    {call,2,{f,332}}. % do_beam_ssa_dead_crash/2
    {'%',{var_info,{x,0},[{type,{t_atom,[neither]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,329}.
    {line,[{location,"beam_ssa_SUITE.erl",760}]}.
    {badmatch,{atom,not_A_B}}.
  {label,330}.
    {line,[{location,"beam_ssa_SUITE.erl",759}]}.
    {badmatch,{x,0}}.


{function, do_beam_ssa_dead_crash, 2, 332}.
  {label,331}.
    {line,[{location,"beam_ssa_SUITE.erl",765}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_beam_ssa_dead_crash},2}.
  {label,332}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,
                        {t_atom,[a]},
                        {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                        none,none,none},
                    nil},
                {t_number,any},
                {t_tuple,2,false,#{}},
                other}},
        {f,337},
        {list,[{atom,false},{f,334},{atom,true},{f,333}]}}.
  {label,333}.
    {move,{atom,neither},{x,0}}.
    return.
  {label,334}.
    {select_val,
        {tr,{x,1},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,
                        {t_atom,[a]},
                        {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                        none,none,none},
                    nil},
                {t_number,any},
                {t_tuple,2,false,#{}},
                other}},
        {f,336},
        {list,[{atom,false},{f,335},{atom,nil},{f,335}]}}.
  {label,335}.
    {line,[{location,"beam_ssa_SUITE.erl",802}]}.
    {bif,'not',{f,0},[{tr,{x,1},{t_atom,[false,nil]}}],{x,0}}.
    {move,{atom,not_A_not_B},{x,0}}.
    return.
  {label,336}.
    {move,{atom,not_A_B},{x,0}}.
    return.
  {label,337}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",783}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, stack_init, 1, 339}.
  {label,338}.
    {line,[{location,"beam_ssa_SUITE.erl",812}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,stack_init},1}.
  {label,339}.
    {allocate,0,0}.
    {move,{literal,#{a => [1,2,3]}},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",813}]}.
    {call,2,{f,343}}. % stack_init/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,341},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {integer,6}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,missing},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",814}]}.
    {call,2,{f,343}}. % stack_init/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,340},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {integer,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,340}.
    {badmatch,{x,0}}.
  {label,341}.
    {line,[{location,"beam_ssa_SUITE.erl",813}]}.
    {badmatch,{x,0}}.


{function, stack_init, 2, 343}.
  {label,342}.
    {line,[{location,"beam_ssa_SUITE.erl",817}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,stack_init},2}.
  {label,343}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,missing]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_map,{t_atom,[a]},
                                 {t_cons,{t_integer,{1,3}},nil}}}]}}.
    {allocate,0,2}.
    {get_map_elements,{f,344},
                      {tr,{x,1},
                          {t_map,{t_atom,[a]},{t_cons,{t_integer,{1,3}},nil}}},
                      {list,[{tr,{x,0},{t_atom,[a,missing]}},{x,0}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,613},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_number,any}}]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",825}]}.
    {call_ext,3,{extfunc,lists,foldl,3}}.
    {jump,{f,345}}.
  {label,344}.
    {move,{integer,0},{x,0}}.
  {label,345}.
    {call_last,1,{f,597},0}. % id/1


{function, mapfoldl, 0, 347}.
  {label,346}.
    {line,[{location,"beam_ssa_SUITE.erl",839}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,mapfoldl},0}.
  {label,347}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",840}]}.
    {call,0,{f,355}}. % mapfoldl_limits/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1000,1000}},
                                     2 => {t_integer,{100000,100000}}}}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,609},0,0,{x,0},{list,[{integer,100000}]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_tuple,2,true,#{1 => {t_cons,any,nil}}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",841}]}.
    {call_ext,1,{extfunc,timer,tc,1}}.
    {test,is_tuple,{f,348},[{x,0}]}.
    {test,test_arity,{f,348},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",847}]}.
    {gc_bif,'*',{f,0},1,[{x,0},{integer,10}],{x,0}}.
    {gc_bif,'*',{f,0},1,[{tr,{x,0},{t_number,any}},{integer,1000}],{x,0}}.
    {fconv,{tr,{x,0},{t_number,any}},{fr,0}}.
    {fmove,{float,1.0e6},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {gc_bif,ceil,{f,0},1,[{tr,{x,0},{t_float,any}}],{x,0}}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_integer,any}},{integer,15}],{y,0}}.
    {test_heap,2,0}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{literal,"~p seconds timetrap\n"},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",848}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,8,0}.
    {put_tuple2,{x,0},{list,[{atom,seconds},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,timetrap},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,1}.
    return.
  {label,348}.
    {line,[{location,"beam_ssa_SUITE.erl",841}]}.
    {badmatch,{x,0}}.


{function, mapfoldl, 1, 350}.
  {label,349}.
    {line,[{location,"beam_ssa_SUITE.erl",851}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,mapfoldl},1}.
  {label,350}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",852}]}.
    {call,0,{f,357}}. % test_mapfoldl_implementations/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,607},0,0,{y,2},{list,[]}}.
    {'%',{var_info,{y,2},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",857}]}.
    {call,0,{f,355}}. % mapfoldl_limits/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1000,1000}},
                                     2 => {t_integer,{100000,100000}}}}}]}}.
    {move,{integer,100000},{x,1}}.
    {move,{integer,1000},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",858}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",859}]}.
    {call,3,{f,362}}. % mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {test,is_eq_exact,
          {f,353},
          [{tr,{x,1},{t_list,any,nil}},
           {tr,{y,1},{t_list,{t_integer,{100000,100000}},nil}}]}.
    {move,nil,{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,1,2}.
    {line,[{location,"beam_ssa_SUITE.erl",860}]}.
    {call,3,{f,368}}. % fast_mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,352},
          [{tr,{x,1},{t_list,any,nil}},
           {tr,{y,0},{t_list,{t_integer,{100000,100000}},nil}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,352},[{x,1},{y,1}]}.
    {line,[{location,"beam_ssa_SUITE.erl",861}]}.
    {bif,tuple_size,{f,0},[{y,1}],{x,0}}.
    {test,is_eq_exact,
          {f,351},
          [{tr,{x,0},{t_integer,{0,16777215}}},{integer,100000}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,351}.
    {badmatch,{x,0}}.
  {label,352}.
    {line,[{location,"beam_ssa_SUITE.erl",860}]}.
    {badmatch,{x,0}}.
  {label,353}.
    {line,[{location,"beam_ssa_SUITE.erl",859}]}.
    {badmatch,{x,0}}.


{function, mapfoldl_limits, 0, 355}.
  {label,354}.
    {line,[{location,"beam_ssa_SUITE.erl",864}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,mapfoldl_limits},0}.
  {label,355}.
    {move,{literal,{1000,100000}},{x,0}}.
    return.


{function, test_mapfoldl_implementations, 0, 357}.
  {label,356}.
    {line,[{location,"beam_ssa_SUITE.erl",867}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,test_mapfoldl_implementations},0}.
  {label,357}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",868}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,605},0,0,{y,1},{list,[]}}.
    {'%',
        {var_info,
            {y,1},
            [{fun_type,
                 {t_tuple,2,true,
                     #{1 => {t_number,any},2 => {t_number,any}}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",870}]}.
    {call,3,{f,362}}. % mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,360},[{x,1},{integer,55}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,360},[{tr,{x,1},{t_list,any,nil}},{y,0}]}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",871}]}.
    {call,3,{f,368}}. % fast_mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,359},[{x,1},{integer,55}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,359},
          [{tr,{x,1},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"beam_ssa_SUITE.erl",872}]}.
    {call,3,{f,365}}. % slow_mapfoldl/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_number,any},nil},
                                     2 => {t_number,any}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,358},[{tr,{x,1},{t_number,any}},{integer,55}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,358},
          [{tr,{x,1},{t_list,{t_number,any},nil}},
           {tr,{y,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,358}.
    {badmatch,{x,0}}.
  {label,359}.
    {line,[{location,"beam_ssa_SUITE.erl",871}]}.
    {badmatch,{x,0}}.
  {label,360}.
    {line,[{location,"beam_ssa_SUITE.erl",870}]}.
    {badmatch,{x,0}}.


{function, mapfoldl, 3, 362}.
  {label,361}.
    {line,[{location,"beam_ssa_SUITE.erl",875}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,mapfoldl},3}.
  {label,362}.
    {'%',{var_info,{x,0},[{type,{t_fun,2,any,{t_tuple,2,true,#{}}}}]}}.
    {test,is_nonempty_list,{f,363},[{x,2}]}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,2}}.
    {get_list,{x,2},{x,0},{y,1}}.
    {move,{y,2},{x,2}}.
    {line,[{location,"beam_ssa_SUITE.erl",876}]}.
    {call_fun2,{atom,safe},2,{tr,{x,2},{t_fun,2,any,{t_tuple,2,true,#{}}}}}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{x,0},0,{y,0}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",877}]}.
    {call,3,{f,362}}. % mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,363}.
    {test,is_nil,{f,361},[{x,2}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[nil,{x,1}]}}.
    return.


{function, slow_mapfoldl, 3, 365}.
  {label,364}.
    {line,[{location,"beam_ssa_SUITE.erl",886}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,slow_mapfoldl},3}.
  {label,365}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,2,
                     {'-test_mapfoldl_implementations/0-fun-0-',2},
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,366},[{x,2}]}.
    {allocate,2,3}.
    {move,{x,0},{y,1}}.
    {get_list,{x,2},{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",887}]}.
    {call,2,{f,605}}. % '-test_mapfoldl_implementations/0-fun-0-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_number,any},
                                     2 => {t_number,any}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,2}}.
    {trim,1,1}.
    {line,[{location,"beam_ssa_SUITE.erl",890}]}.
    {call,3,{f,365}}. % slow_mapfoldl/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_number,any},nil},
                                     2 => {t_number,any}}}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,366}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[nil,{x,1}]}}.
    return.


{function, fast_mapfoldl, 3, 368}.
  {label,367}.
    {line,[{location,"beam_ssa_SUITE.erl",898}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,fast_mapfoldl},3}.
  {label,368}.
    {'%',{var_info,{x,0},[{type,{t_fun,2,any,{t_tuple,2,true,#{}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,369},[{x,2}]}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,2}}.
    {get_list,{x,2},{x,0},{y,1}}.
    {move,{y,2},{x,2}}.
    {line,[{location,"beam_ssa_SUITE.erl",899}]}.
    {call_fun2,{atom,safe},2,{tr,{x,2},{t_fun,2,any,{t_tuple,2,true,#{}}}}}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{x,0},0,{y,0}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",901}]}.
    {call,3,{f,368}}. % fast_mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,369}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[nil,{x,1}]}}.
    return.


{function, grab_bag, 1, 371}.
  {label,370}.
    {line,[{location,"beam_ssa_SUITE.erl",905}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag},1}.
  {label,371}.
    {allocate,13,0}.
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
                       {y,11}]}}.
    {'catch',{y,12},{f,372}}.
    {line,[{location,"beam_ssa_SUITE.erl",906}]}.
    {call,0,{f,402}}. % grab_bag_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,372}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,400},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,11},{f,373}}.
    {line,[{scope,[25,26]},{location,"beam_ssa_SUITE.erl",907}]}.
    {call,0,{f,404}}. % grab_bag_2/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,373}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,399},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,10},{f,374}}.
    {line,[{scope,[23,24]},{location,"beam_ssa_SUITE.erl",908}]}.
    {call,0,{f,406}}. % grab_bag_3/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,374}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,398},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,9},{f,375}}.
    {line,[{scope,[21,22]},{location,"beam_ssa_SUITE.erl",909}]}.
    {call,0,{f,408}}. % grab_bag_4/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,375}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,397},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,8},{f,376}}.
    {move,{integer,17},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[19,20]},{location,"beam_ssa_SUITE.erl",911}]}.
    {call,2,{f,412}}. % grab_bag_5/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,376}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,396},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,396},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,396},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,396},[{x,1},4,{atom,beam_ssa_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,396},[{x,2},{atom,grab_bag_5}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,396},[{x,1},{literal,[a,17]}]}.
    {move,{atom,face},{x,0}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",912}]}.
    {call,1,{f,414}}. % grab_bag_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[way]}}]}}.
    {move,{literal,"ABC"},{x,0}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",913}]}.
    {call,1,{f,414}}. % grab_bag_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",914}]}.
    {call,1,{f,414}}. % grab_bag_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",915}]}.
    {call,0,{f,417}}. % grab_bag_7/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",916}]}.
    {call,0,{f,419}}. % grab_bag_8/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",917}]}.
    {call,0,{f,421}}. % grab_bag_9/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,whatever},{x,1}}.
    {move,{atom,ignore},{x,0}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",918}]}.
    {call,2,{f,423}}. % grab_bag_10/2
    {'%',{var_info,{x,0},[{type,{t_atom,[whatever]}}]}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",919}]}.
    {call,0,{f,425}}. % grab_bag_11/0
    {'%',{var_info,{x,0},[{type,{t_atom,[other]}}]}}.
    {'catch',{y,7},{f,377}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",920}]}.
    {call,0,{f,427}}. % grab_bag_12/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,377}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,395},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,6},{f,378}}.
    {line,[{scope,[15,16]},{location,"beam_ssa_SUITE.erl",921}]}.
    {call,0,{f,429}}. % grab_bag_13/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,378}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,394},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,394},[{x,1}]}.
    {test,test_arity,{f,394},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,394},[{x,1},{literal,{badmatch,[]}}]}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",922}]}.
    {call,0,{f,431}}. % grab_bag_14/0
    {'%',{var_info,{x,0},[{type,{t_atom,[timeout]}}]}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",923}]}.
    {call,1,{f,435}}. % grab_bag_15/1
    {'%',{var_info,{x,0},[{type,{t_atom,[beam_ssa_SUITE]}}]}}.
    {move,{atom,timeout_value},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",925}]}.
    {call,1,{f,437}}. % grab_bag_16a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,not_reached]}}]}}.
    {test,is_eq_exact,
          {f,393},
          [{tr,{x,0},{t_atom,[error,not_reached]}},{atom,error}]}.
    {'catch',{y,5},{f,379}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",926}]}.
    {call,1,{f,437}}. % grab_bag_16a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,not_reached]}}]}}.
  {label,379}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,392},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,392},[{x,1},2,{atom,timeout_value}]}.
    {'catch',{y,4},{f,380}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_ssa_SUITE.erl",927}]}.
    {call,1,{f,442}}. % grab_bag_16b/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,380}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,391},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,391},[{x,1},2,{atom,timeout_value}]}.
    {move,{atom,error},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_ssa_SUITE.erl",928}]}.
    {call,1,{f,442}}. % grab_bag_16b/1
    {test,is_eq_exact,{f,390},[{x,0},{atom,timeout_value}]}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",930}]}.
    {call,0,{f,447}}. % grab_bag_17/0
    {'%',{var_info,{x,0},[{type,{t_atom,[fact]}}]}}.
    {'catch',{y,3},{f,381}}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",932}]}.
    {call,0,{f,449}}. % grab_bag_18/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,381}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,389},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,389},[{x,1}]}.
    {test,test_arity,{f,389},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,389},[{x,2},{literal,{try_clause,[]}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,389},[{x,1}]}.
    {'catch',{y,2},{f,382}}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",934}]}.
    {call,0,{f,451}}. % grab_bag_19/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,382}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,388},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,388},[{x,1}]}.
    {test,test_arity,{f,388},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,388},[{x,2},{literal,{badmatch,[whatever]}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,388},[{x,1}]}.
    {'catch',{y,1},{f,383}}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",936}]}.
    {call,0,{f,453}}. % grab_bag_20/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_cons,{t_integer,{105,116}},nil},
                                     2 => {t_atom,[ok]}}}}]}}.
  {label,383}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,387},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,387},[{x,1},2,{atom,if_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,387},[{x,1}]}.
    {move,{integer,64},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_ssa_SUITE.erl",938}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,458}}. % grab_bag_21/1
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,386},[{tr,{x,0},{t_integer,any}},{integer,6}]}.
    {'catch',{y,0},{f,384}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",939}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,458}}. % grab_bag_21/1
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
  {label,384}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,385},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,385},[{x,1},2,{atom,badarith}]}.
    {line,[{scope,[1,2]},{location,"beam_ssa_SUITE.erl",941}]}.
    {call,0,{f,462}}. % grab_bag_22/0
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,13}.
    return.
  {label,385}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",939}]}.
    {badmatch,{x,0}}.
  {label,386}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",938}]}.
    {badmatch,{x,0}}.
  {label,387}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",936}]}.
    {badmatch,{x,0}}.
  {label,388}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",934}]}.
    {badmatch,{x,0}}.
  {label,389}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",932}]}.
    {badmatch,{x,0}}.
  {label,390}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",928}]}.
    {badmatch,{x,0}}.
  {label,391}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",927}]}.
    {badmatch,{x,0}}.
  {label,392}.
    {line,[{scope,"\n"},{location,"beam_ssa_SUITE.erl",926}]}.
    {badmatch,{x,0}}.
  {label,393}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",925}]}.
    {badmatch,{atom,not_reached}}.
  {label,394}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",921}]}.
    {badmatch,{x,0}}.
  {label,395}.
    {line,[{scope,[14]},{location,"beam_ssa_SUITE.erl",920}]}.
    {badmatch,{x,0}}.
  {label,396}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",910}]}.
    {badmatch,{x,0}}.
  {label,397}.
    {line,[{scope,[18]},{location,"beam_ssa_SUITE.erl",909}]}.
    {badmatch,{x,0}}.
  {label,398}.
    {line,[{scope,[20]},{location,"beam_ssa_SUITE.erl",908}]}.
    {badmatch,{x,0}}.
  {label,399}.
    {line,[{scope,[22]},{location,"beam_ssa_SUITE.erl",907}]}.
    {badmatch,{x,0}}.
  {label,400}.
    {line,[{scope,[24]},{location,"beam_ssa_SUITE.erl",906}]}.
    {badmatch,{x,0}}.


{function, grab_bag_1, 0, 402}.
  {label,401}.
    {line,[{location,"beam_ssa_SUITE.erl",945}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_1},0}.
  {label,402}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{atom,true}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",948}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, grab_bag_2, 0, 404}.
  {label,403}.
    {line,[{location,"beam_ssa_SUITE.erl",950}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_2},0}.
  {label,404}.
    {bif,'or',{f,0},[nil,{integer,27}],{x,0}}.
    return.


{function, grab_bag_3, 0, 406}.
  {label,405}.
    {line,[{location,"beam_ssa_SUITE.erl",966}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_3},0}.
  {label,406}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,603},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",967}]}.
    {case_end,{x,0}}.


{function, grab_bag_4, 0, 408}.
  {label,407}.
    {line,[{location,"beam_ssa_SUITE.erl",983}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_4},0}.
  {label,408}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,410}}.
    {'try',{y,0},{f,409}}.
    {line,[{location,"beam_ssa_SUITE.erl",989}]}.
    {try_case_end,{atom,fy}}.
  {label,409}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,410}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, grab_bag_5, 2, 412}.
  {label,411}.
    {line,[{location,"beam_ssa_SUITE.erl",1004}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_5},2}.
  {label,412}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{17,17}}}]}}.
    {jump,{f,411}}.


{function, grab_bag_6, 1, 414}.
  {label,413}.
    {line,[{location,"beam_ssa_SUITE.erl",1007}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_6},1}.
  {label,414}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any,face]},
                                   {t_cons,{t_integer,{65,67}},nil},
                                   none,none,none}}]}}.
    {test,is_ne_exact,
          {f,415},
          [{tr,{x,0},
               {t_union,{t_atom,[any,face]},
                        {t_cons,{t_integer,{65,67}},nil},
                        none,none,none}},
           {literal,"ABC"}]}.
    {test,is_eq_exact,
          {f,415},
          [{tr,{x,0},
               {t_union,{t_atom,[any,face]},
                        {t_cons,{t_integer,{65,67}},nil},
                        none,none,none}},
           {atom,face}]}.
    {move,{atom,way},{x,0}}.
    return.
  {label,415}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, grab_bag_7, 0, 417}.
  {label,416}.
    {line,[{location,"beam_ssa_SUITE.erl",1014}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_7},0}.
  {label,417}.
    {move,{atom,ok},{x,0}}.
    return.


{function, grab_bag_8, 0, 419}.
  {label,418}.
    {line,[{location,"beam_ssa_SUITE.erl",1033}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_8},0}.
  {label,419}.
    {move,nil,{x,0}}.
    return.


{function, grab_bag_9, 0, 421}.
  {label,420}.
    {line,[{location,"beam_ssa_SUITE.erl",1051}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_9},0}.
  {label,421}.
    {move,{atom,ok},{x,0}}.
    return.


{function, grab_bag_10, 2, 423}.
  {label,422}.
    {line,[{location,"beam_ssa_SUITE.erl",1056}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_10},2}.
  {label,423}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ignore]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[whatever]}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, grab_bag_11, 0, 425}.
  {label,424}.
    {line,[{location,"beam_ssa_SUITE.erl",1061}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_11},0}.
  {label,425}.
    {move,{atom,other},{x,0}}.
    return.


{function, grab_bag_12, 0, 427}.
  {label,426}.
    {line,[{location,"beam_ssa_SUITE.erl",1071}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_12},0}.
  {label,427}.
    {line,[{location,"beam_ssa_SUITE.erl",1074}]}.
    {put_map_exact,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[{atom,key},{atom,teacher}]}}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{integer,1},{x,0}}.
    {call_ext,2,{extfunc,erlang,check_process_code,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, grab_bag_13, 0, 429}.
  {label,428}.
    {line,[{location,"beam_ssa_SUITE.erl",1077}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_13},0}.
  {label,429}.
    {line,[{location,"beam_ssa_SUITE.erl",1080}]}.
    {badmatch,nil}.


{function, grab_bag_14, 0, 431}.
  {label,430}.
    {line,[{location,"beam_ssa_SUITE.erl",1092}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_14},0}.
  {label,431}.
    {allocate,0,0}.
  {label,432}.
    {loop_rec,{f,433},{x,0}}.
    {loop_rec_end,{f,432}}.
  {label,433}.
    timeout.
    {move,{atom,timeout},{x,0}}.
    {deallocate,0}.
    return.


{function, grab_bag_15, 1, 435}.
  {label,434}.
    {line,[{location,"beam_ssa_SUITE.erl",1103}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_15},1}.
  {label,435}.
    {'%',{var_info,{x,0},[{type,{t_atom,[beam_ssa_SUITE]}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1113}]}.
    {call_ext,0,{extfunc,beam_ssa_SUITE,all,0}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, grab_bag_16a, 1, 437}.
  {label,436}.
    {line,[{location,"beam_ssa_SUITE.erl",1118}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_16a},1}.
  {label,437}.
    {'%',{var_info,{x,0},[{type,{t_atom,[timeout_value,whatever]}}]}}.
    {allocate,2,1}.
    {move,{x,0},{y,0}}.
    {'try',{y,1},{f,439}}.
  {label,438}.
    {wait_timeout,{f,438},{atom,bad}}.
    timeout.
    {try_end,{y,1}}.
    {move,{atom,not_reached},{x,0}}.
    {deallocate,2}.
    return.
  {label,439}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,440},
          [{x,0},{tr,{y,0},{t_atom,[timeout_value,whatever]}}]}.
    {move,{atom,error},{x,0}}.
    {deallocate,2}.
    return.
  {label,440}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, grab_bag_16b, 1, 442}.
  {label,441}.
    {line,[{location,"beam_ssa_SUITE.erl",1130}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_16b},1}.
  {label,442}.
    {'%',{var_info,{x,0},[{type,{t_atom,[error,whatever]}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,0},{y,0}}.
    {call_ext,0,{extfunc,erlang,get,0}}.
    {'try',{y,1},{f,444}}.
  {label,443}.
    {wait_timeout,{f,443},{x,0}}.
    timeout.
    {try_end,{y,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,444}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,445},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,0},{t_atom,[error,whatever]}}]}.
    {move,{x,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,445}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, grab_bag_17, 0, 447}.
  {label,446}.
    {line,[{location,"beam_ssa_SUITE.erl",1141}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_17},0}.
  {label,447}.
    {move,{atom,fact},{x,0}}.
    return.


{function, grab_bag_18, 0, 449}.
  {label,448}.
    {line,[{location,"beam_ssa_SUITE.erl",1155}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_18},0}.
  {label,449}.
    {line,[{location,"beam_ssa_SUITE.erl",1160}]}.
    {try_case_end,nil}.


{function, grab_bag_19, 0, 451}.
  {label,450}.
    {line,[{location,"beam_ssa_SUITE.erl",1169}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_19},0}.
  {label,451}.
    {line,[{location,"beam_ssa_SUITE.erl",1170}]}.
    {badmatch,{literal,[whatever]}}.


{function, grab_bag_20, 0, 453}.
  {label,452}.
    {line,[{location,"beam_ssa_SUITE.erl",1182}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_20},0}.
  {label,453}.
    {allocate,0,0}.
  {label,454}.
    {loop_rec,{f,456},{x,0}}.
    {test,is_eq_exact,{f,455},[{x,0},{atom,list}]}.
    remove_message.
    {move,{literal,{"list",ok}},{x,0}}.
    {deallocate,0}.
    return.
  {label,455}.
    {loop_rec_end,{f,454}}.
  {label,456}.
    timeout.
    {line,[{location,"beam_ssa_SUITE.erl",1194}]}.
    if_end.


{function, grab_bag_21, 1, 458}.
  {label,457}.
    {line,[{location,"beam_ssa_SUITE.erl",1212}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_21},1}.
  {label,458}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1213}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",1214}]}.
    {gc_bif,'div',
        {f,0},
        0,
        [{tr,{y,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {integer,10}],
        {x,1}}.
    {bif,node,{f,0},[],{x,2}}.
    {move,{literal,[-1]},{x,3}}.
    {move,{atom,ok},{x,0}}.
    {call_last,4,{f,460},1}. % grab_bag_21/4


{function, grab_bag_21, 4, 460}.
  {label,459}.
    {line,[{location,"beam_ssa_SUITE.erl",1216}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_21},4}.
  {label,460}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_cons,{t_integer,{-1,-1}},nil}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, grab_bag_22, 0, 462}.
  {label,461}.
    {line,[{location,"beam_ssa_SUITE.erl",1225}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_22},0}.
  {label,462}.
    {move,{atom,false},{x,0}}.
    return.


{function, redundant_br, 1, 464}.
  {label,463}.
    {line,[{location,"beam_ssa_SUITE.erl",1231}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,redundant_br},1}.
  {label,464}.
    {allocate,0,0}.
    {move,{literal,{x,y,z}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1232}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,468}}. % redundant_br_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,466},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {literal,{false,{x,y,z}}}]}.
    {move,{literal,[[[a,b,c]]]},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1233}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,468}}. % redundant_br_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,465},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {literal,{true,[[a,b,c]]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,465}.
    {badmatch,{x,0}}.
  {label,466}.
    {line,[{location,"beam_ssa_SUITE.erl",1232}]}.
    {badmatch,{x,0}}.


{function, redundant_br_1, 1, 468}.
  {label,467}.
    {line,[{location,"beam_ssa_SUITE.erl",1236}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,redundant_br_1},1}.
  {label,468}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {bif,hd,
        {f,469},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}],
        {x,1}}.
    {bif,hd,
         {f,469},
         [{tr,{x,1},
              {t_union,{t_atom,[a]},
                       {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                       none,none,none}}],
         {x,2}}.
    {move,{atom,true},{x,0}}.
    {jump,{f,470}}.
  {label,469}.
    {move,{x,0},{x,1}}.
    {move,{atom,false},{x,0}}.
  {label,470}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {call_only,1,{f,597}}. % id/1


{function, coverage, 1, 472}.
  {label,471}.
    {line,[{location,"beam_ssa_SUITE.erl",1246}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage},1}.
  {label,472}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,473}}.
    {line,[{location,"beam_ssa_SUITE.erl",1258}]}.
    {call,0,{f,478}}. % coverage_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,473}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,476},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,476},[{x,1}]}.
    {test,test_arity,{f,476},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,476},[{x,1},{literal,{badmatch,84}}]}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1260}]}.
    {call,0,{f,480}}. % coverage_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1261}]}.
    {call,0,{f,482}}. % coverage_3/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1262}]}.
    {call,0,{f,484}}. % coverage_4/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[coverage]},
                                     2 => {t_atom,[whatever]}}}}]}}.
    {'catch',{y,0},{f,474}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1263}]}.
    {call,0,{f,486}}. % coverage_5/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,474}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,475},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,475},[{x,1}]}.
    {test,test_arity,{f,475},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,475},[{x,1},{literal,{badrecord,ok}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,475}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",1263}]}.
    {badmatch,{x,0}}.
  {label,476}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1258}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 0, 478}.
  {label,477}.
    {line,[{location,"beam_ssa_SUITE.erl",1267}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage_1},0}.
  {label,478}.
    {line,[{location,"beam_ssa_SUITE.erl",1268}]}.
    {badmatch,{integer,84}}.


{function, coverage_2, 0, 480}.
  {label,479}.
    {line,[{location,"beam_ssa_SUITE.erl",1270}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage_2},0}.
  {label,480}.
    {move,{atom,error},{x,0}}.
    return.


{function, coverage_3, 0, 482}.
  {label,481}.
    {line,[{location,"beam_ssa_SUITE.erl",1273}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage_3},0}.
  {label,482}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_4, 0, 484}.
  {label,483}.
    {line,[{location,"beam_ssa_SUITE.erl",1278}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage_4},0}.
  {label,484}.
    {move,{literal,{coverage,whatever}},{x,0}}.
    return.


{function, coverage_5, 0, 486}.
  {label,485}.
    {line,[{location,"beam_ssa_SUITE.erl",1287}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage_5},0}.
  {label,486}.
    {line,[{location,"beam_ssa_SUITE.erl",1294}]}.
    {badrecord,{atom,ok}}.


{function, normalize, 1, 488}.
  {label,487}.
    {line,[{location,"beam_ssa_SUITE.erl",1298}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,normalize},1}.
  {label,488}.
    {allocate,0,0}.
    {move,{literal,{bif,'band'}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1299}]}.
    {call,1,{f,490}}. % normalize_commutative/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{bif,'+'}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1300}]}.
    {call,1,{f,490}}. % normalize_commutative/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{bif,'div'}},{x,0}}.
    {call_last,1,{f,492},0}. % normalize_noncommutative/1


{function, normalize_commutative, 1, 490}.
  {label,489}.
    {line,[{location,"beam_ssa_SUITE.erl",1309}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,normalize_commutative},1}.
  {label,490}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[bif]},
                                     2 => {t_atom,['+','band']}}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,[{b_var,a},{b_var,b}]},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1314}]}.
    {call,2,{f,495}}. % normalize_same/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[{b_var,a},{b_literal,42}]},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1315}]}.
    {call,2,{f,495}}. % normalize_same/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[{b_literal,42},{b_var,a}]},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,503},1}. % normalize_swapped/2


{function, normalize_noncommutative, 1, 492}.
  {label,491}.
    {line,[{location,"beam_ssa_SUITE.erl",1321}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,normalize_noncommutative},1}.
  {label,492}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[bif]},
                                     2 => {t_atom,['div']}}}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,[{b_var,a},{b_var,b}]},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1326}]}.
    {call,2,{f,495}}. % normalize_same/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[{b_var,a},{b_literal,42}]},{x,1}}.
    {move,{literal,{bif,'div'}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1327}]}.
    {call,2,{f,495}}. % normalize_same/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,1023},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1329}]}.
    {call_ext,2,{extfunc,beam_types,make_integer,2}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{literal,[{b_literal,42},{b_var,a}]},{x,2}}.
    {move,{literal,{bif,'div'}},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1330}]}.
    {call,3,{f,510}}. % make_bset/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,5,true,
         #{1 => {t_atom,[b_set]},
           2 => {t_map,{t_atom,[arg_types]},{t_map,{t_integer,{0,1}},any}},
           3 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[b_var]},2 => {t_integer,{1000,1000}}}},
           4 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[bif]},2 => {t_atom,['+','band','div']}}},
           5 =>
            {t_cons,
             {t_union,none,none,none,
              [{{2,{t_atom,[b_literal]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_literal]},2 => {t_integer,{42,42}}}}},
               {{2,{t_atom,[b_var]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
              none},
             nil}}}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1331}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_eq_exact,
        {f,493},
        [{x,0},
         {tr,{y,0},
             {t_tuple,5,true,
                 #{1 => {t_atom,[b_set]},
                   2 =>
                       {t_map,
                           {t_atom,[arg_types]},
                           {t_map,{t_integer,{0,1}},any}},
                   3 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b_var]},
                             2 => {t_integer,{1000,1000}}}},
                   4 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bif]},
                             2 => {t_atom,['+','band','div']}}},
                   5 =>
                       {t_cons,
                           {t_union,none,none,none,
                               [{{2,{t_atom,[b_literal]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[b_literal]},
                                       2 => {t_integer,{42,42}}}}},
                                {{2,{t_atom,[b_var]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[b_var]},
                                       2 => {t_atom,[a,b]}}}}],
                               none},
                           nil}}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,493}.
    {badmatch,{x,0}}.


{function, normalize_same, 2, 495}.
  {label,494}.
    {line,[{location,"beam_ssa_SUITE.erl",1335}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,normalize_same},2}.
  {label,495}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[bif]},
                                     2 => {t_atom,['+','band','div']}}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_cons,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[b_literal]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b_literal]},
                                 2 => {t_integer,{42,42}}}}},
                          {{2,{t_atom,[b_var]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
                         none},
                     nil}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1336}]}.
    {call,3,{f,510}}. % make_bset/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,5,true,
         #{1 => {t_atom,[b_set]},
           2 => {t_map,{t_atom,[arg_types]},{t_map,none,none}},
           3 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[b_var]},2 => {t_integer,{1000,1000}}}},
           4 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[bif]},2 => {t_atom,['+','band','div']}}},
           5 =>
            {t_cons,
             {t_union,none,none,none,
              [{{2,{t_atom,[b_literal]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_literal]},2 => {t_integer,{42,42}}}}},
               {{2,{t_atom,[b_var]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
              none},
             nil}}}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1337}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_eq_exact,
        {f,501},
        [{x,0},
         {tr,{y,0},
             {t_tuple,5,true,
                 #{1 => {t_atom,[b_set]},
                   2 => {t_map,{t_atom,[arg_types]},{t_map,none,none}},
                   3 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b_var]},
                             2 => {t_integer,{1000,1000}}}},
                   4 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bif]},
                             2 => {t_atom,['+','band','div']}}},
                   5 =>
                       {t_cons,
                           {t_union,none,none,none,
                               [{{2,{t_atom,[b_literal]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[b_literal]},
                                       2 => {t_integer,{42,42}}}}},
                                {{2,{t_atom,[b_var]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[b_var]},
                                       2 => {t_atom,[a,b]}}}}],
                               none},
                           nil}}}}]}.
    {move,{integer,1023},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1339}]}.
    {call_ext,2,{extfunc,beam_types,make_integer,2}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{integer,0},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1340}]}.
    {call,3,{f,510}}. % make_bset/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,5,true,
         #{1 => {t_atom,[b_set]},
           2 => {t_map,{t_atom,[arg_types]},{t_map,{t_integer,{0,1}},any}},
           3 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[b_var]},2 => {t_integer,{1000,1000}}}},
           4 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[bif]},2 => {t_atom,['+','band','div']}}},
           5 =>
            {t_cons,
             {t_union,none,none,none,
              [{{2,{t_atom,[b_literal]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_literal]},2 => {t_integer,{42,42}}}}},
               {{2,{t_atom,[b_var]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
              none},
             nil}}}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1341}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_eq_exact,
        {f,500},
        [{x,0},
         {tr,{y,0},
             {t_tuple,5,true,
                 #{1 => {t_atom,[b_set]},
                   2 =>
                       {t_map,
                           {t_atom,[arg_types]},
                           {t_map,{t_integer,{0,1}},any}},
                   3 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b_var]},
                             2 => {t_integer,{1000,1000}}}},
                   4 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bif]},
                             2 => {t_atom,['+','band','div']}}},
                   5 =>
                       {t_cons,
                           {t_union,none,none,none,
                               [{{2,{t_atom,[b_literal]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[b_literal]},
                                       2 => {t_integer,{42,42}}}}},
                                {{2,{t_atom,[b_var]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[b_var]},
                                       2 => {t_atom,[a,b]}}}}],
                               none},
                           nil}}}}]}.
    {get_list,{y,1},{x,0},{x,1}}.
    {test,is_tagged_tuple,
          {f,496},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[b_literal]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b_literal]},
                                     2 => {t_integer,{42,42}}}}},
                         {{2,{t_atom,[b_var]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b_var]},
                                     2 => {t_atom,[a,b]}}}}],
                        none}},
           2,
           {atom,b_var}]}.
    {test,is_nonempty_list,{f,499},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,2}}.
    {test,is_tagged_tuple,
          {f,496},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[b_literal]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b_literal]},
                                     2 => {t_integer,{42,42}}}}},
                         {{2,{t_atom,[b_var]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b_var]},
                                     2 => {t_atom,[a,b]}}}}],
                        none}},
           2,
           {atom,b_var}]}.
    {test,is_nil,
        {f,496},
        [{tr,{x,2},
             {t_list,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[b_literal]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b_literal]},
                             2 => {t_integer,{42,42}}}}},
                      {{2,{t_atom,[b_var]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
                     none},
                 nil}}]}.
    {move,{integer,1023},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1345}]}.
    {call_ext,2,{extfunc,beam_types,make_integer,2}}.
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1346}]}.
    {call_ext,1,{extfunc,beam_types,make_integer,1}}.
    {test_heap,10,1}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},{list,[{integer,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",1347}]}.
    {call,3,{f,510}}. % make_bset/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,5,true,
         #{1 => {t_atom,[b_set]},
           2 => {t_map,{t_atom,[arg_types]},{t_map,{t_integer,{0,1}},any}},
           3 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[b_var]},2 => {t_integer,{1000,1000}}}},
           4 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[bif]},2 => {t_atom,['+','band','div']}}},
           5 =>
            {t_cons,
             {t_union,none,none,none,
              [{{2,{t_atom,[b_literal]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_literal]},2 => {t_integer,{42,42}}}}},
               {{2,{t_atom,[b_var]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
              none},
             nil}}}}]}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"beam_ssa_SUITE.erl",1348}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_eq_exact,
        {f,498},
        [{x,0},
         {tr,{y,2},
             {t_tuple,5,true,
                 #{1 => {t_atom,[b_set]},
                   2 =>
                       {t_map,
                           {t_atom,[arg_types]},
                           {t_map,{t_integer,{0,1}},any}},
                   3 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b_var]},
                             2 => {t_integer,{1000,1000}}}},
                   4 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bif]},
                             2 => {t_atom,['+','band','div']}}},
                   5 =>
                       {t_cons,
                           {t_union,none,none,none,
                               [{{2,{t_atom,[b_literal]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[b_literal]},
                                       2 => {t_integer,{42,42}}}}},
                                {{2,{t_atom,[b_var]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[b_var]},
                                       2 => {t_atom,[a,b]}}}}],
                               none},
                           nil}}}}]}.
    {jump,{f,497}}.
  {label,496}.
    {test,is_nonempty_list,{f,499},[{x,1}]}.
    {get_tl,{x,1},{x,0}}.
    {test,is_nil,
        {f,499},
        [{tr,{x,0},
             {t_list,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[b_literal]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b_literal]},
                             2 => {t_integer,{42,42}}}}},
                      {{2,{t_atom,[b_var]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
                     none},
                 nil}}]}.
  {label,497}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,498}.
    {badmatch,{x,0}}.
  {label,499}.
    {line,[{location,"beam_ssa_SUITE.erl",1343}]}.
    {case_end,{y,1}}.
  {label,500}.
    {line,[{location,"beam_ssa_SUITE.erl",1341}]}.
    {badmatch,{x,0}}.
  {label,501}.
    {line,[{location,"beam_ssa_SUITE.erl",1337}]}.
    {badmatch,{x,0}}.


{function, normalize_swapped, 2, 503}.
  {label,502}.
    {line,[{location,"beam_ssa_SUITE.erl",1355}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,normalize_swapped},2}.
  {label,503}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[bif]},
                                     2 => {t_atom,['+','band']}}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_cons,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[b_literal]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b_literal]},
                                 2 => {t_integer,{42,42}}}}},
                          {{2,{t_atom,[b_var]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b_var]},2 => {t_atom,[a]}}}}],
                         none},
                     nil}}]}}.
    {get_list,{x,1},{x,2},{x,3}}.
    {test,is_tagged_tuple,
          {f,502},
          [{tr,{x,2},
               {t_union,none,none,none,
                        [{{2,{t_atom,[b_literal]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b_literal]},
                                     2 => {t_integer,{42,42}}}}},
                         {{2,{t_atom,[b_var]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b_var]},
                                     2 => {t_atom,[a]}}}}],
                        none}},
           2,
           {atom,b_literal}]}.
    {test,is_nonempty_list,{f,502},[{x,3}]}.
    {get_list,{x,3},{x,2},{x,3}}.
    {test,is_tagged_tuple,
          {f,502},
          [{tr,{x,2},
               {t_union,none,none,none,
                        [{{2,{t_atom,[b_literal]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b_literal]},
                                     2 => {t_integer,{42,42}}}}},
                         {{2,{t_atom,[b_var]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b_var]},
                                     2 => {t_atom,[a]}}}}],
                        none}},
           2,
           {atom,b_var}]}.
    {test,is_nil,
        {f,502},
        [{tr,{x,3},
             {t_list,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[b_literal]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b_literal]},
                             2 => {t_integer,{42,42}}}}},
                      {{2,{t_atom,[b_var]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b_var]},2 => {t_atom,[a]}}}}],
                     none},
                 nil}}]}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1357}]}.
    {call,3,{f,510}}. % make_bset/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,5,true,
         #{1 => {t_atom,[b_set]},
           2 => {t_map,{t_atom,[arg_types]},{t_map,none,none}},
           3 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[b_var]},2 => {t_integer,{1000,1000}}}},
           4 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[bif]},2 => {t_atom,['+','band','div']}}},
           5 =>
            {t_cons,
             {t_union,none,none,none,
              [{{2,{t_atom,[b_literal]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_literal]},2 => {t_integer,{42,42}}}}},
               {{2,{t_atom,[b_var]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
              none},
             nil}}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",1358}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_tagged_tuple,{f,508},[{x,0},5,{atom,b_set}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,508},[{x,1},{literal,{b_var,1000}}]}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_nonempty_list,{f,508},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,508},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nil,{f,508},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,508},[{x,1},{literal,#{}}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,
          {f,508},
          [{x,1},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_atom,[bif]},2 => {t_atom,['+','band']}}}}]}.
    {test,is_eq_exact,{f,508},[{x,2},{literal,{b_var,a}}]}.
    {test,is_eq_exact,{f,508},[{x,3},{literal,{b_literal,42}}]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{literal,#{arg_types => #{}}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1361}]}.
    {call,3,{f,510}}. % make_bset/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,5,true,
         #{1 => {t_atom,[b_set]},
           2 => {t_map,{t_atom,[arg_types]},{t_map,none,none}},
           3 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[b_var]},2 => {t_integer,{1000,1000}}}},
           4 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[bif]},2 => {t_atom,['+','band','div']}}},
           5 =>
            {t_cons,
             {t_union,none,none,none,
              [{{2,{t_atom,[b_literal]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_literal]},2 => {t_integer,{42,42}}}}},
               {{2,{t_atom,[b_var]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
              none},
             nil}}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",1362}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_tagged_tuple,{f,507},[{x,0},5,{atom,b_set}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,507},[{x,1},{literal,{b_var,1000}}]}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_nonempty_list,{f,507},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,507},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nil,{f,507},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,507},[{x,1},{literal,#{arg_types => #{}}}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,
          {f,507},
          [{x,1},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_atom,[bif]},2 => {t_atom,['+','band']}}}}]}.
    {test,is_eq_exact,{f,507},[{x,2},{literal,{b_var,a}}]}.
    {test,is_eq_exact,{f,507},[{x,3},{literal,{b_literal,42}}]}.
    {move,{integer,1023},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1364}]}.
    {call_ext,2,{extfunc,beam_types,make_integer,2}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{integer,1},{x,0}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {move,{y,2},{x,3}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1366}]}.
    {call,3,{f,510}}. % make_bset/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,5,true,
         #{1 => {t_atom,[b_set]},
           2 => {t_map,{t_atom,[arg_types]},{t_map,{t_integer,{0,1}},any}},
           3 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[b_var]},2 => {t_integer,{1000,1000}}}},
           4 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[bif]},2 => {t_atom,['+','band','div']}}},
           5 =>
            {t_cons,
             {t_union,none,none,none,
              [{{2,{t_atom,[b_literal]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_literal]},2 => {t_integer,{42,42}}}}},
               {{2,{t_atom,[b_var]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
              none},
             nil}}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",1367}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {call,1,{f,513}}. % unpack_bset/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_list,{t_tuple,2,true,#{}},nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_nonempty_list,{f,506},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,506},[{x,3},{integer,0}]}.
    {test,is_nil,{f,506},[{tr,{x,1},{t_list,{t_tuple,2,true,#{}},nil}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nonempty_list,{f,506},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,506},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_nil,{f,506},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,506},[{x,1},{y,0}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,506},
          [{x,1},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_atom,[bif]},2 => {t_atom,['+','band']}}}}]}.
    {test,is_eq_exact,{f,506},[{x,3},{literal,{b_var,a}}]}.
    {test,is_eq_exact,{f,506},[{x,4},{literal,{b_literal,42}}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{b_literal,42}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1369}]}.
    {call_ext,1,{extfunc,beam_types,make_type_from_value,1}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{integer,0},{x,0}]}}.
    {put_list,{x,0},nil,{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1372}]}.
    {call,3,{f,510}}. % make_bset/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,5,true,
         #{1 => {t_atom,[b_set]},
           2 => {t_map,{t_atom,[arg_types]},{t_map,{t_integer,{0,1}},any}},
           3 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[b_var]},2 => {t_integer,{1000,1000}}}},
           4 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[bif]},2 => {t_atom,['+','band','div']}}},
           5 =>
            {t_cons,
             {t_union,none,none,none,
              [{{2,{t_atom,[b_literal]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_literal]},2 => {t_integer,{42,42}}}}},
               {{2,{t_atom,[b_var]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
              none},
             nil}}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",1373}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {call,1,{f,513}}. % unpack_bset/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_list,{t_tuple,2,true,#{}},nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_nil,{f,505},[{tr,{x,1},{t_list,{t_tuple,2,true,#{}},nil}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nonempty_list,{f,505},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,505},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nil,{f,505},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,505},
          [{x,1},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_atom,[bif]},2 => {t_atom,['+','band']}}}}]}.
    {test,is_eq_exact,{f,505},[{x,2},{literal,{b_var,a}}]}.
    {test,is_eq_exact,{f,505},[{x,3},{literal,{b_literal,42}}]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",1376}]}.
    {call,3,{f,510}}. % make_bset/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,5,true,
         #{1 => {t_atom,[b_set]},
           2 => {t_map,{t_atom,[arg_types]},{t_map,{t_integer,{0,1}},any}},
           3 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[b_var]},2 => {t_integer,{1000,1000}}}},
           4 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[bif]},2 => {t_atom,['+','band','div']}}},
           5 =>
            {t_cons,
             {t_union,none,none,none,
              [{{2,{t_atom,[b_literal]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_literal]},2 => {t_integer,{42,42}}}}},
               {{2,{t_atom,[b_var]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
              none},
             nil}}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",1377}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {call,1,{f,513}}. % unpack_bset/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_list,{t_tuple,2,true,#{}},nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_nil,{f,504},[{tr,{x,1},{t_list,{t_tuple,2,true,#{}},nil}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nonempty_list,{f,504},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,504},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nil,{f,504},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,504},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[bif]},2 => {t_atom,['+','band']}}}}]}.
    {test,is_eq_exact,{f,504},[{x,2},{literal,{b_var,a}}]}.
    {test,is_eq_exact,{f,504},[{x,3},{literal,{b_literal,42}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,504}.
    {badmatch,{x,0}}.
  {label,505}.
    {line,[{location,"beam_ssa_SUITE.erl",1373}]}.
    {badmatch,{x,0}}.
  {label,506}.
    {line,[{location,"beam_ssa_SUITE.erl",1367}]}.
    {badmatch,{x,0}}.
  {label,507}.
    {line,[{location,"beam_ssa_SUITE.erl",1362}]}.
    {badmatch,{x,0}}.
  {label,508}.
    {line,[{location,"beam_ssa_SUITE.erl",1358}]}.
    {badmatch,{x,0}}.


{function, make_bset, 3, 510}.
  {label,509}.
    {line,[{location,"beam_ssa_SUITE.erl",1381}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,make_bset},3}.
  {label,510}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,
                         {t_union,none,none,none,
                             [{{2,{t_integer,{0,0}}},
                               {t_tuple,2,true,#{1 => {t_integer,{0,0}}}}},
                              {{2,{t_integer,{1,1}}},
                               {t_tuple,2,true,#{1 => {t_integer,{1,1}}}}}],
                             none},
                         nil},
                     none,none,
                     {t_map,{t_atom,[arg_types]},{t_map,none,none}}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[bif]},
                                     2 => {t_atom,['+','band','div']}}}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_cons,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[b_literal]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b_literal]},
                                 2 => {t_integer,{42,42}}}}},
                          {{2,{t_atom,[b_var]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b_var]},2 => {t_atom,[a,b]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,511},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1382}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{atom,arg_types},{x,0}]}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,b_set},
                       {x,0},
                       {literal,{b_var,1000}},
                       {y,1},
                       {y,0}]}}.
    {deallocate,2}.
    return.
  {label,511}.
    {test_heap,6,3}.
    {put_tuple2,{x,0},
                {list,[{atom,b_set},
                       {x,0},
                       {literal,{b_var,1000}},
                       {x,1},
                       {x,2}]}}.
    return.


{function, unpack_bset, 1, 513}.
  {label,512}.
    {line,[{location,"beam_ssa_SUITE.erl",1387}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,unpack_bset},1}.
  {label,513}.
    {test,is_tagged_tuple,{f,512},[{x,0},5,{atom,b_set}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,512},[{x,1},{literal,{b_var,1000}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_map,{f,516},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {get_map_elements,{f,514},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,arg_types},{x,0}]}}.
    {jump,{f,515}}.
  {label,514}.
    {move,{literal,#{}},{x,0}}.
  {label,515}.
    {line,[{location,"beam_ssa_SUITE.erl",1389}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test_heap,4,1}.
    {get_tuple_element,{y,0},3,{x,1}}.
    {get_tuple_element,{y,0},4,{x,2}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {deallocate,1}.
    return.
  {label,516}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,1}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, trycatch, 1, 518}.
  {label,517}.
    {line,[{location,"beam_ssa_SUITE.erl",1391}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,trycatch},1}.
  {label,518}.
    {allocate,0,0}.
    {line,[{location,"beam_ssa_SUITE.erl",1392}]}.
    {call,0,{f,522}}. % trycatch_1/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,520},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1394}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,526}}. % trycatch_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,z},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1395}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,526}}. % trycatch_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1397}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,530}}. % trycatch_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,ok]}}]}}.
    {test,is_eq_exact,{f,519},[{tr,{x,0},{t_atom,[false,ok]}},{atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,519}.
    {badmatch,{atom,ok}}.
  {label,520}.
    {line,[{location,"beam_ssa_SUITE.erl",1392}]}.
    {badmatch,{x,0}}.


{function, trycatch_1, 0, 522}.
  {label,521}.
    {line,[{location,"beam_ssa_SUITE.erl",1401}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,trycatch_1},0}.
  {label,522}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,524}}.
    {'try',{y,0},{f,523}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1402}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {try_end,{y,0}}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,523}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,524}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, trycatch_2, 1, 526}.
  {label,525}.
    {line,[{location,"beam_ssa_SUITE.erl",1411}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,trycatch_2},1}.
  {label,526}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {bif,'>=',
        {f,0},
        [{atom,ok},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}],
        {x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,1}}.
    {'try',{y,0},{f,528}}.
    {test,is_eq_exact,
          {f,527},
          [{tr,{x,1},{t_atom,[false,true]}},{tr,{x,0},{t_atom,[false,true]}}]}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1414}]}.
    {call_ext,1,{extfunc,erlang,iolist_size,1}}.
    {jump,{f,528}}.
  {label,527}.
    {try_end,{y,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,528}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, trycatch_3, 1, 530}.
  {label,529}.
    {line,[{location,"beam_ssa_SUITE.erl",1424}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,trycatch_3},1}.
  {label,530}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,536}}.
    {'try',{y,0},{f,535}}.
    {line,[{location,"beam_ssa_SUITE.erl",1425}]}.
    {call_ext,1,{extfunc,erlang,bump_reductions,1}}.
    {try_end,{y,0}}.
    {'try',{y,0},{f,532}}.
    {test,is_boolean,{f,531},[{x,0}]}.
    {try_end,{y,0}}.
    {move,{atom,false},{x,0}}.
    {jump,{f,533}}.
  {label,531}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{scope,[5]},{location,"beam_ssa_SUITE.erl",1427}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,532}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,534},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{atom,ok},{x,0}}.
  {label,533}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,534}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,535}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,536}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, gh_6599, 1, 538}.
  {label,537}.
    {line,[{location,"beam_ssa_SUITE.erl",1441}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,gh_6599},1}.
  {label,538}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1442}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{y,5}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {call,2,{f,557}}. % gh_6599_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_map,any,any}}}]}}.
    {test,is_eq_exact,
          {f,555},
          [{tr,{x,0},{t_union,{t_atom,[ok]},none,none,none,{t_map,any,any}}},
           {atom,ok}]}.
    {move,{literal,#{ok => 0}},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",1443}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{y,5}}.
    {move,{literal,#{ok => 0}},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {call,2,{f,557}}. % gh_6599_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_map,any,any}}}]}}.
    {test,is_map,
          {f,554},
          [{tr,{x,0},{t_union,{t_atom,[ok]},none,none,none,{t_map,any,any}}}]}.
    {get_map_elements,{f,554},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,ok},{x,1}]}}.
    {test,is_eq_exact,{f,554},[{x,1},{atom,ok}]}.
    {'catch',{y,5},{f,539}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",1446}]}.
    {call,1,{f,597}}. % id/1
    {move,{x,0},{y,4}}.
    {'%',
        {var_info,
            {y,4},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{literal,#{0 => whatever}},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call,2,{f,560}}. % gh_6599_2/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,539}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,553},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,553},[{x,1}]}.
    {test,test_arity,{f,553},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,553},[{x,1},2,{atom,try_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,553},[{x,1}]}.
    {get_map_elements,{f,553},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,ok},{x,1}]}}.
    {test,is_eq_exact,{f,553},[{x,1},{atom,ok}]}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_ssa_SUITE.erl",1448}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{y,5}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {call,2,{f,565}}. % gh_6599_3/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,
                                   {t_float,any},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,552},
          [{tr,{x,0},{t_union,{t_atom,[ok]},none,{t_float,any},none,none}},
           {atom,ok}]}.
    {'catch',{y,4},{f,540}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_ssa_SUITE.erl",1449}]}.
    {call,1,{f,597}}. % id/1
    {move,{x,0},{y,5}}.
    {'%',
        {var_info,
            {y,5},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{atom,false},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {call,2,{f,565}}. % gh_6599_3/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,
                                   {t_float,any},
                                   none,none}}]}}.
  {label,540}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,551},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,551},[{x,1},2,{atom,function_clause}]}.
    {move,{float,0.0},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_ssa_SUITE.erl",1450}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{y,5}}.
    {move,{float,0.0},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {call,2,{f,565}}. % gh_6599_3/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,
                                   {t_float,any},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,550},
          [{tr,{x,0},{t_union,{t_atom,[ok]},none,{t_float,any},none,none}},
           {float,0.0}]}.
    {'catch',{y,3},{f,541}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",1452}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {call,1,{f,568}}. % gh_6599_4/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,541}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,549},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,549},[{x,1}]}.
    {test,test_arity,{f,549},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,549},[{x,1},{literal,{badmatch,true}}]}.
    {'catch',{y,2},{f,542}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",1454}]}.
    {call,1,{f,597}}. % id/1
    {move,{x,0},{y,5}}.
    {'%',
        {var_info,
            {y,5},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{literal,#{0 => [a]}},{x,0}}.
    {call,1,{f,597}}. % id/1
    {move,{x,0},{y,4}}.
    {'%',
        {var_info,
            {y,4},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{literal,[a]},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{y,4},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,4},{y,5}]}}.
    {call,3,{f,576}}. % gh_6599_5/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil}}]}}.
  {label,542}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,548},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,548},[{x,1}]}.
    {test,test_arity,{f,548},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,548},[{x,1},{literal,{badmatch,ok}}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",1456}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{y,5}}.
    {move,{literal,#{}},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {call,2,{f,582}}. % gh_6599_6/2
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {get_map_elements,{f,547},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,ok},{x,1}]}}.
    {test,is_eq_exact,{f,547},[{x,1},{atom,ok}]}.
    {'catch',{y,1},{f,543}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",1457}]}.
    {call,1,{f,597}}. % id/1
    {move,{x,0},{y,5}}.
    {'%',
        {var_info,
            {y,5},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{atom,a},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {call,2,{f,582}}. % gh_6599_6/2
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
  {label,543}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,546},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,546},[{x,1}]}.
    {test,test_arity,{f,546},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,546},[{x,1},{literal,{badmap,a}}]}.
    {'catch',{y,0},{f,544}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1459}]}.
    {call,1,{f,597}}. % id/1
    {move,{x,0},{y,5}}.
    {'%',
        {var_info,
            {y,5},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{literal,[a]},{x,0}}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {call,2,{f,586}}. % gh_6599_7/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,544}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,545},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,545},[{x,1}]}.
    {test,test_arity,{f,545},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,545},[{x,1},{literal,{badarg,ok}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,545}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",1459}]}.
    {badmatch,{x,0}}.
  {label,546}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1457}]}.
    {badmatch,{x,0}}.
  {label,547}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",1456}]}.
    {badmatch,{x,0}}.
  {label,548}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",1454}]}.
    {badmatch,{x,0}}.
  {label,549}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",1452}]}.
    {badmatch,{x,0}}.
  {label,550}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",1450}]}.
    {badmatch,{x,0}}.
  {label,551}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",1449}]}.
    {badmatch,{x,0}}.
  {label,552}.
    {line,[{scope,"\n"},{location,"beam_ssa_SUITE.erl",1448}]}.
    {badmatch,{x,0}}.
  {label,553}.
    {line,[{scope,"\n"},{location,"beam_ssa_SUITE.erl",1445}]}.
    {badmatch,{x,0}}.
  {label,554}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",1443}]}.
    {badmatch,{x,0}}.
  {label,555}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",1442}]}.
    {badmatch,{x,0}}.


{function, gh_6599_1, 2, 557}.
  {label,556}.
    {line,[{location,"beam_ssa_SUITE.erl",1463}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,gh_6599_1},2}.
  {label,557}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,556},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,is_integer,
        {f,558},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,558}.
    {test,is_map,
        {f,556},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,is_eq_exact,
        {f,556},
        [{tr,{x,1},{t_map,any,any}},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_float,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {line,[{location,"beam_ssa_SUITE.erl",1466}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{atom,ok},{atom,ok}]}}.
    return.


{function, gh_6599_2, 2, 560}.
  {label,559}.
    {line,[{location,"beam_ssa_SUITE.erl",1468}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,gh_6599_2},2}.
  {label,560}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_map,
        {f,559},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {get_map_elements,{f,559},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{integer,0},{x,2}]}}.
    {test,is_eq_exact,
        {f,559},
        [{x,2},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {allocate,1,3}.
    {'try',{y,0},{f,561}}.
    {test,is_eq_exact,
        {f,563},
        [{tr,{x,2},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {literal,#{ok => ok}}]}.
    {test,is_eq_exact,
        {f,562},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {tr,{x,2},{t_map,{t_atom,[ok]},{t_atom,[ok]}}}]}.
    {line,[{location,"beam_ssa_SUITE.erl",1471}]}.
    {gc_bif,'bnot',
            {f,0},
            1,
            [{tr,{x,0},{t_map,{t_atom,[ok]},{t_atom,[ok]}}}],
            {x,0}}.
  {label,561}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,562}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1471}]}.
    {badmatch,{x,0}}.
  {label,563}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1469}]}.
    {try_case_end,{literal,#{ok => ok}}}.


{function, gh_6599_3, 2, 565}.
  {label,564}.
    {line,[{location,"beam_ssa_SUITE.erl",1476}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,gh_6599_3},2}.
  {label,565}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,564},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,is_eq_exact,
        {f,566},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,566}.
    {test,is_eq_exact,
        {f,564},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {float,0.0}]}.
    {test,is_eq_exact,
        {f,564},
        [{tr,{x,1},{t_float,{0.0,0.0}}},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {fmove,{x,0},{fr,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1479}]}.
    {bif,fadd,{f,0},[{fr,0},{fr,0}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    return.


{function, gh_6599_4, 1, 568}.
  {label,567}.
    {line,[{location,"beam_ssa_SUITE.erl",1481}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,gh_6599_4},1}.
  {label,568}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,0},{y,0}}.
    {'try',{y,1},{f,569}}.
    {test,is_eq_exact,
        {f,572},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {atom,false}]}.
    {try_end,{y,1}}.
    {move,{atom,false},{x,0}}.
    {jump,{f,570}}.
  {label,569}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,571},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{atom,ok},{x,0}}.
  {label,570}.
    {bif,'=/=',{f,0},[{tr,{x,0},{t_atom,[false,ok]}},{atom,ok}],{x,0}}.
    {test,is_eq_exact,
        {f,574},
        [{tr,{x,0},{t_atom,[false,true]}},
         {tr,{y,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,is_eq_exact,{f,573},[{x,0},{atom,true}]}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",1490}]}.
    {badmatch,{atom,true}}.
  {label,571}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,572}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1484}]}.
    {badmatch,{x,0}}.
  {label,573}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",1491}]}.
    {badmatch,{atom,ok}}.
  {label,574}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",1489}]}.
    {badmatch,{x,0}}.


{function, gh_6599_5, 3, 576}.
  {label,575}.
    {line,[{location,"beam_ssa_SUITE.erl",1494}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,gh_6599_5},3}.
  {label,576}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_map,
        {f,575},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {get_map_elements,{f,575},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{integer,0},{x,3}]}}.
    {test,is_nonempty_list,{f,575},[{x,2}]}.
    {test,is_eq_exact,
        {f,575},
        [{x,3},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,is_eq_exact,
        {f,575},
        [{tr,{x,2},
             {t_cons,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                     none,none,none},
                 nil}},
         {tr,{x,3},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {'try',{y,2},{f,577}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1496}]}.
    {badmatch,{atom,ok}}.
  {label,577}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,578},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,
        {f,580},
        [{tr,{y,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {tr,{y,0},
             {t_cons,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                     none,none,none},
                 nil}}]}.
    {get_tl,{y,1},{x,0}}.
    {test,is_nil,
          {f,579},
          [{tr,{x,0},
               {t_list,{t_union,{t_atom,[a]},
                                {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                none,none,none},
                       nil}}]}.
    {move,{y,1},{x,0}}.
    {deallocate,3}.
    return.
  {label,578}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,579}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",1499}]}.
    {badmatch,{y,1}}.
  {label,580}.
    {badmatch,{y,1}}.


{function, gh_6599_6, 2, 582}.
  {label,581}.
    {line,[{location,"beam_ssa_SUITE.erl",1502}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,gh_6599_6},2}.
  {label,582}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,581},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,is_map,
        {f,583},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {test,is_eq_exact,
        {f,584},
        [{tr,{x,0},{t_map,any,any}},
         {tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {put_map_assoc,{f,0},{x,1},{x,0},2,{list,[{atom,ok},{atom,ok}]}}.
    return.
  {label,583}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",1503}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,584}.
    {line,[{location,"beam_ssa_SUITE.erl",1504}]}.
    {case_end,{x,0}}.


{function, gh_6599_7, 2, 586}.
  {label,585}.
    {line,[{location,"beam_ssa_SUITE.erl",1506}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,gh_6599_7},2}.
  {label,586}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {move,{x,0},{y,0}}.
    {'try',{y,3},{f,592}}.
    {test,is_eq_exact,
        {f,595},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {'try',{y,2},{f,591}}.
    {'try',{y,1},{f,590}}.
    {test,is_nonempty_list,{f,594},[{x,1}]}.
    {try_end,{y,1}}.
    {test,is_eq_exact,
        {f,593},
        [{tr,{x,1},
             {t_cons,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                     none,none,none},
                 nil}},
         {tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 {t_number,any},
                 {t_tuple,2,false,#{}},
                 other}}]}.
    {try_end,{y,2}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",1509}]}.
    {call,1,{f,597}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,
                        {t_atom,[a]},
                        {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                        none,none,none},
                    nil},
                {t_number,any},
                {t_tuple,2,false,#{}},
                other}},
        {f,589},
        {list,[{atom,false},{f,587},{atom,true},{f,588}]}}.
  {label,587}.
    {move,{y,0},{x,0}}.
  {label,588}.
    {line,[{location,"beam_ssa_SUITE.erl",1516}]}.
    {gc_bif,'bsl',
        {f,0},
        1,
        [{tr,{x,0},
             {t_union,
                 {t_atom,[true]},
                 {t_cons,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                         none,none,none},
                     nil},
                 none,none,none}},
         {integer,0}],
        {x,0}}.
    {jump,{f,592}}.
  {label,589}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{scope,[5]},{location,"beam_ssa_SUITE.erl",1516}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {jump,{f,592}}.
  {label,590}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,591}.
    {try_case,{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,592}.
    {try_case,{y,3}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,593}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",1510}]}.
    {try_case_end,{x,1}}.
  {label,594}.
    {line,[{scope,[7]},{location,"beam_ssa_SUITE.erl",1510}]}.
    {badmatch,{x,1}}.
  {label,595}.
    {line,[{scope,"\t"},{location,"beam_ssa_SUITE.erl",1507}]}.
    {try_case_end,{x,1}}.


{function, id, 1, 597}.
  {label,596}.
    {line,[{location,"beam_ssa_SUITE.erl",1523}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,id},1}.
  {label,597}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             none,none,none},
                         nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     other}}]}}.
    return.


{function, module_info, 0, 599}.
  {label,598}.
    {line,[]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,module_info},0}.
  {label,599}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 601}.
  {label,600}.
    {line,[]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,module_info},1}.
  {label,601}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-grab_bag_3/0-fun-0-', 1, 603}.
  {label,602}.
    {line,[{location,"beam_ssa_SUITE.erl",968}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-grab_bag_3/0-fun-0-'},1}.
  {label,603}.
    {jump,{f,602}}.


{function, '-test_mapfoldl_implementations/0-fun-0-', 2, 605}.
  {label,604}.
    {line,[{location,"beam_ssa_SUITE.erl",869}]}.
    {func_info,{atom,beam_ssa_SUITE},
               {atom,'-test_mapfoldl_implementations/0-fun-0-'},
               2}.
  {label,605}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-mapfoldl/1-fun-0-', 2, 607}.
  {label,606}.
    {line,[{location,"beam_ssa_SUITE.erl",853}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-mapfoldl/1-fun-0-'},2}.
  {label,607}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",854}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
    {move,{atom,a},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",855}]}.
    {call_ext,2,{extfunc,erlang,make_tuple,2}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, '-mapfoldl/0-fun-1-', 1, 609}.
  {label,608}.
    {line,[{location,"beam_ssa_SUITE.erl",841}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-mapfoldl/0-fun-1-'},1}.
  {label,609}.
    {'%',{var_info,{x,0},[{type,{t_integer,{100000,100000}}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,611},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {move,{literal,[100000]},{x,2}}.
    {move,nil,{x,1}}.
    {call_only,3,{f,362}}. % mapfoldl/3


{function, '-mapfoldl/0-fun-0-', 2, 611}.
  {label,610}.
    {line,[{location,"beam_ssa_SUITE.erl",842}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-mapfoldl/0-fun-0-'},2}.
  {label,611}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",843}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
    {move,{atom,a},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",844}]}.
    {call_ext,2,{extfunc,erlang,make_tuple,2}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, '-stack_init/2-fun-0-', 2, 613}.
  {label,612}.
    {line,[{location,"beam_ssa_SUITE.erl",825}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-stack_init/2-fun-0-'},2}.
  {label,613}.
    {line,[{location,"beam_ssa_SUITE.erl",826}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-cover_ssa_dead/1-lbc$^0/2-0-', 2, 615}.
  {label,614}.
    {line,[{location,"beam_ssa_SUITE.erl",614}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-cover_ssa_dead/1-lbc$^0/2-0-'},2}.
  {label,615}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-my_spawn/1-fun-0-', 1, 617}.
  {label,616}.
    {line,[{location,"beam_ssa_SUITE.erl",279}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-my_spawn/1-fun-0-'},1}.
  {label,617}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate_heap,0,3,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,ok},{x,1}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",280}]}.
    send.
  {label,618}.
    {loop_rec,{f,619},{x,0}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,619}.
    {wait,{f,618}}.


{function, '-recv/1-fun-4-', 0, 621}.
  {label,620}.
    {line,[{location,"beam_ssa_SUITE.erl",183}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-recv/1-fun-4-'},0}.
  {label,621}.
    {allocate,0,0}.
  {label,622}.
    {loop_rec,{f,623},{x,0}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,623}.
    {wait,{f,622}}.


{function, '-recv/1-fun-3-', 0, 625}.
  {label,624}.
    {line,[{location,"beam_ssa_SUITE.erl",176}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-recv/1-fun-3-'},0}.
  {label,625}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {bif,self,{f,0},[],{x,0}}.
    {make_fun3,{f,629},0,0,{x,0},{list,[{x,0}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",178}]}.
    {call_ext,1,{extfunc,erlang,spawn,1}}.
  {label,626}.
    {loop_rec,{f,627},{x,0}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,627}.
    {wait,{f,626}}.


{function, '-recv/1-fun-2-', 1, 629}.
  {label,628}.
    {line,[{location,"beam_ssa_SUITE.erl",178}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-recv/1-fun-2-'},1}.
  {label,629}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate,0,1}.
    {move,{atom,kill_me},{x,1}}.
    {call_ext_last,2,{extfunc,erlang,exit,2},0}.


{function, '-recv/1-fun-1-', 0, 631}.
  {label,630}.
    {line,[{location,"beam_ssa_SUITE.erl",173}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-recv/1-fun-1-'},0}.
  {label,631}.
    {move,{atom,down},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, '-recv/1-fun-0-', 1, 633}.
  {label,632}.
    {line,[{location,"beam_ssa_SUITE.erl",170}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-recv/1-fun-0-'},1}.
  {label,633}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate_heap,0,4,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,ack},{x,1},{literal,{result,42}}]}}.
    send.
    {deallocate,0}.
    return.


{function, '-calls/1-fun-1-', 2, 635}.
  {label,634}.
    {line,[{location,"beam_ssa_SUITE.erl",74}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-calls/1-fun-1-'},2}.
  {label,635}.
    {test,is_eq_exact,{f,634},[{x,0},{atom,a}]}.
    {test,is_eq_exact,{f,634},[{x,1},{atom,b}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-calls/1-fun-0-', 1, 637}.
  {label,636}.
    {line,[{location,"beam_ssa_SUITE.erl",73}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-calls/1-fun-0-'},1}.
  {label,637}.
    {test,is_eq_exact,{f,636},[{x,0},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    return.
