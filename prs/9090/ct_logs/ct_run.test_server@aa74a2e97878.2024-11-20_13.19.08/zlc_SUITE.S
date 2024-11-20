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
           {strict_binary,1},
           {strict_list,1},
           {suite,0},
           {zmc,1}]}.

{attributes, []}.

{labels, 775}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"zlc_SUITE.erl",32}]}.
    {func_info,{atom,zlc_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"zlc_SUITE.erl",36}]}.
    {func_info,{atom,zlc_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"zlc_SUITE.erl",39}]}.
    {func_info,{atom,zlc_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"zlc_SUITE.erl",40}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[basic,mixed_zlc,zmc,filter_guard,
                                 filter_pattern,cartesian,nomatch,
                                 bad_generators,strict_list,strict_binary]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"zlc_SUITE.erl",53}]}.
    {func_info,{atom,zlc_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,zlc_SUITE},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",54}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"zlc_SUITE.erl",57}]}.
    {func_info,{atom,zlc_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"zlc_SUITE.erl",60}]}.
    {func_info,{atom,zlc_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"zlc_SUITE.erl",63}]}.
    {func_info,{atom,zlc_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"zlc_SUITE.erl",67}]}.
    {func_info,{atom,zlc_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"zlc_SUITE.erl",70}]}.
    {func_info,{atom,zlc_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, basic, 1, 20}.
  {label,19}.
    {line,[{location,"zlc_SUITE.erl",73}]}.
    {func_info,{atom,zlc_SUITE},{atom,basic},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,[2,2,2]},{x,1}}.
    {move,{literal,[3,3,3]},{x,2}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",74}]}.
    {call,3,{f,772}}. % '-basic/1-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{6,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,26},
          [{tr,{x,0},{t_cons,{t_integer,{6,'+inf'}},nil}},{literal,[6,7,8]}]}.
    {move,{literal,[2,2,2]},{x,1}}.
    {move,{literal,[3,3,3]},{x,2}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",76}]}.
    {call,3,{f,768}}. % '-basic/1-zlc$^1/3-1-'/3
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
    {make_fun3,{f,766},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,[0,1]},{x,3}}.
    {move,{literal,[2,2]},{x,2}}.
    {move,{literal,[2,3]},{x,4}}.
    {move,{literal,[1,5]},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",77}]}.
    {call,5,{f,28}}. % zipwith4/5
    {'%',{var_info,{x,0},[{type,{t_cons,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,24},
          [{tr,{x,0},{t_cons,{t_number,any},nil}},{literal,[6,24]}]}.
    {move,{literal,[24,12,8,6]},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",79}]}.
    {call,2,{f,30}}. % dot/2
    {test,is_eq_exact,{f,23},[{x,0},{integer,96}]}.
    {move,{literal,[1,3,5]},{x,1}}.
    {move,{literal,[2,4,6]},{x,2}}.
    {move,{literal,[true,false,true]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",81}]}.
    {call,3,{f,32}}. % ifelse/3
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,6}},nil}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},{t_cons,{t_integer,{1,6}},nil}},{literal,[1,4,5]}]}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{literal,<<2,2,2>>},{x,2}}.
    {move,{literal,<<5,10,15>>},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",83}]}.
    {call,3,{f,763}}. % '-basic/1-zlc$^3/3-2-'/3
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
    {line,[{location,"zlc_SUITE.erl",81}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{location,"zlc_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{location,"zlc_SUITE.erl",77}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{location,"zlc_SUITE.erl",75}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{location,"zlc_SUITE.erl",74}]}.
    {badmatch,{x,0}}.


{function, zipwith4, 5, 28}.
  {label,27}.
    {line,[{location,"zlc_SUITE.erl",87}]}.
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
    {call_only,5,{f,759}}. % '-zipwith4/5-zlc$^0/4-0-'/5


{function, dot, 2, 30}.
  {label,29}.
    {line,[{location,"zlc_SUITE.erl",90}]}.
    {func_info,{atom,zlc_SUITE},{atom,dot},2}.
  {label,30}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{6,24}},nil}}]}}.
    {allocate,0,2}.
    {line,[{location,"zlc_SUITE.erl",91}]}.
    {call,2,{f,755}}. % '-dot/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{6,'+inf'}},nil}}]}}.
    {call_ext_last,1,{extfunc,lists,sum,1},0}.


{function, ifelse, 3, 32}.
  {label,31}.
    {line,[{location,"zlc_SUITE.erl",93}]}.
    {func_info,{atom,zlc_SUITE},{atom,ifelse},3}.
  {label,32}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[false,true]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_cons,{t_integer,{2,6}},nil}}]}}.
    {call_only,3,{f,749}}. % '-ifelse/3-zlc$^0/3-0-'/3


