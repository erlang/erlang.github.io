{module, zlc_SUITE}.  %% version = 0

{exports, [{all,0},
           {bad_generators,1},
           {basic,1},
           {cartesian,1},
           {cover,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {filter_guard,1},
           {filter_pattern,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {mixed_zlc,1},
           {module_info,0},
           {module_info,1},
           {nomatch,1},
           {strict_binary,1},
           {strict_list,1},
           {suite,0},
           {zmc,1}]}.

{attributes, []}.

{labels, 800}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"zlc_SUITE.erl",33}]}.
    {func_info,{atom,zlc_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"zlc_SUITE.erl",37}]}.
    {func_info,{atom,zlc_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"zlc_SUITE.erl",40}]}.
    {func_info,{atom,zlc_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"zlc_SUITE.erl",41}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[basic,mixed_zlc,zmc,filter_guard,
                                 filter_pattern,cartesian,nomatch,
                                 bad_generators,strict_list,strict_binary,
                                 cover]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"zlc_SUITE.erl",55}]}.
    {func_info,{atom,zlc_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,zlc_SUITE},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",56}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"zlc_SUITE.erl",59}]}.
    {func_info,{atom,zlc_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"zlc_SUITE.erl",62}]}.
    {func_info,{atom,zlc_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"zlc_SUITE.erl",65}]}.
    {func_info,{atom,zlc_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"zlc_SUITE.erl",69}]}.
    {func_info,{atom,zlc_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"zlc_SUITE.erl",72}]}.
    {func_info,{atom,zlc_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, basic, 1, 20}.
  {label,19}.
    {line,[{location,"zlc_SUITE.erl",75}]}.
    {func_info,{atom,zlc_SUITE},{atom,basic},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,[2,2,2]},{x,1}}.
    {move,{literal,[3,3,3]},{x,2}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",76}]}.
    {call,3,{f,797}}. % '-basic/1-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{6,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,26},
          [{tr,{x,0},{t_cons,{t_integer,{6,'+inf'}},nil}},{literal,[6,7,8]}]}.
    {move,{literal,[2,2,2]},{x,1}}.
    {move,{literal,[3,3,3]},{x,2}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",78}]}.
    {call,3,{f,793}}. % '-basic/1-zlc$^1/3-1-'/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,3,true,
                         #{1 => {t_integer,{1,3}},
                           2 => {t_integer,{2,2}},
                           3 => {t_integer,{3,3}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,25},
          [{tr,{x,0},
               {t_cons,{t_tuple,3,true,
                                #{1 => {t_integer,{1,3}},
                                  2 => {t_integer,{2,2}},
                                  3 => {t_integer,{3,3}}}},
                       nil}},
           {literal,[{1,2,3},{2,2,3},{3,2,3}]}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,791},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,[0,1]},{x,3}}.
    {move,{literal,[2,2]},{x,2}}.
    {move,{literal,[2,3]},{x,4}}.
    {move,{literal,[1,5]},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",79}]}.
    {call,5,{f,28}}. % zipwith4/5
    {'%',{var_info,{x,0},[{type,{t_cons,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,24},
          [{tr,{x,0},{t_cons,{t_number,any},nil}},{literal,[6,24]}]}.
    {move,{literal,[24,12,8,6]},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",81}]}.
    {call,2,{f,30}}. % dot/2
    {test,is_eq_exact,{f,23},[{x,0},{integer,96}]}.
    {move,{literal,[1,3,5]},{x,1}}.
    {move,{literal,[2,4,6]},{x,2}}.
    {move,{literal,[true,false,true]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",83}]}.
    {call,3,{f,32}}. % ifelse/3
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,6}},nil}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},{t_cons,{t_integer,{1,6}},nil}},{literal,[1,4,5]}]}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{literal,<<2,2,2>>},{x,2}}.
    {move,{literal,<<5,10,15>>},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",85}]}.
    {call,3,{f,788}}. % '-basic/1-zlc$^3/3-2-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,21},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},
           {literal,[8,14,20]}]}.
    {deallocate,0}.
    return.
  {label,21}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"zlc_SUITE.erl",83}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{location,"zlc_SUITE.erl",81}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{location,"zlc_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{location,"zlc_SUITE.erl",77}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{location,"zlc_SUITE.erl",76}]}.
    {badmatch,{x,0}}.


{function, zipwith4, 5, 28}.
  {label,27}.
    {line,[{location,"zlc_SUITE.erl",89}]}.
    {func_info,{atom,zlc_SUITE},{atom,zipwith4},5}.
  {label,28}.
    {'%',{var_info,{x,0},
                   [{type,{t_fun,4,{'-basic/1-fun-2-',4},{t_number,any}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_cons,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_cons,{t_integer,{0,1}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_cons,{t_integer,{2,3}},nil}}]}}.
    {swap,{x,2},{x,1}}.
    {swap,{x,3},{x,2}}.
    {swap,{x,4},{x,3}}.
    {swap,{x,0},{x,4}}.
    {call_only,5,{f,784}}. % '-zipwith4/5-zlc$^0/4-0-'/5


{function, dot, 2, 30}.
  {label,29}.
    {line,[{location,"zlc_SUITE.erl",92}]}.
    {func_info,{atom,zlc_SUITE},{atom,dot},2}.
  {label,30}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{6,24}},nil}}]}}.
    {allocate,0,2}.
    {line,[{location,"zlc_SUITE.erl",93}]}.
    {call,2,{f,780}}. % '-dot/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{6,'+inf'}},nil}}]}}.
    {call_ext_last,1,{extfunc,lists,sum,1},0}.


{function, ifelse, 3, 32}.
  {label,31}.
    {line,[{location,"zlc_SUITE.erl",95}]}.
    {func_info,{atom,zlc_SUITE},{atom,ifelse},3}.
  {label,32}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[false,true]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_cons,{t_integer,{2,6}},nil}}]}}.
    {call_only,3,{f,774}}. % '-ifelse/3-zlc$^0/3-0-'/3


{function, mixed_zlc, 1, 34}.
  {label,33}.
    {line,[{location,"zlc_SUITE.erl",103}]}.
    {func_info,{atom,zlc_SUITE},{atom,mixed_zlc},1}.
  {label,34}.
    {test,is_list,{f,33},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",104}]}.
    {call,2,{f,770}}. % '-mixed_zlc/1-zlc$^0/2-0-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,53},
          [{tr,{x,0},
               {t_cons,{t_tuple,2,true,
                                #{1 => {t_atom,[a,b,c]},
                                  2 => {t_integer,{0,255}}}},
                       nil}},
           {literal,[{a,2},{b,4},{c,6}]}]}.
    {move,{literal,[a,b,c]},{x,1}}.
    {move,{literal,<<2,4,6>>},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",105}]}.
    {call,2,{f,766}}. % '-mixed_zlc/1-zlc$^1/2-1-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,52},
          [{tr,{x,0},
               {t_cons,{t_tuple,2,true,
                                #{1 => {t_atom,[a,b,c]},
                                  2 => {t_integer,{0,255}}}},
                       nil}},
           {literal,[{a,2},{b,4},{c,6}]}]}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 1,b => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",107}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,1}}.
    {test,is_nil,{f,35},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,35}.
    {move,{atom,ordered},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{literal,#{c => 3,d => 4}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",108}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,36},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,36}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {line,[{location,"zlc_SUITE.erl",107}]}.
    {call,2,{f,760}}. % '-mixed_zlc/1-zlc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,4,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,51},
          [{tr,{x,0},{t_list,{t_tuple,4,true,#{}},nil}},
           {literal,[{a,c,1,3},{b,d,2,4}]}]}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 1,b => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",110}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,37},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,37}.
    {move,{literal,<<2,4>>},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,2,{f,755}}. % '-mixed_zlc/1-zlc$^3/2-3-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,3,true,#{3 => {t_integer,{0,255}}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,50},
          [{tr,{x,0},
               {t_list,{t_tuple,3,true,#{3 => {t_integer,{0,255}}}},nil}},
           {literal,[{a,1,2},{b,2,4}]}]}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 1,b => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",113}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,2}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,38},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,38}.
    {move,{literal,<<2,4>>},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,2,{f,750}}. % '-mixed_zlc/1-zlc$^4/2-4-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,3,true,#{3 => {t_integer,{0,255}}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,49},
          [{tr,{x,0},
               {t_list,{t_tuple,3,true,#{3 => {t_integer,{0,255}}}},nil}},
           {literal,[{a,1,2},{b,2,4}]}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{literal,[2,2,2]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",115}]}.
    {call,3,{f,746}}. % '-mixed_zlc/1-bzip$^5/3-5-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,48},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 2,b => 2,c => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",118}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,39},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,39}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",116}]}.
    {call,3,{f,741}}. % '-mixed_zlc/1-bzip$^6/3-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,47},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 2,b => 2,c => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",121}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,40},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,40}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",119}]}.
    {call,3,{f,736}}. % '-mixed_zlc/1-bzip$^7/3-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,46},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 1,b => 2,c => 3}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",123}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,41},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,41}.
    {move,{atom,ordered},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,#{a => 2,b => 2,c => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",124}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,42},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,42}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,3,0}.
    {line,[{location,"zlc_SUITE.erl",122}]}.
    {call,3,{f,730}}. % '-mixed_zlc/1-bzip$^8/3-8-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,45},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{literal,[1,2,3]},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",125}]}.
    {call,2,{f,726}}. % '-mixed_zlc/1-zlc$^9/2-9-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{1,3}}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,44},
                      {tr,{x,0},{t_map,{t_atom,[a,b,c]},{t_integer,{1,3}}}},
                      {list,[{atom,c},{x,3},{atom,b},{x,2},{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,44},[{tr,{x,1},{t_integer,{1,3}}},{integer,1}]}.
    {test,is_eq_exact,{f,44},[{tr,{x,2},{t_integer,{1,3}}},{integer,2}]}.
    {test,is_eq_exact,{f,44},[{tr,{x,3},{t_integer,{1,3}}},{integer,3}]}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",126}]}.
    {call,2,{f,722}}. % '-mixed_zlc/1-zlc$^10/2-10-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,43},
                      {tr,{x,0},{t_map,{t_atom,[a,b,c]},{t_integer,{0,255}}}},
                      {list,[{atom,c},{x,3},{atom,b},{x,2},{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,43},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {test,is_eq_exact,{f,43},[{tr,{x,2},{t_integer,{0,255}}},{integer,2}]}.
    {test,is_eq_exact,{f,43},[{tr,{x,3},{t_integer,{0,255}}},{integer,3}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,43}.
    {line,[{location,"zlc_SUITE.erl",126}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{location,"zlc_SUITE.erl",125}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{location,"zlc_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{location,"zlc_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{location,"zlc_SUITE.erl",116}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{location,"zlc_SUITE.erl",115}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{location,"zlc_SUITE.erl",112}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{location,"zlc_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{location,"zlc_SUITE.erl",106}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{location,"zlc_SUITE.erl",105}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{location,"zlc_SUITE.erl",104}]}.
    {badmatch,{x,0}}.


{function, zmc, 1, 55}.
  {label,54}.
    {line,[{location,"zlc_SUITE.erl",129}]}.
    {func_info,{atom,zlc_SUITE},{atom,zmc},1}.
  {label,55}.
    {test,is_list,{f,54},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",130}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,6}}.
    {test,is_nil,{f,56},[{x,0}]}.
    {move,{literal,{bad_generator,#{a => 1}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,56}.
    {move,{literal,#{b => 3}},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,57},[{x,0}]}.
    {move,{literal,{bad_generator,#{b => 3}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,57}.
    {move,{x,0},{x,1}}.
    {move,{y,6},{x,0}}.
    {init_yregs,{list,[{y,6}]}}.
    {call,2,{f,716}}. % '-zmc/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,4,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,87},
          [{tr,{x,0},{t_list,{t_tuple,4,true,#{}},nil}},
           {literal,[{a,b,1,3}]}]}.
    {move,{integer,50},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",131}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,6}}.
    {line,[{location,"zlc_SUITE.erl",132}]}.
    {call,1,{f,712}}. % '-zmc/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",132}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,5}}.
    {move,{integer,50},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",133}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,708}}. % '-zmc/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",133}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,4}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",134}]}.
    {call,1,{f,704}}. % '-zmc/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {move,{x,0},{y,3}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",135}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,2}}.
    {test,is_nil,{f,58},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,5}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,58}.
    {move,{y,4},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,59},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,4}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,59}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,2,{f,698}}. % '-zmc/1-zlc$^3/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,86},
          [{tr,{y,3},{t_list,{t_number,any},nil}},
           {tr,{x,0},{t_list,{t_number,any},nil}}]}.
    {gc_bif,length,{f,60},0,[{y,6}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}],
            {x,0}}.
    {jump,{f,61}}.
  {label,60}.
    {move,{integer,256},{x,0}}.
  {label,61}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",136}]}.
    {call,2,{f,694}}. % '-zmc/1-lbc$^6/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,3}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",137}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,1}}.
    {test,is_nil,{f,62},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,5}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,62}.
    {move,{y,4},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,63},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,4}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,63}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2},{y,4}]}}.
    {call,3,{f,688}}. % '-zmc/1-bzip$^5/3-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,85},
          [{tr,{y,3},{t_bitstring,64,true}},
           {tr,{x,0},{t_bitstring,256,true}}]}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",139}]}.
    {call,1,{f,684}}. % '-zmc/1-lc$^7/1-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",139}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,4}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",140}]}.
    {call,1,{f,680}}. % '-zmc/1-lc$^8/1-8-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",140}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,3}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",141}]}.
    {call,1,{f,676}}. % '-zmc/1-lc$^10/1-9-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,4,true,
                         #{1 => {t_number,any},
                           2 => {t_number,any},
                           3 => {t_number,any},
                           4 => {t_number,any}}},
                     nil}}]}}.
    {move,{x,0},{y,2}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",142}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,1}}.
    {test,is_nil,{f,64},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,4}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,64}.
    {move,{y,3},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,65},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,65}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,670}}. % '-zmc/1-zlc$^9/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,4,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,84},
          [{tr,{y,2},
               {t_list,{t_tuple,4,true,
                                #{1 => {t_number,any},
                                  2 => {t_number,any},
                                  3 => {t_number,any},
                                  4 => {t_number,any}}},
                       nil}},
           {tr,{x,0},{t_list,{t_tuple,4,true,#{}},nil}}]}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",143}]}.
    {call,1,{f,666}}. % '-zmc/1-lc$^12/1-11-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {move,{x,0},{y,2}}.
    {move,{y,5},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,66},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,5}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,66}.
    {move,{y,6},{x,1}}.
    {call,2,{f,661}}. % '-zmc/1-zlc$^11/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,83},
          [{tr,{y,2},{t_list,{t_number,any},nil}},
           {tr,{x,0},{t_list,{t_number,any},nil}}]}.
    {gc_bif,length,{f,67},0,[{y,6}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,32}],
            {x,0}}.
    {jump,{f,68}}.
  {label,67}.
    {move,{integer,256},{x,0}}.
  {label,68}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",144}]}.
    {call,2,{f,657}}. % '-zmc/1-lbc$^14/2-13-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,1}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",145}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,69},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,4}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,69}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{y,3},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,70},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,70}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1},{y,3}]}}.
    {call,3,{f,651}}. % '-zmc/1-bzip$^13/3-14-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,82},
          [{tr,{y,2},{t_bitstring,256,true}},
           {tr,{x,0},{t_bitstring,256,true}}]}.
    {gc_bif,length,{f,71},0,[{y,6}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}],
            {x,0}}.
    {jump,{f,72}}.
  {label,71}.
    {move,{integer,256},{x,0}}.
  {label,72}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",146}]}.
    {call,2,{f,647}}. % '-zmc/1-lbc$^16/2-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,4}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,3}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",147}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,73},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,5}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,73}.
    {move,{y,3},{x,2}}.
    {move,{y,6},{x,1}}.
    {init_yregs,{list,[{y,3},{y,5}]}}.
    {call,3,{f,642}}. % '-zmc/1-bzip$^15/3-16-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,81},
          [{tr,{y,4},{t_bitstring,64,true}},
           {tr,{x,0},{t_bitstring,256,true}}]}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",153}]}.
    {call,1,{f,634}}. % '-zmc/1-lc$^17/1-17-'/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_tuple,2,true,
          #{1 => {t_integer,any},
            2 =>
             {t_union,none,none,none,
              [{{2,{t_atom,[error]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[error]},2 => {t_integer,any}}}},
               {{2,{t_atom,[ok]}},
                {t_tuple,2,true,#{1 => {t_atom,[ok]},2 => {t_integer,any}}}}],
              none}}},
         nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",149}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {swap,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",154}]}.
    {call,1,{f,630}}. % '-zmc/1-lc$^18/1-18-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",154}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,5}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",155}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {move,{x,0},{y,4}}.
    {move,{y,5},{x,0}}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,626}}. % '-zmc/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,80},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",156}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,4}}.
    {test,is_nil,{f,74},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,6}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,74}.
    {move,{y,5},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,75},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,5}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,75}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4},{y,5}]}}.
    {call,2,{f,619}}. % '-zmc/1-zlc$^20/2-20-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,79},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",157}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,5}}.
    {test,is_ne_exact,{f,76},[{x,0},nil]}.
    {move,{y,6},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,77},[{x,0}]}.
  {label,76}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,6}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,77}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {trim,7,0}.
    {call,2,{f,612}}. % '-zmc/1-zlc$^21/2-21-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,78},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,78}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"zlc_SUITE.erl",156}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"zlc_SUITE.erl",155}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"zlc_SUITE.erl",146}]}.
    {badmatch,{atom,false}}.
  {label,82}.
    {line,[{location,"zlc_SUITE.erl",144}]}.
    {badmatch,{atom,false}}.
  {label,83}.
    {line,[{location,"zlc_SUITE.erl",143}]}.
    {badmatch,{atom,false}}.
  {label,84}.
    {line,[{location,"zlc_SUITE.erl",141}]}.
    {badmatch,{atom,false}}.
  {label,85}.
    {line,[{location,"zlc_SUITE.erl",136}]}.
    {badmatch,{atom,false}}.
  {label,86}.
    {line,[{location,"zlc_SUITE.erl",134}]}.
    {badmatch,{atom,false}}.
  {label,87}.
    {line,[{location,"zlc_SUITE.erl",130}]}.
    {badmatch,{x,0}}.


