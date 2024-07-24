{module, beam_ssa_SUITE}.  %% version = 0

{exports, [{all,0},
           {beam_ssa_dead_crash,1},
           {calls,1},
           {combine_sw,1},
           {cover_ssa_dead,1},
           {coverage,1},
           {end_per_group,2},
           {end_per_suite,1},
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

{labels, 564}.


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
                                 redundant_br,coverage,normalize,trycatch]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_ssa_SUITE.erl",57}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",58}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_ssa_SUITE.erl",61}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_ssa_SUITE.erl",64}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_ssa_SUITE.erl",67}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, calls, 1, 16}.
  {label,15}.
    {line,[{location,"beam_ssa_SUITE.erl",70}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,calls},1}.
  {label,16}.
    {allocate_heap,2,{alloc,[{words,4},{floats,0},{funs,1}]},1}.
    {init_yregs,{list,[{y,0}]}}.
    {put_tuple2,{y,1},{list,[{atom,return},{atom,value},{x,0}]}}.
    {make_fun3,{f,563},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{y,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",72}]}.
    {call,2,{f,26}}. % fun_call/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,24},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {tr,{y,1},
               {t_tuple,3,true,
                        #{1 => {t_atom,[return]},2 => {t_atom,[value]}}}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,561},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{y,1},{x,2}}.
    {move,{literal,[a,b]},{x,1}}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",73}]}.
    {call,3,{f,28}}. % apply_fun/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,23},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {tr,{y,1},
               {t_tuple,3,true,
                        #{1 => {t_atom,[return]},2 => {t_atom,[value]}}}}]}.
    {move,{literal,[anything]},{x,2}}.
    {move,{atom,id},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{atom,test_lib},{x,0}}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",74}]}.
    {call,4,{f,30}}. % apply_mfa/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {tr,{y,1},
               {t_tuple,3,true,
                        #{1 => {t_atom,[return]},2 => {t_atom,[value]}}}}]}.
    {'catch',{y,1},{f,17}}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",75}]}.
    {call,0,{f,32}}. % call_error/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,17}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,21},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,21},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,18}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_ssa_SUITE.erl",76}]}.
    {call,1,{f,34}}. % call_error/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,18}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,20},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,20},[{x,1},2,{atom,badarg}]}.
    {move,{literal,[erlang,length,1,2,3,4,5]},{x,0}}.
    {line,[{scope,[1,2]},{location,"beam_ssa_SUITE.erl",77}]}.
    {call,1,{f,36}}. % start_it/1
    {test,is_eq_exact,{f,19},[{x,0},{integer,5}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,19}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",77}]}.
    {badmatch,{x,0}}.
  {label,20}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",76}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",75}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",74}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",73}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",72}]}.
    {badmatch,{x,0}}.


{function, fun_call, 2, 26}.
  {label,25}.
    {line,[{location,"beam_ssa_SUITE.erl",80}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,fun_call},2}.
  {label,26}.
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,{'-calls/1-fun-0-',1},{t_atom,[ok]}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[return]},
                                     2 => {t_atom,[value]}}}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",81}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",82}]}.
    {call,1,{f,563}}. % '-calls/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, apply_fun, 3, 28}.
  {label,27}.
    {line,[{location,"beam_ssa_SUITE.erl",85}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,apply_fun},3}.
  {label,28}.
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
    {line,[{location,"beam_ssa_SUITE.erl",86}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"beam_ssa_SUITE.erl",87}]}.
    {call_ext,2,{extfunc,erlang,apply,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, apply_mfa, 4, 30}.
  {label,29}.
    {line,[{location,"beam_ssa_SUITE.erl",90}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,apply_mfa},4}.
  {label,30}.
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
    {line,[{location,"beam_ssa_SUITE.erl",91}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{atom,id},{x,1}}.
    {move,{atom,test_lib},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",92}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, call_error, 0, 32}.
  {label,31}.
    {line,[{location,"beam_ssa_SUITE.erl",95}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,call_error},0}.
  {label,32}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",96}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, call_error, 1, 34}.
  {label,33}.
    {line,[{location,"beam_ssa_SUITE.erl",99}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,call_error},1}.
  {label,34}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",100}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, start_it, 1, 36}.
  {label,35}.
    {line,[{location,"beam_ssa_SUITE.erl",103}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,start_it},1}.
  {label,36}.
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
    {test,is_nonempty_list,{f,37},[{x,2}]}.
    {allocate,0,3}.
    {get_list,{x,2},{x,2},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",105}]}.
    {apply_last,1,0}.
  {label,37}.
    {line,[{location,"beam_ssa_SUITE.erl",104}]}.
    {case_end,{x,0}}.


{function, tuple_matching, 1, 39}.
  {label,38}.
    {line,[{location,"beam_ssa_SUITE.erl",108}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tuple_matching},1}.
  {label,39}.
    {allocate,0,0}.
    {move,{literal,{tag,42}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",109}]}.
    {call,1,{f,43}}. % do_tuple_matching/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",111}]}.
    {call,1,{f,52}}. % is_two_tuple/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,41},[{x,0},{atom,true}]}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",112}]}.
    {call,1,{f,52}}. % is_two_tuple/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,40},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,40}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",113}]}.
    {call,1,{f,52}}. % is_two_tuple/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,41}.
    {line,[{location,"beam_ssa_SUITE.erl",111}]}.
    {badmatch,{atom,false}}.


{function, do_tuple_matching, 1, 43}.
  {label,42}.
    {line,[{location,"beam_ssa_SUITE.erl",117}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_tuple_matching},1}.
  {label,43}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[tag]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",118}]}.
    {call,1,{f,45}}. % do_tuple_matching_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{literal,{tag,42}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",119}]}.
    {call,1,{f,47}}. % do_tuple_matching_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{literal,{tag,42}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",120}]}.
    {call,1,{f,49}}. % do_tuple_matching_3/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, do_tuple_matching_1, 1, 45}.
  {label,44}.
    {line,[{location,"beam_ssa_SUITE.erl",123}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_tuple_matching_1},1}.
  {label,45}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[tag]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{literal,{ok,42}},{x,0}}.
    return.


{function, do_tuple_matching_2, 1, 47}.
  {label,46}.
    {line,[{location,"beam_ssa_SUITE.erl",126}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_tuple_matching_2},1}.
  {label,47}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[tag]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{literal,{ok,42}},{x,0}}.
    return.


{function, do_tuple_matching_3, 1, 49}.
  {label,48}.
    {line,[{location,"beam_ssa_SUITE.erl",133}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_tuple_matching_3},1}.
  {label,49}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[tag]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {allocate,0,0}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",137}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,50},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {integer,2}]}.
    {move,{literal,{ok,42}},{x,0}}.
    {deallocate,0}.
    return.
  {label,50}.
    {badmatch,{x,0}}.


{function, is_two_tuple, 1, 52}.
  {label,51}.
    {line,[{location,"beam_ssa_SUITE.erl",141}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,is_two_tuple},1}.
  {label,52}.
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
          {f,53},
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
  {label,53}.
    {move,{atom,false},{x,0}}.
    return.