{function, mixed_zlc, 1, 34}.
  {label,33}.
    {line,[{location,"zlc_SUITE.erl",101}]}.
    {func_info,{atom,zlc_SUITE},{atom,mixed_zlc},1}.
  {label,34}.
    {test,is_list,{f,33},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",102}]}.
    {call,2,{f,745}}. % '-mixed_zlc/1-zlc$^0/2-0-'/2
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
    {line,[{location,"zlc_SUITE.erl",103}]}.
    {call,2,{f,741}}. % '-mixed_zlc/1-zlc$^1/2-1-'/2
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
    {line,[{location,"zlc_SUITE.erl",105}]}.
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
    {line,[{location,"zlc_SUITE.erl",106}]}.
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
    {line,[{location,"zlc_SUITE.erl",105}]}.
    {call,2,{f,735}}. % '-mixed_zlc/1-zlc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,4,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,51},
          [{tr,{x,0},{t_list,{t_tuple,4,true,#{}},nil}},
           {literal,[{a,c,1,3},{b,d,2,4}]}]}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 1,b => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",108}]}.
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
    {call,2,{f,730}}. % '-mixed_zlc/1-zlc$^3/2-3-'/2
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
    {line,[{location,"zlc_SUITE.erl",111}]}.
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
    {call,2,{f,725}}. % '-mixed_zlc/1-zlc$^4/2-4-'/2
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
    {line,[{location,"zlc_SUITE.erl",113}]}.
    {call,3,{f,721}}. % '-mixed_zlc/1-bzip$^5/3-5-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,48},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 2,b => 2,c => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",116}]}.
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
    {line,[{location,"zlc_SUITE.erl",114}]}.
    {call,3,{f,716}}. % '-mixed_zlc/1-bzip$^6/3-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,47},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 2,b => 2,c => 2}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",119}]}.
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
    {line,[{location,"zlc_SUITE.erl",117}]}.
    {call,3,{f,711}}. % '-mixed_zlc/1-bzip$^7/3-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,46},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{atom,ordered},{x,1}}.
    {move,{literal,#{a => 1,b => 2,c => 3}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",121}]}.
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
    {line,[{location,"zlc_SUITE.erl",122}]}.
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
    {line,[{location,"zlc_SUITE.erl",120}]}.
    {call,3,{f,705}}. % '-mixed_zlc/1-bzip$^8/3-8-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,45},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<3,4,5>>}]}.
    {move,{literal,[1,2,3]},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",123}]}.
    {call,2,{f,701}}. % '-mixed_zlc/1-zlc$^9/2-9-'/2
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
    {line,[{location,"zlc_SUITE.erl",124}]}.
    {call,2,{f,697}}. % '-mixed_zlc/1-zlc$^10/2-10-'/2
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
    {line,[{location,"zlc_SUITE.erl",124}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{location,"zlc_SUITE.erl",123}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{location,"zlc_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{location,"zlc_SUITE.erl",117}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{location,"zlc_SUITE.erl",114}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{location,"zlc_SUITE.erl",113}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{location,"zlc_SUITE.erl",110}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{location,"zlc_SUITE.erl",107}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{location,"zlc_SUITE.erl",104}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{location,"zlc_SUITE.erl",103}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{location,"zlc_SUITE.erl",102}]}.
    {badmatch,{x,0}}.


{function, zmc, 1, 55}.
  {label,54}.
    {line,[{location,"zlc_SUITE.erl",127}]}.
    {func_info,{atom,zlc_SUITE},{atom,zmc},1}.
  {label,55}.
    {test,is_list,{f,54},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",128}]}.
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
    {call,2,{f,691}}. % '-zmc/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,4,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,87},
          [{tr,{x,0},{t_list,{t_tuple,4,true,#{}},nil}},
           {literal,[{a,b,1,3}]}]}.
    {move,{integer,50},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",129}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,6}}.
    {line,[{location,"zlc_SUITE.erl",130}]}.
    {call,1,{f,687}}. % '-zmc/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",130}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,5}}.
    {move,{integer,50},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",131}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,683}}. % '-zmc/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {line,[]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",131}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,4}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",132}]}.
    {call,1,{f,679}}. % '-zmc/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {move,{x,0},{y,3}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",133}]}.
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
    {call,2,{f,673}}. % '-zmc/1-zlc$^3/2-4-'/2
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
    {line,[{location,"zlc_SUITE.erl",134}]}.
    {call,2,{f,669}}. % '-zmc/1-lbc$^6/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,3}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,2}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",135}]}.
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
    {call,3,{f,663}}. % '-zmc/1-bzip$^5/3-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,85},
          [{tr,{y,3},{t_bitstring,64,true}},
           {tr,{x,0},{t_bitstring,256,true}}]}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",137}]}.
    {call,1,{f,659}}. % '-zmc/1-lc$^7/1-7-'/1
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
    {line,[{location,"zlc_SUITE.erl",137}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,4}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",138}]}.
    {call,1,{f,655}}. % '-zmc/1-lc$^8/1-8-'/1
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
    {line,[{location,"zlc_SUITE.erl",138}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,3}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",139}]}.
    {call,1,{f,651}}. % '-zmc/1-lc$^10/1-9-'/1
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
    {line,[{location,"zlc_SUITE.erl",140}]}.
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
    {call,2,{f,645}}. % '-zmc/1-zlc$^9/2-10-'/2
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
    {line,[{location,"zlc_SUITE.erl",141}]}.
    {call,1,{f,641}}. % '-zmc/1-lc$^12/1-11-'/1
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
    {call,2,{f,636}}. % '-zmc/1-zlc$^11/2-12-'/2
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
    {line,[{location,"zlc_SUITE.erl",142}]}.
    {call,2,{f,632}}. % '-zmc/1-lbc$^14/2-13-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,1}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",143}]}.
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
    {call,3,{f,626}}. % '-zmc/1-bzip$^13/3-14-'/3
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
    {line,[{location,"zlc_SUITE.erl",144}]}.
    {call,2,{f,622}}. % '-zmc/1-lbc$^16/2-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,4}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,3}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",145}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,73},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,5}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},7}.
  {label,73}.
    {move,{y,3},{x,2}}.
    {move,{y,6},{x,1}}.
    {init_yregs,{list,[{y,3},{y,5}]}}.
    {call,3,{f,617}}. % '-zmc/1-bzip$^15/3-16-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,81},
          [{tr,{y,4},{t_bitstring,64,true}},
           {tr,{x,0},{t_bitstring,256,true}}]}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",151}]}.
    {call,1,{f,609}}. % '-zmc/1-lc$^17/1-17-'/1
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
    {line,[{location,"zlc_SUITE.erl",147}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {swap,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",152}]}.
    {call,1,{f,605}}. % '-zmc/1-lc$^18/1-18-'/1
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
    {line,[{location,"zlc_SUITE.erl",152}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,5}}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",153}]}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {move,{x,0},{y,4}}.
    {move,{y,5},{x,0}}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,601}}. % '-zmc/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,80},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",154}]}.
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
    {call,2,{f,594}}. % '-zmc/1-zlc$^20/2-20-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,79},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{y,6},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",155}]}.
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
    {call,2,{f,587}}. % '-zmc/1-zlc$^21/2-21-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,78},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,78}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"zlc_SUITE.erl",154}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"zlc_SUITE.erl",153}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"zlc_SUITE.erl",144}]}.
    {badmatch,{atom,false}}.
  {label,82}.
    {line,[{location,"zlc_SUITE.erl",142}]}.
    {badmatch,{atom,false}}.
  {label,83}.
    {line,[{location,"zlc_SUITE.erl",141}]}.
    {badmatch,{atom,false}}.
  {label,84}.
    {line,[{location,"zlc_SUITE.erl",139}]}.
    {badmatch,{atom,false}}.
  {label,85}.
    {line,[{location,"zlc_SUITE.erl",134}]}.
    {badmatch,{atom,false}}.
  {label,86}.
    {line,[{location,"zlc_SUITE.erl",132}]}.
    {badmatch,{atom,false}}.
  {label,87}.
    {line,[{location,"zlc_SUITE.erl",128}]}.
    {badmatch,{x,0}}.


{function, filter_guard, 1, 89}.
  {label,88}.
    {line,[{location,"zlc_SUITE.erl",158}]}.
    {func_info,{atom,zlc_SUITE},{atom,filter_guard},1}.
  {label,89}.
    {test,is_list,{f,88},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[[1],[2]]},{x,1}}.
    {move,{literal,[[1,2],[2,-3]]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",159}]}.
    {call,2,{f,582}}. % '-filter_guard/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}}]}}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}},
           {literal,[[1,2,1]]}]}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",160}]}.
    {call,2,{f,577}}. % '-filter_guard/1-zlc$^1/2-1-'/2
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
    {line,[{location,"zlc_SUITE.erl",162}]}.
    {call,2,{f,572}}. % '-filter_guard/1-zlc$^2/2-2-'/2
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
    {line,[{location,"zlc_SUITE.erl",163}]}.
    {call,2,{f,567}}. % '-filter_guard/1-zlc$^3/2-3-'/2
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
    {line,[{location,"zlc_SUITE.erl",164}]}.
    {call,2,{f,562}}. % '-filter_guard/1-zlc$^4/2-4-'/2
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
    {line,[{location,"zlc_SUITE.erl",165}]}.
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
    {line,[{location,"zlc_SUITE.erl",166}]}.
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
    {call,2,{f,555}}. % '-filter_guard/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,3,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,96},
          [{tr,{x,0},{t_list,{t_tuple,3,true,#{}},nil}},{literal,[{b,d,2}]}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{literal,[2,2,2]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",168}]}.
    {call,3,{f,550}}. % '-filter_guard/1-bzip$^6/3-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,95},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<5>>}]}.
    {move,{literal,[1,2,3]},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",169}]}.
    {call,2,{f,545}}. % '-filter_guard/1-zlc$^7/2-7-'/2
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
    {line,[{location,"zlc_SUITE.erl",170}]}.
    {call,2,{f,540}}. % '-filter_guard/1-zlc$^8/2-8-'/2
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
    {line,[{location,"zlc_SUITE.erl",171}]}.
    {call,2,{f,535}}. % '-filter_guard/1-zlc$^9/2-9-'/2
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
    {line,[{location,"zlc_SUITE.erl",171}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{location,"zlc_SUITE.erl",170}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{location,"zlc_SUITE.erl",169}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{location,"zlc_SUITE.erl",168}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{location,"zlc_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{location,"zlc_SUITE.erl",164}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{location,"zlc_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{location,"zlc_SUITE.erl",162}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{location,"zlc_SUITE.erl",160}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{location,"zlc_SUITE.erl",159}]}.
    {badmatch,{x,0}}.


{function, filter_pattern, 1, 103}.
  {label,102}.
    {line,[{location,"zlc_SUITE.erl",173}]}.
    {func_info,{atom,zlc_SUITE},{atom,filter_pattern},1}.
  {label,103}.
    {test,is_list,{f,102},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"zlc_SUITE.erl",174}]}.
    {call,2,{f,110}}. % do_filter_pat_1/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",175}]}.
    {call,2,{f,110}}. % do_filter_pat_1/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[{error,e}]},{x,1}}.
    {move,{literal,[{ok,a}]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",176}]}.
    {call,2,{f,110}}. % do_filter_pat_1/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,1}}.
    {line,[{location,"zlc_SUITE.erl",178}]}.
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
    {line,[{location,"zlc_SUITE.erl",179}]}.
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
          {f,106},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_integer,{1,10}},
                                  2 => {t_integer,{1,20}}}},
                       nil}}]}.
    {move,{literal,[{a,7}]},{x,1}}.
    {move,{literal,[{a,1}]},{x,0}}.
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
    {line,[{location,"zlc_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{location,"zlc_SUITE.erl",180}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{location,"zlc_SUITE.erl",179}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{location,"zlc_SUITE.erl",178}]}.
    {badmatch,{x,0}}.


{function, do_filter_pat_1, 2, 110}.
  {label,109}.
    {line,[{location,"zlc_SUITE.erl",187}]}.
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
    {line,[{location,"zlc_SUITE.erl",188}]}.
    {call,2,{f,531}}. % '-do_filter_pat_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"zlc_SUITE.erl",189}]}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,528}}. % '-do_filter_pat_1/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, do_filter_pat_2, 2, 112}.
  {label,111}.
    {line,[{location,"zlc_SUITE.erl",192}]}.
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
    {line,[{location,"zlc_SUITE.erl",193}]}.
    {call,2,{f,523}}. % '-do_filter_pat_2/2-zlc$^0/2-0-'/2
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
    {line,[{location,"zlc_SUITE.erl",194}]}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,519}}. % '-do_filter_pat_2/2-lc$^1/1-1-'/1
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
    {line,[{location,"zlc_SUITE.erl",197}]}.
    {func_info,{atom,zlc_SUITE},{atom,cartesian},1}.
  {label,115}.
    {test,is_list,{f,114},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",199}]}.
    {call,1,{f,512}}. % '-cartesian/1-lc$^0/1-0-'/1
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
    {line,[{location,"zlc_SUITE.erl",203}]}.
    {call,2,{f,505}}. % '-cartesian/1-zlc$^2/2-2-'/2
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
    {line,[{location,"zlc_SUITE.erl",206}]}.
    {call,2,{f,497}}. % '-cartesian/1-zlc$^4/2-4-'/2
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
    {line,[{location,"zlc_SUITE.erl",209}]}.
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
    {line,[{location,"zlc_SUITE.erl",207}]}.
    {call,3,{f,489}}. % '-cartesian/1-bzip$^6/3-6-'/3
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
    {line,[{location,"zlc_SUITE.erl",204}]}.
    {badmatch,{x,0}}.
  {label,119}.
    {line,[{location,"zlc_SUITE.erl",201}]}.
    {badmatch,{x,0}}.
  {label,120}.
    {line,[{location,"zlc_SUITE.erl",198}]}.
    {badmatch,{x,0}}.


{function, strict_list, 1, 122}.
  {label,121}.
    {line,[{location,"zlc_SUITE.erl",213}]}.
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
    {line,[{location,"zlc_SUITE.erl",214}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,14}}.
    {move,{literal,[1,1,1]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",216}]}.
    {call,2,{f,485}}. % '-strict_list/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{2,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,189},
          [{tr,{x,0},{t_cons,{t_integer,{2,'+inf'}},nil}},{literal,[2,3,4]}]}.
    {move,{literal,[1,1,1]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",217}]}.
    {call,2,{f,480}}. % '-strict_list/1-zlc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{3,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,188},
          [{tr,{x,0},{t_list,{t_integer,{3,'+inf'}},nil}},{literal,[3,4]}]}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",219}]}.
    {call,2,{f,191}}. % strict_list_mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_nil,{f,187},[{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}}]}.
    {move,{literal,[{i,10},{i,20}]},{x,1}}.
    {move,{literal,[{i,1},{i,2}]},{x,0}}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",220}]}.
    {call,2,{f,191}}. % strict_list_mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,186},
          [{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}},{literal,[11,22]}]}.
    {move,{literal,[{i,10},bad,{i,20}]},{x,1}}.
    {move,{literal,[{i,3},{i,4},{i,5}]},{x,0}}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",221}]}.
    {call,2,{f,191}}. % strict_list_mixed_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,185},
          [{tr,{x,0},{t_list,{t_integer,{11,'+inf'}},nil}},{literal,[13,25]}]}.
    {'catch',{y,22},{f,123}}.
    {move,{literal,[{i,10},{i,15},{i,20}]},{x,1}}.
    {move,{literal,[{i,3},bad,{i,5}]},{x,0}}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",223}]}.
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
    {line,[{scope,","},{location,"zlc_SUITE.erl",225}]}.
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
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",227}]}.
    {call,2,{f,193}}. % strict_list_mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_nil,{f,182},[{tr,{x,0},{t_list,{t_number,any},nil}}]}.
    {move,{literal,#{{k,4} => {v,3}}},{x,1}}.
    {move,{literal,[{i,3}]},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",228}]}.
    {call,2,{f,193}}. % strict_list_mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,181},
          [{tr,{x,0},{t_list,{t_number,any},nil}},{literal,[15]}]}.
    {move,{literal,#{{a,0} => {a,0},{k,4} => {v,3}}},{x,1}}.
    {move,{literal,[{i,0},{i,3}]},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",229}]}.
    {call,2,{f,193}}. % strict_list_mixed_2/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,180},
          [{tr,{x,0},{t_list,{t_number,any},nil}},{literal,[15]}]}.
    {move,{y,14},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",232}]}.
    {call,1,{f,476}}. % '-strict_list/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {move,{x,0},{y,22}}.
    {move,{y,14},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",233}]}.
    {call,1,{f,472}}. % '-strict_list/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[i]}}},
                                  nil}}]}}.
    {move,{x,0},{y,21}}.
    {move,{y,14},{x,0}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",234}]}.
    {call,1,{f,468}}. % '-strict_list/1-lc$^3/1-4-'/1
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
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",233}]}.
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
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",237}]}.
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
    {line,[{scope,"("},{location,"zlc_SUITE.erl",239}]}.
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
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",241}]}.
    {call,2,{f,196}}. % strict_list_strict_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,'+inf'}},nil}}]}}.
    {test,is_nil,{f,177},[{tr,{x,0},{t_list,{t_integer,{8,'+inf'}},nil}}]}.
    {move,{literal,[{i,10},{i,20}]},{x,1}}.
    {move,{literal,[{i,1},{i,2}]},{x,0}}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",242}]}.
    {call,2,{f,196}}. % strict_list_strict_1/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,176},
          [{tr,{x,0},{t_list,{t_integer,{8,'+inf'}},nil}},{literal,[11,22]}]}.
    {'catch',{y,18},{f,127}}.
    {move,{literal,[{i,10},{i,15},{i,20}]},{x,1}}.
    {move,{literal,[{i,3},bad,{i,5}]},{x,0}}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",244}]}.
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
    {line,[{scope,"$"},{location,"zlc_SUITE.erl",246}]}.
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
    {line,[{scope,"\""},{location,"zlc_SUITE.erl",248}]}.
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
    {line,[{scope," "},{location,"zlc_SUITE.erl",250}]}.
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
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",252}]}.
    {call,3,{f,198}}. % strict_list_strict_2/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_nil,{f,171},[{tr,{x,0},{t_list,{t_number,any},nil}}]}.
    {move,{literal,[{i,2},{i,7}]},{x,1}}.
    {move,{literal,<<3,9>>},{x,2}}.
    {move,{literal,[{i,1},{i,2}]},{x,0}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",253}]}.
    {call,3,{f,198}}. % strict_list_strict_2/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,170},
          [{tr,{x,0},{t_list,{t_number,any},nil}},{literal,[5,23]}]}.
    {move,{y,14},{x,0}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",254}]}.
    {call,1,{f,464}}. % '-strict_list/1-lc$^6/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {move,{x,0},{y,22}}.
    {move,{y,14},{x,0}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",255}]}.
    {call,1,{f,460}}. % '-strict_list/1-lc$^8/1-6-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_atom,[i]},2 => {t_number,any}}},
                     nil}}]}}.
    {move,{x,0},{y,21}}.
    {move,{y,14},{x,0}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",256}]}.
    {call,1,{f,456}}. % '-strict_list/1-lc$^7/1-7-'/1
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
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",257}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {move,{y,20},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,21},{x,0}}.
    {init_yregs,{list,[{y,20},{y,21}]}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",255}]}.
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
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",259}]}.
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
    {line,[{scope,[28]},{location,"zlc_SUITE.erl",261}]}.
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
    {line,[{scope,[26]},{location,"zlc_SUITE.erl",263}]}.
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
    {line,[{scope,[24]},{location,"zlc_SUITE.erl",265}]}.
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
    {line,[{scope,[22]},{location,"zlc_SUITE.erl",267}]}.
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
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",269}]}.
    {call,2,{f,200}}. % strict_list_strict_3/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_nil,{f,164},[{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}}]}.
    {move,{literal,<<3>>},{x,1}}.
    {move,{literal,[{i,42}]},{x,0}}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",270}]}.
    {call,2,{f,200}}. % strict_list_strict_3/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,163},
          [{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}},{literal,"-"}]}.
    {'catch',{y,9},{f,136}}.
    {move,{literal,<<1,2>>},{x,1}}.
    {move,{literal,[{i,1}]},{x,0}}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",272}]}.
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
    {line,[{scope,[18]},{location,"zlc_SUITE.erl",274}]}.
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
    {line,[{scope,[16]},{location,"zlc_SUITE.erl",276}]}.
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
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",278}]}.
    {call,2,{f,202}}. % strict_list_strict_4/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{100,100}},nil}}]}}.
    {test,is_nil,{f,159},[{tr,{x,0},{t_list,{t_integer,{100,100}},nil}}]}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,[{i,100}]},{x,0}}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",279}]}.
    {call,2,{f,202}}. % strict_list_strict_4/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{100,100}},nil}}]}}.
    {test,is_eq_exact,
          {f,158},
          [{tr,{x,0},{t_list,{t_integer,{100,100}},nil}},{literal,"d"}]}.
    {'catch',{y,6},{f,139}}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{literal,[{i,100}]},{x,0}}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",281}]}.
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
    {line,[{scope,"\f"},{location,"zlc_SUITE.erl",283}]}.
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
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",285}]}.
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
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",288}]}.
    {call,2,{f,204}}. % strict_list_5/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_nil,{f,154},[{tr,{x,0},{t_list,{t_float,any},nil}}]}.
    {move,{literal,<<32,0,0,0,0,64,64,9,30,184,81,235,133,31>>},{x,1}}.
    {move,{literal,<<1:2>>},{x,0}}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",289}]}.
    {call,2,{f,204}}. % strict_list_5/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,153},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[3.14]}]}.
    {move,{literal,<<32,0,0,0,0,64,64,9,30,184,81,235,133,31>>},{x,1}}.
    {move,{literal,<<3:2>>},{x,0}}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",290}]}.
    {call,2,{f,204}}. % strict_list_5/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,152},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[0.0,3.14]}]}.
    {'catch',{y,3},{f,142}}.
    {move,{literal,<<64,64,69,0,0,0,0,0,0>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",292}]}.
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
           {field_flags,[{anno,[291,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,151},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,151},{x,1},{commands,[{ensure_exactly,0}]}}.
    {'catch',{y,2},{f,143}}.
    {move,{literal,<<117,255,255,255,255,255,255,255,255,255,255,255,255,255,
                     255,249,2,12,64,0,0:5>>},
          {x,1}}.
    {move,{literal,<<1:2>>},{x,0}}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",295}]}.
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
           {field_flags,[{anno,[293,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,150},[{tr,{x,2},{t_float,any}},{float,17.0}]}.
    {bs_match,{f,150},{x,1},{commands,[{ensure_exactly,0}]}}.
    {'catch',{y,1},{f,144}}.
    {move,{literal,<<32,66,40,0,0,64,255,255,255,255,255,255,255,255>>},{x,1}}.
    {move,{literal,<<2:2>>},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",297}]}.
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
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",299}]}.
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
    {put_list,{literal,{line,257}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",257}]}.
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
    {put_list,{literal,{line,234}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",234}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},23}.
  {label,148}.
    {line,[{scope,[0]},{location,"zlc_SUITE.erl",298}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",296}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",293}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",291}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",290}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",289}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",288}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",284}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",282}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,"\f"},{location,"zlc_SUITE.erl",280}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",279}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",278}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",275}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[16]},{location,"zlc_SUITE.erl",273}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[18]},{location,"zlc_SUITE.erl",271}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",270}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",269}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",266}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[22]},{location,"zlc_SUITE.erl",264}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,[24]},{location,"zlc_SUITE.erl",262}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{scope,[26]},{location,"zlc_SUITE.erl",260}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,[28]},{location,"zlc_SUITE.erl",258}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",253}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",252}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,[30]},{location,"zlc_SUITE.erl",249}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope," "},{location,"zlc_SUITE.erl",247}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,"\""},{location,"zlc_SUITE.erl",245}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,"$"},{location,"zlc_SUITE.erl",243}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",242}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",241}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,"&"},{location,"zlc_SUITE.erl",238}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,"("},{location,"zlc_SUITE.erl",236}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",229}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",228}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",227}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,"*"},{location,"zlc_SUITE.erl",224}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,","},{location,"zlc_SUITE.erl",222}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",221}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",220}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",219}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",217}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,"."},{location,"zlc_SUITE.erl",216}]}.
    {badmatch,{x,0}}.


