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

{labels, 396}.


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
                       {y,9},
                       {y,10}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"lc_SUITE.erl",70}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,395},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_tuple,2,true,#{1 => {t_atom,[x]}}}}]}}.
    {move,{x,0},{y,10}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"lc_SUITE.erl",71}]}.
    {call,2,{f,69}}. % my_map/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,8}}.
    {move,{y,10},{x,0}}.
    {line,[{location,"lc_SUITE.erl",72}]}.
    {call,1,{f,391}}. % '-basic/1-lc$^1/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},
                                  nil}}]}}.
    {test,is_eq_exact,
          {f,65},
          [{tr,{x,0},{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},nil}},
           {tr,{y,8},{t_list,any,nil}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,389},0,0,{x,0},{list,[]}}.
    {move,{y,8},{x,1}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",73}]}.
    {call,2,{f,69}}. % my_map/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,{f,64},[{tr,{x,0},{t_list,any,nil}},{y,10}]}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",74}]}.
    {call,1,{f,385}}. % '-basic/1-lc$^3/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',6}},nil}}]}}.
    {test,is_eq_exact,
          {f,63},
          [{tr,{x,0},{t_list,{t_number,{'-inf',6}},nil}},
           {literal,[1,2,3,4,5]}]}.
    {move,{y,10},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",75}]}.
    {call,1,{f,381}}. % '-basic/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{3,7}},nil}}]}}.
    {test,is_eq_exact,
          {f,62},
          [{tr,{x,0},{t_list,{t_number,{3,7}},nil}},{literal,[4,5,6]}]}.
    {move,{y,10},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",76}]}.
    {call,1,{f,378}}. % '-basic/1-lc$^5/1-4-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,10},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",77}]}.
    {call,1,{f,374}}. % '-basic/1-lc$^6/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,61},
          [{tr,{x,0},{t_list,any,nil}},{literal,[1,3,5,7,9]}]}.
    {move,{y,10},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",78}]}.
    {call,1,{f,370}}. % '-basic/1-lc$^7/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,60},
          [{tr,{x,0},{t_list,any,nil}},{literal,[2,4,6,8,10]}]}.
    {move,{y,10},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",79}]}.
    {call,1,{f,366}}. % '-basic/1-lc$^8/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,59},
          [{tr,{x,0},{t_list,any,nil}},{literal,[1,3,5,9]}]}.
    {move,{y,10},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",80}]}.
    {call,1,{f,361}}. % '-basic/1-lc$^9/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,58},
          [{tr,{x,0},{t_list,any,nil}},{literal,[2,4,8,10]}]}.
    {move,{y,10},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",84}]}.
    {call,1,{f,356}}. % '-basic/1-lc$^10/1-9-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,10},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",83}]}.
    {call,2,{f,352}}. % '-basic/1-lc$^11/1-10-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,57},
          [{tr,{x,0},{t_list,any,nil}},{literal,[1,3,5,9,2,4,8,10]}]}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",87}]}.
    {call,0,{f,67}}. % tuple_list/0
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
    {call,1,{f,348}}. % '-basic/1-lc$^12/1-11-'/1
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
        {f,56},
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
    {line,[{scope,[22]},{location,"lc_SUITE.erl",90}]}.
    {call,1,{f,73}}. % alphanum/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,99}},nil}}]}}.
    {test,is_eq_exact,
          {f,55},
          [{tr,{x,0},{t_list,{t_integer,{46,99}},nil}},{literal,"abc123"}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",93}]}.
    {call,1,{f,346}}. % '-basic/1-lc$^13/1-12-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",94}]}.
    {call,1,{f,344}}. % '-basic/1-lc$^14/1-13-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,["ab"]},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",95}]}.
    {call,1,{f,340}}. % '-basic/1-lc$^15/1-14-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[t]},nil}}]}}.
    {test,is_eq_exact,
          {f,54},
          [{tr,{x,0},{t_list,{t_atom,[t]},nil}},{literal,[t]}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",98}]}.
    {call,1,{f,338}}. % '-basic/1-lc$^16/1-15-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[{a}]},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",99}]}.
    {call,1,{f,335}}. % '-basic/1-lc$^17/1-16-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[a]}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,53},
          [{tr,{x,0},
               {t_cons,{t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[a]}}},
                       nil}},
           {literal,[{a,a}]}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",102}]}.
    {call,1,{f,333}}. % '-basic/1-lc$^18/1-17-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",105}]}.
    {call,1,{f,330}}. % '-basic/1-lc$^19/1-18-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{2,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,52},
          [{tr,{x,0},{t_cons,{t_integer,{2,'+inf'}},nil}},{literal,[2,3,4]}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",106}]}.
    {call,1,{f,327}}. % '-basic/1-lc$^20/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,51},
          [{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}},{literal,[2,3,4]}]}.
    {move,{literal,#{1 => 2,3 => 4}},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",107}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,21},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => 2,3 => 4}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},11}.
  {label,21}.
    {call,1,{f,322}}. % '-basic/1-lc$^21/1-20-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,50},
          [{tr,{x,0},{t_list,{t_number,any},nil}},{literal,[2,12]}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",110}]}.
    {call,1,{f,318}}. % '-basic/1-lc$^22/1-21-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{3,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,49},
          [{tr,{x,0},{t_list,{t_integer,{3,'+inf'}},nil}},{literal,[3,4]}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",111}]}.
    {call,1,{f,314}}. % '-basic/1-lc$^23/1-22-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{3,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,48},
          [{tr,{x,0},{t_list,{t_integer,{3,'+inf'}},nil}},{literal,[3,4]}]}.
    {move,{literal,#{1 => 2,3 => 4}},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",112}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,22},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => 2,3 => 4}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},11}.
  {label,22}.
    {call,1,{f,308}}. % '-basic/1-lc$^24/1-23-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,47},
          [{tr,{x,0},{t_list,{t_number,any},nil}},{literal,"\f"}]}.
    {move,{y,10},{x,0}}.
    {init_yregs,{list,[{y,10}]}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",115}]}.
    {call,1,{f,304}}. % '-basic/1-lc$^25/1-24-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[xx]},2 => {t_tuple,2,false,#{}}}},
                     nil}}]}}.
    {test,is_nil,
          {f,46},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[xx]},
                                  2 => {t_tuple,2,false,#{}}}},
                       nil}}]}.
    {'catch',{y,10},{f,23}}.
    {move,{y,8},{x,0}}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",116}]}.
    {call,1,{f,301}}. % '-basic/1-lc$^26/1-25-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,23}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,45},[{x,0},2,{atom,'EXIT'}]}.
    {move,{y,8},{x,0}}.
    {line,[{scope,[21,22]},{location,"lc_SUITE.erl",117}]}.
    {call,1,{f,298}}. % '-basic/1-lc$^27/1-26-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,9},{f,24}}.
    {move,{y,8},{x,0}}.
    {init_yregs,{list,[{y,8}]}}.
    {line,[{scope,[21,22]},{location,"lc_SUITE.erl",118}]}.
    {call,1,{f,295}}. % '-basic/1-lc$^28/1-27-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,24}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,44},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,8},{f,25}}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[19,20]},{location,"lc_SUITE.erl",119}]}.
    {call,1,{f,131}}. % id/1
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
    {call,1,{f,291}}. % '-basic/1-lc$^29/1-28-'/1
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
  {label,25}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,43},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,43},[{x,1}]}.
    {test,test_arity,{f,43},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,43},[{x,1},{literal,{bad_generator,x}}]}.
    {'catch',{y,7},{f,26}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",120}]}.
    {call,1,{f,289}}. % '-basic/1-lc$^30/1-29-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,26}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,42},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,42},[{x,1}]}.
    {test,test_arity,{f,42},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,42},[{x,1},{literal,{bad_filter,not_bool}}]}.
    {'catch',{y,6},{f,27}}.
    {move,{literal,[{ok,1},2,{ok,3}]},{x,0}}.
    {line,[{scope,[14]},{location,"lc_SUITE.erl",123}]}.
    {call,1,{f,285}}. % '-basic/1-lc$^31/1-30-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
  {label,27}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,41},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,41},[{x,1}]}.
    {test,test_arity,{f,41},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,41},[{x,1},{literal,{badmatch,2}}]}.
    {'catch',{y,5},{f,28}}.
    {move,{literal,<<1,128,2>>},{x,0}}.
    {line,[{scope,"\f"},{location,"lc_SUITE.erl",124}]}.
    {call,1,{f,281}}. % '-basic/1-lc$^32/1-31-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,127}},nil}}]}}.
  {label,28}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,40},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,40},[{x,1}]}.
    {test,test_arity,{f,40},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,40},[{x,1},{literal,{badmatch,<<128,2>>}}]}.
    {'catch',{y,4},{f,30}}.
    {move,{literal,#{1 => ok,2 => error,3 => ok}},{x,0}}.
    {line,[{scope,"\n"},{location,"lc_SUITE.erl",125}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {test,is_nil,{f,29},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => ok,2 => error,3 => ok}}},{x,0}}.
    {line,[{scope,"\t"},{location,"lc_SUITE.erl",125}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {jump,{f,30}}.
  {label,29}.
    {call,1,{f,275}}. % '-basic/1-lc$^33/1-32-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,30}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,39},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,39},[{x,1}]}.
    {test,test_arity,{f,39},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,39},[{x,1},{literal,{badmatch,{2,error}}}]}.
    {'catch',{y,3},{f,31}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\b"},{location,"lc_SUITE.erl",135}]}.
    {call,1,{f,133}}. % bad_generator/1
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
    {call,1,{f,131}}. % id/1
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
  {label,31}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,38},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,38},[{x,1}]}.
    {test,test_arity,{f,38},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,38},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,38},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,38},[{x,1},4,{atom,lc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,{f,38},[{x,1},{literal,[{file,"bad_lc.erl"},{line,4}]}]}.
    {'catch',{y,2},{f,32}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[6]},{location,"lc_SUITE.erl",140}]}.
    {call,1,{f,135}}. % bad_generator_bc/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,32}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,37},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,37},[{x,1}]}.
    {test,test_arity,{f,37},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,37},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,37},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,37},[{x,1},4,{atom,lc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,{f,37},[{x,1},{literal,[{file,"bad_lc.erl"},{line,7}]}]}.
    {'catch',{y,1},{f,33}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"lc_SUITE.erl",145}]}.
    {call,1,{f,137}}. % bad_generator_mc/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,33}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,36},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,36},[{x,1}]}.
    {test,test_arity,{f,36},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,36},[{x,2},{literal,{bad_generator,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,36},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,36},[{x,1},4,{atom,lc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,
          {f,36},
          [{x,1},{literal,[{file,"bad_lc.erl"},{line,10}]}]}.
    {'catch',{y,0},{f,34}}.
    {move,{literal,[a,b,c|d]},{x,0}}.
    {line,[{scope,[2]},{location,"lc_SUITE.erl",151}]}.
    {call,1,{f,131}}. % id/1
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
    {call,1,{f,133}}. % bad_generator/1
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
  {label,34}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,35},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,35},[{x,1}]}.
    {test,test_arity,{f,35},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,35},[{x,2},{literal,{bad_generator,d}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,35},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,35},[{x,1},4,{atom,lc_SUITE}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_eq_exact,{f,35},[{x,1},{literal,[{file,"bad_lc.erl"},{line,4}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,11}.
    return.
  {label,35}.
    {line,[{scope,[0]},{location,"lc_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{scope,[2]},{location,"lc_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{scope,[4]},{location,"lc_SUITE.erl",137}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,[6]},{location,"lc_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{scope,"\b"},{location,"lc_SUITE.erl",125}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{scope,"\n"},{location,"lc_SUITE.erl",124}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{scope,"\f"},{location,"lc_SUITE.erl",123}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{scope,[14]},{location,"lc_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{scope,[16]},{location,"lc_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{scope,[18]},{location,"lc_SUITE.erl",118}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{scope,[20]},{location,"lc_SUITE.erl",116}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",115}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",112}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",111}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",110}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",107}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",106}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",105}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",95}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",90}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",87}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",83}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",80}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",78}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",77}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",75}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",74}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",73}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,[22]},{location,"lc_SUITE.erl",72}]}.
    {badmatch,{x,0}}.


