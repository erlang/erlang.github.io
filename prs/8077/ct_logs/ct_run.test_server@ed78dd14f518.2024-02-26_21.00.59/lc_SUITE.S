{module, lc_SUITE}.  %% version = 0

{exports, [{all,0},
           {basic,1},
           {deeply_nested,1},
           {effect,1},
           {empty_generator,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {module_info,0},
           {module_info,1},
           {no_export,1},
           {no_generator,1},
           {shadow,1},
           {suite,0}]}.

{attributes, []}.

{labels, 342}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"lc_SUITE.erl",31}]}.
    {func_info,{atom,lc_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"lc_SUITE.erl",35}]}.
    {func_info,{atom,lc_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"lc_SUITE.erl",38}]}.
    {func_info,{atom,lc_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"lc_SUITE.erl",39}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[basic,deeply_nested,no_generator,
                                 empty_generator,no_export,shadow,effect]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"lc_SUITE.erl",49}]}.
    {func_info,{atom,lc_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,lc_SUITE},{x,0}}.
    {line,[{location,"lc_SUITE.erl",50}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"lc_SUITE.erl",53}]}.
    {func_info,{atom,lc_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"lc_SUITE.erl",56}]}.
    {func_info,{atom,lc_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"lc_SUITE.erl",59}]}.
    {func_info,{atom,lc_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"lc_SUITE.erl",63}]}.
    {func_info,{atom,lc_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"lc_SUITE.erl",66}]}.
    {func_info,{atom,lc_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, basic, 1, 20}.
  {label,19}.
    {line,[{location,"lc_SUITE.erl",69}]}.
    {func_info,{atom,lc_SUITE},{atom,basic},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate,8,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"lc_SUITE.erl",70}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,341},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_tuple,2,true,#{1 => {t_atom,[x]}}}}]}}.
    {move,{x,0},{y,7}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"lc_SUITE.erl",71}]}.
    {call,2,{f,54}}. % my_map/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,5}}.
    {move,{y,7},{x,0}}.
    {line,[{location,"lc_SUITE.erl",72}]}.
    {call,1,{f,337}}. % '-basic/1-lc$^1/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,50},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},nil}},
           {tr,{y,5},{t_list,any,nil}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,335},0,0,{x,0},{list,[]}}.
    {move,{y,5},{x,1}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",73}]}.
    {call,2,{f,54}}. % my_map/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,{f,49},[{tr,{x,0},{t_list,any,nil}},{y,7}]}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",74}]}.
    {call,1,{f,331}}. % '-basic/1-lc$^3/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',6}},nil}}]}}.
    {test,is_eq_exact,
          {f,48},
          [{tr,{x,0},{t_list,{t_number,{'-inf',6}},nil}},
           {literal,[1,2,3,4,5]}]}.
    {move,{y,7},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",75}]}.
    {call,1,{f,327}}. % '-basic/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{3,7}},nil}}]}}.
    {test,is_eq_exact,
          {f,47},
          [{tr,{x,0},{t_list,{t_number,{3,7}},nil}},{literal,[4,5,6]}]}.
    {move,{y,7},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",76}]}.
    {call,1,{f,324}}. % '-basic/1-lc$^5/1-4-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,7},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",77}]}.
    {call,1,{f,320}}. % '-basic/1-lc$^6/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,46},
          [{tr,{x,0},{t_list,any,nil}},{literal,[1,3,5,7,9]}]}.
    {move,{y,7},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",78}]}.
    {call,1,{f,316}}. % '-basic/1-lc$^7/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,45},
          [{tr,{x,0},{t_list,any,nil}},{literal,[2,4,6,8,10]}]}.
    {move,{y,7},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",79}]}.
    {call,1,{f,312}}. % '-basic/1-lc$^8/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,44},
          [{tr,{x,0},{t_list,any,nil}},{literal,[1,3,5,9]}]}.
    {move,{y,7},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",80}]}.
    {call,1,{f,307}}. % '-basic/1-lc$^9/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,43},
          [{tr,{x,0},{t_list,any,nil}},{literal,[2,4,8,10]}]}.
    {move,{y,7},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",84}]}.
    {call,1,{f,302}}. % '-basic/1-lc$^10/1-9-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,7},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",83}]}.
    {call,2,{f,298}}. % '-basic/1-lc$^11/1-10-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,42},
          [{tr,{x,0},{t_list,any,nil}},{literal,[1,3,5,9,2,4,8,10]}]}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",87}]}.
    {call,0,{f,52}}. % tuple_list/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[glurf]},
                         {t_cons,{t_atom,[a,b,c]},nil},
                         none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{3,{t_atom,[a]}},
                           {t_tuple,3,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[true]}}}},
                          {{4,{t_atom,[a]}},
                           {t_tuple,4,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[d,false]},
                                 4 => {t_atom,[ddd,xx]}}}},
                          {{4,{t_atom,[x]}},
                           {t_tuple,4,true,
                               #{1 => {t_atom,[x]},
                                 2 => {t_atom,[y]},
                                 3 => {t_atom,[true]},
                                 4 => {t_atom,[true]}}}}],
                         none},
                     nil}}]}}.
    {call,1,{f,294}}. % '-basic/1-lc$^12/1-11-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{3,{t_atom,[a]}},
                           {t_tuple,3,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[true]}}}},
                          {{4,{t_atom,[a]}},
                           {t_tuple,4,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[d,false]},
                                 4 => {t_atom,[ddd,xx]}}}},
                          {{4,{t_atom,[x]}},
                           {t_tuple,4,true,
                               #{1 => {t_atom,[x]},
                                 2 => {t_atom,[y]},
                                 3 => {t_atom,[true]},
                                 4 => {t_atom,[true]}}}}],
                         none},
                     nil}}]}}.
    {test,is_eq_exact,
        {f,41},
        [{tr,{x,0},
             {t_list,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[true]}}}},
                      {{4,{t_atom,[a]}},
                       {t_tuple,4,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[d,false]},
                             4 => {t_atom,[ddd,xx]}}}},
                      {{4,{t_atom,[x]}},
                       {t_tuple,4,true,
                           #{1 => {t_atom,[x]},
                             2 => {t_atom,[y]},
                             3 => {t_atom,[true]},
                             4 => {t_atom,[true]}}}}],
                     none},
                 nil}},
         {literal,[{a,b,true},{x,y,true,true}]}]}.
    {move,{literal,"?abc123.;"},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",90}]}.
    {call,1,{f,58}}. % alphanum/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,99}},nil}}]}}.
    {test,is_eq_exact,
          {f,40},
          [{tr,{x,0},{t_list,{t_integer,{46,99}},nil}},{literal,"abc123"}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",93}]}.
    {call,1,{f,292}}. % '-basic/1-lc$^13/1-12-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",94}]}.
    {call,1,{f,290}}. % '-basic/1-lc$^14/1-13-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,["ab"]},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",95}]}.
    {call,1,{f,286}}. % '-basic/1-lc$^15/1-14-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[t]},nil}}]}}.
    {test,is_eq_exact,
          {f,39},
          [{tr,{x,0},{t_list,{t_atom,[t]},nil}},{literal,[t]}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",98}]}.
    {call,1,{f,284}}. % '-basic/1-lc$^16/1-15-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[{a}]},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",99}]}.
    {call,1,{f,281}}. % '-basic/1-lc$^17/1-16-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[a]}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,0},
               {t_cons,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[a]}}},
                       nil}},
           {literal,[{a,a}]}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",102}]}.
    {call,1,{f,279}}. % '-basic/1-lc$^18/1-17-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,7},{x,0}}.
    {init_yregs,{list,[{y,7}]}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",105}]}.
    {call,1,{f,275}}. % '-basic/1-lc$^19/1-18-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[xx]},2 => {t_tuple,2,false,#{}}}},
                     nil}}]}}.
    {test,is_nil,
          {f,37},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[xx]},
                                  2 => {t_tuple,2,false,#{}}}},
                       nil}}]}.
    {'catch',{y,7},{f,21}}.
    {move,{y,5},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",106}]}.
    {call,1,{f,272}}. % '-basic/1-lc$^20/1-19-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,21}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,36},[{x,0},2,{atom,'EXIT'}]}.
    {move,{y,5},{x,0}}.
    {line,[{scope,[15,16]},{location,"lc_SUITE.erl",107}]}.
    {call,1,{f,269}}. % '-basic/1-lc$^21/1-20-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,6},{f,22}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {line,[{scope,[15,16]},{location,"lc_SUITE.erl",108}]}.
    {call,1,{f,266}}. % '-basic/1-lc$^22/1-21-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,22}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,35},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,5},{f,23}}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[13,14]},{location,"lc_SUITE.erl",109}]}.
    {call,1,{f,116}}. % id/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {call,1,{f,262}}. % '-basic/1-lc$^23/1-22-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a,b,c,x]},
                         none,
                         {t_number,{'-inf',10}},
                         {t_tuple,2,true,
                             #{1 => {t_number,any},2 => {t_number,any}}},
                         {t_map,
                             {t_bitstring,1,false},
                             {t_union,none,none,
                                 {t_integer,{42,42}},
                                 [{{3,{t_atom,[a]}},
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[a]},
                                         2 => {t_atom,[b]},
                                         3 => {t_atom,[c]}}}}],
                                 none}}},
                     nil}}]}}.
  {label,23}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,34},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,34},[{x,1}]}.
    {test,test_arity,{f,34},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,34},[{x,1},{literal,{bad_generator,x}}]}.
    {'catch',{y,4},{f,24}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,"\n"},{location,"lc_SUITE.erl",110}]}.
    {call,1,{f,260}}. % '-basic/1-lc$^24/1-23-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,24}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,33},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,33},[{x,1}]}.
    {test,test_arity,{f,33},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,33},[{x,1},{literal,{bad_filter,not_bool}}]}.
    {'catch',{y,3},{f,25}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\b"},{location,"lc_SUITE.erl",120}]}.
    {call,1,{f,118}}. % bad_generator/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a,b,c,x]},
                         none,
                         {t_number,{'-inf',10}},
                         {t_tuple,2,true,
                             #{1 => {t_number,any},2 => {t_number,any}}},
                         {t_map,
                             {t_bitstring,1,false},
                             {t_union,none,none,
                                 {t_integer,{42,42}},
                                 [{{3,{t_atom,[a]}},
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[a]},
                                         2 => {t_atom,[b]},
                                         3 => {t_atom,[c]}}}}],
                                 none}}},
                     nil}}]}}.
    {call,1,{f,116}}. % id/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
  {label,25}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,32},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,32},[{x,1}]}.
    {test,test_arity,{f,32},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,32},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,32},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,32},[{x,1},4,{atom,lc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,{f,32},[{x,1},{literal,[{file,"bad_lc.erl"},{line,4}]}]}.
    {'catch',{y,2},{f,26}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[6]},{location,"lc_SUITE.erl",125}]}.
    {call,1,{f,120}}. % bad_generator_bc/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,26}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,31},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,31},[{x,1}]}.
    {test,test_arity,{f,31},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,31},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,31},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,31},[{x,1},4,{atom,lc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,{f,31},[{x,1},{literal,[{file,"bad_lc.erl"},{line,7}]}]}.
    {'catch',{y,1},{f,27}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"lc_SUITE.erl",130}]}.
    {call,1,{f,122}}. % bad_generator_mc/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,27}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,30},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,30},[{x,1}]}.
    {test,test_arity,{f,30},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,30},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,30},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,30},[{x,1},4,{atom,lc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,30},
          [{x,1},{literal,[{file,"bad_lc.erl"},{line,10}]}]}.
    {'catch',{y,0},{f,28}}.
    {move,{literal,[a,b,c|d]},{x,0}}.
    {line,[{scope,[2]},{location,"lc_SUITE.erl",136}]}.
    {call,1,{f,116}}. % id/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {call,1,{f,118}}. % bad_generator/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a,b,c,x]},
                         none,
                         {t_number,{'-inf',10}},
                         {t_tuple,2,true,
                             #{1 => {t_number,any},2 => {t_number,any}}},
                         {t_map,
                             {t_bitstring,1,false},
                             {t_union,none,none,
                                 {t_integer,{42,42}},
                                 [{{3,{t_atom,[a]}},
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[a]},
                                         2 => {t_atom,[b]},
                                         3 => {t_atom,[c]}}}}],
                                 none}}},
                     nil}}]}}.
  {label,28}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,29},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,29},[{x,1}]}.
    {test,test_arity,{f,29},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,29},[{x,2},{literal,{bad_generator,d}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,29},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,29},[{x,1},4,{atom,lc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,{f,29},[{x,1},{literal,[{file,"bad_lc.erl"},{line,4}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,8}.
    return.
  {label,29}.
    {line,[{scope,[0]},{location,"lc_SUITE.erl",133}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[2]},{location,"lc_SUITE.erl",127}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[4]},{location,"lc_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,[6]},{location,"lc_SUITE.erl",117}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,"\b"},{location,"lc_SUITE.erl",110}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,"\n"},{location,"lc_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,"\f"},{location,"lc_SUITE.erl",108}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{scope,[14]},{location,"lc_SUITE.erl",106}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",105}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",95}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",90}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",87}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",83}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",80}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",78}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",77}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",75}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",74}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",73}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",72}]}.
    {badmatch,{x,0}}.


