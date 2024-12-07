{module, otp_5235}.  %% version = 0

{exports, [{module_info,0},{module_info,1},{otp_5235,0}]}.

{attributes, []}.

{labels, 34}.


{function, otp_5235, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     32}]}.
    {func_info,{atom,otp_5235},{atom,otp_5235},0}.
  {label,2}.
    {allocate,0,0}.
    {move,{atom,true},{x,1}}.
    {move,{atom,trap_exit},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     33}]}.
    {call_ext,2,{extfunc,erlang,process_flag,2}}.
    {move,{integer,1024},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     35}]}.
    {call,1,{f,10}}. % clone/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,1024},{x,0}}.
    {call_last,1,{f,4},0}. % wait/1


{function, wait, 1, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     38}]}.
    {func_info,{atom,otp_5235},{atom,wait},1}.
  {label,4}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',1024}}}]}}.
    {test,is_eq_exact,
          {f,5},
          [{tr,{x,0},{t_integer,{'-inf',1024}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,5}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
  {label,6}.
    {loop_rec,{f,8},{x,0}}.
    {test,is_tagged_tuple,{f,7},[{x,0},3,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,7},[{x,1},{atom,normal}]}.
    remove_message.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     42}]}.
    {gc_bif,'-',
            {f,0},
            0,
            [{tr,{y,0},{t_integer,{'-inf',1024}}},{integer,1}],
            {x,0}}.
    {call_last,1,{f,4},1}. % wait/1
  {label,7}.
    remove_message.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     44}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},1}.
  {label,8}.
    {wait,{f,6}}.


{function, clone, 1, 10}.
  {label,9}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     47}]}.
    {func_info,{atom,otp_5235},{atom,clone},1}.
  {label,10}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',1024}}}]}}.
    {test,is_eq_exact,
          {f,11},
          [{tr,{x,0},{t_integer,{'-inf',1024}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,11}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,13},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     49}]}.
    {call_ext,1,{extfunc,erlang,spawn_link,1}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     50}]}.
    {gc_bif,'-',
            {f,0},
            0,
            [{tr,{y,0},{t_integer,{'-inf',1024}}},{integer,1}],
            {x,0}}.
    {call_last,1,{f,10},1}. % clone/1


{function, worker, 0, 13}.
  {label,12}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     52}]}.
    {func_info,{atom,otp_5235},{atom,worker},0}.
  {label,13}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     53}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     54}]}.
    {call,1,{f,31}}. % '-worker/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => pid}},nil}}]}}.
    {bif,self,{f,0},[],{y,1}}.
    {move,{x,0},{y,0}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,13,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,commit},
                       {atom,undefined},
                       {atom,undefined},
                       {y,0},
                       nil,nil,nil,
                       {x,0}]}}.
    {trim,2,0}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     57}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{x,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     58}]}.
    {call,2,{f,21}}. % run/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,8,true,
                         #{1 => {t_atom,[commit]},
                           3 => {t_atom,[undefined]},
                           4 => {t_list,{t_tuple,2,true,#{2 => pid}},nil},
                           5 => nil,6 => nil,7 => nil,
                           8 => {t_cons,identifier,nil}}},
                     nil}}]}}.
    {call_last,1,{f,15},0}. % verify/1


{function, verify, 1, 15}.
  {label,14}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     60}]}.
    {func_info,{atom,otp_5235},{atom,verify},1}.
  {label,15}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,8,true,
                         #{1 => {t_atom,[commit]},
                           3 => {t_atom,[undefined]},
                           4 => {t_list,{t_tuple,2,true,#{2 => pid}},nil},
                           5 => nil,6 => nil,7 => nil,
                           8 => {t_cons,identifier,nil}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,16},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,14},[{x,3},{atom,true}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {get_tuple_element,{x,1},3,{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     61}]}.
    {call,2,{f,18}}. % verify_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,15},1}. % verify/1
  {label,16}.
    {move,{atom,ok},{x,0}}.
    return.