{function, tuple_list, 0, 67}.
  {label,66}.
    {line,[{location,"lc_SUITE.erl",156}]}.
    {func_info,{atom,lc_SUITE},{atom,tuple_list},0}.
  {label,67}.
    {move,{literal,[{a,b,true},
                    [a,b,c],
                    glurf,
                    {a,b,false,xx},
                    {a,b},
                    {x,y,true,true},
                    {a,b,d,ddd}]},
          {x,0}}.
    return.


{function, my_map, 2, 69}.
  {label,68}.
    {line,[{location,"lc_SUITE.erl",159}]}.
    {func_info,{atom,lc_SUITE},{atom,my_map},2}.
  {label,69}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,any}}]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,271}}. % '-my_map/2-lc$^0/1-0-'/2


{function, odd, 1, 71}.
  {label,70}.
    {line,[{location,"lc_SUITE.erl",162}]}.
    {func_info,{atom,lc_SUITE},{atom,odd},1}.
  {label,71}.
    {line,[{location,"lc_SUITE.erl",163}]}.
    {gc_bif,'rem',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{-1,1}}},{integer,1}],{x,0}}.
    return.


{function, alphanum, 1, 73}.
  {label,72}.
    {line,[{location,"lc_SUITE.erl",165}]}.
    {func_info,{atom,lc_SUITE},{atom,alphanum},1}.
  {label,73}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{46,99}},nil}}]}}.
    {call_only,1,{f,266}}. % '-alphanum/1-lc$^0/1-0-'/1


{function, deeply_nested, 1, 75}.
  {label,74}.
    {line,[{location,"lc_SUITE.erl",170}]}.
    {func_info,{atom,lc_SUITE},{atom,deeply_nested},1}.
  {label,75}.
    {test,is_list,{f,74},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"lc_SUITE.erl",171}]}.
    {call,0,{f,78}}. % deeply_nested_1/0
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_cons,{t_integer,{1,1764}},nil},nil}}]}}.
    {test,is_eq_exact,
          {f,76},
          [{tr,{x,0},{t_cons,{t_cons,{t_integer,{1,1764}},nil},nil}},
           {literal,[[99,98,97,96,42,17,1764,12,11,10,9,8,7,6,5,4,3,7,2,1]]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,76}.
    {badmatch,{x,0}}.


{function, deeply_nested_1, 0, 78}.
  {label,77}.
    {line,[{location,"lc_SUITE.erl",174}]}.
    {func_info,{atom,lc_SUITE},{atom,deeply_nested_1},0}.
  {label,78}.
    {move,{literal,"c"},{x,0}}.
    {call_only,1,{f,202}}. % '-deeply_nested_1/0-lc$^2/1-0-'/1


{function, no_generator, 1, 80}.
  {label,79}.
    {line,[{location,"lc_SUITE.erl",182}]}.
    {func_info,{atom,lc_SUITE},{atom,no_generator},1}.
  {label,80}.
    {test,is_list,{f,79},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,17},{x,1}}.
    {move,{integer,-10},{x,0}}.
    {line,[{location,"lc_SUITE.erl",183}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"lc_SUITE.erl",184}]}.
    {call,2,{f,194}}. % '-no_generator/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, no_gen, 2, 82}.
  {label,81}.
    {line,[{location,"lc_SUITE.erl",191}]}.
    {func_info,{atom,lc_SUITE},{atom,no_gen},2}.
  {label,82}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {test,is_eq_exact,{f,83},[{x,1},{integer,9}]}.
    {move,{literal,"\t"},{x,0}}.
    {jump,{f,84}}.
  {label,83}.
    {move,nil,{x,0}}.
  {label,84}.
    {test,is_eq_exact,{f,85},[{x,1},{integer,8}]}.
    {test_heap,2,1}.
    {put_list,{integer,8},{x,0},{x,0}}.
  {label,85}.
    {test,is_eq_exact,{f,86},[{y,1},{integer,7}]}.
    {test_heap,2,1}.
    {put_list,{integer,7},{x,0},{x,0}}.
  {label,86}.
    {test,is_eq_exact,{f,87},[{y,1},{integer,6}]}.
    {test_heap,2,1}.
    {put_list,{integer,6},{x,0},{x,0}}.
  {label,87}.
    {test,is_eq_exact,{f,88},[{y,1},{integer,5}]}.
    {test_heap,2,1}.
    {put_list,{integer,5},{x,0},{x,0}}.
  {label,88}.
    {test,is_eq_exact,{f,89},[{y,1},{integer,4}]}.
    {test_heap,2,1}.
    {put_list,{integer,4},{x,0},{x,0}}.
  {label,89}.
    {test,is_eq_exact,{f,90},[{y,1},{integer,3}]}.
    {test_heap,2,1}.
    {put_list,{integer,3},{x,0},{x,0}}.
  {label,90}.
    {test,is_eq_exact,{f,91},[{y,1},{integer,2}]}.
    {test_heap,2,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
  {label,91}.
    {test,is_eq_exact,{f,92},[{y,1},{integer,1}]}.
    {test_heap,2,1}.
    {put_list,{integer,1},{x,0},{x,0}}.
  {label,92}.
    {test,is_eq_exact,{f,93},[{y,2},{integer,9}]}.
    {test_heap,2,1}.
    {put_list,{integer,9},{x,0},{x,0}}.
  {label,93}.
    {test,is_eq_exact,{f,94},[{y,2},{integer,8}]}.
    {test_heap,2,1}.
    {put_list,{integer,8},{x,0},{x,0}}.
  {label,94}.
    {test,is_eq_exact,{f,95},[{y,2},{integer,7}]}.
    {test_heap,2,1}.
    {put_list,{integer,7},{x,0},{x,0}}.
  {label,95}.
    {test,is_eq_exact,{f,96},[{y,2},{integer,6}]}.
    {test_heap,2,1}.
    {put_list,{integer,6},{x,0},{x,0}}.
  {label,96}.
    {test,is_eq_exact,{f,97},[{y,2},{integer,5}]}.
    {test_heap,2,1}.
    {put_list,{integer,5},{x,0},{x,0}}.
  {label,97}.
    {test,is_eq_exact,{f,98},[{y,2},{integer,4}]}.
    {test_heap,2,1}.
    {put_list,{integer,4},{x,0},{x,0}}.
  {label,98}.
    {test,is_eq_exact,{f,99},[{y,2},{integer,3}]}.
    {test_heap,2,1}.
    {put_list,{integer,3},{x,0},{x,0}}.
  {label,99}.
    {test,is_eq_exact,{f,100},[{y,2},{integer,2}]}.
    {test_heap,2,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
  {label,100}.
    {test,is_eq_exact,{f,101},[{y,2},{integer,1}]}.
    {test_heap,2,1}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {move,{x,0},{y,0}}.
    {jump,{f,102}}.
  {label,101}.
    {move,{x,0},{y,0}}.
  {label,102}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"lc_SUITE.erl",196}]}.
    {call,2,{f,116}}. % no_gen_one_more/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,103},[{x,0},{atom,true}]}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,one_more},{y,2},{y,1}]}}.
    {put_list,{x,0},{y,0},{x,0}}.
    {jump,{f,104}}.
  {label,103}.
    {move,{y,0},{x,0}}.
  {label,104}.
    {test,is_eq_exact,{f,105},[{y,2},{y,1}]}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,2},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
  {label,105}.
    {gc_bif,'rem',{f,106},1,[{y,2},{y,1}],{x,1}}.
    {test,is_eq_exact,{f,106},[{tr,{x,1},{t_integer,any}},{integer,3}]}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,2},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
  {label,106}.
    {gc_bif,'*',{f,107},1,[{y,2},{y,1}],{x,1}}.
    {test,is_eq_exact,{f,107},[{tr,{x,1},{t_number,any}},{integer,0}]}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,2},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
  {label,107}.
    {gc_bif,'+',{f,108},1,[{y,2},{y,1}],{x,1}}.
    {test,is_eq_exact,{f,108},[{tr,{x,1},{t_number,any}},{integer,0}]}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,2},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,108}.
    {deallocate,3}.
    return.