{function, recv, 1, 55}.
  {label,54}.
    {line,[{location,"beam_ssa_SUITE.erl",150}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,recv},1}.
  {label,55}.
    {allocate_heap,1,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {bif,self,{f,0},[],{y,0}}.
    {make_fun3,{f,559},0,0,{x,0},{list,[{y,0}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",155}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {move,{atom,infinity},{x,1}}.
    {call,2,{f,75}}. % sync_wait_mon/2
    {test,is_eq_exact,{f,73},[{x,0},{literal,{result,42}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,557},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",158}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {move,{atom,infinity},{x,1}}.
    {call,2,{f,75}}. % sync_wait_mon/2
    {test,is_eq_exact,{f,72},[{x,0},{literal,{error,down}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,551},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",165}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {move,{atom,infinity},{x,1}}.
    {call,2,{f,75}}. % sync_wait_mon/2
    {test,is_eq_exact,{f,71},[{x,0},{literal,{error,kill_me}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,547},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",168}]}.
    {call_ext,1,{extfunc,erlang,spawn_monitor,1}}.
    {move,{integer,0},{x,1}}.
    {call,2,{f,75}}. % sync_wait_mon/2
    {test,is_eq_exact,{f,70},[{x,0},{literal,{error,timeout}}]}.
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{atom,a},{y,0}]}}.
    {put_tuple2,{x,0},
                {list,[{atom,reporter_state},{x,0},{literal,{run_config,0}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",171}]}.
    {call,1,{f,84}}. % reporter_loop/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => pid}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,69},[{tr,{x,1},pid},{tr,{y,0},pid}]}.
    {line,[{location,"beam_ssa_SUITE.erl",175}]}.
    {call,0,{f,86}}. % bad_sink/0
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",178}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",179}]}.
    {call,0,{f,94}}. % tricky_recv_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,68},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",180}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",181}]}.
    {call,0,{f,94}}. % tricky_recv_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,67},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",184}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",185}]}.
    {call,0,{f,101}}. % tricky_recv_2/0
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
          {f,66},
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
    {line,[{location,"beam_ssa_SUITE.erl",186}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",187}]}.
    {call,0,{f,101}}. % tricky_recv_2/0
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
          {f,65},
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
    {make_fun3,{f,109},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",190}]}.
    {call_ext,1,{extfunc,erlang,spawn,1}}.
    {move,{atom,done},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",191}]}.
    {call_ext,2,{extfunc,erlang,exit,2}}.
    {test_heap,6,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,1},{list,[{x,0},{atom,r0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{literal,{1,42,"name"}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",194}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",195}]}.
    {call,0,{f,114}}. % tricky_recv_3/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_tuple,
          {f,64},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}}]}.
    {test,test_arity,{f,64},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,64},[{x,1},{atom,r0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,64},[{x,1},{literal,[<<0,0,0,1,1,42>>,"name",0]}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,64},[{x,1},{tr,{y,0},pid}]}.
    {test_heap,6,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,1},{list,[{x,0},{atom,r1}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{literal,{2,99,<<"data">>}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",196}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",197}]}.
    {call,0,{f,114}}. % tricky_recv_3/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_tuple,
          {f,63},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}}]}.
    {test,test_arity,{f,63},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,63},[{x,1},{atom,r1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,63},[{x,1},{literal,<<0,0,0,1,2,99,100,97,116,97>>}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,63},[{x,1},{tr,{y,0},pid}]}.
    {test_heap,5,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_list,{x,0},{literal,[r0]},{x,1}}.
    {put_tuple2,{x,1},{list,[{x,1},{literal,{1,42,"name"}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",200}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",201}]}.
    {call,0,{f,122}}. % tricky_recv_4/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_tuple,
          {f,62},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}}]}.
    {test,test_arity,{f,62},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,62},[{x,1},{atom,r0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,62},[{x,1},{literal,[<<0,0,0,1,1,42>>,"name",0]}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,62},[{x,1},{tr,{y,0},pid}]}.
    {test_heap,5,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_list,{x,0},{literal,[r1]},{x,1}}.
    {put_tuple2,{x,1},{list,[{x,1},{literal,{2,99,<<"data">>}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",202}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",203}]}.
    {call,0,{f,122}}. % tricky_recv_4/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_tuple,
          {f,61},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}}]}.
    {test,test_arity,{f,61},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,61},[{x,1},{atom,r1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,61},[{x,1},{literal,<<0,0,0,1,2,99,100,97,116,97>>}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,61},[{x,1},{tr,{y,0},pid}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {trim,1,0}.
    {line,[{location,"beam_ssa_SUITE.erl",206}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",207}]}.
    {call,0,{f,130}}. % tricky_recv_5/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,60},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,a}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",208}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",209}]}.
    {call,0,{f,130}}. % tricky_recv_5/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,59},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,b}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",212}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",213}]}.
    {call,0,{f,139}}. % tricky_recv_5a/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,58},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,a}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",214}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",215}]}.
    {call,0,{f,139}}. % tricky_recv_5a/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,57},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,b}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,any},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",216}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",217}]}.
    {call,0,{f,139}}. % tricky_recv_5a/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_eq_exact,{f,56},[{tr,{x,0},{t_atom,[a,b,c]}},{atom,b}]}.
    {line,[{location,"beam_ssa_SUITE.erl",220}]}.
    {call,0,{f,146}}. % tricky_recv_6/0
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,
                                   {t_float,any},
                                   none,none}}]}}.
    {call_last,0,{f,152},0}. % recv_coverage/0
  {label,56}.
    {line,[{location,"beam_ssa_SUITE.erl",217}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{location,"beam_ssa_SUITE.erl",215}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{location,"beam_ssa_SUITE.erl",213}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{location,"beam_ssa_SUITE.erl",209}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{location,"beam_ssa_SUITE.erl",207}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"beam_ssa_SUITE.erl",203}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"beam_ssa_SUITE.erl",201}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{location,"beam_ssa_SUITE.erl",197}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"beam_ssa_SUITE.erl",195}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{location,"beam_ssa_SUITE.erl",187}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{location,"beam_ssa_SUITE.erl",185}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{location,"beam_ssa_SUITE.erl",181}]}.
    {badmatch,{atom,a}}.
  {label,68}.
    {line,[{location,"beam_ssa_SUITE.erl",179}]}.
    {badmatch,{atom,b}}.
  {label,69}.
    {line,[{location,"beam_ssa_SUITE.erl",171}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{location,"beam_ssa_SUITE.erl",168}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{location,"beam_ssa_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"beam_ssa_SUITE.erl",158}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{location,"beam_ssa_SUITE.erl",155}]}.
    {badmatch,{x,0}}.


{function, sync_wait_mon, 2, 75}.
  {label,74}.
    {line,[{location,"beam_ssa_SUITE.erl",226}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,sync_wait_mon},2}.
  {label,75}.
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
  {label,76}.
    {loop_rec,{f,82},{x,0}}.
    {test,is_tuple,{f,81},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,81},
                        {list,[3,{f,78},5,{f,77}]}}.
  {label,77}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},3,{x,3}}.
    {test,is_eq_exact,{f,81},[{x,1},{atom,'DOWN'}]}.
    {test,is_eq_exact,{f,81},[{x,2},{tr,{y,0},reference}]}.
    {test,is_eq_exact,{f,81},[{x,3},{tr,{y,1},pid}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},4,{x,0}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,78}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {select_val,{x,1},{f,81},{list,[{atom,'EXIT'},{f,80},{atom,ack},{f,79}]}}.
  {label,79}.
    {test,is_eq_exact,{f,81},[{x,2},{tr,{y,1},pid}]}.
    {move,{x,0},{y,2}}.
    remove_message.
    {move,{literal,[flush]},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",229}]}.
    {call_ext,2,{extfunc,erlang,demonitor,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,80}.
    {test,is_eq_exact,{f,81},[{x,2},{tr,{y,1},pid}]}.
    {move,{x,0},{y,2}}.
    remove_message.
    {move,{literal,[flush]},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",234}]}.
    {call_ext,2,{extfunc,erlang,demonitor,2}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,81}.
    {loop_rec_end,{f,76}}.
  {label,82}.
    {wait_timeout,{f,76},{y,2}}.
    timeout.
    {move,{literal,[flush]},{x,1}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",237}]}.
    {call_ext,2,{extfunc,erlang,demonitor,2}}.
    {move,{atom,kill},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"beam_ssa_SUITE.erl",238}]}.
    {call_ext,2,{extfunc,erlang,exit,2}}.
    {move,{literal,{error,timeout}},{x,0}}.
    {deallocate,0}.
    return.


{function, reporter_loop, 1, 84}.
  {label,83}.
    {line,[{location,"beam_ssa_SUITE.erl",242}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,reporter_loop},1}.
  {label,84}.
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


{function, bad_sink, 0, 86}.
  {label,85}.
    {line,[{location,"beam_ssa_SUITE.erl",248}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,bad_sink},0}.
  {label,86}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",249}]}.
    {call,1,{f,92}}. % my_spawn/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[ok]},2 => pid}}}]}}.
    {get_tuple_element,{x,0},1,{y,0}}.
  {label,87}.
    {loop_rec,{f,90},{x,0}}.
    {test,is_tuple,{f,88},[{x,0}]}.
    {test,is_tagged_tuple,
          {f,89},
          [{tr,{x,0},{t_tuple,0,false,#{}}},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,89},[{x,0},{tr,{y,0},pid}]}.
    remove_message.
    {move,{atom,kill},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",260}]}.
    {call_ext_last,2,{extfunc,erlang,exit,2},1}.
  {label,88}.
    {test,is_eq_exact,{f,89},[{x,0},{atom,error}]}.
    remove_message.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",258}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},1}.
  {label,89}.
    {loop_rec_end,{f,87}}.
  {label,90}.
    {wait,{f,87}}.


{function, my_spawn, 1, 92}.
  {label,91}.
    {line,[{location,"beam_ssa_SUITE.erl",262}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,my_spawn},1}.
  {label,92}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,543},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",263}]}.
    {call_ext,1,{extfunc,erlang,spawn,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {deallocate,0}.
    return.


{function, tricky_recv_1, 0, 94}.
  {label,93}.
    {line,[{location,"beam_ssa_SUITE.erl",269}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_1},0}.
  {label,94}.
    {allocate,0,0}.
  {label,95}.
    {loop_rec,{f,99},{x,0}}.
    {select_val,{x,0},{f,98},{list,[{integer,1},{f,97},{integer,2},{f,96}]}}.
  {label,96}.
    remove_message.
    {move,{atom,b},{x,0}}.
    {deallocate,0}.
    return.
  {label,97}.
    remove_message.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",272}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {move,{atom,a},{x,0}}.
    {deallocate,0}.
    return.
  {label,98}.
    {loop_rec_end,{f,95}}.
  {label,99}.
    {wait,{f,95}}.


{function, tricky_recv_2, 0, 101}.
  {label,100}.
    {line,[{location,"beam_ssa_SUITE.erl",282}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_2},0}.
  {label,101}.
    {allocate,0,0}.
  {label,102}.
    {loop_rec,{f,107},{x,0}}.
    {select_val,{x,0},
                {f,106},
                {list,[{integer,1},{f,104},{integer,2},{f,103}]}}.
  {label,103}.
    remove_message.
    {move,{literal,{2,'maybe'}},{x,0}}.
    {deallocate,0}.
    return.
  {label,104}.
    remove_message.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",285}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,105},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {integer,1}]}.
    {move,{literal,{1,yes}},{x,0}}.
    {deallocate,0}.
    return.
  {label,105}.
    {move,{literal,{1,no}},{x,0}}.
    {deallocate,0}.
    return.
  {label,106}.
    {loop_rec_end,{f,102}}.
  {label,107}.
    {wait,{f,102}}.


{function, recv_after_inf_in_try, 0, 109}.
  {label,108}.
    {line,[{location,"beam_ssa_SUITE.erl",296}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,recv_after_inf_in_try},0}.
  {label,109}.
    {allocate,1,0}.
    {'try',{y,0},{f,111}}.
  {label,110}.
    {wait,{f,110}}.
  {label,111}.
    {try_case,{y,0}}.
  {label,112}.
    {wait,{f,112}}.


{function, tricky_recv_3, 0, 114}.
  {label,113}.
    {line,[{location,"beam_ssa_SUITE.erl",305}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_3},0}.
  {label,114}.
    {allocate,0,0}.
  {label,115}.
    {loop_rec,{f,120},{x,0}}.
    {test,is_tuple,{f,119},[{x,0}]}.
    {test,test_arity,{f,119},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,119},[{x,1}]}.
    {test,test_arity,{f,119},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,119},[{x,0}]}.
    {test,test_arity,{f,119},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,3}}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {select_val,{x,3},
                {f,119},
                {list,[{integer,1},{f,117},{integer,2},{f,116}]}}.
  {label,116}.
    {move,{x,4},{x,3}}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",313}]}.
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
    {jump,{f,118}}.
  {label,117}.
    {move,{x,4},{x,3}}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",310}]}.
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
  {label,118}.
    {call_last,1,{f,523},0}. % id/1
  {label,119}.
    {loop_rec_end,{f,115}}.
  {label,120}.
    {wait,{f,115}}.


{function, tricky_recv_4, 0, 122}.
  {label,121}.
    {line,[{location,"beam_ssa_SUITE.erl",317}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_4},0}.
  {label,122}.
    {allocate,0,0}.
  {label,123}.
    {loop_rec,{f,128},{x,0}}.
    {test,is_tuple,{f,127},[{x,0}]}.
    {test,test_arity,{f,127},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,127},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,127},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nil,{f,127},[{x,1}]}.
    {test,is_tuple,{f,127},[{x,0}]}.
    {test,test_arity,{f,127},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {select_val,{x,1},
                {f,127},
                {list,[{integer,1},{f,125},{integer,2},{f,124}]}}.
  {label,124}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,3}}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",325}]}.
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
    {jump,{f,126}}.
  {label,125}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,3}}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",322}]}.
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
  {label,126}.
    {call_last,1,{f,523},0}. % id/1
  {label,127}.
    {loop_rec_end,{f,123}}.
  {label,128}.
    {wait,{f,123}}.


{function, tricky_recv_5, 0, 130}.
  {label,129}.
    {line,[{location,"beam_ssa_SUITE.erl",332}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_5},0}.
  {label,130}.
    {allocate,1,0}.
    {'try',{y,0},{f,137}}.
  {label,131}.
    {loop_rec,{f,136},{x,0}}.
    {select_val,{x,0},
                {f,135},
                {list,[{integer,1},{f,133},{integer,2},{f,132}]}}.
  {label,132}.
    remove_message.
    {move,{atom,b},{x,0}}.
    {jump,{f,134}}.
  {label,133}.
    remove_message.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",336}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {move,{atom,a},{x,0}}.
  {label,134}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,135}.
    {loop_rec_end,{f,131}}.
  {label,136}.
    {wait,{f,131}}.
  {label,137}.
    {try_case,{y,0}}.
    {move,{atom,c},{x,0}}.
    {deallocate,1}.
    return.


{function, tricky_recv_5a, 0, 139}.
  {label,138}.
    {line,[{location,"beam_ssa_SUITE.erl",351}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_5a},0}.
  {label,139}.
    {allocate,1,0}.
    {'try',{y,0},{f,144}}.
  {label,140}.
    {loop_rec,{f,143},{x,0}}.
    {test,is_eq_exact,{f,141},[{x,0},{integer,1}]}.
    remove_message.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",355}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {move,{atom,a},{x,0}}.
    {jump,{f,142}}.
  {label,141}.
    remove_message.
    {move,{atom,b},{x,0}}.
  {label,142}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,143}.
    {wait,{f,140}}.
  {label,144}.
    {try_case,{y,0}}.
    {move,{atom,c},{x,0}}.
    {deallocate,1}.
    return.


{function, tricky_recv_6, 0, 146}.
  {label,145}.
    {line,[{location,"beam_ssa_SUITE.erl",374}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,tricky_recv_6},0}.
  {label,146}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,1}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,0}}.
  {label,147}.
    {loop_rec,{f,150},{x,0}}.
    {test,is_tuple,{f,149},[{x,0}]}.
    {test,test_arity,{f,149},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,148},[{x,1},{tr,{y,1},reference}]}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",378}]}.
    {fconv,{x,0},{fr,0}}.
    {fmove,{float,1.0},{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,148}.
    {test,is_eq_exact,{f,149},[{x,1},{tr,{y,0},reference}]}.
    remove_message.
    {line,[{location,"beam_ssa_SUITE.erl",379}]}.
    {fconv,{x,0},{fr,0}}.
    {fmove,{float,2.0},{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,149}.
    {loop_rec_end,{f,147}}.
  {label,150}.
    timeout.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.


{function, recv_coverage, 0, 152}.
  {label,151}.
    {line,[{location,"beam_ssa_SUITE.erl",384}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,recv_coverage},0}.
  {label,152}.
    {allocate,0,0}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",385}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",386}]}.
    {call,0,{f,158}}. % recv_coverage_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,156},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",387}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",388}]}.
    {call,0,{f,158}}. % recv_coverage_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,155},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",390}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",391}]}.
    {call,0,{f,172}}. % recv_coverage_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,154},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",392}]}.
    send.
    {line,[{location,"beam_ssa_SUITE.erl",393}]}.
    {call,0,{f,172}}. % recv_coverage_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,153},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,153}.
    {badmatch,{atom,a}}.
  {label,154}.
    {line,[{location,"beam_ssa_SUITE.erl",391}]}.
    {badmatch,{atom,b}}.
  {label,155}.
    {line,[{location,"beam_ssa_SUITE.erl",388}]}.
    {badmatch,{atom,a}}.
  {label,156}.
    {line,[{location,"beam_ssa_SUITE.erl",386}]}.
    {badmatch,{atom,b}}.


{function, recv_coverage_1, 0, 158}.
  {label,157}.
    {line,[{location,"beam_ssa_SUITE.erl",399}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,recv_coverage_1},0}.
  {label,158}.
    {allocate,0,0}.
  {label,159}.
    {loop_rec,{f,169},{x,0}}.
    {select_val,{x,0},
                {f,168},
                {list,[{integer,1},{f,166},{integer,2},{f,160}]}}.
  {label,160}.
    remove_message.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",411}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                {t_number,any},
                {t_tuple,2,false,#{}},
                {t_bitstring,256,true}}},
        {f,165},
        {list,
            [{integer,0},
             {f,164},
             {integer,1},
             {f,163},
             {integer,2},
             {f,162},
             {integer,3},
             {f,161}]}}.
  {label,161}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",415}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,162}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",414}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,163}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",413}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,164}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",412}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,165}.
    {move,{atom,b},{x,0}}.
    {deallocate,0}.
    return.
  {label,166}.
    remove_message.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",403}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                {t_number,any},
                {t_tuple,2,false,#{}},
                {t_bitstring,256,true}}},
        {f,170},
        {list,
            [{integer,0},
             {f,167},
             {integer,1},
             {f,167},
             {integer,2},
             {f,167},
             {integer,3},
             {f,167}]}}.
  {label,167}.
    {move,{atom,a},{x,0}}.
    {deallocate,0}.
    return.
  {label,168}.
    {loop_rec_end,{f,159}}.
  {label,169}.
    {wait,{f,159}}.
  {label,170}.
    {case_end,{x,0}}.