{function, strict_list_mixed_1, 2, 191}.
  {label,190}.
    {line,[{location,"zlc_SUITE.erl",303}]}.
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
    {call_only,2,{f,451}}. % '-strict_list_mixed_1/2-zlc$^0/2-0-'/2


{function, strict_list_mixed_2, 2, 193}.
  {label,192}.
    {line,[{location,"zlc_SUITE.erl",306}]}.
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
    {line,[{location,"zlc_SUITE.erl",307}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"zlc_SUITE.erl",308}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,194},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,194}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,445},2}. % '-strict_list_mixed_2/2-zlc$^0/2-0-'/2


{function, strict_list_strict_1, 2, 196}.
  {label,195}.
    {line,[{location,"zlc_SUITE.erl",310}]}.
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
    {call_only,2,{f,441}}. % '-strict_list_strict_1/2-zlc$^0/2-0-'/2


{function, strict_list_strict_2, 3, 198}.
  {label,197}.
    {line,[{location,"zlc_SUITE.erl",313}]}.
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
    {call_only,3,{f,436}}. % '-strict_list_strict_2/3-zlc$^0/3-0-'/3


{function, strict_list_strict_3, 2, 200}.
  {label,199}.
    {line,[{location,"zlc_SUITE.erl",316}]}.
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
    {call_only,2,{f,432}}. % '-strict_list_strict_3/2-zlc$^0/2-0-'/2


{function, strict_list_strict_4, 2, 202}.
  {label,201}.
    {line,[{location,"zlc_SUITE.erl",319}]}.
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
    {call_only,2,{f,428}}. % '-strict_list_strict_4/2-zlc$^0/2-0-'/2


