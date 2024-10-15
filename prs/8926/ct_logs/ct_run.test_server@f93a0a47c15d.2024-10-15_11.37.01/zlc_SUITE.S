{module, zlc_SUITE}.  %% version = 0

{exports, [{all,0},
           {bad_generators,1},
           {basic,1},
           {cartesian,1},
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
           {suite,0},
           {zmc,1}]}.

{attributes, []}.

{labels, 478}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"zlc_SUITE.erl",30}]}.
    {func_info,{atom,zlc_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"zlc_SUITE.erl",34}]}.
    {func_info,{atom,zlc_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"zlc_SUITE.erl",37}]}.
    {func_info,{atom,zlc_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"zlc_SUITE.erl",38}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[basic,mixed_zlc,zmc,filter_guard,
                                 filter_pattern,cartesian,nomatch,
                                 bad_generators]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"zlc_SUITE.erl",49}]}.
    {func_info,{atom,zlc_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,zlc_SUITE},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",50}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"zlc_SUITE.erl",53}]}.
    {func_info,{atom,zlc_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"zlc_SUITE.erl",56}]}.
    {func_info,{atom,zlc_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"zlc_SUITE.erl",59}]}.
    {func_info,{atom,zlc_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"zlc_SUITE.erl",63}]}.
    {func_info,{atom,zlc_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"zlc_SUITE.erl",66}]}.
    {func_info,{atom,zlc_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, basic, 1, 20}.
  {label,19}.
    {line,[{location,"zlc_SUITE.erl",69}]}.
    {func_info,{atom,zlc_SUITE},{atom,basic},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,[2,2,2]},{x,1}}.
    {move,{literal,[3,3,3]},{x,2}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",70}]}.
    {call,3,{f,475}}. % '-basic/1-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{6,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,26},
          [{tr,{x,0},{t_cons,{t_integer,{6,'+inf'}},nil}},{literal,[6,7,8]}]}.
    {move,{literal,[2,2,2]},{x,1}}.
    {move,{literal,[3,3,3]},{x,2}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",72}]}.
    {call,3,{f,471}}. % '-basic/1-zlc$^1/3-1-'/3
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
    {make_fun3,{f,469},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,[0,1]},{x,3}}.
    {move,{literal,[2,2]},{x,2}}.
    {move,{literal,[2,3]},{x,4}}.
    {move,{literal,[1,5]},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",73}]}.
    {call,5,{f,28}}. % zipwith4/5
    {'%',{var_info,{x,0},[{type,{t_cons,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,24},
          [{tr,{x,0},{t_cons,{t_number,any},nil}},{literal,[6,24]}]}.
    {move,{literal,[24,12,8,6]},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",75}]}.
    {call,2,{f,30}}. % dot/2
    {test,is_eq_exact,{f,23},[{x,0},{integer,96}]}.
    {move,{literal,[1,3,5]},{x,1}}.
    {move,{literal,[2,4,6]},{x,2}}.
    {move,{literal,[true,false,true]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",77}]}.
    {call,3,{f,32}}. % ifelse/3
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,6}},nil}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},{t_cons,{t_integer,{1,6}},nil}},{literal,[1,4,5]}]}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{literal,<<2,2,2>>},{x,2}}.
    {move,{literal,<<5,10,15>>},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",79}]}.
    {call,3,{f,466}}. % '-basic/1-zlc$^3/3-2-'/3
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
    {line,[{location,"zlc_SUITE.erl",77}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{location,"zlc_SUITE.erl",75}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{location,"zlc_SUITE.erl",73}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{location,"zlc_SUITE.erl",71}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{location,"zlc_SUITE.erl",70}]}.
    {badmatch,{x,0}}.


{function, zipwith4, 5, 28}.
  {label,27}.
    {line,[{location,"zlc_SUITE.erl",83}]}.
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
    {call_only,5,{f,462}}. % '-zipwith4/5-zlc$^0/4-0-'/5


{function, dot, 2, 30}.
  {label,29}.
    {line,[{location,"zlc_SUITE.erl",86}]}.
    {func_info,{atom,zlc_SUITE},{atom,dot},2}.
  {label,30}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{6,24}},nil}}]}}.
    {allocate,0,2}.
    {line,[{location,"zlc_SUITE.erl",87}]}.
    {call,2,{f,458}}. % '-dot/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{6,'+inf'}},nil}}]}}.
    {call_ext_last,1,{extfunc,lists,sum,1},0}.


{function, ifelse, 3, 32}.
  {label,31}.
    {line,[{location,"zlc_SUITE.erl",89}]}.
    {func_info,{atom,zlc_SUITE},{atom,ifelse},3}.
  {label,32}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[false,true]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_cons,{t_integer,{2,6}},nil}}]}}.
    {call_only,3,{f,452}}. % '-ifelse/3-zlc$^0/3-0-'/3