{function, filter_guard, 1, 89}.
  {label,88}.
    {line,[{location,"zlc_SUITE.erl",160}]}.
    {func_info,{atom,zlc_SUITE},{atom,filter_guard},1}.
  {label,89}.
    {test,is_list,{f,88},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[[1],[2]]},{x,1}}.
    {move,{literal,[[1,2],[2,-3]]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",161}]}.
    {call,2,{f,607}}. % '-filter_guard/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}}]}}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}},
           {literal,[[1,2,1]]}]}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",162}]}.
    {call,2,{f,602}}. % '-filter_guard/1-zlc$^1/2-1-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,100},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[a,b,c]},
                                  2 => {t_integer,{0,255}}}},
                       nil}},
           {literal,[{a,2},{b,4},{c,6}]}]}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",164}]}.
    {call,2,{f,597}}. % '-filter_guard/1-zlc$^2/2-2-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,99},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[a,b,c]},
                                  2 => {t_integer,{0,255}}}},
                       nil}},
           {literal,[{b,4},{c,6}]}]}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",165}]}.
    {call,2,{f,592}}. % '-filter_guard/1-zlc$^3/2-3-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test,is_nil,
          {f,98},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[a,b,c]},
                                  2 => {t_integer,{0,255}}}},
                       nil}}]}.
    {move,{literal,[a,b,c]},{x,1}}.
    {move,{literal,<<2,4,6>>},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",166}]}.
    {call,2,{f,587}}. % '-filter_guard/1-zlc$^4/2-4-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,97},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[a,b,c]},
                                  2 => {t_integer,{0,255}}}},
                       nil}},
           {literal,[{b,4}]}]}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 1,b => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",167}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,90},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,90}.
    {move,{atom,ordered},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,#{c => 3,d => 4}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",168}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,91},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,1}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,91}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call,2,{f,580}}. % '-filter_guard/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,3,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,96},
          [{tr,{x,0},{t_list,{t_tuple,3,true,#{}},nil}},{literal,[{b,d,2}]}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{literal,[2,2,2]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",170}]}.
    {call,3,{f,575}}. % '-filter_guard/1-bzip$^6/3-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,95},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<5>>}]}.
    {move,{literal,[1,2,3]},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",171}]}.
    {call,2,{f,570}}. % '-filter_guard/1-zlc$^7/2-7-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{1,3}}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,94},
                      {tr,{x,0},{t_map,{t_atom,[a,b,c]},{t_integer,{1,3}}}},
                      {list,[{atom,c},{x,2},{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,94},[{tr,{x,1},{t_integer,{1,3}}},{integer,1}]}.
    {test,is_eq_exact,{f,94},[{tr,{x,2},{t_integer,{1,3}}},{integer,3}]}.
    {move,{literal,[1,2,3]},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",172}]}.
    {call,2,{f,565}}. % '-filter_guard/1-zlc$^8/2-8-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{2,3}}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,93},
                      {tr,{x,0},{t_map,{t_atom,[a,b,c]},{t_integer,{2,3}}}},
                      {list,[{atom,c},{x,1}]}}.
    {test,is_eq_exact,{f,93},[{tr,{x,1},{t_integer,{2,3}}},{integer,3}]}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",173}]}.
    {call,2,{f,560}}. % '-filter_guard/1-zlc$^9/2-9-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {get_map_elements,{f,92},
                      {tr,{x,0},{t_map,{t_atom,[a,b,c]},{t_integer,{0,255}}}},
                      {list,[{atom,c},{x,2},{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,92},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {test,is_eq_exact,{f,92},[{tr,{x,2},{t_integer,{0,255}}},{integer,3}]}.
    {deallocate,2}.
    return.
  {label,92}.
    {line,[{location,"zlc_SUITE.erl",173}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{location,"zlc_SUITE.erl",172}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{location,"zlc_SUITE.erl",171}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{location,"zlc_SUITE.erl",170}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{location,"zlc_SUITE.erl",167}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{location,"zlc_SUITE.erl",166}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{location,"zlc_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{location,"zlc_SUITE.erl",164}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{location,"zlc_SUITE.erl",162}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{location,"zlc_SUITE.erl",161}]}.
    {badmatch,{x,0}}.


{function, filter_pattern, 1, 103}.
  {label,102}.
    {line,[{location,"zlc_SUITE.erl",175}]}.
    {func_info,{atom,zlc_SUITE},{atom,filter_pattern},1}.
  {label,103}.
    {test,is_list,{f,102},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"zlc_SUITE.erl",176}]}.
    {call,2,{f,110}}. % do_filter_pat_1/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",177}]}.
    {call,2,{f,110}}. % do_filter_pat_1/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[{error,e}]},{x,1}}.
    {move,{literal,[{ok,a}]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",178}]}.
    {call,2,{f,110}}. % do_filter_pat_1/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,1}}.
    {line,[{location,"zlc_SUITE.erl",180}]}.
    {call,2,{f,112}}. % do_filter_pat_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,10}},2 => {t_integer,{1,20}}}},
                     nil}}]}}.
    {test,is_nil,
          {f,108},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_integer,{1,10}},
                                  2 => {t_integer,{1,20}}}},
                       nil}}]}.
    {move,{literal,[b]},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",181}]}.
    {call,2,{f,112}}. % do_filter_pat_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,10}},2 => {t_integer,{1,20}}}},
                     nil}}]}}.
    {test,is_nil,
          {f,107},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_integer,{1,10}},
                                  2 => {t_integer,{1,20}}}},
                       nil}}]}.
    {move,{literal,[{b,1}]},{x,1}}.
    {move,{literal,[{a,1}]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",182}]}.
    {call,2,{f,112}}. % do_filter_pat_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,10}},2 => {t_integer,{1,20}}}},
                     nil}}]}}.
    {test,is_nil,
          {f,106},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_integer,{1,10}},
                                  2 => {t_integer,{1,20}}}},
                       nil}}]}.
    {move,{literal,[{a,7}]},{x,1}}.
    {move,{literal,[{a,1}]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",183}]}.
    {call,2,{f,112}}. % do_filter_pat_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,10}},2 => {t_integer,{1,20}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,105},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_integer,{1,10}},
                                  2 => {t_integer,{1,20}}}},
                       nil}},
           {literal,[{1,7}]}]}.
    {move,{literal,[{a,7},{wrong,8},{x,20}]},{x,1}}.
    {move,{literal,[{a,1},{b,9},{x,10}]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",184}]}.
    {call,2,{f,112}}. % do_filter_pat_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,10}},2 => {t_integer,{1,20}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,104},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_integer,{1,10}},
                                  2 => {t_integer,{1,20}}}},
                       nil}},
           {literal,[{1,7},{10,20}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,104}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{location,"zlc_SUITE.erl",183}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{location,"zlc_SUITE.erl",182}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{location,"zlc_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{location,"zlc_SUITE.erl",180}]}.
    {badmatch,{x,0}}.


{function, do_filter_pat_1, 2, 110}.
  {label,109}.
    {line,[{location,"zlc_SUITE.erl",189}]}.
    {func_info,{atom,zlc_SUITE},{atom,do_filter_pat_1},2}.
  {label,110}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         none,none,
                         [{{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => {t_atom,[a]}}}}],
                         none},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         none,none,
                         [{{2,{t_atom,[error]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[error]},2 => {t_atom,[e]}}}}],
                         none},
                     nil}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"zlc_SUITE.erl",190}]}.
    {call,2,{f,556}}. % '-do_filter_pat_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"zlc_SUITE.erl",191}]}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,553}}. % '-do_filter_pat_1/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, do_filter_pat_2, 2, 112}.
  {label,111}.
    {line,[{location,"zlc_SUITE.erl",194}]}.
    {func_info,{atom,zlc_SUITE},{atom,do_filter_pat_2},2}.
  {label,112}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_integer,{1,1}}}}},
                          {{2,{t_atom,[b]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b]},2 => {t_integer,{9,9}}}}},
                          {{2,{t_atom,[x]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[x]},
                                 2 => {t_integer,{10,10}}}}}],
                         none},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[b]},
                         none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_integer,{7,7}}}}},
                          {{2,{t_atom,[b]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b]},2 => {t_integer,{1,1}}}}},
                          {{2,{t_atom,[wrong]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[wrong]},
                                 2 => {t_integer,{8,8}}}}},
                          {{2,{t_atom,[x]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[x]},
                                 2 => {t_integer,{20,20}}}}}],
                         none},
                     nil}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"zlc_SUITE.erl",195}]}.
    {call,2,{f,548}}. % '-do_filter_pat_2/2-zlc$^0/2-0-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,10}},2 => {t_integer,{1,20}}}},
                     nil}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"zlc_SUITE.erl",196}]}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,544}}. % '-do_filter_pat_2/2-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,10}},2 => {t_integer,{1,20}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,113},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_integer,{1,10}},
                                  2 => {t_integer,{1,20}}}},
                       nil}},
           {tr,{y,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_integer,{1,10}},
                                  2 => {t_integer,{1,20}}}},
                       nil}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,113}.
    {badmatch,{x,0}}.


{function, cartesian, 1, 115}.
  {label,114}.
    {line,[{location,"zlc_SUITE.erl",199}]}.
    {func_info,{atom,zlc_SUITE},{atom,cartesian},1}.
  {label,115}.
    {test,is_list,{f,114},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",201}]}.
    {call,1,{f,537}}. % '-cartesian/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,120},
          [{tr,{x,0},
               {t_cons,{t_tuple,2,true,
                                #{1 => {t_atom,[a,b,c]},
                                  2 => {t_integer,{1,'+inf'}}}},
                       nil}},
           {literal,[{a,3},{b,5},{c,7},{a,4},{b,6},{c,8}]}]}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",205}]}.
    {call,2,{f,530}}. % '-cartesian/1-zlc$^2/2-2-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,119},
          [{tr,{x,0},
               {t_cons,{t_tuple,2,true,
                                #{1 => {t_atom,[a,b,c]},
                                  2 => {t_integer,{1,'+inf'}}}},
                       nil}},
           {literal,[{a,3},{a,4},{b,5},{b,6},{c,7},{c,8}]}]}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",208}]}.
    {call,2,{f,522}}. % '-cartesian/1-zlc$^4/2-4-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,118},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[a,b,c]},
                                  2 => {t_integer,{1,'+inf'}}}},
                       nil}},
           {literal,[{a,4},{b,6},{c,8}]}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,1}}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 2,b => 2,c => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",211}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,116},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,116}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {trim,2,0}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",209}]}.
    {call,3,{f,514}}. % '-cartesian/1-bzip$^6/3-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,117},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<4,2,5,3,6,4>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,117}.
    {badmatch,{x,0}}.
  {label,118}.
    {line,[{location,"zlc_SUITE.erl",206}]}.
    {badmatch,{x,0}}.
  {label,119}.
    {line,[{location,"zlc_SUITE.erl",203}]}.
    {badmatch,{x,0}}.
  {label,120}.
    {line,[{location,"zlc_SUITE.erl",200}]}.
    {badmatch,{x,0}}.


{function, strict_list, 1, 122}.
  {label,121}.
    {line,[{location,"zlc_SUITE.erl",215}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_list},1}.
  {label,122}.
    {test,is_list,{f,121},[{x,0}]}.
    {allocate,23,0}.
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
                       {y,19},
                       {y,20},
                       {y,21},
                       {y,22}]}}.
    {move,{integer,100},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",216}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,14}}.
    {move,{literal,[1,1,1]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",218}]}.
    {call,2,{f,510}}. % '-strict_list/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{2,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,189},
          [{tr,{x,0},{t_cons,{t_integer,{2,'+inf'}},nil}},{literal,[2,3,4]}]}.
    {move,{literal,[1,1,1]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",219}]}.
    {call,2,{f,505}}. % '-strict_list/1-zlc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{3,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,188},
          [{tr,{x,0},{t_list,{t_integer,{3,'+inf'}},nil}},{literal,[3,4]}]}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",221}]}.
    {call,2,{f,191}}. % strict_list_mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_nil,{f,187},[{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}}]}.
    {move,{literal,[{i,10},{i,20}]},{x,1}}.
    {move,{literal,[{i,1},{i,2}]},{x,0}}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",222}]}.
    {call,2,{f,191}}. % strict_list_mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,186},
          [{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}},{literal,[11,22]}]}.
    {move,{literal,[{i,10},bad,{i,20}]},{x,1}}.
    {move,{literal,[{i,3},{i,4},{i,5}]},{x,0}}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",223}]}.
    {call,2,{f,191}}. % strict_list_mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,185},
          [{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}},{literal,[13,25]}]}.
    {'catch',{y,22},{f,123}}.
    {move,{literal,[{i,10},{i,15},{i,20}]},{x,1}}.
    {move,{literal,[{i,3},bad,{i,5}]},{x,0}}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",225}]}.
    {call,2,{f,191}}. % strict_list_mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
  {label,123}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,184},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,184},[{x,1}]}.
    {test,test_arity,{f,184},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,184},
          [{x,1},{literal,{bad_generators,{[bad,{i,5}],[{i,15},{i,20}]}}}]}.
    {'catch',{y,21},{f,124}}.
    {move,{literal,[bad]},{x,1}}.
    {move,{literal,[{i,3},{i,5}]},{x,0}}.
    {line,[{scope,","},{location,"zlc_SUITE.erl",227}]}.
    {call,2,{f,191}}. % strict_list_mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
  {label,124}.
    {catch_end,{y,21}}.
    {test,is_tagged_tuple,{f,183},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,183},[{x,1}]}.
    {test,test_arity,{f,183},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,183},[{x,1},{literal,{bad_generators,{[{i,5}],[]}}}]}.
    {move,{literal,#{}},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",229}]}.
    {call,2,{f,193}}. % strict_list_mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_nil,{f,182},[{tr,{x,0},{t_list,{t_number,any},nil}}]}.
    {move,{literal,#{{k,4} => {v,3}}},{x,1}}.
    {move,{literal,[{i,3}]},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",230}]}.
    {call,2,{f,193}}. % strict_list_mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,181},
          [{tr,{x,0},{t_list,{t_number,any},nil}},{literal,[15]}]}.
    {move,{literal,#{{a,0} => {a,0},{k,4} => {v,3}}},{x,1}}.
    {move,{literal,[{i,0},{i,3}]},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",231}]}.
    {call,2,{f,193}}. % strict_list_mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,180},
          [{tr,{x,0},{t_list,{t_number,any},nil}},{literal,[15]}]}.
    {move,{y,14},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",234}]}.
    {call,1,{f,501}}. % '-strict_list/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {move,{x,0},{y,22}}.
    {move,{y,14},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",235}]}.
    {call,1,{f,497}}. % '-strict_list/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[i]}}},
                                  nil}}]}}.
    {move,{x,0},{y,21}}.
    {move,{y,14},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",236}]}.
    {call,1,{f,493}}. % '-strict_list/1-lc$^3/1-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[k]},2 => {t_number,any}}},
                           2 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[v]},2 => {t_number,any}}}}},
                     nil}}]}}.
    {line,[{scope,"*"}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,21},{x,0}}.
    {init_yregs,{list,[{y,21}]}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",235}]}.
    {call,2,{f,193}}. % strict_list_mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,147},
          [{tr,{x,0},{t_list,{t_number,any},nil}},
           {tr,{y,22},{t_list,{t_number,any},nil}}]}.
    {'catch',{y,20},{f,125}}.
    {move,{literal,#{{k,1} => {v,2}}},{x,1}}.
    {init_yregs,{list,[{y,22}]}}.
    {move,{literal,[{a,3}]},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",239}]}.
    {call,2,{f,193}}. % strict_list_mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
  {label,125}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,179},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,179},[{x,1}]}.
    {test,test_arity,{f,179},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,179},
          [{x,1},{literal,{bad_generators,{[{a,3}],{{k,1},{v,2},none}}}}]}.
    {'catch',{y,19},{f,126}}.
    {move,{literal,#{{k,1} => {v,2}}},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,"("},{location,"zlc_SUITE.erl",241}]}.
    {call,2,{f,193}}. % strict_list_mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
  {label,126}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,178},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,178},[{x,1}]}.
    {test,test_arity,{f,178},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,178},
          [{x,1},{literal,{bad_generators,{[],{{k,1},{v,2},none}}}}]}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",243}]}.
    {call,2,{f,196}}. % strict_list_strict_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,'+inf'}},nil}}]}}.
    {test,is_nil,{f,177},[{tr,{x,0},{t_list,{t_integer,{8,'+inf'}},nil}}]}.
    {move,{literal,[{i,10},{i,20}]},{x,1}}.
    {move,{literal,[{i,1},{i,2}]},{x,0}}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",244}]}.
    {call,2,{f,196}}. % strict_list_strict_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,176},
          [{tr,{x,0},{t_list,{t_integer,{8,'+inf'}},nil}},{literal,[11,22]}]}.
    {'catch',{y,18},{f,127}}.
    {move,{literal,[{i,10},{i,15},{i,20}]},{x,1}}.
    {move,{literal,[{i,3},bad,{i,5}]},{x,0}}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",246}]}.
    {call,2,{f,196}}. % strict_list_strict_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,'+inf'}},nil}}]}}.
  {label,127}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,175},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,175},[{x,1}]}.
    {test,test_arity,{f,175},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,175},
          [{x,1},{literal,{bad_generators,{[bad,{i,5}],[{i,15},{i,20}]}}}]}.
    {'catch',{y,17},{f,128}}.
    {move,{literal,[{i,10},{wrong_tag,7},{i,20}]},{x,1}}.
    {move,{literal,[{i,3},{i,4},{i,5}]},{x,0}}.
    {line,[{scope,"$"},{location,"zlc_SUITE.erl",248}]}.
    {call,2,{f,196}}. % strict_list_strict_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,'+inf'}},nil}}]}}.
  {label,128}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,174},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,174},[{x,1}]}.
    {test,test_arity,{f,174},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,174},
          [{x,1},
           {literal,{bad_generators,{[{i,4},{i,5}],[{wrong_tag,7},{i,20}]}}}]}.
    {'catch',{y,16},{f,129}}.
    {move,{literal,[{i,10},{wrong_tag,7},{i,20}]},{x,1}}.
    {move,{literal,[{i,3},{a,b,c},{i,5}]},{x,0}}.
    {line,[{scope,"\""},{location,"zlc_SUITE.erl",250}]}.
    {call,2,{f,196}}. % strict_list_strict_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,'+inf'}},nil}}]}}.
  {label,129}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,173},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,173},[{x,1}]}.
    {test,test_arity,{f,173},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,173},
          [{x,1},
           {literal,{bad_generators,{[{a,b,c},{i,5}],
                                     [{wrong_tag,7},{i,20}]}}}]}.
    {'catch',{y,15},{f,130}}.
    {move,{literal,[{i,7}]},{x,1}}.
    {move,{literal,[{i,3},{i,5}]},{x,0}}.
    {line,[{scope," "},{location,"zlc_SUITE.erl",252}]}.
    {call,2,{f,196}}. % strict_list_strict_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,'+inf'}},nil}}]}}.
  {label,130}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,172},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,172},[{x,1}]}.
    {test,test_arity,{f,172},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,172},[{x,1},{literal,{bad_generators,{[{i,5}],[]}}}]}.
    {move,nil,{x,1}}.
    {move,{literal,<<>>},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",254}]}.
    {call,3,{f,198}}. % strict_list_strict_2/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_nil,{f,171},[{tr,{x,0},{t_list,{t_number,any},nil}}]}.
    {move,{literal,[{i,2},{i,7}]},{x,1}}.
    {move,{literal,<<3,9>>},{x,2}}.
    {move,{literal,[{i,1},{i,2}]},{x,0}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",255}]}.
    {call,3,{f,198}}. % strict_list_strict_2/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,170},
          [{tr,{x,0},{t_list,{t_number,any},nil}},{literal,[5,23]}]}.
    {move,{y,14},{x,0}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",256}]}.
    {call,1,{f,489}}. % '-strict_list/1-lc$^6/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {move,{x,0},{y,22}}.
    {move,{y,14},{x,0}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",257}]}.
    {call,1,{f,485}}. % '-strict_list/1-lc$^8/1-6-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_atom,[i]},2 => {t_number,any}}},
                     nil}}]}}.
    {move,{x,0},{y,21}}.
    {move,{y,14},{x,0}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",258}]}.
    {call,1,{f,481}}. % '-strict_list/1-lc$^7/1-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_atom,[i]},2 => {t_number,any}}},
                     nil}}]}}.
    {move,{x,0},{y,20}}.
    {move,{y,14},{x,0}}.
    {init_yregs,{list,[{y,14}]}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",259}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {move,{y,20},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,21},{x,0}}.
    {init_yregs,{list,[{y,20},{y,21}]}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",257}]}.
    {call,3,{f,198}}. % strict_list_strict_2/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,146},
          [{tr,{x,0},{t_list,{t_number,any},nil}},
           {tr,{y,22},{t_list,{t_number,any},nil}}]}.
    {'catch',{y,14},{f,131}}.
    {move,{literal,[{i,2},{i,7}]},{x,1}}.
    {move,{literal,<<3,9:7>>},{x,2}}.
    {init_yregs,{list,[{y,22}]}}.
    {move,{literal,[{i,1},{i,2}]},{x,0}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",261}]}.
    {call,3,{f,198}}. % strict_list_strict_2/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
  {label,131}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,169},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,169},[{x,1}]}.
    {test,test_arity,{f,169},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,169},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,169},[{x,1}]}.
    {test,test_arity,{f,169},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,169},[{x,2},{literal,[{i,2}]}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,169},[{x,2},{literal,[{i,7}]}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,bs_start_match3,{f,169},2,[{x,1}],{x,1}}.
    {bs_match,{f,169},{x,1},{commands,[{ensure_exactly,7},{'=:=',nil,7,9}]}}.
    {'catch',{y,13},{f,132}}.
    {move,nil,{x,1}}.
    {move,nil,{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[28]},{location,"zlc_SUITE.erl",263}]}.
    {call,3,{f,198}}. % strict_list_strict_2/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
  {label,132}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,168},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,168},[{x,1}]}.
    {test,test_arity,{f,168},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{literal,{bad_generators,{[],[],[]}}}]}.
    {'catch',{y,12},{f,133}}.
    {move,nil,{x,1}}.
    {move,{literal,<<>>},{x,2}}.
    {move,{literal,[{i,0}]},{x,0}}.
    {line,[{scope,[26]},{location,"zlc_SUITE.erl",265}]}.
    {call,3,{f,198}}. % strict_list_strict_2/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
  {label,133}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,167},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,167},[{x,1}]}.
    {test,test_arity,{f,167},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,167},
          [{x,1},{literal,{bad_generators,{[{i,0}],[],<<>>}}}]}.
    {'catch',{y,11},{f,134}}.
    {move,{literal,[{bad,5}]},{x,1}}.
    {move,{literal,<<"c">>},{x,2}}.
    {move,{literal,[{i,0}]},{x,0}}.
    {line,[{scope,[24]},{location,"zlc_SUITE.erl",267}]}.
    {call,3,{f,198}}. % strict_list_strict_2/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
  {label,134}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,166},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,166},[{x,1}]}.
    {test,test_arity,{f,166},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,166},
          [{x,1},{literal,{bad_generators,{[{i,0}],[{bad,5}],<<"c">>}}}]}.
    {'catch',{y,10},{f,135}}.
    {move,{literal,[{i,21}]},{x,1}}.
    {move,{literal,<<42:7>>},{x,2}}.
    {move,{literal,[{i,20}]},{x,0}}.
    {line,[{scope,[22]},{location,"zlc_SUITE.erl",269}]}.
    {call,3,{f,198}}. % strict_list_strict_2/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
  {label,135}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,165},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,165},[{x,2},{literal,[{i,20}]}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,165},[{x,2},{literal,[{i,21}]}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,bs_start_match3,{f,165},2,[{x,1}],{x,1}}.
    {bs_match,{f,165},{x,1},{commands,[{ensure_exactly,7},{'=:=',nil,7,42}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",271}]}.
    {call,2,{f,200}}. % strict_list_strict_3/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_nil,{f,164},[{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}}]}.
    {move,{literal,<<3>>},{x,1}}.
    {move,{literal,[{i,42}]},{x,0}}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",272}]}.
    {call,2,{f,200}}. % strict_list_strict_3/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,163},
          [{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}},{literal,"-"}]}.
    {'catch',{y,9},{f,136}}.
    {move,{literal,<<1,2>>},{x,1}}.
    {move,{literal,[{i,1}]},{x,0}}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",274}]}.
    {call,2,{f,200}}. % strict_list_strict_3/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
  {label,136}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,162},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,162},[{x,1},{literal,{bad_generators,{[],<<2>>}}}]}.
    {'catch',{y,8},{f,137}}.
    {move,{literal,<<0:7>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[18]},{location,"zlc_SUITE.erl",276}]}.
    {call,2,{f,200}}. % strict_list_strict_3/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
  {label,137}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,161},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,161},[{x,1}]}.
    {test,test_arity,{f,161},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,161},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,161},[{x,1}]}.
    {test,test_arity,{f,161},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_nil,{f,161},[{x,2}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,161},2,[{x,1}],{x,1}}.
    {bs_match,{f,161},{x,1},{commands,[{ensure_exactly,7},{'=:=',nil,7,0}]}}.
    {'catch',{y,7},{f,138}}.
    {move,{literal,<<0:7>>},{x,1}}.
    {move,{literal,[{i,1}]},{x,0}}.
    {line,[{scope,[16]},{location,"zlc_SUITE.erl",278}]}.
    {call,2,{f,200}}. % strict_list_strict_3/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
  {label,138}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,160},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,160},[{x,1}]}.
    {test,test_arity,{f,160},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,160},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,160},[{x,1}]}.
    {test,test_arity,{f,160},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,160},[{x,2},{literal,[{i,1}]}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,160},2,[{x,1}],{x,1}}.
    {bs_match,{f,160},{x,1},{commands,[{ensure_exactly,7},{'=:=',nil,7,0}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",280}]}.
    {call,2,{f,202}}. % strict_list_strict_4/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{100,100}},nil}}]}}.
    {test,is_nil,{f,159},[{tr,{x,0},{t_list,{t_integer,{100,100}},nil}}]}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,[{i,100}]},{x,0}}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",281}]}.
    {call,2,{f,202}}. % strict_list_strict_4/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{100,100}},nil}}]}}.
    {test,is_eq_exact,
          {f,158},
          [{tr,{x,0},{t_list,{t_integer,{100,100}},nil}},{literal,"d"}]}.
    {'catch',{y,6},{f,139}}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{literal,[{i,100}]},{x,0}}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",283}]}.
    {call,2,{f,202}}. % strict_list_strict_4/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{100,100}},nil}}]}}.
  {label,139}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,157},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,157},[{x,1}]}.
    {test,test_arity,{f,157},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,157},
          [{x,1},{literal,{bad_generators,{[{i,100}],<<0>>}}}]}.
    {'catch',{y,5},{f,140}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,[{i,100}]},{x,0}}.
    {line,[{scope,"\f"},{location,"zlc_SUITE.erl",285}]}.
    {call,2,{f,202}}. % strict_list_strict_4/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{100,100}},nil}}]}}.
  {label,140}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,156},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,156},[{x,1}]}.
    {test,test_arity,{f,156},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,156},
          [{x,1},{literal,{bad_generators,{[{i,100}],<<>>}}}]}.
    {'catch',{y,4},{f,141}}.
    {move,{literal,<<0,1:1>>},{x,1}}.
    {move,{literal,[{i,100}]},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",287}]}.
    {call,2,{f,202}}. % strict_list_strict_4/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{100,100}},nil}}]}}.
  {label,141}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,155},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,155},[{x,1}]}.
    {test,test_arity,{f,155},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,155},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,155},[{x,1}]}.
    {test,test_arity,{f,155},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,155},[{x,2},{literal,[{i,100}]}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,155},2,[{x,1}],{x,1}}.
    {bs_match,{f,155},{x,1},{commands,[{ensure_exactly,9},{'=:=',nil,9,1}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",290}]}.
    {call,2,{f,204}}. % strict_list_5/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_nil,{f,154},[{tr,{x,0},{t_list,{t_float,any},nil}}]}.
    {move,{literal,<<32,0,0,0,0,64,64,9,30,184,81,235,133,31>>},{x,1}}.
    {move,{literal,<<1:2>>},{x,0}}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",291}]}.
    {call,2,{f,204}}. % strict_list_5/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,153},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[3.14]}]}.
    {move,{literal,<<32,0,0,0,0,64,64,9,30,184,81,235,133,31>>},{x,1}}.
    {move,{literal,<<3:2>>},{x,0}}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",292}]}.
    {call,2,{f,204}}. % strict_list_5/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,152},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[0.0,3.14]}]}.
    {'catch',{y,3},{f,142}}.
    {move,{literal,<<64,64,69,0,0,0,0,0,0>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",294}]}.
    {call,2,{f,204}}. % strict_list_5/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
  {label,142}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,151},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,151},[{x,1}]}.
    {test,test_arity,{f,151},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,151},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,151},[{x,1}]}.
    {test,test_arity,{f,151},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,151},[{x,2},{literal,<<>>}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,151},2,[{x,1}],{x,1}}.
    {bs_match,{f,151},
              {x,1},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,64}]}}.
    {test,bs_get_float2,
          {f,151},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[293,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,151},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,151},{x,1},{commands,[{ensure_exactly,0}]}}.
    {'catch',{y,2},{f,143}}.
    {move,{literal,<<117,255,255,255,255,255,255,255,255,255,255,255,255,255,
                     255,249,2,12,64,0,0:5>>},
          {x,1}}.
    {move,{literal,<<1:2>>},{x,0}}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",297}]}.
    {call,2,{f,204}}. % strict_list_5/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
  {label,143}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,150},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,150},[{x,1}]}.
    {test,test_arity,{f,150},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,150},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,150},[{x,1}]}.
    {test,test_arity,{f,150},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,bs_start_match3,{f,150},3,[{x,2}],{x,2}}.
    {bs_match,{f,150},{x,2},{commands,[{ensure_exactly,2},{'=:=',nil,2,1}]}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,150},2,[{x,1}],{x,1}}.
    {test,bs_match_string,
          {f,150},
          [{x,1},
           133,
           {string,<<117,255,255,255,255,255,255,255,255,255,255,255,255,
                     255,255,249,0>>}]}.
    {test,bs_get_float2,
          {f,150},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[295,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,150},[{tr,{x,2},{t_float,any}},{float,17.0}]}.
    {bs_match,{f,150},{x,1},{commands,[{ensure_exactly,0}]}}.
    {'catch',{y,1},{f,144}}.
    {move,{literal,<<32,66,40,0,0,64,255,255,255,255,255,255,255,255>>},{x,1}}.
    {move,{literal,<<2:2>>},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",299}]}.
    {call,2,{f,204}}. % strict_list_5/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
  {label,144}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,149},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,149},[{x,1}]}.
    {test,test_arity,{f,149},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,149},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,149},[{x,1}]}.
    {test,test_arity,{f,149},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,bs_start_match3,{f,149},3,[{x,2}],{x,2}}.
    {bs_match,{f,149},{x,2},{commands,[{ensure_exactly,1},{'=:=',nil,1,0}]}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,149},2,[{x,1}],{x,1}}.
    {bs_match,{f,149},
              {x,1},
              {commands,[{ensure_at_least,8,8},
                         {'=:=',nil,8,64},
                         {get_tail,2,8,{x,1}}]}}.
    {test,is_eq_exact,
          {f,149},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<"ÿÿÿÿÿÿÿÿ">>}]}.
    {'catch',{y,0},{f,145}}.
    {move,{literal,<<32,66,40,0,0,64,255,255,255,255,255,255,255,255>>},{x,1}}.
    {move,{literal,<<3:2>>},{x,0}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",301}]}.
    {call,2,{f,204}}. % strict_list_5/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
  {label,145}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,148},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,148},[{x,1}]}.
    {test,test_arity,{f,148},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,148},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,148},[{x,1}]}.
    {test,test_arity,{f,148},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,bs_start_match3,{f,148},3,[{x,2}],{x,2}}.
    {bs_match,{f,148},{x,2},{commands,[{ensure_exactly,1},{'=:=',nil,1,1}]}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,148},2,[{x,1}],{x,1}}.
    {bs_match,{f,148},
              {x,1},
              {commands,[{ensure_at_least,8,8},
                         {'=:=',nil,8,64},
                         {get_tail,2,8,{x,1}}]}}.
    {test,is_eq_exact,
          {f,148},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<"ÿÿÿÿÿÿÿÿ">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,23}.
    return.
  {label,146}.
    {test_heap,19,1}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,expected},{y,22}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{expression,"strict_list_strict_2 ( [ { i , 2 * I } || I <- Seq100 ] , [ { i , 3 * I } || I <- Seq100 ] , list_to_binary ( Seq100 ) )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,259}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",259}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},23}.
  {label,147}.
    {test_heap,19,1}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,expected},{y,22}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{expression,"strict_list_mixed_2 ( [ { i , I } || I <- Seq100 ] , # { { k , 3 * I } => { v , 7 * I } || I <- Seq100 } )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,236}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",236}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},23}.
  {label,148}.
    {line,[{scope,[0]},{location,"zlc_SUITE.erl",300}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",298}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",295}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",293}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",292}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",291}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",290}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",286}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",284}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,"\f"},{location,"zlc_SUITE.erl",282}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",281}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",280}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",277}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[16]},{location,"zlc_SUITE.erl",275}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[18]},{location,"zlc_SUITE.erl",273}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",272}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",271}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",268}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[22]},{location,"zlc_SUITE.erl",266}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,[24]},{location,"zlc_SUITE.erl",264}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{scope,[26]},{location,"zlc_SUITE.erl",262}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,[28]},{location,"zlc_SUITE.erl",260}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",255}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",254}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",251}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope," "},{location,"zlc_SUITE.erl",249}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,"\""},{location,"zlc_SUITE.erl",247}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,"$"},{location,"zlc_SUITE.erl",245}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",244}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",243}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",240}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,"("},{location,"zlc_SUITE.erl",238}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",231}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",230}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",229}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",226}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,","},{location,"zlc_SUITE.erl",224}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",223}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",222}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",221}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",219}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",218}]}.
    {badmatch,{x,0}}.