{function, tuple_list, 0, 52}.
  {label,51}.
    {line,[{location,"lc_SUITE.erl",141}]}.
    {func_info,{atom,lc_SUITE},{atom,tuple_list},0}.
  {label,52}.
    {move,{literal,[{a,b,true},
                    [a,b,c],
                    glurf,
                    {a,b,false,xx},
                    {a,b},
                    {x,y,true,true},
                    {a,b,d,ddd}]},
          {x,0}}.
    return.


{function, my_map, 2, 54}.
  {label,53}.
    {line,[{location,"lc_SUITE.erl",144}]}.
    {func_info,{atom,lc_SUITE},{atom,my_map},2}.
  {label,54}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,any}}]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,256}}. % '-my_map/2-lc$^0/1-0-'/2


{function, odd, 1, 56}.
  {label,55}.
    {line,[{location,"lc_SUITE.erl",147}]}.
    {func_info,{atom,lc_SUITE},{atom,odd},1}.
  {label,56}.
    {line,[{location,"lc_SUITE.erl",148}]}.
    {gc_bif,'rem',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{-1,1}}},{integer,1}],{x,0}}.
    return.


{function, alphanum, 1, 58}.
  {label,57}.
    {line,[{location,"lc_SUITE.erl",150}]}.
    {func_info,{atom,lc_SUITE},{atom,alphanum},1}.
  {label,58}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{46,99}},nil}}]}}.
    {call_only,1,{f,251}}. % '-alphanum/1-lc$^0/1-0-'/1


{function, deeply_nested, 1, 60}.
  {label,59}.
    {line,[{location,"lc_SUITE.erl",155}]}.
    {func_info,{atom,lc_SUITE},{atom,deeply_nested},1}.
  {label,60}.
    {test,is_list,{f,59},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"lc_SUITE.erl",156}]}.
    {call,0,{f,63}}. % deeply_nested_1/0
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_cons,{t_integer,{1,1764}},nil},nil}}]}}.
    {test,is_eq_exact,
          {f,61},
          [{tr,{x,0},{t_cons,{t_cons,{t_integer,{1,1764}},nil},nil}},
           {literal,[[99,98,97,96,42,17,1764,12,11,10,9,8,7,6,5,4,3,7,2,1]]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,61}.
    {badmatch,{x,0}}.


{function, deeply_nested_1, 0, 63}.
  {label,62}.
    {line,[{location,"lc_SUITE.erl",159}]}.
    {func_info,{atom,lc_SUITE},{atom,deeply_nested_1},0}.
  {label,63}.
    {move,{literal,"c"},{x,0}}.
    {call_only,1,{f,187}}. % '-deeply_nested_1/0-lc$^2/1-0-'/1


{function, no_generator, 1, 65}.
  {label,64}.
    {line,[{location,"lc_SUITE.erl",167}]}.
    {func_info,{atom,lc_SUITE},{atom,no_generator},1}.
  {label,65}.
    {test,is_list,{f,64},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,17},{x,1}}.
    {move,{integer,-10},{x,0}}.
    {line,[{location,"lc_SUITE.erl",168}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"lc_SUITE.erl",169}]}.
    {call,2,{f,179}}. % '-no_generator/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, no_gen, 2, 67}.
  {label,66}.
    {line,[{location,"lc_SUITE.erl",176}]}.
    {func_info,{atom,lc_SUITE},{atom,no_gen},2}.
  {label,67}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {test,is_eq_exact,{f,68},[{x,1},{integer,9}]}.
    {move,{literal,"\t"},{x,0}}.
    {jump,{f,69}}.
  {label,68}.
    {move,nil,{x,0}}.
  {label,69}.
    {test,is_eq_exact,{f,70},[{x,1},{integer,8}]}.
    {test_heap,2,1}.
    {put_list,{integer,8},{x,0},{x,0}}.
  {label,70}.
    {test,is_eq_exact,{f,71},[{y,1},{integer,7}]}.
    {test_heap,2,1}.
    {put_list,{integer,7},{x,0},{x,0}}.
  {label,71}.
    {test,is_eq_exact,{f,72},[{y,1},{integer,6}]}.
    {test_heap,2,1}.
    {put_list,{integer,6},{x,0},{x,0}}.
  {label,72}.
    {test,is_eq_exact,{f,73},[{y,1},{integer,5}]}.
    {test_heap,2,1}.
    {put_list,{integer,5},{x,0},{x,0}}.
  {label,73}.
    {test,is_eq_exact,{f,74},[{y,1},{integer,4}]}.
    {test_heap,2,1}.
    {put_list,{integer,4},{x,0},{x,0}}.
  {label,74}.
    {test,is_eq_exact,{f,75},[{y,1},{integer,3}]}.
    {test_heap,2,1}.
    {put_list,{integer,3},{x,0},{x,0}}.
  {label,75}.
    {test,is_eq_exact,{f,76},[{y,1},{integer,2}]}.
    {test_heap,2,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
  {label,76}.
    {test,is_eq_exact,{f,77},[{y,1},{integer,1}]}.
    {test_heap,2,1}.
    {put_list,{integer,1},{x,0},{x,0}}.
  {label,77}.
    {test,is_eq_exact,{f,78},[{y,2},{integer,9}]}.
    {test_heap,2,1}.
    {put_list,{integer,9},{x,0},{x,0}}.
  {label,78}.
    {test,is_eq_exact,{f,79},[{y,2},{integer,8}]}.
    {test_heap,2,1}.
    {put_list,{integer,8},{x,0},{x,0}}.
  {label,79}.
    {test,is_eq_exact,{f,80},[{y,2},{integer,7}]}.
    {test_heap,2,1}.
    {put_list,{integer,7},{x,0},{x,0}}.
  {label,80}.
    {test,is_eq_exact,{f,81},[{y,2},{integer,6}]}.
    {test_heap,2,1}.
    {put_list,{integer,6},{x,0},{x,0}}.
  {label,81}.
    {test,is_eq_exact,{f,82},[{y,2},{integer,5}]}.
    {test_heap,2,1}.
    {put_list,{integer,5},{x,0},{x,0}}.
  {label,82}.
    {test,is_eq_exact,{f,83},[{y,2},{integer,4}]}.
    {test_heap,2,1}.
    {put_list,{integer,4},{x,0},{x,0}}.
  {label,83}.
    {test,is_eq_exact,{f,84},[{y,2},{integer,3}]}.
    {test_heap,2,1}.
    {put_list,{integer,3},{x,0},{x,0}}.
  {label,84}.
    {test,is_eq_exact,{f,85},[{y,2},{integer,2}]}.
    {test_heap,2,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
  {label,85}.
    {test,is_eq_exact,{f,86},[{y,2},{integer,1}]}.
    {test_heap,2,1}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {move,{x,0},{y,0}}.
    {jump,{f,87}}.
  {label,86}.
    {move,{x,0},{y,0}}.
  {label,87}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"lc_SUITE.erl",181}]}.
    {call,2,{f,101}}. % no_gen_one_more/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,88},[{x,0},{atom,true}]}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,one_more},{y,2},{y,1}]}}.
    {put_list,{x,0},{y,0},{x,0}}.
    {jump,{f,89}}.
  {label,88}.
    {move,{y,0},{x,0}}.
  {label,89}.
    {test,is_eq_exact,{f,90},[{y,2},{y,1}]}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,2},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
  {label,90}.
    {gc_bif,'rem',{f,91},1,[{y,2},{y,1}],{x,1}}.
    {test,is_eq_exact,{f,91},[{tr,{x,1},{t_integer,any}},{integer,3}]}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,2},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
  {label,91}.
    {gc_bif,'*',{f,92},1,[{y,2},{y,1}],{x,1}}.
    {test,is_eq_exact,{f,92},[{tr,{x,1},{t_number,any}},{integer,0}]}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,2},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
  {label,92}.
    {gc_bif,'+',{f,93},1,[{y,2},{y,1}],{x,1}}.
    {test,is_eq_exact,{f,93},[{tr,{x,1},{t_number,any}},{integer,0}]}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,2},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,93}.
    {deallocate,3}.
    return.