{function, verify_1, 2, 18}.
  {label,17}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     65}]}.
    {func_info,{atom,otp_5235},{atom,verify_1},2}.
  {label,18}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => pid}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_nonempty_list,{f,19},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {get_tuple_element,{x,2},0,{x,4}}.
    {test,is_eq_exact,{f,17},[{tr,{x,1},{t_integer,{1,'+inf'}}},{x,4}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {bif,self,{f,0},[],{x,5}}.
    {test,is_eq_exact,{f,17},[{tr,{x,2},pid},{tr,{x,5},pid}]}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     66}]}.
    {gc_bif,'+',{f,0},5,[{tr,{x,4},{t_integer,{1,'+inf'}}},{integer,1}],{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,18}}. % verify_1/2
  {label,19}.
    {move,{atom,ok},{x,0}}.
    return.


{function, run, 2, 21}.
  {label,20}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     69}]}.
    {func_info,{atom,otp_5235},{atom,run},2}.
  {label,21}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',2}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_tuple,8,true,
                         #{1 => {t_atom,[commit]},
                           3 => {t_atom,[undefined]},
                           4 => {t_list,{t_tuple,2,true,#{2 => pid}},nil},
                           5 => nil,6 => nil,7 => nil,
                           8 => {t_cons,identifier,nil}}},
                     nil}}]}}.
    {test,is_eq_exact,{f,22},[{tr,{x,0},{t_integer,{'-inf',2}}},{integer,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,22}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     70}]}.
    {gc_bif,'-',{f,0},2,[{tr,{x,0},{t_integer,{'-inf',2}}},{integer,1}],{x,0}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,24}}. % reverse/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,8,true,
                         #{1 => {t_atom,[commit]},
                           3 => {t_atom,[undefined]},
                           4 => {t_list,{t_tuple,2,true,#{2 => pid}},nil},
                           5 => nil,6 => nil,7 => nil,
                           8 => {t_cons,identifier,nil}}},
                     nil}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,21},1}. % run/2


{function, reverse, 1, 24}.
  {label,23}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     72}]}.
    {func_info,{atom,otp_5235},{atom,reverse},1}.
  {label,24}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,8,true,
                         #{1 => {t_atom,[commit]},
                           3 => {t_atom,[undefined]},
                           4 => {t_list,{t_tuple,2,true,#{2 => pid}},nil},
                           5 => nil,6 => nil,7 => nil,
                           8 => {t_cons,identifier,nil}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,25},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {get_tuple_element,{y,2},3,{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     75}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {move,{x,0},{y,0}}.
    {move,nil,{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     76}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     77}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     78}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     79}]}.
    {call_ext,0,{extfunc,erlang,yield,0}}.
    {test_heap,9,1}.
    {update_record,
        {atom,copy},
        8,
        {tr,{y,2},
            {t_tuple,8,true,
                #{1 => {t_atom,[commit]},
                  3 => {t_atom,[undefined]},
                  4 => {t_list,{t_tuple,2,true,#{2 => pid}},nil},
                  5 => nil,6 => nil,7 => nil,
                  8 => {t_cons,identifier,nil}}}},
        {y,2},
        {list,
            [2,{x,0},4,{tr,{y,0},{t_list,{t_tuple,2,true,#{2 => pid}},nil}}]}}.
    {move,{y,1},{x,0}}.
    {trim,2,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     81}]}.
    {call,1,{f,24}}. % reverse/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,8,true,
                         #{1 => {t_atom,[commit]},
                           3 => {t_atom,[undefined]},
                           4 => {t_list,{t_tuple,2,true,#{2 => pid}},nil},
                           5 => nil,6 => nil,7 => nil,
                           8 => {t_cons,identifier,nil}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,25}.
    return.


{function, module_info, 0, 27}.
  {label,26}.
    {line,[]}.
    {func_info,{atom,otp_5235},{atom,module_info},0}.
  {label,27}.
    {move,{atom,otp_5235},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 29}.
  {label,28}.
    {line,[]}.
    {func_info,{atom,otp_5235},{atom,module_info},1}.
  {label,29}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5235},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-worker/0-lc$^0/1-0-', 1, 31}.
  {label,30}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5235.erl",
                     54}]}.
    {func_info,{atom,otp_5235},{atom,'-worker/0-lc$^0/1-0-'},1}.
  {label,31}.
    {test,is_nonempty_list,{f,32},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{x,0}}.
    {bif,self,{f,0},[],{y,0}}.
    {call,1,{f,31}}. % '-worker/0-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{2 => pid}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,32}.
    {test,is_nil,{f,33},[{x,0}]}.
    return.
  {label,33}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