{function, strict_list_mixed_1, 2, 191}.
  {label,190}.
    {line,[{location,"zlc_SUITE.erl",305}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_list_mixed_1},2}.
  {label,191}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[bad]},
                         none,none,
                         [{{2,{t_atom,[i]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[i]},2 => {t_integer,{1,5}}}}}],
                         none},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[bad]},
                         none,none,
                         [{{2,{t_atom,[i]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[i]},
                                 2 => {t_integer,{10,20}}}}}],
                         none},
                     nil}}]}}.
    {call_only,2,{f,476}}. % '-strict_list_mixed_1/2-zlc$^0/2-0-'/2


{function, strict_list_mixed_2, 2, 193}.
  {label,192}.
    {line,[{location,"zlc_SUITE.erl",308}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_list_mixed_2},2}.
  {label,193}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_integer,{3,3}}}}},
                          {{2,{t_atom,[i]}},
                           {t_tuple,2,true,#{1 => {t_atom,[i]}}}}],
                         none},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_integer,{0,0}}}}},
                          {{2,{t_atom,[k]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[k]},2 => {t_number,any}}}}],
                         none},
                     {t_union,none,none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_integer,{0,0}}}}},
                          {{2,{t_atom,[v]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[v]},2 => {t_number,any}}}}],
                         none}}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",309}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"zlc_SUITE.erl",310}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,194},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,194}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,470},2}. % '-strict_list_mixed_2/2-zlc$^0/2-0-'/2


{function, strict_list_strict_1, 2, 196}.
  {label,195}.
    {line,[{location,"zlc_SUITE.erl",312}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_list_strict_1},2}.
  {label,196}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[bad]},
                         none,none,
                         [{{2,{t_atom,[i]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[i]},2 => {t_integer,{1,5}}}}},
                          {{3,{t_atom,[a]}},
                           {t_tuple,3,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[c]}}}}],
                         none},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[i]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[i]},2 => {t_integer,{7,20}}}}},
                          {{2,{t_atom,[wrong_tag]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[wrong_tag]},
                                 2 => {t_integer,{7,7}}}}}],
                         none},
                     nil}}]}}.
    {call_only,2,{f,466}}. % '-strict_list_strict_1/2-zlc$^0/2-0-'/2


{function, strict_list_strict_2, 3, 198}.
  {label,197}.
    {line,[{location,"zlc_SUITE.erl",315}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_list_strict_2},3}.
  {label,198}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_atom,[i]},2 => {t_number,any}}},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[bad]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[bad]},2 => {t_integer,{5,5}}}}},
                          {{2,{t_atom,[i]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[i]},2 => {t_number,any}}}}],
                         none},
                     nil}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,nil,none,none,{t_bitstring,1,false}}},
                    accepts_match_context]}}.
    {call_only,3,{f,461}}. % '-strict_list_strict_2/3-zlc$^0/3-0-'/3


{function, strict_list_strict_3, 2, 200}.
  {label,199}.
    {line,[{location,"zlc_SUITE.erl",318}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_list_strict_3},2}.
  {label,200}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[i]},2 => {t_integer,{1,42}}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {call_only,2,{f,457}}. % '-strict_list_strict_3/2-zlc$^0/2-0-'/2


{function, strict_list_strict_4, 2, 202}.
  {label,201}.
    {line,[{location,"zlc_SUITE.erl",321}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_list_strict_4},2}.
  {label,202}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[i]},2 => {t_integer,{100,100}}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {call_only,2,{f,453}}. % '-strict_list_strict_4/2-zlc$^0/2-0-'/2


{function, strict_list_5, 2, 204}.
  {label,203}.
    {line,[{location,"zlc_SUITE.erl",324}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_list_5},2}.
  {label,204}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,2,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"zlc_SUITE.erl",325}]}.
    {call,2,{f,448}}. % '-strict_list_5/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"zlc_SUITE.erl",326}]}.
    {call,2,{f,443}}. % '-strict_list_5/2-zlc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,205},
          [{tr,{x,0},{t_list,{t_float,any},nil}},
           {tr,{y,0},{t_list,{t_float,any},nil}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,205}.
    {badmatch,{x,0}}.


{function, strict_binary, 1, 207}.
  {label,206}.
    {line,[{location,"zlc_SUITE.erl",329}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_binary},1}.
  {label,207}.
    {test,is_list,{f,206},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,100},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",330}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",332}]}.
    {call,3,{f,439}}. % '-strict_binary/1-bzip$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,236},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<2,4,6>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{literal,[{1,1},{2,2},{2,3}]},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",333}]}.
    {call,3,{f,434}}. % '-strict_binary/1-bzip$^1/3-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,235},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<2,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,4}}.
    {move,{literal,#{1 => 2,3 => 4}},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",334}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,208},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => 2,3 => 4}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,208}.
    {move,{y,4},{x,2}}.
    {move,{literal,<<1,2>>},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {call,3,{f,429}}. % '-strict_binary/1-bzip$^2/3-2-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,234},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<2,24>>}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",336}]}.
    {call,2,{f,238}}. % strict_binary_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,233},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{literal,<<4>>},{x,1}}.
    {move,{literal,#{2 => {val,3}}},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",337}]}.
    {call,2,{f,238}}. % strict_binary_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,232},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<0,0,0,0,0,0,0,24>>}]}.
    {gc_bif,length,{f,209},0,[{y,1}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}],
            {x,0}}.
    {jump,{f,210}}.
  {label,209}.
    {move,{integer,256},{x,0}}.
  {label,210}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",338}]}.
    {call,2,{f,425}}. % '-strict_binary/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,4}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",339}]}.
    {call,1,{f,421}}. % '-strict_binary/1-lc$^4/1-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},
                           2 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[val]},
                                     2 => {t_number,any}}}}},
                     nil}}]}}.
    {line,[{scope,"\n"}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",339}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",340}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",339}]}.
    {call,2,{f,238}}. % strict_binary_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,223},
          [{tr,{x,0},{t_bitstring,256,true}},
           {tr,{y,4},{t_bitstring,64,true}}]}.
    {'catch',{y,4},{f,211}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",341}]}.
    {call,2,{f,238}}. % strict_binary_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,211}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,231},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,231},[{x,1}]}.
    {test,test_arity,{f,231},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,231},
          [{x,1},{literal,{bad_generators,{none,<<"*">>}}}]}.
    {'catch',{y,3},{f,212}}.
    {move,{literal,<<42:7>>},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",342}]}.
    {call,2,{f,238}}. % strict_binary_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,212}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,230},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,230},[{x,1}]}.
    {test,test_arity,{f,230},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,230},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,230},[{x,1},2,{atom,none}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,230},2,[{x,1}],{x,1}}.
    {bs_match,{f,230},{x,1},{commands,[{ensure_exactly,7},{'=:=',nil,7,42}]}}.
    {'catch',{y,2},{f,213}}.
    {move,{literal,<<0,0:4>>},{x,1}}.
    {move,{literal,#{2 => {val,3}}},{x,0}}.
    {line,[{scope,[7,8]},{location,"zlc_SUITE.erl",343}]}.
    {call,2,{f,238}}. % strict_binary_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,213}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,229},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,229},[{x,1}]}.
    {test,test_arity,{f,229},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,229},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,229},[{x,1},2,{atom,none}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,229},2,[{x,1}],{x,1}}.
    {bs_match,{f,229},{x,1},{commands,[{ensure_exactly,4},{'=:=',nil,4,0}]}}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"zlc_SUITE.erl",345}]}.
    {call,3,{f,243}}. % strict_binary_mixed_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{literal,<<1:2>>},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",346}]}.
    {call,3,{f,243}}. % strict_binary_mixed_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,227},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{literal,#{0 => {v,0}}},{x,1}}.
    {move,{literal,#{1 => {v,999}}},{x,2}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",347}]}.
    {call,3,{f,243}}. % strict_binary_mixed_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<0,0,0,0,0,0,3,231>>}]}.
    {gc_bif,length,{f,214},0,[{y,1}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}],
            {x,0}}.
    {jump,{f,215}}.
  {label,214}.
    {move,{integer,256},{x,0}}.
  {label,215}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",348}]}.
    {call,2,{f,417}}. % '-strict_binary/1-lbc$^6/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,4}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",350}]}.
    {call,1,{f,413}}. % '-strict_binary/1-lc$^8/1-6-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{2 => {t_tuple,2,true,#{1 => {t_atom,[v]}}}}},
                     nil}}]}}.
    {line,[{scope,[4]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",351}]}.
    {call,1,{f,409}}. % '-strict_binary/1-lc$^7/1-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},
                           2 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[v]},2 => {t_number,any}}}}},
                     nil}}]}}.
    {line,[{scope,[4]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{x,2}}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0:4>>},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",349}]}.
    {call,3,{f,243}}. % strict_binary_mixed_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,222},
          [{tr,{x,0},{t_bitstring,256,true}},
           {tr,{y,4},{t_bitstring,64,true}}]}.
    {gc_bif,length,{f,216},0,[{y,1}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}],
            {x,0}}.
    {jump,{f,217}}.
  {label,216}.
    {move,{integer,256},{x,0}}.
  {label,217}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",352}]}.
    {call,2,{f,405}}. % '-strict_binary/1-lbc$^10/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,4}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",354}]}.
    {call,1,{f,401}}. % '-strict_binary/1-lc$^12/1-9-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{2 => {t_tuple,2,true,#{1 => {t_atom,[v]}}}}},
                     nil}}]}}.
    {line,[{scope,[4]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",355}]}.
    {call,1,{f,397}}. % '-strict_binary/1-lc$^11/1-10-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},
                           2 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[v]},2 => {t_number,any}}}}},
                     nil}}]}}.
    {line,[{scope,[4]}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{x,2}}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{literal,<<255,255,255,255,255,255,255,255,255,255,255,255,15:4>>},
          {x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",353}]}.
    {call,3,{f,243}}. % strict_binary_mixed_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,221},
          [{tr,{x,0},{t_bitstring,256,true}},
           {tr,{y,4},{t_bitstring,64,true}}]}.
    {'catch',{y,1},{f,218}}.
    {move,{literal,#{0 => 0}},{x,1}}.
    {move,{literal,#{0 => {v,7}}},{x,2}}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",357}]}.
    {call,3,{f,243}}. % strict_binary_mixed_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,218}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,225},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,225},[{x,1}]}.
    {test,test_arity,{f,225},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,225},[{x,1},2,{atom,bad_generators}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,225},[{x,1}]}.
    {test,test_arity,{f,225},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,bs_start_match3,{f,225},3,[{x,2}],{x,2}}.
    {bs_match,{f,225},{x,2},{commands,[{ensure_exactly,1},{'=:=',nil,1,0}]}}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,225},[{x,2},{literal,{0,0,none}}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,225},[{x,1},{literal,{0,{v,7},none}}]}.
    {move,{literal,<<"skÃ¤rgÃ¥rdsÃ¶">>},{x,0}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",360}]}.
    {call,1,{f,394}}. % '-strict_binary/1-lc$^14/1-11-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {line,[{location,"zlc_SUITE.erl",360}]}.
    {gc_bif,length,
            {f,0},
            1,
            [{tr,{x,0},{t_list,{t_integer,{0,1114111}},nil}}],
            {x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",360}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,4}}.
    {move,{literal,<<"skÃ¤rgÃ¥rdsÃ¶">>},{x,0}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",362}]}.
    {call,1,{f,391}}. % '-strict_binary/1-lc$^15/1-12-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {line,[]}.
    {gc_bif,length,
            {f,0},
            1,
            [{tr,{x,0},
                 {t_list,{t_tuple,2,true,#{2 => {t_integer,{0,1114111}}}},
                         nil}}],
            {x,1}}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,5}],
            {x,1}}.
    {move,{x,0},{y,3}}.
    {move,{x,1},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",361}]}.
    {call,2,{f,388}}. % '-strict_binary/1-lbc$^16/2-13-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {swap,{y,4},{x,0}}.
    {move,{literal,<<"skÃ¤rgÃ¥rdsÃ¶">>},{x,1}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",363}]}.
    {call,2,{f,241}}. % strict_binary_utf8/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,220},
          [{tr,{x,0},{t_bitstring,256,true}},{tr,{y,4},{t_bitstring,8,true}}]}.
    {'catch',{y,0},{f,219}}.
    {move,{integer,8},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",365}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{literal,<<"abcÿÿdef">>},{x,1}}.
    {call,2,{f,241}}. % strict_binary_utf8/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,219}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,224},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,224},[{x,1}]}.
    {test,test_arity,{f,224},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,224},
          [{x,1},{literal,{bad_generators,{[4,5,6,7,8],<<"ÿÿdef">>}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,220}.
    {test_heap,19,1}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,expected},{y,4}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{expression,"strict_binary_utf8 ( IslandSeq , Island )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,363}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",363}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,221}.
    {test_heap,19,1}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,expected},{y,4}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{expression,"strict_binary_mixed_1 ( << - 1 : 100 >> , # { I => { v , I } || I <- Seq100 } , # { I => { v , - I } || I <- Seq100 } )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,355}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",355}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,222}.
    {test_heap,19,1}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,expected},{y,4}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{expression,"strict_binary_mixed_1 ( << 0 : 100 >> , # { I => { v , I } || I <- Seq100 } , # { I => { v , - I } || I <- Seq100 } )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,351}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",351}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,223}.
    {test_heap,19,1}.
    {put_tuple2,{x,0},{list,[{atom,value},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,expected},{y,4}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{expression,"strict_binary_1 ( maps : iterator ( # { 5 * I => { val , 3 * I } || I <- Seq100 } , ordered ) , list_to_binary ( Seq100 ) )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,340}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",340}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,224}.
    {line,[{scope,[0]},{location,"zlc_SUITE.erl",364}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",356}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",346}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",342}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",337}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",336}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",334}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",333}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",332}]}.
    {badmatch,{x,0}}.