{function, no_gen_verify, 3, 110}.
  {label,109}.
    {line,[{location,"lc_SUITE.erl",216}]}.
    {func_info,{atom,lc_SUITE},{atom,no_gen_verify},3}.
  {label,110}.
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
    {make_fun3,{f,192},0,0,{x,0},{list,[{x,1},{x,2}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{y,5},{x,1}}.
    {line,[{location,"lc_SUITE.erl",218}]}.
    {call,2,{f,113}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,190},0,0,{x,1},{list,[{y,7},{y,6}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,0},{y,4}}.
    {move,{y,5},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",219}]}.
    {call,2,{f,113}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,187},0,0,{x,1},{list,[{y,7},{y,6}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,0},{y,3}}.
    {move,{y,5},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",220}]}.
    {call,2,{f,113}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,185},0,0,{x,1},{list,[{y,7},{y,6}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{y,5},{x,2}}.
    {move,{x,0},{y,5}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",221}]}.
    {call,2,{f,113}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,6},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,183},0,0,{x,1},{list,[{y,7},{y,6}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {put_tuple2,{x,2},{list,[{atom,one_more},{y,7},{y,6}]}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",222}]}.
    {call,2,{f,113}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,180},0,0,{x,1},{list,[{y,7}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,0},{y,1}}.
    {move,{y,7},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",223}]}.
    {call,2,{f,113}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,177},0,0,{x,1},{list,[{y,6}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,6},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"lc_SUITE.erl",224}]}.
    {call,2,{f,113}}. % no_gen_eval/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"lc_SUITE.erl",223}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"lc_SUITE.erl",222}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"lc_SUITE.erl",221}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {line,[{location,"lc_SUITE.erl",220}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{location,"lc_SUITE.erl",219}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {line,[{location,"lc_SUITE.erl",218}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test,is_eq_exact,
          {f,111},
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
  {label,111}.
    {test_heap,8,1}.
    {put_list,{y,8},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,6},{x,0},{x,0}}.
    {put_list,{y,7},{x,0},{x,1}}.
    {trim,9,0}.
    {move,{literal,"A = ~p; B = ~p; Expected = ~p, actual = ~p"},{x,0}}.
    {line,[{location,"lc_SUITE.erl",228}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"lc_SUITE.erl",229}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.


{function, no_gen_eval, 2, 113}.
  {label,112}.
    {line,[{location,"lc_SUITE.erl",232}]}.
    {func_info,{atom,lc_SUITE},{atom,no_gen_eval},2}.
  {label,113}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,{t_atom,[false,true]}}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"lc_SUITE.erl",233}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,{t_atom,[false,true]}}}}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,114},[{x,0},{atom,true}]}.
    {test_heap,2,0}.
    {put_list,{y,0},nil,{x,0}}.
    {deallocate,1}.
    return.
  {label,114}.
    {move,nil,{x,0}}.
    {deallocate,1}.
    return.


{function, no_gen_one_more, 2, 116}.
  {label,115}.
    {line,[{location,"lc_SUITE.erl",238}]}.
    {func_info,{atom,lc_SUITE},{atom,no_gen_one_more},2}.
  {label,116}.
    {gc_bif,'+',{f,0},2,[{x,0},{integer,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_number,any}},{x,1}],{x,0}}.
    return.


{function, empty_generator, 1, 118}.
  {label,117}.
    {line,[{location,"lc_SUITE.erl",240}]}.
    {func_info,{atom,lc_SUITE},{atom,empty_generator},1}.
  {label,118}.
    {test,is_list,{f,117},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,0}}.
    {line,[{location,"lc_SUITE.erl",241}]}.
    {call,1,{f,175}}. % '-empty_generator/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, no_export, 1, 120}.
  {label,119}.
    {line,[{location,"lc_SUITE.erl",244}]}.
    {func_info,{atom,lc_SUITE},{atom,no_export},1}.
  {label,120}.
    {test,is_list,{f,119},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, shadow, 1, 122}.
  {label,121}.
    {line,[{location,"lc_SUITE.erl",251}]}.
    {func_info,{atom,lc_SUITE},{atom,shadow},1}.
  {label,122}.
    {test,is_list,{f,121},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,nomatch},{x,0}}.
    {line,[{location,"lc_SUITE.erl",253}]}.
    {call,1,{f,131}}. % id/1
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
    {line,[{location,"lc_SUITE.erl",254}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,171}}. % '-shadow/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_number,any},2 => {t_number,any}}},
                     nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"lc_SUITE.erl",255}]}.
    {call,1,{f,131}}. % id/1
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
        {f,124},
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
    {line,[{location,"lc_SUITE.erl",256}]}.
    {call,1,{f,131}}. % id/1
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
    {call,1,{f,166}}. % '-shadow/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',10}},nil}}]}}.
    {call,1,{f,131}}. % id/1
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
        {f,123},
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
  {label,123}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{location,"lc_SUITE.erl",255}]}.
    {badmatch,{x,0}}.


{function, effect, 1, 126}.
  {label,125}.
    {line,[{location,"lc_SUITE.erl",260}]}.
    {func_info,{atom,lc_SUITE},{atom,effect},1}.
  {label,126}.
    {test,is_list,{f,125},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{minutes,10}},{x,0}}.
    {line,[{location,"lc_SUITE.erl",261}]}.
    {call_ext,1,{extfunc,ct,timetrap,1}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,159},0,0,{y,0},{list,[]}}.
    {'%',{var_info,{y,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"lc_SUITE.erl",267}]}.
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
    {call,1,{f,131}}. % id/1
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
    {line,[{location,"lc_SUITE.erl",263}]}.
    {call,2,{f,129}}. % do_effect/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,127},
          [{tr,{x,0},{t_list,any,nil}},{literal,[{42,{a,b,c}}]}]}.
    {move,{integer,268435455},{x,1}}.
    {move,{integer,267452416},{x,0}}.
    {line,[{location,"lc_SUITE.erl",274}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,153}}. % '-effect/1-lc$^2/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,127}.
    {line,[{location,"lc_SUITE.erl",262}]}.
    {badmatch,{x,0}}.


