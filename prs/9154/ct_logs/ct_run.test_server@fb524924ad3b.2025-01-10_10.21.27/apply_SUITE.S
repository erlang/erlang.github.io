{module, apply_SUITE}.  %% version = 0

{exports, [{all,0},
           {bar,1},
           {baz,2},
           {end_per_group,2},
           {end_per_suite,1},
           {foo,0},
           {fun_apply,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {involved,1},
           {mfa,1},
           {module_info,0},
           {module_info,1},
           {suite,0}]}.

{attributes, []}.

{labels, 212}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"apply_SUITE.erl",30}]}.
    {func_info,{atom,apply_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"apply_SUITE.erl",32}]}.
    {func_info,{atom,apply_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"apply_SUITE.erl",35}]}.
    {func_info,{atom,apply_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"apply_SUITE.erl",36}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},{x,0},{literal,[mfa,fun_apply,involved]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"apply_SUITE.erl",42}]}.
    {func_info,{atom,apply_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,apply_SUITE},{x,0}}.
    {line,[{location,"apply_SUITE.erl",43}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"apply_SUITE.erl",46}]}.
    {func_info,{atom,apply_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"apply_SUITE.erl",49}]}.
    {func_info,{atom,apply_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"apply_SUITE.erl",52}]}.
    {func_info,{atom,apply_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, mfa, 1, 16}.
  {label,15}.
    {line,[{location,"apply_SUITE.erl",60}]}.
    {func_info,{atom,apply_SUITE},{atom,mfa},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {line,[{location,"apply_SUITE.erl",61}]}.
    {call_ext,0,{extfunc,apply_SUITE,foo,0}}.
    {call,1,{f,210}}. % '-mfa/1-fun-0-'/1
    {test,is_eq_exact,{f,48},[{x,0},{atom,ok}]}.
    {move,{literal,[a,b]},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",62}]}.
    {call_ext,1,{extfunc,apply_SUITE,bar,1}}.
    {call,1,{f,207}}. % '-mfa/1-fun-1-'/1
    {test,is_eq_exact,{f,47},[{x,0},{literal,{[a,b]}}]}.
    {move,{literal,{a}},{x,1}}.
    {move,{integer,39},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",63}]}.
    {call_ext,2,{extfunc,apply_SUITE,baz,2}}.
    {call,1,{f,204}}. % '-mfa/1-fun-2-'/1
    {test,is_eq_exact,{f,46},[{x,0},{literal,{39,{a}}}]}.
    {move,{atom,apply_SUITE},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",65}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,foo},{x,1}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",66}]}.
    {apply,0}.
    {move,{y,0},{x,1}}.
    {call,2,{f,201}}. % '-mfa/1-fun-3-'/2
    {test,is_eq_exact,{f,45},[{x,0},{atom,ok}]}.
    {move,{y,0},{x,1}}.
    {move,{atom,bar},{x,2}}.
    {move,{literal,[a,b]},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",67}]}.
    {apply,1}.
    {move,{y,0},{x,1}}.
    {call,2,{f,198}}. % '-mfa/1-fun-4-'/2
    {test,is_eq_exact,{f,44},[{x,0},{literal,{[a,b]}}]}.
    {move,{y,0},{x,2}}.
    {move,{literal,{a}},{x,1}}.
    {move,{atom,baz},{x,3}}.
    {move,{integer,39},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",68}]}.
    {apply,2}.
    {move,{y,0},{x,1}}.
    {call,2,{f,195}}. % '-mfa/1-fun-5-'/2
    {test,is_eq_exact,{f,43},[{x,0},{literal,{39,{a}}}]}.
    {move,{atom,foo},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",70}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,apply_SUITE},{x,0}}.
    {apply,0}.
    {call,1,{f,192}}. % '-mfa/1-fun-6-'/1
    {test,is_eq_exact,{f,42},[{x,0},{atom,ok}]}.
    {move,{atom,bar},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",71}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{atom,apply_SUITE},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[a,b]},{x,0}}.
    {apply,1}.
    {call,1,{f,189}}. % '-mfa/1-fun-7-'/1
    {test,is_eq_exact,{f,41},[{x,0},{literal,{[a,b]}}]}.
    {move,{atom,baz},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",72}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{atom,apply_SUITE},{x,2}}.
    {move,{literal,{a}},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{integer,39},{x,0}}.
    {apply,2}.
    {call,1,{f,186}}. % '-mfa/1-fun-8-'/1
    {test,is_eq_exact,{f,40},[{x,0},{literal,{39,{a}}}]}.
    {move,{atom,foo},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",74}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {apply,0}.
    {move,{y,0},{x,1}}.
    {call,2,{f,183}}. % '-mfa/1-fun-9-'/2
    {test,is_eq_exact,{f,39},[{x,0},{atom,ok}]}.
    {move,{atom,bar},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",75}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[a,b]},{x,0}}.
    {apply,1}.
    {move,{y,0},{x,1}}.
    {call,2,{f,180}}. % '-mfa/1-fun-10-'/2
    {test,is_eq_exact,{f,38},[{x,0},{literal,{[a,b]}}]}.
    {move,{atom,baz},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",76}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{literal,{a}},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{integer,39},{x,0}}.
    {apply,2}.
    {move,{y,0},{x,1}}.
    {call,2,{f,177}}. % '-mfa/1-fun-11-'/2
    {test,is_eq_exact,{f,37},[{x,0},{literal,{39,{a}}}]}.
    {'catch',{y,4},{f,17}}.
    {move,{atom,bazzzzzz},{x,0}}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",78}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{atom,b},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{atom,a},{x,0}}.
    {apply,2}.
    {move,{y,0},{x,1}}.
    {call,2,{f,174}}. % '-mfa/1-fun-12-'/2
  {label,17}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,36},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,18}}.
    {move,{atom,baz},{x,1}}.
    {move,{literal,[a,b]},{x,2}}.
    {move,{literal,{}},{x,0}}.
    {line,[{scope,[7,8]},{location,"apply_SUITE.erl",79}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {call,1,{f,171}}. % '-mfa/1-fun-13-'/1
  {label,18}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,35},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,19}}.
    {move,nil,{x,1}}.
    {move,{literal,[a,b]},{x,2}}.
    {move,{atom,apply_SUITE},{x,0}}.
    {line,[{scope,[5,6]},{location,"apply_SUITE.erl",80}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {call,1,{f,168}}. % '-mfa/1-fun-14-'/1
  {label,19}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,34},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,20}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"apply_SUITE.erl",81}]}.
    {call,1,{f,50}}. % bad_literal_call/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,20}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,33},[{x,0},2,{atom,'EXIT'}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[1,2]},{location,"apply_SUITE.erl",83}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{atom,foo},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {test,is_eq_exact,{f,32},[{x,0},{atom,ok}]}.
    {move,{literal,[[a,b|c]]},{x,0}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",84}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{atom,bar},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {test,is_eq_exact,{f,31},[{x,0},{literal,{[a,b|c]}}]}.
    {move,{literal,[[xx],{a}]},{x,0}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",85}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{atom,baz},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,apply_SUITE},{x,0}}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {test,is_eq_exact,{f,30},[{x,0},{literal,{[xx],{a}}}]}.
    {move,{atom,erlang},{x,0}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",87}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {bif,self,{f,0},[],{y,4}}.
    {move,{x,0},{y,3}}.
    {move,{atom,self},{x,1}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",89}]}.
    {apply,0}.
    {move,{y,3},{x,1}}.
    {call,2,{f,165}}. % '-mfa/1-fun-15-'/2
    {test,is_eq_exact,{f,29},[{x,0},{tr,{y,4},pid}]}.
    {move,{y,3},{x,1}}.
    {move,{atom,abs},{x,2}}.
    {move,{y,0},{y,4}}.
    {trim,3,2}.
    {move,{float,-42.0},{x,0}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",90}]}.
    {apply,1}.
    {move,{y,0},{x,1}}.
    {call,2,{f,162}}. % '-mfa/1-fun-16-'/2
    {test,is_eq_exact,{f,28},[{x,0},{float,42.0}]}.
    {move,{y,0},{x,2}}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,element},{x,3}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",91}]}.
    {apply,2}.
    {move,{y,0},{x,1}}.
    {call,2,{f,159}}. % '-mfa/1-fun-17-'/2
    {test,is_eq_exact,{f,27},[{x,0},{atom,b}]}.
    {move,{y,0},{x,1}}.
    {move,{atom,is_function},{x,2}}.
    {move,{literal,fun erlang:list_to_binary/1},{x,0}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",92}]}.
    {apply,1}.
    {move,{y,0},{x,1}}.
    {call,2,{f,156}}. % '-mfa/1-fun-18-'/2
    {test,is_eq_exact,{f,26},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,149},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{atom,is_function},{x,2}}.
    {move,{y,0},{x,1}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",93}]}.
    {apply,1}.
    {move,{y,0},{x,1}}.
    {call,2,{f,151}}. % '-mfa/1-fun-20-'/2
    {test,is_eq_exact,{f,25},[{x,0},{atom,true}]}.
    {move,{y,0},{x,1}}.
    {move,{atom,is_function},{x,2}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",94}]}.
    {apply,1}.
    {move,{y,0},{x,1}}.
    {call,2,{f,146}}. % '-mfa/1-fun-22-'/2
    {test,is_eq_exact,{f,24},[{x,0},{atom,false}]}.
    {move,{y,0},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{atom,is_function},{x,3}}.
    {move,{literal,fun erlang:list_to_binary/1},{x,0}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",95}]}.
    {apply,2}.
    {move,{y,0},{x,1}}.
    {call,2,{f,143}}. % '-mfa/1-fun-23-'/2
    {test,is_eq_exact,{f,23},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,136},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,2}}.
    {move,{atom,is_function},{x,3}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",96}]}.
    {apply,2}.
    {move,{y,0},{x,1}}.
    {call,2,{f,138}}. % '-mfa/1-fun-25-'/2
    {test,is_eq_exact,{f,22},[{x,0},{atom,true}]}.
    {move,{y,0},{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{atom,is_function},{x,3}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",97}]}.
    {apply,2}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,133}}. % '-mfa/1-fun-27-'/2
    {test,is_eq_exact,{f,21},[{x,0},{atom,false}]}.
    {move,{atom,foo},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",99}]}.
    {apply_last,0,1}.
  {label,21}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",97}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",96}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",95}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",94}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",93}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",92}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",91}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",90}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",89}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",85}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",84}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",83}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,[0]},{location,"apply_SUITE.erl",81}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,[2]},{location,"apply_SUITE.erl",80}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,[4]},{location,"apply_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{scope,[6]},{location,"apply_SUITE.erl",78}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",76}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",75}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",74}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",72}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",71}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",70}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",68}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",67}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",66}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",63}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",62}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{scope,"\b"},{location,"apply_SUITE.erl",61}]}.
    {badmatch,{x,0}}.