{function, strict_binary_1, 2, 238}.
  {label,237}.
    {line,[{location,"zlc_SUITE.erl",369}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_binary_1},2}.
  {label,238}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",370}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,239},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,239}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {call_last,3,{f,383},3}. % '-strict_binary_1/2-bzip$^0/3-0-'/3


{function, strict_binary_utf8, 2, 241}.
  {label,240}.
    {line,[{location,"zlc_SUITE.erl",372}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_binary_utf8},2}.
  {label,241}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,379},2}. % '-strict_binary_utf8/2-bzip$^0/3-0-'/3


{function, strict_binary_mixed_1, 3, 243}.
  {label,242}.
    {line,[{location,"zlc_SUITE.erl",375}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_binary_mixed_1},3}.
  {label,243}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,any,
                     {t_union,none,none,
                         {t_integer,{0,0}},
                         [{{2,{t_atom,[v]}},
                           {t_tuple,2,true,#{1 => {t_atom,[v]}}}}],
                         none}}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_map,
                     {t_number,any},
                     {t_tuple,2,true,
                         #{1 => {t_atom,[v]},2 => {t_number,any}}}}}]}}.
    {allocate,5,3}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,2},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,1},{x,0}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",376}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {swap,{y,3},{x,0}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",377}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,1}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",381}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,244},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,3}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,244}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{y,2},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,245},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,245}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{y,4},{x,0}}.
    {call_last,4,{f,370},5}. % '-strict_binary_mixed_1/3-bzip$^0/4-0-'/4


{function, nomatch, 1, 247}.
  {label,246}.
    {line,[{location,"zlc_SUITE.erl",383}]}.
    {func_info,{atom,zlc_SUITE},{atom,nomatch},1}.
  {label,247}.
    {test,is_list,{f,246},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"zlc_SUITE.erl",384}]}.
    {call,2,{f,257}}. % do_nomatch_1/2
    {test,is_nil,{f,255},[{x,0}]}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",385}]}.
    {call,2,{f,257}}. % do_nomatch_1/2
    {test,is_nil,{f,254},[{x,0}]}.
    {move,{literal,[a,b]},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",386}]}.
    {call,2,{f,257}}. % do_nomatch_1/2
    {test,is_nil,{f,253},[{x,0}]}.
    {move,nil,{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",387}]}.
    {call,2,{f,257}}. % do_nomatch_1/2
    {test,is_tagged_tuple,{f,252},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,252},[{x,1}]}.
    {test,test_arity,{f,252},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,252},[{x,1},{literal,{bad_generators,{[1,2,3],[]}}}]}.
    {move,{literal,[a,b]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",388}]}.
    {call,2,{f,257}}. % do_nomatch_1/2
    {test,is_tagged_tuple,{f,251},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,251},[{x,1}]}.
    {test,test_arity,{f,251},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,251},[{x,1},{literal,{bad_generators,{[3],[]}}}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"zlc_SUITE.erl",390}]}.
    {call,2,{f,260}}. % do_nomatch_2/2
    {test,is_eq_exact,{f,250},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<1>>},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",391}]}.
    {call,2,{f,260}}. % do_nomatch_2/2
    {test,is_eq_exact,{f,249},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<3>>},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",392}]}.
    {call,2,{f,260}}. % do_nomatch_2/2
    {test,is_tagged_tuple,{f,248},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,248},[{x,1}]}.
    {test,test_arity,{f,248},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,248},[{x,1},{literal,{bad_generators,{[2],<<>>}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,248}.
    {badmatch,{x,0}}.
  {label,249}.
    {line,[{location,"zlc_SUITE.erl",391}]}.
    {badmatch,{x,0}}.
  {label,250}.
    {line,[{location,"zlc_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,251}.
    {line,[{location,"zlc_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,252}.
    {line,[{location,"zlc_SUITE.erl",387}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{location,"zlc_SUITE.erl",386}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{location,"zlc_SUITE.erl",385}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{location,"zlc_SUITE.erl",384}]}.
    {badmatch,{x,0}}.


{function, do_nomatch_1, 2, 257}.
  {label,256}.
    {line,[{location,"zlc_SUITE.erl",395}]}.
    {func_info,{atom,zlc_SUITE},{atom,do_nomatch_1},2}.
  {label,257}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {allocate,1,2}.
    {'catch',{y,0},{f,258}}.
    {line,[{location,"zlc_SUITE.erl",396}]}.
    {call,2,{f,366}}. % '-do_nomatch_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,258}.
    {catch_end,{y,0}}.
    {deallocate,1}.
    return.


{function, do_nomatch_2, 2, 260}.
  {label,259}.
    {line,[{location,"zlc_SUITE.erl",398}]}.
    {func_info,{atom,zlc_SUITE},{atom,do_nomatch_2},2}.
  {label,260}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,{t_atom,[a]},none,{t_integer,{1,2}},none,none},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {'catch',{y,2},{f,261}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"zlc_SUITE.erl",399}]}.
    {call,3,{f,362}}. % '-do_nomatch_2/2-bzip$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,261}.
    {catch_end,{y,2}}.
    {deallocate,3}.
    return.


{function, bad_generators, 1, 263}.
  {label,262}.
    {line,[{location,"zlc_SUITE.erl",401}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators},1}.
  {label,263}.
    {test,is_list,{f,262},[{x,0}]}.
    {allocate,11,0}.
    {init_yregs,{list,[{y,0},
                       {y,1},
                       {y,2},
                       {y,3},
                       {y,4},
                       {y,5},
                       {y,6},
                       {y,7},
                       {y,8},
                       {y,9}]}}.
    {'catch',{y,10},{f,264}}.
    {move,{literal,[1,2]},{x,1}}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",403}]}.
    {call,2,{f,360}}. % '-bad_generators/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,264}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,286},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,286},[{x,1}]}.
    {test,test_arity,{f,286},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,286},[{x,1},{literal,{bad_generators,{x,[1,2]}}}]}.
    {'catch',{y,9},{f,265}}.
    {move,{literal,[1,2,3,4]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",405}]}.
    {call,2,{f,356}}. % '-bad_generators/1-zlc$^1/2-1-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,3}},2 => {t_integer,{1,4}}}},
                     nil}}]}}.
  {label,265}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,285},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,285},[{x,1}]}.
    {test,test_arity,{f,285},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,285},[{x,1},{literal,{bad_generators,{[],[4]}}}]}.
    {'catch',{y,8},{f,266}}.
    {move,{literal,[1,2]},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,[18]},{location,"zlc_SUITE.erl",407}]}.
    {call,2,{f,351}}. % '-bad_generators/1-zlc$^2/2-2-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,2}},2 => {t_integer,{1,2}}}},
                     nil}}]}}.
  {label,266}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,284},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,284},[{x,1}]}.
    {test,test_arity,{f,284},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,284},[{x,1},{literal,{bad_generators,{[3,4],[]}}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {'catch',{y,7},{f,267}}.
    {move,{literal,[1,2]},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,[16]},{location,"zlc_SUITE.erl",409}]}.
    {call,3,{f,346}}. % '-bad_generators/1-bzip$^3/3-3-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,267}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,283},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,283},[{x,1}]}.
    {test,test_arity,{f,283},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,283},[{x,1},{literal,{bad_generators,{[3,4],[]}}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {'catch',{y,6},{f,268}}.
    {move,{atom,a},{x,1}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",411}]}.
    {call,3,{f,344}}. % '-bad_generators/1-bzip$^4/3-4-'/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,268}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,282},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,282},[{x,1}]}.
    {test,test_arity,{f,282},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,282},[{x,1},{literal,{bad_generators,{<<1,2>>,a}}}]}.
    {'catch',{y,5},{f,270}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\f"},{location,"zlc_SUITE.erl",412}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,269},[{x,0}]}.
    {move,{literal,{bad_generator,a}},{x,0}}.
    {line,[{scope,"\v"},{location,"zlc_SUITE.erl",412}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {jump,{f,270}}.
  {label,269}.
    {move,{literal,[1]},{x,1}}.
    {call,2,{f,338}}. % '-bad_generators/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,270}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,281},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,281},[{x,1}]}.
    {test,test_arity,{f,281},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,281},[{x,1},{literal,{bad_generator,a}}]}.
    {'catch',{y,4},{f,271}}.
    {move,{literal,[1,2,3]},{x,1}}.
    {move,{literal,[a,b,c,d]},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",414}]}.
    {call,2,{f,333}}. % '-bad_generators/1-zlc$^6/2-6-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c,d]},2 => {t_integer,{2,3}}}},
                     nil}}]}}.
    {line,[{scope,"\n"}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
  {label,271}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,280},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,280},[{x,1}]}.
    {test,test_arity,{f,280},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,280},[{x,1},{literal,{bad_generators,{[d],[]}}}]}.
    {'catch',{y,3},{f,272}}.
    {move,{literal,[1,2,3,4]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",425}]}.
    {call,2,{f,297}}. % bad_generators/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_union,
                                   {t_atom,[a,b,c]},
                                   none,
                                   {t_integer,{1,3}},
                                   none,none},
                           2 =>
                               {t_union,
                                   {t_atom,[a,b,c,d]},
                                   none,
                                   {t_integer,{1,4}},
                                   none,none}}},
                     nil}}]}}.
  {label,272}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,279},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,279},[{x,1}]}.
    {test,test_arity,{f,279},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,279},[{x,2},{literal,{bad_generators,{[],[4]}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,279},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,279},[{x,1},4,{atom,zlc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,279},
          [{x,1},{literal,[{file,"bad_zlc.erl"},{line,4}]}]}.
    {'catch',{y,2},{f,273}}.
    {move,{literal,[2,3]},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",430}]}.
    {call,2,{f,299}}. % bad_generators_bc/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,273}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,278},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,278},[{x,1}]}.
    {test,test_arity,{f,278},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,278},[{x,2},{literal,{bad_generators,{a,[2,3]}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,278},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,278},[{x,1},4,{atom,zlc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,278},
          [{x,1},{literal,[{file,"bad_zlc.erl"},{line,7}]}]}.
    {'catch',{y,1},{f,274}}.
    {move,{literal,[1]},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",435}]}.
    {call,2,{f,301}}. % bad_generators_mc/2
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_integer,{1,2}},{t_integer,{1,1}}}}]}}.
  {label,274}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,277},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,277},[{x,1}]}.
    {test,test_arity,{f,277},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,277},[{x,2},{literal,{bad_generators,{[2],[]}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,277},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,277},[{x,1},4,{atom,zlc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,277},
          [{x,1},{literal,[{file,"bad_zlc.erl"},{line,10}]}]}.
    {'catch',{y,0},{f,275}}.
    {move,{literal,[a,b,c,d]},{x,1}}.
    {move,{literal,[a,b,c|d]},{x,0}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",441}]}.
    {call,2,{f,297}}. % bad_generators/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_union,
                                   {t_atom,[a,b,c]},
                                   none,
                                   {t_integer,{1,3}},
                                   none,none},
                           2 =>
                               {t_union,
                                   {t_atom,[a,b,c,d]},
                                   none,
                                   {t_integer,{1,4}},
                                   none,none}}},
                     nil}}]}}.
  {label,275}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,276},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,276},[{x,1}]}.
    {test,test_arity,{f,276},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,276},[{x,2},{literal,{bad_generators,{d,[d]}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,276},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,276},[{x,1},4,{atom,zlc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,276},
          [{x,1},{literal,[{file,"bad_zlc.erl"},{line,4}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,11}.
    return.
  {label,276}.
    {line,[{scope,[0]},{location,"zlc_SUITE.erl",438}]}.
    {badmatch,{x,0}}.
  {label,277}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",432}]}.
    {badmatch,{x,0}}.
  {label,278}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,279}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",422}]}.
    {badmatch,{x,0}}.
  {label,280}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",413}]}.
    {badmatch,{x,0}}.
  {label,281}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,282}.
    {line,[{scope,"\f"},{location,"zlc_SUITE.erl",410}]}.
    {badmatch,{x,0}}.
  {label,283}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",408}]}.
    {badmatch,{x,0}}.
  {label,284}.
    {line,[{scope,[16]},{location,"zlc_SUITE.erl",406}]}.
    {badmatch,{x,0}}.
  {label,285}.
    {line,[{scope,[18]},{location,"zlc_SUITE.erl",404}]}.
    {badmatch,{x,0}}.
  {label,286}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",402}]}.
    {badmatch,{x,0}}.


{function, cover, 1, 288}.
  {label,287}.
    {line,[{location,"zlc_SUITE.erl",446}]}.
    {func_info,{atom,zlc_SUITE},{atom,cover},1}.
  {label,288}.
    {test,is_list,{f,287},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"zlc_SUITE.erl",447}]}.
    {call,2,{f,292}}. % do_cover_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_nil,{f,290},[{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}}]}.
    {move,{literal,"\n\n\n"},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",448}]}.
    {call,2,{f,292}}. % do_cover_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,289},
          [{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}},
           {literal,"\v\f\r"}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,289}.
    {badmatch,{x,0}}.
  {label,290}.
    {line,[{location,"zlc_SUITE.erl",447}]}.
    {badmatch,{x,0}}.


{function, do_cover_1, 2, 292}.
  {label,291}.
    {line,[{location,"zlc_SUITE.erl",452}]}.
    {func_info,{atom,zlc_SUITE},{atom,do_cover_1},2}.
  {label,292}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"zlc_SUITE.erl",453}]}.
    {call,2,{f,329}}. % '-do_cover_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {move,{y,2},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",454}]}.
    {call,2,{f,325}}. % '-do_cover_1/2-zlc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,295},
          [{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}},
           {tr,{y,0},{t_list,{t_integer,{11,'+inf'}},nil}}]}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",458}]}.
    {call,2,{f,321}}. % '-do_cover_1/2-zlc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,294},
          [{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}},
           {tr,{y,0},{t_list,{t_integer,{11,'+inf'}},nil}}]}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"zlc_SUITE.erl",463}]}.
    {call,2,{f,317}}. % '-do_cover_1/2-zlc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,293},
          [{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}},
           {tr,{y,0},{t_list,{t_integer,{11,'+inf'}},nil}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,293}.
    {line,[{location,"zlc_SUITE.erl",462}]}.
    {badmatch,{x,0}}.
  {label,294}.
    {line,[{location,"zlc_SUITE.erl",457}]}.
    {badmatch,{x,0}}.
  {label,295}.
    {line,[{location,"zlc_SUITE.erl",454}]}.
    {badmatch,{x,0}}.


{function, bad_generators, 2, 297}.
  {label,296}.
    {line,[{location,"bad_zlc.erl",2}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators},2}.
  {label,297}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[a,b,c]},
                         none,
                         {t_integer,{1,3}},
                         none,none},
                     {t_union,{t_atom,[d]},nil,none,none,none}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[a,b,c,d]},
                         none,
                         {t_integer,{1,4}},
                         none,none},
                     nil}}]}}.
    {call_only,2,{f,313}}. % '-bad_generators/2-zlc$^0/2-0-'/2


{function, bad_generators_bc, 2, 299}.
  {label,298}.
    {line,[{location,"bad_zlc.erl",5}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators_bc},2}.
  {label,299}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{2,3}},nil}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,1}}.
    {move,{atom,a},{x,0}}.
    {call_last,3,{f,311},1}. % '-bad_generators_bc/2-bzip$^0/3-0-'/3


{function, bad_generators_mc, 2, 301}.
  {label,300}.
    {line,[{location,"bad_zlc.erl",8}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators_mc},2}.
  {label,301}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,1}},nil}}]}}.
    {allocate,0,2}.
    {line,[{location,"bad_zlc.erl",10}]}.
    {call,2,{f,307}}. % '-bad_generators_mc/2-zlc$^0/2-0-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,2}},2 => {t_integer,{1,1}}}},
                     nil}}]}}.
    {line,[]}.
    {call_ext_last,1,{extfunc,maps,from_list,1},0}.