{function, no_gen_verify, 3, 95}.
  {label,94}.
    {line,[{location,"lc_SUITE.erl",201}]}.
    {func_info,{atom,lc_SUITE},{atom,no_gen_verify},3}.
  {label,95}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,
                         {t_integer,{1,9}},
                         {t_tuple,2,false,#{}},
                         none},
                     nil}}]}}.
    {allocate_heap,9,{alloc,[{words,5},{floats,0},{funs,1}]},3}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{x,2},{y,6}}.
    {move,{x,1},{y,7}}.
    {move,{x,0},{y,8}}.
    {put_tuple2,{y,5},{list,[{x,1},{x,2}]}}.
    {make_fun3,{f,177},0,0,{x,0},{list,[{x,1},{x,2}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{y,5},{x,1}}.
    {line,[{location,"lc_SUITE.erl",203}]}.
    {call,2,{f,98}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,175},0,0,{x,1},{list,[{y,7},{y,6}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,0},{y,4}}.
    {move,{y,5},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",204}]}.
    {call,2,{f,98}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,172},0,0,{x,1},{list,[{y,7},{y,6}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,0},{y,3}}.
    {move,{y,5},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",205}]}.
    {call,2,{f,98}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,170},0,0,{x,1},{list,[{y,7},{y,6}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{y,5},{x,2}}.
    {move,{x,0},{y,5}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",206}]}.
    {call,2,{f,98}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,6},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,168},0,0,{x,1},{list,[{y,7},{y,6}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {put_tuple2,{x,2},{list,[{atom,one_more},{y,7},{y,6}]}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",207}]}.
    {call,2,{f,98}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,165},0,0,{x,1},{list,[{y,7}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,0},{y,1}}.
    {move,{y,7},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",208}]}.
    {call,2,{f,98}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,162},0,0,{x,1},{list,[{y,6}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,6},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",209}]}.
    {call,2,{f,98}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"lc_SUITE.erl",208}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"lc_SUITE.erl",207}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"lc_SUITE.erl",206}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {line,[{location,"lc_SUITE.erl",205}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{location,"lc_SUITE.erl",204}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {line,[{location,"lc_SUITE.erl",203}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test,is_eq_exact,
          {f,96},
          [{tr,{y,8},
               {t_list,{t_union,none,none,
                                {t_integer,{1,9}},
                                {t_tuple,2,false,#{}},
                                none},
                       nil}},
           {tr,{x,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,9}.
    return.
  {label,96}.
    {test_heap,8,1}.
    {put_list,{y,8},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,6},{x,0},{x,0}}.
    {put_list,{y,7},{x,0},{x,1}}.
    {trim,9,0}.
    {move,{literal,"A = ~p; B = ~p; Expected = ~p, actual = ~p"},{x,0}}.
    {line,[{location,"lc_SUITE.erl",213}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"lc_SUITE.erl",214}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.


{function, no_gen_eval, 2, 98}.
  {label,97}.
    {line,[{location,"lc_SUITE.erl",217}]}.
    {func_info,{atom,lc_SUITE},{atom,no_gen_eval},2}.
  {label,98}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_atom,[false,true]}}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"lc_SUITE.erl",218}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_atom,[false,true]}}}}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,99},[{x,0},{atom,true}]}.
    {test_heap,2,0}.
    {put_list,{y,0},nil,{x,0}}.
    {deallocate,1}.
    return.
  {label,99}.
    {move,nil,{x,0}}.
    {deallocate,1}.
    return.


{function, no_gen_one_more, 2, 101}.
  {label,100}.
    {line,[{location,"lc_SUITE.erl",223}]}.
    {func_info,{atom,lc_SUITE},{atom,no_gen_one_more},2}.
  {label,101}.
    {gc_bif,'+',{f,0},2,[{x,0},{integer,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_number,any}},{x,1}],{x,0}}.
    return.


{function, empty_generator, 1, 103}.
  {label,102}.
    {line,[{location,"lc_SUITE.erl",225}]}.
    {func_info,{atom,lc_SUITE},{atom,empty_generator},1}.
  {label,103}.
    {test,is_list,{f,102},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,0}}.
    {line,[{location,"lc_SUITE.erl",226}]}.
    {call,1,{f,160}}. % '-empty_generator/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, no_export, 1, 105}.
  {label,104}.
    {line,[{location,"lc_SUITE.erl",229}]}.
    {func_info,{atom,lc_SUITE},{atom,no_export},1}.
  {label,105}.
    {test,is_list,{f,104},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, shadow, 1, 107}.
  {label,106}.
    {line,[{location,"lc_SUITE.erl",236}]}.
    {func_info,{atom,lc_SUITE},{atom,shadow},1}.
  {label,107}.
    {test,is_list,{f,106},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,nomatch},{x,0}}.
    {line,[{location,"lc_SUITE.erl",238}]}.
    {call,1,{f,116}}. % id/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {move,{integer,9},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"lc_SUITE.erl",239}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,156}}. % '-shadow/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"lc_SUITE.erl",240}]}.
    {call,1,{f,116}}. % id/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {test,is_eq_exact,
        {f,109},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[nomatch,not_bool,x]},
                 {t_list,
                     {t_union,
                         {t_atom,[a,b,c,x]},
                         none,
                         {t_number,{'-inf',10}},
                         {t_tuple,2,true,
                             #{1 => {t_number,any},2 => {t_number,any}}},
                         {t_map,
                             {t_bitstring,1,false},
                             {t_union,none,none,
                                 {t_integer,{42,42}},
                                 [{{3,{t_atom,[a]}},
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[a]},
                                         2 => {t_atom,[b]},
                                         3 => {t_atom,[c]}}}}],
                                 none}}},
                     {t_union,{t_atom,[d]},nil,none,none,none}},
                 none,none,none}},
         {literal,[{7,8},{8,9},{9,10}]}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"lc_SUITE.erl",241}]}.
    {call,1,{f,116}}. % id/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {call,1,{f,151}}. % '-shadow/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',10}},nil}}]}}.
    {call,1,{f,116}}. % id/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {test,is_eq_exact,
        {f,108},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[nomatch,not_bool,x]},
                 {t_list,
                     {t_union,
                         {t_atom,[a,b,c,x]},
                         none,
                         {t_number,{'-inf',10}},
                         {t_tuple,2,true,
                             #{1 => {t_number,any},2 => {t_number,any}}},
                         {t_map,
                             {t_bitstring,1,false},
                             {t_union,none,none,
                                 {t_integer,{42,42}},
                                 [{{3,{t_atom,[a]}},
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[a]},
                                         2 => {t_atom,[b]},
                                         3 => {t_atom,[c]}}}}],
                                 none}}},
                     {t_union,{t_atom,[d]},nil,none,none,none}},
                 none,none,none}},
         {literal,"\b\t"}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,108}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{location,"lc_SUITE.erl",240}]}.
    {badmatch,{x,0}}.


{function, effect, 1, 111}.
  {label,110}.
    {line,[{location,"lc_SUITE.erl",245}]}.
    {func_info,{atom,lc_SUITE},{atom,effect},1}.
  {label,111}.
    {test,is_list,{f,110},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{minutes,10}},{x,0}}.
    {line,[{location,"lc_SUITE.erl",246}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,144},0,0,{y,0},{list,[]}}.
    {'%',{var_info,{y,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"lc_SUITE.erl",252}]}.
    {bs_create_bin,{f,0},
                   0,0,4,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,492},
                          {atom,string},
                          0,8,nil,
                          {string,<<1>>},
                          {integer,1}]}}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,293},
                          {atom,string},
                          0,8,nil,
                          {string,<<2>>},
                          {integer,1}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},2,{list,[{x,0},{integer,42}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},2,{list,[{x,1},{literal,{a,b,c}}]}}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,x},{x,0},{x,0}}.
    {put_list,{literal,#{}},{x,0},{x,0}}.
    {call,1,{f,116}}. % id/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"lc_SUITE.erl",248}]}.
    {call,2,{f,114}}. % do_effect/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,112},
          [{tr,{x,0},{t_list,any,nil}},{literal,[{42,{a,b,c}}]}]}.
    {move,{integer,268435455},{x,1}}.
    {move,{integer,267452416},{x,0}}.
    {line,[{location,"lc_SUITE.erl",259}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,138}}. % '-effect/1-lc$^2/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,112}.
    {line,[{location,"lc_SUITE.erl",247}]}.
    {badmatch,{x,0}}.