{function, do_effect, 2, 129}.
  {label,128}.
    {line,[{location,"lc_SUITE.erl",281}]}.
    {func_info,{atom,lc_SUITE},{atom,do_effect},2}.
  {label,129}.
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
    {line,[{location,"lc_SUITE.erl",282}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,151},0,0,{x,0},{list,[]}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {line,[{location,"lc_SUITE.erl",284}]}.
    {call,2,{f,159}}. % '-effect/1-fun-1-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,lc_SUITE},{x,0}}.
    {line,[{location,"lc_SUITE.erl",285}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {call_ext_last,1,{extfunc,lists,reverse,1},0}.


{function, id, 1, 131}.
  {label,130}.
    {line,[{location,"lc_SUITE.erl",287}]}.
    {func_info,{atom,lc_SUITE},{atom,id},1}.
  {label,131}.
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


{function, bad_generator, 1, 133}.
  {label,132}.
    {line,[{location,"bad_lc.erl",2}]}.
    {func_info,{atom,lc_SUITE},{atom,bad_generator},1}.
  {label,133}.
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
    {call_only,1,{f,147}}. % '-bad_generator/1-lc$^0/1-0-'/1


{function, bad_generator_bc, 1, 135}.
  {label,134}.
    {line,[{location,"bad_lc.erl",5}]}.
    {func_info,{atom,lc_SUITE},{atom,bad_generator_bc},1}.
  {label,135}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{atom,a},{x,0}}.
    {call_last,2,{f,145},0}. % '-bad_generator_bc/1-lbc$^0/2-0-'/2


{function, bad_generator_mc, 1, 137}.
  {label,136}.
    {line,[{location,"bad_lc.erl",8}]}.
    {func_info,{atom,lc_SUITE},{atom,bad_generator_mc},1}.
  {label,137}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {call_only,1,{f,143}}. % '-bad_generator_mc/1-lc$^0/1-0-'/1


{function, module_info, 0, 139}.
  {label,138}.
    {line,[]}.
    {func_info,{atom,lc_SUITE},{atom,module_info},0}.
  {label,139}.
    {move,{atom,lc_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 141}.
  {label,140}.
    {line,[]}.
    {func_info,{atom,lc_SUITE},{atom,module_info},1}.
  {label,141}.
    {move,{x,0},{x,1}}.
    {move,{atom,lc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-bad_generator_mc/1-lc$^0/1-0-', 1, 143}.
  {label,142}.
    {line,[{location,"bad_lc.erl",10}]}.
    {func_info,{atom,lc_SUITE},{atom,'-bad_generator_mc/1-lc$^0/1-0-'},1}.
  {label,143}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{bad_generator,a}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generator_bc/1-lbc$^0/2-0-', 2, 145}.
  {label,144}.
    {line,[{location,"bad_lc.erl",6}]}.
    {func_info,{atom,lc_SUITE},{atom,'-bad_generator_bc/1-lbc$^0/2-0-'},2}.
  {label,145}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,a}},{x,0}}.
    {line,[{location,"bad_lc.erl",7}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_generator/1-lc$^0/1-0-', 1, 147}.
  {label,146}.
    {line,[{location,"bad_lc.erl",4}]}.
    {func_info,{atom,lc_SUITE},{atom,'-bad_generator/1-lc$^0/1-0-'},1}.
  {label,147}.
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
    {test,is_nonempty_list,{f,148},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,147}}. % '-bad_generator/1-lc$^0/1-0-'/1
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
  {label,148}.
    {test,is_nil,
          {f,149},
          [{tr,{x,0},
               {t_union,{t_atom,[a,d,nomatch,not_bool,x]},
                        nil,none,none,none}}]}.
    return.
  {label,149}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_effect/2-fun-0-', 1, 151}.
  {label,150}.
    {line,[{location,"lc_SUITE.erl",283}]}.
    {func_info,{atom,lc_SUITE},{atom,'-do_effect/2-fun-0-'},1}.
  {label,151}.
    {test_heap,2,1}.
    {bif,get,{f,0},[{atom,lc_SUITE}],{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{atom,lc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,put,2}}.


{function, '-effect/1-lc$^2/1-1-', 1, 153}.
  {label,152}.
    {line,[{location,"lc_SUITE.erl",274}]}.
    {func_info,{atom,lc_SUITE},{atom,'-effect/1-lc$^2/1-1-'},1}.
  {label,153}.
    {test,is_nonempty_list,{f,155},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {'catch',{y,1},{f,154}}.
    {line,[{location,"lc_SUITE.erl",273}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,utf8},1,0,nil,{x,0},{atom,undefined}]}}.
    {move,{atom,utf8},{x,1}}.
    {call_ext,2,{extfunc,erlang,binary_to_atom,2}}.
  {label,154}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,157},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,157},[{x,1},2,{atom,badarg}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,153},2}. % '-effect/1-lc$^2/1-1-'/1
  {label,155}.
    {test,is_nil,{f,156},[{x,0}]}.
    return.
  {label,156}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{scope,[0]},{location,"lc_SUITE.erl",274}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,157}.
    {line,[{scope,[0]},{location,"lc_SUITE.erl",272}]}.
    {badmatch,{x,0}}.