{function, recv_coverage_2, 0, 172}.
  {label,171}.
    {line,[{location,"beam_ssa_SUITE.erl",425}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,recv_coverage_2},0}.
  {label,172}.
    {allocate,0,0}.
  {label,173}.
    {loop_rec,{f,179},{x,0}}.
    {select_val,{x,0},
                {f,178},
                {list,[{integer,1},{f,176},{integer,2},{f,174}]}}.
  {label,174}.
    remove_message.
    {move,{integer,2},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",435}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,175},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {integer,1}]}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",438}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,175}.
    {move,{atom,b},{x,0}}.
    {deallocate,0}.
    return.
  {label,176}.
    remove_message.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",428}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,177},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {integer,1}]}.
    {move,{atom,a},{x,0}}.
    {deallocate,0}.
    return.
  {label,177}.
    {move,{atom,quit},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",432}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,178}.
    {loop_rec_end,{f,173}}.
  {label,179}.
    {wait,{f,173}}.


{function, maps, 1, 181}.
  {label,180}.
    {line,[{location,"beam_ssa_SUITE.erl",447}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps},1}.
  {label,181}.
    {allocate,1,0}.
    {'catch',{y,0},{f,182}}.
    {move,{atom,any},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",448}]}.
    {call,1,{f,191}}. % maps_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,182}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,189},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,189},[{x,1}]}.
    {test,test_arity,{f,189},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,189},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,189},[{x,1}]}.
    {move,{literal,#{abc => 0,jkl => 0}},{x,0}}.
    {line,[{scope,[1,2]},{location,"beam_ssa_SUITE.erl",450}]}.
    {call,1,{f,193}}. % maps_2/1
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
          {f,188},
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
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",451}]}.
    {call,1,{f,193}}. % maps_2/1
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
          {f,187},
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
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",452}]}.
    {call,1,{f,193}}. % maps_2/1
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
          {f,186},
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
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",453}]}.
    {call,1,{f,193}}. % maps_2/1
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
          {f,185},
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
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",454}]}.
    {call,1,{f,193}}. % maps_2/1
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
          {f,184},
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
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",455}]}.
    {call,1,{f,193}}. % maps_2/1
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
          {f,183},
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
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",457}]}.
    {call,0,{f,208}}. % maps_3/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,183}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",455}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",454}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",453}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",452}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",451}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",450}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",448}]}.
    {badmatch,{x,0}}.


{function, maps_1, 1, 191}.
  {label,190}.
    {line,[{location,"beam_ssa_SUITE.erl",461}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_1},1}.
  {label,191}.
    {'%',{var_info,{x,0},[{type,{t_atom,[any]}}]}}.
    {allocate,0,0}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",462}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",463}]}.
    {badmatch,{literal,#{}}}.


{function, maps_2, 1, 193}.
  {label,192}.
    {line,[{location,"beam_ssa_SUITE.erl",466}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_2},1}.
  {label,193}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[abc,def,jkl,mno]},
                                 {t_integer,{0,0}}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",467}]}.
    {call,1,{f,196}}. % maps_2a/1
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
    {line,[{location,"beam_ssa_SUITE.erl",468}]}.
    {call,1,{f,202}}. % maps_2b/1
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
  {label,194}.
    {badmatch,{x,0}}.


{function, maps_2a, 1, 196}.
  {label,195}.
    {line,[{location,"beam_ssa_SUITE.erl",471}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_2a},1}.
  {label,196}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[abc,def,jkl,mno]},
                                 {t_integer,{0,0}}}}]}}.
    {bif,is_map_key,{f,197},[{atom,abc},{x,0}],{x,1}}.
    {test,is_eq_exact,{f,197},[{x,1},{atom,true}]}.
    {test,has_map_fields,{f,197},{x,0},{list,[{atom,def}]}}.
    {move,{literal,{def,ghi,abc}},{x,0}}.
    return.
  {label,197}.
    {bif,is_map_key,{f,198},[{atom,jkl},{x,0}],{x,2}}.
    {test,is_eq_exact,{f,198},[{x,2},{atom,true}]}.
    {test,has_map_fields,{f,198},{x,0},{list,[{atom,def}]}}.
    {move,{literal,{def,ghi,jkl}},{x,0}}.
    return.
  {label,198}.
    {test,is_eq_exact,{f,199},[{x,1},{atom,true}]}.
    {test,has_map_fields,{f,199},{x,0},{list,[{atom,mno}]}}.
    {move,{literal,{mno,nil,abc}},{x,0}}.
    return.
  {label,199}.
    {test,is_eq_exact,{f,200},[{x,2},{atom,true}]}.
    {move,{literal,{jkl,nil,nil}},{x,0}}.
    return.
  {label,200}.
    {move,{atom,error},{x,0}}.
    return.


{function, maps_2b, 1, 202}.
  {label,201}.
    {line,[{location,"beam_ssa_SUITE.erl",501}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_2b},1}.
  {label,202}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[abc,def,jkl,mno]},
                                 {t_integer,{0,0}}}}]}}.
    {bif,is_map_key,{f,203},[{atom,abc},{x,0}],{x,1}}.
    {test,is_eq_exact,{f,203},[{x,1},{atom,true}]}.
    {test,has_map_fields,{f,203},{x,0},{list,[{atom,def}]}}.
    {move,{literal,{def,ghi,abc}},{x,0}}.
    return.
  {label,203}.
    {bif,is_map_key,{f,204},[{atom,jkl},{x,0}],{x,2}}.
    {test,is_eq_exact,{f,204},[{x,2},{atom,true}]}.
    {test,has_map_fields,{f,204},{x,0},{list,[{atom,def}]}}.
    {move,{literal,{def,ghi,jkl}},{x,0}}.
    return.
  {label,204}.
    {test,is_eq_exact,{f,205},[{x,1},{atom,true}]}.
    {test,has_map_fields,{f,205},{x,0},{list,[{atom,mno}]}}.
    {move,{literal,{mno,nil,abc}},{x,0}}.
    return.
  {label,205}.
    {test,is_eq_exact,{f,206},[{x,2},{atom,true}]}.
    {move,{literal,{jkl,nil,nil}},{x,0}}.
    return.
  {label,206}.
    {move,{atom,error},{x,0}}.
    return.


{function, maps_3, 0, 208}.
  {label,207}.
    {line,[{location,"beam_ssa_SUITE.erl",532}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,maps_3},0}.
  {label,208}.
    {move,nil,{x,0}}.
    return.


{function, cover_ssa_dead, 1, 210}.
  {label,209}.
    {line,[{location,"beam_ssa_SUITE.erl",542}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,cover_ssa_dead},1}.
  {label,210}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,nil,{x,2}}.
    {move,{atom,escapable},{x,1}}.
    {move,{atom,true},{x,3}}.
    {move,{atom,str},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",543}]}.
    {call,4,{f,242}}. % format_str/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,240},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {atom,str}]}.
    {move,{atom,iolist},{x,2}}.
    {move,{atom,escapable},{x,1}}.
    {move,{atom,true},{x,3}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",544}]}.
    {call,4,{f,242}}. % format_str/4
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
                                 {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                 nil},
                             {t_number,any},
                             {t_tuple,2,false,#{}},
                             {t_bitstring,256,true}},
                         nil},
                     none,none,none}}]}}.
    {test,is_eq_exact,
        {f,239},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[bad]},
                 {t_cons,
                     {t_union,
                         {t_atom,any},
                         {t_list,
                             {t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                             nil},
                         {t_number,any},
                         {t_tuple,2,false,#{}},
                         {t_bitstring,256,true}},
                     nil},
                 none,none,none}},
         {literal,[iolist,str]}]}.
    {move,nil,{x,2}}.
    {move,{atom,not_escapable},{x,1}}.
    {move,{atom,true},{x,3}}.
    {move,{atom,str},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",545}]}.
    {call,4,{f,242}}. % format_str/4
    {'%',{var_info,{x,0},[{type,{t_atom,[bad]}}]}}.
    {move,{atom,iolist},{x,2}}.
    {move,{atom,not_escapable},{x,1}}.
    {move,{atom,true},{x,3}}.
    {move,{atom,str},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",546}]}.
    {call,4,{f,242}}. % format_str/4
    {'%',{var_info,{x,0},[{type,{t_atom,[bad]}}]}}.
    {move,nil,{x,2}}.
    {move,{atom,escapable},{x,1}}.
    {move,{atom,false},{x,3}}.
    {move,{atom,str},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",547}]}.
    {call,4,{f,242}}. % format_str/4
    {'%',{var_info,{x,0},[{type,{t_atom,[bad]}}]}}.
    {move,nil,{x,2}}.
    {move,{atom,escapable},{x,1}}.
    {move,{atom,bad},{x,3}}.
    {move,{atom,str},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",548}]}.
    {call,4,{f,242}}. % format_str/4
    {'%',{var_info,{x,0},[{type,{t_atom,[bad]}}]}}.
    {move,{integer,77},{x,1}}.
    {move,{integer,9999},{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",551}]}.
    {call,3,{f,246}}. % contains/3
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
    {test,is_eq_exact,{f,238},[{tr,{x,1},{t_number,{77,77}}},{integer,77}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,238},
          [{tr,{x,1},{t_number,{9999,9999}}},{integer,9999}]}.
    {move,{float,77.0},{x,1}}.
    {move,{integer,9999},{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",552}]}.
    {call,3,{f,246}}. % contains/3
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
    {test,is_eq_exact,{f,237},[{tr,{x,1},{t_number,{77,77}}},{float,77.0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,237},
          [{tr,{x,1},{t_number,{9999,9999}}},{integer,9999}]}.
    {move,{integer,77},{x,1}}.
    {move,{float,9999.0},{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",553}]}.
    {call,3,{f,246}}. % contains/3
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
    {test,is_eq_exact,{f,236},[{tr,{x,1},{t_number,{77,77}}},{integer,77}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,236},
          [{tr,{x,1},{t_number,{9999,9999}}},{float,9999.0}]}.
    {move,{float,77.0},{x,1}}.
    {move,{float,9999.0},{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",554}]}.
    {call,3,{f,246}}. % contains/3
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
    {test,is_eq_exact,{f,235},[{tr,{x,1},{t_number,{77,77}}},{float,77.0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,235},
          [{tr,{x,1},{t_number,{9999,9999}}},{float,9999.0}]}.
    {move,{literal,{42,43}},{x,1}}.
    {move,{literal,[option]},{x,2}}.
    {move,{literal,{wx_ref,any_type,any_ref}},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",555}]}.
    {call,3,{f,246}}. % contains/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[any_type]},
                                     2 => {t_atom,[any_ref]},
                                     3 => {t_number,{42,42}},
                                     4 => {t_number,{43,43}},
                                     5 => {t_list,{t_atom,[option]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,234},
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
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",556}]}.
    {call,3,{f,246}}. % contains/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[any_type]},
                                     2 => {t_atom,[any_ref]},
                                     3 => {t_number,{42,42}},
                                     4 => {t_number,{43,43}},
                                     5 => {t_list,{t_atom,[option]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,233},
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
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",557}]}.
    {call,3,{f,246}}. % contains/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[any_type]},
                                     2 => {t_atom,[any_ref]},
                                     3 => {t_number,{42,42}},
                                     4 => {t_number,{43,43}},
                                     5 => {t_list,{t_atom,[option]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,232},
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
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",558}]}.
    {call,3,{f,246}}. % contains/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[any_type]},
                                     2 => {t_atom,[any_ref]},
                                     3 => {t_number,{42,42}},
                                     4 => {t_number,{43,43}},
                                     5 => {t_list,{t_atom,[option]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,231},
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
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",559}]}.
    {call,3,{f,246}}. % contains/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[any_type]},
                                     2 => {t_atom,[any_ref]},
                                     3 => {t_number,{42,42}},
                                     4 => {t_number,{43,43}},
                                     5 => {t_list,{t_atom,[option]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,230},
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
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",561}]}.
    {call,2,{f,249}}. % conv_alub/2
    {'%',{var_info,{x,0},[{type,{t_atom,[nope]}}]}}.
    {move,{atom,'=:='},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",562}]}.
    {call,2,{f,249}}. % conv_alub/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,none},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",563}]}.
    {call,2,{f,249}}. % conv_alub/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,none},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",564}]}.
    {call,2,{f,249}}. % conv_alub/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",566}]}.
    {call,3,{f,253}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,229},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,false}}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",567}]}.
    {call,3,{f,253}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{true,false}}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",568}]}.
    {call,3,{f,253}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,227},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,true}}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",569}]}.
    {call,3,{f,253}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,false}}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",570}]}.
    {call,3,{f,253}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,true}}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",571}]}.
    {call,3,{f,253}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,224},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,false}}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",572}]}.
    {call,3,{f,253}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,223},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{true,true}}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",573}]}.
    {call,3,{f,253}}. % eval_alu/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {test,is_eq_exact,
          {f,222},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},
                          2 => {t_atom,[false,true]}}}},
           {literal,{false,true}}]}.
    {move,{float,0.0},{x,1}}.
    {move,{float,1.0},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",575}]}.
    {call,2,{f,264}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,221},[{tr,{x,0},{t_float,any}},{float,100.0}]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",576}]}.
    {call,2,{f,264}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,220},[{tr,{x,0},{t_float,any}},{float,100.0}]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",577}]}.
    {call,2,{f,264}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,219},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {move,{float,0.0},{x,1}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",578}]}.
    {call,2,{f,264}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,218},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {move,{float,10.0},{x,1}}.
    {move,{float,4.0},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",579}]}.
    {call,2,{f,264}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,217},[{tr,{x,0},{t_float,any}},{float,40.0}]}.
    {move,{integer,10},{x,1}}.
    {move,{integer,6},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",580}]}.
    {call,2,{f,264}}. % percentage/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,216},[{tr,{x,0},{t_float,any}},{float,60.0}]}.
    {'catch',{y,0},{f,211}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",582}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {badmatch,{x,0}}.
  {label,211}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,215},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,215},[{x,1}]}.
    {test,test_arity,{f,215},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,215},[{x,1},{literal,{badmatch,42}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",584}]}.
    {call,2,{f,541}}. % '-cover_ssa_dead/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,214},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",586}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_nil,
          {f,213},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}}]}.
    {move,{atom,false},{x,0}}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,212}.
    {badmatch,{x,0}}.
  {label,213}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",584}]}.
    {badmatch,{x,0}}.
  {label,215}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",582}]}.
    {badmatch,{x,0}}.
  {label,216}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",580}]}.
    {badmatch,{x,0}}.
  {label,217}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",579}]}.
    {badmatch,{x,0}}.
  {label,218}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",578}]}.
    {badmatch,{x,0}}.
  {label,219}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",577}]}.
    {badmatch,{x,0}}.
  {label,220}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",576}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,222}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",573}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,224}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",569}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",568}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",567}]}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",566}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",559}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",556}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",555}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",554}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",553}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",551}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",544}]}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",543}]}.
    {badmatch,{x,0}}.