{function, mixed_zlc, 1, 34}.
  {label,33}.
    {line,[{location,"zlc_SUITE.erl",94}]}.
    {func_info,{atom,zlc_SUITE},{atom,mixed_zlc},1}.
  {label,34}.
    {test,is_list,{f,33},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",95}]}.
    {call,2,{f,448}}. % '-mixed_zlc/1-zlc$^0/2-0-'/2
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
    {line,[{location,"zlc_SUITE.erl",96}]}.
    {call,2,{f,444}}. % '-mixed_zlc/1-zlc$^1/2-1-'/2
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
    {line,[{location,"zlc_SUITE.erl",98}]}.
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
    {line,[{location,"zlc_SUITE.erl",99}]}.
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
    {line,[{location,"zlc_SUITE.erl",98}]}.
    {call,2,{f,440}}. % '-mixed_zlc/1-zlc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,4,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,51},
          [{tr,{x,0},{t_list,{t_tuple,4,true,#{}},nil}},
           {literal,[{a,c,1,3},{b,d,2,4}]}]}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 1,b => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",101}]}.
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
    {call,2,{f,436}}. % '-mixed_zlc/1-zlc$^3/2-3-'/2
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
    {line,[{location,"zlc_SUITE.erl",104}]}.
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
    {call,2,{f,432}}. % '-mixed_zlc/1-zlc$^4/2-4-'/2
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
    {line,[{location,"zlc_SUITE.erl",106}]}.
    {call,3,{f,428}}. % '-mixed_zlc/1-bzip$^5/3-5-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,48},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 2,b => 2,c => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",109}]}.
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
    {line,[{location,"zlc_SUITE.erl",107}]}.
    {call,3,{f,424}}. % '-mixed_zlc/1-bzip$^6/3-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,47},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 2,b => 2,c => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",112}]}.
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
    {line,[{location,"zlc_SUITE.erl",110}]}.
    {call,3,{f,420}}. % '-mixed_zlc/1-bzip$^7/3-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,46},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 1,b => 2,c => 3}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",114}]}.
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
    {line,[{location,"zlc_SUITE.erl",115}]}.
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
    {line,[{location,"zlc_SUITE.erl",113}]}.
    {call,3,{f,416}}. % '-mixed_zlc/1-bzip$^8/3-8-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,45},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{literal,[1,2,3]},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",116}]}.
    {call,2,{f,412}}. % '-mixed_zlc/1-zlc$^9/2-9-'/2
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
    {line,[{location,"zlc_SUITE.erl",117}]}.
    {call,2,{f,408}}. % '-mixed_zlc/1-zlc$^10/2-10-'/2
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
    {line,[{location,"zlc_SUITE.erl",117}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{location,"zlc_SUITE.erl",116}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{location,"zlc_SUITE.erl",113}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{location,"zlc_SUITE.erl",110}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{location,"zlc_SUITE.erl",107}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{location,"zlc_SUITE.erl",106}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{location,"zlc_SUITE.erl",103}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{location,"zlc_SUITE.erl",100}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{location,"zlc_SUITE.erl",97}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{location,"zlc_SUITE.erl",96}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{location,"zlc_SUITE.erl",95}]}.
    {badmatch,{x,0}}.


{function, zmc, 1, 55}.
  {label,54}.
    {line,[{location,"zlc_SUITE.erl",120}]}.
    {func_info,{atom,zlc_SUITE},{atom,zmc},1}.
  {label,55}.
    {test,is_list,{f,54},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",121}]}.
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
    {call,2,{f,404}}. % '-zmc/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,4,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,87},
          [{tr,{x,0},{t_list,{t_tuple,4,true,#{}},nil}},
           {literal,[{a,b,1,3}]}]}.
    {move,{integer,50},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",122}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,6}}.
    {line,[{location,"zlc_SUITE.erl",123}]}.
    {call,1,{f,400}}. % '-zmc/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",123}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,5}}.
    {move,{integer,50},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",124}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,396}}. % '-zmc/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",124}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,4}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",125}]}.
    {call,1,{f,392}}. % '-zmc/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {move,{x,0},{y,3}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",126}]}.
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
    {call,2,{f,388}}. % '-zmc/1-zlc$^3/2-4-'/2
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
    {line,[{location,"zlc_SUITE.erl",127}]}.
    {call,2,{f,384}}. % '-zmc/1-lbc$^6/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,3}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",128}]}.
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
    {call,3,{f,380}}. % '-zmc/1-bzip$^5/3-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,85},
          [{tr,{y,3},{t_bitstring,64,true}},
           {tr,{x,0},{t_bitstring,256,true}}]}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",130}]}.
    {call,1,{f,376}}. % '-zmc/1-lc$^7/1-7-'/1
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
    {line,[{location,"zlc_SUITE.erl",130}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,4}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",131}]}.
    {call,1,{f,372}}. % '-zmc/1-lc$^8/1-8-'/1
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
    {line,[{location,"zlc_SUITE.erl",131}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,3}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",132}]}.
    {call,1,{f,368}}. % '-zmc/1-lc$^10/1-9-'/1
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
    {line,[{location,"zlc_SUITE.erl",133}]}.
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
    {call,2,{f,364}}. % '-zmc/1-zlc$^9/2-10-'/2
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
    {line,[{location,"zlc_SUITE.erl",134}]}.
    {call,1,{f,360}}. % '-zmc/1-lc$^12/1-11-'/1
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
    {call,2,{f,356}}. % '-zmc/1-zlc$^11/2-12-'/2
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
    {line,[{location,"zlc_SUITE.erl",135}]}.
    {call,2,{f,352}}. % '-zmc/1-lbc$^14/2-13-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,1}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",136}]}.
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
    {call,3,{f,348}}. % '-zmc/1-bzip$^13/3-14-'/3
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
    {line,[{location,"zlc_SUITE.erl",137}]}.
    {call,2,{f,344}}. % '-zmc/1-lbc$^16/2-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,4}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,3}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",138}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,73},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,5}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,73}.
    {move,{y,3},{x,2}}.
    {move,{y,6},{x,1}}.
    {init_yregs,{list,[{y,3},{y,5}]}}.
    {call,3,{f,340}}. % '-zmc/1-bzip$^15/3-16-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,81},
          [{tr,{y,4},{t_bitstring,64,true}},
           {tr,{x,0},{t_bitstring,256,true}}]}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",144}]}.
    {call,1,{f,332}}. % '-zmc/1-lc$^17/1-17-'/1
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
    {line,[{location,"zlc_SUITE.erl",140}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {swap,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",145}]}.
    {call,1,{f,328}}. % '-zmc/1-lc$^18/1-18-'/1
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
    {line,[{location,"zlc_SUITE.erl",145}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,5}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",146}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {move,{x,0},{y,4}}.
    {move,{y,5},{x,0}}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,324}}. % '-zmc/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,80},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",147}]}.
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
    {call,2,{f,319}}. % '-zmc/1-zlc$^20/2-20-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,79},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",148}]}.
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
    {call,2,{f,314}}. % '-zmc/1-zlc$^21/2-21-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,78},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,78}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"zlc_SUITE.erl",147}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"zlc_SUITE.erl",146}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"zlc_SUITE.erl",137}]}.
    {badmatch,{atom,false}}.
  {label,82}.
    {line,[{location,"zlc_SUITE.erl",135}]}.
    {badmatch,{atom,false}}.
  {label,83}.
    {line,[{location,"zlc_SUITE.erl",134}]}.
    {badmatch,{atom,false}}.
  {label,84}.
    {line,[{location,"zlc_SUITE.erl",132}]}.
    {badmatch,{atom,false}}.
  {label,85}.
    {line,[{location,"zlc_SUITE.erl",127}]}.
    {badmatch,{atom,false}}.
  {label,86}.
    {line,[{location,"zlc_SUITE.erl",125}]}.
    {badmatch,{atom,false}}.
  {label,87}.
    {line,[{location,"zlc_SUITE.erl",121}]}.
    {badmatch,{x,0}}.


{function, filter_guard, 1, 89}.
  {label,88}.
    {line,[{location,"zlc_SUITE.erl",151}]}.
    {func_info,{atom,zlc_SUITE},{atom,filter_guard},1}.
  {label,89}.
    {test,is_list,{f,88},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[[1],[2]]},{x,1}}.
    {move,{literal,[[1,2],[2,-3]]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",152}]}.
    {call,2,{f,309}}. % '-filter_guard/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}}]}}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}},
           {literal,[[1,2,1]]}]}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",153}]}.
    {call,2,{f,304}}. % '-filter_guard/1-zlc$^1/2-1-'/2
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
    {line,[{location,"zlc_SUITE.erl",155}]}.
    {call,2,{f,299}}. % '-filter_guard/1-zlc$^2/2-2-'/2
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
    {line,[{location,"zlc_SUITE.erl",156}]}.
    {call,2,{f,294}}. % '-filter_guard/1-zlc$^3/2-3-'/2
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
    {line,[{location,"zlc_SUITE.erl",157}]}.
    {call,2,{f,289}}. % '-filter_guard/1-zlc$^4/2-4-'/2
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
    {line,[{location,"zlc_SUITE.erl",158}]}.
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
    {line,[{location,"zlc_SUITE.erl",159}]}.
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
    {call,2,{f,284}}. % '-filter_guard/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,3,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,96},
          [{tr,{x,0},{t_list,{t_tuple,3,true,#{}},nil}},{literal,[{b,d,2}]}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{literal,[2,2,2]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",161}]}.
    {call,3,{f,279}}. % '-filter_guard/1-bzip$^6/3-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,95},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<5>>}]}.
    {move,{literal,[1,2,3]},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",162}]}.
    {call,2,{f,274}}. % '-filter_guard/1-zlc$^7/2-7-'/2
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
    {line,[{location,"zlc_SUITE.erl",163}]}.
    {call,2,{f,269}}. % '-filter_guard/1-zlc$^8/2-8-'/2
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
    {line,[{location,"zlc_SUITE.erl",164}]}.
    {call,2,{f,264}}. % '-filter_guard/1-zlc$^9/2-9-'/2
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
    {line,[{location,"zlc_SUITE.erl",164}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{location,"zlc_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{location,"zlc_SUITE.erl",162}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{location,"zlc_SUITE.erl",161}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{location,"zlc_SUITE.erl",158}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{location,"zlc_SUITE.erl",157}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{location,"zlc_SUITE.erl",156}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{location,"zlc_SUITE.erl",155}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{location,"zlc_SUITE.erl",153}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{location,"zlc_SUITE.erl",152}]}.
    {badmatch,{x,0}}.


{function, filter_pattern, 1, 103}.
  {label,102}.
    {line,[{location,"zlc_SUITE.erl",166}]}.
    {func_info,{atom,zlc_SUITE},{atom,filter_pattern},1}.
  {label,103}.
    {test,is_list,{f,102},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"zlc_SUITE.erl",167}]}.
    {call,2,{f,110}}. % do_filter_pat_1/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",168}]}.
    {call,2,{f,110}}. % do_filter_pat_1/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[{error,e}]},{x,1}}.
    {move,{literal,[{ok,a}]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",169}]}.
    {call,2,{f,110}}. % do_filter_pat_1/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,1}}.
    {line,[{location,"zlc_SUITE.erl",170}]}.
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
    {line,[{location,"zlc_SUITE.erl",171}]}.
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
    {line,[{location,"zlc_SUITE.erl",172}]}.
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
    {line,[{location,"zlc_SUITE.erl",173}]}.
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
    {line,[{location,"zlc_SUITE.erl",174}]}.
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
    {line,[{location,"zlc_SUITE.erl",173}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{location,"zlc_SUITE.erl",172}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{location,"zlc_SUITE.erl",171}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{location,"zlc_SUITE.erl",170}]}.
    {badmatch,{x,0}}.


{function, do_filter_pat_1, 2, 110}.
  {label,109}.
    {line,[{location,"zlc_SUITE.erl",177}]}.
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
    {line,[{location,"zlc_SUITE.erl",178}]}.
    {call,2,{f,260}}. % '-do_filter_pat_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"zlc_SUITE.erl",179}]}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,257}}. % '-do_filter_pat_1/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, do_filter_pat_2, 2, 112}.
  {label,111}.
    {line,[{location,"zlc_SUITE.erl",181}]}.
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
    {line,[{location,"zlc_SUITE.erl",182}]}.
    {call,2,{f,252}}. % '-do_filter_pat_2/2-zlc$^0/2-0-'/2
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
    {line,[{location,"zlc_SUITE.erl",183}]}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,248}}. % '-do_filter_pat_2/2-lc$^1/1-1-'/1
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
    {line,[{location,"zlc_SUITE.erl",186}]}.
    {func_info,{atom,zlc_SUITE},{atom,cartesian},1}.
  {label,115}.
    {test,is_list,{f,114},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",188}]}.
    {call,1,{f,241}}. % '-cartesian/1-lc$^0/1-0-'/1
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
    {line,[{location,"zlc_SUITE.erl",192}]}.
    {call,2,{f,234}}. % '-cartesian/1-zlc$^2/2-2-'/2
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
    {line,[{location,"zlc_SUITE.erl",195}]}.
    {call,2,{f,226}}. % '-cartesian/1-zlc$^4/2-4-'/2
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
    {line,[{location,"zlc_SUITE.erl",198}]}.
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
    {line,[{location,"zlc_SUITE.erl",196}]}.
    {call,3,{f,219}}. % '-cartesian/1-bzip$^6/3-6-'/3
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
    {line,[{location,"zlc_SUITE.erl",193}]}.
    {badmatch,{x,0}}.
  {label,119}.
    {line,[{location,"zlc_SUITE.erl",190}]}.
    {badmatch,{x,0}}.
  {label,120}.
    {line,[{location,"zlc_SUITE.erl",187}]}.
    {badmatch,{x,0}}.


{function, nomatch, 1, 122}.
  {label,121}.
    {line,[{location,"zlc_SUITE.erl",202}]}.
    {func_info,{atom,zlc_SUITE},{atom,nomatch},1}.
  {label,122}.
    {test,is_list,{f,121},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"zlc_SUITE.erl",203}]}.
    {call,2,{f,132}}. % do_nomatch_1/2
    {test,is_nil,{f,130},[{x,0}]}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",204}]}.
    {call,2,{f,132}}. % do_nomatch_1/2
    {test,is_nil,{f,129},[{x,0}]}.
    {move,{literal,[a,b]},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",205}]}.
    {call,2,{f,132}}. % do_nomatch_1/2
    {test,is_nil,{f,128},[{x,0}]}.
    {move,nil,{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",206}]}.
    {call,2,{f,132}}. % do_nomatch_1/2
    {test,is_tagged_tuple,{f,127},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,127},[{x,1}]}.
    {test,test_arity,{f,127},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,127},[{x,1},{literal,{bad_generators,{[1,2,3],[]}}}]}.
    {move,{literal,[a,b]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",207}]}.
    {call,2,{f,132}}. % do_nomatch_1/2
    {test,is_tagged_tuple,{f,126},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,126},[{x,1}]}.
    {test,test_arity,{f,126},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,126},[{x,1},{literal,{bad_generators,{[3],[]}}}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"zlc_SUITE.erl",209}]}.
    {call,2,{f,135}}. % do_nomatch_2/2
    {test,is_eq_exact,{f,125},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<1>>},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",210}]}.
    {call,2,{f,135}}. % do_nomatch_2/2
    {test,is_eq_exact,{f,124},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<3>>},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",211}]}.
    {call,2,{f,135}}. % do_nomatch_2/2
    {test,is_tagged_tuple,{f,123},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,123},[{x,1}]}.
    {test,test_arity,{f,123},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,123},[{x,1},{literal,{bad_generators,{[2],<<>>}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,123}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{location,"zlc_SUITE.erl",210}]}.
    {badmatch,{x,0}}.
  {label,125}.
    {line,[{location,"zlc_SUITE.erl",209}]}.
    {badmatch,{x,0}}.
  {label,126}.
    {line,[{location,"zlc_SUITE.erl",207}]}.
    {badmatch,{x,0}}.
  {label,127}.
    {line,[{location,"zlc_SUITE.erl",206}]}.
    {badmatch,{x,0}}.
  {label,128}.
    {line,[{location,"zlc_SUITE.erl",205}]}.
    {badmatch,{x,0}}.
  {label,129}.
    {line,[{location,"zlc_SUITE.erl",204}]}.
    {badmatch,{x,0}}.
  {label,130}.
    {line,[{location,"zlc_SUITE.erl",203}]}.
    {badmatch,{x,0}}.


{function, do_nomatch_1, 2, 132}.
  {label,131}.
    {line,[{location,"zlc_SUITE.erl",214}]}.
    {func_info,{atom,zlc_SUITE},{atom,do_nomatch_1},2}.
  {label,132}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {allocate,1,2}.
    {'catch',{y,0},{f,133}}.
    {line,[{location,"zlc_SUITE.erl",215}]}.
    {call,2,{f,215}}. % '-do_nomatch_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,133}.
    {catch_end,{y,0}}.
    {deallocate,1}.
    return.


{function, do_nomatch_2, 2, 135}.
  {label,134}.
    {line,[{location,"zlc_SUITE.erl",217}]}.
    {func_info,{atom,zlc_SUITE},{atom,do_nomatch_2},2}.
  {label,135}.
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
    {'catch',{y,2},{f,136}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"zlc_SUITE.erl",218}]}.
    {call,3,{f,211}}. % '-do_nomatch_2/2-bzip$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,136}.
    {catch_end,{y,2}}.
    {deallocate,3}.
    return.


{function, bad_generators, 1, 138}.
  {label,137}.
    {line,[{location,"zlc_SUITE.erl",220}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators},1}.
  {label,138}.
    {test,is_list,{f,137},[{x,0}]}.
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
    {'catch',{y,10},{f,139}}.
    {move,{literal,[1,2]},{x,1}}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",222}]}.
    {call,2,{f,209}}. % '-bad_generators/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,139}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,161},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,161},[{x,1}]}.
    {test,test_arity,{f,161},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,161},[{x,1},{literal,{bad_generators,{x,[1,2]}}}]}.
    {'catch',{y,9},{f,140}}.
    {move,{literal,[1,2,3,4]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",224}]}.
    {call,2,{f,205}}. % '-bad_generators/1-zlc$^1/2-1-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,3}},2 => {t_integer,{1,4}}}},
                     nil}}]}}.
  {label,140}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,160},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,160},[{x,1}]}.
    {test,test_arity,{f,160},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,160},[{x,1},{literal,{bad_generators,{[],[4]}}}]}.
    {'catch',{y,8},{f,141}}.
    {move,{literal,[1,2]},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,[18]},{location,"zlc_SUITE.erl",226}]}.
    {call,2,{f,200}}. % '-bad_generators/1-zlc$^2/2-2-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{1,2}},2 => {t_integer,{1,2}}}},
                     nil}}]}}.
  {label,141}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,159},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,159},[{x,1}]}.
    {test,test_arity,{f,159},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,159},[{x,1},{literal,{bad_generators,{[3,4],[]}}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {'catch',{y,7},{f,142}}.
    {move,{literal,[1,2]},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,[16]},{location,"zlc_SUITE.erl",228}]}.
    {call,3,{f,195}}. % '-bad_generators/1-bzip$^3/3-3-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,142}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,158},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,158},[{x,1}]}.
    {test,test_arity,{f,158},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,158},[{x,1},{literal,{bad_generators,{[3,4],[]}}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {'catch',{y,6},{f,143}}.
    {move,{atom,a},{x,1}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",230}]}.
    {call,3,{f,193}}. % '-bad_generators/1-bzip$^4/3-4-'/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,143}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,157},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,157},[{x,1}]}.
    {test,test_arity,{f,157},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,157},[{x,1},{literal,{bad_generators,{<<1,2>>,a}}}]}.
    {'catch',{y,5},{f,145}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\f"},{location,"zlc_SUITE.erl",231}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,144},[{x,0}]}.
    {move,{literal,{bad_generator,a}},{x,0}}.
    {line,[{scope,"\v"},{location,"zlc_SUITE.erl",231}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {jump,{f,145}}.
  {label,144}.
    {move,{literal,[1]},{x,1}}.
    {call,2,{f,188}}. % '-bad_generators/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,145}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,156},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,156},[{x,1}]}.
    {test,test_arity,{f,156},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,156},[{x,1},{literal,{bad_generator,a}}]}.
    {'catch',{y,4},{f,146}}.
    {move,{literal,[1,2,3]},{x,1}}.
    {move,{literal,[a,b,c,d]},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",233}]}.
    {call,2,{f,183}}. % '-bad_generators/1-zlc$^6/2-6-'/2
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
  {label,146}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,155},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,155},[{x,1}]}.
    {test,test_arity,{f,155},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,155},[{x,1},{literal,{bad_generators,{[d],[]}}}]}.
    {'catch',{y,3},{f,147}}.
    {move,{literal,[1,2,3,4]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",244}]}.
    {call,2,{f,163}}. % bad_generators/2
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
  {label,147}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,154},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,154},[{x,1}]}.
    {test,test_arity,{f,154},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,154},[{x,2},{literal,{bad_generators,{[],[4]}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,154},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,154},[{x,1},4,{atom,zlc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,154},
          [{x,1},{literal,[{file,"bad_zlc.erl"},{line,4}]}]}.
    {'catch',{y,2},{f,148}}.
    {move,{literal,[2,3]},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",249}]}.
    {call,2,{f,165}}. % bad_generators_bc/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,148}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,153},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,153},[{x,1}]}.
    {test,test_arity,{f,153},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,153},[{x,2},{literal,{bad_generators,{a,[2,3]}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,153},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,153},[{x,1},4,{atom,zlc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,153},
          [{x,1},{literal,[{file,"bad_zlc.erl"},{line,7}]}]}.
    {'catch',{y,1},{f,149}}.
    {move,{literal,[1]},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",254}]}.
    {call,2,{f,167}}. % bad_generators_mc/2
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_integer,{1,2}},{t_integer,{1,1}}}}]}}.
  {label,149}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,152},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,152},[{x,1}]}.
    {test,test_arity,{f,152},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,152},[{x,2},{literal,{bad_generators,{[2],[]}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,152},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,152},[{x,1},4,{atom,zlc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,152},
          [{x,1},{literal,[{file,"bad_zlc.erl"},{line,10}]}]}.
    {'catch',{y,0},{f,150}}.
    {move,{literal,[a,b,c,d]},{x,1}}.
    {move,{literal,[a,b,c|d]},{x,0}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",260}]}.
    {call,2,{f,163}}. % bad_generators/2
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
  {label,150}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,151},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,151},[{x,1}]}.
    {test,test_arity,{f,151},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,151},[{x,2},{literal,{bad_generators,{d,[d]}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,151},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,151},[{x,1},4,{atom,zlc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,151},
          [{x,1},{literal,[{file,"bad_zlc.erl"},{line,4}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,11}.
    return.
  {label,151}.
    {line,[{scope,[0]},{location,"zlc_SUITE.erl",257}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",251}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",246}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",241}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",232}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",231}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,"\f"},{location,"zlc_SUITE.erl",229}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",227}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[16]},{location,"zlc_SUITE.erl",225}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[18]},{location,"zlc_SUITE.erl",223}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",221}]}.
    {badmatch,{x,0}}.


{function, bad_generators, 2, 163}.
  {label,162}.
    {line,[{location,"bad_zlc.erl",2}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators},2}.
  {label,163}.
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
    {call_only,2,{f,179}}. % '-bad_generators/2-zlc$^0/2-0-'/2


{function, bad_generators_bc, 2, 165}.
  {label,164}.
    {line,[{location,"bad_zlc.erl",5}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators_bc},2}.
  {label,165}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{2,3}},nil}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,1}}.
    {move,{atom,a},{x,0}}.
    {call_last,3,{f,177},1}. % '-bad_generators_bc/2-bzip$^0/3-0-'/3