{function, '-effect/1-fun-1-', 2, 159}.
  {label,158}.
    {line,[{location,"lc_SUITE.erl",263}]}.
    {func_info,{atom,lc_SUITE},{atom,'-effect/1-fun-1-'},2}.
  {label,159}.
    {allocate,0,2}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"lc_SUITE.erl",265}]}.
    {call,2,{f,161}}. % '-effect/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, '-effect/1-lc$^0/1-0-', 2, 161}.
  {label,160}.
    {line,[{location,"lc_SUITE.erl",265}]}.
    {func_info,{atom,lc_SUITE},{atom,'-effect/1-lc$^0/1-0-'},2}.
  {label,161}.
    {test,is_nonempty_list,{f,163},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_map,{f,162},[{x,2}]}.
    {bs_create_bin,{f,162},
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
    {get_map_elements,{f,162},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{tr,{x,3},{t_bitstring,4,false}},{x,3}]}}.
    {bs_create_bin,{f,162},
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
    {get_map_elements,{f,162},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{tr,{x,4},{t_bitstring,1,false}},{x,2}]}}.
    {allocate_heap,2,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    {line,[{location,"lc_SUITE.erl",264}]}.
    {call_fun,1}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,161},2}. % '-effect/1-lc$^0/1-0-'/2
  {label,162}.
    {call_only,2,{f,161}}. % '-effect/1-lc$^0/1-0-'/2
  {label,163}.
    {test,is_nil,{f,164},[{x,0}]}.
    return.
  {label,164}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"lc_SUITE.erl",265}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-shadow/1-lc$^1/1-1-', 1, 166}.
  {label,165}.
    {line,[{location,"lc_SUITE.erl",256}]}.
    {func_info,{atom,lc_SUITE},{atom,'-shadow/1-lc$^1/1-1-'},1}.
  {label,166}.
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
    {test,is_nonempty_list,{f,168},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,
        {f,167},
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
    {test,is_lt,{f,167},[{tr,{x,1},{t_number,any}},{integer,10}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,166}}. % '-shadow/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',10}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,167}.
    {call_only,1,{f,166}}. % '-shadow/1-lc$^1/1-1-'/1
  {label,168}.
    {test,is_nil,
          {f,169},
          [{tr,{x,0},
               {t_union,{t_atom,[d,nomatch,not_bool,x]},nil,none,none,none}}]}.
    return.
  {label,169}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-shadow/1-lc$^0/1-0-', 1, 171}.
  {label,170}.
    {line,[{location,"lc_SUITE.erl",254}]}.
    {func_info,{atom,lc_SUITE},{atom,'-shadow/1-lc$^0/1-0-'},1}.
  {label,171}.
    {test,is_nonempty_list,{f,172},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,2}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,171}}. % '-shadow/1-lc$^0/1-0-'/1
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
  {label,172}.
    {test,is_nil,{f,173},[{x,0}]}.
    return.
  {label,173}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-empty_generator/1-lc$^0/1-0-', 1, 175}.
  {label,174}.
    {line,[{location,"lc_SUITE.erl",241}]}.
    {func_info,{atom,lc_SUITE},{atom,'-empty_generator/1-lc$^0/1-0-'},1}.
  {label,175}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-0-', 1, 177}.
  {label,176}.
    {line,[{location,"lc_SUITE.erl",224}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-0-'},1}.
  {label,177}.
    {test,is_ge,{f,178},[{x,0},{integer,1}]}.
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
  {label,178}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-1-', 1, 180}.
  {label,179}.
    {line,[{location,"lc_SUITE.erl",223}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-1-'},1}.
  {label,180}.
    {test,is_ge,{f,181},[{x,0},{integer,1}]}.
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
  {label,181}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-2-', 2, 183}.
  {label,182}.
    {line,[{location,"lc_SUITE.erl",222}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-2-'},2}.
  {label,183}.
    {gc_bif,'+',{f,0},2,[{x,0},{integer,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_number,any}},{x,1}],{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-3-', 2, 185}.
  {label,184}.
    {line,[{location,"lc_SUITE.erl",221}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-3-'},2}.
  {label,185}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-4-', 2, 187}.
  {label,186}.
    {line,[{location,"lc_SUITE.erl",220}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-4-'},2}.
  {label,187}.
    {test,is_eq_exact,{f,188},[{x,1},{integer,0}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,188}.
    {gc_bif,'rem',{f,0},2,[{x,0},{x,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,any}},{integer,3}],{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-5-', 2, 190}.
  {label,189}.
    {line,[{location,"lc_SUITE.erl",219}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-5-'},2}.
  {label,190}.
    {gc_bif,'*',{f,0},2,[{x,0},{x,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_number,any}},{integer,0}],{x,0}}.
    return.


{function, '-no_gen_verify/3-fun-6-', 2, 192}.
  {label,191}.
    {line,[{location,"lc_SUITE.erl",218}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_gen_verify/3-fun-6-'},2}.
  {label,192}.
    {gc_bif,'+',{f,0},2,[{x,0},{x,1}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_number,any}},{integer,0}],{x,0}}.
    return.


{function, '-no_generator/1-lc$^0/1-0-', 2, 194}.
  {label,193}.
    {line,[{location,"lc_SUITE.erl",184}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_generator/1-lc$^0/1-0-'},2}.
  {label,194}.
    {test,is_nonempty_list,{f,195},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{x,1},{x,3}}.
    {swap,{x,0},{x,1}}.
    {call_only,4,{f,198}}. % '-no_generator/1-lc$^1/1-1-'/4
  {label,195}.
    {test,is_nil,{f,196},[{x,0}]}.
    return.
  {label,196}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-no_generator/1-lc$^1/1-1-', 4, 198}.
  {label,197}.
    {line,[{location,"lc_SUITE.erl",184}]}.
    {func_info,{atom,lc_SUITE},{atom,'-no_generator/1-lc$^1/1-1-'},4}.
  {label,198}.
    {test,is_nonempty_list,{f,199},[{x,0}]}.
    {allocate,5,4}.
    {move,{x,3},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{x,2},{x,0}}.
    {call,2,{f,82}}. % no_gen/2
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
    {call,3,{f,110}}. % no_gen_verify/3
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,4,{f,198},4}. % '-no_generator/1-lc$^1/1-1-'/4
  {label,199}.
    {test,is_nil,{f,200},[{x,0}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,194}}. % '-no_generator/1-lc$^0/1-0-'/2
  {label,200}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-deeply_nested_1/0-lc$^2/1-0-', 1, 202}.
  {label,201}.
    {line,[{location,"lc_SUITE.erl",177}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^2/1-0-'},1}.
  {label,202}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {test,is_nonempty_list,{f,203},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {move,{integer,99},{x,2}}.
    {move,{literal,"b"},{x,0}}.
    {call_only,3,{f,205}}. % '-deeply_nested_1/0-lc$^3/1-1-'/3
  {label,203}.
    return.


{function, '-deeply_nested_1/0-lc$^3/1-1-', 3, 205}.
  {label,204}.
    {line,[{location,"lc_SUITE.erl",177}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^3/1-1-'},3}.
  {label,205}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {test,is_nonempty_list,{f,206},[{x,0}]}.
    {get_tl,{x,0},{x,3}}.
    {move,{integer,98},{x,4}}.
    {move,{literal,"a"},{x,0}}.
    {call_only,5,{f,208}}. % '-deeply_nested_1/0-lc$^4/1-2-'/5
  {label,206}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,202}}. % '-deeply_nested_1/0-lc$^2/1-0-'/1


{function, '-deeply_nested_1/0-lc$^4/1-2-', 5, 208}.
  {label,207}.
    {line,[{location,"lc_SUITE.erl",177}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^4/1-2-'},5}.
  {label,208}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {test,is_nonempty_list,{f,209},[{x,0}]}.
    {get_tl,{x,0},{x,5}}.
    {move,{integer,97},{x,6}}.
    {move,{literal,"`"},{x,0}}.
    {call_only,7,{f,211}}. % '-deeply_nested_1/0-lc$^5/1-3-'/7
  {label,209}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,205}}. % '-deeply_nested_1/0-lc$^3/1-1-'/3


{function, '-deeply_nested_1/0-lc$^5/1-3-', 7, 211}.
  {label,210}.
    {line,[{location,"lc_SUITE.erl",177}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^5/1-3-'},7}.
  {label,211}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {test,is_nonempty_list,{f,212},[{x,0}]}.
    {get_tl,{x,0},{x,7}}.
    {move,{integer,96},{x,8}}.
    {move,{literal,"*"},{x,0}}.
    {call_only,9,{f,214}}. % '-deeply_nested_1/0-lc$^6/1-4-'/9
  {label,212}.
    {move,{x,5},{x,0}}.
    {call_only,5,{f,208}}. % '-deeply_nested_1/0-lc$^4/1-2-'/5


{function, '-deeply_nested_1/0-lc$^6/1-4-', 9, 214}.
  {label,213}.
    {line,[{location,"lc_SUITE.erl",177}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^6/1-4-'},9}.
  {label,214}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{42,42}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{99,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{99,99}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_list,{t_integer,{98,98}},nil}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{98,98}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,6},[{type,{t_integer,{97,97}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_list,{t_integer,{96,96}},nil}}]}}.
    {'%',{var_info,{x,8},[{type,{t_integer,{96,96}}}]}}.
    {test,is_nonempty_list,{f,215},[{x,0}]}.
    {get_tl,{x,0},{x,9}}.
    {move,{integer,42},{x,10}}.
    {move,{literal,[17]},{x,0}}.
    {call_only,11,{f,217}}. % '-deeply_nested_1/0-lc$^7/1-5-'/11
  {label,215}.
    {move,{x,7},{x,0}}.
    {call_only,7,{f,211}}. % '-deeply_nested_1/0-lc$^5/1-3-'/7


{function, '-deeply_nested_1/0-lc$^7/1-5-', 11, 217}.
  {label,216}.
    {line,[{location,"lc_SUITE.erl",177}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^7/1-5-'},11}.
  {label,217}.
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
    {test,is_nonempty_list,{f,218},[{x,0}]}.
    {test_heap,{alloc,[{words,3},{floats,0},{funs,1}]},11}.
    {get_tl,{x,0},{x,11}}.
    {make_fun3,{f,220},0,0,{x,0},{list,[{integer,42}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{1764,1764}}}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{integer,17},{x,12}}.
    {call_only,13,{f,222}}. % '-deeply_nested_1/0-lc$^8/1-6-'/13
  {label,218}.
    {move,{x,9},{x,0}}.
    {call_only,9,{f,214}}. % '-deeply_nested_1/0-lc$^6/1-4-'/9


{function, '-deeply_nested_1/0-fun-0-', 1, 220}.
  {label,219}.
    {line,[{location,"lc_SUITE.erl",178}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-fun-0-'},1}.
  {label,220}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{integer,1764},{x,0}}.
    return.


{function, '-deeply_nested_1/0-lc$^8/1-6-', 13, 222}.
  {label,221}.
    {line,[{location,"lc_SUITE.erl",178}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^8/1-6-'},13}.
  {label,222}.
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
    {test,is_nonempty_list,{f,223},[{x,0}]}.
    {get_list,{x,0},{x,14},{x,13}}.
    {move,{literal,"\f"},{x,0}}.
    {call_only,15,{f,225}}. % '-deeply_nested_1/0-lc$^9/1-7-'/15
  {label,223}.
    {move,{x,11},{x,0}}.
    {call_only,11,{f,217}}. % '-deeply_nested_1/0-lc$^7/1-5-'/11


{function, '-deeply_nested_1/0-lc$^9/1-7-', 15, 225}.
  {label,224}.
    {line,[{location,"lc_SUITE.erl",178}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^9/1-7-'},15}.
  {label,225}.
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
    {test,is_nonempty_list,{f,226},[{x,0}]}.
    {get_tl,{x,0},{x,15}}.
    {move,{integer,12},{x,16}}.
    {move,{literal,"\v"},{x,0}}.
    {call_only,17,{f,228}}. % '-deeply_nested_1/0-lc$^10/1-8-'/17
  {label,226}.
    {move,{x,13},{x,0}}.
    {call_only,13,{f,222}}. % '-deeply_nested_1/0-lc$^8/1-6-'/13


{function, '-deeply_nested_1/0-lc$^10/1-8-', 17, 228}.
  {label,227}.
    {line,[{location,"lc_SUITE.erl",178}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^10/1-8-'},17}.
  {label,228}.
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
    {test,is_nonempty_list,{f,229},[{x,0}]}.
    {get_tl,{x,0},{x,17}}.
    {move,{integer,11},{x,18}}.
    {move,{literal,"\n"},{x,0}}.
    {call_only,19,{f,231}}. % '-deeply_nested_1/0-lc$^11/1-9-'/19
  {label,229}.
    {move,{x,15},{x,0}}.
    {call_only,15,{f,225}}. % '-deeply_nested_1/0-lc$^9/1-7-'/15


{function, '-deeply_nested_1/0-lc$^11/1-9-', 19, 231}.
  {label,230}.
    {line,[{location,"lc_SUITE.erl",178}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^11/1-9-'},19}.
  {label,231}.
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
    {test,is_nonempty_list,{f,232},[{x,0}]}.
    {get_tl,{x,0},{x,19}}.
    {move,{integer,10},{x,20}}.
    {move,{literal,"\t"},{x,0}}.
    {call_only,21,{f,234}}. % '-deeply_nested_1/0-lc$^12/1-10-'/21
  {label,232}.
    {move,{x,17},{x,0}}.
    {call_only,17,{f,228}}. % '-deeply_nested_1/0-lc$^10/1-8-'/17


{function, '-deeply_nested_1/0-lc$^12/1-10-', 21, 234}.
  {label,233}.
    {line,[{location,"lc_SUITE.erl",179}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^12/1-10-'},21}.
  {label,234}.
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
    {test,is_nonempty_list,{f,235},[{x,0}]}.
    {get_tl,{x,0},{x,21}}.
    {move,{integer,9},{x,22}}.
    {move,{literal,"\b"},{x,0}}.
    {call_only,23,{f,237}}. % '-deeply_nested_1/0-lc$^13/1-11-'/23
  {label,235}.
    {move,{x,19},{x,0}}.
    {call_only,19,{f,231}}. % '-deeply_nested_1/0-lc$^11/1-9-'/19


{function, '-deeply_nested_1/0-lc$^13/1-11-', 23, 237}.
  {label,236}.
    {line,[{location,"lc_SUITE.erl",179}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^13/1-11-'},23}.
  {label,237}.
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
    {test,is_nonempty_list,{f,238},[{x,0}]}.
    {get_tl,{x,0},{x,23}}.
    {move,{integer,8},{x,24}}.
    {move,{literal,[7]},{x,0}}.
    {call_only,25,{f,240}}. % '-deeply_nested_1/0-lc$^14/1-12-'/25
  {label,238}.
    {move,{x,21},{x,0}}.
    {call_only,21,{f,234}}. % '-deeply_nested_1/0-lc$^12/1-10-'/21


{function, '-deeply_nested_1/0-lc$^14/1-12-', 25, 240}.
  {label,239}.
    {line,[{location,"lc_SUITE.erl",179}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^14/1-12-'},25}.
  {label,240}.
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
    {test,is_nonempty_list,{f,241},[{x,0}]}.
    {get_tl,{x,0},{x,25}}.
    {move,{integer,7},{x,26}}.
    {move,{literal,[6]},{x,0}}.
    {call_only,27,{f,243}}. % '-deeply_nested_1/0-lc$^15/1-13-'/27
  {label,241}.
    {move,{x,23},{x,0}}.
    {call_only,23,{f,237}}. % '-deeply_nested_1/0-lc$^13/1-11-'/23


{function, '-deeply_nested_1/0-lc$^15/1-13-', 27, 243}.
  {label,242}.
    {line,[{location,"lc_SUITE.erl",179}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^15/1-13-'},27}.
  {label,243}.
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
    {test,is_nonempty_list,{f,244},[{x,0}]}.
    {get_tl,{x,0},{x,27}}.
    {move,{integer,6},{x,28}}.
    {move,{literal,[5]},{x,0}}.
    {call_only,29,{f,246}}. % '-deeply_nested_1/0-lc$^16/1-14-'/29
  {label,244}.
    {move,{x,25},{x,0}}.
    {call_only,25,{f,240}}. % '-deeply_nested_1/0-lc$^14/1-12-'/25


{function, '-deeply_nested_1/0-lc$^16/1-14-', 29, 246}.
  {label,245}.
    {line,[{location,"lc_SUITE.erl",179}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^16/1-14-'},29}.
  {label,246}.
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
    {test,is_nonempty_list,{f,247},[{x,0}]}.
    {get_tl,{x,0},{x,29}}.
    {move,{integer,5},{x,30}}.
    {move,{literal,[4]},{x,0}}.
    {call_only,31,{f,249}}. % '-deeply_nested_1/0-lc$^17/1-15-'/31
  {label,247}.
    {move,{x,27},{x,0}}.
    {call_only,27,{f,243}}. % '-deeply_nested_1/0-lc$^15/1-13-'/27


{function, '-deeply_nested_1/0-lc$^17/1-15-', 31, 249}.
  {label,248}.
    {line,[{location,"lc_SUITE.erl",180}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^17/1-15-'},31}.
  {label,249}.
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
    {test,is_nonempty_list,{f,250},[{x,0}]}.
    {get_tl,{x,0},{x,31}}.
    {move,{integer,4},{x,32}}.
    {move,{literal,[3]},{x,0}}.
    {call_only,33,{f,252}}. % '-deeply_nested_1/0-lc$^18/1-16-'/33
  {label,250}.
    {move,{x,29},{x,0}}.
    {call_only,29,{f,246}}. % '-deeply_nested_1/0-lc$^16/1-14-'/29


{function, '-deeply_nested_1/0-lc$^18/1-16-', 33, 252}.
  {label,251}.
    {line,[{location,"lc_SUITE.erl",180}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^18/1-16-'},33}.
  {label,252}.
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
    {test,is_nonempty_list,{f,253},[{x,0}]}.
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},33}.
    {get_tl,{x,0},{x,33}}.
    {make_fun3,{f,255},0,0,{x,0},{list,[{integer,4},{integer,3}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{7,7}}}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{integer,3},{x,34}}.
    {call_only,35,{f,257}}. % '-deeply_nested_1/0-lc$^19/1-17-'/35
  {label,253}.
    {move,{x,31},{x,0}}.
    {call_only,31,{f,249}}. % '-deeply_nested_1/0-lc$^17/1-15-'/31


{function, '-deeply_nested_1/0-fun-1-', 2, 255}.
  {label,254}.
    {line,[{location,"lc_SUITE.erl",180}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-fun-1-'},2}.
  {label,255}.
    {'%',{var_info,{x,0},[{type,{t_integer,{4,4}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{3,3}}}]}}.
    {move,{integer,7},{x,0}}.
    return.


{function, '-deeply_nested_1/0-lc$^19/1-17-', 35, 257}.
  {label,256}.
    {line,[{location,"lc_SUITE.erl",180}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^19/1-17-'},35}.
  {label,257}.
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
    {test,is_nonempty_list,{f,258},[{x,0}]}.
    {get_list,{x,0},{x,36},{x,35}}.
    {move,{literal,[2]},{x,0}}.
    {call_only,37,{f,260}}. % '-deeply_nested_1/0-lc$^20/1-18-'/37
  {label,258}.
    {move,{x,33},{x,0}}.
    {call_only,33,{f,252}}. % '-deeply_nested_1/0-lc$^18/1-16-'/33


{function, '-deeply_nested_1/0-lc$^20/1-18-', 37, 260}.
  {label,259}.
    {line,[{location,"lc_SUITE.erl",180}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^20/1-18-'},37}.
  {label,260}.
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
    {test,is_nonempty_list,{f,261},[{x,0}]}.
    {get_tl,{x,0},{x,37}}.
    {move,{integer,2},{x,38}}.
    {move,{literal,[1]},{x,0}}.
    {call_only,39,{f,263}}. % '-deeply_nested_1/0-lc$^21/1-19-'/39
  {label,261}.
    {move,{x,35},{x,0}}.
    {call_only,35,{f,257}}. % '-deeply_nested_1/0-lc$^19/1-17-'/35


{function, '-deeply_nested_1/0-lc$^21/1-19-', 39, 263}.
  {label,262}.
    {line,[{location,"lc_SUITE.erl",180}]}.
    {func_info,{atom,lc_SUITE},{atom,'-deeply_nested_1/0-lc$^21/1-19-'},39}.
  {label,263}.
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
    {test,is_nonempty_list,{f,264},[{x,0}]}.
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
    {line,[{location,"lc_SUITE.erl",176}]}.
    {call_fun2,{f,220},
               0,
               {tr,{x,0},
                   {t_fun,0,
                          {'-deeply_nested_1/0-fun-0-',1},
                          {t_integer,{1764,1764}}}}}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1764,1764}}}]}}.
    {move,{y,2},{x,0}}.
    {call_fun2,{f,255},
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
    {line,[{location,"lc_SUITE.erl",180}]}.
    {call,39,{f,263}}. % '-deeply_nested_1/0-lc$^21/1-19-'/39
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{1,1764}},nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,[99,98,97,96,42,17,1764,12,11,10,9,8,7,6,5,4,3,7,2,1]},
              {x,0},
              {x,0}}.
    {deallocate,0}.
    return.
  {label,264}.
    {move,{x,37},{x,0}}.
    {call_only,37,{f,260}}. % '-deeply_nested_1/0-lc$^20/1-18-'/37


{function, '-alphanum/1-lc$^0/1-0-', 1, 266}.
  {label,265}.
    {line,[{location,"lc_SUITE.erl",166}]}.
    {func_info,{atom,lc_SUITE},{atom,'-alphanum/1-lc$^0/1-0-'},1}.
  {label,266}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,99}},nil}}]}}.
    {test,is_nonempty_list,{f,269},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_ge,{f,268},[{tr,{x,1},{t_integer,{46,99}}},{integer,48}]}.
    {test,is_ge,{f,267},[{tr,{x,1},{t_integer,{48,99}}},{integer,58}]}.
    {test,is_ge,{f,267},[{integer,96},{tr,{x,1},{t_integer,{58,99}}}]}.
    {test,is_ge,{f,268},[{tr,{x,1},{t_integer,{58,96}}},{integer,65}]}.
    {test,is_ge,{f,268},[{integer,90},{tr,{x,1},{t_integer,{65,96}}}]}.
  {label,267}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,266}}. % '-alphanum/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,99}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,268}.
    {call_only,1,{f,266}}. % '-alphanum/1-lc$^0/1-0-'/1
  {label,269}.
    return.


{function, '-my_map/2-lc$^0/1-0-', 2, 271}.
  {label,270}.
    {line,[{location,"lc_SUITE.erl",160}]}.
    {func_info,{atom,lc_SUITE},{atom,'-my_map/2-lc$^0/1-0-'},2}.
  {label,271}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,any}}]}}.
    {test,is_nonempty_list,{f,272},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,any}}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,271}}. % '-my_map/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,272}.
    {test,is_nil,{f,273},[{x,0}]}.
    return.
  {label,273}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^33/1-32-', 1, 275}.
  {label,274}.
    {line,[{location,"lc_SUITE.erl",125}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^33/1-32-'},1}.
  {label,275}.
    {test,is_nonempty_list,{f,276},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,275},0}. % '-basic/1-lc$^33/1-32-'/1
  {label,276}.
    {test,is_tuple,{f,278},[{x,0}]}.
    {test,test_arity,{f,279},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,277},[{x,2},{atom,ok}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,275}}. % '-basic/1-lc$^33/1-32-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,277}.
    {test_heap,6,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2}]}}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,278}.
    {test,is_eq_exact,{f,279},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,279}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^32/1-31-', 1, 281}.
  {label,280}.
    {line,[{location,"lc_SUITE.erl",124}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^32/1-31-'},1}.
  {label,281}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,282},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}}]}}.
    {test,is_eq_exact,{f,282},[{tr,{x,2},{t_integer,{0,1}}},{integer,0}]}.
    {bs_match,{f,283},
              {x,0},
              {commands,[{ensure_at_least,7,1},
                         {integer,1,{literal,[]},7,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,281}}. % '-basic/1-lc$^32/1-31-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,127}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,282}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,283},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,nil,{x,0}}.
    return.
  {label,283}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^31/1-30-', 1, 285}.
  {label,284}.
    {line,[{location,"lc_SUITE.erl",123}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^31/1-30-'},1}.
  {label,285}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,
                         {t_integer,{2,2}},
                         [{{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => {t_integer,{1,3}}}}}],
                         none},
                     nil}}]}}.
    {test,is_nonempty_list,{f,287},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,
          {f,286},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{1,3}}}}}],
                        none}}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,285}}. % '-basic/1-lc$^31/1-30-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test_heap,2,1}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,286}.
    {move,{literal,{badmatch,2}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,287}.
    return.


{function, '-basic/1-lc$^30/1-29-', 1, 289}.
  {label,288}.
    {line,[{location,"lc_SUITE.erl",120}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^30/1-29-'},1}.
  {label,289}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {allocate,0,0}.
    {move,{atom,not_bool},{x,0}}.
    {call,1,{f,131}}. % id/1
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


{function, '-basic/1-lc$^29/1-28-', 1, 291}.
  {label,290}.
    {line,[{location,"lc_SUITE.erl",119}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^29/1-28-'},1}.
  {label,291}.
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
    {test,is_nonempty_list,{f,292},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,291}}. % '-basic/1-lc$^29/1-28-'/1
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
  {label,292}.
    {test,is_nil,
          {f,293},
          [{tr,{x,0},
               {t_union,{t_atom,[d,nomatch,not_bool,x]},nil,none,none,none}}]}.
    return.
  {label,293}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^28/1-27-', 1, 295}.
  {label,294}.
    {line,[{location,"lc_SUITE.erl",118}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^28/1-27-'},1}.
  {label,295}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,296},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {call_only,1,{f,71}}. % odd/1
  {label,296}.
    return.


{function, '-basic/1-lc$^27/1-26-', 1, 298}.
  {label,297}.
    {line,[{location,"lc_SUITE.erl",117}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^27/1-26-'},1}.
  {label,298}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,299},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,298}}. % '-basic/1-lc$^27/1-26-'/1
  {label,299}.
    return.


{function, '-basic/1-lc$^26/1-25-', 1, 301}.
  {label,300}.
    {line,[{location,"lc_SUITE.erl",116}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^26/1-25-'},1}.
  {label,301}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,302},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,list_to_atom,1}}.
  {label,302}.
    return.


{function, '-basic/1-lc$^25/1-24-', 1, 304}.
  {label,303}.
    {line,[{location,"lc_SUITE.erl",115}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^25/1-24-'},1}.
  {label,304}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,306},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bif,element,{f,305},[{integer,2},{x,1}],{x,2}}.
    {test,is_eq_exact,{f,305},[{x,2},{atom,no_no_no}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,304}}. % '-basic/1-lc$^25/1-24-'/1
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
  {label,305}.
    {call_only,1,{f,304}}. % '-basic/1-lc$^25/1-24-'/1
  {label,306}.
    return.


{function, '-basic/1-lc$^24/1-23-', 1, 308}.
  {label,307}.
    {line,[{location,"lc_SUITE.erl",112}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^24/1-23-'},1}.
  {label,308}.
    {test,is_nonempty_list,{f,309},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,308},0}. % '-basic/1-lc$^24/1-23-'/1
  {label,309}.
    {test,is_tuple,{f,311},[{x,0}]}.
    {test,test_arity,{f,312},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_lt,{f,310},[{integer,1},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {gc_bif,'*',
            {f,0},
            3,
            [{tr,{x,1},
                 {t_union,{t_atom,any},
                          {t_list,any,any},
                          {t_number,{1,'+inf'}},
                          {t_tuple,0,false,#{}},
                          other}},
             {x,0}],
            {x,0}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,308}}. % '-basic/1-lc$^24/1-23-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,310}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,308}}. % '-basic/1-lc$^24/1-23-'/1
  {label,311}.
    {test,is_eq_exact,{f,312},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,312}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^23/1-22-', 1, 314}.
  {label,313}.
    {line,[{location,"lc_SUITE.erl",111}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^23/1-22-'},1}.
  {label,314}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,316},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,is_ge,{f,315},[{tr,{x,1},{t_integer,{0,255}}},{integer,2}]}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{2,255}}},{integer,1}],{y,0}}.
    {call,1,{f,314}}. % '-basic/1-lc$^23/1-22-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{3,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,315}.
    {call_only,1,{f,314}}. % '-basic/1-lc$^23/1-22-'/1
  {label,316}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-lc$^22/1-21-', 1, 318}.
  {label,317}.
    {line,[{location,"lc_SUITE.erl",110}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^22/1-21-'},1}.
  {label,318}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,320},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_ge,{f,319},[{tr,{x,1},{t_integer,{1,3}}},{integer,2}]}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{2,3}}},{integer,1}],{y,0}}.
    {call,1,{f,318}}. % '-basic/1-lc$^22/1-21-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{3,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,319}.
    {call_only,1,{f,318}}. % '-basic/1-lc$^22/1-21-'/1
  {label,320}.
    return.


{function, '-basic/1-lc$^21/1-20-', 1, 322}.
  {label,321}.
    {line,[{location,"lc_SUITE.erl",107}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^21/1-20-'},1}.
  {label,322}.
    {test,is_nonempty_list,{f,323},[{x,0}]}.
    {allocate,0,1}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {call_last,1,{f,322},0}. % '-basic/1-lc$^21/1-20-'/1
  {label,323}.
    {test,is_tuple,{f,324},[{x,0}]}.
    {test,test_arity,{f,325},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {gc_bif,'*',{f,0},3,[{x,1},{x,2}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call,1,{f,322}}. % '-basic/1-lc$^21/1-20-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,324}.
    {test,is_eq_exact,{f,325},[{x,0},{atom,none}]}.
    {move,nil,{x,0}}.
    return.
  {label,325}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-lc$^20/1-19-', 1, 327}.
  {label,326}.
    {line,[{location,"lc_SUITE.erl",106}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^20/1-19-'},1}.
  {label,327}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,328},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,255}}},{integer,1}],{y,0}}.
    {call,1,{f,327}}. % '-basic/1-lc$^20/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,328}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-lc$^19/1-18-', 1, 330}.
  {label,329}.
    {line,[{location,"lc_SUITE.erl",105}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^19/1-18-'},1}.
  {label,330}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,331},[{x,0}]}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{1,3}}},{integer,1}],{y,0}}.
    {call,1,{f,330}}. % '-basic/1-lc$^19/1-18-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{2,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,331}.
    return.