{function, format_str, 4, 242}.
  {label,241}.
    {line,[{location,"beam_ssa_SUITE.erl",590}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,format_str},4}.
  {label,242}.
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
    {line,[{location,"beam_ssa_SUITE.erl",592}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,{f,244},[{y,0},{atom,true}]}.
    {test,is_eq_exact,
          {f,244},
          [{tr,{y,1},{t_atom,[bad,false,true]}},{atom,true}]}.
    {test,is_nil,
          {f,243},
          [{tr,{y,2},{t_union,{t_atom,[iolist]},nil,none,none,none}}]}.
    {call_last,1,{f,523},3}. % id/1
  {label,243}.
    {trim,3,0}.
    {line,[{location,"beam_ssa_SUITE.erl",596}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,iolist},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,244}.
    {move,{atom,bad},{x,0}}.
    {deallocate,3}.
    return.


{function, contains, 3, 246}.
  {label,245}.
    {line,[{location,"beam_ssa_SUITE.erl",601}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,contains},3}.
  {label,246}.
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
          {f,247},
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
          {f,247},
          [{tr,{x,2},
               {t_union,none,
                        {t_list,{t_atom,[option]},nil},
                        {t_number,{9999,9999}},
                        none,none}}]}.
    {test_heap,5,3}.
    {put_tuple2,{x,0},
                {list,[{literal,{wx_ref,any_type,any_ref}},{x,1},{x,2},nil]}}.
    return.
  {label,247}.
    {test,is_tuple,
          {f,245},
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
          {f,245},
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


{function, conv_alub, 2, 249}.
  {label,248}.
    {line,[{location,"beam_ssa_SUITE.erl",607}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,conv_alub},2}.
  {label,249}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,['=:=',none]}}]}}.
    {test,is_eq_exact,{f,250},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,250}.
    {test,is_eq_exact,{f,251},[{tr,{x,1},{t_atom,['=:=',none]}},{atom,none}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,251}.
    {move,{atom,nope},{x,0}}.
    return.


{function, eval_alu, 3, 253}.
  {label,252}.
    {line,[{location,"beam_ssa_SUITE.erl",617}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,eval_alu},3}.
  {label,253}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,254},[{x,0},{atom,true}]}.
    {test,is_eq_exact,{f,254},[{x,1},{atom,true}]}.
    {bif,'=:=',{f,0},[{tr,{x,2},{t_atom,[false,true]}},{atom,false}],{x,3}}.
    {jump,{f,255}}.
  {label,254}.
    {move,{atom,false},{x,3}}.
  {label,255}.
    {test,is_ne_exact,{f,256},[{x,0},{atom,true}]}.
    {test,is_eq_exact,{f,257},[{x,1},{atom,true}]}.
  {label,256}.
    {move,{atom,false},{x,4}}.
    {jump,{f,258}}.
  {label,257}.
    {move,{x,2},{x,4}}.
  {label,258}.
    {bif,'or',
         {f,0},
         [{tr,{x,3},{t_atom,[false,true]}},{tr,{x,4},{t_atom,[false,true]}}],
         {x,3}}.
    {test,is_eq_exact,{f,259},[{x,0},{atom,true}]}.
    {move,{x,1},{x,4}}.
    {jump,{f,260}}.
  {label,259}.
    {move,{atom,false},{x,4}}.
  {label,260}.
    {test,is_eq_exact,{f,261},[{x,2},{atom,true}]}.
    {move,{atom,false},{x,0}}.
    {jump,{f,262}}.
  {label,261}.
    {test,is_ne_exact,{f,262},[{x,0},{atom,true}]}.
    {move,{x,1},{x,0}}.
  {label,262}.
    {test_heap,3,5}.
    {bif,'or',
         {f,0},
         [{tr,{x,4},{t_atom,[false,true]}},{tr,{x,0},{t_atom,[false,true]}}],
         {x,0}}.
    {put_tuple2,{x,0},{list,[{x,3},{x,0}]}}.
    return.