{function, module_info, 0, 303}.
  {label,302}.
    {line,[]}.
    {func_info,{atom,zlc_SUITE},{atom,module_info},0}.
  {label,303}.
    {move,{atom,zlc_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 305}.
  {label,304}.
    {line,[]}.
    {func_info,{atom,zlc_SUITE},{atom,module_info},1}.
  {label,305}.
    {move,{x,0},{x,1}}.
    {move,{atom,zlc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-bad_generators_mc/2-zlc$^0/2-0-', 2, 307}.
  {label,306}.
    {line,[{location,"bad_zlc.erl",10}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators_mc/2-zlc$^0/2-0-'},2}.
  {label,307}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,308},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,309},[{x,1}]}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,307}}. % '-bad_generators_mc/2-zlc$^0/2-0-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,2}},2 => {t_integer,{1,1}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{integer,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,308}.
    {test,is_nil,{f,309},[{tr,{x,1},{t_list,{t_integer,{1,1}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,309}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators_bc/2-bzip$^0/3-0-', 3, 311}.
  {label,310}.
    {line,[{location,"bad_zlc.erl",6}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators_bc/2-bzip$^0/3-0-'},3}.
  {label,311}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{2,3}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"bad_zlc.erl",7}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/2-zlc$^0/2-0-', 2, 313}.
  {label,312}.
    {line,[{location,"bad_zlc.erl",4}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/2-zlc$^0/2-0-'},2}.
  {label,313}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[d]},
                     {t_list,
                         {t_union,
                             {t_atom,[a,b,c]},
                             none,
                             {t_integer,{1,3}},
                             none,none},
                         {t_union,{t_atom,[d]},nil,none,none,none}},
                     none,none,none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a,b,c,d]},
                         none,
                         {t_integer,{1,4}},
                         none,none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,314},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,315},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,313}}. % '-bad_generators/2-zlc$^0/2-0-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_union,
                                   {t_atom,[a,b,c]},
                                   none,
                                   {t_integer,{1,3}},
                                   none,none},
                           2 =>
                               {t_union,
                                   {t_atom,[a,b,c,d]},
                                   none,
                                   {t_integer,{1,4}},
                                   none,none}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,314}.
    {test,is_nil,
          {f,315},
          [{tr,{x,0},{t_union,{t_atom,[d]},nil,none,none,none}}]}.
    {test,is_nil,
          {f,315},
          [{tr,{x,1},
               {t_list,{t_union,{t_atom,[a,b,c,d]},
                                none,
                                {t_integer,{1,4}},
                                none,none},
                       nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,315}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_cover_1/2-zlc$^3/2-3-', 2, 317}.
  {label,316}.
    {line,[{location,"zlc_SUITE.erl",463}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_cover_1/2-zlc$^3/2-3-'},2}.
  {label,317}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {test,is_nonempty_list,{f,318},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,319},[{x,1}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tl,{x,1},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",462}]}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_integer,{1,3}}},{integer,10}],{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",463}]}.
    {call,2,{f,317}}. % '-do_cover_1/2-zlc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,318}.
    {test,is_nil,{f,319},[{tr,{x,1},{t_list,{t_integer,{10,10}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,319}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",465}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_cover_1/2-zlc$^2/2-2-', 2, 321}.
  {label,320}.
    {line,[{location,"zlc_SUITE.erl",458}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_cover_1/2-zlc$^2/2-2-'},2}.
  {label,321}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {test,is_nonempty_list,{f,322},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,323},[{x,1}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tl,{x,1},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",457}]}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_integer,{1,3}}},{integer,10}],{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",458}]}.
    {call,2,{f,321}}. % '-do_cover_1/2-zlc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,322}.
    {test,is_nil,{f,323},[{tr,{x,1},{t_list,{t_integer,{10,10}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,323}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",459}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_cover_1/2-zlc$^1/2-1-', 2, 325}.
  {label,324}.
    {line,[{location,"zlc_SUITE.erl",454}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_cover_1/2-zlc$^1/2-1-'},2}.
  {label,325}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {test,is_nonempty_list,{f,326},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,327},[{x,1}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tl,{x,1},{x,1}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_integer,{1,3}}},{integer,10}],{y,0}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,325}}. % '-do_cover_1/2-zlc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,326}.
    {test,is_nil,{f,327},[{tr,{x,1},{t_list,{t_integer,{10,10}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,327}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",455}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_cover_1/2-zlc$^0/2-0-', 2, 329}.
  {label,328}.
    {line,[{location,"zlc_SUITE.erl",453}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_cover_1/2-zlc$^0/2-0-'},2}.
  {label,329}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {test,is_nonempty_list,{f,330},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,331},[{x,1}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tl,{x,1},{x,1}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_integer,{1,3}}},{integer,10}],{y,0}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,329}}. % '-do_cover_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,330}.
    {test,is_nil,{f,331},[{tr,{x,1},{t_list,{t_integer,{10,10}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,331}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^6/2-6-', 2, 333}.
  {label,332}.
    {line,[{location,"zlc_SUITE.erl",414}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^6/2-6-'},2}.
  {label,333}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c,d]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,335},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,336},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_ge,{f,334},[{tr,{x,0},{t_integer,{1,3}}},{integer,2}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,333}}. % '-bad_generators/1-zlc$^6/2-6-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c,d]},2 => {t_integer,{2,3}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,334}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,333}}. % '-bad_generators/1-zlc$^6/2-6-'/2
  {label,335}.
    {test,is_nil,{f,336},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,336}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^5/2-5-', 2, 338}.
  {label,337}.
    {line,[{location,"zlc_SUITE.erl",412}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^5/2-5-'},2}.
  {label,338}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,339},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,338},1}. % '-bad_generators/1-zlc$^5/2-5-'/2
  {label,339}.
    {test,is_tuple,{f,341},[{x,0}]}.
    {test,test_arity,{f,342},[{x,0},3]}.
    {test,is_nonempty_list,{f,342},[{x,1}]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,340},[{x,3},{x,2}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,338}}. % '-bad_generators/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,340}.
    {call_only,2,{f,338}}. % '-bad_generators/1-zlc$^5/2-5-'/2
  {label,341}.
    {test,is_eq_exact,{f,342},[{x,0},{atom,none}]}.
    {test,is_nil,{f,342},[{tr,{x,1},{t_list,{t_integer,{1,1}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,342}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-bzip$^4/3-4-', 3, 344}.
  {label,343}.
    {line,[{location,"zlc_SUITE.erl",411}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-bzip$^4/3-4-'},3}.
  {label,344}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,a}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-bzip$^3/3-3-', 3, 346}.
  {label,345}.
    {line,[{location,"zlc_SUITE.erl",409}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-bzip$^3/3-3-'},3}.
  {label,346}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,348},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,349},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_ge,{f,347},[{integer,2},{tr,{x,3},{t_integer,{1,4}}}]}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,3},{t_integer,{1,2}}},{tr,{x,0},{t_integer,{1,2}}}],
            {x,0}}.
    {bs_create_bin,{f,0},
                   0,5,8,
                   {x,0},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{2,4}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
  {label,347}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,346}}. % '-bad_generators/1-bzip$^3/3-3-'/3
  {label,348}.
    {test,is_nil,{f,349},[{tr,{x,1},{t_list,{t_integer,{1,2}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,349}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^2/2-2-', 2, 351}.
  {label,350}.
    {line,[{location,"zlc_SUITE.erl",407}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^2/2-2-'},2}.
  {label,351}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {test,is_nonempty_list,{f,353},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,354},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_ge,{f,352},[{integer,2},{tr,{x,2},{t_integer,{1,4}}}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,351}}. % '-bad_generators/1-zlc$^2/2-2-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,2}},2 => {t_integer,{1,2}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,352}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,351}}. % '-bad_generators/1-zlc$^2/2-2-'/2
  {label,353}.
    {test,is_nil,{f,354},[{tr,{x,1},{t_list,{t_integer,{1,2}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,354}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^1/2-1-', 2, 356}.
  {label,355}.
    {line,[{location,"zlc_SUITE.erl",405}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^1/2-1-'},2}.
  {label,356}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {test,is_nonempty_list,{f,357},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,358},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,356}}. % '-bad_generators/1-zlc$^1/2-1-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,3}},2 => {t_integer,{1,4}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,357}.
    {test,is_nil,{f,358},[{tr,{x,1},{t_list,{t_integer,{1,4}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,358}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^0/2-0-', 2, 360}.
  {label,359}.
    {line,[{location,"zlc_SUITE.erl",403}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^0/2-0-'},2}.
  {label,360}.
    {'%',{var_info,{x,0},[{type,{t_atom,[x]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_nomatch_2/2-bzip$^0/3-0-', 3, 362}.
  {label,361}.
    {line,[{location,"zlc_SUITE.erl",399}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_nomatch_2/2-bzip$^0/3-0-'},3}.
  {label,362}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,{t_atom,[a]},none,{t_integer,{1,2}},none,none},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {bs_match,{f,363},{x,1},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,is_nonempty_list,{f,363},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,3,{f,362}}. % '-do_nomatch_2/2-bzip$^0/3-0-'/3
  {label,363}.
    {test,is_nil,
          {f,364},
          [{tr,{x,0},
               {t_list,{t_union,{t_atom,[a]},none,{t_integer,{1,2}},none,none},
                       nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,364}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_nomatch_1/2-zlc$^0/2-0-', 2, 366}.
  {label,365}.
    {line,[{location,"zlc_SUITE.erl",396}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_nomatch_1/2-zlc$^0/2-0-'},2}.
  {label,366}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {test,is_nonempty_list,{f,367},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_nonempty_list,{f,368},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,366}}. % '-do_nomatch_1/2-zlc$^0/2-0-'/2
  {label,367}.
    {test,is_nil,{f,368},[{tr,{x,1},{t_list,{t_atom,[a,b]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,368}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary_mixed_1/3-bzip$^0/4-0-', 4, 370}.
  {label,369}.
    {line,[{location,"zlc_SUITE.erl",378}]}.
    {func_info,{atom,zlc_SUITE},
               {atom,'-strict_binary_mixed_1/3-bzip$^0/4-0-'},
               4}.
  {label,370}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,4},4}.
    {bs_match,{f,374},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,5,{literal,[]},1,1,{x,5}}]}}.
    {test,is_tuple,{f,374},[{x,1}]}.
    {test,test_arity,{f,374},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,6}}.
    {test,is_tagged_tuple,{f,374},[{x,6},2,{atom,v}]}.
    {test,is_tuple,{f,374},[{x,2}]}.
    {test,test_arity,{f,374},[{x,2},3]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,2},1,{x,4}}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,373},[{x,4},2,{atom,v}]}.
    {test,is_eq_exact,{f,371},[{x,5},{integer,0}]}.
    {get_tuple_element,{x,6},1,{x,4}}.
    {line,[{location,"zlc_SUITE.erl",379}]}.
    {bs_create_bin,{f,0},
                   0,5,64,
                   {x,4},
                   {list,[{atom,integer},1,1,nil,{x,4},{integer,64}]}}.
    {jump,{f,372}}.
  {label,371}.
    {get_tuple_element,{x,4},1,{x,4}}.
    {line,[{location,"zlc_SUITE.erl",380}]}.
    {bs_create_bin,{f,0},
                   0,5,64,
                   {x,4},
                   {list,[{atom,integer},1,1,nil,{x,4},{integer,64}]}}.
  {label,372}.
    {line,[{location,"zlc_SUITE.erl",378}]}.
    {bs_create_bin,{f,0},
                   0,5,64,
                   {x,4},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,3},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {tr,{x,4},{t_bitstring,64,false}},
                          {atom,all}]}}.
    {'%',{var_info,{x,4},[{type,{t_bitstring,64,true}}]}}.
    {call_only,4,{f,370}}. % '-strict_binary_mixed_1/3-bzip$^0/4-0-'/4
  {label,373}.
    {call_only,4,{f,370}}. % '-strict_binary_mixed_1/3-bzip$^0/4-0-'/4
  {label,374}.
    {test,is_eq_exact,{f,375},[{x,1},{atom,none}]}.
    {test,is_eq_exact,{f,375},[{x,2},{atom,none}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,375}.
    {test,is_nonempty_list,{f,376},[{x,1}]}.
    {allocate,4,5}.
    {move,{x,4},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",381}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,2},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,3},{x,3}}.
    {move,{y,1},{x,0}}.
    {call_last,4,{f,370},4}. % '-strict_binary_mixed_1/3-bzip$^0/4-0-'/4
  {label,376}.
    {test,is_nonempty_list,{f,377},[{x,2}]}.
    {allocate,4,5}.
    {move,{x,4},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{x,2},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,3}}.
    {move,{y,1},{x,0}}.
    {call_last,4,{f,370},4}. % '-strict_binary_mixed_1/3-bzip$^0/4-0-'/4
  {label,377}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary_utf8/2-bzip$^0/3-0-', 3, 379}.
  {label,378}.
    {line,[{location,"zlc_SUITE.erl",373}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary_utf8/2-bzip$^0/3-0-'},3}.
  {label,379}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {test,bs_get_utf8,
          {f,380},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {field_flags,[{anno,[373,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,4}}.
    {test,is_nonempty_list,{f,380},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {bs_create_bin,{f,0},
                   0,5,8,
                   {x,3},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,3},
                          {integer,8},
                          {atom,integer},
                          3,1,nil,
                          {tr,{x,4},{t_integer,{0,1114111}}},
                          {integer,32}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,8,true}}]}}.
    {call_only,3,{f,379}}. % '-strict_binary_utf8/2-bzip$^0/3-0-'/3
  {label,380}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_match,{f,381},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,{f,381},[{x,0}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,381}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary_1/2-bzip$^0/3-0-', 3, 383}.
  {label,382}.
    {line,[{location,"zlc_SUITE.erl",370}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary_1/2-bzip$^0/3-0-'},3}.
  {label,383}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {bs_match,{f,384},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_tuple,{f,384},[{x,0}]}.
    {test,test_arity,{f,384},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {test,is_tagged_tuple,{f,384},[{x,5},2,{atom,val}]}.
    {get_tuple_element,{x,5},1,{x,3}}.
    {get_tuple_element,{x,0},0,{x,5}}.
    {gc_bif,'*',{f,0},6,[{x,5},{x,3}],{x,3}}.
    {gc_bif,'*',
            {f,0},
            5,
            [{tr,{x,3},{t_number,any}},{tr,{x,4},{t_integer,{0,255}}}],
            {x,3}}.
    {bs_create_bin,{f,0},
                   0,4,64,
                   {x,3},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_number,any}},
                          {integer,64}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,64,true}}]}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,3,{f,383}}. % '-strict_binary_1/2-bzip$^0/3-0-'/3
  {label,384}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_match,{f,385},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,385},[{x,0},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,385}.
    {test,is_nonempty_list,{f,386},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,383},2}. % '-strict_binary_1/2-bzip$^0/3-0-'/3
  {label,386}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lbc$^16/2-13-', 2, 388}.
  {label,387}.
    {line,[{location,"zlc_SUITE.erl",361}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lbc$^16/2-13-'},2}.
  {label,388}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{2 => {t_integer,{0,1114111}}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,389},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,3},
                          {integer,8},
                          {atom,integer},
                          3,1,nil,
                          {tr,{x,2},{t_integer,{0,1114111}}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,388}}. % '-strict_binary/1-lbc$^16/2-13-'/2
  {label,389}.
    {move,{x,1},{x,0}}.
    return.


{function, '-strict_binary/1-lc$^15/1-12-', 1, 391}.
  {label,390}.
    {line,[{location,"zlc_SUITE.erl",362}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^15/1-12-'},1}.
  {label,391}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,392},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[362,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,391}}. % '-strict_binary/1-lc$^15/1-12-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,392}.
    {move,nil,{x,0}}.
    return.


{function, '-strict_binary/1-lc$^14/1-11-', 1, 394}.
  {label,393}.
    {line,[{location,"zlc_SUITE.erl",360}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^14/1-11-'},1}.
  {label,394}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,395},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[360,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,394}}. % '-strict_binary/1-lc$^14/1-11-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,395}.
    {move,nil,{x,0}}.
    return.


{function, '-strict_binary/1-lc$^11/1-10-', 1, 397}.
  {label,396}.
    {line,[{location,"zlc_SUITE.erl",355}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^11/1-10-'},1}.
  {label,397}.
    {test,is_nonempty_list,{f,398},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'-',{f,0},2,[{x,1}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,397}}. % '-strict_binary/1-lc$^11/1-10-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},
                           2 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[v]},2 => {t_number,any}}}}},
                     nil}}]}}.
    {test_heap,8,1}.
    {put_tuple2,{x,1},{list,[{atom,v},{y,1}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,398}.
    {test,is_nil,{f,399},[{x,0}]}.
    return.
  {label,399}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lc$^12/1-9-', 1, 401}.
  {label,400}.
    {line,[{location,"zlc_SUITE.erl",354}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^12/1-9-'},1}.
  {label,401}.
    {test,is_nonempty_list,{f,402},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,401}}. % '-strict_binary/1-lc$^12/1-9-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{2 => {t_tuple,2,true,#{1 => {t_atom,[v]}}}}},
                     nil}}]}}.
    {test_heap,8,1}.
    {put_tuple2,{x,1},{list,[{atom,v},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,402}.
    {test,is_nil,{f,403},[{x,0}]}.
    return.
  {label,403}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lbc$^10/2-8-', 2, 405}.
  {label,404}.
    {line,[{location,"zlc_SUITE.erl",352}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lbc$^10/2-8-'},2}.
  {label,405}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,406},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'-',{f,0},3,[{x,2}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,64,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,64,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_number,any}},
                          {integer,64}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {call_only,2,{f,405}}. % '-strict_binary/1-lbc$^10/2-8-'/2
  {label,406}.
    {test,is_nil,{f,407},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,407}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lc$^7/1-7-', 1, 409}.
  {label,408}.
    {line,[{location,"zlc_SUITE.erl",351}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^7/1-7-'},1}.
  {label,409}.
    {test,is_nonempty_list,{f,410},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'-',{f,0},2,[{x,1}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,409}}. % '-strict_binary/1-lc$^7/1-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},
                           2 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[v]},2 => {t_number,any}}}}},
                     nil}}]}}.
    {test_heap,8,1}.
    {put_tuple2,{x,1},{list,[{atom,v},{y,1}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,410}.
    {test,is_nil,{f,411},[{x,0}]}.
    return.
  {label,411}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lc$^8/1-6-', 1, 413}.
  {label,412}.
    {line,[{location,"zlc_SUITE.erl",350}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^8/1-6-'},1}.
  {label,413}.
    {test,is_nonempty_list,{f,414},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,413}}. % '-strict_binary/1-lc$^8/1-6-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{2 => {t_tuple,2,true,#{1 => {t_atom,[v]}}}}},
                     nil}}]}}.
    {test_heap,8,1}.
    {put_tuple2,{x,1},{list,[{atom,v},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,414}.
    {test,is_nil,{f,415},[{x,0}]}.
    return.
  {label,415}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lbc$^6/2-5-', 2, 417}.
  {label,416}.
    {line,[{location,"zlc_SUITE.erl",348}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lbc$^6/2-5-'},2}.
  {label,417}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,418},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,64,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,64,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,64}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {call_only,2,{f,417}}. % '-strict_binary/1-lbc$^6/2-5-'/2
  {label,418}.
    {test,is_nil,{f,419},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,419}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lc$^4/1-4-', 1, 421}.
  {label,420}.
    {line,[{location,"zlc_SUITE.erl",339}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^4/1-4-'},1}.
  {label,421}.
    {test,is_nonempty_list,{f,422},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,5}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,3}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,421}}. % '-strict_binary/1-lc$^4/1-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},
                           2 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[val]},
                                     2 => {t_number,any}}}}},
                     nil}}]}}.
    {test_heap,8,1}.
    {put_tuple2,{x,1},{list,[{atom,val},{y,1}]}}.
    {put_tuple2,{x,1},{list,[{y,0},{x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,422}.
    {test,is_nil,{f,423},[{x,0}]}.
    return.
  {label,423}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lbc$^3/2-3-', 2, 425}.
  {label,424}.
    {line,[{location,"zlc_SUITE.erl",338}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lbc$^3/2-3-'},2}.
  {label,425}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,426},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'*',{f,0},3,[{x,2},{integer,5}],{x,3}}.
    {gc_bif,'*',{f,0},4,[{tr,{x,3},{t_number,any}},{integer,3}],{x,3}}.
    {gc_bif,'*',
            {f,0},
            4,
            [{tr,{x,3},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,3}}.
    {gc_bif,'*',
            {f,0},
            4,
            [{tr,{x,3},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,2}}.
    {bs_create_bin,{f,0},
                   0,3,64,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,64,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_number,any}},
                          {integer,64}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {call_only,2,{f,425}}. % '-strict_binary/1-lbc$^3/2-3-'/2
  {label,426}.
    {test,is_nil,{f,427},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,427}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-bzip$^2/3-2-', 3, 429}.
  {label,428}.
    {line,[{location,"zlc_SUITE.erl",334}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-bzip$^2/3-2-'},3}.
  {label,429}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {bs_match,{f,430},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_tuple,{f,430},[{x,0}]}.
    {test,test_arity,{f,430},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,3}}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {gc_bif,'*',{f,0},6,[{x,3},{x,5}],{x,3}}.
    {gc_bif,'*',
            {f,0},
            5,
            [{tr,{x,3},{t_number,any}},{tr,{x,4},{t_integer,{0,255}}}],
            {x,3}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,3},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_number,any}},
                          {integer,8}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,8,true}}]}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,3,{f,429}}. % '-strict_binary/1-bzip$^2/3-2-'/3
  {label,430}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_match,{f,431},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,431},[{x,0},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,431}.
    {test,is_nonempty_list,{f,432},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,429},2}. % '-strict_binary/1-bzip$^2/3-2-'/3
  {label,432}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-bzip$^1/3-1-', 3, 434}.
  {label,433}.
    {line,[{location,"zlc_SUITE.erl",333}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-bzip$^1/3-1-'},3}.
  {label,434}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_integer,{1,1}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{1,1}},
                                 2 => {t_integer,{1,1}}}}},
                          {{2,{t_integer,{2,2}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{2,2}},
                                 2 => {t_integer,{2,3}}}}}],
                         none},
                     nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,436},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,436},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {get_tuple_element,{x,3},0,{x,5}}.
    {test,is_eq_exact,
          {f,435},
          [{tr,{x,5},{t_integer,{1,2}}},{tr,{x,4},{t_integer,{0,255}}}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,4},{t_integer,{1,2}}},{tr,{x,3},{t_integer,{1,3}}}],
            {x,3}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,3},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{2,5}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,8,true}}]}}.
    {call_only,3,{f,434}}. % '-strict_binary/1-bzip$^1/3-1-'/3
  {label,435}.
    {call_only,3,{f,434}}. % '-strict_binary/1-bzip$^1/3-1-'/3
  {label,436}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,437},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,
        {f,437},
        [{tr,{x,1},
             {t_list,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_integer,{1,1}}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_integer,{2,3}}}}}],
                     none},
                 nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,437}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-bzip$^0/3-0-', 3, 439}.
  {label,438}.
    {line,[{location,"zlc_SUITE.erl",332}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-bzip$^0/3-0-'},3}.
  {label,439}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {bs_match,{f,440},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,440},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,3},{t_integer,{1,3}}},{tr,{x,4},{t_integer,{0,255}}}],
            {x,3}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,3},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{1,258}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,8,true}}]}}.
    {call_only,3,{f,439}}. % '-strict_binary/1-bzip$^0/3-0-'/3
  {label,440}.
    {test,is_nil,{f,441},[{tr,{x,0},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,441}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_5/2-zlc$^1/2-1-', 2, 443}.
  {label,442}.
    {line,[{location,"zlc_SUITE.erl",326}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list_5/2-zlc$^1/2-1-'},2}.
  {label,443}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,444},
              {x,0},
              {commands,[{ensure_at_least,1,1},{'=:=',nil,1,1}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {bs_match,{f,444},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_float2,
          {f,444},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[326,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {call,2,{f,443}}. % '-strict_list_5/2-zlc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,444}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,445},{x,0},{commands,[{ensure_at_least,1,1},{skip,1}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {bs_match,{f,445},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_float2,
          {f,445},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[326,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {call_only,2,{f,443}}. % '-strict_list_5/2-zlc$^1/2-1-'/2
  {label,445}.
    {test,is_eq_exact,
          {f,446},
          [{tr,{x,1},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.
  {label,446}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_5/2-zlc$^0/2-0-', 2, 448}.
  {label,447}.
    {line,[{location,"zlc_SUITE.erl",325}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list_5/2-zlc$^0/2-0-'},2}.
  {label,448}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,450},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,3,{literal,[]},1,1,{x,3}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {bs_match,{f,450},
              {x,4},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,bs_get_float2,
          {f,450},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[325,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,1},6}.
    {test,is_eq_exact,{f,449},[{tr,{x,3},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,1,6}.
    {move,{x,5},{y,0}}.
    {call,2,{f,448}}. % '-strict_list_5/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,449}.
    {call_only,2,{f,448}}. % '-strict_list_5/2-zlc$^0/2-0-'/2
  {label,450}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test,is_eq_exact,
          {f,451},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {test,is_eq_exact,
          {f,451},
          [{tr,{x,1},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.
  {label,451}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_strict_4/2-zlc$^0/2-0-', 2, 453}.
  {label,452}.
    {line,[{location,"zlc_SUITE.erl",322}]}.
    {func_info,{atom,zlc_SUITE},
               {atom,'-strict_list_strict_4/2-zlc$^0/2-0-'},
               2}.
  {label,453}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[i]},2 => {t_integer,{100,100}}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,454},
              {x,1},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,42}]}}.
    {test,is_nonempty_list,{f,454},[{x,0}]}.
    {allocate,0,2}.
    {get_tl,{x,0},{x,0}}.
    {call,2,{f,453}}. % '-strict_list_strict_4/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{100,100}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,100},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,454}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,455},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,
          {f,455},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[i]},
                                  2 => {t_integer,{100,100}}}},
                       nil}}]}.
    return.
  {label,455}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_strict_3/2-zlc$^0/2-0-', 2, 457}.
  {label,456}.
    {line,[{location,"zlc_SUITE.erl",319}]}.
    {func_info,{atom,zlc_SUITE},
               {atom,'-strict_list_strict_3/2-zlc$^0/2-0-'},
               2}.
  {label,457}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[i]},2 => {t_integer,{1,42}}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,458},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,458},[{x,0}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{1,42}}},{tr,{x,3},{t_integer,{0,255}}}],
            {y,0}}.
    {call,2,{f,457}}. % '-strict_list_strict_3/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,458}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,459},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,
          {f,459},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[i]},2 => {t_integer,{1,42}}}},
                       nil}}]}.
    return.
  {label,459}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_strict_2/3-zlc$^0/3-0-', 3, 461}.
  {label,460}.
    {line,[{location,"zlc_SUITE.erl",316}]}.
    {func_info,{atom,zlc_SUITE},
               {atom,'-strict_list_strict_2/3-zlc$^0/3-0-'},
               3}.
  {label,461}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_atom,[i]},2 => {t_number,any}}},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[bad]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[bad]},2 => {t_integer,{5,5}}}}},
                          {{2,{t_atom,[i]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[i]},2 => {t_number,any}}}}],
                         none},
                     nil}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,nil,none,none,{t_bs_matchable,1}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,464},3,[{x,2}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {bs_match,{f,462},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,462},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,6}}.
    {test,is_nonempty_list,{f,462},[{x,1}]}.
    {get_list,{x,1},{x,7},{x,8}}.
    {test,is_tagged_tuple,
          {f,462},
          [{tr,{x,7},
               {t_union,none,none,none,
                        [{{2,{t_atom,[bad]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[bad]},
                                     2 => {t_integer,{5,5}}}}},
                         {{2,{t_atom,[i]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[i]},2 => {t_number,any}}}}],
                        none}},
           2,
           {atom,i}]}.
    {get_tuple_element,{x,7},1,{x,0}}.
    {get_tuple_element,{x,5},1,{x,1}}.
    {gc_bif,'*',
            {f,0},
            9,
            [{tr,{x,1},{t_number,any}},{tr,{x,0},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',
            {f,0},
            9,
            [{tr,{x,0},{t_number,any}},{tr,{x,4},{t_integer,{0,255}}}],
            {x,0}}.
    {allocate,1,9}.
    {move,{x,0},{y,0}}.
    {move,{x,8},{x,1}}.
    {move,{x,6},{x,0}}.
    {call,3,{f,461}}. % '-strict_list_strict_2/3-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,462}.
    {bs_set_position,{x,2},{x,3}}.
    {bs_match,{f,463},{x,2},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,
          {f,463},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[i]},2 => {t_number,any}}},
                       nil}}]}.
    {test,is_nil,
        {f,463},
        [{tr,{x,1},
             {t_list,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[bad]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bad]},2 => {t_integer,{5,5}}}}},
                      {{2,{t_atom,[i]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[i]},2 => {t_number,any}}}}],
                     none},
                 nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,463}.
    {bs_get_tail,{x,2},{x,2},3}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,464}.
    {test_heap,7,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},nil]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_strict_1/2-zlc$^0/2-0-', 2, 466}.
  {label,465}.
    {line,[{location,"zlc_SUITE.erl",313}]}.
    {func_info,{atom,zlc_SUITE},
               {atom,'-strict_list_strict_1/2-zlc$^0/2-0-'},
               2}.
  {label,466}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[bad]},
                         none,none,
                         [{{2,{t_atom,[i]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[i]},2 => {t_integer,{1,5}}}}},
                          {{3,{t_atom,[a]}},
                           {t_tuple,3,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[c]}}}}],
                         none},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[i]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[i]},2 => {t_integer,{7,20}}}}},
                          {{2,{t_atom,[wrong_tag]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[wrong_tag]},
                                 2 => {t_integer,{7,7}}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,467},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,{f,468},[{x,2}]}.
    {test,test_arity,{f,468},[{x,2},2]}.
    {test,is_nonempty_list,{f,468},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,5}}.
    {test,is_tagged_tuple,
          {f,468},
          [{tr,{x,4},
               {t_union,none,none,none,
                        [{{2,{t_atom,[i]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[i]},
                                     2 => {t_integer,{7,20}}}}},
                         {{2,{t_atom,[wrong_tag]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[wrong_tag]},
                                     2 => {t_integer,{7,7}}}}}],
                        none}},
           2,
           {atom,i}]}.
    {allocate,1,6}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tuple_element,{x,4},1,{x,0}}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,1},{t_integer,{1,5}}},{tr,{x,0},{t_integer,{7,20}}}],
            {y,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,466}}. % '-strict_list_strict_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,467}.
    {test,is_nil,
        {f,468},
        [{tr,{x,1},
             {t_list,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[i]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[i]},2 => {t_integer,{7,20}}}}},
                      {{2,{t_atom,[wrong_tag]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[wrong_tag]},
                             2 => {t_integer,{7,7}}}}}],
                     none},
                 nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,468}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_mixed_2/2-zlc$^0/2-0-', 2, 470}.
  {label,469}.
    {line,[{location,"zlc_SUITE.erl",310}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list_mixed_2/2-zlc$^0/2-0-'},2}.
  {label,470}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_integer,{3,3}}}}},
                          {{2,{t_atom,[i]}},
                           {t_tuple,2,true,#{1 => {t_atom,[i]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,472},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tagged_tuple,
          {f,473},
          [{tr,{x,2},
               {t_union,none,none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{3,3}}}}},
                         {{2,{t_atom,[i]}},
                          {t_tuple,2,true,#{1 => {t_atom,[i]}}}}],
                        none}},
           2,
           {atom,i}]}.
    {test,is_tuple,{f,473},[{x,1}]}.
    {test,test_arity,{f,473},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {get_tuple_element,{x,1},2,{x,4}}.
    {test,is_tagged_tuple,{f,471},[{x,0},2,{atom,k}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,471},[{x,1},2,{atom,v}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'*',{f,0},5,[{x,2},{x,0}],{x,0}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,0},{t_number,any}},{x,1}],{x,0}}.
    {allocate,1,5}.
    {move,{x,0},{y,0}}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,470}}. % '-strict_list_mixed_2/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,471}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,470}}. % '-strict_list_mixed_2/2-zlc$^0/2-0-'/2
  {label,472}.
    {test,is_eq_exact,{f,473},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,473}.
    {test,is_nonempty_list,{f,474},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,470},1}. % '-strict_list_mixed_2/2-zlc$^0/2-0-'/2
  {label,474}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_mixed_1/2-zlc$^0/2-0-', 2, 476}.
  {label,475}.
    {line,[{location,"zlc_SUITE.erl",306}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list_mixed_1/2-zlc$^0/2-0-'},2}.
  {label,476}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[bad]},
                         none,none,
                         [{{2,{t_atom,[i]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[i]},2 => {t_integer,{1,5}}}}}],
                         none},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[bad]},
                         none,none,
                         [{{2,{t_atom,[i]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[i]},
                                 2 => {t_integer,{10,20}}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,478},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,
          {f,479},
          [{tr,{x,2},
               {t_union,{t_atom,[bad]},
                        none,none,
                        [{{2,{t_atom,[i]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[i]},
                                     2 => {t_integer,{1,5}}}}}],
                        none}}]}.
    {test,is_nonempty_list,{f,479},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_tuple,
          {f,477},
          [{tr,{x,0},
               {t_union,{t_atom,[bad]},
                        none,none,
                        [{{2,{t_atom,[i]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[i]},
                                     2 => {t_integer,{10,20}}}}}],
                        none}}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{1,5}}},{tr,{x,0},{t_integer,{10,20}}}],
            {y,0}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,476}}. % '-strict_list_mixed_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,477}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,476}}. % '-strict_list_mixed_1/2-zlc$^0/2-0-'/2
  {label,478}.
    {test,is_nil,
        {f,479},
        [{tr,{x,1},
             {t_list,
                 {t_union,
                     {t_atom,[bad]},
                     none,none,
                     [{{2,{t_atom,[i]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[i]},2 => {t_integer,{10,20}}}}}],
                     none},
                 nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,479}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^7/1-7-', 1, 481}.
  {label,480}.
    {line,[{location,"zlc_SUITE.erl",258}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^7/1-7-'},1}.
  {label,481}.
    {test,is_nonempty_list,{f,482},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,481}}. % '-strict_list/1-lc$^7/1-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_atom,[i]},2 => {t_number,any}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,i},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,482}.
    {test,is_nil,{f,483},[{x,0}]}.
    return.
  {label,483}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^8/1-6-', 1, 485}.
  {label,484}.
    {line,[{location,"zlc_SUITE.erl",257}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^8/1-6-'},1}.
  {label,485}.
    {test,is_nonempty_list,{f,486},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,485}}. % '-strict_list/1-lc$^8/1-6-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_atom,[i]},2 => {t_number,any}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,i},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,486}.
    {test,is_nil,{f,487},[{x,0}]}.
    return.
  {label,487}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^6/1-5-', 1, 489}.
  {label,488}.
    {line,[{location,"zlc_SUITE.erl",256}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^6/1-5-'},1}.
  {label,489}.
    {test,is_nonempty_list,{f,490},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,2},{t_number,any}},{integer,3}],{x,2}}.
    {gc_bif,'*',
            {f,0},
            3,
            [{tr,{x,2},{t_number,any}},{tr,{x,1},{t_number,any}}],
            {x,2}}.
    {gc_bif,'+',
            {f,0},
            3,
            [{tr,{x,2},{t_number,any}},{tr,{x,1},{t_number,any}}],
            {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,489}}. % '-strict_list/1-lc$^6/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,490}.
    {test,is_nil,{f,491},[{x,0}]}.
    return.
  {label,491}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^3/1-4-', 1, 493}.
  {label,492}.
    {line,[{location,"zlc_SUITE.erl",236}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^3/1-4-'},1}.
  {label,493}.
    {test,is_nonempty_list,{f,494},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,7}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,493}}. % '-strict_list/1-lc$^3/1-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[k]},2 => {t_number,any}}},
                           2 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[v]},2 => {t_number,any}}}}},
                     nil}}]}}.
    {test_heap,11,1}.
    {put_tuple2,{x,1},{list,[{atom,k},{y,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,v},{y,1}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,494}.
    {test,is_nil,{f,495},[{x,0}]}.
    return.
  {label,495}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^4/1-3-', 1, 497}.
  {label,496}.
    {line,[{location,"zlc_SUITE.erl",235}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^4/1-3-'},1}.
  {label,497}.
    {test,is_nonempty_list,{f,498},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,497}}. % '-strict_list/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[i]}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,i},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,498}.
    {test,is_nil,{f,499},[{x,0}]}.
    return.
  {label,499}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^2/1-2-', 1, 501}.
  {label,500}.
    {line,[{location,"zlc_SUITE.erl",234}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^2/1-2-'},1}.
  {label,501}.
    {test,is_nonempty_list,{f,502},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,2}}.
    {gc_bif,'*',
            {f,0},
            3,
            [{tr,{x,2},{t_number,any}},{tr,{x,1},{t_number,any}}],
            {x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,7}],{x,1}}.
    {gc_bif,'+',
            {f,0},
            3,
            [{tr,{x,2},{t_number,any}},{tr,{x,1},{t_number,any}}],
            {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,501}}. % '-strict_list/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,502}.
    {test,is_nil,{f,503},[{x,0}]}.
    return.
  {label,503}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-zlc$^1/2-1-', 2, 505}.
  {label,504}.
    {line,[{location,"zlc_SUITE.erl",219}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-zlc$^1/2-1-'},2}.
  {label,505}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,507},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,508},[{x,1}]}.
    {get_tl,{x,1},{x,0}}.
    {test,is_ge,{f,506},[{tr,{x,2},{t_integer,{1,3}}},{integer,2}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_integer,{2,3}}},{integer,1}],{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,505}}. % '-strict_list/1-zlc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{3,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,506}.
    {move,{x,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,505}}. % '-strict_list/1-zlc$^1/2-1-'/2
  {label,507}.
    {test,is_nil,{f,508},[{tr,{x,1},{t_list,{t_integer,{1,1}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,508}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-zlc$^0/2-0-', 2, 510}.
  {label,509}.
    {line,[{location,"zlc_SUITE.erl",218}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-zlc$^0/2-0-'},2}.
  {label,510}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,511},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,512},[{x,1}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tl,{x,1},{x,1}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_integer,{1,3}}},{integer,1}],{y,0}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,510}}. % '-strict_list/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{2,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,511}.
    {test,is_nil,{f,512},[{tr,{x,1},{t_list,{t_integer,{1,1}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,512}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-bzip$^6/3-6-', 3, 514}.
  {label,513}.
    {line,[{location,"zlc_SUITE.erl",209}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-bzip$^6/3-6-'},3}.
  {label,514}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,515},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_tuple,{f,516},[{x,1}]}.
    {test,test_arity,{f,516},[{x,1},3]}.
    {allocate,3,5}.
    {move,{x,4},{y,1}}.
    {move,{x,2},{y,2}}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {get_tuple_element,{x,1},2,{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{literal,<<1,255>>},{x,0}}.
    {call,4,{f,519}}. % '-cartesian/1-lbc$^7/2-7-'/4
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,514},3}. % '-cartesian/1-bzip$^6/3-6-'/3
  {label,515}.
    {test,is_eq_exact,{f,516},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,516}.
    {test,is_nonempty_list,{f,517},[{x,1}]}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",211}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,514},2}. % '-cartesian/1-bzip$^6/3-6-'/3
  {label,517}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",210}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-lbc$^7/2-7-', 4, 519}.
  {label,518}.
    {line,[{location,"zlc_SUITE.erl",209}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lbc$^7/2-7-'},4}.
  {label,519}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,3}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_match,{f,520},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,2},{t_integer,{1,3}}},{x,3}],{x,5}}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,5},{t_number,any}},{tr,{x,4},{t_integer,{0,255}}}],
            {x,4}}.
    {bs_create_bin,{f,0},
                   0,5,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,4},{t_number,any}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,4,{f,519}}. % '-cartesian/1-lbc$^7/2-7-'/4
  {label,520}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cartesian/1-zlc$^4/2-4-', 2, 522}.
  {label,521}.
    {line,[{location,"zlc_SUITE.erl",208}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-zlc$^4/2-4-'},2}.
  {label,522}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,523},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {get_tail,4,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,523},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {move,{x,4},{x,2}}.
    {move,{x,1},{x,4}}.
    {move,{x,3},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,5,{f,526}}. % '-cartesian/1-lc$^5/1-5-'/5
  {label,523}.
    {test,is_nil,{f,524},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,524}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",207}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-lc$^5/1-5-', 5, 526}.
  {label,525}.
    {line,[{location,"zlc_SUITE.erl",208}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lc$^5/1-5-'},5}.
  {label,526}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_nonempty_list,{f,528},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,0}}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,5},{t_integer,{1,2}}},{tr,{x,1},{t_integer,{0,255}}}],
            {x,5}}.
    {gc_bif,'rem',{f,0},6,[{tr,{x,5},{t_integer,{1,257}}},{integer,2}],{x,6}}.
    {test,is_eq_exact,{f,527},[{tr,{x,6},{t_integer,{0,1}}},{integer,0}]}.
    {allocate,2,6}.
    {move,{x,4},{y,0}}.
    {move,{x,5},{y,1}}.
    {call,5,{f,526}}. % '-cartesian/1-lc$^5/1-5-'/5
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,527}.
    {call_only,5,{f,526}}. % '-cartesian/1-lc$^5/1-5-'/5
  {label,528}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,522}}. % '-cartesian/1-zlc$^4/2-4-'/2