{function, '-basic/1-lc$^18/1-17-', 1, 333}.
  {label,332}.
    {line,[{location,"lc_SUITE.erl",102}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^18/1-17-'},1}.
  {label,333}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-lc$^17/1-16-', 1, 335}.
  {label,334}.
    {line,[{location,"lc_SUITE.erl",99}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^17/1-16-'},1}.
  {label,335}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,1,true,#{1 => {t_atom,[a]}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,336},[{x,0}]}.
    {allocate,0,1}.
    {get_tl,{x,0},{x,0}}.
    {call,1,{f,335}}. % '-basic/1-lc$^17/1-16-'/1
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
  {label,336}.
    return.


{function, '-basic/1-lc$^16/1-15-', 1, 338}.
  {label,337}.
    {line,[{location,"lc_SUITE.erl",98}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^16/1-15-'},1}.
  {label,338}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-lc$^15/1-14-', 1, 340}.
  {label,339}.
    {line,[{location,"lc_SUITE.erl",95}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^15/1-14-'},1}.
  {label,340}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{97,98}},nil},nil}}]}}.
    {test,is_nonempty_list,{f,342},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,
          {f,341},
          [{tr,{x,1},{t_cons,{t_integer,{97,98}},nil}},{literal,"ab"}]}.
    {allocate,0,1}.
    {call,1,{f,340}}. % '-basic/1-lc$^15/1-14-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[t]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,t},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,341}.
    {call_only,1,{f,340}}. % '-basic/1-lc$^15/1-14-'/1
  {label,342}.
    return.


{function, '-basic/1-lc$^14/1-13-', 1, 344}.
  {label,343}.
    {line,[{location,"lc_SUITE.erl",94}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^14/1-13-'},1}.
  {label,344}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-lc$^13/1-12-', 1, 346}.
  {label,345}.
    {line,[{location,"lc_SUITE.erl",93}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^13/1-12-'},1}.
  {label,346}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-basic/1-lc$^12/1-11-', 1, 348}.
  {label,347}.
    {line,[{location,"lc_SUITE.erl",87}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^12/1-11-'},1}.
  {label,348}.
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
    {test,is_nonempty_list,{f,350},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bif,element,
         {f,349},
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
          {f,349},
          [{tr,{x,2},{t_atom,[d,false,true]}},{atom,true}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,348}}. % '-basic/1-lc$^12/1-11-'/1
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
  {label,349}.
    {call_only,1,{f,348}}. % '-basic/1-lc$^12/1-11-'/1
  {label,350}.
    return.


{function, '-basic/1-lc$^11/1-10-', 2, 352}.
  {label,351}.
    {line,[{location,"lc_SUITE.erl",83}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^11/1-10-'},2}.
  {label,352}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,354},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,71}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,353},[{x,0},{atom,true}]}.
    {test,is_ne_exact,{f,353},[{y,1},{integer,7}]}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {call,2,{f,352}}. % '-basic/1-lc$^11/1-10-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,353}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,352},3}. % '-basic/1-lc$^11/1-10-'/2
  {label,354}.
    {move,{x,1},{x,0}}.
    return.


{function, '-basic/1-lc$^10/1-9-', 1, 356}.
  {label,355}.
    {line,[{location,"lc_SUITE.erl",84}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^10/1-9-'},1}.
  {label,356}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,359},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,71}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ne_exact,{f,357},[{x,0},{atom,true}]}.
    {test,is_eq_exact,{f,358},[{y,1},{integer,6}]}.
  {label,357}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,356},2}. % '-basic/1-lc$^10/1-9-'/1
  {label,358}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,356}}. % '-basic/1-lc$^10/1-9-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,359}.
    return.