{function, percentage, 2, 264}.
  {label,263}.
    {line,[{location,"beam_ssa_SUITE.erl",624}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,percentage},2}.
  {label,264}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,6}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{0,10}}}]}}.
    {test,is_eq,{f,266},[{tr,{x,1},{t_number,{0,10}}},{integer,0}]}.
    {test,is_eq,{f,265},[{tr,{x,0},{t_number,{0,6}}},{integer,0}]}.
    {move,{float,0.0},{x,0}}.
    return.
  {label,265}.
    {move,{float,100.0},{x,0}}.
    return.
  {label,266}.
    {line,[{location,"beam_ssa_SUITE.erl",630}]}.
    {fconv,{tr,{x,0},{t_number,{0,6}}},{fr,0}}.
    {fconv,{tr,{x,1},{t_number,{0,10}}},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {fmove,{float,100.0},{fr,1}}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    return.


{function, combine_sw, 1, 268}.
  {label,267}.
    {line,[{location,"beam_ssa_SUITE.erl",633}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,combine_sw},1}.
  {label,268}.
    {allocate,0,0}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",634}]}.
    {call,1,{f,280}}. % do_comb_sw_1/1
    {test,is_eq_exact,{f,278},[{x,0},{literal,[a]}]}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",635}]}.
    {call,1,{f,280}}. % do_comb_sw_1/1
    {test,is_eq_exact,{f,277},[{x,0},{literal,[b,b]}]}.
    {move,{atom,c},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",636}]}.
    {call,1,{f,280}}. % do_comb_sw_1/1
    {test,is_eq_exact,{f,276},[{x,0},{literal,[c]}]}.
    {move,{atom,c},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",637}]}.
    {call,1,{f,280}}. % do_comb_sw_1/1
    {test,is_eq_exact,{f,275},[{x,0},{literal,[c]}]}.
    {move,{atom,z},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",638}]}.
    {call,1,{f,280}}. % do_comb_sw_1/1
    {test,is_nil,{f,274},[{x,0}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",640}]}.
    {call,1,{f,285}}. % do_comb_sw_2/1
    {test,is_eq_exact,{f,273},[{x,0},{literal,[a]}]}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",641}]}.
    {call,1,{f,285}}. % do_comb_sw_2/1
    {test,is_eq_exact,{f,272},[{x,0},{literal,[b2,b1]}]}.
    {move,{atom,c},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",642}]}.
    {call,1,{f,285}}. % do_comb_sw_2/1
    {test,is_eq_exact,{f,271},[{x,0},{literal,[c]}]}.
    {move,{atom,c},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",643}]}.
    {call,1,{f,285}}. % do_comb_sw_2/1
    {test,is_eq_exact,{f,270},[{x,0},{literal,[c]}]}.
    {move,{atom,z},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",644}]}.
    {call,1,{f,285}}. % do_comb_sw_2/1
    {test,is_nil,{f,269},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,269}.
    {badmatch,{x,0}}.
  {label,270}.
    {line,[{location,"beam_ssa_SUITE.erl",643}]}.
    {badmatch,{x,0}}.
  {label,271}.
    {line,[{location,"beam_ssa_SUITE.erl",642}]}.
    {badmatch,{x,0}}.
  {label,272}.
    {line,[{location,"beam_ssa_SUITE.erl",641}]}.
    {badmatch,{x,0}}.
  {label,273}.
    {line,[{location,"beam_ssa_SUITE.erl",640}]}.
    {badmatch,{x,0}}.
  {label,274}.
    {line,[{location,"beam_ssa_SUITE.erl",638}]}.
    {badmatch,{x,0}}.
  {label,275}.
    {line,[{location,"beam_ssa_SUITE.erl",637}]}.
    {badmatch,{x,0}}.
  {label,276}.
    {line,[{location,"beam_ssa_SUITE.erl",636}]}.
    {badmatch,{x,0}}.
  {label,277}.
    {line,[{location,"beam_ssa_SUITE.erl",635}]}.
    {badmatch,{x,0}}.
  {label,278}.
    {line,[{location,"beam_ssa_SUITE.erl",634}]}.
    {badmatch,{x,0}}.


{function, do_comb_sw_1, 1, 280}.
  {label,279}.
    {line,[{location,"beam_ssa_SUITE.erl",648}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_comb_sw_1},1}.
  {label,280}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,z]}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,nil,{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",649}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {select_val,{tr,{y,0},{t_atom,[a,b,c,z]}},
                {f,283},
                {list,[{atom,a},{f,281},{atom,b},{f,281},{atom,c},{f,282}]}}.
  {label,281}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",652}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test,is_eq_exact,{f,283},[{y,0},{atom,b}]}.
  {label,282}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",658}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
  {label,283}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",662}]}.
    {call_ext_last,1,{extfunc,erlang,erase,1},1}.


{function, do_comb_sw_2, 1, 285}.
  {label,284}.
    {line,[{location,"beam_ssa_SUITE.erl",664}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_comb_sw_2},1}.
  {label,285}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,z]}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,nil,{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",665}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {select_val,{tr,{y,0},{t_atom,[a,b,c,z]}},
                {f,288},
                {list,[{atom,a},{f,287},{atom,b},{f,286}]}}.
  {label,286}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{atom,b1},{x,0},{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",670}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {jump,{f,288}}.
  {label,287}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{atom,a},{x,0},{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",668}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
  {label,288}.
    {select_val,{tr,{y,0},{t_atom,[a,b,c,z]}},
                {f,291},
                {list,[{atom,b},{f,290},{atom,c},{f,289}]}}.
  {label,289}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{atom,c},{x,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",678}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {jump,{f,291}}.
  {label,290}.
    {test_heap,2,0}.
    {bif,get,{f,0},[{atom,beam_ssa_SUITE}],{x,0}}.
    {put_list,{atom,b2},{x,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",676}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
  {label,291}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",682}]}.
    {call_ext_last,1,{extfunc,erlang,erase,1},1}.


{function, share_opt, 1, 293}.
  {label,292}.
    {line,[{location,"beam_ssa_SUITE.erl",684}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,share_opt},1}.
  {label,293}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",685}]}.
    {call,1,{f,295}}. % do_share_opt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",686}]}.
    {call,0,{f,298}}. % do_share_opt_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {call_last,0,{f,306},0}. % do_share_opt_3/0


{function, do_share_opt_1, 1, 295}.
  {label,294}.
    {line,[{location,"beam_ssa_SUITE.erl",690}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_share_opt_1},1}.
  {label,295}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {allocate,0,0}.
  {label,296}.
    {wait_timeout,{f,296},{integer,1}}.
    timeout.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, do_share_opt_2, 0, 298}.
  {label,297}.
    {line,[{location,"beam_ssa_SUITE.erl",699}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_share_opt_2},0}.
  {label,298}.
    {allocate,0,0}.
    {move,{atom,ok},{x,1}}.
    {move,{literal,{[pointtopoint],[{dstaddr,any}]}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",700}]}.
    {call,2,{f,300}}. % sopt_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,ok},{x,1}}.
    {move,{literal,{[broadcast],[{broadaddr,any}]}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",701}]}.
    {call,2,{f,300}}. % sopt_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,ok},{x,1}}.
    {move,{literal,{[],[]}},{x,0}}.
    {call_last,2,{f,300},0}. % sopt_2/2


{function, sopt_2, 2, 300}.
  {label,299}.
    {line,[{location,"beam_ssa_SUITE.erl",705}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,sopt_2},2}.
  {label,300}.
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
    {line,[{location,"beam_ssa_SUITE.erl",706}]}.
    {call_ext,2,{extfunc,lists,member,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,2},{x,1}}.
    {move,{atom,pointtopoint},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",707}]}.
    {call_ext,2,{extfunc,lists,member,2}}.
    {test,is_nonempty_list,{f,303},[{y,1}]}.
    {get_list,{y,1},{x,1},{x,2}}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,301},[{x,1},{atom,dstaddr}]}.
    {test,is_eq_exact,{f,304},[{x,0},{atom,true}]}.
    {jump,{f,302}}.
  {label,301}.
    {test,is_eq_exact,{f,304},[{y,0},{atom,true}]}.
  {label,302}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{y,2},{x,2}]}}.
    {move,{atom,ok},{x,1}}.
    {call_last,2,{f,300},3}. % sopt_2/2
  {label,303}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,304}.
    {line,[{location,"beam_ssa_SUITE.erl",708}]}.
    {case_end,{y,1}}.


{function, do_share_opt_3, 0, 306}.
  {label,305}.
    {line,[{location,"beam_ssa_SUITE.erl",719}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_share_opt_3},0}.
  {label,306}.
    {allocate,0,0}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",720}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {call,1,{f,310}}. % sopt_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,308},[{x,0},{atom,true}]}.
    {move,{atom,nok},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",721}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {call,1,{f,310}}. % sopt_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,307},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,307}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,308}.
    {line,[{location,"beam_ssa_SUITE.erl",720}]}.
    {badmatch,{atom,false}}.


{function, sopt_3, 1, 310}.
  {label,309}.
    {line,[{location,"beam_ssa_SUITE.erl",724}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,sopt_3},1}.
  {label,310}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,311},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {atom,ok}]}.
    {allocate,0,0}.
    {move,{integer,726},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",726}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {move,{atom,true},{x,0}}.
    {deallocate,0}.
    return.
  {label,311}.
    {allocate,0,0}.
    {move,{integer,726},{x,0}}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {move,{atom,false},{x,0}}.
    {deallocate,0}.
    return.


{function, beam_ssa_dead_crash, 1, 313}.
  {label,312}.
    {line,[{location,"beam_ssa_SUITE.erl",728}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,beam_ssa_dead_crash},1}.
  {label,313}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",729}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,317}}. % do_beam_ssa_dead_crash/2
    {'%',{var_info,{x,0},[{type,{t_atom,[neither,not_A_B,not_A_not_B]}}]}}.
    {test,is_eq_exact,
          {f,315},
          [{tr,{x,0},{t_atom,[neither,not_A_B,not_A_not_B]}},{atom,not_A_B}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",730}]}.
    {call,2,{f,317}}. % do_beam_ssa_dead_crash/2
    {'%',{var_info,{x,0},[{type,{t_atom,[not_A_B,not_A_not_B]}}]}}.
    {test,is_eq_exact,
          {f,314},
          [{tr,{x,0},{t_atom,[not_A_B,not_A_not_B]}},{atom,not_A_not_B}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",731}]}.
    {call,2,{f,317}}. % do_beam_ssa_dead_crash/2
    {'%',{var_info,{x,0},[{type,{t_atom,[neither]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",732}]}.
    {call,2,{f,317}}. % do_beam_ssa_dead_crash/2
    {'%',{var_info,{x,0},[{type,{t_atom,[neither]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,314}.
    {line,[{location,"beam_ssa_SUITE.erl",730}]}.
    {badmatch,{atom,not_A_B}}.
  {label,315}.
    {line,[{location,"beam_ssa_SUITE.erl",729}]}.
    {badmatch,{x,0}}.


{function, do_beam_ssa_dead_crash, 2, 317}.
  {label,316}.
    {line,[{location,"beam_ssa_SUITE.erl",735}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,do_beam_ssa_dead_crash},2}.
  {label,317}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                {t_number,any},
                {t_tuple,2,false,#{}},
                {t_bitstring,256,true}}},
        {f,322},
        {list,[{atom,false},{f,319},{atom,true},{f,318}]}}.
  {label,318}.
    {move,{atom,neither},{x,0}}.
    return.
  {label,319}.
    {select_val,
        {tr,{x,1},
            {t_union,
                {t_atom,any},
                {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                {t_number,any},
                {t_tuple,2,false,#{}},
                {t_bitstring,256,true}}},
        {f,321},
        {list,[{atom,false},{f,320},{atom,nil},{f,320}]}}.
  {label,320}.
    {line,[{location,"beam_ssa_SUITE.erl",772}]}.
    {bif,'not',{f,0},[{tr,{x,1},{t_atom,[false,nil]}}],{x,0}}.
    {move,{atom,not_A_not_B},{x,0}}.
    return.
  {label,321}.
    {move,{atom,not_A_B},{x,0}}.
    return.
  {label,322}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",753}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, stack_init, 1, 324}.
  {label,323}.
    {line,[{location,"beam_ssa_SUITE.erl",782}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,stack_init},1}.
  {label,324}.
    {allocate,0,0}.
    {move,{literal,#{a => [1,2,3]}},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",783}]}.
    {call,2,{f,328}}. % stack_init/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,326},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {integer,6}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,missing},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",784}]}.
    {call,2,{f,328}}. % stack_init/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,325},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {integer,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,325}.
    {badmatch,{x,0}}.
  {label,326}.
    {line,[{location,"beam_ssa_SUITE.erl",783}]}.
    {badmatch,{x,0}}.


{function, stack_init, 2, 328}.
  {label,327}.
    {line,[{location,"beam_ssa_SUITE.erl",787}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,stack_init},2}.
  {label,328}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,missing]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_map,{t_atom,[a]},
                                 {t_cons,{t_integer,{1,3}},nil}}}]}}.
    {allocate,0,2}.
    {get_map_elements,{f,329},
                      {tr,{x,1},
                          {t_map,{t_atom,[a]},{t_cons,{t_integer,{1,3}},nil}}},
                      {list,[{tr,{x,0},{t_atom,[a,missing]}},{x,0}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,539},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_number,any}}]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",795}]}.
    {call_ext,3,{extfunc,lists,foldl,3}}.
    {jump,{f,330}}.
  {label,329}.
    {move,{integer,0},{x,0}}.
  {label,330}.
    {call_last,1,{f,523},0}. % id/1


{function, mapfoldl, 0, 332}.
  {label,331}.
    {line,[{location,"beam_ssa_SUITE.erl",809}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,mapfoldl},0}.
  {label,332}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",810}]}.
    {call,0,{f,340}}. % mapfoldl_limits/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1000,1000}},
                                     2 => {t_integer,{100000,100000}}}}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,535},0,0,{x,0},{list,[{integer,100000}]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_tuple,2,true,#{1 => {t_cons,any,nil}}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",811}]}.
    {call_ext,1,{extfunc,timer,tc,1}}.
    {test,is_tuple,{f,333},[{x,0}]}.
    {test,test_arity,{f,333},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",817}]}.
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
    {line,[{location,"beam_ssa_SUITE.erl",818}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,8,0}.
    {put_tuple2,{x,0},{list,[{atom,seconds},{y,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,timetrap},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,1}.
    return.
  {label,333}.
    {line,[{location,"beam_ssa_SUITE.erl",811}]}.
    {badmatch,{x,0}}.


{function, mapfoldl, 1, 335}.
  {label,334}.
    {line,[{location,"beam_ssa_SUITE.erl",821}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,mapfoldl},1}.
  {label,335}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",822}]}.
    {call,0,{f,342}}. % test_mapfoldl_implementations/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,533},0,0,{y,2},{list,[]}}.
    {'%',{var_info,{y,2},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",827}]}.
    {call,0,{f,340}}. % mapfoldl_limits/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1000,1000}},
                                     2 => {t_integer,{100000,100000}}}}}]}}.
    {move,{integer,100000},{x,1}}.
    {move,{integer,1000},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",828}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",829}]}.
    {call,3,{f,347}}. % mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {test,is_eq_exact,
          {f,338},
          [{tr,{x,1},{t_list,any,nil}},
           {tr,{y,1},{t_list,{t_integer,{100000,100000}},nil}}]}.
    {move,nil,{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,1,2}.
    {line,[{location,"beam_ssa_SUITE.erl",830}]}.
    {call,3,{f,353}}. % fast_mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,337},
          [{tr,{x,1},{t_list,any,nil}},
           {tr,{y,0},{t_list,{t_integer,{100000,100000}},nil}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,337},[{x,1},{y,1}]}.
    {line,[{location,"beam_ssa_SUITE.erl",831}]}.
    {bif,tuple_size,{f,0},[{y,1}],{x,0}}.
    {test,is_eq_exact,
          {f,336},
          [{tr,{x,0},{t_integer,{0,16777215}}},{integer,100000}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,336}.
    {badmatch,{x,0}}.
  {label,337}.
    {line,[{location,"beam_ssa_SUITE.erl",830}]}.
    {badmatch,{x,0}}.
  {label,338}.
    {line,[{location,"beam_ssa_SUITE.erl",829}]}.
    {badmatch,{x,0}}.


{function, mapfoldl_limits, 0, 340}.
  {label,339}.
    {line,[{location,"beam_ssa_SUITE.erl",834}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,mapfoldl_limits},0}.
  {label,340}.
    {move,{literal,{1000,100000}},{x,0}}.
    return.


{function, test_mapfoldl_implementations, 0, 342}.
  {label,341}.
    {line,[{location,"beam_ssa_SUITE.erl",837}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,test_mapfoldl_implementations},0}.
  {label,342}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",838}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,531},0,0,{y,1},{list,[]}}.
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
    {line,[{location,"beam_ssa_SUITE.erl",840}]}.
    {call,3,{f,347}}. % mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,345},[{x,1},{integer,55}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,345},[{tr,{x,1},{t_list,any,nil}},{y,0}]}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",841}]}.
    {call,3,{f,353}}. % fast_mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,344},[{x,1},{integer,55}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,344},
          [{tr,{x,1},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"beam_ssa_SUITE.erl",842}]}.
    {call,3,{f,350}}. % slow_mapfoldl/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_number,any},nil},
                                     2 => {t_number,any}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,343},[{tr,{x,1},{t_number,any}},{integer,55}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,343},
          [{tr,{x,1},{t_list,{t_number,any},nil}},
           {tr,{y,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,343}.
    {badmatch,{x,0}}.
  {label,344}.
    {line,[{location,"beam_ssa_SUITE.erl",841}]}.
    {badmatch,{x,0}}.
  {label,345}.
    {line,[{location,"beam_ssa_SUITE.erl",840}]}.
    {badmatch,{x,0}}.


{function, mapfoldl, 3, 347}.
  {label,346}.
    {line,[{location,"beam_ssa_SUITE.erl",845}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,mapfoldl},3}.
  {label,347}.
    {'%',{var_info,{x,0},[{type,{t_fun,2,any,{t_tuple,2,true,#{}}}}]}}.
    {test,is_nonempty_list,{f,348},[{x,2}]}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,2}}.
    {get_list,{x,2},{x,0},{y,1}}.
    {move,{y,2},{x,2}}.
    {line,[{location,"beam_ssa_SUITE.erl",846}]}.
    {call_fun2,{atom,safe},2,{tr,{x,2},{t_fun,2,any,{t_tuple,2,true,#{}}}}}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{x,0},0,{y,0}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",847}]}.
    {call,3,{f,347}}. % mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,348}.
    {test,is_nil,{f,346},[{x,2}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[nil,{x,1}]}}.
    return.


{function, slow_mapfoldl, 3, 350}.
  {label,349}.
    {line,[{location,"beam_ssa_SUITE.erl",856}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,slow_mapfoldl},3}.
  {label,350}.
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
    {test,is_nonempty_list,{f,351},[{x,2}]}.
    {allocate,2,3}.
    {move,{x,0},{y,1}}.
    {get_list,{x,2},{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",857}]}.
    {call,2,{f,531}}. % '-test_mapfoldl_implementations/0-fun-0-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_number,any},
                                     2 => {t_number,any}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,2}}.
    {trim,1,1}.
    {line,[{location,"beam_ssa_SUITE.erl",860}]}.
    {call,3,{f,350}}. % slow_mapfoldl/3
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
  {label,351}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[nil,{x,1}]}}.
    return.


{function, fast_mapfoldl, 3, 353}.
  {label,352}.
    {line,[{location,"beam_ssa_SUITE.erl",868}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,fast_mapfoldl},3}.
  {label,353}.
    {'%',{var_info,{x,0},[{type,{t_fun,2,any,{t_tuple,2,true,#{}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,354},[{x,2}]}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,2}}.
    {get_list,{x,2},{x,0},{y,1}}.
    {move,{y,2},{x,2}}.
    {line,[{location,"beam_ssa_SUITE.erl",869}]}.
    {call_fun2,{atom,safe},2,{tr,{x,2},{t_fun,2,any,{t_tuple,2,true,#{}}}}}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{x,0},0,{y,0}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",871}]}.
    {call,3,{f,353}}. % fast_mapfoldl/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_list,any,nil}}}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,354}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[nil,{x,1}]}}.
    return.


{function, grab_bag, 1, 356}.
  {label,355}.
    {line,[{location,"beam_ssa_SUITE.erl",875}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag},1}.
  {label,356}.
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
    {'catch',{y,12},{f,357}}.
    {line,[{location,"beam_ssa_SUITE.erl",876}]}.
    {call,0,{f,387}}. % grab_bag_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,357}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,385},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,11},{f,358}}.
    {line,[{scope,[25,26]},{location,"beam_ssa_SUITE.erl",877}]}.
    {call,0,{f,389}}. % grab_bag_2/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,358}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,384},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,10},{f,359}}.
    {line,[{scope,[23,24]},{location,"beam_ssa_SUITE.erl",878}]}.
    {call,0,{f,391}}. % grab_bag_3/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,359}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,383},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,9},{f,360}}.
    {line,[{scope,[21,22]},{location,"beam_ssa_SUITE.erl",879}]}.
    {call,0,{f,393}}. % grab_bag_4/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,360}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,382},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,8},{f,361}}.
    {move,{integer,17},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[19,20]},{location,"beam_ssa_SUITE.erl",881}]}.
    {call,2,{f,397}}. % grab_bag_5/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,361}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,381},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,381},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,381},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,381},[{x,1},4,{atom,beam_ssa_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,381},[{x,2},{atom,grab_bag_5}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,381},[{x,1},{literal,[a,17]}]}.
    {move,{atom,face},{x,0}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",882}]}.
    {call,1,{f,399}}. % grab_bag_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[way]}}]}}.
    {move,{literal,"ABC"},{x,0}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",883}]}.
    {call,1,{f,399}}. % grab_bag_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",884}]}.
    {call,1,{f,399}}. % grab_bag_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",885}]}.
    {call,0,{f,402}}. % grab_bag_7/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",886}]}.
    {call,0,{f,404}}. % grab_bag_8/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",887}]}.
    {call,0,{f,406}}. % grab_bag_9/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,whatever},{x,1}}.
    {move,{atom,ignore},{x,0}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",888}]}.
    {call,2,{f,408}}. % grab_bag_10/2
    {'%',{var_info,{x,0},[{type,{t_atom,[whatever]}}]}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",889}]}.
    {call,0,{f,410}}. % grab_bag_11/0
    {'%',{var_info,{x,0},[{type,{t_atom,[other]}}]}}.
    {'catch',{y,7},{f,362}}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",890}]}.
    {call,0,{f,412}}. % grab_bag_12/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,362}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,380},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,6},{f,363}}.
    {line,[{scope,[15,16]},{location,"beam_ssa_SUITE.erl",891}]}.
    {call,0,{f,414}}. % grab_bag_13/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,363}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,379},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,379},[{x,1}]}.
    {test,test_arity,{f,379},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,379},[{x,1},{literal,{badmatch,[]}}]}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",892}]}.
    {call,0,{f,416}}. % grab_bag_14/0
    {'%',{var_info,{x,0},[{type,{t_atom,[timeout]}}]}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",893}]}.
    {call,1,{f,420}}. % grab_bag_15/1
    {'%',{var_info,{x,0},[{type,{t_atom,[beam_ssa_SUITE]}}]}}.
    {move,{atom,timeout_value},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",895}]}.
    {call,1,{f,422}}. % grab_bag_16a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,not_reached]}}]}}.
    {test,is_eq_exact,
          {f,378},
          [{tr,{x,0},{t_atom,[error,not_reached]}},{atom,error}]}.
    {'catch',{y,5},{f,364}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",896}]}.
    {call,1,{f,422}}. % grab_bag_16a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,not_reached]}}]}}.
  {label,364}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,377},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,377},[{x,1},2,{atom,timeout_value}]}.
    {'catch',{y,4},{f,365}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\v\f"},{location,"beam_ssa_SUITE.erl",897}]}.
    {call,1,{f,427}}. % grab_bag_16b/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,365}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,376},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,376},[{x,1},2,{atom,timeout_value}]}.
    {move,{atom,error},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_ssa_SUITE.erl",898}]}.
    {call,1,{f,427}}. % grab_bag_16b/1
    {test,is_eq_exact,{f,375},[{x,0},{atom,timeout_value}]}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",900}]}.
    {call,0,{f,432}}. % grab_bag_17/0
    {'%',{var_info,{x,0},[{type,{t_atom,[fact]}}]}}.
    {'catch',{y,3},{f,366}}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",902}]}.
    {call,0,{f,434}}. % grab_bag_18/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,366}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,374},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,374},[{x,1}]}.
    {test,test_arity,{f,374},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,374},[{x,2},{literal,{try_clause,[]}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,374},[{x,1}]}.
    {'catch',{y,2},{f,367}}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",904}]}.
    {call,0,{f,436}}. % grab_bag_19/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,367}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,373},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,373},[{x,1}]}.
    {test,test_arity,{f,373},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,373},[{x,2},{literal,{badmatch,[whatever]}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,373},[{x,1}]}.
    {'catch',{y,1},{f,368}}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",906}]}.
    {call,0,{f,438}}. % grab_bag_20/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_cons,{t_integer,{105,116}},nil},
                                     2 => {t_atom,[ok]}}}}]}}.
  {label,368}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,372},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,372},[{x,1},2,{atom,if_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,372},[{x,1}]}.
    {move,{integer,64},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_ssa_SUITE.erl",908}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {call,1,{f,443}}. % grab_bag_21/1
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,371},[{tr,{x,0},{t_integer,any}},{integer,6}]}.
    {'catch',{y,0},{f,369}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",909}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {call,1,{f,443}}. % grab_bag_21/1
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
  {label,369}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,370},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,370},[{x,1},2,{atom,badarith}]}.
    {line,[{scope,[1,2]},{location,"beam_ssa_SUITE.erl",911}]}.
    {call,0,{f,447}}. % grab_bag_22/0
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,13}.
    return.
  {label,370}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",909}]}.
    {badmatch,{x,0}}.
  {label,371}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",908}]}.
    {badmatch,{x,0}}.
  {label,372}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",906}]}.
    {badmatch,{x,0}}.
  {label,373}.
    {line,[{scope,[4]},{location,"beam_ssa_SUITE.erl",904}]}.
    {badmatch,{x,0}}.
  {label,374}.
    {line,[{scope,[6]},{location,"beam_ssa_SUITE.erl",902}]}.
    {badmatch,{x,0}}.
  {label,375}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",898}]}.
    {badmatch,{x,0}}.
  {label,376}.
    {line,[{scope,"\b"},{location,"beam_ssa_SUITE.erl",897}]}.
    {badmatch,{x,0}}.
  {label,377}.
    {line,[{scope,"\n"},{location,"beam_ssa_SUITE.erl",896}]}.
    {badmatch,{x,0}}.
  {label,378}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",895}]}.
    {badmatch,{atom,not_reached}}.
  {label,379}.
    {line,[{scope,"\f"},{location,"beam_ssa_SUITE.erl",891}]}.
    {badmatch,{x,0}}.
  {label,380}.
    {line,[{scope,[14]},{location,"beam_ssa_SUITE.erl",890}]}.
    {badmatch,{x,0}}.
  {label,381}.
    {line,[{scope,[16]},{location,"beam_ssa_SUITE.erl",880}]}.
    {badmatch,{x,0}}.
  {label,382}.
    {line,[{scope,[18]},{location,"beam_ssa_SUITE.erl",879}]}.
    {badmatch,{x,0}}.
  {label,383}.
    {line,[{scope,[20]},{location,"beam_ssa_SUITE.erl",878}]}.
    {badmatch,{x,0}}.
  {label,384}.
    {line,[{scope,[22]},{location,"beam_ssa_SUITE.erl",877}]}.
    {badmatch,{x,0}}.
  {label,385}.
    {line,[{scope,[24]},{location,"beam_ssa_SUITE.erl",876}]}.
    {badmatch,{x,0}}.