{function, '-cartesian/1-zlc$^2/2-2-', 2, 530}.
  {label,529}.
    {line,[{location,"zlc_SUITE.erl",205}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-zlc$^2/2-2-'},2}.
  {label,530}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,531},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {get_tail,4,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,531},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {move,{x,4},{x,2}}.
    {move,{x,1},{x,4}}.
    {move,{x,3},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,5,{f,534}}. % '-cartesian/1-lc$^3/1-3-'/5
  {label,531}.
    {test,is_nil,{f,532},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,532}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",204}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-lc$^3/1-3-', 5, 534}.
  {label,533}.
    {line,[{location,"zlc_SUITE.erl",205}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lc$^3/1-3-'},5}.
  {label,534}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_nonempty_list,{f,535},[{x,0}]}.
    {allocate,2,5}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,4},{y,1}}.
    {get_list,{x,0},{x,4},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",204}]}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,4},{t_integer,{1,2}}},{tr,{x,1},{t_integer,{0,255}}}],
            {y,0}}.
    {move,{y,1},{x,4}}.
    {line,[{location,"zlc_SUITE.erl",205}]}.
    {call,5,{f,534}}. % '-cartesian/1-lc$^3/1-3-'/5
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,535}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,530}}. % '-cartesian/1-zlc$^2/2-2-'/2


{function, '-cartesian/1-lc$^0/1-0-', 1, 537}.
  {label,536}.
    {line,[{location,"zlc_SUITE.erl",201}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lc$^0/1-0-'},1}.
  {label,537}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {test,is_nonempty_list,{f,538},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {call_only,4,{f,540}}. % '-cartesian/1-zlc$^1/2-1-'/4
  {label,538}.
    return.


{function, '-cartesian/1-zlc$^1/2-1-', 4, 540}.
  {label,539}.
    {line,[{location,"zlc_SUITE.erl",202}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-zlc$^1/2-1-'},4}.
  {label,540}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{1,2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,4},4}.
    {bs_match,{f,541},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,is_nonempty_list,{f,541},[{x,0}]}.
    {allocate,2,6}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",201}]}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,3},{t_integer,{1,2}}},{tr,{x,5},{t_integer,{0,255}}}],
            {y,0}}.
    {line,[{location,"zlc_SUITE.erl",202}]}.
    {call,4,{f,540}}. % '-cartesian/1-zlc$^1/2-1-'/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{1,'+inf'}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,541}.
    {test,is_nil,{f,542},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,537}}. % '-cartesian/1-lc$^0/1-0-'/1
  {label,542}.
    {bs_set_position,{x,1},{x,4}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_filter_pat_2/2-lc$^1/1-1-', 1, 544}.
  {label,543}.
    {line,[{location,"zlc_SUITE.erl",196}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_2/2-lc$^1/1-1-'},1}.
  {label,544}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_tuple,2,true,
          #{1 =>
             {t_union,
              {t_atom,[a]},
              none,none,
              [{{2,{t_atom,[a]}},
                {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_integer,{1,1}}}}},
               {{2,{t_atom,[b]}},
                {t_tuple,2,true,#{1 => {t_atom,[b]},2 => {t_integer,{9,9}}}}},
               {{2,{t_atom,[x]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[x]},2 => {t_integer,{10,10}}}}}],
              none},
            2 =>
             {t_union,
              {t_atom,[b]},
              none,none,
              [{{2,{t_atom,[a]}},
                {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_integer,{7,7}}}}},
               {{2,{t_atom,[b]}},
                {t_tuple,2,true,#{1 => {t_atom,[b]},2 => {t_integer,{1,1}}}}},
               {{2,{t_atom,[wrong]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[wrong]},2 => {t_integer,{8,8}}}}},
               {{2,{t_atom,[x]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[x]},2 => {t_integer,{20,20}}}}}],
              none}}},
         nil}}]}}.
    {test,is_nonempty_list,{f,546},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tuple,
          {f,545},
          [{tr,{x,2},
               {t_union,{t_atom,[a]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{1,1}}}}},
                         {{2,{t_atom,[b]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{9,9}}}}},
                         {{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},
                                     2 => {t_integer,{10,10}}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_tuple,
          {f,545},
          [{tr,{x,1},
               {t_union,{t_atom,[b]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{7,7}}}}},
                         {{2,{t_atom,[b]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{1,1}}}}},
                         {{2,{t_atom,[wrong]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[wrong]},
                                     2 => {t_integer,{8,8}}}}},
                         {{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},
                                     2 => {t_integer,{20,20}}}}}],
                        none}}]}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {get_tuple_element,{x,1},0,{x,4}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,545},
          [{tr,{x,4},{t_atom,[a,b,wrong,x]}},{tr,{x,2},{t_atom,[a,b,x]}}]}.
    {allocate,2,4}.
    {move,{x,1},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,1,{f,544}}. % '-do_filter_pat_2/2-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,10}},2 => {t_integer,{1,20}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,545}.
    {call_only,1,{f,544}}. % '-do_filter_pat_2/2-lc$^1/1-1-'/1
  {label,546}.
    return.