{function, '-basic/1-lc$^9/1-8-', 1, 361}.
  {label,360}.
    {line,[{location,"lc_SUITE.erl",80}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^9/1-8-'},1}.
  {label,361}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,364},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,71}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ne_exact,{f,362},[{x,0},{atom,true}]}.
    {test,is_eq_exact,{f,363},[{y,1},{integer,6}]}.
  {label,362}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,361},2}. % '-basic/1-lc$^9/1-8-'/1
  {label,363}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,361}}. % '-basic/1-lc$^9/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,364}.
    return.


{function, '-basic/1-lc$^8/1-7-', 1, 366}.
  {label,365}.
    {line,[{location,"lc_SUITE.erl",79}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^8/1-7-'},1}.
  {label,366}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,368},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,71}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,367},[{x,0},{atom,true}]}.
    {test,is_ne_exact,{f,367},[{y,1},{integer,7}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,366}}. % '-basic/1-lc$^8/1-7-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,367}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,366},2}. % '-basic/1-lc$^8/1-7-'/1
  {label,368}.
    return.


{function, '-basic/1-lc$^7/1-6-', 1, 370}.
  {label,369}.
    {line,[{location,"lc_SUITE.erl",78}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^7/1-6-'},1}.
  {label,370}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,372},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,71}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,371},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,370},2}. % '-basic/1-lc$^7/1-6-'/1
  {label,371}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,370}}. % '-basic/1-lc$^7/1-6-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,372}.
    return.