{function, do_effect, 2, 114}.
  {label,113}.
    {line,[{location,"lc_SUITE.erl",266}]}.
    {func_info,{atom,lc_SUITE},{atom,do_effect},2}.
  {label,114}.
    {'%',{var_info,{x,0},
                   [{type,{t_fun,2,{'-effect/1-fun-1-',2},{t_atom,[ok]}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,nil,{x,1}}.
    {move,{atom,lc_SUITE},{x,0}}.
    {line,[{location,"lc_SUITE.erl",267}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,136},0,0,{x,0},{list,[]}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {line,[{location,"lc_SUITE.erl",269}]}.
    {call,2,{f,144}}. % '-effect/1-fun-1-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,lc_SUITE},{x,0}}.
    {line,[{location,"lc_SUITE.erl",270}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {call_ext_last,1,{extfunc,lists,reverse,1},0}.


{function, id, 1, 116}.
  {label,115}.
    {line,[{location,"lc_SUITE.erl",272}]}.
    {func_info,{atom,lc_SUITE},{atom,id},1}.
  {label,116}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    return.


{function, bad_generator, 1, 118}.
  {label,117}.
    {line,[{location,"bad_lc.erl",2}]}.
    {func_info,{atom,lc_SUITE},{atom,bad_generator},1}.
  {label,118}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[a,nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {call_only,1,{f,132}}. % '-bad_generator/1-lc$^0/1-0-'/1


{function, bad_generator_bc, 1, 120}.
  {label,119}.
    {line,[{location,"bad_lc.erl",5}]}.
    {func_info,{atom,lc_SUITE},{atom,bad_generator_bc},1}.
  {label,120}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{atom,a},{x,0}}.
    {call_last,2,{f,130},0}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2


{function, bad_generator_mc, 1, 122}.
  {label,121}.
    {line,[{location,"bad_lc.erl",8}]}.
    {func_info,{atom,lc_SUITE},{atom,bad_generator_mc},1}.
  {label,122}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {call_only,1,{f,128}}. % '-bad_generator_mc/1-lc$^0/1-0-'/1


{function, module_info, 0, 124}.
  {label,123}.
    {line,[]}.
    {func_info,{atom,lc_SUITE},{atom,module_info},0}.
  {label,124}.
    {move,{atom,lc_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 126}.
  {label,125}.
    {line,[]}.
    {func_info,{atom,lc_SUITE},{atom,module_info},1}.
  {label,126}.
    {move,{x,0},{x,1}}.
    {move,{atom,lc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-bad_generator_mc/1-lc$^0/1-0-', 1, 128}.
  {label,127}.
    {line,[{location,"bad_lc.erl",10}]}.
    {func_info,{atom,lc_SUITE},{atom,'-bad_generator_mc/1-lc$^0/1-0-'},1}.
  {label,128}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{bad_generator,a}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generator_bc/1-lbc$^0/2-0-', 2, 130}.
  {label,129}.
    {line,[{location,"bad_lc.erl",6}]}.
    {func_info,{atom,lc_SUITE},{atom,'-bad_generator_bc/1-lbc$^0/2-0-'},2}.
  {label,130}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,a}},{x,0}}.
    {line,[{location,"bad_lc.erl",7}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generator/1-lc$^0/1-0-', 1, 132}.
  {label,131}.
    {line,[{location,"bad_lc.erl",4}]}.
    {func_info,{atom,lc_SUITE},{atom,'-bad_generator/1-lc$^0/1-0-'},1}.
  {label,132}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[a,d,nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {test,is_nonempty_list,{f,133},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,132}}. % '-bad_generator/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a,b,c,x]},
                         none,
                         {t_number,{'-inf',10}},
                         {t_tuple,2,true,
                             #{1 => {t_number,any},2 => {t_number,any}}},
                         {t_map,
                             {t_bitstring,1,false},
                             {t_union,none,none,
                                 {t_integer,{42,42}},
                                 [{{3,{t_atom,[a]}},
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[a]},
                                         2 => {t_atom,[b]},
                                         3 => {t_atom,[c]}}}}],
                                 none}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,133}.
    {test,is_nil,
          {f,134},
          [{tr,{x,0},
               {t_union,{t_atom,[a,d,nomatch,not_bool,x]},
                        nil,none,none,none}}]}.
    return.
  {label,134}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_effect/2-fun-0-', 1, 136}.
  {label,135}.
    {line,[{location,"lc_SUITE.erl",268}]}.
    {func_info,{atom,lc_SUITE},{atom,'-do_effect/2-fun-0-'},1}.
  {label,136}.
    {test_heap,2,1}.
    {bif,get,{f,0},[{atom,lc_SUITE}],{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{atom,lc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,put,2}}.


{function, '-effect/1-lc$^2/1-1-', 1, 138}.
  {label,137}.
    {line,[{location,"lc_SUITE.erl",259}]}.
    {func_info,{atom,lc_SUITE},{atom,'-effect/1-lc$^2/1-1-'},1}.
  {label,138}.
    {test,is_nonempty_list,{f,140},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {'catch',{y,1},{f,139}}.
    {line,[{location,"lc_SUITE.erl",258}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,utf8},1,0,nil,{x,0},{atom,undefined}]}}.
    {move,{atom,utf8},{x,1}}.
    {call_ext,2,{extfunc,erlang,binary_to_atom,2}}.
  {label,139}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,142},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,142},[{x,1},2,{atom,badarg}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,138},2}. % '-effect/1-lc$^2/1-1-'/1
  {label,140}.
    {test,is_nil,{f,141},[{x,0}]}.
    return.
  {label,141}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{scope,[0]},{location,"lc_SUITE.erl",259}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,142}.
    {line,[{scope,[0]},{location,"lc_SUITE.erl",257}]}.
    {badmatch,{x,0}}.


{function, '-effect/1-fun-1-', 2, 144}.
  {label,143}.
    {line,[{location,"lc_SUITE.erl",248}]}.
    {func_info,{atom,lc_SUITE},{atom,'-effect/1-fun-1-'},2}.
  {label,144}.
    {allocate,0,2}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"lc_SUITE.erl",250}]}.
    {call,2,{f,146}}. % '-effect/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, '-effect/1-lc$^0/1-0-', 2, 146}.
  {label,145}.
    {line,[{location,"lc_SUITE.erl",250}]}.
    {func_info,{atom,lc_SUITE},{atom,'-effect/1-lc$^0/1-0-'},2}.
  {label,146}.
    {test,is_nonempty_list,{f,148},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_map,{f,147},[{x,2}]}.
    {bs_create_bin,{f,147},
                   0,3,4,
                   {x,3},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,492},
                          {atom,string},
                          0,8,nil,
                          {string,<<1>>},
                          {integer,1}]}}.
    {get_map_elements,{f,147},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{tr,{x,3},{t_bitstring,4,false}},{x,3}]}}.
    {bs_create_bin,{f,147},
                   0,4,1,
                   {x,4},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,293},
                          {atom,string},
                          0,8,nil,
                          {string,<<2>>},
                          {integer,1}]}}.
    {get_map_elements,{f,147},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{tr,{x,4},{t_bitstring,1,false}},{x,2}]}}.
    {allocate_heap,2,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    {line,[{location,"lc_SUITE.erl",249}]}.
    {call_fun,1}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,146},2}. % '-effect/1-lc$^0/1-0-'/2
  {label,147}.
    {call_only,2,{f,146}}. % '-effect/1-lc$^0/1-0-'/2
  {label,148}.
    {test,is_nil,{f,149},[{x,0}]}.
    return.
  {label,149}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"lc_SUITE.erl",250}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-shadow/1-lc$^1/1-1-', 1, 151}.
  {label,150}.
    {line,[{location,"lc_SUITE.erl",241}]}.
    {func_info,{atom,lc_SUITE},{atom,'-shadow/1-lc$^1/1-1-'},1}.
  {label,151}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[d,nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {test,is_nonempty_list,{f,153},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,
        {f,152},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[a,b,c,x]},
                 none,
                 {t_number,{'-inf',10}},
                 {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
                 {t_map,
                     {t_bitstring,1,false},
                     {t_union,none,none,
                         {t_integer,{42,42}},
                         [{{3,{t_atom,[a]}},
                           {t_tuple,3,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[c]}}}}],
                         none}}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_lt,{f,152},[{tr,{x,1},{t_number,any}},{integer,10}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,151}}. % '-shadow/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',10}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,152}.
    {call_only,1,{f,151}}. % '-shadow/1-lc$^1/1-1-'/1
  {label,153}.
    {test,is_nil,
          {f,154},
          [{tr,{x,0},
               {t_union,{t_atom,[d,nomatch,not_bool,x]},nil,none,none,none}}]}.
    return.
  {label,154}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-shadow/1-lc$^0/1-0-', 1, 156}.
  {label,155}.
    {line,[{location,"lc_SUITE.erl",239}]}.
    {func_info,{atom,lc_SUITE},{atom,'-shadow/1-lc$^0/1-0-'},1}.
  {label,156}.
    {test,is_nonempty_list,{f,157},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,156}}. % '-shadow/1-lc$^0/1-0-'/1
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
  {label,157}.
    {test,is_nil,{f,158},[{x,0}]}.
    return.
  {label,158}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-empty_generator/1-lc$^0/1-0-', 1, 160}.
  {label,159}.
    {line,[{location,"lc_SUITE.erl",226}]}.
    {func_info,{atom,lc_SUITE},{atom,'-empty_generator/1-lc$^0/1-0-'},1}.
  {label,160}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-0-', 1, 162}.
  {label,161}.
    {line,[{location,"lc_SUITE.erl",209}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-0-'},1}.
  {label,162}.
    {test,is_ge,{f,163},[{x,0},{integer,1}]}.
    {bif,'>=',
         {f,0},
         [{integer,9},
          {tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,any,any},
                       {t_number,{1,'+inf'}},
                       {t_tuple,0,false,#{}},
                       other}}],
         {x,0}}.
    return.
  {label,163}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-1-', 1, 165}.
  {label,164}.
    {line,[{location,"lc_SUITE.erl",208}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-1-'},1}.
  {label,165}.
    {test,is_ge,{f,166},[{x,0},{integer,1}]}.
    {bif,'>=',
         {f,0},
         [{integer,9},
          {tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,any,any},
                       {t_number,{1,'+inf'}},
                       {t_tuple,0,false,#{}},
                       other}}],
         {x,0}}.
    return.
  {label,166}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-2-', 2, 168}.
  {label,167}.
    {line,[{location,"lc_SUITE.erl",207}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-2-'},2}.
  {label,168}.
    {gc_bif,'+',{f,0},2,[{x,0},{integer,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_number,any}},{x,1}],{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-3-', 2, 170}.
  {label,169}.
    {line,[{location,"lc_SUITE.erl",206}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-3-'},2}.
  {label,170}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-4-', 2, 172}.
  {label,171}.
    {line,[{location,"lc_SUITE.erl",205}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-4-'},2}.
  {label,172}.
    {test,is_eq_exact,{f,173},[{x,1},{integer,0}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,173}.
    {gc_bif,'rem',{f,0},2,[{x,0},{x,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,any}},{integer,3}],{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-5-', 2, 175}.
  {label,174}.
    {line,[{location,"lc_SUITE.erl",204}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-5-'},2}.
  {label,175}.
    {gc_bif,'*',{f,0},2,[{x,0},{x,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_number,any}},{integer,0}],{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-6-', 2, 177}.
  {label,176}.
    {line,[{location,"lc_SUITE.erl",203}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-6-'},2}.
  {label,177}.
    {gc_bif,'+',{f,0},2,[{x,0},{x,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_number,any}},{integer,0}],{x,0}}.
    return.


{function, '-no_generator/1-lc$^0/1-0-', 2, 179}.
  {label,178}.
    {line,[{location,"lc_SUITE.erl",169}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_generator/1-lc$^0/1-0-'},2}.
  {label,179}.
    {test,is_nonempty_list,{f,180},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{x,1},{x,3}}.
    {swap,{x,0},{x,1}}.
    {call_only,4,{f,183}}. % '-no_generator/1-lc$^1/1-1-'/4
  {label,180}.
    {test,is_nil,{f,181},[{x,0}]}.
    return.
  {label,181}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-no_generator/1-lc$^1/1-1-', 4, 183}.
  {label,182}.
    {line,[{location,"lc_SUITE.erl",169}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_generator/1-lc$^1/1-1-'},4}.
  {label,183}.
    {test,is_nonempty_list,{f,184},[{x,0}]}.
    {allocate,5,4}.
    {move,{x,3},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {call,2,{f,67}}. % no_gen/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,
                         {t_integer,{1,9}},
                         {t_tuple,2,false,#{}},
                         none},
                     nil}}]}}.
    {move,{y,1},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,4}.
    {call,3,{f,95}}. % no_gen_verify/3
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,4,{f,183},4}. % '-no_generator/1-lc$^1/1-1-'/4
  {label,184}.
    {test,is_nil,{f,185},[{x,0}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,179}}. % '-no_generator/1-lc$^0/1-0-'/2
  {label,185}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-deeply_nested_1/0-lc$^2/1-0-', 1, 187}.
  {label,186}.
    {line,[{location,"lc_SUITE.erl",162}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^2/1-0-'},1}.
  {label,187}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {test,is_nonempty_list,{f,188},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {move,{integer,99},{x,2}}.
    {move,{literal,"b"},{x,0}}.
    {call_only,3,{f,190}}. % '-deeply_nested_1/0-lc$^3/1-1-'/3
  {label,188}.
    return.


{function, '-deeply_nested_1/0-lc$^3/1-1-', 3, 190}.
  {label,189}.
    {line,[{location,"lc_SUITE.erl",162}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^3/1-1-'},3}.
  {label,190}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {test,is_nonempty_list,{f,191},[{x,0}]}.
    {get_tl,{x,0},{x,3}}.
    {move,{integer,98},{x,4}}.
    {move,{literal,"a"},{x,0}}.
    {call_only,5,{f,193}}. % '-deeply_nested_1/0-lc$^4/1-2-'/5
  {label,191}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,187}}. % '-deeply_nested_1/0-lc$^2/1-0-'/1


{function, '-deeply_nested_1/0-lc$^4/1-2-', 5, 193}.
  {label,192}.
    {line,[{location,"lc_SUITE.erl",162}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^4/1-2-'},5}.
  {label,193}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {test,is_nonempty_list,{f,194},[{x,0}]}.
    {get_tl,{x,0},{x,5}}.
    {move,{integer,97},{x,6}}.
    {move,{literal,"`"},{x,0}}.
    {call_only,7,{f,196}}. % '-deeply_nested_1/0-lc$^5/1-3-'/7
  {label,194}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,190}}. % '-deeply_nested_1/0-lc$^3/1-1-'/3


{function, '-deeply_nested_1/0-lc$^5/1-3-', 7, 196}.
  {label,195}.
    {line,[{location,"lc_SUITE.erl",162}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^5/1-3-'},7}.
  {label,196}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {test,is_nonempty_list,{f,197},[{x,0}]}.
    {get_tl,{x,0},{x,7}}.
    {move,{integer,96},{x,8}}.
    {move,{literal,"*"},{x,0}}.
    {call_only,9,{f,199}}. % '-deeply_nested_1/0-lc$^6/1-4-'/9
  {label,197}.
    {move,{x,5},{x,0}}.
    {call_only,5,{f,193}}. % '-deeply_nested_1/0-lc$^4/1-2-'/5


{function, '-deeply_nested_1/0-lc$^6/1-4-', 9, 199}.
  {label,198}.
    {line,[{location,"lc_SUITE.erl",162}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^6/1-4-'},9}.
  {label,199}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {test,is_nonempty_list,{f,200},[{x,0}]}.
    {get_tl,{x,0},{x,9}}.
    {move,{integer,42},{x,10}}.
    {move,{literal,[17]},{x,0}}.
    {call_only,11,{f,202}}. % '-deeply_nested_1/0-lc$^7/1-5-'/11
  {label,200}.
    {move,{x,7},{x,0}}.
    {call_only,7,{f,196}}. % '-deeply_nested_1/0-lc$^5/1-3-'/7


{function, '-deeply_nested_1/0-lc$^7/1-5-', 11, 202}.
  {label,201}.
    {line,[{location,"lc_SUITE.erl",162}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^7/1-5-'},11}.
  {label,202}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {test,is_nonempty_list,{f,203},[{x,0}]}.
    {test_heap,{alloc,[{words,3},{floats,0},{funs,1}]},11}.
    {get_tl,{x,0},{x,11}}.
    {make_fun3,{f,205},0,0,{x,0},{list,[{integer,42}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{1764,1764}}}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{integer,17},{x,12}}.
    {call_only,13,{f,207}}. % '-deeply_nested_1/0-lc$^8/1-6-'/13
  {label,203}.
    {move,{x,9},{x,0}}.
    {call_only,9,{f,199}}. % '-deeply_nested_1/0-lc$^6/1-4-'/9


{function, '-deeply_nested_1/0-fun-0-', 1, 205}.
  {label,204}.
    {line,[{location,"lc_SUITE.erl",163}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-fun-0-'},1}.
  {label,205}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{integer,1764},{x,0}}.
    return.


{function, '-deeply_nested_1/0-lc$^8/1-6-', 13, 207}.
  {label,206}.
    {line,[{location,"lc_SUITE.erl",163}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^8/1-6-'},13}.
  {label,207}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {test,is_nonempty_list,{f,208},[{x,0}]}.
    {get_list,{x,0},{x,14},{x,13}}.
    {move,{literal,"\f"},{x,0}}.
    {call_only,15,{f,210}}. % '-deeply_nested_1/0-lc$^9/1-7-'/15
  {label,208}.
    {move,{x,11},{x,0}}.
    {call_only,11,{f,202}}. % '-deeply_nested_1/0-lc$^7/1-5-'/11


{function, '-deeply_nested_1/0-lc$^9/1-7-', 15, 210}.
  {label,209}.
    {line,[{location,"lc_SUITE.erl",163}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^9/1-7-'},15}.
  {label,210}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {test,is_nonempty_list,{f,211},[{x,0}]}.
    {get_tl,{x,0},{x,15}}.
    {move,{integer,12},{x,16}}.
    {move,{literal,"\v"},{x,0}}.
    {call_only,17,{f,213}}. % '-deeply_nested_1/0-lc$^10/1-8-'/17
  {label,211}.
    {move,{x,13},{x,0}}.
    {call_only,13,{f,207}}. % '-deeply_nested_1/0-lc$^8/1-6-'/13


{function, '-deeply_nested_1/0-lc$^10/1-8-', 17, 213}.
  {label,212}.
    {line,[{location,"lc_SUITE.erl",163}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^10/1-8-'},17}.
  {label,213}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {test,is_nonempty_list,{f,214},[{x,0}]}.
    {get_tl,{x,0},{x,17}}.
    {move,{integer,11},{x,18}}.
    {move,{literal,"\n"},{x,0}}.
    {call_only,19,{f,216}}. % '-deeply_nested_1/0-lc$^11/1-9-'/19
  {label,214}.
    {move,{x,15},{x,0}}.
    {call_only,15,{f,210}}. % '-deeply_nested_1/0-lc$^9/1-7-'/15


{function, '-deeply_nested_1/0-lc$^11/1-9-', 19, 216}.
  {label,215}.
    {line,[{location,"lc_SUITE.erl",163}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^11/1-9-'},19}.
  {label,216}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {test,is_nonempty_list,{f,217},[{x,0}]}.
    {get_tl,{x,0},{x,19}}.
    {move,{integer,10},{x,20}}.
    {move,{literal,"\t"},{x,0}}.
    {call_only,21,{f,219}}. % '-deeply_nested_1/0-lc$^12/1-10-'/21
  {label,217}.
    {move,{x,17},{x,0}}.
    {call_only,17,{f,213}}. % '-deeply_nested_1/0-lc$^10/1-8-'/17


{function, '-deeply_nested_1/0-lc$^12/1-10-', 21, 219}.
  {label,218}.
    {line,[{location,"lc_SUITE.erl",164}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^12/1-10-'},21}.
  {label,219}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{9,9}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {'%',{var_info,{x,19},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,20},[{type,{t_integer,{10,10}}}]}}.
    {test,is_nonempty_list,{f,220},[{x,0}]}.
    {get_tl,{x,0},{x,21}}.
    {move,{integer,9},{x,22}}.
    {move,{literal,"\b"},{x,0}}.
    {call_only,23,{f,222}}. % '-deeply_nested_1/0-lc$^13/1-11-'/23
  {label,220}.
    {move,{x,19},{x,0}}.
    {call_only,19,{f,216}}. % '-deeply_nested_1/0-lc$^11/1-9-'/19


{function, '-deeply_nested_1/0-lc$^13/1-11-', 23, 222}.
  {label,221}.
    {line,[{location,"lc_SUITE.erl",164}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^13/1-11-'},23}.
  {label,222}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,8}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {'%',{var_info,{x,19},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,20},[{type,{t_integer,{10,10}}}]}}.
    {'%',{var_info,{x,21},[{type,{t_list,{t_integer,{9,9}},nil}}]}}.
    {'%',{var_info,{x,22},[{type,{t_integer,{9,9}}}]}}.
    {test,is_nonempty_list,{f,223},[{x,0}]}.
    {get_tl,{x,0},{x,23}}.
    {move,{integer,8},{x,24}}.
    {move,{literal,[7]},{x,0}}.
    {call_only,25,{f,225}}. % '-deeply_nested_1/0-lc$^14/1-12-'/25
  {label,223}.
    {move,{x,21},{x,0}}.
    {call_only,21,{f,219}}. % '-deeply_nested_1/0-lc$^12/1-10-'/21


{function, '-deeply_nested_1/0-lc$^14/1-12-', 25, 225}.
  {label,224}.
    {line,[{location,"lc_SUITE.erl",164}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^14/1-12-'},25}.
  {label,225}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{7,7}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {'%',{var_info,{x,19},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,20},[{type,{t_integer,{10,10}}}]}}.
    {'%',{var_info,{x,21},[{type,{t_list,{t_integer,{9,9}},nil}}]}}.
    {'%',{var_info,{x,22},[{type,{t_integer,{9,9}}}]}}.
    {'%',{var_info,{x,23},[{type,{t_list,{t_integer,{8,8}},nil}}]}}.
    {'%',{var_info,{x,24},[{type,{t_integer,{8,8}}}]}}.
    {test,is_nonempty_list,{f,226},[{x,0}]}.
    {get_tl,{x,0},{x,25}}.
    {move,{integer,7},{x,26}}.
    {move,{literal,[6]},{x,0}}.
    {call_only,27,{f,228}}. % '-deeply_nested_1/0-lc$^15/1-13-'/27
  {label,226}.
    {move,{x,23},{x,0}}.
    {call_only,23,{f,222}}. % '-deeply_nested_1/0-lc$^13/1-11-'/23


{function, '-deeply_nested_1/0-lc$^15/1-13-', 27, 228}.
  {label,227}.
    {line,[{location,"lc_SUITE.erl",164}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^15/1-13-'},27}.
  {label,228}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{6,6}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {'%',{var_info,{x,19},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,20},[{type,{t_integer,{10,10}}}]}}.
    {'%',{var_info,{x,21},[{type,{t_list,{t_integer,{9,9}},nil}}]}}.
    {'%',{var_info,{x,22},[{type,{t_integer,{9,9}}}]}}.
    {'%',{var_info,{x,23},[{type,{t_list,{t_integer,{8,8}},nil}}]}}.
    {'%',{var_info,{x,24},[{type,{t_integer,{8,8}}}]}}.
    {'%',{var_info,{x,25},[{type,{t_list,{t_integer,{7,7}},nil}}]}}.
    {'%',{var_info,{x,26},[{type,{t_integer,{7,7}}}]}}.
    {test,is_nonempty_list,{f,229},[{x,0}]}.
    {get_tl,{x,0},{x,27}}.
    {move,{integer,6},{x,28}}.
    {move,{literal,[5]},{x,0}}.
    {call_only,29,{f,231}}. % '-deeply_nested_1/0-lc$^16/1-14-'/29
  {label,229}.
    {move,{x,25},{x,0}}.
    {call_only,25,{f,225}}. % '-deeply_nested_1/0-lc$^14/1-12-'/25


{function, '-deeply_nested_1/0-lc$^16/1-14-', 29, 231}.
  {label,230}.
    {line,[{location,"lc_SUITE.erl",164}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^16/1-14-'},29}.
  {label,231}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{5,5}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {'%',{var_info,{x,19},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,20},[{type,{t_integer,{10,10}}}]}}.
    {'%',{var_info,{x,21},[{type,{t_list,{t_integer,{9,9}},nil}}]}}.
    {'%',{var_info,{x,22},[{type,{t_integer,{9,9}}}]}}.
    {'%',{var_info,{x,23},[{type,{t_list,{t_integer,{8,8}},nil}}]}}.
    {'%',{var_info,{x,24},[{type,{t_integer,{8,8}}}]}}.
    {'%',{var_info,{x,25},[{type,{t_list,{t_integer,{7,7}},nil}}]}}.
    {'%',{var_info,{x,26},[{type,{t_integer,{7,7}}}]}}.
    {'%',{var_info,{x,27},[{type,{t_list,{t_integer,{6,6}},nil}}]}}.
    {'%',{var_info,{x,28},[{type,{t_integer,{6,6}}}]}}.
    {test,is_nonempty_list,{f,232},[{x,0}]}.
    {get_tl,{x,0},{x,29}}.
    {move,{integer,5},{x,30}}.
    {move,{literal,[4]},{x,0}}.
    {call_only,31,{f,234}}. % '-deeply_nested_1/0-lc$^17/1-15-'/31
  {label,232}.
    {move,{x,27},{x,0}}.
    {call_only,27,{f,228}}. % '-deeply_nested_1/0-lc$^15/1-13-'/27


{function, '-deeply_nested_1/0-lc$^17/1-15-', 31, 234}.
  {label,233}.
    {line,[{location,"lc_SUITE.erl",165}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^17/1-15-'},31}.
  {label,234}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{4,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {'%',{var_info,{x,19},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,20},[{type,{t_integer,{10,10}}}]}}.
    {'%',{var_info,{x,21},[{type,{t_list,{t_integer,{9,9}},nil}}]}}.
    {'%',{var_info,{x,22},[{type,{t_integer,{9,9}}}]}}.
    {'%',{var_info,{x,23},[{type,{t_list,{t_integer,{8,8}},nil}}]}}.
    {'%',{var_info,{x,24},[{type,{t_integer,{8,8}}}]}}.
    {'%',{var_info,{x,25},[{type,{t_list,{t_integer,{7,7}},nil}}]}}.
    {'%',{var_info,{x,26},[{type,{t_integer,{7,7}}}]}}.
    {'%',{var_info,{x,27},[{type,{t_list,{t_integer,{6,6}},nil}}]}}.
    {'%',{var_info,{x,28},[{type,{t_integer,{6,6}}}]}}.
    {'%',{var_info,{x,29},[{type,{t_list,{t_integer,{5,5}},nil}}]}}.
    {'%',{var_info,{x,30},[{type,{t_integer,{5,5}}}]}}.
    {test,is_nonempty_list,{f,235},[{x,0}]}.
    {get_tl,{x,0},{x,31}}.
    {move,{integer,4},{x,32}}.
    {move,{literal,[3]},{x,0}}.
    {call_only,33,{f,237}}. % '-deeply_nested_1/0-lc$^18/1-16-'/33
  {label,235}.
    {move,{x,29},{x,0}}.
    {call_only,29,{f,231}}. % '-deeply_nested_1/0-lc$^16/1-14-'/29


{function, '-deeply_nested_1/0-lc$^18/1-16-', 33, 237}.
  {label,236}.
    {line,[{location,"lc_SUITE.erl",165}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^18/1-16-'},33}.
  {label,237}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{3,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {'%',{var_info,{x,19},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,20},[{type,{t_integer,{10,10}}}]}}.
    {'%',{var_info,{x,21},[{type,{t_list,{t_integer,{9,9}},nil}}]}}.
    {'%',{var_info,{x,22},[{type,{t_integer,{9,9}}}]}}.
    {'%',{var_info,{x,23},[{type,{t_list,{t_integer,{8,8}},nil}}]}}.
    {'%',{var_info,{x,24},[{type,{t_integer,{8,8}}}]}}.
    {'%',{var_info,{x,25},[{type,{t_list,{t_integer,{7,7}},nil}}]}}.
    {'%',{var_info,{x,26},[{type,{t_integer,{7,7}}}]}}.
    {'%',{var_info,{x,27},[{type,{t_list,{t_integer,{6,6}},nil}}]}}.
    {'%',{var_info,{x,28},[{type,{t_integer,{6,6}}}]}}.
    {'%',{var_info,{x,29},[{type,{t_list,{t_integer,{5,5}},nil}}]}}.
    {'%',{var_info,{x,30},[{type,{t_integer,{5,5}}}]}}.
    {'%',{var_info,{x,31},[{type,{t_list,{t_integer,{4,4}},nil}}]}}.
    {'%',{var_info,{x,32},[{type,{t_integer,{4,4}}}]}}.
    {test,is_nonempty_list,{f,238},[{x,0}]}.
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},33}.
    {get_tl,{x,0},{x,33}}.
    {make_fun3,{f,240},0,0,{x,0},{list,[{integer,4},{integer,3}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{7,7}}}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{integer,3},{x,34}}.
    {call_only,35,{f,242}}. % '-deeply_nested_1/0-lc$^19/1-17-'/35
  {label,238}.
    {move,{x,31},{x,0}}.
    {call_only,31,{f,234}}. % '-deeply_nested_1/0-lc$^17/1-15-'/31


{function, '-deeply_nested_1/0-fun-1-', 2, 240}.
  {label,239}.
    {line,[{location,"lc_SUITE.erl",165}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-fun-1-'},2}.
  {label,240}.
    {'%',{var_info,{x,0},[{type,{t_integer,{4,4}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{3,3}}}]}}.
    {move,{integer,7},{x,0}}.
    return.


{function, '-deeply_nested_1/0-lc$^19/1-17-', 35, 242}.
  {label,241}.
    {line,[{location,"lc_SUITE.erl",165}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^19/1-17-'},35}.
  {label,242}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-1-',2},
                         {t_integer,{7,7}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {'%',{var_info,{x,19},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,20},[{type,{t_integer,{10,10}}}]}}.
    {'%',{var_info,{x,21},[{type,{t_list,{t_integer,{9,9}},nil}}]}}.
    {'%',{var_info,{x,22},[{type,{t_integer,{9,9}}}]}}.
    {'%',{var_info,{x,23},[{type,{t_list,{t_integer,{8,8}},nil}}]}}.
    {'%',{var_info,{x,24},[{type,{t_integer,{8,8}}}]}}.
    {'%',{var_info,{x,25},[{type,{t_list,{t_integer,{7,7}},nil}}]}}.
    {'%',{var_info,{x,26},[{type,{t_integer,{7,7}}}]}}.
    {'%',{var_info,{x,27},[{type,{t_list,{t_integer,{6,6}},nil}}]}}.
    {'%',{var_info,{x,28},[{type,{t_integer,{6,6}}}]}}.
    {'%',{var_info,{x,29},[{type,{t_list,{t_integer,{5,5}},nil}}]}}.
    {'%',{var_info,{x,30},[{type,{t_integer,{5,5}}}]}}.
    {'%',{var_info,{x,31},[{type,{t_list,{t_integer,{4,4}},nil}}]}}.
    {'%',{var_info,{x,32},[{type,{t_integer,{4,4}}}]}}.
    {'%',{var_info,{x,33},[{type,{t_list,{t_integer,{3,3}},nil}}]}}.
    {'%',{var_info,{x,34},[{type,{t_integer,{3,3}}}]}}.
    {test,is_nonempty_list,{f,243},[{x,0}]}.
    {get_list,{x,0},{x,36},{x,35}}.
    {move,{literal,[2]},{x,0}}.
    {call_only,37,{f,245}}. % '-deeply_nested_1/0-lc$^20/1-18-'/37
  {label,243}.
    {move,{x,33},{x,0}}.
    {call_only,33,{f,237}}. % '-deeply_nested_1/0-lc$^18/1-16-'/33


{function, '-deeply_nested_1/0-lc$^20/1-18-', 37, 245}.
  {label,244}.
    {line,[{location,"lc_SUITE.erl",165}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^20/1-18-'},37}.
  {label,245}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {'%',{var_info,{x,19},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,20},[{type,{t_integer,{10,10}}}]}}.
    {'%',{var_info,{x,21},[{type,{t_list,{t_integer,{9,9}},nil}}]}}.
    {'%',{var_info,{x,22},[{type,{t_integer,{9,9}}}]}}.
    {'%',{var_info,{x,23},[{type,{t_list,{t_integer,{8,8}},nil}}]}}.
    {'%',{var_info,{x,24},[{type,{t_integer,{8,8}}}]}}.
    {'%',{var_info,{x,25},[{type,{t_list,{t_integer,{7,7}},nil}}]}}.
    {'%',{var_info,{x,26},[{type,{t_integer,{7,7}}}]}}.
    {'%',{var_info,{x,27},[{type,{t_list,{t_integer,{6,6}},nil}}]}}.
    {'%',{var_info,{x,28},[{type,{t_integer,{6,6}}}]}}.
    {'%',{var_info,{x,29},[{type,{t_list,{t_integer,{5,5}},nil}}]}}.
    {'%',{var_info,{x,30},[{type,{t_integer,{5,5}}}]}}.
    {'%',{var_info,{x,31},[{type,{t_list,{t_integer,{4,4}},nil}}]}}.
    {'%',{var_info,{x,32},[{type,{t_integer,{4,4}}}]}}.
    {'%',{var_info,{x,33},[{type,{t_list,{t_integer,{3,3}},nil}}]}}.
    {'%',{var_info,{x,34},[{type,{t_integer,{3,3}}}]}}.
    {'%',
        {var_info,
            {x,35},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-1-',2},
                         {t_integer,{7,7}}},
                     nil}}]}}.
    {'%',{var_info,{x,36},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-1-',2},
                                 {t_integer,{7,7}}}}]}}.
    {test,is_nonempty_list,{f,246},[{x,0}]}.
    {get_tl,{x,0},{x,37}}.
    {move,{integer,2},{x,38}}.
    {move,{literal,[1]},{x,0}}.
    {call_only,39,{f,248}}. % '-deeply_nested_1/0-lc$^21/1-19-'/39
  {label,246}.
    {move,{x,35},{x,0}}.
    {call_only,35,{f,242}}. % '-deeply_nested_1/0-lc$^19/1-17-'/35


{function, '-deeply_nested_1/0-lc$^21/1-19-', 39, 248}.
  {label,247}.
    {line,[{location,"lc_SUITE.erl",165}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^21/1-19-'},39}.
  {label,248}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {'%',{var_info,{x,9},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,10},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,11},[{type,{t_list,{t_integer,{17,17}},nil}}]}}.
    {'%',{var_info,{x,12},[{type,{t_integer,{17,17}}}]}}.
    {'%',
        {var_info,
            {x,13},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-0-',1},
                         {t_integer,{1764,1764}}},
                     nil}}]}}.
    {'%',{var_info,{x,14},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-0-',1},
                                 {t_integer,{1764,1764}}}}]}}.
    {'%',{var_info,{x,15},[{type,{t_list,{t_integer,{12,12}},nil}}]}}.
    {'%',{var_info,{x,16},[{type,{t_integer,{12,12}}}]}}.
    {'%',{var_info,{x,17},[{type,{t_list,{t_integer,{11,11}},nil}}]}}.
    {'%',{var_info,{x,18},[{type,{t_integer,{11,11}}}]}}.
    {'%',{var_info,{x,19},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,20},[{type,{t_integer,{10,10}}}]}}.
    {'%',{var_info,{x,21},[{type,{t_list,{t_integer,{9,9}},nil}}]}}.
    {'%',{var_info,{x,22},[{type,{t_integer,{9,9}}}]}}.
    {'%',{var_info,{x,23},[{type,{t_list,{t_integer,{8,8}},nil}}]}}.
    {'%',{var_info,{x,24},[{type,{t_integer,{8,8}}}]}}.
    {'%',{var_info,{x,25},[{type,{t_list,{t_integer,{7,7}},nil}}]}}.
    {'%',{var_info,{x,26},[{type,{t_integer,{7,7}}}]}}.
    {'%',{var_info,{x,27},[{type,{t_list,{t_integer,{6,6}},nil}}]}}.
    {'%',{var_info,{x,28},[{type,{t_integer,{6,6}}}]}}.
    {'%',{var_info,{x,29},[{type,{t_list,{t_integer,{5,5}},nil}}]}}.
    {'%',{var_info,{x,30},[{type,{t_integer,{5,5}}}]}}.
    {'%',{var_info,{x,31},[{type,{t_list,{t_integer,{4,4}},nil}}]}}.
    {'%',{var_info,{x,32},[{type,{t_integer,{4,4}}}]}}.
    {'%',{var_info,{x,33},[{type,{t_list,{t_integer,{3,3}},nil}}]}}.
    {'%',{var_info,{x,34},[{type,{t_integer,{3,3}}}]}}.
    {'%',
        {var_info,
            {x,35},
            [{type,
                 {t_list,
                     {t_fun,0,
                         {'-deeply_nested_1/0-fun-1-',2},
                         {t_integer,{7,7}}},
                     nil}}]}}.
    {'%',{var_info,{x,36},
                   [{type,{t_fun,0,
                                 {'-deeply_nested_1/0-fun-1-',2},
                                 {t_integer,{7,7}}}}]}}.
    {'%',{var_info,{x,37},[{type,{t_list,{t_integer,{2,2}},nil}}]}}.
    {'%',{var_info,{x,38},[{type,{t_integer,{2,2}}}]}}.
    {test,is_nonempty_list,{f,249},[{x,0}]}.
    {allocate,22,38}.
    {move,{x,37},{y,1}}.
    {move,{x,36},{y,2}}.
    {move,{x,35},{y,3}}.
    {move,{x,33},{y,4}}.
    {move,{x,31},{y,5}}.
    {move,{x,29},{y,6}}.
    {move,{x,27},{y,7}}.
    {move,{x,25},{y,8}}.
    {move,{x,23},{y,9}}.
    {move,{x,21},{y,10}}.
    {move,{x,19},{y,11}}.
    {move,{x,17},{y,12}}.
    {move,{x,15},{y,13}}.
    {move,{x,14},{y,14}}.
    {move,{x,13},{y,15}}.
    {move,{x,11},{y,16}}.
    {move,{x,9},{y,17}}.
    {move,{x,7},{y,18}}.
    {move,{x,5},{y,19}}.
    {move,{x,3},{y,20}}.
    {move,{x,1},{y,21}}.
    {get_tl,{x,0},{y,0}}.
    {move,{x,14},{x,0}}.
    {line,[{location,"lc_SUITE.erl",161}]}.
    {call_fun2,{f,205},
               0,
               {tr,{x,0},
                   {t_fun,0,
                          {'-deeply_nested_1/0-fun-0-',1},
                          {t_integer,{1764,1764}}}}}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1764,1764}}}]}}.
    {move,{y,2},{x,0}}.
    {call_fun2,{f,240},
               0,
               {tr,{x,0},
                   {t_fun,0,
                          {'-deeply_nested_1/0-fun-1-',2},
                          {t_integer,{7,7}}}}}.
    {'%',{var_info,{x,0},[{type,{t_integer,{7,7}}}]}}.
    {move,{y,11},{x,19}}.
    {move,{integer,10},{x,20}}.
    {move,{integer,11},{x,18}}.
    {move,{y,10},{x,21}}.
    {move,{y,12},{x,17}}.
    {move,{integer,9},{x,22}}.
    {move,{integer,12},{x,16}}.
    {move,{y,9},{x,23}}.
    {move,{y,13},{x,15}}.
    {move,{integer,8},{x,24}}.
    {move,{y,8},{x,25}}.
    {move,{y,14},{x,14}}.
    {move,{y,15},{x,13}}.
    {move,{integer,7},{x,26}}.
    {move,{integer,17},{x,12}}.
    {move,{y,7},{x,27}}.
    {move,{y,16},{x,11}}.
    {move,{integer,6},{x,28}}.
    {move,{integer,42},{x,10}}.
    {move,{y,6},{x,29}}.
    {move,{y,17},{x,9}}.
    {move,{integer,5},{x,30}}.
    {move,{integer,96},{x,8}}.
    {move,{y,5},{x,31}}.
    {move,{y,18},{x,7}}.
    {move,{integer,4},{x,32}}.
    {move,{integer,97},{x,6}}.
    {move,{y,4},{x,33}}.
    {move,{y,19},{x,5}}.
    {move,{integer,3},{x,34}}.
    {move,{integer,98},{x,4}}.
    {move,{y,2},{x,36}}.
    {move,{y,3},{x,35}}.
    {move,{y,20},{x,3}}.
    {move,{integer,99},{x,2}}.
    {move,{y,1},{x,37}}.
    {move,{y,21},{x,1}}.
    {move,{integer,2},{x,38}}.
    {move,{y,0},{x,0}}.
    {trim,22,0}.
    {line,[{location,"lc_SUITE.erl",165}]}.
    {call,39,{f,248}}. % '-deeply_nested_1/0-lc$^21/1-19-'/39
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{1,1764}},nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,[99,98,97,96,42,17,1764,12,11,10,9,8,7,6,5,4,3,7,2,1]},
              {x,0},
              {x,0}}.
    {deallocate,0}.
    return.
  {label,249}.
    {move,{x,37},{x,0}}.
    {call_only,37,{f,245}}. % '-deeply_nested_1/0-lc$^20/1-18-'/37


{function, '-alphanum/1-lc$^0/1-0-', 1, 251}.
  {label,250}.
    {line,[{location,"lc_SUITE.erl",151}]}.
    {func_info,{atom,lc_SUITE},{atom,'-alphanum/1-lc$^0/1-0-'},1}.
  {label,251}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,99}},nil}}]}}.
    {test,is_nonempty_list,{f,254},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_ge,{f,253},[{tr,{x,1},{t_integer,{46,99}}},{integer,48}]}.
    {test,is_ge,{f,252},[{tr,{x,1},{t_integer,{48,99}}},{integer,58}]}.
    {test,is_ge,{f,252},[{integer,96},{tr,{x,1},{t_integer,{58,99}}}]}.
    {test,is_ge,{f,253},[{tr,{x,1},{t_integer,{58,96}}},{integer,65}]}.
    {test,is_ge,{f,253},[{integer,90},{tr,{x,1},{t_integer,{65,96}}}]}.
  {label,252}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,251}}. % '-alphanum/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,99}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,253}.
    {call_only,1,{f,251}}. % '-alphanum/1-lc$^0/1-0-'/1
  {label,254}.
    return.


{function, '-my_map/2-lc$^0/1-0-', 2, 256}.
  {label,255}.
    {line,[{location,"lc_SUITE.erl",145}]}.
    {func_info,{atom,lc_SUITE},{atom,'-my_map/2-lc$^0/1-0-'},2}.
  {label,256}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,any}}]}}.
    {test,is_nonempty_list,{f,257},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,any}}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,256}}. % '-my_map/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,257}.
    {test,is_nil,{f,258},[{x,0}]}.
    return.
  {label,258}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^24/1-23-', 1, 260}.
  {label,259}.
    {line,[{location,"lc_SUITE.erl",110}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^24/1-23-'},1}.
  {label,260}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {allocate,0,0}.
    {move,{atom,not_bool},{x,0}}.
    {call,1,{f,116}}. % id/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.


{function, '-basic/1-lc$^23/1-22-', 1, 262}.
  {label,261}.
    {line,[{location,"lc_SUITE.erl",109}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^23/1-22-'},1}.
  {label,262}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[d,nomatch,not_bool,x]},
         {t_list,
          {t_union,
           {t_atom,[a,b,c,x]},
           none,
           {t_number,{'-inf',10}},
           {t_tuple,2,true,#{1 => {t_number,any},2 => {t_number,any}}},
           {t_map,
            {t_bitstring,1,false},
            {t_union,none,none,
             {t_integer,{42,42}},
             [{{3,{t_atom,[a]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
             none}}},
          {t_union,{t_atom,[d]},nil,none,none,none}},
         none,none,none}}]}}.
    {test,is_nonempty_list,{f,263},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,262}}. % '-basic/1-lc$^23/1-22-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[a,b,c,x]},
                         none,
                         {t_number,{'-inf',10}},
                         {t_tuple,2,true,
                             #{1 => {t_number,any},2 => {t_number,any}}},
                         {t_map,
                             {t_bitstring,1,false},
                             {t_union,none,none,
                                 {t_integer,{42,42}},
                                 [{{3,{t_atom,[a]}},
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[a]},
                                         2 => {t_atom,[b]},
                                         3 => {t_atom,[c]}}}}],
                                 none}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,263}.
    {test,is_nil,
          {f,264},
          [{tr,{x,0},
               {t_union,{t_atom,[d,nomatch,not_bool,x]},nil,none,none,none}}]}.
    return.
  {label,264}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^22/1-21-', 1, 266}.
  {label,265}.
    {line,[{location,"lc_SUITE.erl",108}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^22/1-21-'},1}.
  {label,266}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,267},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {call_only,1,{f,56}}. % odd/1
  {label,267}.
    return.


{function, '-basic/1-lc$^21/1-20-', 1, 269}.
  {label,268}.
    {line,[{location,"lc_SUITE.erl",107}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^21/1-20-'},1}.
  {label,269}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,270},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,269}}. % '-basic/1-lc$^21/1-20-'/1
  {label,270}.
    return.


{function, '-basic/1-lc$^20/1-19-', 1, 272}.
  {label,271}.
    {line,[{location,"lc_SUITE.erl",106}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^20/1-19-'},1}.
  {label,272}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,273},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,list_to_atom,1}}.
  {label,273}.
    return.


{function, '-basic/1-lc$^19/1-18-', 1, 275}.
  {label,274}.
    {line,[{location,"lc_SUITE.erl",105}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^19/1-18-'},1}.
  {label,275}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,277},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bif,element,{f,276},[{integer,2},{x,1}],{x,2}}.
    {test,is_eq_exact,{f,276},[{x,2},{atom,no_no_no}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,275}}. % '-basic/1-lc$^19/1-18-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[xx]},2 => {t_tuple,2,false,#{}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,xx},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,276}.
    {call_only,1,{f,275}}. % '-basic/1-lc$^19/1-18-'/1
  {label,277}.
    return.


{function, '-basic/1-lc$^18/1-17-', 1, 279}.
  {label,278}.
    {line,[{location,"lc_SUITE.erl",102}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^18/1-17-'},1}.
  {label,279}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-lc$^17/1-16-', 1, 281}.
  {label,280}.
    {line,[{location,"lc_SUITE.erl",99}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^17/1-16-'},1}.
  {label,281}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,1,true,#{1 => {t_atom,[a]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,282},[{x,0}]}.
    {allocate,0,1}.
    {get_tl,{x,0},{x,0}}.
    {call,1,{f,281}}. % '-basic/1-lc$^17/1-16-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[a]}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{a,a}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,282}.
    return.


{function, '-basic/1-lc$^16/1-15-', 1, 284}.
  {label,283}.
    {line,[{location,"lc_SUITE.erl",98}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^16/1-15-'},1}.
  {label,284}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-lc$^15/1-14-', 1, 286}.
  {label,285}.
    {line,[{location,"lc_SUITE.erl",95}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^15/1-14-'},1}.
  {label,286}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{97,98}},nil},nil}}]}}.
    {test,is_nonempty_list,{f,288},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,
          {f,287},
          [{tr,{x,1},{t_cons,{t_integer,{97,98}},nil}},{literal,"ab"}]}.
    {allocate,0,1}.
    {call,1,{f,286}}. % '-basic/1-lc$^15/1-14-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[t]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,t},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,287}.
    {call_only,1,{f,286}}. % '-basic/1-lc$^15/1-14-'/1
  {label,288}.
    return.


{function, '-basic/1-lc$^14/1-13-', 1, 290}.
  {label,289}.
    {line,[{location,"lc_SUITE.erl",94}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^14/1-13-'},1}.
  {label,290}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-lc$^13/1-12-', 1, 292}.
  {label,291}.
    {line,[{location,"lc_SUITE.erl",93}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^13/1-12-'},1}.
  {label,292}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-lc$^12/1-11-', 1, 294}.
  {label,293}.
    {line,[{location,"lc_SUITE.erl",87}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^12/1-11-'},1}.
  {label,294}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[glurf]},
                         {t_cons,{t_atom,[a,b,c]},nil},
                         none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                          {{3,{t_atom,[a]}},
                           {t_tuple,3,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[true]}}}},
                          {{4,{t_atom,[a]}},
                           {t_tuple,4,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[d,false]},
                                 4 => {t_atom,[ddd,xx]}}}},
                          {{4,{t_atom,[x]}},
                           {t_tuple,4,true,
                               #{1 => {t_atom,[x]},
                                 2 => {t_atom,[y]},
                                 3 => {t_atom,[true]},
                                 4 => {t_atom,[true]}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,296},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bif,element,
         {f,295},
         [{integer,3},
          {tr,{x,1},
              {t_union,{t_atom,[glurf]},
                       {t_cons,{t_atom,[a,b,c]},nil},
                       none,
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}},
                        {{3,{t_atom,[a]}},
                         {t_tuple,3,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_atom,[b]},
                                    3 => {t_atom,[true]}}}},
                        {{4,{t_atom,[a]}},
                         {t_tuple,4,true,
                                  #{1 => {t_atom,[a]},
                                    2 => {t_atom,[b]},
                                    3 => {t_atom,[d,false]},
                                    4 => {t_atom,[ddd,xx]}}}},
                        {{4,{t_atom,[x]}},
                         {t_tuple,4,true,
                                  #{1 => {t_atom,[x]},
                                    2 => {t_atom,[y]},
                                    3 => {t_atom,[true]},
                                    4 => {t_atom,[true]}}}}],
                       none}}],
         {x,2}}.
    {test,is_eq_exact,
          {f,295},
          [{tr,{x,2},{t_atom,[d,false,true]}},{atom,true}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,294}}. % '-basic/1-lc$^12/1-11-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{3,{t_atom,[a]}},
                           {t_tuple,3,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[true]}}}},
                          {{4,{t_atom,[a]}},
                           {t_tuple,4,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[d,false]},
                                 4 => {t_atom,[ddd,xx]}}}},
                          {{4,{t_atom,[x]}},
                           {t_tuple,4,true,
                               #{1 => {t_atom,[x]},
                                 2 => {t_atom,[y]},
                                 3 => {t_atom,[true]},
                                 4 => {t_atom,[true]}}}}],
                         none},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,295}.
    {call_only,1,{f,294}}. % '-basic/1-lc$^12/1-11-'/1
  {label,296}.
    return.