{function, '-do_filter_pat_2/2-zlc$^0/2-0-', 2, 548}.
  {label,547}.
    {line,[{location,"zlc_SUITE.erl",195}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_2/2-zlc$^0/2-0-'},2}.
  {label,548}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_integer,{1,1}}}}},
                          {{2,{t_atom,[b]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b]},2 => {t_integer,{9,9}}}}},
                          {{2,{t_atom,[x]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[x]},
                                 2 => {t_integer,{10,10}}}}}],
                         none},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[b]},
                         none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_integer,{7,7}}}}},
                          {{2,{t_atom,[b]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b]},2 => {t_integer,{1,1}}}}},
                          {{2,{t_atom,[wrong]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[wrong]},
                                 2 => {t_integer,{8,8}}}}},
                          {{2,{t_atom,[x]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[x]},
                                 2 => {t_integer,{20,20}}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,550},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,
          {f,549},
          [{tr,{x,2},
               {t_union,{t_atom,[a]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{1,1}}}}},
                         {{2,{t_atom,[b]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{9,9}}}}},
                         {{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},
                                     2 => {t_integer,{10,10}}}}}],
                        none}}]}.
    {get_tuple_element,{x,2},1,{x,4}}.
    {test,is_nonempty_list,{f,551},[{x,1}]}.
    {get_list,{x,1},{x,5},{x,6}}.
    {test,is_tuple,
          {f,549},
          [{tr,{x,5},
               {t_union,{t_atom,[b]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{7,7}}}}},
                         {{2,{t_atom,[b]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{1,1}}}}},
                         {{2,{t_atom,[wrong]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[wrong]},
                                     2 => {t_integer,{8,8}}}}},
                         {{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},
                                     2 => {t_integer,{20,20}}}}}],
                        none}}]}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {get_tuple_element,{x,5},0,{x,7}}.
    {get_tuple_element,{x,5},1,{x,5}}.
    {test,is_eq_exact,
          {f,549},
          [{tr,{x,7},{t_atom,[a,b,wrong,x]}},{tr,{x,2},{t_atom,[a,b,x]}}]}.
    {allocate,2,7}.
    {move,{x,5},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,6},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,548}}. % '-do_filter_pat_2/2-zlc$^0/2-0-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,10}},2 => {t_integer,{1,20}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,549}.
    {test,is_nonempty_list,{f,551},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,548}}. % '-do_filter_pat_2/2-zlc$^0/2-0-'/2
  {label,550}.
    {test,is_nil,
        {f,551},
        [{tr,{x,1},
             {t_list,
                 {t_union,
                     {t_atom,[b]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_integer,{7,7}}}}},
                      {{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},2 => {t_integer,{1,1}}}}},
                      {{2,{t_atom,[wrong]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[wrong]},2 => {t_integer,{8,8}}}}},
                      {{2,{t_atom,[x]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[x]},2 => {t_integer,{20,20}}}}}],
                     none},
                 nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,551}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_filter_pat_1/2-lc$^1/1-1-', 1, 553}.
  {label,552}.
    {line,[{location,"zlc_SUITE.erl",191}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_1/2-lc$^1/1-1-'},1}.
  {label,553}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_tuple,2,true,
          #{1 =>
             {t_union,
              {t_atom,[a]},
              none,none,
              [{{2,{t_atom,[ok]}},
                {t_tuple,2,true,#{1 => {t_atom,[ok]},2 => {t_atom,[a]}}}}],
              none},
            2 =>
             {t_union,
              {t_atom,[a]},
              none,none,
              [{{2,{t_atom,[error]}},
                {t_tuple,2,true,#{1 => {t_atom,[error]},2 => {t_atom,[e]}}}}],
              none}}},
         nil}}]}}.
    {test,is_nonempty_list,{f,554},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,553}}. % '-do_filter_pat_1/2-lc$^1/1-1-'/1
  {label,554}.
    return.


{function, '-do_filter_pat_1/2-zlc$^0/2-0-', 2, 556}.
  {label,555}.
    {line,[{location,"zlc_SUITE.erl",190}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_1/2-zlc$^0/2-0-'},2}.
  {label,556}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         none,none,
                         [{{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => {t_atom,[a]}}}}],
                         none},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a]},
                         none,none,
                         [{{2,{t_atom,[error]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[error]},2 => {t_atom,[e]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,557},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_nonempty_list,{f,558},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,556}}. % '-do_filter_pat_1/2-zlc$^0/2-0-'/2
  {label,557}.
    {test,is_nil,
        {f,558},
        [{tr,{x,1},
             {t_list,
                 {t_union,
                     {t_atom,[a]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},2 => {t_atom,[e]}}}}],
                     none},
                 nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,558}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^9/2-9-', 2, 560}.
  {label,559}.
    {line,[{location,"zlc_SUITE.erl",173}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^9/2-9-'},2}.
  {label,560}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,562},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,562},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,561},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,560}}. % '-filter_guard/1-zlc$^9/2-9-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,561}.
    {call_only,2,{f,560}}. % '-filter_guard/1-zlc$^9/2-9-'/2
  {label,562}.
    {test,is_nil,{f,563},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,563}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^8/2-8-', 2, 565}.
  {label,564}.
    {line,[{location,"zlc_SUITE.erl",172}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^8/2-8-'},2}.
  {label,565}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,567},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,568},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,0},{t_integer,{1,3}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,566},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {test,is_ge,{f,566},[{tr,{x,0},{t_integer,{1,3}}},{integer,2}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,565}}. % '-filter_guard/1-zlc$^8/2-8-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{2,3}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,566}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,565}}. % '-filter_guard/1-zlc$^8/2-8-'/2
  {label,567}.
    {test,is_nil,{f,568},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,568}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^7/2-7-', 2, 570}.
  {label,569}.
    {line,[{location,"zlc_SUITE.erl",171}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^7/2-7-'},2}.
  {label,570}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,572},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,573},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,0},{t_integer,{1,3}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,571},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,570}}. % '-filter_guard/1-zlc$^7/2-7-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{1,3}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,571}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,570}}. % '-filter_guard/1-zlc$^7/2-7-'/2
  {label,572}.
    {test,is_nil,{f,573},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,573}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-bzip$^6/3-6-', 3, 575}.
  {label,574}.
    {line,[{location,"zlc_SUITE.erl",170}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-bzip$^6/3-6-'},3}.
  {label,575}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,577},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,578},[{x,1}]}.
    {get_tl,{x,1},{x,0}}.
    {gc_bif,'rem',{f,0},5,[{tr,{x,3},{t_integer,{1,3}}},{integer,2}],{x,1}}.
    {test,is_eq_exact,{f,576},[{tr,{x,1},{t_integer,{0,1}}},{integer,1}]}.
    {gc_bif,'+',{f,0},5,[{tr,{x,3},{t_integer,{1,3}}},{integer,2}],{x,1}}.
    {test,is_ge,{f,576},[{tr,{x,1},{t_integer,{3,5}}},{integer,5}]}.
    {bs_create_bin,{f,0},
                   0,5,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,1},{t_integer,{5,5}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
  {label,576}.
    {move,{x,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,575}}. % '-filter_guard/1-bzip$^6/3-6-'/3
  {label,577}.
    {test,is_nil,{f,578},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,578}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^5/2-5-', 2, 580}.
  {label,579}.
    {line,[{location,"zlc_SUITE.erl",168}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^5/2-5-'},2}.
  {label,580}.
    {test,is_nonempty_list,{f,581},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"zlc_SUITE.erl",167}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,580},1}. % '-filter_guard/1-zlc$^5/2-5-'/2
  {label,581}.
    {test,is_tuple,{f,583},[{x,0}]}.
    {test,test_arity,{f,584},[{x,0},3]}.
    {test,is_tuple,{f,584},[{x,1}]}.
    {test,test_arity,{f,584},[{x,1},3]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {get_tuple_element,{x,1},1,{x,4}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {gc_bif,'rem',{f,582},5,[{x,4},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,582},[{tr,{x,4},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",168}]}.
    {call,2,{f,580}}. % '-filter_guard/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,3,true,#{}},nil}}]}}.
    {test_heap,6,1}.
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{y,1},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,0},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,582}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,580}}. % '-filter_guard/1-zlc$^5/2-5-'/2
  {label,583}.
    {test,is_eq_exact,{f,584},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,584},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,584}.
    {test,is_nonempty_list,{f,585},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,580},1}. % '-filter_guard/1-zlc$^5/2-5-'/2
  {label,585}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^4/2-4-', 2, 587}.
  {label,586}.
    {line,[{location,"zlc_SUITE.erl",166}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^4/2-4-'},2}.
  {label,587}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,589},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,589},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_lt,{f,588},[{atom,a},{tr,{x,2},{t_atom,[a,b,c]}}]}.
    {test,is_lt,{f,588},[{tr,{x,2},{t_atom,[a,b,c]}},{atom,c}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,587}}. % '-filter_guard/1-zlc$^4/2-4-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,588}.
    {call_only,2,{f,587}}. % '-filter_guard/1-zlc$^4/2-4-'/2
  {label,589}.
    {test,is_nil,{f,590},[{tr,{x,1},{t_list,{t_atom,[a,b,c]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,590}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^3/2-3-', 2, 592}.
  {label,591}.
    {line,[{location,"zlc_SUITE.erl",165}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^3/2-3-'},2}.
  {label,592}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,594},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,594},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,593},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,592}}. % '-filter_guard/1-zlc$^3/2-3-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,593}.
    {call_only,2,{f,592}}. % '-filter_guard/1-zlc$^3/2-3-'/2
  {label,594}.
    {test,is_nil,{f,595},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,595}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^2/2-2-', 2, 597}.
  {label,596}.
    {line,[{location,"zlc_SUITE.erl",164}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^2/2-2-'},2}.
  {label,597}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,599},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,599},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,598},[{tr,{x,3},{t_integer,{0,255}}},{integer,2}]}.
    {call_only,2,{f,597}}. % '-filter_guard/1-zlc$^2/2-2-'/2
  {label,598}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,597}}. % '-filter_guard/1-zlc$^2/2-2-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,599}.
    {test,is_nil,{f,600},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,600}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^1/2-1-', 2, 602}.
  {label,601}.
    {line,[{location,"zlc_SUITE.erl",162}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^1/2-1-'},2}.
  {label,602}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,604},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,604},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",163}]}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,603},[{tr,{x,4},{t_integer,{0,1}}},{integer,0}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {line,[{location,"zlc_SUITE.erl",162}]}.
    {call,2,{f,602}}. % '-filter_guard/1-zlc$^1/2-1-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,603}.
    {call_only,2,{f,602}}. % '-filter_guard/1-zlc$^1/2-1-'/2
  {label,604}.
    {test,is_nil,{f,605},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,605}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^0/2-0-', 2, 607}.
  {label,606}.
    {line,[{location,"zlc_SUITE.erl",161}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^0/2-0-'},2}.
  {label,607}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_list,{t_cons,{t_integer,{1,2}},nil},nil}}]}}.
    {test,is_nonempty_list,{f,609},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,610},[{x,1}]}.
    {allocate,4,4}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {get_list,{x,1},{y,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_lt,{f,608},[{integer,0},{x,0}]}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {swap,{y,3},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,3,1}.
    {call,2,{f,607}}. % '-filter_guard/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,608}.
    {move,{y,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {call_last,2,{f,607},4}. % '-filter_guard/1-zlc$^0/2-0-'/2
  {label,609}.
    {test,is_nil,
          {f,610},
          [{tr,{x,1},{t_list,{t_cons,{t_integer,{1,2}},nil},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,610}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^21/2-21-', 2, 612}.
  {label,611}.
    {line,[{location,"zlc_SUITE.erl",157}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^21/2-21-'},2}.
  {label,612}.
    {test,is_nonempty_list,{f,613},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,612},1}. % '-zmc/1-zlc$^21/2-21-'/2
  {label,613}.
    {test,is_tuple,{f,615},[{x,0}]}.
    {test,test_arity,{f,616},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tagged_tuple,{f,614},[{x,2},2,{atom,e}]}.
    {test,is_tuple,{f,616},[{x,1}]}.
    {test,test_arity,{f,614},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,4}}.
    {test,is_tagged_tuple,{f,614},[{x,4},2,{atom,ok}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {get_tuple_element,{x,0},0,{x,5}}.
    {test,is_eq_exact,{f,614},[{x,2},{x,5}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,614},[{x,2},{x,5}]}.
    {get_tuple_element,{x,4},1,{x,2}}.
    {test,is_eq_exact,{f,614},[{x,2},{x,5}]}.
    {allocate,1,6}.
    {move,{x,5},{y,0}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,612}}. % '-zmc/1-zlc$^21/2-21-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,614}.
    {test,is_tuple,{f,616},[{x,1}]}.
    {test,test_arity,{f,616},[{x,1},3]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,612}}. % '-zmc/1-zlc$^21/2-21-'/2
  {label,615}.
    {test,is_eq_exact,{f,616},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,616},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,616}.
    {test,is_nonempty_list,{f,617},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,612},1}. % '-zmc/1-zlc$^21/2-21-'/2
  {label,617}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^20/2-20-', 2, 619}.
  {label,618}.
    {line,[{location,"zlc_SUITE.erl",156}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^20/2-20-'},2}.
  {label,619}.
    {test,is_nonempty_list,{f,620},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,619},1}. % '-zmc/1-zlc$^20/2-20-'/2
  {label,620}.
    {test,is_tuple,{f,622},[{x,0}]}.
    {test,test_arity,{f,623},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tagged_tuple,{f,621},[{x,2},2,{atom,ok}]}.
    {test,is_tuple,{f,623},[{x,1}]}.
    {test,test_arity,{f,621},[{x,1},3]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {test,is_eq_exact,{f,621},[{x,2},{x,4}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,621},[{x,2},{x,4}]}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,619}}. % '-zmc/1-zlc$^20/2-20-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,621}.
    {test,is_tuple,{f,623},[{x,1}]}.
    {test,test_arity,{f,623},[{x,1},3]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,619}}. % '-zmc/1-zlc$^20/2-20-'/2
  {label,622}.
    {test,is_eq_exact,{f,623},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,623},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,623}.
    {test,is_nonempty_list,{f,624},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,619},1}. % '-zmc/1-zlc$^20/2-20-'/2
  {label,624}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^19/1-19-', 1, 626}.
  {label,625}.
    {line,[{location,"zlc_SUITE.erl",155}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^19/1-19-'},1}.
  {label,626}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{}},
                           2 => {t_tuple,2,true,#{}}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,628},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_tagged_tuple,{f,627},[{x,3},2,{atom,ok}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {test,is_eq_exact,{f,627},[{x,3},{x,2}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,627},[{x,1},{x,2}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,626}}. % '-zmc/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,627}.
    {call_only,1,{f,626}}. % '-zmc/1-lc$^19/1-19-'/1
  {label,628}.
    return.


{function, '-zmc/1-lc$^18/1-18-', 1, 630}.
  {label,629}.
    {line,[{location,"zlc_SUITE.erl",154}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^18/1-18-'},1}.
  {label,630}.
    {test,is_nonempty_list,{f,631},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,4}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,630}}. % '-zmc/1-lc$^18/1-18-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,631}.
    {test,is_nil,{f,632},[{x,0}]}.
    return.
  {label,632}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^17/1-17-', 1, 634}.
  {label,633}.
    {line,[{location,"zlc_SUITE.erl",153}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^17/1-17-'},1}.
  {label,634}.
    {test,is_nonempty_list,{f,638},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",150}]}.
    {gc_bif,'rem',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {select_val,{tr,{x,2},{t_integer,{-1,1}}},
                {f,640},
                {list,[{integer,0},{f,636},{integer,1},{f,635}]}}.
  {label,635}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,error},{y,1}]}}.
    {move,{x,1},{y,0}}.
    {jump,{f,637}}.
  {label,636}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,ok},{y,1}]}}.
    {move,{x,1},{y,0}}.
  {label,637}.
    {line,[{location,"zlc_SUITE.erl",153}]}.
    {call,1,{f,634}}. % '-zmc/1-lc$^17/1-17-'/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_tuple,2,true,
          #{1 => {t_integer,any},
            2 =>
             {t_union,none,none,none,
              [{{2,{t_atom,[error]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[error]},2 => {t_integer,any}}}},
               {{2,{t_atom,[ok]}},
                {t_tuple,2,true,#{1 => {t_atom,[ok]},2 => {t_integer,any}}}}],
              none}}},
         nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,638}.
    {test,is_nil,{f,639},[{x,0}]}.
    return.
  {label,639}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,640}.
    {line,[{location,"zlc_SUITE.erl",150}]}.
    {case_end,{x,2}}.