{function, '-basic/1-lc$^6/1-5-', 1, 374}.
  {label,373}.
    {line,[{location,"lc_SUITE.erl",77}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^6/1-5-'},1}.
  {label,374}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,376},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,1,{f,71}}. % odd/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,375},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,374}}. % '-basic/1-lc$^6/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,375}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,374},2}. % '-basic/1-lc$^6/1-5-'/1
  {label,376}.
    return.


{function, '-basic/1-lc$^5/1-4-', 1, 378}.
  {label,377}.
    {line,[{location,"lc_SUITE.erl",76}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^5/1-4-'},1}.
  {label,378}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,379},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,378}}. % '-basic/1-lc$^5/1-4-'/1
  {label,379}.
    return.


{function, '-basic/1-lc$^4/1-3-', 1, 381}.
  {label,380}.
    {line,[{location,"lc_SUITE.erl",75}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^4/1-3-'},1}.
  {label,381}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,383},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_lt,{f,382},[{integer,3},{x,1}]}.
    {test,is_lt,
          {f,382},
          [{tr,{x,1},
               {t_union,{t_atom,any},
                        {t_list,any,any},
                        {t_number,{3,'+inf'}},
                        {t_tuple,0,false,#{}},
                        other}},
           {integer,7}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,381}}. % '-basic/1-lc$^4/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{3,7}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,382}.
    {call_only,1,{f,381}}. % '-basic/1-lc$^4/1-3-'/1
  {label,383}.
    return.


{function, '-basic/1-lc$^3/1-2-', 1, 385}.
  {label,384}.
    {line,[{location,"lc_SUITE.erl",74}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^3/1-2-'},1}.
  {label,385}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,387},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_lt,{f,386},[{x,1},{integer,6}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,385}}. % '-basic/1-lc$^3/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,{'-inf',6}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,386}.
    {call_only,1,{f,385}}. % '-basic/1-lc$^3/1-2-'/1
  {label,387}.
    return.


{function, '-basic/1-fun-2-', 1, 389}.
  {label,388}.
    {line,[{location,"lc_SUITE.erl",73}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-fun-2-'},1}.
  {label,389}.
    {test,is_tagged_tuple,{f,388},[{x,0},2,{atom,x}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    return.


{function, '-basic/1-lc$^1/1-0-', 1, 391}.
  {label,390}.
    {line,[{location,"lc_SUITE.erl",72}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-lc$^1/1-0-'},1}.
  {label,391}.
    {test,is_nonempty_list,{f,392},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,391}}. % '-basic/1-lc$^1/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,[x]}}},
                                  nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,x},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,392}.
    {test,is_nil,{f,393},[{x,0}]}.
    return.
  {label,393}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-basic/1-fun-0-', 1, 395}.
  {label,394}.
    {line,[{location,"lc_SUITE.erl",71}]}.
    {func_info,{atom,lc_SUITE},{atom,'-basic/1-fun-0-'},1}.
  {label,395}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,0}]}}.
    return.