{function, '-basic/1-lc$^11/1-10-', 2, 298}.
  {label,297}.
    {line,[{location,"lc_SUITE.erl",83}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^11/1-10-'},2}.
  {label,298}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,300},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,56}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,299},[{x,0},{atom,true}]}.
    {test,is_ne_exact,{f,299},[{y,1},{integer,7}]}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {call,2,{f,298}}. % '-basic/1-lc$^11/1-10-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,299}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,298},3}. % '-basic/1-lc$^11/1-10-'/2
  {label,300}.
    {move,{x,1},{x,0}}.
    return.


{function, '-basic/1-lc$^10/1-9-', 1, 302}.
  {label,301}.
    {line,[{location,"lc_SUITE.erl",84}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^10/1-9-'},1}.
  {label,302}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,305},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,56}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ne_exact,{f,303},[{x,0},{atom,true}]}.
    {test,is_eq_exact,{f,304},[{y,1},{integer,6}]}.
  {label,303}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,302},2}. % '-basic/1-lc$^10/1-9-'/1
  {label,304}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,302}}. % '-basic/1-lc$^10/1-9-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,305}.
    return.


{function, '-basic/1-lc$^9/1-8-', 1, 307}.
  {label,306}.
    {line,[{location,"lc_SUITE.erl",80}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^9/1-8-'},1}.
  {label,307}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,310},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,56}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ne_exact,{f,308},[{x,0},{atom,true}]}.
    {test,is_eq_exact,{f,309},[{y,1},{integer,6}]}.
  {label,308}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,307},2}. % '-basic/1-lc$^9/1-8-'/1
  {label,309}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,307}}. % '-basic/1-lc$^9/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,310}.
    return.