{function, bad_literal_call, 1, 50}.
  {label,49}.
    {line,[{location,"apply_SUITE.erl",105}]}.
    {func_info,{atom,apply_SUITE},{atom,bad_literal_call},1}.
  {label,50}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {allocate,0,0}.
    {move,{atom,foo},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"apply_SUITE.erl",106}]}.
    {apply_last,0,0}.


{function, foo, 0, 52}.
  {label,51}.
    {line,[{location,"apply_SUITE.erl",108}]}.
    {func_info,{atom,apply_SUITE},{atom,foo},0}.
  {label,52}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bar, 1, 54}.
  {label,53}.
    {line,[{location,"apply_SUITE.erl",111}]}.
    {func_info,{atom,apply_SUITE},{atom,bar},1}.
  {label,54}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    return.


{function, baz, 2, 56}.
  {label,55}.
    {line,[{location,"apply_SUITE.erl",114}]}.
    {func_info,{atom,apply_SUITE},{atom,baz},2}.
  {label,56}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, fun_apply, 1, 58}.
  {label,57}.
    {line,[{location,"apply_SUITE.erl",121}]}.
    {func_info,{atom,apply_SUITE},{atom,fun_apply},1}.
  {label,58}.
    {test,is_list,{f,57},[{x,0}]}.
    {allocate,1,0}.
    {bif,self,{f,0},[],{y,0}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"apply_SUITE.erl",124}]}.
    {call,1,{f,130}}. % '-fun_apply/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {test,is_eq_exact,{f,67},[{tr,{x,0},pid},{tr,{y,0},pid}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,123},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,pid}]}}.
    {line,[{location,"apply_SUITE.erl",125}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {call_fun2,
        {atom,unsafe},
        0,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {call,1,{f,125}}. % '-fun_apply/1-fun-4-'/1
    {test,is_eq_exact,{f,66},[{x,0},{tr,{y,0},pid}]}.
    {trim,1,0}.
    {line,[{location,"apply_SUITE.erl",126}]}.
    {call_ext,0,{extfunc,apply_SUITE,foo,0}}.
    {call,1,{f,120}}. % '-fun_apply/1-fun-6-'/1
    {test,is_eq_exact,{f,65},[{x,0},{atom,ok}]}.
    {move,{literal,fun apply_SUITE:foo/0},{x,0}}.
    {line,[{location,"apply_SUITE.erl",127}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {call_fun2,
        {atom,unsafe},
        0,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {call,1,{f,117}}. % '-fun_apply/1-fun-7-'/1
    {test,is_eq_exact,{f,64},[{x,0},{atom,ok}]}.
    {move,{integer,-42},{x,0}}.
    {line,[{location,"apply_SUITE.erl",129}]}.
    {call,1,{f,114}}. % '-fun_apply/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_integer,{-42,-42}}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,107},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_cons,any,any}}]}}.
    {line,[{location,"apply_SUITE.erl",130}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[yy]},{x,0}}.
    {call_fun2,
        {atom,unsafe},
        1,
        {tr,{x,1},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {call,1,{f,109}}. % '-fun_apply/1-fun-12-'/1
    {test,is_eq_exact,{f,63},[{x,0},{literal,[x,yy]}]}.
    {move,{literal,[a|b]},{x,0}}.
    {line,[{location,"apply_SUITE.erl",131}]}.
    {call_ext,1,{extfunc,apply_SUITE,bar,1}}.
    {call,1,{f,104}}. % '-fun_apply/1-fun-14-'/1
    {test,is_eq_exact,{f,62},[{x,0},{literal,{[a|b]}}]}.
    {move,{literal,fun apply_SUITE:bar/1},{x,0}}.
    {line,[{location,"apply_SUITE.erl",132}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[a|b]},{x,0}}.
    {call_fun2,
        {atom,unsafe},
        1,
        {tr,{x,1},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {call,1,{f,101}}. % '-fun_apply/1-fun-15-'/1
    {test,is_eq_exact,{f,61},[{x,0},{literal,{[a|b]}}]}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"apply_SUITE.erl",134}]}.
    {call,1,{f,98}}. % '-fun_apply/1-fun-17-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,91},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {line,[{location,"apply_SUITE.erl",135}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{literal,[b]},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,a},{x,0}}.
    {call_fun2,
        {atom,unsafe},
        2,
        {tr,{x,2},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {call,1,{f,93}}. % '-fun_apply/1-fun-20-'/1
    {test,is_eq_exact,{f,60},[{x,0},{literal,{a,[b]}}]}.
    {move,{literal,fun apply_SUITE:baz/2},{x,0}}.
    {line,[{location,"apply_SUITE.erl",136}]}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{literal,{a}},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{integer,42},{x,0}}.
    {call_fun2,
        {atom,unsafe},
        2,
        {tr,{x,2},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {call,1,{f,88}}. % '-fun_apply/1-fun-22-'/1
    {test,is_eq_exact,{f,59},[{x,0},{literal,{42,{a}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,59}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{location,"apply_SUITE.erl",135}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"apply_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"apply_SUITE.erl",131}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{location,"apply_SUITE.erl",130}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"apply_SUITE.erl",127}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{location,"apply_SUITE.erl",126}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{location,"apply_SUITE.erl",125}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{location,"apply_SUITE.erl",124}]}.
    {badmatch,{x,0}}.


{function, involved, 1, 69}.
  {label,68}.
    {line,[{location,"apply_SUITE.erl",140}]}.
    {func_info,{atom,apply_SUITE},{atom,involved},1}.
  {label,69}.
    {allocate,0,0}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,message},{x,1}}.
    {line,[{location,"apply_SUITE.erl",141}]}.
    send.
    {line,[{location,"apply_SUITE.erl",142}]}.
    {call,0,{f,72}}. % involved_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,70},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,message},{x,1}}.
    {line,[{location,"apply_SUITE.erl",144}]}.
    send.
    {line,[{location,"apply_SUITE.erl",145}]}.
    {call,0,{f,77}}. % involved_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,70}.
    {line,[{location,"apply_SUITE.erl",142}]}.
    {badmatch,{atom,error}}.


{function, involved_1, 0, 72}.
  {label,71}.
    {line,[{location,"apply_SUITE.erl",148}]}.
    {func_info,{atom,apply_SUITE},{atom,involved_1},0}.
  {label,72}.
    {allocate,1,0}.
    {'try',{y,0},{f,75}}.
  {label,73}.
    {loop_rec,{f,74},{x,0}}.
    remove_message.
    {try_end,{y,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,74}.
    {wait,{f,73}}.
  {label,75}.
    {try_case,{y,0}}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, involved_2, 0, 77}.
  {label,76}.
    {line,[{location,"apply_SUITE.erl",162}]}.
    {func_info,{atom,apply_SUITE},{atom,involved_2},0}.
  {label,77}.
    {allocate,1,0}.
    {'try',{y,0},{f,80}}.
  {label,78}.
    {loop_rec,{f,79},{x,0}}.
    remove_message.
    {move,{literal,fun erlang:atom_to_list/1},{x,0}}.
    {line,[{scope,[1]},{location,"apply_SUITE.erl",166}]}.
    {call_fun,0}.
    {jump,{f,80}}.
  {label,79}.
    {wait,{f,78}}.
  {label,80}.
    {try_case,{y,0}}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, id, 1, 82}.
  {label,81}.
    {line,[{location,"apply_SUITE.erl",176}]}.
    {func_info,{atom,apply_SUITE},{atom,id},1}.
  {label,82}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    return.


{function, module_info, 0, 84}.
  {label,83}.
    {line,[]}.
    {func_info,{atom,apply_SUITE},{atom,module_info},0}.
  {label,84}.
    {move,{atom,apply_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 86}.
  {label,85}.
    {line,[]}.
    {func_info,{atom,apply_SUITE},{atom,module_info},1}.
  {label,86}.
    {move,{x,0},{x,1}}.
    {move,{atom,apply_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-fun_apply/1-fun-22-', 1, 88}.
  {label,87}.
    {line,[{location,"apply_SUITE.erl",136}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-22-'},1}.
  {label,88}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,fun apply_SUITE:baz/2},{x,0}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{literal,{a}},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{integer,42},{x,0}}.
    {call_fun2,
        {atom,unsafe},
        2,
        {tr,{x,2},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {test,is_eq_exact,{f,89},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,89}.
    {badmatch,{x,0}}.


{function, '-fun_apply/1-fun-21-', 2, 91}.
  {label,90}.
    {line,[{location,"apply_SUITE.erl",135}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-21-'},2}.
  {label,91}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-fun_apply/1-fun-20-', 1, 93}.
  {label,92}.
    {line,[{location,"apply_SUITE.erl",135}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-20-'},1}.
  {label,93}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,96},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{literal,[b]},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,a},{x,0}}.
    {call_fun2,
        {atom,unsafe},
        2,
        {tr,{x,2},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {test,is_eq_exact,{f,94},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,94}.
    {badmatch,{x,0}}.


{function, '-fun_apply/1-fun-19-', 2, 96}.
  {label,95}.
    {line,[{location,"apply_SUITE.erl",135}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-19-'},2}.
  {label,96}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, '-fun_apply/1-fun-17-', 1, 98}.
  {label,97}.
    {line,[{location,"apply_SUITE.erl",134}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-17-'},1}.
  {label,98}.
    {test,is_eq_exact,{f,99},[{x,0},{literal,{a,b}}]}.
    return.
  {label,99}.
    {badmatch,{literal,{a,b}}}.


{function, '-fun_apply/1-fun-15-', 1, 101}.
  {label,100}.
    {line,[{location,"apply_SUITE.erl",132}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-15-'},1}.
  {label,101}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,fun apply_SUITE:bar/1},{x,0}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[a|b]},{x,0}}.
    {call_fun2,
        {atom,unsafe},
        1,
        {tr,{x,1},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {test,is_eq_exact,{f,102},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,102}.
    {badmatch,{x,0}}.


{function, '-fun_apply/1-fun-14-', 1, 104}.
  {label,103}.
    {line,[{location,"apply_SUITE.erl",131}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-14-'},1}.
  {label,104}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,[a|b]},{x,0}}.
    {call_ext,1,{extfunc,apply_SUITE,bar,1}}.
    {test,is_eq_exact,{f,105},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,105}.
    {badmatch,{x,0}}.


{function, '-fun_apply/1-fun-13-', 1, 107}.
  {label,106}.
    {line,[{location,"apply_SUITE.erl",130}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-13-'},1}.
  {label,107}.
    {test_heap,2,1}.
    {put_list,{atom,x},{x,0},{x,0}}.
    return.


{function, '-fun_apply/1-fun-12-', 1, 109}.
  {label,108}.
    {line,[{location,"apply_SUITE.erl",130}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-12-'},1}.
  {label,109}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,112},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_cons,any,any}}]}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[yy]},{x,0}}.
    {call_fun2,
        {atom,unsafe},
        1,
        {tr,{x,1},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {test,is_eq_exact,{f,110},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,110}.
    {badmatch,{x,0}}.


{function, '-fun_apply/1-fun-11-', 1, 112}.
  {label,111}.
    {line,[{location,"apply_SUITE.erl",130}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-11-'},1}.
  {label,112}.
    {test_heap,2,1}.
    {put_list,{atom,x},{x,0},{x,0}}.
    return.


{function, '-fun_apply/1-fun-9-', 1, 114}.
  {label,113}.
    {line,[{location,"apply_SUITE.erl",129}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-9-'},1}.
  {label,114}.
    {test,is_eq_exact,{f,115},[{x,0},{integer,-42}]}.
    return.
  {label,115}.
    {badmatch,{integer,-42}}.


{function, '-fun_apply/1-fun-7-', 1, 117}.
  {label,116}.
    {line,[{location,"apply_SUITE.erl",127}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-7-'},1}.
  {label,117}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,fun apply_SUITE:foo/0},{x,0}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {call_fun2,
        {atom,unsafe},
        0,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {test,is_eq_exact,{f,118},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,118}.
    {badmatch,{x,0}}.


{function, '-fun_apply/1-fun-6-', 1, 120}.
  {label,119}.
    {line,[{location,"apply_SUITE.erl",126}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-6-'},1}.
  {label,120}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {call_ext,0,{extfunc,apply_SUITE,foo,0}}.
    {test,is_eq_exact,{f,121},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,121}.
    {badmatch,{x,0}}.


{function, '-fun_apply/1-fun-5-', 0, 123}.
  {label,122}.
    {line,[{location,"apply_SUITE.erl",125}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-5-'},0}.
  {label,123}.
    {bif,self,{f,0},[],{x,0}}.
    return.


{function, '-fun_apply/1-fun-4-', 1, 125}.
  {label,124}.
    {line,[{location,"apply_SUITE.erl",125}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-4-'},1}.
  {label,125}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,128},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,pid}]}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {call_fun2,
        {atom,unsafe},
        0,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_list,
                    {t_union,none,
                        {t_cons,
                            {t_atom,[a,b,xx]},
                            {t_union,{t_atom,[c]},nil,none,none,none}},
                        none,
                        [{{1,{t_atom,[a]}},
                          {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                        none},
                    nil},
                none,none,
                {t_fun,any,any,any}}}}.
    {test,is_eq_exact,{f,126},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,126}.
    {badmatch,{x,0}}.


{function, '-fun_apply/1-fun-3-', 0, 128}.
  {label,127}.
    {line,[{location,"apply_SUITE.erl",125}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-3-'},0}.
  {label,128}.
    {bif,self,{f,0},[],{x,0}}.
    return.


{function, '-fun_apply/1-fun-1-', 1, 130}.
  {label,129}.
    {line,[{location,"apply_SUITE.erl",124}]}.
    {func_info,{atom,apply_SUITE},{atom,'-fun_apply/1-fun-1-'},1}.
  {label,130}.
    {bif,self,{f,0},[],{x,1}}.
    {test,is_eq_exact,{f,131},[{tr,{x,1},pid},{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,131}.
    {badmatch,{x,1}}.


{function, '-mfa/1-fun-27-', 2, 133}.
  {label,132}.
    {line,[{location,"apply_SUITE.erl",97}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-27-'},2}.
  {label,133}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{atom,is_function},{x,3}}.
    {move,{atom,blurf},{x,0}}.
    {apply,2}.
    {test,is_eq_exact,{f,134},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,134}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-26-', 0, 136}.
  {label,135}.
    {line,[{location,"apply_SUITE.erl",96}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-26-'},0}.
  {label,136}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-mfa/1-fun-25-', 2, 138}.
  {label,137}.
    {line,[{location,"apply_SUITE.erl",96}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-25-'},2}.
  {label,138}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,141},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{x,1},{x,2}}.
    {move,{atom,is_function},{x,3}}.
    {move,{integer,0},{x,1}}.
    {apply,2}.
    {test,is_eq_exact,{f,139},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,139}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-24-', 0, 141}.
  {label,140}.
    {line,[{location,"apply_SUITE.erl",96}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-24-'},0}.
  {label,141}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-mfa/1-fun-23-', 2, 143}.
  {label,142}.
    {line,[{location,"apply_SUITE.erl",95}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-23-'},2}.
  {label,143}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{atom,is_function},{x,3}}.
    {move,{literal,fun erlang:list_to_binary/1},{x,0}}.
    {apply,2}.
    {test,is_eq_exact,{f,144},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,144}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-22-', 2, 146}.
  {label,145}.
    {line,[{location,"apply_SUITE.erl",94}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-22-'},2}.
  {label,146}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{atom,is_function},{x,2}}.
    {move,{atom,blurf},{x,0}}.
    {apply,1}.
    {test,is_eq_exact,{f,147},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,147}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-21-', 0, 149}.
  {label,148}.
    {line,[{location,"apply_SUITE.erl",93}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-21-'},0}.
  {label,149}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-mfa/1-fun-20-', 2, 151}.
  {label,150}.
    {line,[{location,"apply_SUITE.erl",93}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-20-'},2}.
  {label,151}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,154},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{atom,is_function},{x,2}}.
    {apply,1}.
    {test,is_eq_exact,{f,152},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,152}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-19-', 0, 154}.
  {label,153}.
    {line,[{location,"apply_SUITE.erl",93}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-19-'},0}.
  {label,154}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-mfa/1-fun-18-', 2, 156}.
  {label,155}.
    {line,[{location,"apply_SUITE.erl",92}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-18-'},2}.
  {label,156}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{atom,is_function},{x,2}}.
    {move,{literal,fun erlang:list_to_binary/1},{x,0}}.
    {apply,1}.
    {test,is_eq_exact,{f,157},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,157}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-17-', 2, 159}.
  {label,158}.
    {line,[{location,"apply_SUITE.erl",91}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-17-'},2}.
  {label,159}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,2}}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,element},{x,3}}.
    {move,{integer,2},{x,0}}.
    {apply,2}.
    {test,is_eq_exact,{f,160},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,160}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-16-', 2, 162}.
  {label,161}.
    {line,[{location,"apply_SUITE.erl",90}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-16-'},2}.
  {label,162}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{atom,abs},{x,2}}.
    {move,{float,-42.0},{x,0}}.
    {apply,1}.
    {test,is_eq_exact,{f,163},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,163}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-15-', 2, 165}.
  {label,164}.
    {line,[{location,"apply_SUITE.erl",89}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-15-'},2}.
  {label,165}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{atom,self},{x,1}}.
    {apply,0}.
    {test,is_eq_exact,{f,166},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,166}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-14-', 1, 168}.
  {label,167}.
    {line,[{location,"apply_SUITE.erl",80}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-14-'},1}.
  {label,168}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,nil,{x,1}}.
    {move,{literal,[a,b]},{x,2}}.
    {move,{atom,apply_SUITE},{x,0}}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {test,is_eq_exact,{f,169},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,169}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-13-', 1, 171}.
  {label,170}.
    {line,[{location,"apply_SUITE.erl",79}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-13-'},1}.
  {label,171}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,baz},{x,1}}.
    {move,{literal,[a,b]},{x,2}}.
    {move,{literal,{}},{x,0}}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {test,is_eq_exact,{f,172},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,172}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-12-', 2, 174}.
  {label,173}.
    {line,[{location,"apply_SUITE.erl",78}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-12-'},2}.
  {label,174}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,bazzzzzz},{x,0}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{atom,b},{x,1}}.
    {move,{x,0},{x,3}}.
    {trim,1,1}.
    {move,{atom,a},{x,0}}.
    {apply,2}.
    {test,is_eq_exact,{f,175},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,175}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-11-', 2, 177}.
  {label,176}.
    {line,[{location,"apply_SUITE.erl",76}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-11-'},2}.
  {label,177}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,baz},{x,0}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{literal,{a}},{x,1}}.
    {move,{x,0},{x,3}}.
    {trim,1,1}.
    {move,{integer,39},{x,0}}.
    {apply,2}.
    {test,is_eq_exact,{f,178},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,178}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-10-', 2, 180}.
  {label,179}.
    {line,[{location,"apply_SUITE.erl",75}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-10-'},2}.
  {label,180}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,bar},{x,0}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {trim,1,1}.
    {move,{literal,[a,b]},{x,0}}.
    {apply,1}.
    {test,is_eq_exact,{f,181},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,181}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-9-', 2, 183}.
  {label,182}.
    {line,[{location,"apply_SUITE.erl",74}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-9-'},2}.
  {label,183}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,foo},{x,0}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {apply,0}.
    {test,is_eq_exact,{f,184},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,184}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-8-', 1, 186}.
  {label,185}.
    {line,[{location,"apply_SUITE.erl",72}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-8-'},1}.
  {label,186}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,baz},{x,0}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{atom,apply_SUITE},{x,2}}.
    {move,{literal,{a}},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{integer,39},{x,0}}.
    {apply,2}.
    {test,is_eq_exact,{f,187},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,187}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-7-', 1, 189}.
  {label,188}.
    {line,[{location,"apply_SUITE.erl",71}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-7-'},1}.
  {label,189}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bar},{x,0}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{atom,apply_SUITE},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[a,b]},{x,0}}.
    {apply,1}.
    {test,is_eq_exact,{f,190},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,190}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-6-', 1, 192}.
  {label,191}.
    {line,[{location,"apply_SUITE.erl",70}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-6-'},1}.
  {label,192}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,foo},{x,0}}.
    {call,1,{f,82}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,apply_SUITE},{x,0}}.
    {apply,0}.
    {test,is_eq_exact,{f,193},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,193}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-5-', 2, 195}.
  {label,194}.
    {line,[{location,"apply_SUITE.erl",68}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-5-'},2}.
  {label,195}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,2}}.
    {move,{literal,{a}},{x,1}}.
    {move,{atom,baz},{x,3}}.
    {move,{integer,39},{x,0}}.
    {apply,2}.
    {test,is_eq_exact,{f,196},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,196}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-4-', 2, 198}.
  {label,197}.
    {line,[{location,"apply_SUITE.erl",67}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-4-'},2}.
  {label,198}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{atom,bar},{x,2}}.
    {move,{literal,[a,b]},{x,0}}.
    {apply,1}.
    {test,is_eq_exact,{f,199},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,199}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-3-', 2, 201}.
  {label,200}.
    {line,[{location,"apply_SUITE.erl",66}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-3-'},2}.
  {label,201}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_list,
                         {t_union,none,
                             {t_cons,
                                 {t_atom,[a,b,xx]},
                                 {t_union,{t_atom,[c]},nil,none,none,none}},
                             none,
                             [{{1,{t_atom,[a]}},
                               {t_tuple,1,true,#{1 => {t_atom,[a]}}}}],
                             none},
                         nil},
                     none,none,
                     {t_fun,any,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{atom,foo},{x,1}}.
    {apply,0}.
    {test,is_eq_exact,{f,202},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,202}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-2-', 1, 204}.
  {label,203}.
    {line,[{location,"apply_SUITE.erl",63}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-2-'},1}.
  {label,204}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,{a}},{x,1}}.
    {move,{integer,39},{x,0}}.
    {call_ext,2,{extfunc,apply_SUITE,baz,2}}.
    {test,is_eq_exact,{f,205},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,205}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-1-', 1, 207}.
  {label,206}.
    {line,[{location,"apply_SUITE.erl",62}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-1-'},1}.
  {label,207}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,[a,b]},{x,0}}.
    {call_ext,1,{extfunc,apply_SUITE,bar,1}}.
    {test,is_eq_exact,{f,208},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,208}.
    {badmatch,{x,0}}.


{function, '-mfa/1-fun-0-', 1, 210}.
  {label,209}.
    {line,[{location,"apply_SUITE.erl",61}]}.
    {func_info,{atom,apply_SUITE},{atom,'-mfa/1-fun-0-'},1}.
  {label,210}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {call_ext,0,{extfunc,apply_SUITE,foo,0}}.
    {test,is_eq_exact,{f,211},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,211}.
    {badmatch,{x,0}}.