{function, strict_list_5, 2, 204}.
  {label,203}.
    {line,[{location,"zlc_SUITE.erl",322}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_list_5},2}.
  {label,204}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,2,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"zlc_SUITE.erl",323}]}.
    {call,2,{f,423}}. % '-strict_list_5/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"zlc_SUITE.erl",324}]}.
    {call,2,{f,418}}. % '-strict_list_5/2-zlc$^1/2-1-'/2
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
    {line,[{location,"zlc_SUITE.erl",327}]}.
    {func_info,{atom,zlc_SUITE},{atom,strict_binary},1}.
  {label,207}.
    {test,is_list,{f,206},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,100},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",328}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",330}]}.
    {call,3,{f,414}}. % '-strict_binary/1-bzip$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,236},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<2,4,6>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{literal,[{1,1},{2,2},{2,3}]},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",331}]}.
    {call,3,{f,409}}. % '-strict_binary/1-bzip$^1/3-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,235},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<2,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,4}}.
    {move,{literal,#{1 => 2,3 => 4}},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",332}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,208},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => 2,3 => 4}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,208}.
    {move,{y,4},{x,2}}.
    {move,{literal,<<1,2>>},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {call,3,{f,404}}. % '-strict_binary/1-bzip$^2/3-2-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,234},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<2,24>>}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",334}]}.
    {call,2,{f,238}}. % strict_binary_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,233},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{literal,<<4>>},{x,1}}.
    {move,{literal,#{2 => {val,3}}},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",335}]}.
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
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",336}]}.
    {call,2,{f,400}}. % '-strict_binary/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,4}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",337}]}.
    {call,1,{f,396}}. % '-strict_binary/1-lc$^4/1-4-'/1
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
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",337}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",338}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",337}]}.
    {call,2,{f,238}}. % strict_binary_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,223},
          [{tr,{x,0},{t_bitstring,256,true}},
           {tr,{y,4},{t_bitstring,64,true}}]}.
    {'catch',{y,4},{f,211}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",339}]}.
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
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",340}]}.
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
    {line,[{scope,[7,8]},{location,"zlc_SUITE.erl",341}]}.
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
    {line,[{scope,[5,6]},{location,"zlc_SUITE.erl",343}]}.
    {call,3,{f,243}}. % strict_binary_mixed_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{literal,<<1:2>>},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",344}]}.
    {call,3,{f,243}}. % strict_binary_mixed_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,227},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{literal,#{0 => {v,0}}},{x,1}}.
    {move,{literal,#{1 => {v,999}}},{x,2}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",345}]}.
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
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",346}]}.
    {call,2,{f,392}}. % '-strict_binary/1-lbc$^6/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,4}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",348}]}.
    {call,1,{f,388}}. % '-strict_binary/1-lc$^8/1-6-'/1
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
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",349}]}.
    {call,1,{f,384}}. % '-strict_binary/1-lc$^7/1-7-'/1
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
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",347}]}.
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
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",350}]}.
    {call,2,{f,380}}. % '-strict_binary/1-lbc$^10/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {move,{x,0},{y,4}}.
    {move,{y,1},{x,0}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",352}]}.
    {call,1,{f,376}}. % '-strict_binary/1-lc$^12/1-9-'/1
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
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",353}]}.
    {call,1,{f,372}}. % '-strict_binary/1-lc$^11/1-10-'/1
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
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",351}]}.
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
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",355}]}.
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
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",358}]}.
    {call,1,{f,369}}. % '-strict_binary/1-lc$^14/1-11-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {line,[{location,"zlc_SUITE.erl",358}]}.
    {gc_bif,length,
            {f,0},
            1,
            [{tr,{x,0},{t_list,{t_integer,{0,1114111}},nil}}],
            {x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",358}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,4}}.
    {move,{literal,<<"skÃ¤rgÃ¥rdsÃ¶">>},{x,0}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",360}]}.
    {call,1,{f,366}}. % '-strict_binary/1-lc$^15/1-12-'/1
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
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",359}]}.
    {call,2,{f,363}}. % '-strict_binary/1-lbc$^16/2-13-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {swap,{y,4},{x,0}}.
    {move,{literal,<<"skÃ¤rgÃ¥rdsÃ¶">>},{x,1}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",361}]}.
    {call,2,{f,241}}. % strict_binary_utf8/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,220},
          [{tr,{x,0},{t_bitstring,256,true}},{tr,{y,4},{t_bitstring,8,true}}]}.
    {'catch',{y,0},{f,219}}.
    {move,{integer,8},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",363}]}.
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
    {put_list,{literal,{line,361}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",361}]}.
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
    {put_list,{literal,{line,353}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",353}]}.
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
    {put_list,{literal,{line,349}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",349}]}.
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
    {put_list,{literal,{line,338}},{x,0},{x,0}}.
    {put_list,{literal,{module,zlc_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertEqual},{x,0}]}}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",338}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,224}.
    {line,[{scope,[0]},{location,"zlc_SUITE.erl",362}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",354}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",344}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",339}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",335}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",334}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",332}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",331}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",330}]}.
    {badmatch,{x,0}}.


{function, strict_binary_1, 2, 238}.
  {label,237}.
    {line,[{location,"zlc_SUITE.erl",367}]}.
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
    {line,[{location,"zlc_SUITE.erl",368}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,239},[{x,0}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{y,2}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,239}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {call_last,3,{f,358},3}. % '-strict_binary_1/2-bzip$^0/3-0-'/3


{function, strict_binary_utf8, 2, 241}.
  {label,240}.
    {line,[{location,"zlc_SUITE.erl",370}]}.
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
    {call_last,3,{f,354},2}. % '-strict_binary_utf8/2-bzip$^0/3-0-'/3


{function, strict_binary_mixed_1, 3, 243}.
  {label,242}.
    {line,[{location,"zlc_SUITE.erl",373}]}.
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
    {line,[{location,"zlc_SUITE.erl",374}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {swap,{y,3},{x,0}}.
    {move,{atom,ordered},{x,1}}.
    {line,[{location,"zlc_SUITE.erl",375}]}.
    {call_ext,2,{extfunc,maps,iterator,2}}.
    {move,{x,0},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,1}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",379}]}.
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
    {call_last,4,{f,345},5}. % '-strict_binary_mixed_1/3-bzip$^0/4-0-'/4


{function, nomatch, 1, 247}.
  {label,246}.
    {line,[{location,"zlc_SUITE.erl",381}]}.
    {func_info,{atom,zlc_SUITE},{atom,nomatch},1}.
  {label,247}.
    {test,is_list,{f,246},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"zlc_SUITE.erl",382}]}.
    {call,2,{f,257}}. % do_nomatch_1/2
    {test,is_nil,{f,255},[{x,0}]}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",383}]}.
    {call,2,{f,257}}. % do_nomatch_1/2
    {test,is_nil,{f,254},[{x,0}]}.
    {move,{literal,[a,b]},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",384}]}.
    {call,2,{f,257}}. % do_nomatch_1/2
    {test,is_nil,{f,253},[{x,0}]}.
    {move,nil,{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",385}]}.
    {call,2,{f,257}}. % do_nomatch_1/2
    {test,is_tagged_tuple,{f,252},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,252},[{x,1}]}.
    {test,test_arity,{f,252},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,252},[{x,1},{literal,{bad_generators,{[1,2,3],[]}}}]}.
    {move,{literal,[a,b]},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",386}]}.
    {call,2,{f,257}}. % do_nomatch_1/2
    {test,is_tagged_tuple,{f,251},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,251},[{x,1}]}.
    {test,test_arity,{f,251},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,251},[{x,1},{literal,{bad_generators,{[3],[]}}}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"zlc_SUITE.erl",388}]}.
    {call,2,{f,260}}. % do_nomatch_2/2
    {test,is_eq_exact,{f,250},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<1>>},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",389}]}.
    {call,2,{f,260}}. % do_nomatch_2/2
    {test,is_eq_exact,{f,249},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<3>>},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",390}]}.
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
    {line,[{location,"zlc_SUITE.erl",389}]}.
    {badmatch,{x,0}}.
  {label,250}.
    {line,[{location,"zlc_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,251}.
    {line,[{location,"zlc_SUITE.erl",386}]}.
    {badmatch,{x,0}}.
  {label,252}.
    {line,[{location,"zlc_SUITE.erl",385}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{location,"zlc_SUITE.erl",384}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{location,"zlc_SUITE.erl",383}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{location,"zlc_SUITE.erl",382}]}.
    {badmatch,{x,0}}.


{function, do_nomatch_1, 2, 257}.
  {label,256}.
    {line,[{location,"zlc_SUITE.erl",393}]}.
    {func_info,{atom,zlc_SUITE},{atom,do_nomatch_1},2}.
  {label,257}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {allocate,1,2}.
    {'catch',{y,0},{f,258}}.
    {line,[{location,"zlc_SUITE.erl",394}]}.
    {call,2,{f,341}}. % '-do_nomatch_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,258}.
    {catch_end,{y,0}}.
    {deallocate,1}.
    return.


{function, do_nomatch_2, 2, 260}.
  {label,259}.
    {line,[{location,"zlc_SUITE.erl",396}]}.
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
    {line,[{location,"zlc_SUITE.erl",397}]}.
    {call,3,{f,337}}. % '-do_nomatch_2/2-bzip$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,261}.
    {catch_end,{y,2}}.
    {deallocate,3}.
    return.


{function, bad_generators, 1, 263}.
  {label,262}.
    {line,[{location,"zlc_SUITE.erl",399}]}.
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
    {line,[{location,"zlc_SUITE.erl",401}]}.
    {call,2,{f,335}}. % '-bad_generators/1-zlc$^0/2-0-'/2
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
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",403}]}.
    {call,2,{f,331}}. % '-bad_generators/1-zlc$^1/2-1-'/2
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
    {line,[{scope,[18]},{location,"zlc_SUITE.erl",405}]}.
    {call,2,{f,326}}. % '-bad_generators/1-zlc$^2/2-2-'/2
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
    {line,[{scope,[16]},{location,"zlc_SUITE.erl",407}]}.
    {call,3,{f,321}}. % '-bad_generators/1-bzip$^3/3-3-'/3
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
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",409}]}.
    {call,3,{f,319}}. % '-bad_generators/1-bzip$^4/3-4-'/3
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
    {line,[{scope,"\f"},{location,"zlc_SUITE.erl",410}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,269},[{x,0}]}.
    {move,{literal,{bad_generator,a}},{x,0}}.
    {line,[{scope,"\v"},{location,"zlc_SUITE.erl",410}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {jump,{f,270}}.
  {label,269}.
    {move,{literal,[1]},{x,1}}.
    {call,2,{f,313}}. % '-bad_generators/1-zlc$^5/2-5-'/2
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
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",412}]}.
    {call,2,{f,308}}. % '-bad_generators/1-zlc$^6/2-6-'/2
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
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",423}]}.
    {call,2,{f,288}}. % bad_generators/2
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
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",428}]}.
    {call,2,{f,290}}. % bad_generators_bc/2
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
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",433}]}.
    {call,2,{f,292}}. % bad_generators_mc/2
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
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",439}]}.
    {call,2,{f,288}}. % bad_generators/2
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
    {line,[{scope,[0]},{location,"zlc_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,277}.
    {line,[{scope,[2]},{location,"zlc_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,278}.
    {line,[{scope,[4]},{location,"zlc_SUITE.erl",425}]}.
    {badmatch,{x,0}}.
  {label,279}.
    {line,[{scope,[6]},{location,"zlc_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,280}.
    {line,[{scope,"\b"},{location,"zlc_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,281}.
    {line,[{scope,"\n"},{location,"zlc_SUITE.erl",410}]}.
    {badmatch,{x,0}}.
  {label,282}.
    {line,[{scope,"\f"},{location,"zlc_SUITE.erl",408}]}.
    {badmatch,{x,0}}.
  {label,283}.
    {line,[{scope,[14]},{location,"zlc_SUITE.erl",406}]}.
    {badmatch,{x,0}}.
  {label,284}.
    {line,[{scope,[16]},{location,"zlc_SUITE.erl",404}]}.
    {badmatch,{x,0}}.
  {label,285}.
    {line,[{scope,[18]},{location,"zlc_SUITE.erl",402}]}.
    {badmatch,{x,0}}.
  {label,286}.
    {line,[{scope,[20]},{location,"zlc_SUITE.erl",400}]}.
    {badmatch,{x,0}}.


{function, bad_generators, 2, 288}.
  {label,287}.
    {line,[{location,"bad_zlc.erl",2}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators},2}.
  {label,288}.
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
    {call_only,2,{f,304}}. % '-bad_generators/2-zlc$^0/2-0-'/2


{function, bad_generators_bc, 2, 290}.
  {label,289}.
    {line,[{location,"bad_zlc.erl",5}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators_bc},2}.
  {label,290}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{2,3}},nil}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,1}}.
    {move,{atom,a},{x,0}}.
    {call_last,3,{f,302},1}. % '-bad_generators_bc/2-bzip$^0/3-0-'/3


{function, bad_generators_mc, 2, 292}.
  {label,291}.
    {line,[{location,"bad_zlc.erl",8}]}.
    {func_info,{atom,zlc_SUITE},{atom,bad_generators_mc},2}.
  {label,292}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,1}},nil}}]}}.
    {allocate,0,2}.
    {line,[{location,"bad_zlc.erl",10}]}.
    {call,2,{f,298}}. % '-bad_generators_mc/2-zlc$^0/2-0-'/2
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


{function, module_info, 0, 294}.
  {label,293}.
    {line,[]}.
    {func_info,{atom,zlc_SUITE},{atom,module_info},0}.
  {label,294}.
    {move,{atom,zlc_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 296}.
  {label,295}.
    {line,[]}.
    {func_info,{atom,zlc_SUITE},{atom,module_info},1}.
  {label,296}.
    {move,{x,0},{x,1}}.
    {move,{atom,zlc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-bad_generators_mc/2-zlc$^0/2-0-', 2, 298}.
  {label,297}.
    {line,[{location,"bad_zlc.erl",10}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators_mc/2-zlc$^0/2-0-'},2}.
  {label,298}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,299},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,300},[{x,1}]}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,298}}. % '-bad_generators_mc/2-zlc$^0/2-0-'/2
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
  {label,299}.
    {test,is_nil,{f,300},[{tr,{x,1},{t_list,{t_integer,{1,1}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,300}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators_bc/2-bzip$^0/3-0-', 3, 302}.
  {label,301}.
    {line,[{location,"bad_zlc.erl",6}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators_bc/2-bzip$^0/3-0-'},3}.
  {label,302}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{2,3}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"bad_zlc.erl",7}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/2-zlc$^0/2-0-', 2, 304}.
  {label,303}.
    {line,[{location,"bad_zlc.erl",4}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/2-zlc$^0/2-0-'},2}.
  {label,304}.
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
    {test,is_nonempty_list,{f,305},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,306},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,304}}. % '-bad_generators/2-zlc$^0/2-0-'/2
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
  {label,305}.
    {test,is_nil,
          {f,306},
          [{tr,{x,0},{t_union,{t_atom,[d]},nil,none,none,none}}]}.
    {test,is_nil,
          {f,306},
          [{tr,{x,1},
               {t_list,{t_union,{t_atom,[a,b,c,d]},
                                none,
                                {t_integer,{1,4}},
                                none,none},
                       nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,306}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^6/2-6-', 2, 308}.
  {label,307}.
    {line,[{location,"zlc_SUITE.erl",412}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^6/2-6-'},2}.
  {label,308}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c,d]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,310},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,311},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_ge,{f,309},[{tr,{x,0},{t_integer,{1,3}}},{integer,2}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,308}}. % '-bad_generators/1-zlc$^6/2-6-'/2
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
  {label,309}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,308}}. % '-bad_generators/1-zlc$^6/2-6-'/2
  {label,310}.
    {test,is_nil,{f,311},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,311}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^5/2-5-', 2, 313}.
  {label,312}.
    {line,[{location,"zlc_SUITE.erl",410}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^5/2-5-'},2}.
  {label,313}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,314},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,313},1}. % '-bad_generators/1-zlc$^5/2-5-'/2
  {label,314}.
    {test,is_tuple,{f,316},[{x,0}]}.
    {test,test_arity,{f,317},[{x,0},3]}.
    {test,is_nonempty_list,{f,317},[{x,1}]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,315},[{x,3},{x,2}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,313}}. % '-bad_generators/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,315}.
    {call_only,2,{f,313}}. % '-bad_generators/1-zlc$^5/2-5-'/2
  {label,316}.
    {test,is_eq_exact,{f,317},[{x,0},{atom,none}]}.
    {test,is_nil,{f,317},[{tr,{x,1},{t_list,{t_integer,{1,1}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,317}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-bzip$^4/3-4-', 3, 319}.
  {label,318}.
    {line,[{location,"zlc_SUITE.erl",409}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-bzip$^4/3-4-'},3}.
  {label,319}.
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


{function, '-bad_generators/1-bzip$^3/3-3-', 3, 321}.
  {label,320}.
    {line,[{location,"zlc_SUITE.erl",407}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-bzip$^3/3-3-'},3}.
  {label,321}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,323},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,324},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_ge,{f,322},[{integer,2},{tr,{x,3},{t_integer,{1,4}}}]}.
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
  {label,322}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,321}}. % '-bad_generators/1-bzip$^3/3-3-'/3
  {label,323}.
    {test,is_nil,{f,324},[{tr,{x,1},{t_list,{t_integer,{1,2}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,324}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^2/2-2-', 2, 326}.
  {label,325}.
    {line,[{location,"zlc_SUITE.erl",405}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^2/2-2-'},2}.
  {label,326}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {test,is_nonempty_list,{f,328},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,329},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_ge,{f,327},[{integer,2},{tr,{x,2},{t_integer,{1,4}}}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,326}}. % '-bad_generators/1-zlc$^2/2-2-'/2
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
  {label,327}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,326}}. % '-bad_generators/1-zlc$^2/2-2-'/2
  {label,328}.
    {test,is_nil,{f,329},[{tr,{x,1},{t_list,{t_integer,{1,2}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,329}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^1/2-1-', 2, 331}.
  {label,330}.
    {line,[{location,"zlc_SUITE.erl",403}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^1/2-1-'},2}.
  {label,331}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {test,is_nonempty_list,{f,332},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,333},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,331}}. % '-bad_generators/1-zlc$^1/2-1-'/2
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
  {label,332}.
    {test,is_nil,{f,333},[{tr,{x,1},{t_list,{t_integer,{1,4}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,333}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generators/1-zlc$^0/2-0-', 2, 335}.
  {label,334}.
    {line,[{location,"zlc_SUITE.erl",401}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-bad_generators/1-zlc$^0/2-0-'},2}.
  {label,335}.
    {'%',{var_info,{x,0},[{type,{t_atom,[x]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_nomatch_2/2-bzip$^0/3-0-', 3, 337}.
  {label,336}.
    {line,[{location,"zlc_SUITE.erl",397}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_nomatch_2/2-bzip$^0/3-0-'},3}.
  {label,337}.
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
    {bs_match,{f,338},{x,1},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,is_nonempty_list,{f,338},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,3,{f,337}}. % '-do_nomatch_2/2-bzip$^0/3-0-'/3
  {label,338}.
    {test,is_nil,
          {f,339},
          [{tr,{x,0},
               {t_list,{t_union,{t_atom,[a]},none,{t_integer,{1,2}},none,none},
                       nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,339}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_nomatch_1/2-zlc$^0/2-0-', 2, 341}.
  {label,340}.
    {line,[{location,"zlc_SUITE.erl",394}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_nomatch_1/2-zlc$^0/2-0-'},2}.
  {label,341}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b]},nil}}]}}.
    {test,is_nonempty_list,{f,342},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_nonempty_list,{f,343},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,341}}. % '-do_nomatch_1/2-zlc$^0/2-0-'/2
  {label,342}.
    {test,is_nil,{f,343},[{tr,{x,1},{t_list,{t_atom,[a,b]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,343}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary_mixed_1/3-bzip$^0/4-0-', 4, 345}.
  {label,344}.
    {line,[{location,"zlc_SUITE.erl",376}]}.
    {func_info,{atom,zlc_SUITE},
               {atom,'-strict_binary_mixed_1/3-bzip$^0/4-0-'},
               4}.
  {label,345}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,4},4}.
    {bs_match,{f,349},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,5,{literal,[]},1,1,{x,5}}]}}.
    {test,is_tuple,{f,349},[{x,1}]}.
    {test,test_arity,{f,349},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,6}}.
    {test,is_tagged_tuple,{f,349},[{x,6},2,{atom,v}]}.
    {test,is_tuple,{f,349},[{x,2}]}.
    {test,test_arity,{f,349},[{x,2},3]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,2},1,{x,4}}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,348},[{x,4},2,{atom,v}]}.
    {test,is_eq_exact,{f,346},[{x,5},{integer,0}]}.
    {get_tuple_element,{x,6},1,{x,4}}.
    {line,[{location,"zlc_SUITE.erl",377}]}.
    {bs_create_bin,{f,0},
                   0,5,64,
                   {x,4},
                   {list,[{atom,integer},1,1,nil,{x,4},{integer,64}]}}.
    {jump,{f,347}}.
  {label,346}.
    {get_tuple_element,{x,4},1,{x,4}}.
    {line,[{location,"zlc_SUITE.erl",378}]}.
    {bs_create_bin,{f,0},
                   0,5,64,
                   {x,4},
                   {list,[{atom,integer},1,1,nil,{x,4},{integer,64}]}}.
  {label,347}.
    {line,[{location,"zlc_SUITE.erl",376}]}.
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
    {call_only,4,{f,345}}. % '-strict_binary_mixed_1/3-bzip$^0/4-0-'/4
  {label,348}.
    {call_only,4,{f,345}}. % '-strict_binary_mixed_1/3-bzip$^0/4-0-'/4
  {label,349}.
    {test,is_eq_exact,{f,350},[{x,1},{atom,none}]}.
    {test,is_eq_exact,{f,350},[{x,2},{atom,none}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,350}.
    {test,is_nonempty_list,{f,351},[{x,1}]}.
    {allocate,4,5}.
    {move,{x,4},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",379}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,2},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,3},{x,3}}.
    {move,{y,1},{x,0}}.
    {call_last,4,{f,345},4}. % '-strict_binary_mixed_1/3-bzip$^0/4-0-'/4
  {label,351}.
    {test,is_nonempty_list,{f,352},[{x,2}]}.
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
    {call_last,4,{f,345},4}. % '-strict_binary_mixed_1/3-bzip$^0/4-0-'/4
  {label,352}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary_utf8/2-bzip$^0/3-0-', 3, 354}.
  {label,353}.
    {line,[{location,"zlc_SUITE.erl",371}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary_utf8/2-bzip$^0/3-0-'},3}.
  {label,354}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {test,bs_get_utf8,
          {f,355},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {field_flags,[{anno,[371,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,4}}.
    {test,is_nonempty_list,{f,355},[{x,0}]}.
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
    {call_only,3,{f,354}}. % '-strict_binary_utf8/2-bzip$^0/3-0-'/3
  {label,355}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_match,{f,356},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,{f,356},[{x,0}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,356}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary_1/2-bzip$^0/3-0-', 3, 358}.
  {label,357}.
    {line,[{location,"zlc_SUITE.erl",368}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary_1/2-bzip$^0/3-0-'},3}.
  {label,358}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {bs_match,{f,359},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_tuple,{f,359},[{x,0}]}.
    {test,test_arity,{f,359},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {test,is_tagged_tuple,{f,359},[{x,5},2,{atom,val}]}.
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
    {call_only,3,{f,358}}. % '-strict_binary_1/2-bzip$^0/3-0-'/3
  {label,359}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_match,{f,360},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,360},[{x,0},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,360}.
    {test,is_nonempty_list,{f,361},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,358},2}. % '-strict_binary_1/2-bzip$^0/3-0-'/3
  {label,361}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lbc$^16/2-13-', 2, 363}.
  {label,362}.
    {line,[{location,"zlc_SUITE.erl",359}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lbc$^16/2-13-'},2}.
  {label,363}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{2 => {t_integer,{0,1114111}}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,364},[{x,0}]}.
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
    {call_only,2,{f,363}}. % '-strict_binary/1-lbc$^16/2-13-'/2
  {label,364}.
    {move,{x,1},{x,0}}.
    return.


{function, '-strict_binary/1-lc$^15/1-12-', 1, 366}.
  {label,365}.
    {line,[{location,"zlc_SUITE.erl",360}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^15/1-12-'},1}.
  {label,366}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,367},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[360,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,366}}. % '-strict_binary/1-lc$^15/1-12-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,367}.
    {move,nil,{x,0}}.
    return.


{function, '-strict_binary/1-lc$^14/1-11-', 1, 369}.
  {label,368}.
    {line,[{location,"zlc_SUITE.erl",358}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^14/1-11-'},1}.
  {label,369}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,370},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[358,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,369}}. % '-strict_binary/1-lc$^14/1-11-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,370}.
    {move,nil,{x,0}}.
    return.


{function, '-strict_binary/1-lc$^11/1-10-', 1, 372}.
  {label,371}.
    {line,[{location,"zlc_SUITE.erl",353}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^11/1-10-'},1}.
  {label,372}.
    {test,is_nonempty_list,{f,373},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'-',{f,0},2,[{x,1}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,372}}. % '-strict_binary/1-lc$^11/1-10-'/1
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
  {label,373}.
    {test,is_nil,{f,374},[{x,0}]}.
    return.
  {label,374}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lc$^12/1-9-', 1, 376}.
  {label,375}.
    {line,[{location,"zlc_SUITE.erl",352}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^12/1-9-'},1}.
  {label,376}.
    {test,is_nonempty_list,{f,377},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,376}}. % '-strict_binary/1-lc$^12/1-9-'/1
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
  {label,377}.
    {test,is_nil,{f,378},[{x,0}]}.
    return.
  {label,378}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lbc$^10/2-8-', 2, 380}.
  {label,379}.
    {line,[{location,"zlc_SUITE.erl",350}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lbc$^10/2-8-'},2}.
  {label,380}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,381},[{x,0}]}.
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
    {call_only,2,{f,380}}. % '-strict_binary/1-lbc$^10/2-8-'/2
  {label,381}.
    {test,is_nil,{f,382},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,382}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lc$^7/1-7-', 1, 384}.
  {label,383}.
    {line,[{location,"zlc_SUITE.erl",349}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^7/1-7-'},1}.
  {label,384}.
    {test,is_nonempty_list,{f,385},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'-',{f,0},2,[{x,1}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,384}}. % '-strict_binary/1-lc$^7/1-7-'/1
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
  {label,385}.
    {test,is_nil,{f,386},[{x,0}]}.
    return.
  {label,386}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lc$^8/1-6-', 1, 388}.
  {label,387}.
    {line,[{location,"zlc_SUITE.erl",348}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^8/1-6-'},1}.
  {label,388}.
    {test,is_nonempty_list,{f,389},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,388}}. % '-strict_binary/1-lc$^8/1-6-'/1
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
  {label,389}.
    {test,is_nil,{f,390},[{x,0}]}.
    return.
  {label,390}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lbc$^6/2-5-', 2, 392}.
  {label,391}.
    {line,[{location,"zlc_SUITE.erl",346}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lbc$^6/2-5-'},2}.
  {label,392}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,393},[{x,0}]}.
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
    {call_only,2,{f,392}}. % '-strict_binary/1-lbc$^6/2-5-'/2
  {label,393}.
    {test,is_nil,{f,394},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,394}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lc$^4/1-4-', 1, 396}.
  {label,395}.
    {line,[{location,"zlc_SUITE.erl",337}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lc$^4/1-4-'},1}.
  {label,396}.
    {test,is_nonempty_list,{f,397},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,5}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,3}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,396}}. % '-strict_binary/1-lc$^4/1-4-'/1
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
  {label,397}.
    {test,is_nil,{f,398},[{x,0}]}.
    return.
  {label,398}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-lbc$^3/2-3-', 2, 400}.
  {label,399}.
    {line,[{location,"zlc_SUITE.erl",336}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-lbc$^3/2-3-'},2}.
  {label,400}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,401},[{x,0}]}.
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
    {call_only,2,{f,400}}. % '-strict_binary/1-lbc$^3/2-3-'/2
  {label,401}.
    {test,is_nil,{f,402},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,402}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-bzip$^2/3-2-', 3, 404}.
  {label,403}.
    {line,[{location,"zlc_SUITE.erl",332}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-bzip$^2/3-2-'},3}.
  {label,404}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {bs_match,{f,405},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_tuple,{f,405},[{x,0}]}.
    {test,test_arity,{f,405},[{x,0},3]}.
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
    {call_only,3,{f,404}}. % '-strict_binary/1-bzip$^2/3-2-'/3
  {label,405}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_match,{f,406},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,406},[{x,0},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,406}.
    {test,is_nonempty_list,{f,407},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,404},2}. % '-strict_binary/1-bzip$^2/3-2-'/3
  {label,407}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-bzip$^1/3-1-', 3, 409}.
  {label,408}.
    {line,[{location,"zlc_SUITE.erl",331}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-bzip$^1/3-1-'},3}.
  {label,409}.
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
    {bs_match,{f,411},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,411},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {get_tuple_element,{x,3},0,{x,5}}.
    {test,is_eq_exact,
          {f,410},
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
    {call_only,3,{f,409}}. % '-strict_binary/1-bzip$^1/3-1-'/3
  {label,410}.
    {call_only,3,{f,409}}. % '-strict_binary/1-bzip$^1/3-1-'/3
  {label,411}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,412},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,
        {f,412},
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
  {label,412}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_binary/1-bzip$^0/3-0-', 3, 414}.
  {label,413}.
    {line,[{location,"zlc_SUITE.erl",330}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_binary/1-bzip$^0/3-0-'},3}.
  {label,414}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {bs_match,{f,415},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,415},[{x,0}]}.
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
    {call_only,3,{f,414}}. % '-strict_binary/1-bzip$^0/3-0-'/3
  {label,415}.
    {test,is_nil,{f,416},[{tr,{x,0},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,416}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_5/2-zlc$^1/2-1-', 2, 418}.
  {label,417}.
    {line,[{location,"zlc_SUITE.erl",324}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list_5/2-zlc$^1/2-1-'},2}.
  {label,418}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,419},
              {x,0},
              {commands,[{ensure_at_least,1,1},{'=:=',nil,1,1}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {bs_match,{f,419},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_float2,
          {f,419},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[324,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {call,2,{f,418}}. % '-strict_list_5/2-zlc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,419}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,420},{x,0},{commands,[{ensure_at_least,1,1},{skip,1}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {bs_match,{f,420},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_float2,
          {f,420},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[324,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {call_only,2,{f,418}}. % '-strict_list_5/2-zlc$^1/2-1-'/2
  {label,420}.
    {test,is_eq_exact,
          {f,421},
          [{tr,{x,1},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.
  {label,421}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_5/2-zlc$^0/2-0-', 2, 423}.
  {label,422}.
    {line,[{location,"zlc_SUITE.erl",323}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list_5/2-zlc$^0/2-0-'},2}.
  {label,423}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,425},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,3,{literal,[]},1,1,{x,3}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {bs_match,{f,425},
              {x,4},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,bs_get_float2,
          {f,425},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[323,{file,"zlc_SUITE.erl"}]},unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,1},6}.
    {test,is_eq_exact,{f,424},[{tr,{x,3},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,1,6}.
    {move,{x,5},{y,0}}.
    {call,2,{f,423}}. % '-strict_list_5/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,424}.
    {call_only,2,{f,423}}. % '-strict_list_5/2-zlc$^0/2-0-'/2
  {label,425}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test,is_eq_exact,
          {f,426},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {test,is_eq_exact,
          {f,426},
          [{tr,{x,1},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.
  {label,426}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_strict_4/2-zlc$^0/2-0-', 2, 428}.
  {label,427}.
    {line,[{location,"zlc_SUITE.erl",320}]}.
    {func_info,{atom,zlc_SUITE},
               {atom,'-strict_list_strict_4/2-zlc$^0/2-0-'},
               2}.
  {label,428}.
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
    {bs_match,{f,429},
              {x,1},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,42}]}}.
    {test,is_nonempty_list,{f,429},[{x,0}]}.
    {allocate,0,2}.
    {get_tl,{x,0},{x,0}}.
    {call,2,{f,428}}. % '-strict_list_strict_4/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{100,100}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,100},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,429}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,430},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,
          {f,430},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[i]},
                                  2 => {t_integer,{100,100}}}},
                       nil}}]}.
    return.
  {label,430}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_strict_3/2-zlc$^0/2-0-', 2, 432}.
  {label,431}.
    {line,[{location,"zlc_SUITE.erl",317}]}.
    {func_info,{atom,zlc_SUITE},
               {atom,'-strict_list_strict_3/2-zlc$^0/2-0-'},
               2}.
  {label,432}.
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
    {bs_match,{f,433},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,433},[{x,0}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{1,42}}},{tr,{x,3},{t_integer,{0,255}}}],
            {y,0}}.
    {call,2,{f,432}}. % '-strict_list_strict_3/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,433}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,434},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,
          {f,434},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[i]},2 => {t_integer,{1,42}}}},
                       nil}}]}.
    return.
  {label,434}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_strict_2/3-zlc$^0/3-0-', 3, 436}.
  {label,435}.
    {line,[{location,"zlc_SUITE.erl",314}]}.
    {func_info,{atom,zlc_SUITE},
               {atom,'-strict_list_strict_2/3-zlc$^0/3-0-'},
               3}.
  {label,436}.
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
    {test,bs_start_match3,{f,439},3,[{x,2}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {bs_match,{f,437},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,437},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,6}}.
    {test,is_nonempty_list,{f,437},[{x,1}]}.
    {get_list,{x,1},{x,7},{x,8}}.
    {test,is_tagged_tuple,
          {f,437},
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
    {call,3,{f,436}}. % '-strict_list_strict_2/3-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,437}.
    {bs_set_position,{x,2},{x,3}}.
    {bs_match,{f,438},{x,2},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,
          {f,438},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[i]},2 => {t_number,any}}},
                       nil}}]}.
    {test,is_nil,
        {f,438},
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
  {label,438}.
    {bs_get_tail,{x,2},{x,2},3}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,439}.
    {test_heap,7,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},nil]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_strict_1/2-zlc$^0/2-0-', 2, 441}.
  {label,440}.
    {line,[{location,"zlc_SUITE.erl",311}]}.
    {func_info,{atom,zlc_SUITE},
               {atom,'-strict_list_strict_1/2-zlc$^0/2-0-'},
               2}.
  {label,441}.
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
    {test,is_nonempty_list,{f,442},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,{f,443},[{x,2}]}.
    {test,test_arity,{f,443},[{x,2},2]}.
    {test,is_nonempty_list,{f,443},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,5}}.
    {test,is_tagged_tuple,
          {f,443},
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
    {call,2,{f,441}}. % '-strict_list_strict_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,442}.
    {test,is_nil,
        {f,443},
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
  {label,443}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_mixed_2/2-zlc$^0/2-0-', 2, 445}.
  {label,444}.
    {line,[{location,"zlc_SUITE.erl",308}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list_mixed_2/2-zlc$^0/2-0-'},2}.
  {label,445}.
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
    {test,is_nonempty_list,{f,447},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tagged_tuple,
          {f,448},
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
    {test,is_tuple,{f,448},[{x,1}]}.
    {test,test_arity,{f,448},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {get_tuple_element,{x,1},2,{x,4}}.
    {test,is_tagged_tuple,{f,446},[{x,0},2,{atom,k}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,446},[{x,1},2,{atom,v}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'*',{f,0},5,[{x,2},{x,0}],{x,0}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,0},{t_number,any}},{x,1}],{x,0}}.
    {allocate,1,5}.
    {move,{x,0},{y,0}}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,445}}. % '-strict_list_mixed_2/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,446}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,445}}. % '-strict_list_mixed_2/2-zlc$^0/2-0-'/2
  {label,447}.
    {test,is_eq_exact,{f,448},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,448}.
    {test,is_nonempty_list,{f,449},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,445},1}. % '-strict_list_mixed_2/2-zlc$^0/2-0-'/2
  {label,449}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list_mixed_1/2-zlc$^0/2-0-', 2, 451}.
  {label,450}.
    {line,[{location,"zlc_SUITE.erl",304}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list_mixed_1/2-zlc$^0/2-0-'},2}.
  {label,451}.
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
    {test,is_nonempty_list,{f,453},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,
          {f,454},
          [{tr,{x,2},
               {t_union,{t_atom,[bad]},
                        none,none,
                        [{{2,{t_atom,[i]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[i]},
                                     2 => {t_integer,{1,5}}}}}],
                        none}}]}.
    {test,is_nonempty_list,{f,454},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {test,is_tuple,
          {f,452},
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
    {call,2,{f,451}}. % '-strict_list_mixed_1/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,452}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,451}}. % '-strict_list_mixed_1/2-zlc$^0/2-0-'/2
  {label,453}.
    {test,is_nil,
        {f,454},
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
  {label,454}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^7/1-7-', 1, 456}.
  {label,455}.
    {line,[{location,"zlc_SUITE.erl",256}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^7/1-7-'},1}.
  {label,456}.
    {test,is_nonempty_list,{f,457},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,456}}. % '-strict_list/1-lc$^7/1-7-'/1
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
  {label,457}.
    {test,is_nil,{f,458},[{x,0}]}.
    return.
  {label,458}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^8/1-6-', 1, 460}.
  {label,459}.
    {line,[{location,"zlc_SUITE.erl",255}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^8/1-6-'},1}.
  {label,460}.
    {test,is_nonempty_list,{f,461},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,460}}. % '-strict_list/1-lc$^8/1-6-'/1
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
  {label,461}.
    {test,is_nil,{f,462},[{x,0}]}.
    return.
  {label,462}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^6/1-5-', 1, 464}.
  {label,463}.
    {line,[{location,"zlc_SUITE.erl",254}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^6/1-5-'},1}.
  {label,464}.
    {test,is_nonempty_list,{f,465},[{x,0}]}.
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
    {call,1,{f,464}}. % '-strict_list/1-lc$^6/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,465}.
    {test,is_nil,{f,466},[{x,0}]}.
    return.
  {label,466}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^3/1-4-', 1, 468}.
  {label,467}.
    {line,[{location,"zlc_SUITE.erl",234}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^3/1-4-'},1}.
  {label,468}.
    {test,is_nonempty_list,{f,469},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,7}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,468}}. % '-strict_list/1-lc$^3/1-4-'/1
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
  {label,469}.
    {test,is_nil,{f,470},[{x,0}]}.
    return.
  {label,470}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^4/1-3-', 1, 472}.
  {label,471}.
    {line,[{location,"zlc_SUITE.erl",233}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^4/1-3-'},1}.
  {label,472}.
    {test,is_nonempty_list,{f,473},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,472}}. % '-strict_list/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[i]}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,i},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,473}.
    {test,is_nil,{f,474},[{x,0}]}.
    return.
  {label,474}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-lc$^2/1-2-', 1, 476}.
  {label,475}.
    {line,[{location,"zlc_SUITE.erl",232}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-lc$^2/1-2-'},1}.
  {label,476}.
    {test,is_nonempty_list,{f,477},[{x,0}]}.
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
    {call,1,{f,476}}. % '-strict_list/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,477}.
    {test,is_nil,{f,478},[{x,0}]}.
    return.
  {label,478}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-zlc$^1/2-1-', 2, 480}.
  {label,479}.
    {line,[{location,"zlc_SUITE.erl",217}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-zlc$^1/2-1-'},2}.
  {label,480}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,482},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,483},[{x,1}]}.
    {get_tl,{x,1},{x,0}}.
    {test,is_ge,{f,481},[{tr,{x,2},{t_integer,{1,3}}},{integer,2}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_integer,{2,3}}},{integer,1}],{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,480}}. % '-strict_list/1-zlc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{3,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,481}.
    {move,{x,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,480}}. % '-strict_list/1-zlc$^1/2-1-'/2
  {label,482}.
    {test,is_nil,{f,483},[{tr,{x,1},{t_list,{t_integer,{1,1}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,483}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_list/1-zlc$^0/2-0-', 2, 485}.
  {label,484}.
    {line,[{location,"zlc_SUITE.erl",216}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-strict_list/1-zlc$^0/2-0-'},2}.
  {label,485}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {test,is_nonempty_list,{f,486},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,487},[{x,1}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tl,{x,1},{x,1}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_integer,{1,3}}},{integer,1}],{y,0}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,485}}. % '-strict_list/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{2,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,486}.
    {test,is_nil,{f,487},[{tr,{x,1},{t_list,{t_integer,{1,1}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,487}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-bzip$^6/3-6-', 3, 489}.
  {label,488}.
    {line,[{location,"zlc_SUITE.erl",207}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-bzip$^6/3-6-'},3}.
  {label,489}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,490},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_tuple,{f,491},[{x,1}]}.
    {test,test_arity,{f,491},[{x,1},3]}.
    {allocate,3,5}.
    {move,{x,4},{y,1}}.
    {move,{x,2},{y,2}}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {get_tuple_element,{x,1},2,{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{literal,<<1,255>>},{x,0}}.
    {call,4,{f,494}}. % '-cartesian/1-lbc$^7/2-7-'/4
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,489},3}. % '-cartesian/1-bzip$^6/3-6-'/3
  {label,490}.
    {test,is_eq_exact,{f,491},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,491}.
    {test,is_nonempty_list,{f,492},[{x,1}]}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",209}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,489},2}. % '-cartesian/1-bzip$^6/3-6-'/3
  {label,492}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",208}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-lbc$^7/2-7-', 4, 494}.
  {label,493}.
    {line,[{location,"zlc_SUITE.erl",207}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lbc$^7/2-7-'},4}.
  {label,494}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,3}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_match,{f,495},
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
    {call_only,4,{f,494}}. % '-cartesian/1-lbc$^7/2-7-'/4
  {label,495}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-cartesian/1-zlc$^4/2-4-', 2, 497}.
  {label,496}.
    {line,[{location,"zlc_SUITE.erl",206}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-zlc$^4/2-4-'},2}.
  {label,497}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,498},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {get_tail,4,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,498},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {move,{x,4},{x,2}}.
    {move,{x,1},{x,4}}.
    {move,{x,3},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,5,{f,501}}. % '-cartesian/1-lc$^5/1-5-'/5
  {label,498}.
    {test,is_nil,{f,499},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,499}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",205}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-lc$^5/1-5-', 5, 501}.
  {label,500}.
    {line,[{location,"zlc_SUITE.erl",206}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lc$^5/1-5-'},5}.
  {label,501}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_nonempty_list,{f,503},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,0}}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,5},{t_integer,{1,2}}},{tr,{x,1},{t_integer,{0,255}}}],
            {x,5}}.
    {gc_bif,'rem',{f,0},6,[{tr,{x,5},{t_integer,{1,257}}},{integer,2}],{x,6}}.
    {test,is_eq_exact,{f,502},[{tr,{x,6},{t_integer,{0,1}}},{integer,0}]}.
    {allocate,2,6}.
    {move,{x,4},{y,0}}.
    {move,{x,5},{y,1}}.
    {call,5,{f,501}}. % '-cartesian/1-lc$^5/1-5-'/5
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
  {label,502}.
    {call_only,5,{f,501}}. % '-cartesian/1-lc$^5/1-5-'/5
  {label,503}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,497}}. % '-cartesian/1-zlc$^4/2-4-'/2


{function, '-cartesian/1-zlc$^2/2-2-', 2, 505}.
  {label,504}.
    {line,[{location,"zlc_SUITE.erl",203}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-zlc$^2/2-2-'},2}.
  {label,505}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,506},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {get_tail,4,1,{x,4}}]}}.
    {test,is_nonempty_list,{f,506},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {move,{x,4},{x,2}}.
    {move,{x,1},{x,4}}.
    {move,{x,3},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,5,{f,509}}. % '-cartesian/1-lc$^3/1-3-'/5
  {label,506}.
    {test,is_nil,{f,507},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,507}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",202}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cartesian/1-lc$^3/1-3-', 5, 509}.
  {label,508}.
    {line,[{location,"zlc_SUITE.erl",203}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lc$^3/1-3-'},5}.
  {label,509}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[a,b,c]}}]}}.
    {test,is_nonempty_list,{f,510},[{x,0}]}.
    {allocate,2,5}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,4},{y,1}}.
    {get_list,{x,0},{x,4},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",202}]}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,4},{t_integer,{1,2}}},{tr,{x,1},{t_integer,{0,255}}}],
            {y,0}}.
    {move,{y,1},{x,4}}.
    {line,[{location,"zlc_SUITE.erl",203}]}.
    {call,5,{f,509}}. % '-cartesian/1-lc$^3/1-3-'/5
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
  {label,510}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,505}}. % '-cartesian/1-zlc$^2/2-2-'/2


{function, '-cartesian/1-lc$^0/1-0-', 1, 512}.
  {label,511}.
    {line,[{location,"zlc_SUITE.erl",199}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-lc$^0/1-0-'},1}.
  {label,512}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {test,is_nonempty_list,{f,513},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,<<2,4,6>>},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {call_only,4,{f,515}}. % '-cartesian/1-zlc$^1/2-1-'/4
  {label,513}.
    return.


{function, '-cartesian/1-zlc$^1/2-1-', 4, 515}.
  {label,514}.
    {line,[{location,"zlc_SUITE.erl",200}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-cartesian/1-zlc$^1/2-1-'},4}.
  {label,515}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{1,2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,4},4}.
    {bs_match,{f,516},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,is_nonempty_list,{f,516},[{x,0}]}.
    {allocate,2,6}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",199}]}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,3},{t_integer,{1,2}}},{tr,{x,5},{t_integer,{0,255}}}],
            {y,0}}.
    {line,[{location,"zlc_SUITE.erl",200}]}.
    {call,4,{f,515}}. % '-cartesian/1-zlc$^1/2-1-'/4
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
  {label,516}.
    {test,is_nil,{f,517},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,512}}. % '-cartesian/1-lc$^0/1-0-'/1
  {label,517}.
    {bs_set_position,{x,1},{x,4}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_filter_pat_2/2-lc$^1/1-1-', 1, 519}.
  {label,518}.
    {line,[{location,"zlc_SUITE.erl",194}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_2/2-lc$^1/1-1-'},1}.
  {label,519}.
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
    {test,is_nonempty_list,{f,521},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tuple,
          {f,520},
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
          {f,520},
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
          {f,520},
          [{tr,{x,4},{t_atom,[a,b,wrong,x]}},{tr,{x,2},{t_atom,[a,b,x]}}]}.
    {allocate,2,4}.
    {move,{x,1},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,1,{f,519}}. % '-do_filter_pat_2/2-lc$^1/1-1-'/1
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
  {label,520}.
    {call_only,1,{f,519}}. % '-do_filter_pat_2/2-lc$^1/1-1-'/1
  {label,521}.
    return.


{function, '-do_filter_pat_2/2-zlc$^0/2-0-', 2, 523}.
  {label,522}.
    {line,[{location,"zlc_SUITE.erl",193}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_2/2-zlc$^0/2-0-'},2}.
  {label,523}.
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
    {test,is_nonempty_list,{f,525},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,
          {f,524},
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
    {test,is_nonempty_list,{f,526},[{x,1}]}.
    {get_list,{x,1},{x,5},{x,6}}.
    {test,is_tuple,
          {f,524},
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
          {f,524},
          [{tr,{x,7},{t_atom,[a,b,wrong,x]}},{tr,{x,2},{t_atom,[a,b,x]}}]}.
    {allocate,2,7}.
    {move,{x,5},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,6},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,523}}. % '-do_filter_pat_2/2-zlc$^0/2-0-'/2
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
  {label,524}.
    {test,is_nonempty_list,{f,526},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,523}}. % '-do_filter_pat_2/2-zlc$^0/2-0-'/2
  {label,525}.
    {test,is_nil,
        {f,526},
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
  {label,526}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_filter_pat_1/2-lc$^1/1-1-', 1, 528}.
  {label,527}.
    {line,[{location,"zlc_SUITE.erl",189}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_1/2-lc$^1/1-1-'},1}.
  {label,528}.
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
    {test,is_nonempty_list,{f,529},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,528}}. % '-do_filter_pat_1/2-lc$^1/1-1-'/1
  {label,529}.
    return.


{function, '-do_filter_pat_1/2-zlc$^0/2-0-', 2, 531}.
  {label,530}.
    {line,[{location,"zlc_SUITE.erl",188}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-do_filter_pat_1/2-zlc$^0/2-0-'},2}.
  {label,531}.
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
    {test,is_nonempty_list,{f,532},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_nonempty_list,{f,533},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,531}}. % '-do_filter_pat_1/2-zlc$^0/2-0-'/2
  {label,532}.
    {test,is_nil,
        {f,533},
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
  {label,533}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^9/2-9-', 2, 535}.
  {label,534}.
    {line,[{location,"zlc_SUITE.erl",171}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^9/2-9-'},2}.
  {label,535}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,537},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,537},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,536},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,535}}. % '-filter_guard/1-zlc$^9/2-9-'/2
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
  {label,536}.
    {call_only,2,{f,535}}. % '-filter_guard/1-zlc$^9/2-9-'/2
  {label,537}.
    {test,is_nil,{f,538},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,538}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^8/2-8-', 2, 540}.
  {label,539}.
    {line,[{location,"zlc_SUITE.erl",170}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^8/2-8-'},2}.
  {label,540}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,542},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,543},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,0},{t_integer,{1,3}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,541},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {test,is_ge,{f,541},[{tr,{x,0},{t_integer,{1,3}}},{integer,2}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,540}}. % '-filter_guard/1-zlc$^8/2-8-'/2
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
  {label,541}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,540}}. % '-filter_guard/1-zlc$^8/2-8-'/2
  {label,542}.
    {test,is_nil,{f,543},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,543}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^7/2-7-', 2, 545}.
  {label,544}.
    {line,[{location,"zlc_SUITE.erl",169}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^7/2-7-'},2}.
  {label,545}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,547},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,548},[{x,1}]}.
    {get_list,{x,1},{x,0},{x,1}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,0},{t_integer,{1,3}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,546},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,2,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,545}}. % '-filter_guard/1-zlc$^7/2-7-'/2
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
  {label,546}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,545}}. % '-filter_guard/1-zlc$^7/2-7-'/2
  {label,547}.
    {test,is_nil,{f,548},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,548}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-bzip$^6/3-6-', 3, 550}.
  {label,549}.
    {line,[{location,"zlc_SUITE.erl",168}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-bzip$^6/3-6-'},3}.
  {label,550}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,552},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,553},[{x,1}]}.
    {get_tl,{x,1},{x,0}}.
    {gc_bif,'rem',{f,0},5,[{tr,{x,3},{t_integer,{1,3}}},{integer,2}],{x,1}}.
    {test,is_eq_exact,{f,551},[{tr,{x,1},{t_integer,{0,1}}},{integer,1}]}.
    {gc_bif,'+',{f,0},5,[{tr,{x,3},{t_integer,{1,3}}},{integer,2}],{x,1}}.
    {test,is_ge,{f,551},[{tr,{x,1},{t_integer,{3,5}}},{integer,5}]}.
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
  {label,551}.
    {move,{x,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,550}}. % '-filter_guard/1-bzip$^6/3-6-'/3
  {label,552}.
    {test,is_nil,{f,553},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,553}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^5/2-5-', 2, 555}.
  {label,554}.
    {line,[{location,"zlc_SUITE.erl",166}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^5/2-5-'},2}.
  {label,555}.
    {test,is_nonempty_list,{f,556},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"zlc_SUITE.erl",165}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,555},1}. % '-filter_guard/1-zlc$^5/2-5-'/2
  {label,556}.
    {test,is_tuple,{f,558},[{x,0}]}.
    {test,test_arity,{f,559},[{x,0},3]}.
    {test,is_tuple,{f,559},[{x,1}]}.
    {test,test_arity,{f,559},[{x,1},3]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {get_tuple_element,{x,1},1,{x,4}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {gc_bif,'rem',{f,557},5,[{x,4},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,557},[{tr,{x,4},{t_integer,{-1,1}}},{integer,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",166}]}.
    {call,2,{f,555}}. % '-filter_guard/1-zlc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,3,true,#{}},nil}}]}}.
    {test_heap,6,1}.
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{y,1},1,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,0},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,557}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,555}}. % '-filter_guard/1-zlc$^5/2-5-'/2
  {label,558}.
    {test,is_eq_exact,{f,559},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,559},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,559}.
    {test,is_nonempty_list,{f,560},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,555},1}. % '-filter_guard/1-zlc$^5/2-5-'/2
  {label,560}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^4/2-4-', 2, 562}.
  {label,561}.
    {line,[{location,"zlc_SUITE.erl",164}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^4/2-4-'},2}.
  {label,562}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,564},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,564},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_lt,{f,563},[{atom,a},{tr,{x,2},{t_atom,[a,b,c]}}]}.
    {test,is_lt,{f,563},[{tr,{x,2},{t_atom,[a,b,c]}},{atom,c}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,562}}. % '-filter_guard/1-zlc$^4/2-4-'/2
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
  {label,563}.
    {call_only,2,{f,562}}. % '-filter_guard/1-zlc$^4/2-4-'/2
  {label,564}.
    {test,is_nil,{f,565},[{tr,{x,1},{t_list,{t_atom,[a,b,c]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,565}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^3/2-3-', 2, 567}.
  {label,566}.
    {line,[{location,"zlc_SUITE.erl",163}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^3/2-3-'},2}.
  {label,567}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,569},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,569},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,568},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,567}}. % '-filter_guard/1-zlc$^3/2-3-'/2
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
  {label,568}.
    {call_only,2,{f,567}}. % '-filter_guard/1-zlc$^3/2-3-'/2
  {label,569}.
    {test,is_nil,{f,570},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,570}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^2/2-2-', 2, 572}.
  {label,571}.
    {line,[{location,"zlc_SUITE.erl",162}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^2/2-2-'},2}.
  {label,572}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,574},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,574},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,573},[{tr,{x,3},{t_integer,{0,255}}},{integer,2}]}.
    {call_only,2,{f,572}}. % '-filter_guard/1-zlc$^2/2-2-'/2
  {label,573}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {call,2,{f,572}}. % '-filter_guard/1-zlc$^2/2-2-'/2
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
  {label,574}.
    {test,is_nil,{f,575},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,575}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^1/2-1-', 2, 577}.
  {label,576}.
    {line,[{location,"zlc_SUITE.erl",160}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^1/2-1-'},2}.
  {label,577}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,579},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,579},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",161}]}.
    {gc_bif,'rem',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,2}],{x,4}}.
    {test,is_eq_exact,{f,578},[{tr,{x,4},{t_integer,{0,1}}},{integer,0}]}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{y,1}}.
    {line,[{location,"zlc_SUITE.erl",160}]}.
    {call,2,{f,577}}. % '-filter_guard/1-zlc$^1/2-1-'/2
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
  {label,578}.
    {call_only,2,{f,577}}. % '-filter_guard/1-zlc$^1/2-1-'/2
  {label,579}.
    {test,is_nil,{f,580},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,580}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filter_guard/1-zlc$^0/2-0-', 2, 582}.
  {label,581}.
    {line,[{location,"zlc_SUITE.erl",159}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-filter_guard/1-zlc$^0/2-0-'},2}.
  {label,582}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_list,{t_cons,{t_integer,{1,2}},nil},nil}}]}}.
    {test,is_nonempty_list,{f,584},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,585},[{x,1}]}.
    {allocate,4,4}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {get_list,{x,1},{y,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_lt,{f,583},[{integer,0},{x,0}]}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {swap,{y,3},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,3,1}.
    {call,2,{f,582}}. % '-filter_guard/1-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{-3,2}},nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,583}.
    {move,{y,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {call_last,2,{f,582},4}. % '-filter_guard/1-zlc$^0/2-0-'/2
  {label,584}.
    {test,is_nil,
          {f,585},
          [{tr,{x,1},{t_list,{t_cons,{t_integer,{1,2}},nil},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,585}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^21/2-21-', 2, 587}.
  {label,586}.
    {line,[{location,"zlc_SUITE.erl",155}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^21/2-21-'},2}.
  {label,587}.
    {test,is_nonempty_list,{f,588},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,587},1}. % '-zmc/1-zlc$^21/2-21-'/2
  {label,588}.
    {test,is_tuple,{f,590},[{x,0}]}.
    {test,test_arity,{f,591},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tagged_tuple,{f,589},[{x,2},2,{atom,e}]}.
    {test,is_tuple,{f,591},[{x,1}]}.
    {test,test_arity,{f,589},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,4}}.
    {test,is_tagged_tuple,{f,589},[{x,4},2,{atom,ok}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {get_tuple_element,{x,0},0,{x,5}}.
    {test,is_eq_exact,{f,589},[{x,2},{x,5}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,589},[{x,2},{x,5}]}.
    {get_tuple_element,{x,4},1,{x,2}}.
    {test,is_eq_exact,{f,589},[{x,2},{x,5}]}.
    {allocate,1,6}.
    {move,{x,5},{y,0}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,587}}. % '-zmc/1-zlc$^21/2-21-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,589}.
    {test,is_tuple,{f,591},[{x,1}]}.
    {test,test_arity,{f,591},[{x,1},3]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,587}}. % '-zmc/1-zlc$^21/2-21-'/2
  {label,590}.
    {test,is_eq_exact,{f,591},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,591},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,591}.
    {test,is_nonempty_list,{f,592},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,587},1}. % '-zmc/1-zlc$^21/2-21-'/2
  {label,592}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^20/2-20-', 2, 594}.
  {label,593}.
    {line,[{location,"zlc_SUITE.erl",154}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^20/2-20-'},2}.
  {label,594}.
    {test,is_nonempty_list,{f,595},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,594},1}. % '-zmc/1-zlc$^20/2-20-'/2
  {label,595}.
    {test,is_tuple,{f,597},[{x,0}]}.
    {test,test_arity,{f,598},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_tagged_tuple,{f,596},[{x,2},2,{atom,ok}]}.
    {test,is_tuple,{f,598},[{x,1}]}.
    {test,test_arity,{f,596},[{x,1},3]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {test,is_eq_exact,{f,596},[{x,2},{x,4}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,596},[{x,2},{x,4}]}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,594}}. % '-zmc/1-zlc$^20/2-20-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,596}.
    {test,is_tuple,{f,598},[{x,1}]}.
    {test,test_arity,{f,598},[{x,1},3]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,594}}. % '-zmc/1-zlc$^20/2-20-'/2
  {label,597}.
    {test,is_eq_exact,{f,598},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,598},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,598}.
    {test,is_nonempty_list,{f,599},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,594},1}. % '-zmc/1-zlc$^20/2-20-'/2
  {label,599}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^19/1-19-', 1, 601}.
  {label,600}.
    {line,[{location,"zlc_SUITE.erl",153}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^19/1-19-'},1}.
  {label,601}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{}},
                           2 => {t_tuple,2,true,#{}}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,603},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_tagged_tuple,{f,602},[{x,3},2,{atom,ok}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {test,is_eq_exact,{f,602},[{x,3},{x,2}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,602},[{x,1},{x,2}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,601}}. % '-zmc/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,602}.
    {call_only,1,{f,601}}. % '-zmc/1-lc$^19/1-19-'/1
  {label,603}.
    return.


{function, '-zmc/1-lc$^18/1-18-', 1, 605}.
  {label,604}.
    {line,[{location,"zlc_SUITE.erl",152}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^18/1-18-'},1}.
  {label,605}.
    {test,is_nonempty_list,{f,606},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,4}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,605}}. % '-zmc/1-lc$^18/1-18-'/1
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
  {label,606}.
    {test,is_nil,{f,607},[{x,0}]}.
    return.
  {label,607}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^17/1-17-', 1, 609}.
  {label,608}.
    {line,[{location,"zlc_SUITE.erl",151}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^17/1-17-'},1}.
  {label,609}.
    {test,is_nonempty_list,{f,613},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",148}]}.
    {gc_bif,'rem',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {select_val,{tr,{x,2},{t_integer,{-1,1}}},
                {f,615},
                {list,[{integer,0},{f,611},{integer,1},{f,610}]}}.
  {label,610}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,error},{y,1}]}}.
    {move,{x,1},{y,0}}.
    {jump,{f,612}}.
  {label,611}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,ok},{y,1}]}}.
    {move,{x,1},{y,0}}.
  {label,612}.
    {line,[{location,"zlc_SUITE.erl",151}]}.
    {call,1,{f,609}}. % '-zmc/1-lc$^17/1-17-'/1
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
  {label,613}.
    {test,is_nil,{f,614},[{x,0}]}.
    return.
  {label,614}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,615}.
    {line,[{location,"zlc_SUITE.erl",148}]}.
    {case_end,{x,2}}.


{function, '-zmc/1-bzip$^15/3-16-', 3, 617}.
  {label,616}.
    {line,[{location,"zlc_SUITE.erl",145}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-bzip$^15/3-16-'},3}.
  {label,617}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,618},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,617},2}. % '-zmc/1-bzip$^15/3-16-'/3
  {label,618}.
    {test,is_tuple,{f,619},[{x,0}]}.
    {test,test_arity,{f,620},[{x,0},3]}.
    {test,is_nonempty_list,{f,620},[{x,1}]}.
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
    {call_only,3,{f,617}}. % '-zmc/1-bzip$^15/3-16-'/3
  {label,619}.
    {test,is_eq_exact,{f,620},[{x,0},{atom,none}]}.
    {test,is_nil,{f,620},[{x,1}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,620}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lbc$^16/2-15-', 2, 622}.
  {label,621}.
    {line,[{location,"zlc_SUITE.erl",144}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lbc$^16/2-15-'},2}.
  {label,622}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,623},[{x,0}]}.
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
    {call_only,2,{f,622}}. % '-zmc/1-lbc$^16/2-15-'/2
  {label,623}.
    {test,is_nil,{f,624},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,624}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-bzip$^13/3-14-', 3, 626}.
  {label,625}.
    {line,[{location,"zlc_SUITE.erl",143}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-bzip$^13/3-14-'},3}.
  {label,626}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,627},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,626},2}. % '-zmc/1-bzip$^13/3-14-'/3
  {label,627}.
    {test,is_tuple,{f,628},[{x,0}]}.
    {test,test_arity,{f,629},[{x,0},3]}.
    {test,is_tuple,{f,629},[{x,1}]}.
    {test,test_arity,{f,629},[{x,1},3]}.
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
    {call_only,3,{f,626}}. % '-zmc/1-bzip$^13/3-14-'/3
  {label,628}.
    {test,is_eq_exact,{f,629},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,629},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,629}.
    {test,is_nonempty_list,{f,630},[{x,1}]}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,626},2}. % '-zmc/1-bzip$^13/3-14-'/3
  {label,630}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lbc$^14/2-13-', 2, 632}.
  {label,631}.
    {line,[{location,"zlc_SUITE.erl",142}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lbc$^14/2-13-'},2}.
  {label,632}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,633},[{x,0}]}.
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
    {call_only,2,{f,632}}. % '-zmc/1-lbc$^14/2-13-'/2
  {label,633}.
    {test,is_nil,{f,634},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,634}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^11/2-12-', 2, 636}.
  {label,635}.
    {line,[{location,"zlc_SUITE.erl",141}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^11/2-12-'},2}.
  {label,636}.
    {test,is_nonempty_list,{f,637},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,636},1}. % '-zmc/1-zlc$^11/2-12-'/2
  {label,637}.
    {test,is_tuple,{f,638},[{x,0}]}.
    {test,test_arity,{f,639},[{x,0},3]}.
    {test,is_nonempty_list,{f,639},[{x,1}]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_list,{x,1},{x,4},{x,1}}.
    {gc_bif,'+',{f,0},5,[{x,2},{x,3}],{x,2}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,2},{t_number,any}},{x,4}],{x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,636}}. % '-zmc/1-zlc$^11/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,638}.
    {test,is_eq_exact,{f,639},[{x,0},{atom,none}]}.
    {test,is_nil,{f,639},[{x,1}]}.
    {move,nil,{x,0}}.
    return.
  {label,639}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^12/1-11-', 1, 641}.
  {label,640}.
    {line,[{location,"zlc_SUITE.erl",141}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^12/1-11-'},1}.
  {label,641}.
    {test,is_nonempty_list,{f,642},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,641}}. % '-zmc/1-lc$^12/1-11-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,642}.
    {test,is_nil,{f,643},[{x,0}]}.
    return.
  {label,643}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^9/2-10-', 2, 645}.
  {label,644}.
    {line,[{location,"zlc_SUITE.erl",140}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^9/2-10-'},2}.
  {label,645}.
    {test,is_nonempty_list,{f,646},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,645},1}. % '-zmc/1-zlc$^9/2-10-'/2
  {label,646}.
    {test,is_tuple,{f,647},[{x,0}]}.
    {test,test_arity,{f,648},[{x,0},3]}.
    {test,is_tuple,{f,648},[{x,1}]}.
    {test,test_arity,{f,648},[{x,1},3]}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,645}}. % '-zmc/1-zlc$^9/2-10-'/2
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
  {label,647}.
    {test,is_eq_exact,{f,648},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,648},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,648}.
    {test,is_nonempty_list,{f,649},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,645},1}. % '-zmc/1-zlc$^9/2-10-'/2
  {label,649}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^10/1-9-', 1, 651}.
  {label,650}.
    {line,[{location,"zlc_SUITE.erl",139}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^10/1-9-'},1}.
  {label,651}.
    {test,is_nonempty_list,{f,652},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,2}],{x,3}}.
    {gc_bif,'*',{f,0},4,[{tr,{x,1},{t_number,any}},{integer,4}],{x,4}}.
    {allocate,4,5}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,4},{y,3}}.
    {call,1,{f,651}}. % '-zmc/1-lc$^10/1-9-'/1
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
  {label,652}.
    {test,is_nil,{f,653},[{x,0}]}.
    return.
  {label,653}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^8/1-8-', 1, 655}.
  {label,654}.
    {line,[{location,"zlc_SUITE.erl",138}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^8/1-8-'},1}.
  {label,655}.
    {test,is_nonempty_list,{f,656},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,2}],{x,2}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,1},{t_number,any}},{integer,4}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call,1,{f,655}}. % '-zmc/1-lc$^8/1-8-'/1
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
  {label,656}.
    {test,is_nil,{f,657},[{x,0}]}.
    return.
  {label,657}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^7/1-7-', 1, 659}.
  {label,658}.
    {line,[{location,"zlc_SUITE.erl",137}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^7/1-7-'},1}.
  {label,659}.
    {test,is_nonempty_list,{f,660},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,3}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,659}}. % '-zmc/1-lc$^7/1-7-'/1
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
  {label,660}.
    {test,is_nil,{f,661},[{x,0}]}.
    return.
  {label,661}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-bzip$^5/3-6-', 3, 663}.
  {label,662}.
    {line,[{location,"zlc_SUITE.erl",135}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-bzip$^5/3-6-'},3}.
  {label,663}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,664},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,663},2}. % '-zmc/1-bzip$^5/3-6-'/3
  {label,664}.
    {test,is_tuple,{f,665},[{x,0}]}.
    {test,test_arity,{f,666},[{x,0},3]}.
    {test,is_tuple,{f,666},[{x,1}]}.
    {test,test_arity,{f,666},[{x,1},3]}.
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
    {call_only,3,{f,663}}. % '-zmc/1-bzip$^5/3-6-'/3
  {label,665}.
    {test,is_eq_exact,{f,666},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,666},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,666}.
    {test,is_nonempty_list,{f,667},[{x,1}]}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,663},2}. % '-zmc/1-bzip$^5/3-6-'/3
  {label,667}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lbc$^6/2-5-', 2, 669}.
  {label,668}.
    {line,[{location,"zlc_SUITE.erl",134}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lbc$^6/2-5-'},2}.
  {label,669}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,670},[{x,0}]}.
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
    {call_only,2,{f,669}}. % '-zmc/1-lbc$^6/2-5-'/2
  {label,670}.
    {test,is_nil,{f,671},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,671}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^3/2-4-', 2, 673}.
  {label,672}.
    {line,[{location,"zlc_SUITE.erl",133}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^3/2-4-'},2}.
  {label,673}.
    {test,is_nonempty_list,{f,674},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,673},1}. % '-zmc/1-zlc$^3/2-4-'/2
  {label,674}.
    {test,is_tuple,{f,675},[{x,0}]}.
    {test,test_arity,{f,676},[{x,0},3]}.
    {test,is_tuple,{f,676},[{x,1}]}.
    {test,test_arity,{f,676},[{x,1},3]}.
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
    {call,2,{f,673}}. % '-zmc/1-zlc$^3/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,675}.
    {test,is_eq_exact,{f,676},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,676},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,676}.
    {test,is_nonempty_list,{f,677},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,673},1}. % '-zmc/1-zlc$^3/2-4-'/2
  {label,677}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^4/1-3-', 1, 679}.
  {label,678}.
    {line,[{location,"zlc_SUITE.erl",132}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^4/1-3-'},1}.
  {label,679}.
    {test,is_nonempty_list,{f,680},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,4}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,679}}. % '-zmc/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,680}.
    {test,is_nil,{f,681},[{x,0}]}.
    return.
  {label,681}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^2/1-2-', 1, 683}.
  {label,682}.
    {line,[{location,"zlc_SUITE.erl",131}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^2/1-2-'},1}.
  {label,683}.
    {test,is_nonempty_list,{f,684},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,683}}. % '-zmc/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,684}.
    {test,is_nil,{f,685},[{x,0}]}.
    return.
  {label,685}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-lc$^1/1-1-', 1, 687}.
  {label,686}.
    {line,[{location,"zlc_SUITE.erl",130}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-lc$^1/1-1-'},1}.
  {label,687}.
    {test,is_nonempty_list,{f,688},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,687}}. % '-zmc/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,688}.
    {test,is_nil,{f,689},[{x,0}]}.
    return.
  {label,689}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zmc/1-zlc$^0/2-0-', 2, 691}.
  {label,690}.
    {line,[{location,"zlc_SUITE.erl",128}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zmc/1-zlc$^0/2-0-'},2}.
  {label,691}.
    {test,is_nonempty_list,{f,692},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,691},1}. % '-zmc/1-zlc$^0/2-0-'/2
  {label,692}.
    {test,is_tuple,{f,693},[{x,0}]}.
    {test,test_arity,{f,694},[{x,0},3]}.
    {test,is_tuple,{f,694},[{x,1}]}.
    {test,test_arity,{f,694},[{x,1},3]}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,691}}. % '-zmc/1-zlc$^0/2-0-'/2
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
  {label,693}.
    {test,is_eq_exact,{f,694},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,694},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,694}.
    {test,is_nonempty_list,{f,695},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,691},1}. % '-zmc/1-zlc$^0/2-0-'/2
  {label,695}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^10/2-10-', 2, 697}.
  {label,696}.
    {line,[{location,"zlc_SUITE.erl",124}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^10/2-10-'},2}.
  {label,697}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,698},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,698},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,2,{f,697}}. % '-mixed_zlc/1-zlc$^10/2-10-'/2
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
  {label,698}.
    {test,is_nil,{f,699},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,699}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^9/2-9-', 2, 701}.
  {label,700}.
    {line,[{location,"zlc_SUITE.erl",123}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^9/2-9-'},2}.
  {label,701}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,702},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,703},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,701}}. % '-mixed_zlc/1-zlc$^9/2-9-'/2
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
  {label,702}.
    {test,is_nil,{f,703},[{tr,{x,1},{t_list,{t_integer,{1,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,703}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-bzip$^8/3-8-', 3, 705}.
  {label,704}.
    {line,[{location,"zlc_SUITE.erl",120}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^8/3-8-'},3}.
  {label,705}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,706},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {line,[{location,"zlc_SUITE.erl",121}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {call_last,3,{f,705},2}. % '-mixed_zlc/1-bzip$^8/3-8-'/3
  {label,706}.
    {test,is_tuple,{f,707},[{x,0}]}.
    {test,test_arity,{f,708},[{x,0},3]}.
    {test,is_tuple,{f,708},[{x,1}]}.
    {test,test_arity,{f,708},[{x,1},3]}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_tuple_element,{x,1},1,{x,4}}.
    {line,[{location,"zlc_SUITE.erl",120}]}.
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
    {call_only,3,{f,705}}. % '-mixed_zlc/1-bzip$^8/3-8-'/3
  {label,707}.
    {test,is_eq_exact,{f,708},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,708},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,708}.
    {test,is_nonempty_list,{f,709},[{x,1}]}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",122}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,705},2}. % '-mixed_zlc/1-bzip$^8/3-8-'/3
  {label,709}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-bzip$^7/3-7-', 3, 711}.
  {label,710}.
    {line,[{location,"zlc_SUITE.erl",117}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^7/3-7-'},3}.
  {label,711}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,712},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_tuple,{f,712},[{x,1}]}.
    {test,test_arity,{f,712},[{x,1},3]}.
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
    {call_only,3,{f,711}}. % '-mixed_zlc/1-bzip$^7/3-7-'/3
  {label,712}.
    {test,is_eq_exact,{f,713},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,713}.
    {test,is_nonempty_list,{f,714},[{x,1}]}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",119}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,711},3}. % '-mixed_zlc/1-bzip$^7/3-7-'/3
  {label,714}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",118}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-bzip$^6/3-6-', 3, 716}.
  {label,715}.
    {line,[{location,"zlc_SUITE.erl",114}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^6/3-6-'},3}.
  {label,716}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,717},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_tuple,{f,718},[{x,1}]}.
    {test,test_arity,{f,718},[{x,1},3]}.
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
    {call_only,3,{f,716}}. % '-mixed_zlc/1-bzip$^6/3-6-'/3
  {label,717}.
    {test,is_eq_exact,{f,718},[{x,1},{atom,none}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,718}.
    {test,is_nonempty_list,{f,719},[{x,1}]}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",116}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,716},2}. % '-mixed_zlc/1-bzip$^6/3-6-'/3
  {label,719}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[{location,"zlc_SUITE.erl",115}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-bzip$^5/3-5-', 3, 721}.
  {label,720}.
    {line,[{location,"zlc_SUITE.erl",113}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-bzip$^5/3-5-'},3}.
  {label,721}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,722},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,723},[{x,1}]}.
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
    {call_only,3,{f,721}}. % '-mixed_zlc/1-bzip$^5/3-5-'/3
  {label,722}.
    {test,is_nil,{f,723},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,723}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^4/2-4-', 2, 725}.
  {label,724}.
    {line,[{location,"zlc_SUITE.erl",111}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^4/2-4-'},2}.
  {label,725}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,726},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_tuple,{f,726},[{x,0}]}.
    {test,test_arity,{f,726},[{x,0},3]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,725}}. % '-mixed_zlc/1-zlc$^4/2-4-'/2
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
  {label,726}.
    {test,is_eq_exact,{f,727},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,727}.
    {test,is_nonempty_list,{f,728},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,1}}.
    {call_last,2,{f,725},2}. % '-mixed_zlc/1-zlc$^4/2-4-'/2
  {label,728}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^3/2-3-', 2, 730}.
  {label,729}.
    {line,[{location,"zlc_SUITE.erl",108}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^3/2-3-'},2}.
  {label,730}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,731},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_tuple,{f,731},[{x,0}]}.
    {test,test_arity,{f,731},[{x,0},3]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,730}}. % '-mixed_zlc/1-zlc$^3/2-3-'/2
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
  {label,731}.
    {test,is_eq_exact,{f,732},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,732}.
    {test,is_nonempty_list,{f,733},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,1}}.
    {call_last,2,{f,730},2}. % '-mixed_zlc/1-zlc$^3/2-3-'/2
  {label,733}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^2/2-2-', 2, 735}.
  {label,734}.
    {line,[{location,"zlc_SUITE.erl",105}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^2/2-2-'},2}.
  {label,735}.
    {test,is_nonempty_list,{f,736},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,735},1}. % '-mixed_zlc/1-zlc$^2/2-2-'/2
  {label,736}.
    {test,is_tuple,{f,737},[{x,0}]}.
    {test,test_arity,{f,738},[{x,0},3]}.
    {test,is_tuple,{f,738},[{x,1}]}.
    {test,test_arity,{f,738},[{x,1},3]}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,2,{f,735}}. % '-mixed_zlc/1-zlc$^2/2-2-'/2
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
  {label,737}.
    {test,is_eq_exact,{f,738},[{x,0},{atom,none}]}.
    {test,is_eq_exact,{f,738},[{x,1},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,738}.
    {test,is_nonempty_list,{f,739},[{x,1}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"zlc_SUITE.erl",106}]}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,735},1}. % '-mixed_zlc/1-zlc$^2/2-2-'/2
  {label,739}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^1/2-1-', 2, 741}.
  {label,740}.
    {line,[{location,"zlc_SUITE.erl",103}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^1/2-1-'},2}.
  {label,741}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,742},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,742},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,1},{y,0},{x,1}}.
    {call,2,{f,741}}. % '-mixed_zlc/1-zlc$^1/2-1-'/2
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
  {label,742}.
    {test,is_nil,{f,743},[{tr,{x,1},{t_list,{t_atom,[a,b,c]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,743}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_zlc/1-zlc$^0/2-0-', 2, 745}.
  {label,744}.
    {line,[{location,"zlc_SUITE.erl",102}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-mixed_zlc/1-zlc$^0/2-0-'},2}.
  {label,745}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a,b,c]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,746},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,746},[{x,0}]}.
    {allocate,2,4}.
    {move,{x,3},{y,1}}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,2,{f,745}}. % '-mixed_zlc/1-zlc$^0/2-0-'/2
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
  {label,746}.
    {test,is_nil,{f,747},[{tr,{x,0},{t_list,{t_atom,[a,b,c]},nil}}]}.
    return.
  {label,747}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-ifelse/3-zlc$^0/3-0-', 3, 749}.
  {label,748}.
    {line,[{location,"zlc_SUITE.erl",98}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-ifelse/3-zlc$^0/3-0-'},3}.
  {label,749}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{2,6}},nil}}]}}.
    {test,is_nonempty_list,{f,752},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,753},[{x,1}]}.
    {get_list,{x,1},{x,5},{x,6}}.
    {test,is_nonempty_list,{f,753},[{x,2}]}.
    {allocate,1,7}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,2},{x,0},{x,1}}.
    {test,is_eq_exact,{f,750},[{x,3},{atom,true}]}.
    {move,{x,5},{y,0}}.
    {jump,{f,751}}.
  {label,750}.
    {move,{x,0},{y,0}}.
  {label,751}.
    {move,{x,1},{x,2}}.
    {move,{x,6},{x,1}}.
    {move,{x,4},{x,0}}.
    {call,3,{f,749}}. % '-ifelse/3-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,6}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,752}.
    {test,is_nil,{f,753},[{tr,{x,1},{t_list,{t_integer,{1,5}},nil}}]}.
    {test,is_nil,{f,753},[{tr,{x,2},{t_list,{t_integer,{2,6}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,753}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-dot/2-zlc$^0/2-0-', 2, 755}.
  {label,754}.
    {line,[{location,"zlc_SUITE.erl",91}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-dot/2-zlc$^0/2-0-'},2}.
  {label,755}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{6,24}},nil}}]}}.
    {test,is_nonempty_list,{f,756},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nonempty_list,{f,757},[{x,1}]}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,1},{x,0},{x,1}}.
    {gc_bif,'*',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{1,4}}},{tr,{x,0},{t_integer,{6,24}}}],
            {y,0}}.
    {move,{x,3},{x,0}}.
    {call,2,{f,755}}. % '-dot/2-zlc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{6,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,756}.
    {test,is_nil,{f,757},[{tr,{x,1},{t_list,{t_integer,{6,24}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,757}.
    {test_heap,6,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zipwith4/5-zlc$^0/4-0-', 5, 759}.
  {label,758}.
    {line,[{location,"zlc_SUITE.erl",88}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-zipwith4/5-zlc$^0/4-0-'},5}.
  {label,759}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{0,1}},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{2,3}},nil}}]}}.
    {'%',{var_info,{x,4},
                   [{type,{t_fun,4,{'-basic/1-fun-2-',4},{t_number,any}}}]}}.
    {test,is_nonempty_list,{f,760},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,6}}.
    {test,is_nonempty_list,{f,761},[{x,1}]}.
    {get_tl,{x,1},{x,7}}.
    {test,is_nonempty_list,{f,761},[{x,2}]}.
    {get_list,{x,2},{x,8},{x,9}}.
    {test,is_nonempty_list,{f,761},[{x,3}]}.
    {allocate,5,10}.
    {move,{x,9},{y,1}}.
    {move,{x,7},{y,2}}.
    {move,{x,6},{y,3}}.
    {move,{x,4},{y,4}}.
    {get_list,{x,3},{x,3},{y,0}}.
    {move,{integer,2},{x,1}}.
    {move,{x,8},{x,2}}.
    {move,{x,5},{x,0}}.
    {call,4,{f,766}}. % '-basic/1-fun-2-'/4
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,5}}.
    {move,{y,4},{x,4}}.
    {move,{x,0},{y,4}}.
    {trim,4,1}.
    {move,{x,5},{x,0}}.
    {call,5,{f,759}}. % '-zipwith4/5-zlc$^0/4-0-'/5
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,760}.
    {test,is_nil,{f,761},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {test,is_nil,{f,761},[{tr,{x,2},{t_list,{t_integer,{0,1}},nil}}]}.
    {test,is_nil,{f,761},[{tr,{x,3},{t_list,{t_integer,{2,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,761}.
    {test_heap,8,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2},{x,3}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-zlc$^3/3-2-', 3, 763}.
  {label,762}.
    {line,[{location,"zlc_SUITE.erl",83}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-zlc$^3/3-2-'},3}.
  {label,763}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,764},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {bs_match,{f,764},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {get_tail,5,1,{x,1}}]}}.
    {bs_start_match4,{atom,no_fail},5,{x,2},{x,2}}.
    {bs_match,{f,764},
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
    {call,3,{f,763}}. % '-basic/1-zlc$^3/3-2-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,764}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-fun-2-', 4, 766}.
  {label,765}.
    {line,[{location,"zlc_SUITE.erl",77}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-fun-2-'},4}.
  {label,766}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,0},{t_number,any}},{x,2}],{x,0}}.
    {gc_bif,'*',{f,0},4,[{tr,{x,0},{t_number,any}},{x,3}],{x,0}}.
    return.


{function, '-basic/1-zlc$^1/3-1-', 3, 768}.
  {label,767}.
    {line,[{location,"zlc_SUITE.erl",76}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-zlc$^1/3-1-'},3}.
  {label,768}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{3,3}},nil}}]}}.
    {test,is_nonempty_list,{f,769},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,770},[{x,1}]}.
    {get_tl,{x,1},{x,5}}.
    {test,is_nonempty_list,{f,770},[{x,2}]}.
    {allocate,1,6}.
    {move,{x,3},{y,0}}.
    {get_tl,{x,2},{x,2}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call,3,{f,768}}. % '-basic/1-zlc$^1/3-1-'/3
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
  {label,769}.
    {test,is_nil,{f,770},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {test,is_nil,{f,770},[{tr,{x,2},{t_list,{t_integer,{3,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,770}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-zlc$^0/3-0-', 3, 772}.
  {label,771}.
    {line,[{location,"zlc_SUITE.erl",74}]}.
    {func_info,{atom,zlc_SUITE},{atom,'-basic/1-zlc$^0/3-0-'},3}.
  {label,772}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{3,3}},nil}}]}}.
    {test,is_nonempty_list,{f,773},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,774},[{x,1}]}.
    {get_tl,{x,1},{x,5}}.
    {test,is_nonempty_list,{f,774},[{x,2}]}.
    {allocate,1,6}.
    {init_yregs,{list,[{y,0}]}}.
    {get_tl,{x,2},{x,2}}.
    {gc_bif,'+',{f,0},6,[{tr,{x,3},{t_integer,{1,3}}},{integer,5}],{y,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call,3,{f,772}}. % '-basic/1-zlc$^0/3-0-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{6,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,773}.
    {test,is_nil,{f,774},[{tr,{x,1},{t_list,{t_integer,{2,2}},nil}}]}.
    {test,is_nil,{f,774},[{tr,{x,2},{t_list,{t_integer,{3,3}},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,774}.
    {test_heap,7,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,bad_generators},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
