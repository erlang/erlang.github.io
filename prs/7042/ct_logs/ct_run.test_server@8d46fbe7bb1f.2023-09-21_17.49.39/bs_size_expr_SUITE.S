{module, bs_size_expr_SUITE}.  %% version = 0

{exports, [{all,0},
           {basic,1},
           {complex,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {module_info,0},
           {module_info,1},
           {no_match,1},
           {recv,1},
           {size_shadow,1},
           {suite,0}]}.

{attributes, []}.

{labels, 237}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_size_expr_SUITE.erl",30}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_size_expr_SUITE.erl",34}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_size_expr_SUITE.erl",37}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"bs_size_expr_SUITE.erl",38}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[basic,size_shadow,complex,recv,no_match]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_size_expr_SUITE.erl",45}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_size_expr_SUITE},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",46}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_size_expr_SUITE.erl",49}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_size_expr_SUITE.erl",52}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_size_expr_SUITE.erl",55}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"bs_size_expr_SUITE.erl",58}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"bs_size_expr_SUITE.erl",61}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, basic, 1, 20}.
  {label,19}.
    {line,[{location,"bs_size_expr_SUITE.erl",64}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,basic},1}.
  {label,20}.
    {allocate,0,0}.
    {move,{literal,<<0,0,0,1>>},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",65}]}.
    {call,1,{f,26}}. % do_basic/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,24},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<>>}]}.
    {move,{literal,<<0,0,0,2,97,98,99,100>>},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",66}]}.
    {call,1,{f,26}}. % do_basic/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,23},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"abcd">>}]}.
    {move,{literal,<<0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",67}]}.
    {call,1,{f,26}}. % do_basic/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,no_match}]}.
    {move,{literal,<<0,0,3,9>>},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",68}]}.
    {call,1,{f,26}}. % do_basic/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,21},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,no_match}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,21}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"bs_size_expr_SUITE.erl",67}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{location,"bs_size_expr_SUITE.erl",66}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{location,"bs_size_expr_SUITE.erl",65}]}.
    {badmatch,{x,0}}.