{function, bad_generators_mc, 2, 167}.
  {label,166}.
    {line,[{location,"bad_zlc.erl",8}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators_mc},2}.
  {label,167}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,1}},nil}}]}}.
    {allocate,0,2}.
    {line,[{location,"bad_zlc.erl",10}]}.
    {call,2,{f,173}}. % '-bad_generators_mc/2-zlc$^0/2-0-'/2
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


{function, module_info, 0, 169}.
  {label,168}.
    {line,[]}.
    {func_info,{atom,zlc_SUITE},{atom,module_info},0}.
  {label,169}.
    {move,{atom,zlc_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 171}.
  {label,170}.
    {line,[]}.
    {func_info,{atom,zlc_SUITE},{atom,module_info},1}.
  {label,171}.
    {move,{x,0},{x,1}}.
    {move,{atom,zlc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-bad_generators_mc/2-zlc$^0/2-0-', 2, 173}.
  {label,172}.
    {line,[{location,"bad_zlc.erl",10}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators_mc/2-zlc$^0/2-0-'},2}.
  {label,173}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,174},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,175},[{x,1}]}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,173}}. % '-bad_generators_mc/2-zlc$^0/2-0-'/2
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
  {label,174}.
    {test,is_nil,{f,175},[{tr,{x,1},{t_list,{t_integer,{1,1}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,175}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators_bc/2-bzip$^0/3-0-', 3, 177}.
  {label,176}.
    {line,[{location,"bad_zlc.erl",6}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators_bc/2-bzip$^0/3-0-'},3}.
  {label,177}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{2,3}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"bad_zlc.erl",7}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/2-zlc$^0/2-0-', 2, 179}.
  {label,178}.
    {line,[{location,"bad_zlc.erl",4}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/2-zlc$^0/2-0-'},2}.
  {label,179}.
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
    {test,is_nonempty_list,{f,180},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,181},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,179}}. % '-bad_generators/2-zlc$^0/2-0-'/2
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
  {label,180}.
    {test,is_nil,
          {f,181},
          [{tr,{x,0},{t_union,{t_atom,[d]},nil,none,none,none}}]}.
    {test,is_nil,
          {f,181},
          [{tr,{x,1},
               {t_list,{t_union,{t_atom,[a,b,c,d]},
                                none,
                                {t_integer,{1,4}},
                                none,none},
                       nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,181}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^6/2-6-', 2, 183}.
  {label,182}.
    {line,[{location,"zlc_SUITE.erl",233}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^6/2-6-'},2}.
  {label,183}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c,d]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,185},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,186},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_ge,{f,184},[{tr,{x,0},{t_integer,{1,3}}},{integer,2}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,183}}. % '-bad_generators/1-zlc$^6/2-6-'/2
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
  {label,184}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,183}}. % '-bad_generators/1-zlc$^6/2-6-'/2
  {label,185}.
    {test,is_nil,{f,186},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,186}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^5/2-5-', 2, 188}.
  {label,187}.
    {line,[{location,"zlc_SUITE.erl",231}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^5/2-5-'},2}.
  {label,188}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_tuple,{f,190},[{x,0}]}.
    {test,test_arity,{f,191},[{x,0},3]}.
    {test,is_nonempty_list,{f,191},[{x,1}]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,189},[{x,3},{x,2}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,188}}. % '-bad_generators/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,189}.
    {call_only,2,{f,188}}. % '-bad_generators/1-zlc$^5/2-5-'/2
  {label,190}.
    {test,is_eq_exact,{f,191},[{x,0},{atom,none}]}.
    {test,is_nil,{f,191},[{tr,{x,1},{t_list,{t_integer,{1,1}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,191}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,188},1}. % '-bad_generators/1-zlc$^5/2-5-'/2


{function, '-bad_generators/1-bzip$^4/3-4-', 3, 193}.
  {label,192}.
    {line,[{location,"zlc_SUITE.erl",230}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-bzip$^4/3-4-'},3}.
  {label,193}.
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


{function, '-bad_generators/1-bzip$^3/3-3-', 3, 195}.
  {label,194}.
    {line,[{location,"zlc_SUITE.erl",228}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-bzip$^3/3-3-'},3}.
  {label,195}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,197},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,198},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_ge,{f,196},[{integer,2},{tr,{x,3},{t_integer,{1,4}}}]}.
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
  {label,196}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,195}}. % '-bad_generators/1-bzip$^3/3-3-'/3
  {label,197}.
    {test,is_nil,{f,198},[{tr,{x,1},{t_list,{t_integer,{1,2}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,198}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^2/2-2-', 2, 200}.
  {label,199}.
    {line,[{location,"zlc_SUITE.erl",226}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^2/2-2-'},2}.
  {label,200}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {test,is_nonempty_list,{f,202},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,203},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_ge,{f,201},[{integer,2},{tr,{x,2},{t_integer,{1,4}}}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,200}}. % '-bad_generators/1-zlc$^2/2-2-'/2
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
  {label,201}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,200}}. % '-bad_generators/1-zlc$^2/2-2-'/2
  {label,202}.
    {test,is_nil,{f,203},[{tr,{x,1},{t_list,{t_integer,{1,2}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,203}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^1/2-1-', 2, 205}.
  {label,204}.
    {line,[{location,"zlc_SUITE.erl",224}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^1/2-1-'},2}.
  {label,205}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {test,is_nonempty_list,{f,206},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,207},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,205}}. % '-bad_generators/1-zlc$^1/2-1-'/2
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
  {label,206}.
    {test,is_nil,{f,207},[{tr,{x,1},{t_list,{t_integer,{1,4}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,207}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^0/2-0-', 2, 209}.
  {label,208}.
    {line,[{location,"zlc_SUITE.erl",222}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^0/2-0-'},2}.
  {label,209}.
    {'%',{var_info,{x,0},[{type,{t_atom,[x]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_nomatch_2/2-bzip$^0/3-0-', 3, 211}.
  {label,210}.
    {line,[{location,"zlc_SUITE.erl",218}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_nomatch_2/2-bzip$^0/3-0-'},3}.
  {label,211}.
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
    {bs_match,{f,212},{x,1},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,is_nonempty_list,{f,212},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,3,{f,211}}. % '-do_nomatch_2/2-bzip$^0/3-0-'/3
  {label,212}.
    {test,is_nil,
          {f,213},
          [{tr,{x,0},
               {t_list,{t_union,{t_atom,[a]},none,{t_integer,{1,2}},none,none},
                       nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,213}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_nomatch_1/2-zlc$^0/2-0-', 2, 215}.
  {label,214}.
    {line,[{location,"zlc_SUITE.erl",215}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_nomatch_1/2-zlc$^0/2-0-'},2}.
  {label,215}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {test,is_nonempty_list,{f,216},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_nonempty_list,{f,217},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,215}}. % '-do_nomatch_1/2-zlc$^0/2-0-'/2
  {label,216}.
    {test,is_nil,{f,217},[{tr,{x,1},{t_list,{t_atom,[a,b]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,217}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-bzip$^6/3-6-', 3, 219}.
  {label,218}.
    {line,[{location,"zlc_SUITE.erl",196}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-bzip$^6/3-6-'},3}.
  {label,219}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,220},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_tuple,{f,221},[{x,1}]}.
    {test,test_arity,{f,221},[{x,1},3]}.
    {allocate,3,5}.
    {move,{x,4},{y,1}}.
    {move,{x,2},{y,2}}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {get_tuple_element,{x,1},2,{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{literal,<<1,255>>},{x,0}}.
    {call,4,{f,223}}. % '-cartesian/1-lbc$^7/2-7-'/4
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,219},3}. % '-cartesian/1-bzip$^6/3-6-'/3
  {label,220}.
    {test,is_eq_exact,{f,221},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,221}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",198}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,219},2}. % '-cartesian/1-bzip$^6/3-6-'/3


{function, '-cartesian/1-lbc$^7/2-7-', 4, 223}.
  {label,222}.
    {line,[{location,"zlc_SUITE.erl",196}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lbc$^7/2-7-'},4}.
  {label,223}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,3}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_match,{f,224},
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
    {call_only,4,{f,223}}. % '-cartesian/1-lbc$^7/2-7-'/4
  {label,224}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cartesian/1-zlc$^4/2-4-', 2, 226}.
  {label,225}.
    {line,[{location,"zlc_SUITE.erl",195}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-zlc$^4/2-4-'},2}.
  {label,226}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,227},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {get_tail,4,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,227},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {move,{x,4},{x,2}}.
    {move,{x,1},{x,4}}.
    {move,{x,3},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,5,{f,230}}. % '-cartesian/1-lc$^5/1-5-'/5
  {label,227}.
    {test,is_nil,{f,228},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,228}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",194}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-lc$^5/1-5-', 5, 230}.
  {label,229}.
    {line,[{location,"zlc_SUITE.erl",195}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lc$^5/1-5-'},5}.
  {label,230}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_nonempty_list,{f,232},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,0}}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,5},{t_integer,{1,2}}},{tr,{x,1},{t_integer,{0,255}}}],
            {x,5}}.
    {gc_bif,'rem',{f,0},6,[{tr,{x,5},{t_integer,{1,257}}},{integer,2}],{x,6}}.
    {test,is_eq_exact,{f,231},[{tr,{x,6},{t_integer,{0,1}}},{integer,0}]}.
    {allocate,2,6}.
    {move,{x,4},{y,0}}.
    {move,{x,5},{y,1}}.
    {call,5,{f,230}}. % '-cartesian/1-lc$^5/1-5-'/5
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
  {label,231}.
    {call_only,5,{f,230}}. % '-cartesian/1-lc$^5/1-5-'/5
  {label,232}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,226}}. % '-cartesian/1-zlc$^4/2-4-'/2


{function, '-cartesian/1-zlc$^2/2-2-', 2, 234}.
  {label,233}.
    {line,[{location,"zlc_SUITE.erl",192}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-zlc$^2/2-2-'},2}.
  {label,234}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,235},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {get_tail,4,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,235},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {move,{x,4},{x,2}}.
    {move,{x,1},{x,4}}.
    {move,{x,3},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,5,{f,238}}. % '-cartesian/1-lc$^3/1-3-'/5
  {label,235}.
    {test,is_nil,{f,236},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,236}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",191}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-lc$^3/1-3-', 5, 238}.
  {label,237}.
    {line,[{location,"zlc_SUITE.erl",192}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lc$^3/1-3-'},5}.
  {label,238}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_nonempty_list,{f,239},[{x,0}]}.
    {allocate,2,5}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,4},{y,1}}.
    {get_list,{x,0},{x,4},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",191}]}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,4},{t_integer,{1,2}}},{tr,{x,1},{t_integer,{0,255}}}],
            {y,0}}.
    {move,{y,1},{x,4}}.
    {line,[{location,"zlc_SUITE.erl",192}]}.
    {call,5,{f,238}}. % '-cartesian/1-lc$^3/1-3-'/5
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
  {label,239}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,234}}. % '-cartesian/1-zlc$^2/2-2-'/2


{function, '-cartesian/1-lc$^0/1-0-', 1, 241}.
  {label,240}.
    {line,[{location,"zlc_SUITE.erl",188}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lc$^0/1-0-'},1}.
  {label,241}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {test,is_nonempty_list,{f,242},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {call_only,4,{f,244}}. % '-cartesian/1-zlc$^1/2-1-'/4
  {label,242}.
    return.


{function, '-cartesian/1-zlc$^1/2-1-', 4, 244}.
  {label,243}.
    {line,[{location,"zlc_SUITE.erl",189}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-zlc$^1/2-1-'},4}.
  {label,244}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{1,2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,4},4}.
    {bs_match,{f,245},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,is_nonempty_list,{f,245},[{x,0}]}.
    {allocate,2,6}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",188}]}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,3},{t_integer,{1,2}}},{tr,{x,5},{t_integer,{0,255}}}],
            {y,0}}.
    {line,[{location,"zlc_SUITE.erl",189}]}.
    {call,4,{f,244}}. % '-cartesian/1-zlc$^1/2-1-'/4
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
  {label,245}.
    {test,is_nil,{f,246},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,241}}. % '-cartesian/1-lc$^0/1-0-'/1
  {label,246}.
    {bs_set_position,{x,1},{x,4}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_filter_pat_2/2-lc$^1/1-1-', 1, 248}.
  {label,247}.
    {line,[{location,"zlc_SUITE.erl",183}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_2/2-lc$^1/1-1-'},1}.
  {label,248}.
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
    {test,is_nonempty_list,{f,250},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tuple,
          {f,249},
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
          {f,249},
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
          {f,249},
          [{tr,{x,4},{t_atom,[a,b,wrong,x]}},{tr,{x,2},{t_atom,[a,b,x]}}]}.
    {allocate,2,4}.
    {move,{x,1},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,1,{f,248}}. % '-do_filter_pat_2/2-lc$^1/1-1-'/1
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
  {label,249}.
    {call_only,1,{f,248}}. % '-do_filter_pat_2/2-lc$^1/1-1-'/1
  {label,250}.
    return.


{function, '-do_filter_pat_2/2-zlc$^0/2-0-', 2, 252}.
  {label,251}.
    {line,[{location,"zlc_SUITE.erl",182}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_2/2-zlc$^0/2-0-'},2}.
  {label,252}.
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
    {test,is_nonempty_list,{f,254},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,
          {f,253},
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
    {test,is_nonempty_list,{f,255},[{x,1}]}.
    {get_list,{x,1},{x,5},{x,6}}.
    {test,is_tuple,
          {f,253},
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
          {f,253},
          [{tr,{x,7},{t_atom,[a,b,wrong,x]}},{tr,{x,2},{t_atom,[a,b,x]}}]}.
    {allocate,2,7}.
    {move,{x,5},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,6},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,252}}. % '-do_filter_pat_2/2-zlc$^0/2-0-'/2
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
  {label,253}.
    {test,is_nonempty_list,{f,255},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,252}}. % '-do_filter_pat_2/2-zlc$^0/2-0-'/2
  {label,254}.
    {test,is_nil,
        {f,255},
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
  {label,255}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_filter_pat_1/2-lc$^1/1-1-', 1, 257}.
  {label,256}.
    {line,[{location,"zlc_SUITE.erl",179}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_1/2-lc$^1/1-1-'},1}.
  {label,257}.
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
    {test,is_nonempty_list,{f,258},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,257}}. % '-do_filter_pat_1/2-lc$^1/1-1-'/1
  {label,258}.
    return.


{function, '-do_filter_pat_1/2-zlc$^0/2-0-', 2, 260}.
  {label,259}.
    {line,[{location,"zlc_SUITE.erl",178}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_1/2-zlc$^0/2-0-'},2}.
  {label,260}.
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
    {test,is_nonempty_list,{f,261},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_nonempty_list,{f,262},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,260}}. % '-do_filter_pat_1/2-zlc$^0/2-0-'/2
  {label,261}.
    {test,is_nil,
        {f,262},
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
  {label,262}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^9/2-9-', 2, 264}.
  {label,263}.
    {line,[{location,"zlc_SUITE.erl",164}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^9/2-9-'},2}.
  {label,264}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,266},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,266},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,265},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,264}}. % '-filter_guard/1-zlc$^9/2-9-'/2
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
  {label,265}.
    {call_only,2,{f,264}}. % '-filter_guard/1-zlc$^9/2-9-'/2
  {label,266}.
    {test,is_nil,{f,267},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,267}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^8/2-8-', 2, 269}.
  {label,268}.
    {line,[{location,"zlc_SUITE.erl",163}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^8/2-8-'},2}.
  {label,269}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,271},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,272},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,0},{t_integer,{1,3}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,270},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {test,is_ge,{f,270},[{tr,{x,0},{t_integer,{1,3}}},{integer,2}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,269}}. % '-filter_guard/1-zlc$^8/2-8-'/2
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
  {label,270}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,269}}. % '-filter_guard/1-zlc$^8/2-8-'/2
  {label,271}.
    {test,is_nil,{f,272},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,272}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^7/2-7-', 2, 274}.
  {label,273}.
    {line,[{location,"zlc_SUITE.erl",162}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^7/2-7-'},2}.
  {label,274}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,276},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,277},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,0},{t_integer,{1,3}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,275},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,274}}. % '-filter_guard/1-zlc$^7/2-7-'/2
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
  {label,275}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,274}}. % '-filter_guard/1-zlc$^7/2-7-'/2
  {label,276}.
    {test,is_nil,{f,277},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,277}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-bzip$^6/3-6-', 3, 279}.
  {label,278}.
    {line,[{location,"zlc_SUITE.erl",161}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-bzip$^6/3-6-'},3}.
  {label,279}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,281},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,282},[{x,1}]}.
    {get_tl,{x,1},{x,0}}.
    {gc_bif,'rem',{f,0},5,[{tr,{x,3},{t_integer,{1,3}}},{integer,2}],{x,1}}.
    {test,is_eq_exact,{f,280},[{tr,{x,1},{t_integer,{0,1}}},{integer,1}]}.
    {gc_bif,'+',{f,0},5,[{tr,{x,3},{t_integer,{1,3}}},{integer,2}],{x,1}}.
    {test,is_ge,{f,280},[{tr,{x,1},{t_integer,{3,5}}},{integer,5}]}.
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
  {label,280}.
    {move,{x,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,279}}. % '-filter_guard/1-bzip$^6/3-6-'/3
  {label,281}.
    {test,is_nil,{f,282},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,282}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^5/2-5-', 2, 284}.
  {label,283}.
    {line,[{location,"zlc_SUITE.erl",159}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^5/2-5-'},2}.
  {label,284}.
    {test,is_tuple,{f,286},[{x,0}]}.
    {test,test_arity,{f,287},[{x,0},3]}.
    {test,is_tuple,{f,287},[{x,1}]}.
    {test,test_arity,{f,287},[{x,1},3]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {get_tuple_element,{x,1},1,{x,4}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {gc_bif,'rem',{f,285},5,[{x,4},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,285},[{tr,{x,4},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    {call,2,{f,284}}. % '-filter_guard/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,3,true,#{}},nil}}]}}.
    {test_heap,6,1}.
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{y,1},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,0},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,285}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,284}}. % '-filter_guard/1-zlc$^5/2-5-'/2
  {label,286}.
    {test,is_eq_exact,{f,287},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,287},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,287}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"zlc_SUITE.erl",158}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",159}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,284},1}. % '-filter_guard/1-zlc$^5/2-5-'/2


{function, '-filter_guard/1-zlc$^4/2-4-', 2, 289}.
  {label,288}.
    {line,[{location,"zlc_SUITE.erl",157}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^4/2-4-'},2}.
  {label,289}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,291},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,291},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_lt,{f,290},[{atom,a},{tr,{x,2},{t_atom,[a,b,c]}}]}.
    {test,is_lt,{f,290},[{tr,{x,2},{t_atom,[a,b,c]}},{atom,c}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,289}}. % '-filter_guard/1-zlc$^4/2-4-'/2
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
  {label,290}.
    {call_only,2,{f,289}}. % '-filter_guard/1-zlc$^4/2-4-'/2
  {label,291}.
    {test,is_nil,{f,292},[{tr,{x,1},{t_list,{t_atom,[a,b,c]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,292}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^3/2-3-', 2, 294}.
  {label,293}.
    {line,[{location,"zlc_SUITE.erl",156}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^3/2-3-'},2}.
  {label,294}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,296},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,296},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,295},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,294}}. % '-filter_guard/1-zlc$^3/2-3-'/2
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
  {label,295}.
    {call_only,2,{f,294}}. % '-filter_guard/1-zlc$^3/2-3-'/2
  {label,296}.
    {test,is_nil,{f,297},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,297}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^2/2-2-', 2, 299}.
  {label,298}.
    {line,[{location,"zlc_SUITE.erl",155}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^2/2-2-'},2}.
  {label,299}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,301},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,301},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,300},[{tr,{x,3},{t_integer,{0,255}}},{integer,2}]}.
    {call_only,2,{f,299}}. % '-filter_guard/1-zlc$^2/2-2-'/2
  {label,300}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,299}}. % '-filter_guard/1-zlc$^2/2-2-'/2
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
  {label,301}.
    {test,is_nil,{f,302},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,302}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^1/2-1-', 2, 304}.
  {label,303}.
    {line,[{location,"zlc_SUITE.erl",153}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^1/2-1-'},2}.
  {label,304}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,306},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,306},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",154}]}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,305},[{tr,{x,4},{t_integer,{0,1}}},{integer,0}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {line,[{location,"zlc_SUITE.erl",153}]}.
    {call,2,{f,304}}. % '-filter_guard/1-zlc$^1/2-1-'/2
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
  {label,305}.
    {call_only,2,{f,304}}. % '-filter_guard/1-zlc$^1/2-1-'/2
  {label,306}.
    {test,is_nil,{f,307},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,307}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^0/2-0-', 2, 309}.
  {label,308}.
    {line,[{location,"zlc_SUITE.erl",152}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^0/2-0-'},2}.
  {label,309}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_list,{t_cons,{t_integer,{1,2}},nil},nil}}]}}.
    {test,is_nonempty_list,{f,311},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,312},[{x,1}]}.
    {allocate,4,4}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {get_list,{x,1},{y,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_lt,{f,310},[{integer,0},{x,0}]}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {swap,{y,3},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,3,1}.
    {call,2,{f,309}}. % '-filter_guard/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,310}.
    {move,{y,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {call_last,2,{f,309},4}. % '-filter_guard/1-zlc$^0/2-0-'/2
  {label,311}.
    {test,is_nil,
          {f,312},
          [{tr,{x,1},{t_list,{t_cons,{t_integer,{1,2}},nil},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,312}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^21/2-21-', 2, 314}.
  {label,313}.
    {line,[{location,"zlc_SUITE.erl",148}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^21/2-21-'},2}.
  {label,314}.
    {test,is_tuple,{f,316},[{x,0}]}.
    {test,test_arity,{f,317},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tagged_tuple,{f,315},[{x,2},2,{atom,e}]}.
    {test,is_tuple,{f,317},[{x,1}]}.
    {test,test_arity,{f,315},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,4}}.
    {test,is_tagged_tuple,{f,315},[{x,4},2,{atom,ok}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {get_tuple_element,{x,0},0,{x,5}}.
    {test,is_eq_exact,{f,315},[{x,2},{x,5}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,315},[{x,2},{x,5}]}.
    {get_tuple_element,{x,4},1,{x,2}}.
    {test,is_eq_exact,{f,315},[{x,2},{x,5}]}.
    {allocate,1,6}.
    {move,{x,5},{y,0}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,314}}. % '-zmc/1-zlc$^21/2-21-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,315}.
    {test,is_tuple,{f,317},[{x,1}]}.
    {test,test_arity,{f,317},[{x,1},3]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,314}}. % '-zmc/1-zlc$^21/2-21-'/2
  {label,316}.
    {test,is_eq_exact,{f,317},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,317},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,317}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {swap,{y,0},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,314},1}. % '-zmc/1-zlc$^21/2-21-'/2


{function, '-zmc/1-zlc$^20/2-20-', 2, 319}.
  {label,318}.
    {line,[{location,"zlc_SUITE.erl",147}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^20/2-20-'},2}.
  {label,319}.
    {test,is_tuple,{f,321},[{x,0}]}.
    {test,test_arity,{f,322},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tagged_tuple,{f,320},[{x,2},2,{atom,ok}]}.
    {test,is_tuple,{f,322},[{x,1}]}.
    {test,test_arity,{f,320},[{x,1},3]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {test,is_eq_exact,{f,320},[{x,2},{x,4}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,320},[{x,2},{x,4}]}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,319}}. % '-zmc/1-zlc$^20/2-20-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,320}.
    {test,is_tuple,{f,322},[{x,1}]}.
    {test,test_arity,{f,322},[{x,1},3]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,319}}. % '-zmc/1-zlc$^20/2-20-'/2
  {label,321}.
    {test,is_eq_exact,{f,322},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,322},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,322}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {swap,{y,0},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,319},1}. % '-zmc/1-zlc$^20/2-20-'/2


{function, '-zmc/1-lc$^19/1-19-', 1, 324}.
  {label,323}.
    {line,[{location,"zlc_SUITE.erl",146}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^19/1-19-'},1}.
  {label,324}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{}},
                           2 => {t_tuple,2,true,#{}}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,326},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_tagged_tuple,{f,325},[{x,3},2,{atom,ok}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {test,is_eq_exact,{f,325},[{x,3},{x,2}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,325},[{x,1},{x,2}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,324}}. % '-zmc/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,325}.
    {call_only,1,{f,324}}. % '-zmc/1-lc$^19/1-19-'/1
  {label,326}.
    return.


{function, '-zmc/1-lc$^18/1-18-', 1, 328}.
  {label,327}.
    {line,[{location,"zlc_SUITE.erl",145}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^18/1-18-'},1}.
  {label,328}.
    {test,is_nonempty_list,{f,329},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,4}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,328}}. % '-zmc/1-lc$^18/1-18-'/1
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
  {label,329}.
    {test,is_nil,{f,330},[{x,0}]}.
    return.
  {label,330}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^17/1-17-', 1, 332}.
  {label,331}.
    {line,[{location,"zlc_SUITE.erl",144}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^17/1-17-'},1}.
  {label,332}.
    {test,is_nonempty_list,{f,336},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",141}]}.
    {gc_bif,'rem',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {select_val,{tr,{x,2},{t_integer,{-1,1}}},
                {f,338},
                {list,[{integer,0},{f,334},{integer,1},{f,333}]}}.
  {label,333}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,error},{y,1}]}}.
    {move,{x,1},{y,0}}.
    {jump,{f,335}}.
  {label,334}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,ok},{y,1}]}}.
    {move,{x,1},{y,0}}.
  {label,335}.
    {line,[{location,"zlc_SUITE.erl",144}]}.
    {call,1,{f,332}}. % '-zmc/1-lc$^17/1-17-'/1
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
  {label,336}.
    {test,is_nil,{f,337},[{x,0}]}.
    return.
  {label,337}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,338}.
    {line,[{location,"zlc_SUITE.erl",141}]}.
    {case_end,{x,2}}.


{function, '-zmc/1-bzip$^15/3-16-', 3, 340}.
  {label,339}.
    {line,[{location,"zlc_SUITE.erl",138}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-bzip$^15/3-16-'},3}.
  {label,340}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_tuple,{f,341},[{x,0}]}.
    {test,test_arity,{f,342},[{x,0},3]}.
    {test,is_nonempty_list,{f,342},[{x,1}]}.
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
    {call_only,3,{f,340}}. % '-zmc/1-bzip$^15/3-16-'/3
  {label,341}.
    {test,is_eq_exact,{f,342},[{x,0},{atom,none}]}.
    {test,is_nil,{f,342},[{x,1}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,342}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,340},2}. % '-zmc/1-bzip$^15/3-16-'/3


{function, '-zmc/1-lbc$^16/2-15-', 2, 344}.
  {label,343}.
    {line,[{location,"zlc_SUITE.erl",137}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lbc$^16/2-15-'},2}.
  {label,344}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,345},[{x,0}]}.
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
    {call_only,2,{f,344}}. % '-zmc/1-lbc$^16/2-15-'/2
  {label,345}.
    {test,is_nil,{f,346},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,346}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-bzip$^13/3-14-', 3, 348}.
  {label,347}.
    {line,[{location,"zlc_SUITE.erl",136}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-bzip$^13/3-14-'},3}.
  {label,348}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_tuple,{f,349},[{x,0}]}.
    {test,test_arity,{f,350},[{x,0},3]}.
    {test,is_tuple,{f,350},[{x,1}]}.
    {test,test_arity,{f,350},[{x,1},3]}.
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
    {call_only,3,{f,348}}. % '-zmc/1-bzip$^13/3-14-'/3
  {label,349}.
    {test,is_eq_exact,{f,350},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,350},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,350}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {swap,{y,0},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,348},2}. % '-zmc/1-bzip$^13/3-14-'/3


{function, '-zmc/1-lbc$^14/2-13-', 2, 352}.
  {label,351}.
    {line,[{location,"zlc_SUITE.erl",135}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lbc$^14/2-13-'},2}.
  {label,352}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,353},[{x,0}]}.
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
    {call_only,2,{f,352}}. % '-zmc/1-lbc$^14/2-13-'/2
  {label,353}.
    {test,is_nil,{f,354},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,354}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^11/2-12-', 2, 356}.
  {label,355}.
    {line,[{location,"zlc_SUITE.erl",134}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^11/2-12-'},2}.
  {label,356}.
    {test,is_tuple,{f,357},[{x,0}]}.
    {test,test_arity,{f,358},[{x,0},3]}.
    {test,is_nonempty_list,{f,358},[{x,1}]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_list,{x,1},{x,4},{x,1}}.
    {gc_bif,'+',{f,0},5,[{x,2},{x,3}],{x,2}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,2},{t_number,any}},{x,4}],{x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,356}}. % '-zmc/1-zlc$^11/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,357}.
    {test,is_eq_exact,{f,358},[{x,0},{atom,none}]}.
    {test,is_nil,{f,358},[{x,1}]}.
    {move,nil,{x,0}}.
    return.
  {label,358}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,356},1}. % '-zmc/1-zlc$^11/2-12-'/2


{function, '-zmc/1-lc$^12/1-11-', 1, 360}.
  {label,359}.
    {line,[{location,"zlc_SUITE.erl",134}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^12/1-11-'},1}.
  {label,360}.
    {test,is_nonempty_list,{f,361},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,360}}. % '-zmc/1-lc$^12/1-11-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,361}.
    {test,is_nil,{f,362},[{x,0}]}.
    return.
  {label,362}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^9/2-10-', 2, 364}.
  {label,363}.
    {line,[{location,"zlc_SUITE.erl",133}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^9/2-10-'},2}.
  {label,364}.
    {test,is_tuple,{f,365},[{x,0}]}.
    {test,test_arity,{f,366},[{x,0},3]}.
    {test,is_tuple,{f,366},[{x,1}]}.
    {test,test_arity,{f,366},[{x,1},3]}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,364}}. % '-zmc/1-zlc$^9/2-10-'/2
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
  {label,365}.
    {test,is_eq_exact,{f,366},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,366},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,366}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {swap,{y,0},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,364},1}. % '-zmc/1-zlc$^9/2-10-'/2


{function, '-zmc/1-lc$^10/1-9-', 1, 368}.
  {label,367}.
    {line,[{location,"zlc_SUITE.erl",132}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^10/1-9-'},1}.
  {label,368}.
    {test,is_nonempty_list,{f,369},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,2}],{x,3}}.
    {gc_bif,'*',{f,0},4,[{tr,{x,1},{t_number,any}},{integer,4}],{x,4}}.
    {allocate,4,5}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,4},{y,3}}.
    {call,1,{f,368}}. % '-zmc/1-lc$^10/1-9-'/1
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
  {label,369}.
    {test,is_nil,{f,370},[{x,0}]}.
    return.
  {label,370}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^8/1-8-', 1, 372}.
  {label,371}.
    {line,[{location,"zlc_SUITE.erl",131}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^8/1-8-'},1}.
  {label,372}.
    {test,is_nonempty_list,{f,373},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,4}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,372}}. % '-zmc/1-lc$^8/1-8-'/1
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
  {label,373}.
    {test,is_nil,{f,374},[{x,0}]}.
    return.
  {label,374}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^7/1-7-', 1, 376}.
  {label,375}.
    {line,[{location,"zlc_SUITE.erl",130}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^7/1-7-'},1}.
  {label,376}.
    {test,is_nonempty_list,{f,377},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,376}}. % '-zmc/1-lc$^7/1-7-'/1
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
  {label,377}.
    {test,is_nil,{f,378},[{x,0}]}.
    return.
  {label,378}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-bzip$^5/3-6-', 3, 380}.
  {label,379}.
    {line,[{location,"zlc_SUITE.erl",128}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-bzip$^5/3-6-'},3}.
  {label,380}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_tuple,{f,381},[{x,0}]}.
    {test,test_arity,{f,382},[{x,0},3]}.
    {test,is_tuple,{f,382},[{x,1}]}.
    {test,test_arity,{f,382},[{x,1},3]}.
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
    {call_only,3,{f,380}}. % '-zmc/1-bzip$^5/3-6-'/3
  {label,381}.
    {test,is_eq_exact,{f,382},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,382},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,382}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {swap,{y,0},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,380},2}. % '-zmc/1-bzip$^5/3-6-'/3


{function, '-zmc/1-lbc$^6/2-5-', 2, 384}.
  {label,383}.
    {line,[{location,"zlc_SUITE.erl",127}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lbc$^6/2-5-'},2}.
  {label,384}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,385},[{x,0}]}.
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
    {call_only,2,{f,384}}. % '-zmc/1-lbc$^6/2-5-'/2
  {label,385}.
    {test,is_nil,{f,386},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,386}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^3/2-4-', 2, 388}.
  {label,387}.
    {line,[{location,"zlc_SUITE.erl",126}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^3/2-4-'},2}.
  {label,388}.
    {test,is_tuple,{f,389},[{x,0}]}.
    {test,test_arity,{f,390},[{x,0},3]}.
    {test,is_tuple,{f,390},[{x,1}]}.
    {test,test_arity,{f,390},[{x,1},3]}.
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
    {call,2,{f,388}}. % '-zmc/1-zlc$^3/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,389}.
    {test,is_eq_exact,{f,390},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,390},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,390}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {swap,{y,0},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,388},1}. % '-zmc/1-zlc$^3/2-4-'/2


{function, '-zmc/1-lc$^4/1-3-', 1, 392}.
  {label,391}.
    {line,[{location,"zlc_SUITE.erl",125}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^4/1-3-'},1}.
  {label,392}.
    {test,is_nonempty_list,{f,393},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,4}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,392}}. % '-zmc/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,393}.
    {test,is_nil,{f,394},[{x,0}]}.
    return.
  {label,394}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^2/1-2-', 1, 396}.
  {label,395}.
    {line,[{location,"zlc_SUITE.erl",124}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^2/1-2-'},1}.
  {label,396}.
    {test,is_nonempty_list,{f,397},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,396}}. % '-zmc/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,397}.
    {test,is_nil,{f,398},[{x,0}]}.
    return.
  {label,398}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^1/1-1-', 1, 400}.
  {label,399}.
    {line,[{location,"zlc_SUITE.erl",123}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^1/1-1-'},1}.
  {label,400}.
    {test,is_nonempty_list,{f,401},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,400}}. % '-zmc/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,401}.
    {test,is_nil,{f,402},[{x,0}]}.
    return.
  {label,402}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^0/2-0-', 2, 404}.
  {label,403}.
    {line,[{location,"zlc_SUITE.erl",121}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^0/2-0-'},2}.
  {label,404}.
    {test,is_tuple,{f,405},[{x,0}]}.
    {test,test_arity,{f,406},[{x,0},3]}.
    {test,is_tuple,{f,406},[{x,1}]}.
    {test,test_arity,{f,406},[{x,1},3]}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,404}}. % '-zmc/1-zlc$^0/2-0-'/2
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
  {label,405}.
    {test,is_eq_exact,{f,406},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,406},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,406}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {swap,{y,0},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,404},1}. % '-zmc/1-zlc$^0/2-0-'/2


{function, '-mixed_zlc/1-zlc$^10/2-10-', 2, 408}.
  {label,407}.
    {line,[{location,"zlc_SUITE.erl",117}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^10/2-10-'},2}.
  {label,408}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,409},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,409},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,2,{f,408}}. % '-mixed_zlc/1-zlc$^10/2-10-'/2
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
  {label,409}.
    {test,is_nil,{f,410},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,410}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^9/2-9-', 2, 412}.
  {label,411}.
    {line,[{location,"zlc_SUITE.erl",116}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^9/2-9-'},2}.
  {label,412}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,413},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,414},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,412}}. % '-mixed_zlc/1-zlc$^9/2-9-'/2
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
  {label,413}.
    {test,is_nil,{f,414},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,414}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-bzip$^8/3-8-', 3, 416}.
  {label,415}.
    {line,[{location,"zlc_SUITE.erl",113}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^8/3-8-'},3}.
  {label,416}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_tuple,{f,417},[{x,0}]}.
    {test,test_arity,{f,418},[{x,0},3]}.
    {test,is_tuple,{f,418},[{x,1}]}.
    {test,test_arity,{f,418},[{x,1},3]}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_tuple_element,{x,1},1,{x,4}}.
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
    {call_only,3,{f,416}}. % '-mixed_zlc/1-bzip$^8/3-8-'/3
  {label,417}.
    {test,is_eq_exact,{f,418},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,418},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,418}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {line,[{location,"zlc_SUITE.erl",114}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",115}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,416},2}. % '-mixed_zlc/1-bzip$^8/3-8-'/3


{function, '-mixed_zlc/1-bzip$^7/3-7-', 3, 420}.
  {label,419}.
    {line,[{location,"zlc_SUITE.erl",110}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^7/3-7-'},3}.
  {label,420}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,421},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_tuple,{f,421},[{x,1}]}.
    {test,test_arity,{f,421},[{x,1},3]}.
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
    {call_only,3,{f,420}}. % '-mixed_zlc/1-bzip$^7/3-7-'/3
  {label,421}.
    {test,is_eq_exact,{f,422},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,422}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",112}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,420},3}. % '-mixed_zlc/1-bzip$^7/3-7-'/3


{function, '-mixed_zlc/1-bzip$^6/3-6-', 3, 424}.
  {label,423}.
    {line,[{location,"zlc_SUITE.erl",107}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^6/3-6-'},3}.
  {label,424}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,425},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_tuple,{f,426},[{x,1}]}.
    {test,test_arity,{f,426},[{x,1},3]}.
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
    {call_only,3,{f,424}}. % '-mixed_zlc/1-bzip$^6/3-6-'/3
  {label,425}.
    {test,is_eq_exact,{f,426},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,426}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",109}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,424},2}. % '-mixed_zlc/1-bzip$^6/3-6-'/3


{function, '-mixed_zlc/1-bzip$^5/3-5-', 3, 428}.
  {label,427}.
    {line,[{location,"zlc_SUITE.erl",106}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^5/3-5-'},3}.
  {label,428}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,429},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,430},[{x,1}]}.
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
    {call_only,3,{f,428}}. % '-mixed_zlc/1-bzip$^5/3-5-'/3
  {label,429}.
    {test,is_nil,{f,430},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,430}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^4/2-4-', 2, 432}.
  {label,431}.
    {line,[{location,"zlc_SUITE.erl",104}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^4/2-4-'},2}.
  {label,432}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,433},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_tuple,{f,433},[{x,0}]}.
    {test,test_arity,{f,433},[{x,0},3]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,432}}. % '-mixed_zlc/1-zlc$^4/2-4-'/2
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
  {label,433}.
    {test,is_eq_exact,{f,434},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,434}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,1}}.
    {call_last,2,{f,432},2}. % '-mixed_zlc/1-zlc$^4/2-4-'/2


{function, '-mixed_zlc/1-zlc$^3/2-3-', 2, 436}.
  {label,435}.
    {line,[{location,"zlc_SUITE.erl",101}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^3/2-3-'},2}.
  {label,436}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,437},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_tuple,{f,437},[{x,0}]}.
    {test,test_arity,{f,437},[{x,0},3]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,436}}. % '-mixed_zlc/1-zlc$^3/2-3-'/2
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
  {label,437}.
    {test,is_eq_exact,{f,438},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,438}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,1}}.
    {call_last,2,{f,436},2}. % '-mixed_zlc/1-zlc$^3/2-3-'/2