{function, '-basic/1-lc$^8/1-7-', 1, 312}.
  {label,311}.
    {line,[{location,"lc_SUITE.erl",79}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^8/1-7-'},1}.
  {label,312}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,314},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,56}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,313},[{x,0},{atom,true}]}.
    {test,is_ne_exact,{f,313},[{y,1},{integer,7}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,312}}. % '-basic/1-lc$^8/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,313}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,312},2}. % '-basic/1-lc$^8/1-7-'/1
  {label,314}.
    return.


{function, '-basic/1-lc$^7/1-6-', 1, 316}.
  {label,315}.
    {line,[{location,"lc_SUITE.erl",78}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^7/1-6-'},1}.
  {label,316}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,318},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,56}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,317},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,316},2}. % '-basic/1-lc$^7/1-6-'/1
  {label,317}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,316}}. % '-basic/1-lc$^7/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,318}.
    return.


{function, '-basic/1-lc$^6/1-5-', 1, 320}.
  {label,319}.
    {line,[{location,"lc_SUITE.erl",77}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^6/1-5-'},1}.
  {label,320}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,322},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,56}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,321},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,320}}. % '-basic/1-lc$^6/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,321}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,320},2}. % '-basic/1-lc$^6/1-5-'/1
  {label,322}.
    return.