{function, grab_bag_1, 0, 387}.
  {label,386}.
    {line,[{location,"beam_ssa_SUITE.erl",915}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_1},0}.
  {label,387}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{atom,true}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",918}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, grab_bag_2, 0, 389}.
  {label,388}.
    {line,[{location,"beam_ssa_SUITE.erl",920}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_2},0}.
  {label,389}.
    {bif,'or',{f,0},[nil,{integer,27}],{x,0}}.
    return.


{function, grab_bag_3, 0, 391}.
  {label,390}.
    {line,[{location,"beam_ssa_SUITE.erl",936}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_3},0}.
  {label,391}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,529},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",937}]}.
    {case_end,{x,0}}.


{function, grab_bag_4, 0, 393}.
  {label,392}.
    {line,[{location,"beam_ssa_SUITE.erl",953}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_4},0}.
  {label,393}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,395}}.
    {'try',{y,0},{f,394}}.
    {line,[{location,"beam_ssa_SUITE.erl",959}]}.
    {try_case_end,{atom,fy}}.
  {label,394}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,395}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, grab_bag_5, 2, 397}.
  {label,396}.
    {line,[{location,"beam_ssa_SUITE.erl",974}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_5},2}.
  {label,397}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{17,17}}}]}}.
    {jump,{f,396}}.


{function, grab_bag_6, 1, 399}.
  {label,398}.
    {line,[{location,"beam_ssa_SUITE.erl",977}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_6},1}.
  {label,399}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any,face]},
                                   {t_cons,{t_integer,{65,67}},nil},
                                   none,none,none}}]}}.
    {test,is_ne_exact,
          {f,400},
          [{tr,{x,0},
               {t_union,{t_atom,[any,face]},
                        {t_cons,{t_integer,{65,67}},nil},
                        none,none,none}},
           {literal,"ABC"}]}.
    {test,is_eq_exact,
          {f,400},
          [{tr,{x,0},
               {t_union,{t_atom,[any,face]},
                        {t_cons,{t_integer,{65,67}},nil},
                        none,none,none}},
           {atom,face}]}.
    {move,{atom,way},{x,0}}.
    return.
  {label,400}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, grab_bag_7, 0, 402}.
  {label,401}.
    {line,[{location,"beam_ssa_SUITE.erl",984}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_7},0}.
  {label,402}.
    {move,{atom,ok},{x,0}}.
    return.


{function, grab_bag_8, 0, 404}.
  {label,403}.
    {line,[{location,"beam_ssa_SUITE.erl",1003}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_8},0}.
  {label,404}.
    {move,nil,{x,0}}.
    return.


{function, grab_bag_9, 0, 406}.
  {label,405}.
    {line,[{location,"beam_ssa_SUITE.erl",1021}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_9},0}.
  {label,406}.
    {move,{atom,ok},{x,0}}.
    return.


{function, grab_bag_10, 2, 408}.
  {label,407}.
    {line,[{location,"beam_ssa_SUITE.erl",1026}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_10},2}.
  {label,408}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ignore]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[whatever]}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, grab_bag_11, 0, 410}.
  {label,409}.
    {line,[{location,"beam_ssa_SUITE.erl",1031}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_11},0}.
  {label,410}.
    {move,{atom,other},{x,0}}.
    return.


{function, grab_bag_12, 0, 412}.
  {label,411}.
    {line,[{location,"beam_ssa_SUITE.erl",1041}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_12},0}.
  {label,412}.
    {line,[{location,"beam_ssa_SUITE.erl",1044}]}.
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


{function, grab_bag_13, 0, 414}.
  {label,413}.
    {line,[{location,"beam_ssa_SUITE.erl",1047}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_13},0}.
  {label,414}.
    {line,[{location,"beam_ssa_SUITE.erl",1050}]}.
    {badmatch,nil}.


{function, grab_bag_14, 0, 416}.
  {label,415}.
    {line,[{location,"beam_ssa_SUITE.erl",1062}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_14},0}.
  {label,416}.
    {allocate,0,0}.
  {label,417}.
    {loop_rec,{f,418},{x,0}}.
    {loop_rec_end,{f,417}}.
  {label,418}.
    timeout.
    {move,{atom,timeout},{x,0}}.
    {deallocate,0}.
    return.


{function, grab_bag_15, 1, 420}.
  {label,419}.
    {line,[{location,"beam_ssa_SUITE.erl",1073}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_15},1}.
  {label,420}.
    {'%',{var_info,{x,0},[{type,{t_atom,[beam_ssa_SUITE]}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1083}]}.
    {call_ext,0,{extfunc,beam_ssa_SUITE,all,0}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, grab_bag_16a, 1, 422}.
  {label,421}.
    {line,[{location,"beam_ssa_SUITE.erl",1088}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_16a},1}.
  {label,422}.
    {'%',{var_info,{x,0},[{type,{t_atom,[timeout_value,whatever]}}]}}.
    {allocate,2,1}.
    {move,{x,0},{y,0}}.
    {'try',{y,1},{f,424}}.
  {label,423}.
    {wait_timeout,{f,423},{atom,bad}}.
    timeout.
    {try_end,{y,1}}.
    {move,{atom,not_reached},{x,0}}.
    {deallocate,2}.
    return.
  {label,424}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,425},
          [{x,0},{tr,{y,0},{t_atom,[timeout_value,whatever]}}]}.
    {move,{atom,error},{x,0}}.
    {deallocate,2}.
    return.
  {label,425}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, grab_bag_16b, 1, 427}.
  {label,426}.
    {line,[{location,"beam_ssa_SUITE.erl",1100}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_16b},1}.
  {label,427}.
    {'%',{var_info,{x,0},[{type,{t_atom,[error,whatever]}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,0},{y,0}}.
    {call_ext,0,{extfunc,erlang,get,0}}.
    {'try',{y,1},{f,429}}.
  {label,428}.
    {wait_timeout,{f,428},{x,0}}.
    timeout.
    {try_end,{y,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,429}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,430},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},
           {tr,{y,0},{t_atom,[error,whatever]}}]}.
    {move,{x,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,430}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, grab_bag_17, 0, 432}.
  {label,431}.
    {line,[{location,"beam_ssa_SUITE.erl",1111}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_17},0}.
  {label,432}.
    {move,{atom,fact},{x,0}}.
    return.