{function, '-mixed_zlc/1-zlc$^2/2-2-', 2, 440}.
  {label,439}.
    {line,[{location,"zlc_SUITE.erl",98}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^2/2-2-'},2}.
  {label,440}.
    {test,is_tuple,{f,441},[{x,0}]}.
    {test,test_arity,{f,442},[{x,0},3]}.
    {test,is_tuple,{f,442},[{x,1}]}.
    {test,test_arity,{f,442},[{x,1},3]}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,440}}. % '-mixed_zlc/1-zlc$^2/2-2-'/2
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
  {label,441}.
    {test,is_eq_exact,{f,442},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,442},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,442}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",99}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,440},1}. % '-mixed_zlc/1-zlc$^2/2-2-'/2


{function, '-mixed_zlc/1-zlc$^1/2-1-', 2, 444}.
  {label,443}.
    {line,[{location,"zlc_SUITE.erl",96}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^1/2-1-'},2}.
  {label,444}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,445},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,445},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {call,2,{f,444}}. % '-mixed_zlc/1-zlc$^1/2-1-'/2
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
  {label,445}.
    {test,is_nil,{f,446},[{tr,{x,1},{t_list,{t_atom,[a,b,c]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,446}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^0/2-0-', 2, 448}.
  {label,447}.
    {line,[{location,"zlc_SUITE.erl",95}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^0/2-0-'},2}.
  {label,448}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,449},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,449},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,2,{f,448}}. % '-mixed_zlc/1-zlc$^0/2-0-'/2
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
  {label,449}.
    {test,is_nil,{f,450},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,450}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-ifelse/3-zlc$^0/3-0-', 3, 452}.
  {label,451}.
    {line,[{location,"zlc_SUITE.erl",91}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-ifelse/3-zlc$^0/3-0-'},3}.
  {label,452}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{2,6}},nil}}]}}.
    {test,is_nonempty_list,{f,455},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,456},[{x,1}]}.
    {get_list,{x,1},{x,5},{x,6}}.
    {test,is_nonempty_list,{f,456},[{x,2}]}.
    {allocate,1,7}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,2},{x,0},{x,1}}.
    {test,is_eq_exact,{f,453},[{x,3},{atom,true}]}.
    {move,{x,5},{y,0}}.
    {jump,{f,454}}.
  {label,453}.
    {move,{x,0},{y,0}}.
  {label,454}.
    {move,{x,1},{x,2}}.
    {move,{x,6},{x,1}}.
    {move,{x,4},{x,0}}.
    {call,3,{f,452}}. % '-ifelse/3-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,6}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,455}.
    {test,is_nil,{f,456},[{tr,{x,1},{t_list,{t_integer,{1,5}},nil}}]}.
    {test,is_nil,{f,456},[{tr,{x,2},{t_list,{t_integer,{2,6}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,456}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-dot/2-zlc$^0/2-0-', 2, 458}.
  {label,457}.
    {line,[{location,"zlc_SUITE.erl",87}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-dot/2-zlc$^0/2-0-'},2}.
  {label,458}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{6,24}},nil}}]}}.
    {test,is_nonempty_list,{f,459},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,460},[{x,1}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,1},{x,0},{x,1}}.
    {gc_bif,'*',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{1,4}}},{tr,{x,0},{t_integer,{6,24}}}],
            {y,0}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,458}}. % '-dot/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{6,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,459}.
    {test,is_nil,{f,460},[{tr,{x,1},{t_list,{t_integer,{6,24}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,460}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zipwith4/5-zlc$^0/4-0-', 5, 462}.
  {label,461}.
    {line,[{location,"zlc_SUITE.erl",84}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zipwith4/5-zlc$^0/4-0-'},5}.
  {label,462}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{0,1}},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{2,3}},nil}}]}}.
    {'%',{var_info,{x,4},
                   [{type,{t_fun,4,{'-basic/1-fun-2-',4},{t_number,any}}}]}}.
    {test,is_nonempty_list,{f,463},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,6}}.
    {test,is_nonempty_list,{f,464},[{x,1}]}.
    {get_tl,{x,1},{x,7}}.
    {test,is_nonempty_list,{f,464},[{x,2}]}.
    {get_list,{x,2},{x,8},{x,9}}.
    {test,is_nonempty_list,{f,464},[{x,3}]}.
    {allocate,5,10}.
    {move,{x,9},{y,1}}.
    {move,{x,7},{y,2}}.
    {move,{x,6},{y,3}}.
    {move,{x,4},{y,4}}.
    {get_list,{x,3},{x,3},{y,0}}.
    {move,{integer,2},{x,1}}.
    {move,{x,8},{x,2}}.
    {move,{x,5},{x,0}}.
    {call,4,{f,469}}. % '-basic/1-fun-2-'/4
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,5}}.
    {move,{y,4},{x,4}}.
    {move,{x,0},{y,4}}.
    {trim,4,1}.
    {move,{x,5},{x,0}}.
    {call,5,{f,462}}. % '-zipwith4/5-zlc$^0/4-0-'/5
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,463}.
    {test,is_nil,{f,464},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {test,is_nil,{f,464},[{tr,{x,2},{t_list,{t_integer,{0,1}},nil}}]}.
    {test,is_nil,{f,464},[{tr,{x,3},{t_list,{t_integer,{2,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,464}.
    {test_heap,8,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2},{x,3}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-zlc$^3/3-2-', 3, 466}.
  {label,465}.
    {line,[{location,"zlc_SUITE.erl",79}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-zlc$^3/3-2-'},3}.
  {label,466}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,467},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {bs_match,{f,467},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {get_tail,5,1,{x,1}}]}}.
    {bs_start_match4,{atom,no_fail},5,{x,2},{x,2}}.
    {bs_match,{f,467},
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
    {call,3,{f,466}}. % '-basic/1-zlc$^3/3-2-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,467}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-fun-2-', 4, 469}.
  {label,468}.
    {line,[{location,"zlc_SUITE.erl",73}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-fun-2-'},4}.
  {label,469}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,0},{t_number,any}},{x,2}],{x,0}}.
    {gc_bif,'*',{f,0},4,[{tr,{x,0},{t_number,any}},{x,3}],{x,0}}.
    return.


{function, '-basic/1-zlc$^1/3-1-', 3, 471}.
  {label,470}.
    {line,[{location,"zlc_SUITE.erl",72}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-zlc$^1/3-1-'},3}.
  {label,471}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{3,3}},nil}}]}}.
    {test,is_nonempty_list,{f,472},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,473},[{x,1}]}.
    {get_tl,{x,1},{x,5}}.
    {test,is_nonempty_list,{f,473},[{x,2}]}.
    {allocate,1,6}.
    {move,{x,3},{y,0}}.
    {get_tl,{x,2},{x,2}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call,3,{f,471}}. % '-basic/1-zlc$^1/3-1-'/3
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
  {label,472}.
    {test,is_nil,{f,473},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {test,is_nil,{f,473},[{tr,{x,2},{t_list,{t_integer,{3,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,473}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-zlc$^0/3-0-', 3, 475}.
  {label,474}.
    {line,[{location,"zlc_SUITE.erl",70}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-zlc$^0/3-0-'},3}.
  {label,475}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{3,3}},nil}}]}}.
    {test,is_nonempty_list,{f,476},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,477},[{x,1}]}.
    {get_tl,{x,1},{x,5}}.
    {test,is_nonempty_list,{f,477},[{x,2}]}.
    {allocate,1,6}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tl,{x,2},{x,2}}.
    {gc_bif,'+',{f,0},6,[{tr,{x,3},{t_integer,{1,3}}},{integer,5}],{y,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call,3,{f,475}}. % '-basic/1-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{6,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,476}.
    {test,is_nil,{f,477},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {test,is_nil,{f,477},[{tr,{x,2},{t_list,{t_integer,{3,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,477}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