{function, '-basic/1-lc$^5/1-4-', 1, 324}.
  {label,323}.
    {line,[{location,"lc_SUITE.erl",76}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^5/1-4-'},1}.
  {label,324}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,325},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,324}}. % '-basic/1-lc$^5/1-4-'/1
  {label,325}.
    return.


{function, '-basic/1-lc$^4/1-3-', 1, 327}.
  {label,326}.
    {line,[{location,"lc_SUITE.erl",75}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^4/1-3-'},1}.
  {label,327}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,329},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_lt,{f,328},[{integer,3},{x,1}]}.
    {test,is_lt,
          {f,328},
          [{tr,{x,1},
               {t_union,{t_atom,any},
                        {t_list,any,any},
                        {t_number,{3,'+inf'}},
                        {t_tuple,0,false,#{}},
                        other}},
           {integer,7}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,327}}. % '-basic/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{3,7}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,328}.
    {call_only,1,{f,327}}. % '-basic/1-lc$^4/1-3-'/1
  {label,329}.
    return.


{function, '-basic/1-lc$^3/1-2-', 1, 331}.
  {label,330}.
    {line,[{location,"lc_SUITE.erl",74}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^3/1-2-'},1}.
  {label,331}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,333},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_lt,{f,332},[{x,1},{integer,6}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,331}}. % '-basic/1-lc$^3/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',6}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,332}.
    {call_only,1,{f,331}}. % '-basic/1-lc$^3/1-2-'/1
  {label,333}.
    return.


{function, '-basic/1-fun-2-', 1, 335}.
  {label,334}.
    {line,[{location,"lc_SUITE.erl",73}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-fun-2-'},1}.
  {label,335}.
    {test,is_tagged_tuple,{f,334},[{x,0},2,{atom,x}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    return.


{function, '-basic/1-lc$^1/1-0-', 1, 337}.
  {label,336}.
    {line,[{location,"lc_SUITE.erl",72}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^1/1-0-'},1}.
  {label,337}.
    {test,is_nonempty_list,{f,338},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,337}}. % '-basic/1-lc$^1/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,x},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,338}.
    {test,is_nil,{f,339},[{x,0}]}.
    return.
  {label,339}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-fun-0-', 1, 341}.
  {label,340}.
    {line,[{location,"lc_SUITE.erl",71}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-fun-0-'},1}.
  {label,341}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,0}]}}.
    return.