{function, grab_bag_18, 0, 434}.
  {label,433}.
    {line,[{location,"beam_ssa_SUITE.erl",1125}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_18},0}.
  {label,434}.
    {line,[{location,"beam_ssa_SUITE.erl",1130}]}.
    {try_case_end,nil}.


{function, grab_bag_19, 0, 436}.
  {label,435}.
    {line,[{location,"beam_ssa_SUITE.erl",1139}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_19},0}.
  {label,436}.
    {line,[{location,"beam_ssa_SUITE.erl",1140}]}.
    {badmatch,{literal,[whatever]}}.


{function, grab_bag_20, 0, 438}.
  {label,437}.
    {line,[{location,"beam_ssa_SUITE.erl",1152}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_20},0}.
  {label,438}.
    {allocate,0,0}.
  {label,439}.
    {loop_rec,{f,441},{x,0}}.
    {test,is_eq_exact,{f,440},[{x,0},{atom,list}]}.
    remove_message.
    {move,{literal,{"list",ok}},{x,0}}.
    {deallocate,0}.
    return.
  {label,440}.
    {loop_rec_end,{f,439}}.
  {label,441}.
    timeout.
    {line,[{location,"beam_ssa_SUITE.erl",1164}]}.
    if_end.


{function, grab_bag_21, 1, 443}.
  {label,442}.
    {line,[{location,"beam_ssa_SUITE.erl",1182}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_21},1}.
  {label,443}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1183}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",1184}]}.
    {gc_bif,'div',
            {f,0},
            0,
            [{tr,{y,0},
                 {t_union,{t_atom,any},
                          {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                  nil},
                          {t_number,any},
                          {t_tuple,2,false,#{}},
                          {t_bitstring,256,true}}},
             {integer,10}],
            {x,1}}.
    {bif,node,{f,0},[],{x,2}}.
    {move,{literal,[-1]},{x,3}}.
    {move,{atom,ok},{x,0}}.
    {call_last,4,{f,445},1}. % grab_bag_21/4


{function, grab_bag_21, 4, 445}.
  {label,444}.
    {line,[{location,"beam_ssa_SUITE.erl",1186}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_21},4}.
  {label,445}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_cons,{t_integer,{-1,-1}},nil}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, grab_bag_22, 0, 447}.
  {label,446}.
    {line,[{location,"beam_ssa_SUITE.erl",1195}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,grab_bag_22},0}.
  {label,447}.
    {move,{atom,false},{x,0}}.
    return.


{function, redundant_br, 1, 449}.
  {label,448}.
    {line,[{location,"beam_ssa_SUITE.erl",1201}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,redundant_br},1}.
  {label,449}.
    {allocate,0,0}.
    {move,{literal,{x,y,z}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1202}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {call,1,{f,453}}. % redundant_br_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,451},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {literal,{false,{x,y,z}}}]}.
    {move,{literal,[[[a,b,c]]]},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1203}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {call,1,{f,453}}. % redundant_br_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,450},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},
                                nil},
                        {t_number,any},
                        {t_tuple,2,false,#{}},
                        {t_bitstring,256,true}}},
           {literal,{true,[[a,b,c]]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,450}.
    {badmatch,{x,0}}.
  {label,451}.
    {line,[{location,"beam_ssa_SUITE.erl",1202}]}.
    {badmatch,{x,0}}.


{function, redundant_br_1, 1, 453}.
  {label,452}.
    {line,[{location,"beam_ssa_SUITE.erl",1206}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,redundant_br_1},1}.
  {label,453}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {bif,hd,
         {f,454},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                       {t_number,any},
                       {t_tuple,2,false,#{}},
                       {t_bitstring,256,true}}}],
         {x,1}}.
    {move,{atom,true},{x,0}}.
    {jump,{f,455}}.
  {label,454}.
    {move,{x,0},{x,1}}.
    {move,{atom,false},{x,0}}.
  {label,455}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {call_only,1,{f,523}}. % id/1


{function, coverage, 1, 457}.
  {label,456}.
    {line,[{location,"beam_ssa_SUITE.erl",1216}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage},1}.
  {label,457}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,458}}.
    {line,[{location,"beam_ssa_SUITE.erl",1228}]}.
    {call,0,{f,463}}. % coverage_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,458}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,461},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,461},[{x,1}]}.
    {test,test_arity,{f,461},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,461},[{x,1},{literal,{badmatch,84}}]}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1230}]}.
    {call,0,{f,465}}. % coverage_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1231}]}.
    {call,0,{f,467}}. % coverage_3/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1232}]}.
    {call,0,{f,469}}. % coverage_4/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[coverage]},
                                     2 => {t_atom,[whatever]}}}}]}}.
    {'catch',{y,0},{f,459}}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1233}]}.
    {call,0,{f,471}}. % coverage_5/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,459}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,460},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,460},[{x,1}]}.
    {test,test_arity,{f,460},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,460},[{x,1},{literal,{badrecord,ok}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,460}.
    {line,[{scope,[0]},{location,"beam_ssa_SUITE.erl",1233}]}.
    {badmatch,{x,0}}.
  {label,461}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1228}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 0, 463}.
  {label,462}.
    {line,[{location,"beam_ssa_SUITE.erl",1237}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage_1},0}.
  {label,463}.
    {line,[{location,"beam_ssa_SUITE.erl",1238}]}.
    {badmatch,{integer,84}}.


{function, coverage_2, 0, 465}.
  {label,464}.
    {line,[{location,"beam_ssa_SUITE.erl",1240}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage_2},0}.
  {label,465}.
    {move,{atom,error},{x,0}}.
    return.


{function, coverage_3, 0, 467}.
  {label,466}.
    {line,[{location,"beam_ssa_SUITE.erl",1243}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage_3},0}.
  {label,467}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_4, 0, 469}.
  {label,468}.
    {line,[{location,"beam_ssa_SUITE.erl",1248}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage_4},0}.
  {label,469}.
    {move,{literal,{coverage,whatever}},{x,0}}.
    return.


{function, coverage_5, 0, 471}.
  {label,470}.
    {line,[{location,"beam_ssa_SUITE.erl",1257}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,coverage_5},0}.
  {label,471}.
    {line,[{location,"beam_ssa_SUITE.erl",1264}]}.
    {badrecord,{atom,ok}}.


{function, normalize, 1, 473}.
  {label,472}.
    {line,[{location,"beam_ssa_SUITE.erl",1268}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,normalize},1}.
  {label,473}.
    {allocate,0,0}.
    {move,{literal,{bif,'band'}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1269}]}.
    {call,1,{f,475}}. % normalize_commutative/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{bif,'+'}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1270}]}.
    {call,1,{f,475}}. % normalize_commutative/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{bif,'div'}},{x,0}}.
    {call_last,1,{f,477},0}. % normalize_noncommutative/1


{function, normalize_commutative, 1, 475}.
  {label,474}.
    {line,[{location,"beam_ssa_SUITE.erl",1279}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,normalize_commutative},1}.
  {label,475}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[bif]},
                                     2 => {t_atom,['+','band']}}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,[{b_var,a},{b_var,b}]},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1284}]}.
    {call,2,{f,480}}. % normalize_same/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[{b_var,a},{b_literal,42}]},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1285}]}.
    {call,2,{f,480}}. % normalize_same/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[{b_literal,42},{b_var,a}]},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,488},1}. % normalize_swapped/2


{function, normalize_noncommutative, 1, 477}.
  {label,476}.
    {line,[{location,"beam_ssa_SUITE.erl",1291}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,normalize_noncommutative},1}.
  {label,477}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[bif]},
                                     2 => {t_atom,['div']}}}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,[{b_var,a},{b_var,b}]},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1296}]}.
    {call,2,{f,480}}. % normalize_same/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[{b_var,a},{b_literal,42}]},{x,1}}.
    {move,{literal,{bif,'div'}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1297}]}.
    {call,2,{f,480}}. % normalize_same/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,1023},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1299}]}.
    {call_ext,2,{extfunc,beam_types,make_integer,2}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{literal,[{b_literal,42},{b_var,a}]},{x,2}}.
    {move,{literal,{bif,'div'}},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1300}]}.
    {call,3,{f,495}}. % make_bset/3
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
    {line,[{location,"beam_ssa_SUITE.erl",1301}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_eq_exact,
        {f,478},
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
  {label,478}.
    {badmatch,{x,0}}.


{function, normalize_same, 2, 480}.
  {label,479}.
    {line,[{location,"beam_ssa_SUITE.erl",1305}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,normalize_same},2}.
  {label,480}.
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
    {line,[{location,"beam_ssa_SUITE.erl",1306}]}.
    {call,3,{f,495}}. % make_bset/3
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
    {line,[{location,"beam_ssa_SUITE.erl",1307}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_eq_exact,
        {f,486},
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
    {line,[{location,"beam_ssa_SUITE.erl",1309}]}.
    {call_ext,2,{extfunc,beam_types,make_integer,2}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{integer,0},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1310}]}.
    {call,3,{f,495}}. % make_bset/3
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
    {line,[{location,"beam_ssa_SUITE.erl",1311}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_eq_exact,
        {f,485},
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
          {f,481},
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
    {test,is_nonempty_list,{f,484},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,2}}.
    {test,is_tagged_tuple,
          {f,481},
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
        {f,481},
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
    {line,[{location,"beam_ssa_SUITE.erl",1315}]}.
    {call_ext,2,{extfunc,beam_types,make_integer,2}}.
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1316}]}.
    {call_ext,1,{extfunc,beam_types,make_integer,1}}.
    {test_heap,10,1}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},{list,[{integer,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",1317}]}.
    {call,3,{f,495}}. % make_bset/3
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
    {line,[{location,"beam_ssa_SUITE.erl",1318}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_eq_exact,
        {f,483},
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
    {jump,{f,482}}.
  {label,481}.
    {test,is_nonempty_list,{f,484},[{x,1}]}.
    {get_tl,{x,1},{x,0}}.
    {test,is_nil,
        {f,484},
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
  {label,482}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,483}.
    {badmatch,{x,0}}.
  {label,484}.
    {line,[{location,"beam_ssa_SUITE.erl",1313}]}.
    {case_end,{y,1}}.
  {label,485}.
    {line,[{location,"beam_ssa_SUITE.erl",1311}]}.
    {badmatch,{x,0}}.
  {label,486}.
    {line,[{location,"beam_ssa_SUITE.erl",1307}]}.
    {badmatch,{x,0}}.


{function, normalize_swapped, 2, 488}.
  {label,487}.
    {line,[{location,"beam_ssa_SUITE.erl",1325}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,normalize_swapped},2}.
  {label,488}.
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
          {f,487},
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
    {test,is_nonempty_list,{f,487},[{x,3}]}.
    {get_list,{x,3},{x,2},{x,3}}.
    {test,is_tagged_tuple,
          {f,487},
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
        {f,487},
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
    {line,[{location,"beam_ssa_SUITE.erl",1327}]}.
    {call,3,{f,495}}. % make_bset/3
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
    {line,[{location,"beam_ssa_SUITE.erl",1328}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_tagged_tuple,{f,493},[{x,0},5,{atom,b_set}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,493},[{x,1},{literal,{b_var,1000}}]}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_nonempty_list,{f,493},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,493},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nil,{f,493},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,493},[{x,1},{literal,#{}}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,
          {f,493},
          [{x,1},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_atom,[bif]},2 => {t_atom,['+','band']}}}}]}.
    {test,is_eq_exact,{f,493},[{x,2},{literal,{b_var,a}}]}.
    {test,is_eq_exact,{f,493},[{x,3},{literal,{b_literal,42}}]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{literal,#{arg_types => #{}}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1331}]}.
    {call,3,{f,495}}. % make_bset/3
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
    {line,[{location,"beam_ssa_SUITE.erl",1332}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {test,is_tagged_tuple,{f,492},[{x,0},5,{atom,b_set}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,492},[{x,1},{literal,{b_var,1000}}]}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_nonempty_list,{f,492},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,492},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nil,{f,492},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,492},[{x,1},{literal,#{arg_types => #{}}}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,
          {f,492},
          [{x,1},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_atom,[bif]},2 => {t_atom,['+','band']}}}}]}.
    {test,is_eq_exact,{f,492},[{x,2},{literal,{b_var,a}}]}.
    {test,is_eq_exact,{f,492},[{x,3},{literal,{b_literal,42}}]}.
    {move,{integer,1023},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1334}]}.
    {call_ext,2,{extfunc,beam_types,make_integer,2}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{integer,1},{x,0}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {move,{y,2},{x,3}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1336}]}.
    {call,3,{f,495}}. % make_bset/3
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
    {line,[{location,"beam_ssa_SUITE.erl",1337}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {call,1,{f,498}}. % unpack_bset/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_list,{t_tuple,2,true,#{}},nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_nonempty_list,{f,491},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,491},[{x,3},{integer,0}]}.
    {test,is_nil,{f,491},[{tr,{x,1},{t_list,{t_tuple,2,true,#{}},nil}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nonempty_list,{f,491},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,491},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_nil,{f,491},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,491},[{x,1},{y,0}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,491},
          [{x,1},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_atom,[bif]},2 => {t_atom,['+','band']}}}}]}.
    {test,is_eq_exact,{f,491},[{x,3},{literal,{b_var,a}}]}.
    {test,is_eq_exact,{f,491},[{x,4},{literal,{b_literal,42}}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{b_literal,42}},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1339}]}.
    {call_ext,1,{extfunc,beam_types,make_type_from_value,1}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{integer,0},{x,0}]}}.
    {put_list,{x,0},nil,{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1342}]}.
    {call,3,{f,495}}. % make_bset/3
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
    {line,[{location,"beam_ssa_SUITE.erl",1343}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {call,1,{f,498}}. % unpack_bset/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_list,{t_tuple,2,true,#{}},nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_nil,{f,490},[{tr,{x,1},{t_list,{t_tuple,2,true,#{}},nil}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nonempty_list,{f,490},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,490},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nil,{f,490},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,490},
          [{x,1},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_atom,[bif]},2 => {t_atom,['+','band']}}}}]}.
    {test,is_eq_exact,{f,490},[{x,2},{literal,{b_var,a}}]}.
    {test,is_eq_exact,{f,490},[{x,3},{literal,{b_literal,42}}]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,2,1}.
    {line,[{location,"beam_ssa_SUITE.erl",1346}]}.
    {call,3,{f,495}}. % make_bset/3
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
    {line,[{location,"beam_ssa_SUITE.erl",1347}]}.
    {call_ext,1,{extfunc,beam_ssa,normalize,1}}.
    {call,1,{f,498}}. % unpack_bset/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_list,{t_tuple,2,true,#{}},nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_nil,{f,489},[{tr,{x,1},{t_list,{t_tuple,2,true,#{}},nil}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nonempty_list,{f,489},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,489},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nil,{f,489},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,489},
          [{x,1},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[bif]},2 => {t_atom,['+','band']}}}}]}.
    {test,is_eq_exact,{f,489},[{x,2},{literal,{b_var,a}}]}.
    {test,is_eq_exact,{f,489},[{x,3},{literal,{b_literal,42}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,489}.
    {badmatch,{x,0}}.
  {label,490}.
    {line,[{location,"beam_ssa_SUITE.erl",1343}]}.
    {badmatch,{x,0}}.
  {label,491}.
    {line,[{location,"beam_ssa_SUITE.erl",1337}]}.
    {badmatch,{x,0}}.
  {label,492}.
    {line,[{location,"beam_ssa_SUITE.erl",1332}]}.
    {badmatch,{x,0}}.
  {label,493}.
    {line,[{location,"beam_ssa_SUITE.erl",1328}]}.
    {badmatch,{x,0}}.


{function, make_bset, 3, 495}.
  {label,494}.
    {line,[{location,"beam_ssa_SUITE.erl",1351}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,make_bset},3}.
  {label,495}.
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
    {test,is_nonempty_list,{f,496},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"beam_ssa_SUITE.erl",1352}]}.
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
  {label,496}.
    {test_heap,6,3}.
    {put_tuple2,{x,0},
                {list,[{atom,b_set},
                       {x,0},
                       {literal,{b_var,1000}},
                       {x,1},
                       {x,2}]}}.
    return.