{function, '-zmc/1-bzip$^15/3-16-', 3, 642}.
  {label,641}.
    {line,[{location,"zlc_SUITE.erl",147}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-bzip$^15/3-16-'},3}.
  {label,642}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,643},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,642},2}. % '-zmc/1-bzip$^15/3-16-'/3
  {label,643}.
    {test,is_tuple,{f,644},[{x,0}]}.
    {test,test_arity,{f,645},[{x,0},3]}.
    {test,is_nonempty_list,{f,645},[{x,1}]}.
    {get_tuple_element,{x,0},0,{x,3}}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_list,{x,1},{x,5},{x,1}}.
    {gc_bif,'+',{f,0},6,[{x,3},{x,4}],{x,3}}.
    {gc_bif,'+',{f,0},6,[{tr,{x,3},{t_number,any}},{x,5}],{x,3}}.
    {bs_create_bin,{f,0},
                   0,4,64,
                   {x,3},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_number,any}},
                          {integer,64}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,64,true}}]}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,3,{f,642}}. % '-zmc/1-bzip$^15/3-16-'/3
  {label,644}.
    {test,is_eq_exact,{f,645},[{x,0},{atom,none}]}.
    {test,is_nil,{f,645},[{x,1}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,645}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lbc$^16/2-15-', 2, 647}.
  {label,646}.
    {line,[{location,"zlc_SUITE.erl",146}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lbc$^16/2-15-'},2}.
  {label,647}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,648},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'*',{f,0},3,[{x,2},{integer,3}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,64,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,64,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_number,any}},
                          {integer,64}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {call_only,2,{f,647}}. % '-zmc/1-lbc$^16/2-15-'/2
  {label,648}.
    {test,is_nil,{f,649},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,649}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-bzip$^13/3-14-', 3, 651}.
  {label,650}.
    {line,[{location,"zlc_SUITE.erl",145}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-bzip$^13/3-14-'},3}.
  {label,651}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,652},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,651},2}. % '-zmc/1-bzip$^13/3-14-'/3
  {label,652}.
    {test,is_tuple,{f,653},[{x,0}]}.
    {test,test_arity,{f,654},[{x,0},3]}.
    {test,is_tuple,{f,654},[{x,1}]}.
    {test,test_arity,{f,654},[{x,1},3]}.
    {get_tuple_element,{x,0},0,{x,3}}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_tuple_element,{x,1},0,{x,5}}.
    {get_tuple_element,{x,1},1,{x,6}}.
    {bs_create_bin,{f,0},
                   0,7,256,
                   {x,3},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,3},
                          {integer,64},
                          {atom,integer},
                          3,1,nil,
                          {x,4},
                          {integer,64},
                          {atom,integer},
                          4,1,nil,
                          {x,5},
                          {integer,64},
                          {atom,integer},
                          5,1,nil,
                          {x,6},
                          {integer,64}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,256,true}}]}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,3,{f,651}}. % '-zmc/1-bzip$^13/3-14-'/3
  {label,653}.
    {test,is_eq_exact,{f,654},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,654},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,654}.
    {test,is_nonempty_list,{f,655},[{x,1}]}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,651},2}. % '-zmc/1-bzip$^13/3-14-'/3
  {label,655}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lbc$^14/2-13-', 2, 657}.
  {label,656}.
    {line,[{location,"zlc_SUITE.erl",144}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lbc$^14/2-13-'},2}.
  {label,657}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,658},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'*',{f,0},3,[{x,2},{integer,3}],{x,3}}.
    {gc_bif,'*',{f,0},4,[{tr,{x,2},{t_number,any}},{integer,2}],{x,4}}.
    {gc_bif,'*',{f,0},5,[{tr,{x,2},{t_number,any}},{integer,4}],{x,5}}.
    {bs_create_bin,{f,0},
                   0,6,256,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_number,any}},
                          {integer,64},
                          {atom,integer},
                          3,1,nil,
                          {tr,{x,3},{t_number,any}},
                          {integer,64},
                          {atom,integer},
                          4,1,nil,
                          {tr,{x,4},{t_number,any}},
                          {integer,64},
                          {atom,integer},
                          5,1,nil,
                          {tr,{x,5},{t_number,any}},
                          {integer,64}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {call_only,2,{f,657}}. % '-zmc/1-lbc$^14/2-13-'/2
  {label,658}.
    {test,is_nil,{f,659},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,659}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^11/2-12-', 2, 661}.
  {label,660}.
    {line,[{location,"zlc_SUITE.erl",143}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^11/2-12-'},2}.
  {label,661}.
    {test,is_nonempty_list,{f,662},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,661},1}. % '-zmc/1-zlc$^11/2-12-'/2
  {label,662}.
    {test,is_tuple,{f,663},[{x,0}]}.
    {test,test_arity,{f,664},[{x,0},3]}.
    {test,is_nonempty_list,{f,664},[{x,1}]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_list,{x,1},{x,4},{x,1}}.
    {gc_bif,'+',{f,0},5,[{x,2},{x,3}],{x,2}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,2},{t_number,any}},{x,4}],{x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,661}}. % '-zmc/1-zlc$^11/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,663}.
    {test,is_eq_exact,{f,664},[{x,0},{atom,none}]}.
    {test,is_nil,{f,664},[{x,1}]}.
    {move,nil,{x,0}}.
    return.
  {label,664}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^12/1-11-', 1, 666}.
  {label,665}.
    {line,[{location,"zlc_SUITE.erl",143}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^12/1-11-'},1}.
  {label,666}.
    {test,is_nonempty_list,{f,667},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,666}}. % '-zmc/1-lc$^12/1-11-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,667}.
    {test,is_nil,{f,668},[{x,0}]}.
    return.
  {label,668}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^9/2-10-', 2, 670}.
  {label,669}.
    {line,[{location,"zlc_SUITE.erl",142}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^9/2-10-'},2}.
  {label,670}.
    {test,is_nonempty_list,{f,671},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,670},1}. % '-zmc/1-zlc$^9/2-10-'/2
  {label,671}.
    {test,is_tuple,{f,672},[{x,0}]}.
    {test,test_arity,{f,673},[{x,0},3]}.
    {test,is_tuple,{f,673},[{x,1}]}.
    {test,test_arity,{f,673},[{x,1},3]}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,670}}. % '-zmc/1-zlc$^9/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,4,true,#{}},nil}}]}}.
    {test_heap,7,1}.
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{y,1},1,{x,2}}.
    {get_tuple_element,{y,0},0,{x,3}}.
    {get_tuple_element,{y,0},1,{x,4}}.
    {put_tuple2,{x,1},{list,[{x,3},{x,4},{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,672}.
    {test,is_eq_exact,{f,673},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,673},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,673}.
    {test,is_nonempty_list,{f,674},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,670},1}. % '-zmc/1-zlc$^9/2-10-'/2
  {label,674}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^10/1-9-', 1, 676}.
  {label,675}.
    {line,[{location,"zlc_SUITE.erl",141}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^10/1-9-'},1}.
  {label,676}.
    {test,is_nonempty_list,{f,677},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,2}],{x,3}}.
    {gc_bif,'*',{f,0},4,[{tr,{x,1},{t_number,any}},{integer,4}],{x,4}}.
    {allocate,4,5}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,4},{y,3}}.
    {call,1,{f,676}}. % '-zmc/1-lc$^10/1-9-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,4,true,
                         #{1 => {t_number,any},
                           2 => {t_number,any},
                           3 => {t_number,any},
                           4 => {t_number,any}}},
                     nil}}]}}.
    {test_heap,7,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,4}.
    return.
  {label,677}.
    {test,is_nil,{f,678},[{x,0}]}.
    return.
  {label,678}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^8/1-8-', 1, 680}.
  {label,679}.
    {line,[{location,"zlc_SUITE.erl",140}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^8/1-8-'},1}.
  {label,680}.
    {test,is_nonempty_list,{f,681},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,4}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,680}}. % '-zmc/1-lc$^8/1-8-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,681}.
    {test,is_nil,{f,682},[{x,0}]}.
    return.
  {label,682}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^7/1-7-', 1, 684}.
  {label,683}.
    {line,[{location,"zlc_SUITE.erl",139}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^7/1-7-'},1}.
  {label,684}.
    {test,is_nonempty_list,{f,685},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,684}}. % '-zmc/1-lc$^7/1-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,685}.
    {test,is_nil,{f,686},[{x,0}]}.
    return.
  {label,686}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-bzip$^5/3-6-', 3, 688}.
  {label,687}.
    {line,[{location,"zlc_SUITE.erl",137}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-bzip$^5/3-6-'},3}.
  {label,688}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,689},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,688},2}. % '-zmc/1-bzip$^5/3-6-'/3
  {label,689}.
    {test,is_tuple,{f,690},[{x,0}]}.
    {test,test_arity,{f,691},[{x,0},3]}.
    {test,is_tuple,{f,691},[{x,1}]}.
    {test,test_arity,{f,691},[{x,1},3]}.
    {get_tuple_element,{x,0},0,{x,3}}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {gc_bif,'+',{f,0},5,[{x,3},{x,4}],{x,3}}.
    {get_tuple_element,{x,1},0,{x,4}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,3},{t_number,any}},{x,4}],{x,3}}.
    {get_tuple_element,{x,1},1,{x,4}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,3},{t_number,any}},{x,4}],{x,3}}.
    {bs_create_bin,{f,0},
                   0,4,64,
                   {x,3},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_number,any}},
                          {integer,64}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,64,true}}]}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,3,{f,688}}. % '-zmc/1-bzip$^5/3-6-'/3
  {label,690}.
    {test,is_eq_exact,{f,691},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,691},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,691}.
    {test,is_nonempty_list,{f,692},[{x,1}]}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,688},2}. % '-zmc/1-bzip$^5/3-6-'/3
  {label,692}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lbc$^6/2-5-', 2, 694}.
  {label,693}.
    {line,[{location,"zlc_SUITE.erl",136}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lbc$^6/2-5-'},2}.
  {label,694}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,695},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'*',{f,0},3,[{x,2},{integer,4}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,64,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,64,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_number,any}},
                          {integer,64}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {call_only,2,{f,694}}. % '-zmc/1-lbc$^6/2-5-'/2
  {label,695}.
    {test,is_nil,{f,696},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,696}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^3/2-4-', 2, 698}.
  {label,697}.
    {line,[{location,"zlc_SUITE.erl",135}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^3/2-4-'},2}.
  {label,698}.
    {test,is_nonempty_list,{f,699},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,698},1}. % '-zmc/1-zlc$^3/2-4-'/2
  {label,699}.
    {test,is_tuple,{f,700},[{x,0}]}.
    {test,test_arity,{f,701},[{x,0},3]}.
    {test,is_tuple,{f,701},[{x,1}]}.
    {test,test_arity,{f,701},[{x,1},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,2}}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_number,any}},{x,3}],{x,2}}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_number,any}},{x,3}],{x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,698}}. % '-zmc/1-zlc$^3/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,700}.
    {test,is_eq_exact,{f,701},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,701},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,701}.
    {test,is_nonempty_list,{f,702},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,698},1}. % '-zmc/1-zlc$^3/2-4-'/2
  {label,702}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^4/1-3-', 1, 704}.
  {label,703}.
    {line,[{location,"zlc_SUITE.erl",134}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^4/1-3-'},1}.
  {label,704}.
    {test,is_nonempty_list,{f,705},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,4}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,704}}. % '-zmc/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,705}.
    {test,is_nil,{f,706},[{x,0}]}.
    return.
  {label,706}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^2/1-2-', 1, 708}.
  {label,707}.
    {line,[{location,"zlc_SUITE.erl",133}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^2/1-2-'},1}.
  {label,708}.
    {test,is_nonempty_list,{f,709},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,708}}. % '-zmc/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,709}.
    {test,is_nil,{f,710},[{x,0}]}.
    return.
  {label,710}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^1/1-1-', 1, 712}.
  {label,711}.
    {line,[{location,"zlc_SUITE.erl",132}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^1/1-1-'},1}.
  {label,712}.
    {test,is_nonempty_list,{f,713},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,712}}. % '-zmc/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,713}.
    {test,is_nil,{f,714},[{x,0}]}.
    return.
  {label,714}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^0/2-0-', 2, 716}.
  {label,715}.
    {line,[{location,"zlc_SUITE.erl",130}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^0/2-0-'},2}.
  {label,716}.
    {test,is_nonempty_list,{f,717},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,716},1}. % '-zmc/1-zlc$^0/2-0-'/2
  {label,717}.
    {test,is_tuple,{f,718},[{x,0}]}.
    {test,test_arity,{f,719},[{x,0},3]}.
    {test,is_tuple,{f,719},[{x,1}]}.
    {test,test_arity,{f,719},[{x,1},3]}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,716}}. % '-zmc/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,4,true,#{}},nil}}]}}.
    {test_heap,7,1}.
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{y,1},1,{x,2}}.
    {get_tuple_element,{y,0},0,{x,3}}.
    {get_tuple_element,{y,0},1,{x,4}}.
    {put_tuple2,{x,1},{list,[{x,3},{x,1},{x,4},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,718}.
    {test,is_eq_exact,{f,719},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,719},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,719}.
    {test,is_nonempty_list,{f,720},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,716},1}. % '-zmc/1-zlc$^0/2-0-'/2
  {label,720}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^10/2-10-', 2, 722}.
  {label,721}.
    {line,[{location,"zlc_SUITE.erl",126}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^10/2-10-'},2}.
  {label,722}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,723},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,723},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,2,{f,722}}. % '-mixed_zlc/1-zlc$^10/2-10-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,723}.
    {test,is_nil,{f,724},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,724}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^9/2-9-', 2, 726}.
  {label,725}.
    {line,[{location,"zlc_SUITE.erl",125}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^9/2-9-'},2}.
  {label,726}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,727},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,728},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,726}}. % '-mixed_zlc/1-zlc$^9/2-9-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{1,3}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,727}.
    {test,is_nil,{f,728},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,728}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-bzip$^8/3-8-', 3, 730}.
  {label,729}.
    {line,[{location,"zlc_SUITE.erl",122}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^8/3-8-'},3}.
  {label,730}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,731},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {line,[{location,"zlc_SUITE.erl",123}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,730},2}. % '-mixed_zlc/1-bzip$^8/3-8-'/3
  {label,731}.
    {test,is_tuple,{f,732},[{x,0}]}.
    {test,test_arity,{f,733},[{x,0},3]}.
    {test,is_tuple,{f,733},[{x,1}]}.
    {test,test_arity,{f,733},[{x,1},3]}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_tuple_element,{x,1},1,{x,4}}.
    {line,[{location,"zlc_SUITE.erl",122}]}.
    {gc_bif,'+',{f,0},5,[{x,3},{x,4}],{x,3}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,3},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_number,any}},
                          {integer,8}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,8,true}}]}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,3,{f,730}}. % '-mixed_zlc/1-bzip$^8/3-8-'/3
  {label,732}.
    {test,is_eq_exact,{f,733},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,733},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,733}.
    {test,is_nonempty_list,{f,734},[{x,1}]}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",124}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,730},2}. % '-mixed_zlc/1-bzip$^8/3-8-'/3
  {label,734}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-bzip$^7/3-7-', 3, 736}.
  {label,735}.
    {line,[{location,"zlc_SUITE.erl",119}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^7/3-7-'},3}.
  {label,736}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,737},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_tuple,{f,737},[{x,1}]}.
    {test,test_arity,{f,737},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,4},{t_integer,{0,255}}},{x,3}],{x,3}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,3},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_number,any}},
                          {integer,8}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,8,true}}]}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {call_only,3,{f,736}}. % '-mixed_zlc/1-bzip$^7/3-7-'/3
  {label,737}.
    {test,is_eq_exact,{f,738},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,738}.
    {test,is_nonempty_list,{f,739},[{x,1}]}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",121}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,736},3}. % '-mixed_zlc/1-bzip$^7/3-7-'/3
  {label,739}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",120}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-bzip$^6/3-6-', 3, 741}.
  {label,740}.
    {line,[{location,"zlc_SUITE.erl",116}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^6/3-6-'},3}.
  {label,741}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,742},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_tuple,{f,743},[{x,1}]}.
    {test,test_arity,{f,743},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,3},{t_integer,{1,3}}},{x,0}],{x,0}}.
    {bs_create_bin,{f,0},
                   0,5,8,
                   {x,0},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_number,any}},
                          {integer,8}]}}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,741}}. % '-mixed_zlc/1-bzip$^6/3-6-'/3
  {label,742}.
    {test,is_eq_exact,{f,743},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,743}.
    {test,is_nonempty_list,{f,744},[{x,1}]}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",118}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,741},2}. % '-mixed_zlc/1-bzip$^6/3-6-'/3
  {label,744}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",117}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-bzip$^5/3-5-', 3, 746}.
  {label,745}.
    {line,[{location,"zlc_SUITE.erl",115}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^5/3-5-'},3}.
  {label,746}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,747},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,748},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,3},{t_integer,{1,3}}},{integer,2}],{x,0}}.
    {bs_create_bin,{f,0},
                   0,5,8,
                   {x,0},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,2},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{3,5}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,746}}. % '-mixed_zlc/1-bzip$^5/3-5-'/3
  {label,747}.
    {test,is_nil,{f,748},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,748}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^4/2-4-', 2, 750}.
  {label,749}.
    {line,[{location,"zlc_SUITE.erl",113}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^4/2-4-'},2}.
  {label,750}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,751},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_tuple,{f,751},[{x,0}]}.
    {test,test_arity,{f,751},[{x,0},3]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,750}}. % '-mixed_zlc/1-zlc$^4/2-4-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,3,true,#{3 => {t_integer,{0,255}}}},
                                  nil}}]}}.
    {test_heap,6,1}.
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{y,1},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,751}.
    {test,is_eq_exact,{f,752},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,752}.
    {test,is_nonempty_list,{f,753},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,1}}.
    {call_last,2,{f,750},2}. % '-mixed_zlc/1-zlc$^4/2-4-'/2
  {label,753}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^3/2-3-', 2, 755}.
  {label,754}.
    {line,[{location,"zlc_SUITE.erl",110}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^3/2-3-'},2}.
  {label,755}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,756},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_tuple,{f,756},[{x,0}]}.
    {test,test_arity,{f,756},[{x,0},3]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,755}}. % '-mixed_zlc/1-zlc$^3/2-3-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,3,true,#{3 => {t_integer,{0,255}}}},
                                  nil}}]}}.
    {test_heap,6,1}.
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{y,1},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,756}.
    {test,is_eq_exact,{f,757},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,757}.
    {test,is_nonempty_list,{f,758},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,1}}.
    {call_last,2,{f,755},2}. % '-mixed_zlc/1-zlc$^3/2-3-'/2
  {label,758}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^2/2-2-', 2, 760}.
  {label,759}.
    {line,[{location,"zlc_SUITE.erl",107}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^2/2-2-'},2}.
  {label,760}.
    {test,is_nonempty_list,{f,761},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,760},1}. % '-mixed_zlc/1-zlc$^2/2-2-'/2
  {label,761}.
    {test,is_tuple,{f,762},[{x,0}]}.
    {test,test_arity,{f,763},[{x,0},3]}.
    {test,is_tuple,{f,763},[{x,1}]}.
    {test,test_arity,{f,763},[{x,1},3]}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,760}}. % '-mixed_zlc/1-zlc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,4,true,#{}},nil}}]}}.
    {test_heap,7,1}.
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{y,1},1,{x,2}}.
    {get_tuple_element,{y,0},0,{x,3}}.
    {get_tuple_element,{y,0},1,{x,4}}.
    {put_tuple2,{x,1},{list,[{x,3},{x,1},{x,4},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,762}.
    {test,is_eq_exact,{f,763},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,763},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,763}.
    {test,is_nonempty_list,{f,764},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",108}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,760},1}. % '-mixed_zlc/1-zlc$^2/2-2-'/2
  {label,764}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^1/2-1-', 2, 766}.
  {label,765}.
    {line,[{location,"zlc_SUITE.erl",105}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^1/2-1-'},2}.
  {label,766}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,767},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,767},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {call,2,{f,766}}. % '-mixed_zlc/1-zlc$^1/2-1-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,767}.
    {test,is_nil,{f,768},[{tr,{x,1},{t_list,{t_atom,[a,b,c]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,768}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^0/2-0-', 2, 770}.
  {label,769}.
    {line,[{location,"zlc_SUITE.erl",104}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^0/2-0-'},2}.
  {label,770}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,771},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,771},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,2,{f,770}}. % '-mixed_zlc/1-zlc$^0/2-0-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[a,b,c]},2 => {t_integer,{0,255}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,771}.
    {test,is_nil,{f,772},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,772}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-ifelse/3-zlc$^0/3-0-', 3, 774}.
  {label,773}.
    {line,[{location,"zlc_SUITE.erl",100}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-ifelse/3-zlc$^0/3-0-'},3}.
  {label,774}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{2,6}},nil}}]}}.
    {test,is_nonempty_list,{f,777},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,778},[{x,1}]}.
    {get_list,{x,1},{x,5},{x,6}}.
    {test,is_nonempty_list,{f,778},[{x,2}]}.
    {allocate,1,7}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,2},{x,0},{x,1}}.
    {test,is_eq_exact,{f,775},[{x,3},{atom,true}]}.
    {move,{x,5},{y,0}}.
    {jump,{f,776}}.
  {label,775}.
    {move,{x,0},{y,0}}.
  {label,776}.
    {move,{x,1},{x,2}}.
    {move,{x,6},{x,1}}.
    {move,{x,4},{x,0}}.
    {call,3,{f,774}}. % '-ifelse/3-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,6}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,777}.
    {test,is_nil,{f,778},[{tr,{x,1},{t_list,{t_integer,{1,5}},nil}}]}.
    {test,is_nil,{f,778},[{tr,{x,2},{t_list,{t_integer,{2,6}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,778}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-dot/2-zlc$^0/2-0-', 2, 780}.
  {label,779}.
    {line,[{location,"zlc_SUITE.erl",93}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-dot/2-zlc$^0/2-0-'},2}.
  {label,780}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{6,24}},nil}}]}}.
    {test,is_nonempty_list,{f,781},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,782},[{x,1}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,1},{x,0},{x,1}}.
    {gc_bif,'*',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{1,4}}},{tr,{x,0},{t_integer,{6,24}}}],
            {y,0}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,780}}. % '-dot/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{6,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,781}.
    {test,is_nil,{f,782},[{tr,{x,1},{t_list,{t_integer,{6,24}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,782}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zipwith4/5-zlc$^0/4-0-', 5, 784}.
  {label,783}.
    {line,[{location,"zlc_SUITE.erl",90}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zipwith4/5-zlc$^0/4-0-'},5}.
  {label,784}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{0,1}},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{2,3}},nil}}]}}.
    {'%',{var_info,{x,4},
                   [{type,{t_fun,4,{'-basic/1-fun-2-',4},{t_number,any}}}]}}.
    {test,is_nonempty_list,{f,785},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,6}}.
    {test,is_nonempty_list,{f,786},[{x,1}]}.
    {get_tl,{x,1},{x,7}}.
    {test,is_nonempty_list,{f,786},[{x,2}]}.
    {get_list,{x,2},{x,8},{x,9}}.
    {test,is_nonempty_list,{f,786},[{x,3}]}.
    {allocate,5,10}.
    {move,{x,9},{y,1}}.
    {move,{x,7},{y,2}}.
    {move,{x,6},{y,3}}.
    {move,{x,4},{y,4}}.
    {get_list,{x,3},{x,3},{y,0}}.
    {move,{integer,2},{x,1}}.
    {move,{x,8},{x,2}}.
    {move,{x,5},{x,0}}.
    {call,4,{f,791}}. % '-basic/1-fun-2-'/4
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,5}}.
    {move,{y,4},{x,4}}.
    {move,{x,0},{y,4}}.
    {trim,4,1}.
    {move,{x,5},{x,0}}.
    {call,5,{f,784}}. % '-zipwith4/5-zlc$^0/4-0-'/5
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,785}.
    {test,is_nil,{f,786},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {test,is_nil,{f,786},[{tr,{x,2},{t_list,{t_integer,{0,1}},nil}}]}.
    {test,is_nil,{f,786},[{tr,{x,3},{t_list,{t_integer,{2,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,786}.
    {test_heap,8,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2},{x,3}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-zlc$^3/3-2-', 3, 788}.
  {label,787}.
    {line,[{location,"zlc_SUITE.erl",85}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-zlc$^3/3-2-'},3}.
  {label,788}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,789},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {bs_match,{f,789},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {get_tail,5,1,{x,1}}]}}.
    {bs_start_match4,{atom,no_fail},5,{x,2},{x,2}}.
    {bs_match,{f,789},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {get_tail,6,1,{x,2}}]}}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,4},{t_integer,{0,255}}}],
            {x,3}}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,3},{t_integer,{0,510}}},{tr,{x,5},{t_integer,{0,255}}}],
            {x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,3,{f,788}}. % '-basic/1-zlc$^3/3-2-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,789}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-fun-2-', 4, 791}.
  {label,790}.
    {line,[{location,"zlc_SUITE.erl",79}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-fun-2-'},4}.
  {label,791}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,0},{t_number,any}},{x,2}],{x,0}}.
    {gc_bif,'*',{f,0},4,[{tr,{x,0},{t_number,any}},{x,3}],{x,0}}.
    return.


{function, '-basic/1-zlc$^1/3-1-', 3, 793}.
  {label,792}.
    {line,[{location,"zlc_SUITE.erl",78}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-zlc$^1/3-1-'},3}.
  {label,793}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{3,3}},nil}}]}}.
    {test,is_nonempty_list,{f,794},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,795},[{x,1}]}.
    {get_tl,{x,1},{x,5}}.
    {test,is_nonempty_list,{f,795},[{x,2}]}.
    {allocate,1,6}.
    {move,{x,3},{y,0}}.
    {get_tl,{x,2},{x,2}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call,3,{f,793}}. % '-basic/1-zlc$^1/3-1-'/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,3,true,
                         #{1 => {t_integer,{1,3}},
                           2 => {t_integer,{2,2}},
                           3 => {t_integer,{3,3}}}},
                     nil}}]}}.
    {test_heap,6,1}.
    {put_tuple2,{x,1},{list,[{y,0},{integer,2},{integer,3}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,794}.
    {test,is_nil,{f,795},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {test,is_nil,{f,795},[{tr,{x,2},{t_list,{t_integer,{3,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,795}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-zlc$^0/3-0-', 3, 797}.
  {label,796}.
    {line,[{location,"zlc_SUITE.erl",76}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-zlc$^0/3-0-'},3}.
  {label,797}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{3,3}},nil}}]}}.
    {test,is_nonempty_list,{f,798},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,799},[{x,1}]}.
    {get_tl,{x,1},{x,5}}.
    {test,is_nonempty_list,{f,799},[{x,2}]}.
    {allocate,1,6}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tl,{x,2},{x,2}}.
    {gc_bif,'+',{f,0},6,[{tr,{x,3},{t_integer,{1,3}}},{integer,5}],{y,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call,3,{f,797}}. % '-basic/1-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{6,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,798}.
    {test,is_nil,{f,799},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {test,is_nil,{f,799},[{tr,{x,2},{t_list,{t_integer,{3,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,799}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