{function, do_basic, 1, 26}.
  {label,25}.
    {line,[{location,"bs_size_expr_SUITE.erl",71}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,do_basic},1}.
  {label,26}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_size_expr_SUITE.erl",72}]}.
    {call,1,{f,36}}. % do_basic_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{y,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",74}]}.
    {call,1,{f,41}}. % do_basic_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,
                                   {t_integer,{6,6}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,34},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,
                        {t_integer,{6,6}},
                        none,
                        {t_bitstring,8,false}}},
           {tr,{y,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}}]}.
    {test_heap,4,0}.
    {put_list,{y,1},nil,{x,0}}.
    {put_list,{atom,list},{x,0},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",75}]}.
    {call,1,{f,41}}. % do_basic_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,33},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {tr,{y,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}}]}.
    {move,{literal,{2,4}},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",76}]}.
    {call,1,{f,41}}. % do_basic_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,
                                   {t_integer,{6,6}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,32},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},none,{t_integer,{6,6}},none,none}},
           {integer,6}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",78}]}.
    {call,1,{f,50}}. % do_basic_3/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,31},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {tr,{y,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",79}]}.
    {call,1,{f,55}}. % do_basic_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,30},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {tr,{y,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",81}]}.
    {call,1,{f,60}}. % do_basic_5/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[result]},
                       2 =>
                           {t_union,
                               {t_atom,[no_match]},
                               none,none,
                               {t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_integer,{0,'+inf'}}}},
                               {t_bitstring,8,false}}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,29},
          [{tr,{x,1},
               {t_union,{t_atom,[no_match]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,'+inf'}}}},
                        {t_bitstring,8,false}}},
           {tr,{y,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}}]}.
    {test,is_ne_exact,
          {f,27},
          [{tr,{y,0},
               {t_union,{t_atom,[no_match]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,no_match}]}.
    {line,[{location,"bs_size_expr_SUITE.erl",86}]}.
    {bs_create_bin,{f,0},
                   0,0,32,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{y,1},{t_bitstring,32,false}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<0,118,173,241>>},
                          {integer,4}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,60}}. % do_basic_5/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[result]},
                       2 =>
                           {t_union,
                               {t_atom,[no_match]},
                               none,none,
                               {t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_integer,{0,'+inf'}}}},
                               {t_bitstring,8,false}}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,
          {f,28},
          [{tr,{x,1},
               {t_union,{t_atom,[no_match]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,'+inf'}}}},
                        {t_bitstring,8,false}}}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,
          {f,28},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,7777777}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,
          {f,28},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,0},{t_bitstring,8,false}}]}.
  {label,27}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,28}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{location,"bs_size_expr_SUITE.erl",81}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{location,"bs_size_expr_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{location,"bs_size_expr_SUITE.erl",78}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{location,"bs_size_expr_SUITE.erl",76}]}.
    {badmatch,{atom,no_match}}.
  {label,33}.
    {line,[{location,"bs_size_expr_SUITE.erl",75}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{location,"bs_size_expr_SUITE.erl",74}]}.
    {badmatch,{x,0}}.


{function, do_basic_1, 1, 36}.
  {label,35}.
    {line,[{location,"bs_size_expr_SUITE.erl",91}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,do_basic_1},1}.
  {label,36}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,39},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,1,{literal,[]},32,1,{x,1}}]}}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,4294967295}}},{integer,4}],
            {x,1}}.
    {gc_bif,'-',
            {f,37},
            2,
            [{tr,{x,1},{t_integer,{0,17179869180}}},{integer,4}],
            {x,1}}.
    {jump,{f,38}}.
  {label,37}.
    {move,{atom,bad_size},{x,1}}.
  {label,38}.
    {test,bs_get_binary2,
          {f,39},
          2,
          [{tr,{x,0},{t_bs_context,32}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           8,
           {field_flags,[{anno,[91,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,39},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,39}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, do_basic_2, 1, 41}.
  {label,40}.
    {line,[{location,"bs_size_expr_SUITE.erl",96}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,do_basic_2},1}.
  {label,41}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,
                         {t_union,
                             {t_atom,[list]},
                             none,none,none,
                             {t_bitstring,32,false}},
                         nil},
                     none,
                     [{{2,{t_atom,[tag]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[tag]},
                             2 => {t_bitstring,32,false}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_integer,{4,4}}}}}],
                     none}}]}}.
    {test,is_tagged_tuple,
        {f,44},
        [{tr,{x,0},
             {t_union,none,
                 {t_cons,
                     {t_union,
                         {t_atom,[list]},
                         none,none,none,
                         {t_bitstring,32,false}},
                     nil},
                 none,
                 [{{2,{t_atom,[tag]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[tag]},2 => {t_bitstring,32,false}}}},
                  {{2,{t_integer,{2,2}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{2,2}},2 => {t_integer,{4,4}}}}}],
                 none}},
         2,
         {atom,tag}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,44},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {gc_bif,'*',
            {f,0},
            3,
            [{tr,{x,2},{t_integer,{0,4294967295}}},{integer,4}],
            {x,2}}.
    {gc_bif,'-',
            {f,42},
            3,
            [{tr,{x,2},{t_integer,{0,17179869180}}},{integer,4}],
            {x,2}}.
    {jump,{f,43}}.
  {label,42}.
    {move,{atom,bad_size},{x,2}}.
  {label,43}.
    {test,bs_get_binary2,
          {f,44},
          3,
          [{tr,{x,1},{t_bs_context,32}},
           {tr,{x,2},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           8,
           {field_flags,[{anno,[96,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,44},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,44}.
    {test,is_nonempty_list,{f,47},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,47},
          [{tr,{x,1},
               {t_union,{t_atom,[list]},
                        none,none,none,
                        {t_bitstring,32,false}}},
           {atom,list}]}.
    {test,is_nonempty_list,{f,47},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,
          {f,47},
          [{tr,{x,2},
               {t_list,{t_union,{t_atom,[list]},
                                none,none,none,
                                {t_bitstring,32,false}},
                       nil}}]}.
    {test,bs_start_match3,{f,47},2,[{x,1}],{x,1}}.
    {bs_match,{f,47},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",98}]}.
    {gc_bif,'-',
            {f,0},
            3,
            [{tr,{x,2},{t_integer,{0,4294967295}}},{integer,1}],
            {x,2}}.
    {gc_bif,'*',
            {f,45},
            3,
            [{tr,{x,2},{t_integer,{-1,4294967294}}},{integer,4}],
            {x,2}}.
    {jump,{f,46}}.
  {label,45}.
    {move,{atom,bad_size},{x,2}}.
  {label,46}.
    {test,bs_get_binary2,
          {f,47},
          3,
          [{tr,{x,1},{t_bs_context,32}},
           {tr,{x,2},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           8,
           {field_flags,[{anno,[98,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,47},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,47}.
    {test,is_tuple,
        {f,48},
        [{tr,{x,0},
             {t_union,none,
                 {t_cons,
                     {t_union,
                         {t_atom,[list]},
                         none,none,none,
                         {t_bitstring,32,false}},
                     nil},
                 none,
                 [{{2,{t_atom,[tag]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[tag]},2 => {t_bitstring,32,false}}}},
                  {{2,{t_integer,{2,2}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{2,2}},2 => {t_integer,{4,4}}}}}],
                 none}}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_integer,
          {f,48},
          [{tr,{x,1},
               {t_union,{t_atom,[tag]},none,{t_integer,{2,2}},none,none}}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_integer,
          {f,48},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{4,4}},
                        none,
                        {t_bitstring,32,false}}}]}.
    {move,{integer,6},{x,0}}.
    return.
  {label,48}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, do_basic_3, 1, 50}.
  {label,49}.
    {line,[{location,"bs_size_expr_SUITE.erl",105}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,do_basic_3},1}.
  {label,50}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",106}]}.
    {call,1,{f,116}}. % id/1
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {bs_match,{f,53},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {gc_bif,'*',{f,51},3,[{x,0},{tr,{x,2},{t_integer,{0,4294967295}}}],{x,2}}.
    {gc_bif,'-',
            {f,51},
            3,
            [{tr,{x,2},{t_number,any}},{tr,{x,0},{t_number,any}}],
            {x,0}}.
    {jump,{f,52}}.
  {label,51}.
    {move,{atom,bad_size},{x,0}}.
  {label,52}.
    {test,bs_get_binary2,
          {f,53},
          2,
          [{tr,{x,1},{t_bs_context,32}},
           {tr,{x,0},
               {t_union,{t_atom,[bad_size]},none,{t_number,any},none,none}},
           8,
           {field_flags,[{anno,[108,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_match,{f,53},{x,1},{commands,[{ensure_exactly,0}]}}.
    {deallocate,1}.
    return.
  {label,53}.
    {move,{atom,no_match},{x,0}}.
    {deallocate,1}.
    return.


{function, do_basic_4, 1, 55}.
  {label,54}.
    {line,[{location,"bs_size_expr_SUITE.erl",114}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,do_basic_4},1}.
  {label,55}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",115}]}.
    {call,1,{f,116}}. % id/1
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {bs_match,{f,58},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {gc_bif,'*',{f,56},3,[{x,0},{tr,{x,2},{t_integer,{0,4294967295}}}],{x,2}}.
    {gc_bif,'-',
            {f,56},
            3,
            [{tr,{x,2},{t_number,any}},{tr,{x,0},{t_number,any}}],
            {x,0}}.
    {jump,{f,57}}.
  {label,56}.
    {move,{atom,bad_size},{x,0}}.
  {label,57}.
    {test,bs_get_binary2,
          {f,58},
          2,
          [{tr,{x,1},{t_bs_context,32}},
           {tr,{x,0},
               {t_union,{t_atom,[bad_size]},none,{t_number,any},none,none}},
           8,
           {field_flags,[{anno,[118,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_match,{f,58},{x,1},{commands,[{ensure_exactly,0}]}}.
    {deallocate,1}.
    return.
  {label,58}.
    {move,{atom,no_match},{x,0}}.
    {deallocate,1}.
    return.


{function, do_basic_5, 1, 60}.
  {label,59}.
    {line,[{location,"bs_size_expr_SUITE.erl",126}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,do_basic_5},1}.
  {label,60}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",127}]}.
    {call,1,{f,116}}. % id/1
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {bs_match,{f,65},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {gc_bif,'*',{f,61},3,[{x,0},{tr,{x,2},{t_integer,{0,4294967295}}}],{x,2}}.
    {gc_bif,'-',
            {f,61},
            3,
            [{tr,{x,2},{t_number,any}},{tr,{x,0},{t_number,any}}],
            {x,2}}.
    {jump,{f,62}}.
  {label,61}.
    {move,{atom,bad_size},{x,2}}.
  {label,62}.
    {test,bs_get_binary2,
          {f,65},
          3,
          [{tr,{x,1},{t_bs_context,32}},
           {tr,{x,2},
               {t_union,{t_atom,[bad_size]},none,{t_number,any},none,none}},
           8,
           {field_flags,[{anno,[130,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'*',{f,63},3,[{x,0},{integer,8}],{x,3}}.
    {jump,{f,64}}.
  {label,63}.
    {move,{atom,bad_size},{x,3}}.
  {label,64}.
    {test,bs_get_integer2,
          {f,65},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,3},
               {t_union,{t_atom,[bad_size]},none,{t_number,any},none,none}},
           1,
           {field_flags,[{anno,[130,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,65},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,6,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {put_tuple2,{x,0},{list,[{atom,result},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,65}.
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {bs_match,{f,68},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {gc_bif,'*',{f,66},3,[{x,0},{tr,{x,2},{t_integer,{0,4294967295}}}],{x,2}}.
    {gc_bif,'-',
            {f,66},
            3,
            [{tr,{x,2},{t_number,any}},{tr,{x,0},{t_number,any}}],
            {x,0}}.
    {jump,{f,67}}.
  {label,66}.
    {move,{atom,bad_size},{x,0}}.
  {label,67}.
    {test,bs_get_binary2,
          {f,68},
          2,
          [{tr,{x,1},{t_bs_context,32}},
           {tr,{x,0},
               {t_union,{t_atom,[bad_size]},none,{t_number,any},none,none}},
           8,
           {field_flags,[{anno,[132,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_match,{f,68},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,result},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,68}.
    {move,{literal,{result,no_match}},{x,0}}.
    {deallocate,1}.
    return.


{function, size_shadow, 1, 70}.
  {label,69}.
    {line,[{location,"bs_size_expr_SUITE.erl",141}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,size_shadow},1}.
  {label,70}.
    {allocate,0,0}.
    {line,[{location,"bs_size_expr_SUITE.erl",142}]}.
    {call,0,{f,73}}. % size_shadow_1/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,12345678}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,71}.
    {badmatch,{x,0}}.


{function, size_shadow_1, 0, 73}.
  {label,72}.
    {line,[{location,"bs_size_expr_SUITE.erl",145}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,size_shadow_1},0}.
  {label,73}.
    {test_heap,{alloc,[{words,10},{floats,0},{funs,5}]},0}.
    {make_fun3,{f,223},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,220},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,215},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,204},0,0,{x,3},{list,[]}}.
    {'%',{var_info,{x,3},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,198},0,0,{x,4},{list,[]}}.
    {'%',{var_info,{x,4},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,4},nil,{x,4}}.
    {put_list,{x,3},{x,4},{x,3}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,188,97,78>>},{x,1}}.
    {call_only,2,{f,75}}. % size_shadow_apply/2


{function, size_shadow_apply, 2, 75}.
  {label,74}.
    {line,[{location,"bs_size_expr_SUITE.erl",168}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,size_shadow_apply},2}.
  {label,75}.
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_fun,1,any,{t_integer,{0,'+inf'}}},
                                  nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"bs_size_expr_SUITE.erl",169}]}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,{t_integer,{0,'+inf'}}}}}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,77},2}. % size_shadow_apply/3


{function, size_shadow_apply, 3, 77}.
  {label,76}.
    {line,[{location,"bs_size_expr_SUITE.erl",171}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,size_shadow_apply},3}.
  {label,77}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_fun,1,any,{t_integer,{0,'+inf'}}},
                                  nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_nonempty_list,{f,78},[{x,0}]}.
    {allocate,3,3}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"bs_size_expr_SUITE.erl",172}]}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,{t_integer,{0,'+inf'}}}}}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,79},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},
           {tr,{y,1},{t_integer,{0,'+inf'}}}]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,77},3}. % size_shadow_apply/3
  {label,78}.
    {move,{x,2},{x,0}}.
    return.
  {label,79}.
    {badmatch,{x,0}}.


{function, complex, 1, 81}.
  {label,80}.
    {line,[{location,"bs_size_expr_SUITE.erl",178}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,complex},1}.
  {label,81}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_size_expr_SUITE.erl",180}]}.
    {call,1,{f,116}}. % id/1
    {gc_bif,length,{f,0},1,[{x,0}],{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",181}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,82},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,13}],
            {x,0}}.
    {gc_bif,'+',
            {f,82},
            1,
            [{tr,{x,0},{t_integer,{0,3746994889972252659}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{7,3746994889972252666}}},{integer,3}],
            {x,0}}.
    {jump,{f,83}}.
  {label,82}.
    {move,{integer,256},{x,0}}.
  {label,83}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",181}]}.
    {call,2,{f,194}}. % '-complex/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {gc_bif,length,{f,84},2,[{y,1}],{x,2}}.
    {jump,{f,85}}.
  {label,84}.
    {move,{atom,bad_size},{x,2}}.
  {label,85}.
    {test,bs_get_binary2,
          {f,99},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},
               {t_union,{t_atom,[bad_size]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           13,
           {field_flags,[{anno,[182,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,99},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,99},
          [{tr,{x,2},{t_bitstring,13,false}},{tr,{x,0},{t_bitstring,1,true}}]}.
    {init_yregs,{list,[{y,1}]}}.
    {trim,1,1}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",186}]}.
    {call,1,{f,116}}. % id/1
    {line,[{location,"bs_size_expr_SUITE.erl",192}]}.
    {gc_bif,length,{f,0},1,[{x,0}],{x,1}}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,8}],
            {x,1}}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,-1},
                          {tr,{x,1},{t_integer,{0,2305843009213693944}}}]}}.
    {move,{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {call,2,{f,187}}. % '-complex/1-fun-2-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,98},[{tr,{x,0},{t_integer,any}},{integer,-1}]}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{3,4}},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",193}]}.
    {call,2,{f,187}}. % '-complex/1-fun-2-'/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,97},[{tr,{x,0},{t_number,any}},{integer,7}]}.
    {move,{literal,<<0,13,0,21,50,191,175,187,219,91,220,153,1:2>>},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",206}]}.
    {call,1,{f,180}}. % '-complex/1-fun-4-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,
                                   #{1 => {t_integer,{0,65535}},
                                     2 => {t_integer,{0,65535}}}}}]}}.
    {test,is_eq_exact,
          {f,96},
          [{tr,{x,0},
               {t_tuple,2,false,
                        #{1 => {t_integer,{0,65535}},
                          2 => {t_integer,{0,65535}}}}},
           {literal,{13,21,3405692655,<<"more">>}}]}.
    {move,{literal,<<0,100,1,244>>},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",207}]}.
    {call,1,{f,180}}. % '-complex/1-fun-4-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,
                                   #{1 => {t_integer,{0,65535}},
                                     2 => {t_integer,{0,65535}}}}}]}}.
    {test,is_eq_exact,
          {f,95},
          [{tr,{x,0},
               {t_tuple,2,false,
                        #{1 => {t_integer,{0,65535}},
                          2 => {t_integer,{0,65535}}}}},
           {literal,{100,500}}]}.
    {move,{literal,<<157,77>>},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",208}]}.
    {call,1,{f,180}}. % '-complex/1-fun-4-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,
                                   #{1 => {t_integer,{0,65535}},
                                     2 => {t_integer,{0,65535}}}}}]}}.
    {test,is_eq_exact,
          {f,94},
          [{tr,{x,0},
               {t_tuple,2,false,
                        #{1 => {t_integer,{0,65535}},
                          2 => {t_integer,{0,65535}}}}},
           {literal,{157,77}}]}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",213}]}.
    {call,1,{f,116}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",218}]}.
    {call,3,{f,162}}. % '-complex/1-fun-6-'/3
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,93},[{tr,{x,0},{t_integer,{0,255}}},{integer,1}]}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",219}]}.
    {call,3,{f,162}}. % '-complex/1-fun-6-'/3
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,92},[{tr,{x,0},{t_integer,{0,255}}},{integer,2}]}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{atom,c},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",220}]}.
    {call,3,{f,162}}. % '-complex/1-fun-6-'/3
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,91},[{tr,{x,0},{t_integer,{0,255}}},{integer,3}]}.
    {move,{literal,{r,0,undefined,undefined}},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",229}]}.
    {call,1,{f,157}}. % '-complex/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,90},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<>>,<<1,2,3,4>>}}]}.
    {move,{literal,{r,1,undefined,undefined}},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",230}]}.
    {call,1,{f,157}}. % '-complex/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,89},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<1>>,<<2,3,4>>}}]}.
    {move,{literal,{r,2,undefined,undefined}},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",231}]}.
    {call,1,{f,157}}. % '-complex/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,88},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<1,2>>,<<3,4>>}}]}.
    {move,{literal,{r,3,undefined,undefined}},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",232}]}.
    {call,1,{f,157}}. % '-complex/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,87},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<1,2,3>>,<<4>>}}]}.
    {move,{literal,{r,4,undefined,undefined}},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",233}]}.
    {call,1,{f,157}}. % '-complex/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,86},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<1,2,3,4>>,<<>>}}]}.
    {line,[{location,"bs_size_expr_SUITE.erl",236}]}.
    {call,0,{f,153}}. % '-complex/1-fun-11-'/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,86}.
    {line,[{location,"bs_size_expr_SUITE.erl",233}]}.
    {badmatch,{x,0}}.
  {label,87}.
    {line,[{location,"bs_size_expr_SUITE.erl",232}]}.
    {badmatch,{x,0}}.
  {label,88}.
    {line,[{location,"bs_size_expr_SUITE.erl",231}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{location,"bs_size_expr_SUITE.erl",230}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{location,"bs_size_expr_SUITE.erl",229}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{location,"bs_size_expr_SUITE.erl",220}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{location,"bs_size_expr_SUITE.erl",219}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{location,"bs_size_expr_SUITE.erl",218}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{location,"bs_size_expr_SUITE.erl",208}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{location,"bs_size_expr_SUITE.erl",207}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{location,"bs_size_expr_SUITE.erl",206}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{location,"bs_size_expr_SUITE.erl",193}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{location,"bs_size_expr_SUITE.erl",192}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{location,"bs_size_expr_SUITE.erl",182}]}.
    {badmatch,{x,0}}.


{function, recv, 1, 101}.
  {label,100}.
    {line,[{location,"bs_size_expr_SUITE.erl",248}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,recv},1}.
  {label,101}.
    {allocate,0,0}.
    {move,{literal,<<3,4,210,222,173,190,239>>},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",261}]}.
    {call,1,{f,136}}. % '-recv/1-fun-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,103},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{1234,3735928559}}]}.
    {move,{literal,<<2,99,0,0,202,254,190,239,240,13>>},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",262}]}.
    {call,1,{f,136}}. % '-recv/1-fun-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,102},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{99,223195473899533}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,102}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{location,"bs_size_expr_SUITE.erl",261}]}.
    {badmatch,{x,0}}.


{function, no_match, 1, 105}.
  {label,104}.
    {line,[{location,"bs_size_expr_SUITE.erl",265}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,no_match},1}.
  {label,105}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",266}]}.
    {call,1,{f,116}}. % id/1
    {move,{x,0},{y,0}}.
    {test,bs_start_match3,{f,108},1,[{x,0}],{x,0}}.
    {gc_bif,bit_size,{f,106},1,[{tr,{y,0},{t_bs_matchable,1}}],{x,1}}.
    {line,[{location,"bs_size_expr_SUITE.erl",268}]}.
    {gc_bif,'-',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,1}],
            {x,1}}.
    {jump,{f,107}}.
  {label,106}.
    {move,{atom,bad_size},{x,1}}.
  {label,107}.
    {test,bs_get_integer2,
          {f,108},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},
                        none,
                        {t_integer,{'-inf',288230376151711742}},
                        none,none}},
           1,
           {field_flags,[{anno,[268,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,108},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    {jump,{f,111}}.
  {label,108}.
    {test,bs_start_match3,{f,112},0,[{y,0}],{x,0}}.
    {gc_bif,bit_size,{f,109},1,[{tr,{y,0},{t_bs_matchable,1}}],{x,1}}.
    {line,[{location,"bs_size_expr_SUITE.erl",269}]}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,2}],
            {x,1}}.
    {jump,{f,110}}.
  {label,109}.
    {move,{atom,bad_size},{x,1}}.
  {label,110}.
    {test,bs_get_integer2,
          {f,112},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},
                        none,
                        {t_integer,{0,'+inf'}},
                        none,none}},
           1,
           {field_flags,[{anno,[269,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,112},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
  {label,111}.
    {line,[{location,"bs_size_expr_SUITE.erl",267}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {move,{y,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",290}]}.
    {call,2,{f,129}}. % '-no_match/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nil,{f,114},[{tr,{x,0},{t_list,{t_bitstring,8,false},nil}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_size_expr_SUITE.erl",291}]}.
    {call,3,{f,122}}. % '-no_match/1-lbc$^1/2-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,113},
          [{tr,{x,0},{t_bitstring,32,true}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,113}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{location,"bs_size_expr_SUITE.erl",290}]}.
    {badmatch,{x,0}}.


{function, id, 1, 116}.
  {label,115}.
    {line,[{location,"bs_size_expr_SUITE.erl",295}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,id},1}.
  {label,116}.
    return.


{function, module_info, 0, 118}.
  {label,117}.
    {line,[]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,module_info},0}.
  {label,118}.
    {move,{atom,bs_size_expr_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 120}.
  {label,119}.
    {line,[]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,module_info},1}.
  {label,120}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_size_expr_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-no_match/1-lbc$^1/2-1-', 3, 122}.
  {label,121}.
    {line,[{location,"bs_size_expr_SUITE.erl",291}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-no_match/1-lbc$^1/2-1-'},3}.
  {label,122}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,bs_start_match3,{f,125},3,[{x,0}],{x,3}}.
    {bif,is_list,{f,0},[{x,2}],{x,0}}.
    {test,bs_get_binary2,
          {f,123},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,0},{t_atom,[false,true]}},
           8,
           {field_flags,[{anno,[291,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_create_bin,{f,0},
                   0,4,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,122}}. % '-no_match/1-lbc$^1/2-1-'/3
  {label,123}.
    {bif,is_list,{f,0},[{x,2}],{x,0}}.
    {test,bs_skip_bits2,
          {f,124},
          [{x,3},
           {x,0},
           8,
           {field_flags,[{anno,[291,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,122}}. % '-no_match/1-lbc$^1/2-1-'/3
  {label,124}.
    {move,{x,1},{x,0}}.
    return.
  {label,125}.
    {test,bs_start_match3,{f,126},3,[{x,0}],{x,3}}.
    {bif,is_list,{f,0},[{x,2}],{x,4}}.
    {test,bs_skip_bits2,
          {f,126},
          [{x,3},
           {x,4},
           8,
           {field_flags,[{anno,[291,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,122}}. % '-no_match/1-lbc$^1/2-1-'/3
  {label,126}.
    {test,is_bitstr,{f,127},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,127}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-no_match/1-lc$^0/1-0-', 2, 129}.
  {label,128}.
    {line,[{location,"bs_size_expr_SUITE.erl",290}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-no_match/1-lc$^0/1-0-'},2}.
  {label,129}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,132},2,[{x,0}],{x,2}}.
    {bif,is_list,{f,0},[{x,1}],{x,0}}.
    {test,bs_get_binary2,
          {f,130},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,0},{t_atom,[false,true]}},
           8,
           {field_flags,[{anno,[290,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,2,{f,129}}. % '-no_match/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,130}.
    {bif,is_list,{f,0},[{x,1}],{x,0}}.
    {test,bs_skip_bits2,
          {f,131},
          [{x,2},
           {x,0},
           8,
           {field_flags,[{anno,[290,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,129}}. % '-no_match/1-lc$^0/1-0-'/2
  {label,131}.
    {move,nil,{x,0}}.
    return.
  {label,132}.
    {test,bs_start_match3,{f,133},2,[{x,0}],{x,2}}.
    {bif,is_list,{f,0},[{x,1}],{x,3}}.
    {test,bs_skip_bits2,
          {f,133},
          [{x,2},
           {x,3},
           8,
           {field_flags,[{anno,[290,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,129}}. % '-no_match/1-lc$^0/1-0-'/2
  {label,133}.
    {test,is_bitstr,{f,134},[{x,0}]}.
    {move,nil,{x,0}}.
    return.
  {label,134}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-recv/1-fun-0-', 1, 136}.
  {label,135}.
    {line,[{location,"bs_size_expr_SUITE.erl",249}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-recv/1-fun-0-'},1}.
  {label,136}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,4}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_size_expr_SUITE.erl",250}]}.
    send.
  {label,137}.
    {loop_rec,{f,150},{x,0}}.
    {test,bs_start_match3,{f,138},1,[{x,0}],{x,1}}.
    {bs_match,{f,138},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",252}]}.
    {gc_bif,'-',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}},{integer,1}],{x,3}}.
    {test,bs_get_integer2,
          {f,138},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{-1,254}}},
           8,
           {field_flags,[{anno,[252,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,138},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {move,{x,4},{x,2}}.
    remove_message.
    {put_tuple2,{x,3},{list,[{x,1},{x,2}]}}.
    {move,{x,3},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{y,3}}.
    {jump,{f,139}}.
  {label,138}.
    {test,bs_start_match3,{f,149},1,[{x,0}],{x,0}}.
    {bs_match,{f,149},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",253}]}.
    {gc_bif,'-',{f,0},2,[{tr,{x,1},{t_integer,{0,255}}},{integer,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,149},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{-1,254}}},
           8,
           {field_flags,[{anno,[253,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,149},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    remove_message.
    {put_tuple2,{x,3},{list,[{x,1},{x,2}]}}.
    {move,{x,3},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{y,3}}.
  {label,139}.
    {test_heap,5,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_list,{y,4},nil,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {init_yregs,{list,[{y,4}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",255}]}.
    send.
  {label,140}.
    {loop_rec,{f,148},{x,0}}.
    {test,is_tagged_tuple,{f,147},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,147},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,147},[{x,0}]}.
    {test,bs_start_match3,{f,143},2,[{x,1}],{x,0}}.
    {bs_match,{f,143},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",257}]}.
    {gc_bif,'-',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}},{integer,1}],{x,3}}.
    {gc_bif,'*',{f,141},4,[{tr,{x,3},{t_integer,{-1,254}}},{integer,8}],{x,3}}.
    {jump,{f,142}}.
  {label,141}.
    {move,{atom,bad_size},{x,3}}.
  {label,142}.
    {test,bs_get_integer2,
          {f,143},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           1,
           {field_flags,[{anno,[257,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,143},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,143},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{y,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,143},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{y,1},{t_integer,{0,'+inf'}}}]}.
    {test,is_ne_exact,
          {f,146},
          [{tr,{x,4},{t_integer,{0,4294967295}}},
           {tr,{y,3},{t_integer,{0,18446744073709551615}}}]}.
  {label,143}.
    {test,bs_start_match3,{f,147},2,[{x,1}],{x,0}}.
    {bs_match,{f,147},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",258}]}.
    {gc_bif,'-',{f,0},2,[{tr,{x,1},{t_integer,{0,255}}},{integer,1}],{x,2}}.
    {gc_bif,'*',{f,144},3,[{tr,{x,2},{t_integer,{-1,254}}},{integer,8}],{x,2}}.
    {jump,{f,145}}.
  {label,144}.
    {move,{atom,bad_size},{x,2}}.
  {label,145}.
    {test,bs_get_integer2,
          {f,147},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           1,
           {field_flags,[{anno,[258,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,147},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test,is_eq_exact,
          {f,147},
          [{tr,{x,1},{t_integer,{0,255}}},{tr,{y,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,147},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},
           {tr,{y,1},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,147},
          [{tr,{x,3},{t_integer,{0,18446744073709551615}}},
           {tr,{y,3},{t_integer,{0,18446744073709551615}}}]}.
  {label,146}.
    {test_heap,3,0}.
    remove_message.
    {put_tuple2,{x,0},{list,[{y,1},{y,3}]}}.
    {test,is_eq_exact,
          {f,151},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {deallocate,5}.
    return.
  {label,147}.
    {loop_rec_end,{f,140}}.
  {label,148}.
    {wait,{f,140}}.
  {label,149}.
    {loop_rec_end,{f,137}}.
  {label,150}.
    {wait,{f,137}}.
  {label,151}.
    {line,[{location,"bs_size_expr_SUITE.erl",256}]}.
    {badmatch,{x,0}}.


{function, '-complex/1-fun-11-', 0, 153}.
  {label,152}.
    {line,[{location,"bs_size_expr_SUITE.erl",236}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-complex/1-fun-11-'},0}.
  {label,153}.
    {move,nil,{x,0}}.
    {call_only,1,{f,155}}. % '-complex/1-lc$^10/1-4-'/1


{function, '-complex/1-lc$^10/1-4-', 1, 155}.
  {label,154}.
    {line,[{location,"bs_size_expr_SUITE.erl",243}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-complex/1-lc$^10/1-4-'},1}.
  {label,155}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-complex/1-fun-8-', 1, 157}.
  {label,156}.
    {line,[{location,"bs_size_expr_SUITE.erl",225}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-complex/1-fun-8-'},1}.
  {label,157}.
    {move,{literal,<<1,2,3,4>>},{x,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,158},[{x,0},4,{atom,r}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {jump,{f,159}}.
  {label,158}.
    {move,{atom,bad_size},{x,0}}.
  {label,159}.
    {test,bs_get_binary2,
          {f,160},
          2,
          [{tr,{x,1},{t_bs_context,32}},
           {x,0},
           8,
           {field_flags,[{anno,[226,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,160}.
    {line,[{location,"bs_size_expr_SUITE.erl",226}]}.
    {badmatch,{literal,<<1,2,3,4>>}}.


{function, '-complex/1-fun-6-', 3, 162}.
  {label,161}.
    {line,[{location,"bs_size_expr_SUITE.erl",214}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-complex/1-fun-6-'},3}.
  {label,162}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,172},3,[{x,1}],{x,3}}.
    {bs_get_position,{x,3},{x,1},4}.
    {test,is_eq_exact,{f,165},[{x,0},{atom,a}]}.
    {gc_bif,'-',{f,163},4,[{integer,2},{x,2}],{x,4}}.
    {jump,{f,164}}.
  {label,163}.
    {move,{atom,bad_size},{x,4}}.
  {label,164}.
    {test,bs_skip_bits2,
          {f,165},
          [{x,3},
           {x,4},
           8,
           {field_flags,[{anno,[214,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,165},
              {x,3},
              {commands,[{ensure_at_least,8,8},
                         {integer,4,{literal,[]},8,1,{x,0}}]}}.
    return.
  {label,165}.
    {test,is_eq_exact,{f,168},[{x,0},{atom,b}]}.
    {gc_bif,'-',{f,166},4,[{integer,3},{x,2}],{x,4}}.
    {jump,{f,167}}.
  {label,166}.
    {move,{atom,bad_size},{x,4}}.
  {label,167}.
    {bs_set_position,{x,3},{x,1}}.
    {test,bs_skip_bits2,
          {f,168},
          [{x,3},
           {x,4},
           8,
           {field_flags,[{anno,[215,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,168},
              {x,3},
              {commands,[{ensure_at_least,8,8},
                         {integer,4,{literal,[]},8,1,{x,0}}]}}.
    return.
  {label,168}.
    {test,is_eq_exact,{f,171},[{x,0},{atom,c}]}.
    {gc_bif,'-',{f,169},4,[{integer,4},{x,2}],{x,2}}.
    {jump,{f,170}}.
  {label,169}.
    {move,{atom,bad_size},{x,2}}.
  {label,170}.
    {bs_set_position,{x,3},{x,1}}.
    {test,bs_skip_bits2,
          {f,171},
          [{x,3},
           {x,2},
           8,
           {field_flags,[{anno,[216,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,171},
              {x,3},
              {commands,[{ensure_at_least,8,8},
                         {integer,4,{literal,[]},8,1,{x,0}}]}}.
    return.
  {label,171}.
    {bs_set_position,{x,3},{x,1}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {call_only,2,{f,228}}. % '-complex/1-inlined-3-'/2
  {label,172}.
    {test,bs_start_match3,{f,175},3,[{x,1}],{x,3}}.
    {test,is_eq_exact,{f,175},[{x,0},{atom,b}]}.
    {gc_bif,'-',{f,173},4,[{integer,3},{x,2}],{x,4}}.
    {jump,{f,174}}.
  {label,173}.
    {move,{atom,bad_size},{x,4}}.
  {label,174}.
    {test,bs_skip_bits2,
          {f,175},
          [{x,3},
           {x,4},
           8,
           {field_flags,[{anno,[215,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,175},
              {x,3},
              {commands,[{ensure_at_least,8,8},
                         {integer,4,{literal,[]},8,1,{x,0}}]}}.
    return.
  {label,175}.
    {test,bs_start_match3,{f,178},3,[{x,1}],{x,3}}.
    {test,is_eq_exact,{f,178},[{x,0},{atom,c}]}.
    {gc_bif,'-',{f,176},4,[{integer,4},{x,2}],{x,2}}.
    {jump,{f,177}}.
  {label,176}.
    {move,{atom,bad_size},{x,2}}.
  {label,177}.
    {test,bs_skip_bits2,
          {f,178},
          [{x,3},
           {x,2},
           8,
           {field_flags,[{anno,[216,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,178},
              {x,3},
              {commands,[{ensure_at_least,8,8},
                         {integer,4,{literal,[]},8,1,{x,0}}]}}.
    return.
  {label,178}.
    {call_only,2,{f,228}}. % '-complex/1-inlined-3-'/2


{function, '-complex/1-fun-4-', 1, 180}.
  {label,179}.
    {line,[{location,"bs_size_expr_SUITE.erl",199}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-complex/1-fun-4-'},1}.
  {label,180}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,184},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,181},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},16,1,{x,2}},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{0,65535}}},
             {tr,{x,3},{t_integer,{0,65535}}}],
            {x,4}}.
    {test,bs_get_integer2,
          {f,181},
          5,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,131070}}},
           1,
           {field_flags,[{anno,[199,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,1},{x,0},5}.
    {test_heap,5,5}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{x,4},{x,0}]}}.
    return.
  {label,181}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,182},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},16,1,{x,2}},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,182}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,183},
              {x,1},
              {commands,[{ensure_exactly,16},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,183}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,179}}.
  {label,184}.
    {test,bs_start_match3,{f,179},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,185},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},16,1,{x,3}},
                         {integer,4,{literal,[]},16,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,185}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,179},
              {x,1},
              {commands,[{ensure_exactly,16},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, '-complex/1-fun-2-', 2, 187}.
  {label,186}.
    {line,[{location,"bs_size_expr_SUITE.erl",187}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-complex/1-fun-2-'},2}.
  {label,187}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,191},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {gc_bif,length,{f,188},3,[{x,1}],{x,1}}.
    {bs_create_bin,{f,188},
                   0,3,1,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {tr,{x,1},{t_integer,{0,288230376151711743}}}]}}.
    {gc_bif,bit_size,{f,0},3,[{tr,{x,1},{t_bitstring,1,false}}],{x,1}}.
    {gc_bif,'*',
            {f,0},
            3,
            [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,8}],
            {x,1}}.
    {jump,{f,189}}.
  {label,188}.
    {move,{atom,bad_size},{x,1}}.
  {label,189}.
    {test,bs_get_integer2,
          {f,190},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},
                        none,
                        {t_integer,{0,'+inf'}},
                        none,none}},
           1,
           {field_flags,[{anno,[187,{file,"bs_size_expr_SUITE.erl"}]},
                         signed,big]}],
          {x,1}}.
    {bs_match,{f,190},{x,2},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,190}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {call_only,1,{f,226}}. % '-complex/1-inlined-1-'/1
  {label,191}.
    {test,is_tuple,{f,192},[{x,0}]}.
    {test,test_arity,{f,192},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",190}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.
  {label,192}.
    {call_only,1,{f,226}}. % '-complex/1-inlined-1-'/1


{function, '-complex/1-lbc$^0/2-0-', 2, 194}.
  {label,193}.
    {line,[{location,"bs_size_expr_SUITE.erl",181}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-complex/1-lbc$^0/2-0-'},2}.
  {label,194}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,195},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,13}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,194}}. % '-complex/1-lbc$^0/2-0-'/2
  {label,195}.
    {test,is_nil,{f,196},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,196}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-size_shadow_1/0-fun-1-', 1, 198}.
  {label,197}.
    {line,[{location,"bs_size_expr_SUITE.erl",160}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-size_shadow_1/0-fun-1-'},1}.
  {label,198}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,200},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,199},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   3,
                   {list,[{atom,key1},{x,0},{atom,key2},{x,0}]}}.
    {test_heap,5,3}.
    {put_list,{x,2},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,202}}. % '-size_shadow_1/0-fun-0-'/2
  {label,199}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_size_expr_SUITE.erl",161}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {badmatch,{x,0}}.


{function, '-size_shadow_1/0-fun-0-', 2, 202}.
  {label,201}.
    {line,[{location,"bs_size_expr_SUITE.erl",162}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-size_shadow_1/0-fun-0-'},2}.
  {label,202}.
    {test,is_nonempty_list,{f,201},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nil,{f,201},[{x,3}]}.
    {test,is_tuple,{f,201},[{x,1}]}.
    {test,test_arity,{f,201},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_map,{f,201},[{x,3}]}.
    {get_map_elements,{f,201},
                      {tr,{x,3},{t_map,any,any}},
                      {list,[{atom,key2},{x,3},{atom,key1},{x,4}]}}.
    {test,bs_start_match3,{f,201},5,[{x,3}],{x,3}}.
    {bs_match,{f,201},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",163}]}.
    {gc_bif,'+',{f,0},6,[{tr,{x,5},{t_integer,{0,255}}},{integer,16}],{x,6}}.
    {test,bs_get_integer2,
          {f,201},
          7,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,6},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[162,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_match,{f,201},{x,3},{commands,[{ensure_exactly,0}]}}.
    {test,bs_start_match3,{f,201},7,[{x,4}],{x,3}}.
    {bs_match,{f,201},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,7,{literal,[]},8,1,{x,4}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",162}]}.
    {gc_bif,'+',{f,0},7,[{tr,{x,4},{t_integer,{0,255}}},{integer,16}],{x,7}}.
    {test,bs_get_integer2,
          {f,201},
          8,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,7},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[162,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {bs_match,{f,201},{x,3},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,201},[{tr,{x,4},{t_integer,{0,255}}},{x,2}]}.
    {test,is_eq_exact,
          {f,201},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,201},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,201},[{x,3},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,7},{x,0}}.
    return.


{function, '-size_shadow_1/0-fun-6-', 1, 204}.
  {label,203}.
    {line,[{location,"bs_size_expr_SUITE.erl",154}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-size_shadow_1/0-fun-6-'},1}.
  {label,204}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,206},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {bs_match,{f,206},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",155}]}.
    {gc_bif,'+',{f,0},5,[{tr,{x,4},{t_integer,{0,255}}},{integer,16}],{x,5}}.
    {test,bs_get_integer2,
          {f,206},
          6,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[155,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,206},{x,2},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,2},{x,3}}.
    {bs_match,{f,206},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,6,{literal,[]},8,1,{x,3}}]}}.
    {gc_bif,'+',{f,0},6,[{tr,{x,3},{t_integer,{0,255}}},{integer,16}],{x,6}}.
    {test,bs_get_integer2,
          {f,206},
          7,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,6},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[155,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_match,{f,206},{x,2},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {allocate,2,7}.
    {move,{x,6},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_size_expr_SUITE.erl",156}]}.
    {call,1,{f,213}}. % '-size_shadow_1/0-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,1},{y,1}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",157}]}.
    {call,1,{f,211}}. % '-size_shadow_1/0-fun-4-'/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,208},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,1},{y,1}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,205},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",158}]}.
    {gc_bif,'+',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,16}],{x,4}}.
    {test,bs_get_integer2,
          {f,205},
          5,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[158,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,205},{x,1},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,205},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,2}}]}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,2},{t_integer,{0,255}}},{integer,16}],{x,5}}.
    {test,bs_get_integer2,
          {f,205},
          6,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[158,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,205},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,205},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,205},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,207},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    {deallocate,2}.
    return.
  {label,205}.
    {call_last,1,{f,236},2}. % '-size_shadow_1/0-inlined-7-'/1
  {label,206}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,234}}. % '-size_shadow_1/0-inlined-4-'/1
  {label,207}.
    {badmatch,{x,5}}.
  {label,208}.
    {line,[{location,"bs_size_expr_SUITE.erl",157}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{location,"bs_size_expr_SUITE.erl",156}]}.
    {badmatch,{x,0}}.


{function, '-size_shadow_1/0-fun-4-', 1, 211}.
  {label,210}.
    {line,[{location,"bs_size_expr_SUITE.erl",157}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-size_shadow_1/0-fun-4-'},1}.
  {label,211}.
    {test,is_tuple,{f,210},[{x,0}]}.
    {test,test_arity,{f,210},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,210},2,[{x,1}],{x,1}}.
    {bs_match,{f,210},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}},{integer,16}],{x,3}}.
    {test,bs_get_integer2,
          {f,210},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[157,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,210},{x,1},{commands,[{ensure_exactly,0}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,bs_start_match3,{f,210},4,[{x,1}],{x,1}}.
    {bs_match,{f,210},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,4},{t_integer,{0,255}}},{integer,16}],{x,5}}.
    {test,bs_get_integer2,
          {f,210},
          6,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[157,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,210},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,210},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,4},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,210},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.


{function, '-size_shadow_1/0-fun-3-', 1, 213}.
  {label,212}.
    {line,[{location,"bs_size_expr_SUITE.erl",156}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-size_shadow_1/0-fun-3-'},1}.
  {label,213}.
    {test,is_tuple,{f,212},[{x,0}]}.
    {test,test_arity,{f,212},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,212},2,[{x,1}],{x,1}}.
    {bs_match,{f,212},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}},{integer,16}],{x,3}}.
    {test,bs_get_integer2,
          {f,212},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[156,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,212},{x,1},{commands,[{ensure_exactly,0}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,bs_start_match3,{f,212},4,[{x,1}],{x,1}}.
    {bs_match,{f,212},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {gc_bif,'+',{f,0},5,[{tr,{x,4},{t_integer,{0,255}}},{integer,16}],{x,5}}.
    {test,bs_get_integer2,
          {f,212},
          6,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[156,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,212},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,4},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.


{function, '-size_shadow_1/0-fun-9-', 1, 215}.
  {label,214}.
    {line,[{location,"bs_size_expr_SUITE.erl",150}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-size_shadow_1/0-fun-9-'},1}.
  {label,215}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,217},2,[{x,0}],{x,2}}.
    {bs_match,{f,217},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",151}]}.
    {gc_bif,'+',{f,0},4,[{tr,{x,3},{t_integer,{0,255}}},{integer,16}],{x,3}}.
    {test,bs_get_integer2,
          {f,217},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[151,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,217},{x,2},{commands,[{ensure_exactly,0}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_match,{f,216},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,2}}]}}.
    {line,[{location,"bs_size_expr_SUITE.erl",152}]}.
    {gc_bif,'+',{f,0},4,[{tr,{x,2},{t_integer,{0,255}}},{integer,16}],{x,2}}.
    {test,bs_get_integer2,
          {f,216},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[152,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,216},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,218},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,216}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,232}}. % '-size_shadow_1/0-inlined-3-'/1
  {label,217}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,230}}. % '-size_shadow_1/0-inlined-2-'/1
  {label,218}.
    {badmatch,{x,2}}.


{function, '-size_shadow_1/0-fun-10-', 1, 220}.
  {label,219}.
    {line,[{location,"bs_size_expr_SUITE.erl",149}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-size_shadow_1/0-fun-10-'},1}.
  {label,220}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,219},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,221},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}},{integer,16}],{x,2}}.
    {test,bs_get_integer2,
          {f,221},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[149,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,221},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,221}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,219}}.


{function, '-size_shadow_1/0-fun-11-', 1, 223}.
  {label,222}.
    {line,[{location,"bs_size_expr_SUITE.erl",148}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-size_shadow_1/0-fun-11-'},1}.
  {label,223}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,222},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,224},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}},{integer,16}],{x,2}}.
    {test,bs_get_integer2,
          {f,224},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{16,271}}},
           1,
           {field_flags,[{anno,[148,{file,"bs_size_expr_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,224},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,224}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,222}}.


{function, '-complex/1-inlined-1-', 1, 226}.
  {label,225}.
    {line,[{location,"bs_size_expr_SUITE.erl",187}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-complex/1-inlined-1-'},1}.
  {label,226}.
    {jump,{f,225}}.


{function, '-complex/1-inlined-3-', 2, 228}.
  {label,227}.
    {line,[{location,"bs_size_expr_SUITE.erl",214}]}.
    {func_info,{atom,bs_size_expr_SUITE},{atom,'-complex/1-inlined-3-'},2}.
  {label,228}.
    {jump,{f,227}}.


{function, '-size_shadow_1/0-inlined-2-', 1, 230}.
  {label,229}.
    {line,[{location,"bs_size_expr_SUITE.erl",151}]}.
    {func_info,{atom,bs_size_expr_SUITE},
               {atom,'-size_shadow_1/0-inlined-2-'},
               1}.
  {label,230}.
    {jump,{f,229}}.


{function, '-size_shadow_1/0-inlined-3-', 1, 232}.
  {label,231}.
    {line,[{location,"bs_size_expr_SUITE.erl",152}]}.
    {func_info,{atom,bs_size_expr_SUITE},
               {atom,'-size_shadow_1/0-inlined-3-'},
               1}.
  {label,232}.
    {jump,{f,231}}.


{function, '-size_shadow_1/0-inlined-4-', 1, 234}.
  {label,233}.
    {line,[{location,"bs_size_expr_SUITE.erl",155}]}.
    {func_info,{atom,bs_size_expr_SUITE},
               {atom,'-size_shadow_1/0-inlined-4-'},
               1}.
  {label,234}.
    {jump,{f,233}}.


{function, '-size_shadow_1/0-inlined-7-', 1, 236}.
  {label,235}.
    {line,[{location,"bs_size_expr_SUITE.erl",158}]}.
    {func_info,{atom,bs_size_expr_SUITE},
               {atom,'-size_shadow_1/0-inlined-7-'},
               1}.
  {label,236}.
    {jump,{f,235}}.