{function, unpack_bset, 1, 498}.
  {label,497}.
    {line,[{location,"beam_ssa_SUITE.erl",1357}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,unpack_bset},1}.
  {label,498}.
    {test,is_tagged_tuple,{f,497},[{x,0},5,{atom,b_set}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,497},[{x,1},{literal,{b_var,1000}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_map,{f,501},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {get_map_elements,{f,499},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,arg_types},{x,0}]}}.
    {jump,{f,500}}.
  {label,499}.
    {move,{literal,#{}},{x,0}}.
  {label,500}.
    {line,[{location,"beam_ssa_SUITE.erl",1359}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test_heap,4,1}.
    {get_tuple_element,{y,0},3,{x,1}}.
    {get_tuple_element,{y,0},4,{x,2}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {deallocate,1}.
    return.
  {label,501}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,1}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, trycatch, 1, 503}.
  {label,502}.
    {line,[{location,"beam_ssa_SUITE.erl",1361}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,trycatch},1}.
  {label,503}.
    {allocate,0,0}.
    {line,[{location,"beam_ssa_SUITE.erl",1362}]}.
    {call,0,{f,507}}. % trycatch_1/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,505},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1364}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {call,1,{f,511}}. % trycatch_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,z},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1365}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {call,1,{f,511}}. % trycatch_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1367}]}.
    {call,1,{f,523}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {call,1,{f,515}}. % trycatch_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,ok]}}]}}.
    {test,is_eq_exact,{f,504},[{tr,{x,0},{t_atom,[false,ok]}},{atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,504}.
    {badmatch,{atom,ok}}.
  {label,505}.
    {line,[{location,"beam_ssa_SUITE.erl",1362}]}.
    {badmatch,{x,0}}.


{function, trycatch_1, 0, 507}.
  {label,506}.
    {line,[{location,"beam_ssa_SUITE.erl",1371}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,trycatch_1},0}.
  {label,507}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,509}}.
    {'try',{y,0},{f,508}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",1372}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {try_end,{y,0}}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,508}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,509}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, trycatch_2, 1, 511}.
  {label,510}.
    {line,[{location,"beam_ssa_SUITE.erl",1381}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,trycatch_2},1}.
  {label,511}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {bif,'>=',
         {f,0},
         [{atom,ok},
          {tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                       {t_number,any},
                       {t_tuple,2,false,#{}},
                       {t_bitstring,256,true}}}],
         {x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,1}}.
    {'try',{y,0},{f,513}}.
    {test,is_eq_exact,
          {f,512},
          [{tr,{x,1},{t_atom,[false,true]}},{tr,{x,0},{t_atom,[false,true]}}]}.
    {line,[{scope,[2]},{location,"beam_ssa_SUITE.erl",1384}]}.
    {call_ext,1,{extfunc,erlang,iolist_size,1}}.
    {jump,{f,513}}.
  {label,512}.
    {try_end,{y,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,513}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, trycatch_3, 1, 515}.
  {label,514}.
    {line,[{location,"beam_ssa_SUITE.erl",1394}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,trycatch_3},1}.
  {label,515}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,521}}.
    {'try',{y,0},{f,520}}.
    {line,[{location,"beam_ssa_SUITE.erl",1395}]}.
    {call_ext,1,{extfunc,erlang,bump_reductions,1}}.
    {try_end,{y,0}}.
    {'try',{y,0},{f,517}}.
    {test,is_boolean,{f,516},[{x,0}]}.
    {try_end,{y,0}}.
    {move,{atom,false},{x,0}}.
    {jump,{f,518}}.
  {label,516}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{scope,[5]},{location,"beam_ssa_SUITE.erl",1397}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,517}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,519},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{atom,ok},{x,0}}.
  {label,518}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,519}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,520}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,521}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, id, 1, 523}.
  {label,522}.
    {line,[{location,"beam_ssa_SUITE.erl",1411}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,id},1}.
  {label,523}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,{t_cons,{t_cons,{t_atom,[a,b,c]},nil},nil},nil},
                     {t_number,any},
                     {t_tuple,2,false,#{}},
                     {t_bitstring,256,true}}}]}}.
    return.


{function, module_info, 0, 525}.
  {label,524}.
    {line,[]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,module_info},0}.
  {label,525}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 527}.
  {label,526}.
    {line,[]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,module_info},1}.
  {label,527}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_ssa_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-grab_bag_3/0-fun-0-', 1, 529}.
  {label,528}.
    {line,[{location,"beam_ssa_SUITE.erl",938}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-grab_bag_3/0-fun-0-'},1}.
  {label,529}.
    {jump,{f,528}}.


{function, '-test_mapfoldl_implementations/0-fun-0-', 2, 531}.
  {label,530}.
    {line,[{location,"beam_ssa_SUITE.erl",839}]}.
    {func_info,{atom,beam_ssa_SUITE},
               {atom,'-test_mapfoldl_implementations/0-fun-0-'},
               2}.
  {label,531}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-mapfoldl/1-fun-0-', 2, 533}.
  {label,532}.
    {line,[{location,"beam_ssa_SUITE.erl",823}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-mapfoldl/1-fun-0-'},2}.
  {label,533}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",824}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
    {move,{atom,a},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",825}]}.
    {call_ext,2,{extfunc,erlang,make_tuple,2}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, '-mapfoldl/0-fun-1-', 1, 535}.
  {label,534}.
    {line,[{location,"beam_ssa_SUITE.erl",811}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-mapfoldl/0-fun-1-'},1}.
  {label,535}.
    {'%',{var_info,{x,0},[{type,{t_integer,{100000,100000}}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,537},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {move,{literal,[100000]},{x,2}}.
    {move,nil,{x,1}}.
    {call_only,3,{f,347}}. % mapfoldl/3


{function, '-mapfoldl/0-fun-0-', 2, 537}.
  {label,536}.
    {line,[{location,"beam_ssa_SUITE.erl",812}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-mapfoldl/0-fun-0-'},2}.
  {label,537}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",813}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
    {move,{atom,a},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_SUITE.erl",814}]}.
    {call_ext,2,{extfunc,erlang,make_tuple,2}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, '-stack_init/2-fun-0-', 2, 539}.
  {label,538}.
    {line,[{location,"beam_ssa_SUITE.erl",795}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-stack_init/2-fun-0-'},2}.
  {label,539}.
    {line,[{location,"beam_ssa_SUITE.erl",796}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-cover_ssa_dead/1-lbc$^0/2-0-', 2, 541}.
  {label,540}.
    {line,[{location,"beam_ssa_SUITE.erl",584}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-cover_ssa_dead/1-lbc$^0/2-0-'},2}.
  {label,541}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-my_spawn/1-fun-0-', 1, 543}.
  {label,542}.
    {line,[{location,"beam_ssa_SUITE.erl",263}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-my_spawn/1-fun-0-'},1}.
  {label,543}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate_heap,0,3,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,ok},{x,1}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",264}]}.
    send.
  {label,544}.
    {loop_rec,{f,545},{x,0}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,545}.
    {wait,{f,544}}.


{function, '-recv/1-fun-4-', 0, 547}.
  {label,546}.
    {line,[{location,"beam_ssa_SUITE.erl",167}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-recv/1-fun-4-'},0}.
  {label,547}.
    {allocate,0,0}.
  {label,548}.
    {loop_rec,{f,549},{x,0}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,549}.
    {wait,{f,548}}.


{function, '-recv/1-fun-3-', 0, 551}.
  {label,550}.
    {line,[{location,"beam_ssa_SUITE.erl",160}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-recv/1-fun-3-'},0}.
  {label,551}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {bif,self,{f,0},[],{x,0}}.
    {make_fun3,{f,555},0,0,{x,0},{list,[{x,0}]}}.
    {line,[{location,"beam_ssa_SUITE.erl",162}]}.
    {call_ext,1,{extfunc,erlang,spawn,1}}.
  {label,552}.
    {loop_rec,{f,553},{x,0}}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,553}.
    {wait,{f,552}}.


{function, '-recv/1-fun-2-', 1, 555}.
  {label,554}.
    {line,[{location,"beam_ssa_SUITE.erl",162}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-recv/1-fun-2-'},1}.
  {label,555}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate,0,1}.
    {move,{atom,kill_me},{x,1}}.
    {call_ext_last,2,{extfunc,erlang,exit,2},0}.


{function, '-recv/1-fun-1-', 0, 557}.
  {label,556}.
    {line,[{location,"beam_ssa_SUITE.erl",157}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-recv/1-fun-1-'},0}.
  {label,557}.
    {move,{atom,down},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, '-recv/1-fun-0-', 1, 559}.
  {label,558}.
    {line,[{location,"beam_ssa_SUITE.erl",154}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-recv/1-fun-0-'},1}.
  {label,559}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate_heap,0,4,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,ack},{x,1},{literal,{result,42}}]}}.
    send.
    {deallocate,0}.
    return.


{function, '-calls/1-fun-1-', 2, 561}.
  {label,560}.
    {line,[{location,"beam_ssa_SUITE.erl",73}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-calls/1-fun-1-'},2}.
  {label,561}.
    {test,is_eq_exact,{f,560},[{x,0},{atom,a}]}.
    {test,is_eq_exact,{f,560},[{x,1},{atom,b}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-calls/1-fun-0-', 1, 563}.
  {label,562}.
    {line,[{location,"beam_ssa_SUITE.erl",72}]}.
    {func_info,{atom,beam_ssa_SUITE},{atom,'-calls/1-fun-0-'},1}.
  {label,563}.
    {test,is_eq_exact,{f,562},[{x,0},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    return.
