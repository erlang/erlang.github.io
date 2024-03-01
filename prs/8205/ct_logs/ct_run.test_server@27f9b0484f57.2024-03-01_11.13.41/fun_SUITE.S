{module, fun_SUITE}.  %% version = 0

{exports, [{all,0},
           {badarity,1},
           {badfun,1},
           {bif_fun,1},
           {call_me,1},
           {coverage,1},
           {dup1,0},
           {dup2,0},
           {duplicated_fun,1},
           {eep37,1},
           {end_per_group,2},
           {end_per_suite,1},
           {external,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {module_info,0},
           {module_info,1},
           {otp_7202,1},
           {overwritten_fun,1},
           {parallel_scopes,1},
           {suite,0},
           {test1,1},
           {unused_fun,1}]}.

{attributes, []}.

{labels, 380}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"fun_SUITE.erl",34}]}.
    {func_info,{atom,fun_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"fun_SUITE.erl",36}]}.
    {func_info,{atom,fun_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"fun_SUITE.erl",39}]}.
    {func_info,{atom,fun_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [test1,overwritten_fun,otp_7202,bif_fun,external,eep37,
                        badarity,badfun,duplicated_fun,unused_fun,
                        parallel_scopes,coverage]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"fun_SUITE.erl",46}]}.
    {func_info,{atom,fun_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,fun_SUITE},{x,0}}.
    {line,[{location,"fun_SUITE.erl",47}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"fun_SUITE.erl",50}]}.
    {func_info,{atom,fun_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"fun_SUITE.erl",53}]}.
    {func_info,{atom,fun_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"fun_SUITE.erl",56}]}.
    {func_info,{atom,fun_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, l1, 0, 16}.
  {label,15}.
    {line,[{location,"fun_SUITE.erl",63}]}.
    {func_info,{atom,fun_SUITE},{atom,l1},0}.
  {label,16}.
    {allocate,1,0}.
    {'catch',{y,0},{f,17}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"fun_SUITE.erl",66}]}.
    {call,1,{f,379}}. % '-l1/0-fun-4-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,17}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,18},[{x,0},2,{atom,'EXIT'}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,376},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{integer,5},{x,1}}.
    {line,[{scope,[1,2]},{location,"fun_SUITE.erl",67}]}.
    {call,2,{f,376}}. % '-l1/0-fun-2-'/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,373},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_number,any}}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{integer,1},{x,1}}.
    {line,[{scope,[1,2]},{location,"fun_SUITE.erl",68}]}.
    {call,2,{f,373}}. % '-l1/0-fun-0-'/2
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test_heap,10,0}.
    {put_tuple2,{x,0},
                {list,[{y,0},
                       {literal,"( begin F = fun ( _ , 1 ) -> 1 ; ( F , N ) -> N * F ( F , N - 1 ) end , F ( F , 5 ) end )"},
                       {integer,120}]}}.
    {put_list,{x,0},
              {literal,[{ok,"( begin F = fun ( _ , 1 ) -> 1 ; ( F , N ) -> N * F ( F , N - 1 ) end , F ( F , 1 ) , ok end )",
                            ok}]},
              {x,0}}.
    {put_list,{literal,{ok,"( begin G = fun ( 1 = 0 ) -> ok end , { 'EXIT' , _ } = ( catch G ( 2 ) ) , ok end )",
                           ok}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{1,
                        "( begin _A = 3 , F = fun ( _A ) -> 1 ; ( _ ) -> 2 end , F ( 2 ) end )",
                        1}},
              {x,0},
              {x,0}}.
    {deallocate,1}.
    return.
  {label,18}.
    {line,[{scope,[0]},{location,"fun_SUITE.erl",66}]}.
    {badmatch,{x,0}}.


{function, test1, 1, 20}.
  {label,19}.
    {line,[{location,"fun_SUITE.erl",71}]}.
    {func_info,{atom,fun_SUITE},{atom,test1},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,32},0,0,{y,0},{list,[]}}.
    {line,[{location,"fun_SUITE.erl",72}]}.
    {call,0,{f,16}}. % l1/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,3,true,
                         #{1 =>
                               {t_union,
                                   {t_atom,[ok]},
                                   none,
                                   {t_number,any},
                                   none,none},
                           2 => {t_cons,{t_integer,{32,125}},nil},
                           3 =>
                               {t_union,
                                   {t_atom,[ok]},
                                   none,
                                   {t_integer,{1,120}},
                                   none,none}}},
                     nil}}]}}.
    {move,nil,{x,1}}.
    {call,2,{f,27}}. % eval_list/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,4,true,
                         #{1 =>
                               {t_union,
                                   {t_atom,[ok]},
                                   none,
                                   {t_number,any},
                                   none,none},
                           3 => {t_cons,{t_integer,{32,125}},nil},
                           4 =>
                               {t_union,
                                   {t_atom,[ok]},
                                   none,
                                   {t_integer,{1,120}},
                                   none,none}}},
                     nil}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,lists,foreach,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, evaluate, 2, 22}.
  {label,21}.
    {line,[{location,"fun_SUITE.erl",75}]}.
    {func_info,{atom,fun_SUITE},{atom,evaluate},2}.
  {label,22}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{32,125}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {allocate,0,1}.
    {move,{literal," . "},{x,1}}.
    {line,[{location,"fun_SUITE.erl",77}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {call_ext,1,{extfunc,erl_scan,string,1}}.
    {test,is_tagged_tuple,{f,25},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"fun_SUITE.erl",78}]}.
    {call_ext,1,{extfunc,erl_parse,parse_exprs,1}}.
    {test,is_tagged_tuple,{f,24},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,24},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,24},[{x,1}]}.
    {move,{x,2},{x,0}}.
    {line,[{location,"fun_SUITE.erl",79}]}.
    {call_ext,2,{extfunc,erl_eval,expr,2}}.
    {test,is_tagged_tuple,{f,23},[{x,0},3,{atom,value}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,0}.
    return.
  {label,23}.
    {case_end,{x,0}}.
  {label,24}.
    {line,[{location,"fun_SUITE.erl",78}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{location,"fun_SUITE.erl",76}]}.
    {badmatch,{x,0}}.


{function, eval_list, 2, 27}.
  {label,26}.
    {line,[{location,"fun_SUITE.erl",84}]}.
    {func_info,{atom,fun_SUITE},{atom,eval_list},2}.
  {label,27}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,3,true,
                         #{1 =>
                               {t_union,
                                   {t_atom,[ok]},
                                   none,
                                   {t_number,any},
                                   none,none},
                           2 => {t_cons,{t_integer,{32,125}},nil},
                           3 =>
                               {t_union,
                                   {t_atom,[ok]},
                                   none,
                                   {t_integer,{1,120}},
                                   none,none}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {test,is_nonempty_list,{f,30},[{x,0}]}.
    {allocate,4,2}.
    {get_list,{x,0},{y,2},{y,1}}.
    {get_tuple_element,{y,2},1,{y,0}}.
    {'catch',{y,3},{f,28}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"fun_SUITE.erl",87}]}.
    {call,2,{f,22}}. % evaluate/2
  {label,28}.
    {catch_end,{y,3}}.
    {move,{x,0},{y,3}}.
    {test,is_tagged_tuple,{f,29},[{y,3},2,{atom,'EXIT'}]}.
    {test_heap,6,0}.
    {get_tuple_element,{y,3},1,{y,3}}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {trim,3,1}.
    {move,{literal,"Evaluation error: ~p, ~p, ~p~n"},{x,0}}.
    {line,[{scope,[1,2]},{location,"fun_SUITE.erl",89}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[1,2]},{location,"fun_SUITE.erl",90}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},1}.
  {label,29}.
    {move,nil,{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,3}.
    {line,[{scope,[0]},{location,"fun_SUITE.erl",92}]}.
    {call,2,{f,27}}. % eval_list/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,4,true,
                         #{1 =>
                               {t_union,
                                   {t_atom,[ok]},
                                   none,
                                   {t_number,any},
                                   none,none},
                           3 => {t_cons,{t_integer,{32,125}},nil},
                           4 =>
                               {t_union,
                                   {t_atom,[ok]},
                                   none,
                                   {t_integer,{1,120}},
                                   none,none}}},
                     nil}}]}}.
    {test_heap,7,1}.
    {get_tuple_element,{y,1},0,{x,1}}.
    {get_tuple_element,{y,1},2,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,2},{y,0},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,30}.
    return.


{function, one_test, 1, 32}.
  {label,31}.
    {line,[{location,"fun_SUITE.erl",95}]}.
    {func_info,{atom,fun_SUITE},{atom,one_test},1}.
  {label,32}.
    {test,is_tuple,{f,31},[{x,0}]}.
    {test,test_arity,{f,31},[{x,0},4]}.
    {allocate_heap,3,4,1}.
    {move,{x,0},{y,2}}.
    {get_tuple_element,{x,0},2,{y,1}}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {put_list,{y,0},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {move,{literal,"  ~s, ~p~n"},{x,0}}.
    {line,[{location,"fun_SUITE.erl",96}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {get_tuple_element,{y,2},0,{x,0}}.
    {test,is_ne,{f,33},[{x,0},{y,0}]}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {move,{literal,"ERROR: Compiled: ~p. Expected ~p. Got ~p.~n"},{x,0}}.
    {line,[{location,"fun_SUITE.erl",101}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,comp},{x,0}}.
    {line,[{location,"fun_SUITE.erl",103}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,33}.
    {get_tuple_element,{y,2},1,{x,0}}.
    {test,is_eq,{f,34},[{x,0},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,34}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {trim,3,0}.
    {move,{literal,"ERROR: Interpreted: ~p. Expected ~p. Got ~p.~n"},{x,0}}.
    {line,[{location,"fun_SUITE.erl",109}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,comp},{x,0}}.
    {line,[{location,"fun_SUITE.erl",111}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.


{function, overwritten_fun, 1, 36}.
  {label,35}.
    {line,[{location,"fun_SUITE.erl",118}]}.
    {func_info,{atom,fun_SUITE},{atom,overwritten_fun},1}.
  {label,36}.
    {test,is_list,{f,35},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"fun_SUITE.erl",119}]}.
    {call,1,{f,41}}. % overwritten_fun_1/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_atom,[a2]},
           2 =>
            {t_union,
             {t_atom,[a]},
             none,none,
             [{{2,{t_atom,[b]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[b]},
                  2 => {t_union,{t_atom,[c]},nil,none,none,none}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,39},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 => {t_atom,[a2]},
          2 =>
           {t_union,
            {t_atom,[a]},
            none,none,
            [{{2,{t_atom,[b]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[b]},
                 2 => {t_union,{t_atom,[c]},nil,none,none,none}}}}],
            none}}}},
      {literal,{a2,a}}]}.
    {move,{literal,{b,c}},{x,0}}.
    {line,[{location,"fun_SUITE.erl",120}]}.
    {call,1,{f,41}}. % overwritten_fun_1/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_atom,[a2]},
           2 =>
            {t_union,
             {t_atom,[a]},
             none,none,
             [{{2,{t_atom,[b]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[b]},
                  2 => {t_union,{t_atom,[c]},nil,none,none,none}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,38},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 => {t_atom,[a2]},
          2 =>
           {t_union,
            {t_atom,[a]},
            none,none,
            [{{2,{t_atom,[b]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[b]},
                 2 => {t_union,{t_atom,[c]},nil,none,none,none}}}}],
            none}}}},
      {literal,{a2,{b,c}}}]}.
    {move,{literal,{b,[]}},{x,0}}.
    {line,[{location,"fun_SUITE.erl",121}]}.
    {call,1,{f,41}}. % overwritten_fun_1/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[one]},
         none,none,
         [{{2,{t_atom,[a2]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[a2]},
              2 =>
               {t_union,
                {t_atom,[a]},
                none,none,
                [{{2,{t_atom,[b]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[b]},
                     2 => {t_union,{t_atom,[c]},nil,none,none,none}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
     {f,37},
     [{tr,
       {x,0},
       {t_union,
        {t_atom,[one]},
        none,none,
        [{{2,{t_atom,[a2]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[a2]},
             2 =>
              {t_union,
               {t_atom,[a]},
               none,none,
               [{{2,{t_atom,[b]}},
                 {t_tuple,2,true,
                  #{1 => {t_atom,[b]},
                    2 => {t_union,{t_atom,[c]},nil,none,none,none}}}}],
               none}}}}],
        none}},
      {atom,one}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,37}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{location,"fun_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{location,"fun_SUITE.erl",119}]}.
    {badmatch,{x,0}}.


{function, overwritten_fun_1, 1, 41}.
  {label,40}.
    {line,[{location,"fun_SUITE.erl",124}]}.
    {func_info,{atom,fun_SUITE},{atom,overwritten_fun_1},1}.
  {label,41}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     none,none,
                     [{{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},
                             2 =>
                                 {t_union,{t_atom,[c]},nil,none,none,none}}}}],
                     none}}]}}.
    {test,is_tuple,
        {f,42},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[a]},
                 none,none,
                 [{{2,{t_atom,[b]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[b]},
                         2 => {t_union,{t_atom,[c]},nil,none,none,none}}}}],
                 none}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nil,
          {f,42},
          [{tr,{x,1},{t_union,{t_atom,[c]},nil,none,none,none}}]}.
    {move,{atom,one},{x,0}}.
    return.
  {label,42}.
    {allocate,0,1}.
    {line,[{location,"fun_SUITE.erl",131}]}.
    {call,1,{f,371}}. % '-overwritten_fun_1/1-fun-0-'/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_atom,[ok]},
           2 =>
            {t_union,
             {t_atom,[a]},
             none,none,
             [{{2,{t_atom,[b]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[b]},
                  2 => {t_union,{t_atom,[c]},nil,none,none,none}}}}],
             none}}}}]}}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,a2},{x,0}]}}.
    {deallocate,0}.
    return.


{function, otp_7202, 1, 44}.
  {label,43}.
    {line,[{location,"fun_SUITE.erl",141}]}.
    {func_info,{atom,fun_SUITE},{atom,otp_7202},1}.
  {label,44}.
    {test,is_list,{f,43},[{x,0}]}.
    {call_only,0,{f,46}}. % otp_7202/0


{function, otp_7202, 0, 46}.
  {label,45}.
    {line,[{location,"fun_SUITE.erl",144}]}.
    {func_info,{atom,fun_SUITE},{atom,otp_7202},0}.
  {label,46}.
    {allocate,0,0}.
    {line,[{location,"fun_SUITE.erl",146}]}.
    {call,0,{f,48}}. % otp_7202_func/0
    {'%',{var_info,{x,0},[{type,{t_atom,[no_value]}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,369},0,0,{x,0},{list,[{atom,true}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{literal,[a]},{x,1}}.
    {line,[{location,"fun_SUITE.erl",150}]}.
    {call_ext_last,2,{extfunc,lists,foreach,2},0}.


{function, otp_7202_func, 0, 48}.
  {label,47}.
    {line,[{location,"fun_SUITE.erl",159}]}.
    {func_info,{atom,fun_SUITE},{atom,otp_7202_func},0}.
  {label,48}.
    {move,{atom,no_value},{x,0}}.
    return.


{function, bif_fun, 1, 50}.
  {label,49}.
    {line,[{location,"fun_SUITE.erl",162}]}.
    {func_info,{atom,fun_SUITE},{atom,bif_fun},1}.
  {label,50}.
    {test,is_list,{f,49},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,-5},{x,0}}.
    {line,[{location,"fun_SUITE.erl",164}]}.
    {call,1,{f,367}}. % '-bif_fun/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,51},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,5}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,51}.
    {badmatch,{x,0}}.


{function, external, 1, 53}.
  {label,52}.
    {line,[{location,"fun_SUITE.erl",176}]}.
    {func_info,{atom,fun_SUITE},{atom,external},1}.
  {label,53}.
    {test,is_list,{f,52},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{atom,fun_SUITE},{x,0}}.
    {line,[{location,"fun_SUITE.erl",177}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,3}}.
    {move,{atom,call_me},{x,0}}.
    {line,[{location,"fun_SUITE.erl",178}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"fun_SUITE.erl",179}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"fun_SUITE.erl",181}]}.
    {call_ext,1,{extfunc,fun_SUITE,call_me,1}}.
    {test,is_eq_exact,{f,68},[{x,0},{literal,{ok,{a,b}}}]}.
    {move,{atom,call_me},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{atom,fun_SUITE},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",182}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,364}}. % '-external/1-fun-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[ok]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}}}]}}.
    {move,{y,2},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{atom,fun_SUITE},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",183}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,361}}. % '-external/1-fun-2-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[ok]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}}}]}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{atom,fun_SUITE},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",184}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,358}}. % '-external/1-fun-3-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[ok]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}}}]}}.
    {move,{atom,call_me},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",185}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,355}}. % '-external/1-fun-4-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[ok]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}}}]}}.
    {move,{atom,call_me},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",186}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,352}}. % '-external/1-fun-5-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[ok]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}}}]}}.
    {move,{y,2},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",187}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,349}}. % '-external/1-fun-6-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[ok]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}}}]}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2},{y,3}]}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",188}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,346}}. % '-external/1-fun-7-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[ok]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}}}]}}.
    {move,{atom,lists},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",190}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,3}}.
    {move,{atom,map},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",191}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",192}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,344},0,0,{x,1},{list,[]}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{literal,[x,y]},{x,1}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",194}]}.
    {call_ext,2,{extfunc,lists,map,2}}.
    {test,is_eq_exact,{f,67},[{tr,{x,0},{t_cons,any,nil}},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{literal,fun lists:map/2},{x,0}}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,66},[{x,0},{literal,{type,external}}]}.
    {move,{atom,map},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{atom,lists},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",195}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,339}}. % '-external/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[type]},
                                     2 => {t_atom,[external]}}}}]}}.
    {move,{y,2},{x,1}}.
    {move,{integer,2},{x,2}}.
    {move,{atom,lists},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",196}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,334}}. % '-external/1-fun-13-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[type]},
                                     2 => {t_atom,[external]}}}}]}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{atom,lists},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",197}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,329}}. % '-external/1-fun-15-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[type]},
                                     2 => {t_atom,[external]}}}}]}}.
    {move,{atom,map},{x,1}}.
    {move,{integer,2},{x,2}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",198}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,324}}. % '-external/1-fun-17-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[type]},
                                     2 => {t_atom,[external]}}}}]}}.
    {move,{atom,map},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",199}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,319}}. % '-external/1-fun-19-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[type]},
                                     2 => {t_atom,[external]}}}}]}}.
    {move,{y,2},{x,1}}.
    {move,{integer,2},{x,2}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",200}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,314}}. % '-external/1-fun-21-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[type]},
                                     2 => {t_atom,[external]}}}}]}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,1},{y,2},{y,3}]}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",201}]}.
    {call_ext,3,{extfunc,erlang,make_fun,3}}.
    {call,1,{f,309}}. % '-external/1-fun-23-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[type]},
                                     2 => {t_atom,[external]}}}}]}}.
    {move,{literal,fun erlang:abs/1},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",204}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{integer,-42},{x,0}}.
    {call_fun2,{atom,unsafe},
               1,
               {tr,{x,1},
                   {t_union,{t_atom,any},
                            {t_cons,{t_integer,{1,3}},nil},
                            {t_integer,{0,'+inf'}},
                            [{{2,nil},
                              {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                            {t_fun,1,any,any}}}}.
    {test,is_eq_exact,{f,65},[{x,0},{integer,42}]}.
    {move,{literal,fun erlang:abs/1},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",206}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{integer,-42},{x,0}}.
    {call_fun2,{atom,unsafe},
               1,
               {tr,{x,1},
                   {t_union,{t_atom,any},
                            {t_cons,{t_integer,{1,3}},nil},
                            {t_integer,{0,'+inf'}},
                            [{{2,nil},
                              {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                            {t_fun,1,any,any}}}}.
    {test,is_eq_exact,{f,64},[{x,0},{integer,42}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",207}]}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test,is_eq_exact,{f,63},[{x,0},{integer,6}]}.
    {move,{literal,fun lists:sum/1},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",208}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {call_fun2,{atom,unsafe},
               1,
               {tr,{x,1},
                   {t_union,{t_atom,any},
                            {t_cons,{t_integer,{1,3}},nil},
                            {t_integer,{0,'+inf'}},
                            [{{2,nil},
                              {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                            {t_fun,1,any,any}}}}.
    {test,is_eq_exact,{f,62},[{x,0},{integer,6}]}.
    {'catch',{y,3},{f,54}}.
    {move,{integer,3},{x,2}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,fun lists:sum/1},{x,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",210}]}.
    {call_fun,3}.
  {label,54}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,61},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,61},[{x,1}]}.
    {test,test_arity,{f,61},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,61},[{x,1},2,{atom,badarity}]}.
    {'catch',{y,2},{f,55}}.
    {move,{literal,fun lists:sum/1},{x,0}}.
    {line,[{scope,[7,8]},{location,"fun_SUITE.erl",211}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{integer,3},{x,2}}.
    {move,{integer,2},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{integer,1},{x,0}}.
    {call_fun2,{atom,unsafe},
               3,
               {tr,{x,3},
                   {t_union,{t_atom,any},
                            {t_cons,{t_integer,{1,3}},nil},
                            {t_integer,{0,'+inf'}},
                            [{{2,nil},
                              {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                            {t_fun,1,any,any}}}}.
  {label,55}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,60},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,60},[{x,1}]}.
    {test,test_arity,{f,60},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,60},[{x,1},2,{atom,badarity}]}.
    {'catch',{y,1},{f,56}}.
    {move,{integer,3},{x,2}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,fun lists:sum/1},{x,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"fun_SUITE.erl",212}]}.
    {call_fun,3}.
  {label,56}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,59},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,59},[{x,1}]}.
    {test,test_arity,{f,59},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,59},[{x,1},2,{atom,badarity}]}.
    {'catch',{y,0},{f,57}}.
    {line,[{scope,[3,4]},{location,"fun_SUITE.erl",214}]}.
    {call,0,{f,72}}. % bad_external_fun/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,57}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,58},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,58},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,58}.
    {line,[{scope,[0]},{location,"fun_SUITE.erl",214}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,[2]},{location,"fun_SUITE.erl",212}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{scope,[4]},{location,"fun_SUITE.erl",211}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{scope,[6]},{location,"fun_SUITE.erl",210}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",208}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",207}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",206}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",204}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",194}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",181}]}.
    {badmatch,{x,0}}.


{function, call_me, 1, 70}.
  {label,69}.
    {line,[{location,"fun_SUITE.erl",218}]}.
    {func_info,{atom,fun_SUITE},{atom,call_me},1}.
  {label,70}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, bad_external_fun, 0, 72}.
  {label,71}.
    {line,[{location,"fun_SUITE.erl",221}]}.
    {func_info,{atom,fun_SUITE},{atom,bad_external_fun},0}.
  {label,72}.
    {move,{atom,idea},{x,1}}.
    {move,{atom,idea},{x,2}}.
    {move,{atom,idea},{x,0}}.
    {line,[{location,"fun_SUITE.erl",223}]}.
    {call_ext_only,3,{extfunc,erlang,make_fun,3}}.


{function, eep37, 1, 74}.
  {label,73}.
    {line,[{location,"fun_SUITE.erl",227}]}.
    {func_info,{atom,fun_SUITE},{atom,eep37},1}.
  {label,74}.
    {allocate,0,0}.
    {line,[{location,"fun_SUITE.erl",228}]}.
    {call,0,{f,76}}. % eep37_basic/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"fun_SUITE.erl",229}]}.
    {call,0,{f,81}}. % eep37_dup/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {call_last,0,{f,87},0}. % eep37_gh6515/0


{function, eep37_basic, 0, 76}.
  {label,75}.
    {line,[{location,"fun_SUITE.erl",233}]}.
    {func_info,{atom,fun_SUITE},{atom,eep37_basic},0}.
  {label,76}.
    {allocate,0,0}.
    {move,{integer,6},{x,0}}.
    {line,[{location,"fun_SUITE.erl",237}]}.
    {call,1,{f,306}}. % '-eep37_basic/0-Fact/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,79},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,720}]}.
    {move,{integer,9},{x,0}}.
    {line,[{location,"fun_SUITE.erl",238}]}.
    {call,1,{f,304}}. % '-eep37_basic/0-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,78},[{tr,{x,0},{t_number,any}},{integer,10}]}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"fun_SUITE.erl",239}]}.
    {call,1,{f,302}}. % '-eep37_basic/0-fun-2-'/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,77},[{tr,{x,0},{t_number,any}},{integer,50}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,77}.
    {badmatch,{x,0}}.
  {label,78}.
    {line,[{location,"fun_SUITE.erl",238}]}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"fun_SUITE.erl",237}]}.
    {badmatch,{x,0}}.


{function, eep37_dup, 0, 81}.
  {label,80}.
    {line,[{location,"fun_SUITE.erl",242}]}.
    {func_info,{atom,fun_SUITE},{atom,eep37_dup},0}.
  {label,81}.
    {allocate,0,0}.
    {line,[{location,"fun_SUITE.erl",243}]}.
    {call,0,{f,83}}. % dup1/0
    {'%',{var_info,{x,0},
                   [{type,{t_fun,0,{'-dup1/0-fun-0-',0},{t_atom,[dup1]}}}]}}.
    {call,0,{f,300}}. % '-dup1/0-fun-0-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[dup1]}}]}}.
    {line,[{location,"fun_SUITE.erl",244}]}.
    {call,0,{f,85}}. % dup2/0
    {'%',{var_info,{x,0},
                   [{type,{t_fun,0,{'-dup2/0-fun-0-',0},{t_atom,[dup2]}}}]}}.
    {call,0,{f,298}}. % '-dup2/0-fun-0-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[dup2]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, dup1, 0, 83}.
  {label,82}.
    {line,[{location,"fun_SUITE.erl",247}]}.
    {func_info,{atom,fun_SUITE},{atom,dup1},0}.
  {label,83}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,300},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[dup1]}}]}}.
    return.


{function, dup2, 0, 85}.
  {label,84}.
    {line,[{location,"fun_SUITE.erl",250}]}.
    {func_info,{atom,fun_SUITE},{atom,dup2},0}.
  {label,85}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,298},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[dup2]}}]}}.
    return.


{function, eep37_gh6515, 0, 87}.
  {label,86}.
    {line,[{location,"fun_SUITE.erl",253}]}.
    {func_info,{atom,fun_SUITE},{atom,eep37_gh6515},0}.
  {label,87}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"fun_SUITE.erl",254}]}.
    {call,0,{f,93}}. % eep37_gh6515_1/0
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_integer,{0,0}},
           2 =>
            {t_fun,0,
             {'-eep37_gh6515_1/0-X/0-0-',0},
             {t_fun,0,
              {'-eep37_gh6515_1/0-X/0-0-',0},
              {t_fun,0,
               {'-eep37_gh6515_1/0-X/0-0-',0},
               {t_fun,0,{'-eep37_gh6515_1/0-X/0-0-',0},any}}}}}}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"fun_SUITE.erl",255}]}.
    {call,0,{f,296}}. % '-eep37_gh6515_1/0-X/0-0-'/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,0,
                     {'-eep37_gh6515_1/0-X/0-0-',0},
                     {t_fun,0,
                         {'-eep37_gh6515_1/0-X/0-0-',0},
                         {t_fun,0,
                             {'-eep37_gh6515_1/0-X/0-0-',0},
                             {t_fun,0,
                                 {'-eep37_gh6515_1/0-X/0-0-',0},
                                 {t_fun,0,
                                     {'-eep37_gh6515_1/0-X/0-0-',0},
                                     any}}}}}}]}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {test,is_eq_exact,
        {f,91},
        [{tr,{x,0},
             {t_fun,0,
                 {'-eep37_gh6515_1/0-X/0-0-',0},
                 {t_fun,0,
                     {'-eep37_gh6515_1/0-X/0-0-',0},
                     {t_fun,0,
                         {'-eep37_gh6515_1/0-X/0-0-',0},
                         {t_fun,0,
                             {'-eep37_gh6515_1/0-X/0-0-',0},
                             {t_fun,0,{'-eep37_gh6515_1/0-X/0-0-',0},any}}}}}},
         {tr,{x,1},
             {t_fun,0,
                 {'-eep37_gh6515_1/0-X/0-0-',0},
                 {t_fun,0,
                     {'-eep37_gh6515_1/0-X/0-0-',0},
                     {t_fun,0,
                         {'-eep37_gh6515_1/0-X/0-0-',0},
                         {t_fun,0,{'-eep37_gh6515_1/0-X/0-0-',0},any}}}}}]}.
    {trim,1,0}.
    {line,[{location,"fun_SUITE.erl",257}]}.
    {call,0,{f,95}}. % eep37_gh6515_2/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,none,none,
                         {t_integer,{0,0}},
                         none,
                         {t_fun,1,
                             {'-eep37_gh6515_2/0-Fact/1-0-',1},
                             {t_number,{0,'+inf'}}}},
                     nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,
          {f,90},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{0,0}},
                        none,
                        {t_fun,1,
                               {'-eep37_gh6515_2/0-Fact/1-0-',1},
                               {t_number,{0,'+inf'}}}}},
           {integer,0}]}.
    {test,is_nonempty_list,{f,90},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,
        {f,90},
        [{tr,{x,2},
             {t_list,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     none,
                     {t_fun,1,
                         {'-eep37_gh6515_2/0-Fact/1-0-',1},
                         {t_number,{0,'+inf'}}}},
                 nil}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"fun_SUITE.erl",258}]}.
    {call_fun2,{atom,unsafe},
               1,
               {tr,{x,1},
                   {t_union,none,none,
                            {t_integer,{0,0}},
                            none,
                            {t_fun,1,
                                   {'-eep37_gh6515_2/0-Fact/1-0-',1},
                                   {t_number,{0,'+inf'}}}}}}.
    {test,is_eq_exact,{f,89},[{x,0},{integer,1}]}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"fun_SUITE.erl",259}]}.
    {call,1,{f,293}}. % '-eep37_gh6515_2/0-Fact/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,88},[{tr,{x,0},{t_number,{0,'+inf'}}},{integer,120}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,88}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{location,"fun_SUITE.erl",258}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{location,"fun_SUITE.erl",257}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{location,"fun_SUITE.erl",255}]}.
    {badmatch,{x,0}}.


{function, eep37_gh6515_1, 0, 93}.
  {label,92}.
    {line,[{location,"fun_SUITE.erl",263}]}.
    {func_info,{atom,fun_SUITE},{atom,eep37_gh6515_1},0}.
  {label,93}.
    {test_heap,{alloc,[{words,3},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,296},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_fun,0,
                     {'-eep37_gh6515_1/0-X/0-0-',0},
                     {t_fun,0,
                         {'-eep37_gh6515_1/0-X/0-0-',0},
                         {t_fun,0,
                             {'-eep37_gh6515_1/0-X/0-0-',0},
                             {t_fun,0,
                                 {'-eep37_gh6515_1/0-X/0-0-',0},
                                 {t_fun,0,
                                     {'-eep37_gh6515_1/0-X/0-0-',0},
                                     any}}}}}}]}}.
    {put_tuple2,{x,0},{list,[{integer,0},{x,0}]}}.
    return.


{function, eep37_gh6515_2, 0, 95}.
  {label,94}.
    {line,[{location,"fun_SUITE.erl",274}]}.
    {func_info,{atom,fun_SUITE},{atom,eep37_gh6515_2},0}.
  {label,95}.
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,293},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,{0,'+inf'}}}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    return.


{function, badarity, 1, 97}.
  {label,96}.
    {line,[{location,"fun_SUITE.erl",286}]}.
    {func_info,{atom,fun_SUITE},{atom,badarity},1}.
  {label,97}.
    {test,is_list,{f,96},[{x,0}]}.
    {allocate_heap,2,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0}]}}.
    {make_fun3,{f,97},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,98}}.
    {line,[{location,"fun_SUITE.erl",287}]}.
    {call_fun2,{atom,unsafe},
               0,
               {tr,{x,0},{t_fun,1,{badarity,1},{t_atom,[ok]}}}}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,98}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,101},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,101},[{x,1}]}.
    {test,test_arity,{f,101},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,101},[{x,1},2,{atom,badarity}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,101},[{x,1}]}.
    {test,test_arity,{f,101},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nil,{f,101},[{x,1}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,291},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{42,42}}}]}}.
    {'catch',{y,0},{f,99}}.
    {move,{x,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"fun_SUITE.erl",288}]}.
    {call_fun2,{atom,unsafe},
               1,
               {tr,{x,1},
                   {t_fun,0,{'-badarity/1-fun-0-',0},{t_integer,{42,42}}}}}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
  {label,99}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,100},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,100},[{x,1}]}.
    {test,test_arity,{f,100},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,100},[{x,1},2,{atom,badarity}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,100}.
    {line,[{scope,[0]},{location,"fun_SUITE.erl",288}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,[2]},{location,"fun_SUITE.erl",287}]}.
    {badmatch,{x,0}}.


{function, badfun, 1, 103}.
  {label,102}.
    {line,[{location,"fun_SUITE.erl",291}]}.
    {func_info,{atom,fun_SUITE},{atom,badfun},1}.
  {label,103}.
    {allocate,8,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {'catch',{y,7},{f,104}}.
    {move,{literal,{badfun,42}},{x,0}}.
    {line,[{location,"fun_SUITE.erl",293}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,104}.
    {catch_end,{y,7}}.
    {move,{x,0},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[15,16]},{location,"fun_SUITE.erl",293}]}.
    {call,2,{f,115}}. % expect_badfun/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}]}}.
    {'catch',{y,6},{f,105}}.
    {move,{literal,{badfun,42.0}},{x,0}}.
    {line,[{scope,[15,16]},{location,"fun_SUITE.erl",294}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,105}.
    {catch_end,{y,6}}.
    {move,{x,0},{x,1}}.
    {move,{float,42.0},{x,0}}.
    {line,[{scope,[13,14]},{location,"fun_SUITE.erl",294}]}.
    {call,2,{f,115}}. % expect_badfun/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}]}}.
    {'catch',{y,5},{f,106}}.
    {move,{literal,{badfun,not_a_fun}},{x,0}}.
    {line,[{scope,[13,14]},{location,"fun_SUITE.erl",295}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,106}.
    {catch_end,{y,5}}.
    {move,{x,0},{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,"\v\f"},{location,"fun_SUITE.erl",295}]}.
    {call,2,{f,115}}. % expect_badfun/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}]}}.
    {'catch',{y,4},{f,107}}.
    {move,{literal,{badfun,not_a_fun}},{x,0}}.
    {line,[{scope,"\v\f"},{location,"fun_SUITE.erl",296}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,107}.
    {catch_end,{y,4}}.
    {move,{x,0},{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,"\t\n"},{location,"fun_SUITE.erl",296}]}.
    {call,2,{f,115}}. % expect_badfun/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}]}}.
    {'catch',{y,3},{f,108}}.
    {move,{literal,{badfun,9}},{x,0}}.
    {line,[{scope,"\t\n"},{location,"fun_SUITE.erl",298}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,108}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,1}}.
    {move,{integer,9},{x,0}}.
    {line,[{scope,[7,8]},{location,"fun_SUITE.erl",298}]}.
    {call,2,{f,115}}. % expect_badfun/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}]}}.
    {'catch',{y,2},{f,109}}.
    {move,{atom,yes},{x,1}}.
    {move,{atom,badfun},{x,0}}.
    {line,[{scope,[7,8]},{location,"fun_SUITE.erl",300}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{literal,{badfun,42}},{x,0}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,109}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[5,6]},{location,"fun_SUITE.erl",300}]}.
    {call,2,{f,115}}. % expect_badfun/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}]}}.
    {move,{atom,badfun},{x,0}}.
    {line,[{scope,[5,6]},{location,"fun_SUITE.erl",301}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,113},[{x,0},{atom,yes}]}.
    {'catch',{y,1},{f,110}}.
    {move,{atom,of_course},{x,1}}.
    {move,{atom,badfun},{x,0}}.
    {line,[{scope,[4]},{location,"fun_SUITE.erl",303}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{literal,{badfun,not_a_fun}},{x,0}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,110}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,not_a_fun},{x,0}}.
    {line,[{scope,[3,4]},{location,"fun_SUITE.erl",303}]}.
    {call,2,{f,115}}. % expect_badfun/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}]}}.
    {move,{atom,badfun},{x,0}}.
    {line,[{scope,[3,4]},{location,"fun_SUITE.erl",304}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,112},[{x,0},{atom,of_course}]}.
    {'catch',{y,0},{f,111}}.
    {move,{atom,literal},{x,0}}.
    {line,[{scope,[2]},{location,"fun_SUITE.erl",311}]}.
    {call,1,{f,289}}. % '-badfun/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,111}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,literal},{x,0}}.
    {line,[{scope,[1,2]},{location,"fun_SUITE.erl",311}]}.
    {call,2,{f,115}}. % expect_badfun/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,8}.
    return.
  {label,112}.
    {line,[{scope,[2]},{location,"fun_SUITE.erl",304}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{scope,[4]},{location,"fun_SUITE.erl",301}]}.
    {badmatch,{x,0}}.


{function, expect_badfun, 2, 115}.
  {label,114}.
    {line,[{location,"fun_SUITE.erl",315}]}.
    {func_info,{atom,fun_SUITE},{atom,expect_badfun},2}.
  {label,115}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[literal,not_a_fun]},
                                   none,
                                   {t_number,{9,42}},
                                   none,none}}]}}.
    {test,is_tagged_tuple,{f,116},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tuple,{f,116},[{x,2}]}.
    {test,test_arity,{f,116},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {test,is_tagged_tuple,{f,116},[{x,2},2,{atom,badfun}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,
          {f,116},
          [{x,2},
           {tr,{x,0},
               {t_union,{t_atom,[literal,not_a_fun]},
                        none,
                        {t_number,{9,42}},
                        none,none}}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,116}.
    {line,[{location,"fun_SUITE.erl",316}]}.
    {badmatch,{x,1}}.


{function, duplicated_fun, 1, 118}.
  {label,117}.
    {line,[{location,"fun_SUITE.erl",318}]}.
    {func_info,{atom,fun_SUITE},{atom,duplicated_fun},1}.
  {label,118}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,122},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {'try',{y,0},{f,119}}.
    {line,[{location,"fun_SUITE.erl",323}]}.
    {badmatch,{x,0}}.
  {label,119}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,120},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_tagged_tuple,{f,120},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {test,is_function2,{f,120},[{x,0},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,120}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, duplicated_fun_helper, 1, 122}.
  {label,121}.
    {line,[{location,"fun_SUITE.erl",330}]}.
    {func_info,{atom,fun_SUITE},{atom,duplicated_fun_helper},1}.
  {label,122}.
    {move,{atom,ok},{x,0}}.
    return.


{function, unused_fun, 1, 124}.
  {label,123}.
    {line,[{location,"fun_SUITE.erl",334}]}.
    {func_info,{atom,fun_SUITE},{atom,unused_fun},1}.
  {label,124}.
    {allocate,1,0}.
    {'try',{y,0},{f,125}}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"fun_SUITE.erl",336}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {try_end,{y,0}}.
    {jump,{f,126}}.
  {label,125}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,127},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
  {label,126}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,127}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, parallel_scopes, 1, 129}.
  {label,128}.
    {line,[{location,"fun_SUITE.erl",341}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes},1}.
  {label,129}.
    {allocate,24,0}.
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
                       {y,22},
                       {y,23}]}}.
    {line,[{location,"fun_SUITE.erl",342}]}.
    {call,0,{f,192}}. % parallel_scopes_1a/0
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {line,[{location,"fun_SUITE.erl",343}]}.
    {call,0,{f,194}}. % parallel_scopes_1b/0
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {'catch',{y,23},{f,130}}.
    {line,[{location,"fun_SUITE.erl",344}]}.
    {call,0,{f,196}}. % parallel_scopes_1c/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,130}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,190},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,190},[{x,1}]}.
    {test,test_arity,{f,190},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,190},[{x,1},{literal,{badmatch,99}}]}.
    {line,[{scope,"."},{location,"fun_SUITE.erl",346}]}.
    {call,0,{f,198}}. % parallel_scopes_2a/0
    {'%',{var_info,{x,0},[{type,{t_integer,{10,10}}}]}}.
    {'catch',{y,22},{f,131}}.
    {line,[{scope,"."},{location,"fun_SUITE.erl",347}]}.
    {call,0,{f,200}}. % parallel_scopes_2b/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,131}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,189},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,189},[{x,1}]}.
    {test,test_arity,{f,189},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,189},[{x,1},{literal,{badmatch,15}}]}.
    {move,{integer,500},{x,1}}.
    {move,{integer,500},{x,0}}.
    {line,[{scope,","},{location,"fun_SUITE.erl",348}]}.
    {call,2,{f,202}}. % parallel_scopes_2c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{500,500}}}]}}.
    {'catch',{y,21},{f,132}}.
    {move,{integer,1000},{x,1}}.
    {move,{integer,500},{x,0}}.
    {line,[{scope,","},{location,"fun_SUITE.erl",349}]}.
    {call,2,{f,202}}. % parallel_scopes_2c/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,132}.
    {catch_end,{y,21}}.
    {test,is_tagged_tuple,{f,188},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,188},[{x,1}]}.
    {test,test_arity,{f,188},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,188},[{x,1},{literal,{badmatch,1000}}]}.
    {move,{integer,600},{x,1}}.
    {move,{integer,600},{x,0}}.
    {line,[{scope,"*"},{location,"fun_SUITE.erl",350}]}.
    {call,2,{f,205}}. % parallel_scopes_2d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{600,600}}}]}}.
    {'catch',{y,20},{f,133}}.
    {move,{integer,1000},{x,1}}.
    {move,{integer,600},{x,0}}.
    {line,[{scope,"*"},{location,"fun_SUITE.erl",351}]}.
    {call,2,{f,205}}. % parallel_scopes_2d/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,133}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,187},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,187},[{x,1}]}.
    {test,test_arity,{f,187},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,187},[{x,1},{literal,{badmatch,1000}}]}.
    {move,{integer,20},{x,1}}.
    {move,{integer,20},{x,0}}.
    {line,[{scope,"("},{location,"fun_SUITE.erl",352}]}.
    {call,2,{f,208}}. % parallel_scopes_2e/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{20,20}}}}}]}}.
    {'catch',{y,19},{f,134}}.
    {move,{integer,25},{x,1}}.
    {move,{integer,20},{x,0}}.
    {line,[{scope,"("},{location,"fun_SUITE.erl",353}]}.
    {call,2,{f,208}}. % parallel_scopes_2e/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{20,20}}}}}]}}.
  {label,134}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,186},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,186},[{x,1}]}.
    {test,test_arity,{f,186},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,186},[{x,1},{literal,{badmatch,{a,25}}}]}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"&"},{location,"fun_SUITE.erl",355}]}.
    {call,1,{f,211}}. % parallel_scopes_3/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 =>
            {t_cons,
             {t_union,
              {t_atom,any},
              {t_cons,{t_integer,{1,3}},nil},
              {t_integer,{0,'+inf'}},
              [{{2,nil},{t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
              {t_fun,1,any,any}},
             nil},
           2 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{1,3}},nil},
             {t_integer,{0,'+inf'}},
             [{{2,nil},{t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
             {t_fun,1,any,any}},
           3 => {t_atom,[a]}}}}]}}.
    {test,is_eq_exact,
        {f,185},
        [{tr,{x,0},
             {t_tuple,3,true,
                 #{1 =>
                       {t_cons,
                           {t_union,
                               {t_atom,any},
                               {t_cons,{t_integer,{1,3}},nil},
                               {t_integer,{0,'+inf'}},
                               [{{2,nil},
                                 {t_tuple,2,true,
                                     #{1 => nil,2 => {t_atom,[x]}}}}],
                               {t_fun,1,any,any}},
                           nil},
                   2 =>
                       {t_union,
                           {t_atom,any},
                           {t_cons,{t_integer,{1,3}},nil},
                           {t_integer,{0,'+inf'}},
                           [{{2,nil},
                             {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                           {t_fun,1,any,any}},
                   3 => {t_atom,[a]}}}},
         {literal,{[42,2],42,a}}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"&"},{location,"fun_SUITE.erl",357}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,23}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,23}]}}.
    {call,2,{f,213}}. % parallel_scopes_4a/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,184},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {integer,42}]}.
    {'catch',{y,18},{f,135}}.
    {move,{integer,77},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"&"},{location,"fun_SUITE.erl",358}]}.
    {call,2,{f,213}}. % parallel_scopes_4a/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
  {label,135}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,183},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,183},[{x,1}]}.
    {test,test_arity,{f,183},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,183},[{x,1},{literal,{badmatch,77}}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"$"},{location,"fun_SUITE.erl",359}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,23}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,23}]}}.
    {call,2,{f,216}}. % parallel_scopes_4b/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,182},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {integer,42}]}.
    {'catch',{y,17},{f,136}}.
    {move,{integer,77},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"$"},{location,"fun_SUITE.erl",360}]}.
    {call,2,{f,216}}. % parallel_scopes_4b/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
  {label,136}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,181},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,181},[{x,1}]}.
    {test,test_arity,{f,181},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,181},[{x,1},{literal,{badmatch,77}}]}.
    {move,{atom,same},{x,0}}.
    {line,[{scope,"\""},{location,"fun_SUITE.erl",361}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,23}}.
    {move,{atom,same},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,23}]}}.
    {call,2,{f,221}}. % parallel_scopes_4c/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,any},
                         {t_cons,{t_integer,{1,3}},nil},
                         {t_integer,{0,'+inf'}},
                         [{{2,nil},
                           {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                         {t_fun,1,any,any}},
                     nil}}]}}.
    {test,is_eq_exact,
        {f,180},
        [{tr,{x,0},
             {t_cons,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}},
                 nil}},
         {literal,[same,2,same,2]}]}.
    {'catch',{y,16},{f,137}}.
    {move,{integer,55},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"\""},{location,"fun_SUITE.erl",362}]}.
    {call,2,{f,221}}. % parallel_scopes_4c/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,any},
                         {t_cons,{t_integer,{1,3}},nil},
                         {t_integer,{0,'+inf'}},
                         [{{2,nil},
                           {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                         {t_fun,1,any,any}},
                     nil}}]}}.
  {label,137}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,179},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,179},[{x,1}]}.
    {test,test_arity,{f,179},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,179},[{x,1},{literal,{badmatch,55}}]}.
    {move,{integer,33},{x,0}}.
    {line,[{scope," "},{location,"fun_SUITE.erl",364}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,23}}.
    {move,{integer,33},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,23}]}}.
    {call,2,{f,224}}. % parallel_scopes_5/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,178},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {integer,33}]}.
    {'catch',{y,15},{f,138}}.
    {move,{integer,44},{x,1}}.
    {move,{integer,33},{x,0}}.
    {line,[{scope," "},{location,"fun_SUITE.erl",365}]}.
    {call,2,{f,224}}. % parallel_scopes_5/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
  {label,138}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,177},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,177},[{x,1}]}.
    {test,test_arity,{f,177},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,177},[{x,1},{literal,{badmatch,44}}]}.
    {move,{integer,99},{x,0}}.
    {line,[{scope,[30]},{location,"fun_SUITE.erl",367}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,23}}.
    {move,{integer,99},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,23}]}}.
    {call,2,{f,228}}. % parallel_scopes_6/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,176},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {integer,99}]}.
    {'catch',{y,14},{f,139}}.
    {move,{integer,88},{x,1}}.
    {move,{integer,77},{x,0}}.
    {line,[{scope,[30]},{location,"fun_SUITE.erl",368}]}.
    {call,2,{f,228}}. % parallel_scopes_6/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
  {label,139}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,175},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,175},[{x,1}]}.
    {test,test_arity,{f,175},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,175},[{x,1},{literal,{badmatch,88}}]}.
    {move,{integer,99},{x,0}}.
    {line,[{scope,[28]},{location,"fun_SUITE.erl",370}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,23}}.
    {move,{integer,99},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,23}]}}.
    {call,2,{f,231}}. % parallel_scopes_7/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,174},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {integer,99}]}.
    {'catch',{y,13},{f,140}}.
    {move,{integer,88},{x,1}}.
    {move,{integer,77},{x,0}}.
    {line,[{scope,[28]},{location,"fun_SUITE.erl",371}]}.
    {call,2,{f,231}}. % parallel_scopes_7/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
  {label,140}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,173},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,173},[{x,1}]}.
    {test,test_arity,{f,173},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,173},[{x,1},{literal,{badmatch,88}}]}.
    {move,{integer,199},{x,0}}.
    {line,[{scope,[26]},{location,"fun_SUITE.erl",373}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,23}}.
    {move,{integer,199},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,23}]}}.
    {call,2,{f,234}}. % parallel_scopes_8/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,172},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {integer,199}]}.
    {'catch',{y,12},{f,141}}.
    {move,{integer,199},{x,0}}.
    {line,[{scope,[26]},{location,"fun_SUITE.erl",374}]}.
    {call,1,{f,279}}. % id/1
    {move,{x,0},{y,23}}.
    {'%',
        {var_info,
            {y,23},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{integer,200},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,23}]}}.
    {call,2,{f,234}}. % parallel_scopes_8/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
  {label,141}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,171},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,171},[{x,1}]}.
    {test,test_arity,{f,171},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,171},[{x,1},{literal,{badmatch,200}}]}.
    {move,{integer,299},{x,0}}.
    {line,[{scope,[24]},{location,"fun_SUITE.erl",376}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,23}}.
    {move,{integer,299},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{x,0},{y,22}}.
    {move,{integer,598},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{y,22},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,22},{y,23}]}}.
    {call,3,{f,237}}. % parallel_scopes_9/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,
                               {t_atom,any},
                               {t_cons,{t_integer,{1,3}},nil},
                               {t_integer,{0,'+inf'}},
                               [{{2,nil},
                                 {t_tuple,2,true,
                                     #{1 => nil,2 => {t_atom,[x]}}}}],
                               {t_fun,1,any,any}},
                       2 =>
                           {t_union,
                               {t_atom,any},
                               {t_cons,{t_integer,{1,3}},nil},
                               {t_integer,{0,'+inf'}},
                               [{{2,nil},
                                 {t_tuple,2,true,
                                     #{1 => nil,2 => {t_atom,[x]}}}}],
                               {t_fun,1,any,any}}}}}]}}.
    {test,is_eq_exact,
        {f,170},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_union,
                           {t_atom,any},
                           {t_cons,{t_integer,{1,3}},nil},
                           {t_integer,{0,'+inf'}},
                           [{{2,nil},
                             {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                           {t_fun,1,any,any}},
                   2 =>
                       {t_union,
                           {t_atom,any},
                           {t_cons,{t_integer,{1,3}},nil},
                           {t_integer,{0,'+inf'}},
                           [{{2,nil},
                             {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                           {t_fun,1,any,any}}}}},
         {literal,{299,598}}]}.
    {'catch',{y,11},{f,142}}.
    {move,{integer,299},{x,0}}.
    {line,[{scope,[24]},{location,"fun_SUITE.erl",377}]}.
    {call,1,{f,279}}. % id/1
    {move,{x,0},{y,23}}.
    {'%',
        {var_info,
            {y,23},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{integer,300},{x,0}}.
    {call,1,{f,279}}. % id/1
    {move,{x,0},{y,22}}.
    {'%',
        {var_info,
            {y,22},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{y,22},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,22},{y,23}]}}.
    {call,3,{f,237}}. % parallel_scopes_9/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,
                               {t_atom,any},
                               {t_cons,{t_integer,{1,3}},nil},
                               {t_integer,{0,'+inf'}},
                               [{{2,nil},
                                 {t_tuple,2,true,
                                     #{1 => nil,2 => {t_atom,[x]}}}}],
                               {t_fun,1,any,any}},
                       2 =>
                           {t_union,
                               {t_atom,any},
                               {t_cons,{t_integer,{1,3}},nil},
                               {t_integer,{0,'+inf'}},
                               [{{2,nil},
                                 {t_tuple,2,true,
                                     #{1 => nil,2 => {t_atom,[x]}}}}],
                               {t_fun,1,any,any}}}}}]}}.
  {label,142}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,169},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,169},[{x,1}]}.
    {test,test_arity,{f,169},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,169},[{x,1},{literal,{badmatch,300}}]}.
    {'catch',{y,10},{f,143}}.
    {move,{integer,299},{x,0}}.
    {line,[{scope,[22]},{location,"fun_SUITE.erl",378}]}.
    {call,1,{f,279}}. % id/1
    {move,{x,0},{y,23}}.
    {'%',
        {var_info,
            {y,23},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{integer,299},{x,0}}.
    {call,1,{f,279}}. % id/1
    {move,{x,0},{y,22}}.
    {'%',
        {var_info,
            {y,22},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {move,{y,22},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,23},{x,0}}.
    {init_yregs,{list,[{y,22},{y,23}]}}.
    {call,3,{f,237}}. % parallel_scopes_9/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,
                               {t_atom,any},
                               {t_cons,{t_integer,{1,3}},nil},
                               {t_integer,{0,'+inf'}},
                               [{{2,nil},
                                 {t_tuple,2,true,
                                     #{1 => nil,2 => {t_atom,[x]}}}}],
                               {t_fun,1,any,any}},
                       2 =>
                           {t_union,
                               {t_atom,any},
                               {t_cons,{t_integer,{1,3}},nil},
                               {t_integer,{0,'+inf'}},
                               [{{2,nil},
                                 {t_tuple,2,true,
                                     #{1 => nil,2 => {t_atom,[x]}}}}],
                               {t_fun,1,any,any}}}}}]}}.
  {label,143}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,168},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,168},[{x,1}]}.
    {test,test_arity,{f,168},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{literal,{badmatch,0}}]}.
    {move,{atom,ignored},{x,2}}.
    {move,{integer,999},{x,1}}.
    {move,{integer,999},{x,3}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[20]},{location,"fun_SUITE.erl",380}]}.
    {call,4,{f,241}}. % parallel_scopes_10/4
    {'%',{var_info,{x,0},[{type,{t_integer,{333,999}}}]}}.
    {test,is_eq_exact,
          {f,167},
          [{tr,{x,0},{t_integer,{333,999}}},{integer,999}]}.
    {'catch',{y,9},{f,144}}.
    {move,{atom,ignored},{x,2}}.
    {move,{integer,700},{x,1}}.
    {move,{integer,700},{x,3}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[20]},{location,"fun_SUITE.erl",381}]}.
    {call,4,{f,241}}. % parallel_scopes_10/4
    {'%',{var_info,{x,0},[{type,{t_integer,{333,999}}}]}}.
  {label,144}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,166},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,166},[{x,1}]}.
    {test,test_arity,{f,166},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,166},[{x,1},{literal,{badmatch,999}}]}.
    {'catch',{y,8},{f,145}}.
    {move,{atom,ignored},{x,2}}.
    {move,{integer,999},{x,1}}.
    {move,{integer,1000},{x,3}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[18]},{location,"fun_SUITE.erl",382}]}.
    {call,4,{f,241}}. % parallel_scopes_10/4
    {'%',{var_info,{x,0},[{type,{t_integer,{333,999}}}]}}.
  {label,145}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,165},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,165},[{x,1},{literal,{badmatch,1000}}]}.
    {move,{integer,999},{x,2}}.
    {move,{integer,999},{x,1}}.
    {move,{atom,ignored},{x,3}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[16]},{location,"fun_SUITE.erl",383}]}.
    {call,4,{f,241}}. % parallel_scopes_10/4
    {'%',{var_info,{x,0},[{type,{t_integer,{333,999}}}]}}.
    {test,is_eq_exact,
          {f,164},
          [{tr,{x,0},{t_integer,{333,999}}},{integer,999}]}.
    {move,{integer,333},{x,2}}.
    {move,{integer,333},{x,1}}.
    {move,{atom,ignored},{x,3}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[16]},{location,"fun_SUITE.erl",384}]}.
    {call,4,{f,241}}. % parallel_scopes_10/4
    {'%',{var_info,{x,0},[{type,{t_integer,{333,999}}}]}}.
    {test,is_eq_exact,
          {f,163},
          [{tr,{x,0},{t_integer,{333,999}}},{integer,333}]}.
    {'catch',{y,7},{f,146}}.
    {move,{integer,901},{x,2}}.
    {move,{integer,900},{x,1}}.
    {move,{atom,ignored},{x,3}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[16]},{location,"fun_SUITE.erl",385}]}.
    {call,4,{f,241}}. % parallel_scopes_10/4
    {'%',{var_info,{x,0},[{type,{t_integer,{333,999}}}]}}.
  {label,146}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,162},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,162},[{x,1},{literal,{badmatch,901}}]}.
    {move,{integer,889},{x,1}}.
    {move,{integer,889},{x,2}}.
    {move,{integer,889},{x,0}}.
    {line,[{scope,[14]},{location,"fun_SUITE.erl",387}]}.
    {call,3,{f,250}}. % parallel_scopes_11/3
    {'%',{var_info,{x,0},[{type,{t_integer,{889,889}}}]}}.
    {'catch',{y,6},{f,147}}.
    {move,{integer,800},{x,1}}.
    {move,{integer,889},{x,2}}.
    {move,{integer,889},{x,0}}.
    {line,[{scope,[14]},{location,"fun_SUITE.erl",388}]}.
    {call,3,{f,250}}. % parallel_scopes_11/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,147}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,161},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,161},[{x,1}]}.
    {test,test_arity,{f,161},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,161},[{x,1},{literal,{badmatch,800}}]}.
    {'catch',{y,5},{f,148}}.
    {move,{integer,889},{x,1}}.
    {move,{integer,810},{x,2}}.
    {move,{integer,889},{x,0}}.
    {line,[{scope,"\f"},{location,"fun_SUITE.erl",389}]}.
    {call,3,{f,250}}. % parallel_scopes_11/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,148}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,160},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,160},[{x,1}]}.
    {test,test_arity,{f,160},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,160},[{x,1},{literal,{badmatch,810}}]}.
    {'catch',{y,4},{f,149}}.
    {move,{atom,a},{x,1}}.
    {move,{atom,a},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\n"},{location,"fun_SUITE.erl",390}]}.
    {call,3,{f,250}}. % parallel_scopes_11/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,149}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,159},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,159},[{x,1}]}.
    {test,test_arity,{f,159},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,159},[{x,1},{literal,{badmatch,889}}]}.
    {move,{integer,333},{x,1}}.
    {move,{integer,333},{x,2}}.
    {move,{integer,333},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",392}]}.
    {call,3,{f,258}}. % parallel_scopes_12/3
    {'%',{var_info,{x,0},[{type,{t_integer,{333,333}}}]}}.
    {'catch',{y,3},{f,150}}.
    {move,{atom,other},{x,1}}.
    {move,{integer,333},{x,2}}.
    {move,{integer,333},{x,0}}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",393}]}.
    {call,3,{f,258}}. % parallel_scopes_12/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,150}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,158},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,158},[{x,1}]}.
    {test,test_arity,{f,158},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,158},[{x,1},{literal,{badmatch,other}}]}.
    {'catch',{y,2},{f,151}}.
    {move,{integer,333},{x,1}}.
    {move,{atom,nope},{x,2}}.
    {move,{integer,333},{x,0}}.
    {line,[{scope,[6]},{location,"fun_SUITE.erl",394}]}.
    {call,3,{f,258}}. % parallel_scopes_12/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,151}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,157},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,157},[{x,1}]}.
    {test,test_arity,{f,157},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,157},[{x,1},{literal,{badmatch,nope}}]}.
    {move,{integer,100},{x,1}}.
    {move,{integer,99},{x,0}}.
    {line,[{scope,[4]},{location,"fun_SUITE.erl",396}]}.
    {call,2,{f,265}}. % parallel_scopes_13/2
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,100}},nil}}]}}.
    {test,is_eq_exact,
          {f,156},
          [{tr,{x,0},{t_cons,{t_integer,{1,100}},nil}},{literal,[1,100]}]}.
    {'catch',{y,1},{f,152}}.
    {move,{integer,100},{x,1}}.
    {move,{atom,no},{x,0}}.
    {line,[{scope,[4]},{location,"fun_SUITE.erl",397}]}.
    {call,2,{f,265}}. % parallel_scopes_13/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,152}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,155},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,155},[{x,1}]}.
    {test,test_arity,{f,155},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,155},[{x,1},{literal,{badmatch,no}}]}.
    {'catch',{y,0},{f,153}}.
    {move,{atom,nope},{x,1}}.
    {move,{integer,99},{x,0}}.
    {line,[{scope,[2]},{location,"fun_SUITE.erl",398}]}.
    {call,2,{f,265}}. % parallel_scopes_13/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,153}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,154},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,154},[{x,1}]}.
    {test,test_arity,{f,154},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,154},[{x,1},{literal,{badmatch,nope}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,24}.
    return.
  {label,154}.
    {line,[{scope,[0]},{location,"fun_SUITE.erl",398}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{scope,[2]},{location,"fun_SUITE.erl",397}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{scope,[4]},{location,"fun_SUITE.erl",396}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,[4]},{location,"fun_SUITE.erl",394}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[6]},{location,"fun_SUITE.erl",393}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,"\b"},{location,"fun_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,"\n"},{location,"fun_SUITE.erl",389}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,"\f"},{location,"fun_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[14]},{location,"fun_SUITE.erl",385}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[16]},{location,"fun_SUITE.erl",384}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[16]},{location,"fun_SUITE.erl",383}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[16]},{location,"fun_SUITE.erl",382}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[18]},{location,"fun_SUITE.erl",381}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,[20]},{location,"fun_SUITE.erl",380}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{scope,[20]},{location,"fun_SUITE.erl",378}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,[22]},{location,"fun_SUITE.erl",377}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,[24]},{location,"fun_SUITE.erl",376}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,[24]},{location,"fun_SUITE.erl",374}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,[26]},{location,"fun_SUITE.erl",373}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope,[26]},{location,"fun_SUITE.erl",371}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,[28]},{location,"fun_SUITE.erl",370}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,[28]},{location,"fun_SUITE.erl",368}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[30]},{location,"fun_SUITE.erl",367}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[30]},{location,"fun_SUITE.erl",365}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope," "},{location,"fun_SUITE.erl",364}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope," "},{location,"fun_SUITE.erl",362}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,"\""},{location,"fun_SUITE.erl",361}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,"\""},{location,"fun_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,"$"},{location,"fun_SUITE.erl",359}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,"$"},{location,"fun_SUITE.erl",358}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,"&"},{location,"fun_SUITE.erl",357}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,"&"},{location,"fun_SUITE.erl",355}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,"&"},{location,"fun_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,"("},{location,"fun_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,"*"},{location,"fun_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,","},{location,"fun_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,"."},{location,"fun_SUITE.erl",344}]}.
    {badmatch,{x,0}}.


{function, parallel_scopes_1a, 0, 192}.
  {label,191}.
    {line,[{location,"fun_SUITE.erl",402}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_1a},0}.
  {label,192}.
    {move,{integer,1},{x,0}}.
    return.


{function, parallel_scopes_1b, 0, 194}.
  {label,193}.
    {line,[{location,"fun_SUITE.erl",407}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_1b},0}.
  {label,194}.
    {move,{integer,1},{x,0}}.
    return.


{function, parallel_scopes_1c, 0, 196}.
  {label,195}.
    {line,[{location,"fun_SUITE.erl",412}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_1c},0}.
  {label,196}.
    {line,[{location,"fun_SUITE.erl",415}]}.
    {badmatch,{integer,99}}.


{function, parallel_scopes_2a, 0, 198}.
  {label,197}.
    {line,[{location,"fun_SUITE.erl",417}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_2a},0}.
  {label,198}.
    {move,{integer,10},{x,0}}.
    return.


{function, parallel_scopes_2b, 0, 200}.
  {label,199}.
    {line,[{location,"fun_SUITE.erl",424}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_2b},0}.
  {label,200}.
    {line,[{location,"fun_SUITE.erl",429}]}.
    {badmatch,{integer,15}}.


{function, parallel_scopes_2c, 2, 202}.
  {label,201}.
    {line,[{location,"fun_SUITE.erl",431}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_2c},2}.
  {label,202}.
    {'%',{var_info,{x,0},[{type,{t_integer,{500,500}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{500,1000}}}]}}.
    {test,is_eq_exact,
          {f,203},
          [{tr,{x,1},{t_integer,{500,1000}}},{integer,500}]}.
    return.
  {label,203}.
    {line,[{location,"fun_SUITE.erl",436}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_2d, 2, 205}.
  {label,204}.
    {line,[{location,"fun_SUITE.erl",438}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_2d},2}.
  {label,205}.
    {'%',{var_info,{x,0},[{type,{t_integer,{600,600}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{600,1000}}}]}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,1},{t_integer,{600,1000}}},{integer,600}]}.
    return.
  {label,206}.
    {line,[{location,"fun_SUITE.erl",443}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_2e, 2, 208}.
  {label,207}.
    {line,[{location,"fun_SUITE.erl",445}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_2e},2}.
  {label,208}.
    {'%',{var_info,{x,0},[{type,{t_integer,{20,20}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{20,25}}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,1}]}}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,0},
               {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_integer,{20,25}}}}},
           {literal,{a,20}}]}.
    return.
  {label,209}.
    {line,[{location,"fun_SUITE.erl",450}]}.
    {badmatch,{x,0}}.


{function, parallel_scopes_3, 1, 211}.
  {label,210}.
    {line,[{location,"fun_SUITE.erl",452}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_3},1}.
  {label,211}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {allocate,0,0}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"fun_SUITE.erl",453}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test_heap,6,1}.
    {put_list,{x,0},{literal,[2]},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0},{atom,a}]}}.
    {deallocate,0}.
    return.


{function, parallel_scopes_4a, 2, 213}.
  {label,212}.
    {line,[{location,"fun_SUITE.erl",457}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_4a},2}.
  {label,213}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,214},
          [{tr,{x,1},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}}]}.
    return.
  {label,214}.
    {line,[{location,"fun_SUITE.erl",460}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_4b, 2, 216}.
  {label,215}.
    {line,[{location,"fun_SUITE.erl",464}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_4b},2}.
  {label,216}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"fun_SUITE.erl",466}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,219},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {atom,true}]}.
    {test,is_eq_exact,
          {f,218},
          [{tr,{y,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {tr,{y,1},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}}]}.
    {trim,1,1}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"fun_SUITE.erl",471}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,217},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {atom,false}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,217}.
    {case_end,{x,0}}.
  {label,218}.
    {line,[{location,"fun_SUITE.erl",470}]}.
    {badmatch,{y,0}}.
  {label,219}.
    {line,[{location,"fun_SUITE.erl",466}]}.
    {case_end,{x,0}}.


{function, parallel_scopes_4c, 2, 221}.
  {label,220}.
    {line,[{location,"fun_SUITE.erl",477}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_4c},2}.
  {label,221}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,222},
          [{tr,{x,1},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}}]}.
    {test_heap,6,2}.
    {put_list,{x,1},{literal,[2]},{x,1}}.
    {put_list,{integer,2},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    return.
  {label,222}.
    {line,[{location,"fun_SUITE.erl",480}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_5, 2, 224}.
  {label,223}.
    {line,[{location,"fun_SUITE.erl",483}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_5},2}.
  {label,224}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,1},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"fun_SUITE.erl",487}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {atom,false}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,225}.
    {case_end,{x,0}}.
  {label,226}.
    {line,[{location,"fun_SUITE.erl",486}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_6, 2, 228}.
  {label,227}.
    {line,[{location,"fun_SUITE.erl",493}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_6},2}.
  {label,228}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,229},
          [{tr,{x,1},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}}]}.
    return.
  {label,229}.
    {line,[{location,"fun_SUITE.erl",496}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_7, 2, 231}.
  {label,230}.
    {line,[{location,"fun_SUITE.erl",500}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_7},2}.
  {label,231}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,232},
          [{tr,{x,1},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}}]}.
    return.
  {label,232}.
    {line,[{location,"fun_SUITE.erl",503}]}.
    {badmatch,{x,1}}.


{function, parallel_scopes_8, 2, 234}.
  {label,233}.
    {line,[{location,"fun_SUITE.erl",507}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_8},2}.
  {label,234}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"fun_SUITE.erl",508}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"fun_SUITE.erl",509}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,235},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {tr,{y,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,235}.
    {badmatch,{x,0}}.


{function, parallel_scopes_9, 3, 237}.
  {label,236}.
    {line,[{location,"fun_SUITE.erl",512}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_9},3}.
  {label,237}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"fun_SUITE.erl",513}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{y,2},
                 {t_union,{t_atom,any},
                          {t_cons,{t_integer,{1,3}},nil},
                          {t_integer,{0,'+inf'}},
                          [{{2,nil},
                            {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                          {t_fun,1,any,any}}},
             {tr,{y,1},
                 {t_union,{t_atom,any},
                          {t_cons,{t_integer,{1,3}},nil},
                          {t_integer,{0,'+inf'}},
                          [{{2,nil},
                            {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                          {t_fun,1,any,any}}}],
            {x,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"fun_SUITE.erl",515}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,239},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {tr,{y,2},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}}]}.
    {test,is_eq_exact,
          {f,238},
          [{tr,{y,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {tr,{y,1},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,2},{y,0}]}}.
    {deallocate,3}.
    return.
  {label,238}.
    {line,[{location,"fun_SUITE.erl",516}]}.
    {badmatch,{y,0}}.
  {label,239}.
    {line,[{location,"fun_SUITE.erl",515}]}.
    {badmatch,{x,0}}.


{function, parallel_scopes_10, 4, 241}.
  {label,240}.
    {line,[{location,"fun_SUITE.erl",518}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_10},4}.
  {label,241}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{333,999}}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[ignored]},
                                   none,
                                   {t_integer,{333,999}},
                                   none,none}}]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_union,{t_atom,[ignored]},
                                   none,
                                   {t_integer,{700,1000}},
                                   none,none}}]}}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {line,[{location,"fun_SUITE.erl",520}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_cons,{t_integer,{1,3}},nil},
                {t_integer,{0,'+inf'}},
                [{{2,nil},{t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                {t_fun,1,any,any}}},
        {f,248},
        {list,[{atom,false},{f,243},{atom,true},{f,242}]}}.
  {label,242}.
    {test,is_eq_exact,
          {f,245},
          [{tr,{y,1},
               {t_union,{t_atom,[ignored]},
                        none,
                        {t_integer,{333,999}},
                        none,none}},
           {tr,{y,2},{t_integer,{333,999}}}]}.
    {jump,{f,244}}.
  {label,243}.
    {test,is_eq_exact,
          {f,247},
          [{tr,{y,0},
               {t_union,{t_atom,[ignored]},
                        none,
                        {t_integer,{700,1000}},
                        none,none}},
           {tr,{y,2},{t_integer,{333,999}}}]}.
    {test,is_eq_exact,
          {f,246},
          [{tr,{y,2},{t_integer,{700,999}}},{integer,999}]}.
  {label,244}.
    {move,{y,2},{x,0}}.
    {deallocate,3}.
    return.
  {label,245}.
    {line,[{location,"fun_SUITE.erl",523}]}.
    {badmatch,{y,1}}.
  {label,246}.
    {line,[{location,"fun_SUITE.erl",526}]}.
    {badmatch,{integer,999}}.
  {label,247}.
    {line,[{location,"fun_SUITE.erl",525}]}.
    {badmatch,{y,0}}.
  {label,248}.
    {line,[{location,"fun_SUITE.erl",520}]}.
    {case_end,{x,0}}.


{function, parallel_scopes_11, 3, 250}.
  {label,249}.
    {line,[{location,"fun_SUITE.erl",531}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_11},3}.
  {label,250}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{889,889}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{800,889}},
                                   none,none}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{810,889}},
                                   none,none}}]}}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"fun_SUITE.erl",533}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_cons,{t_integer,{1,3}},nil},
                {t_integer,{0,'+inf'}},
                [{{2,nil},{t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                {t_fun,1,any,any}}},
        {f,256},
        {list,[{atom,false},{f,255},{atom,true},{f,251}]}}.
  {label,251}.
    {test,is_eq_exact,
          {f,254},
          [{tr,{y,1},
               {t_union,{t_atom,[a]},none,{t_integer,{800,889}},none,none}},
           {tr,{y,2},
               {t_union,{t_atom,[a]},none,{t_integer,{889,889}},none,none}}]}.
    {test,is_eq_exact,
          {f,253},
          [{tr,{y,0},
               {t_union,{t_atom,[a]},none,{t_integer,{810,889}},none,none}},
           {tr,{y,2},
               {t_union,{t_atom,[a]},none,{t_integer,{889,889}},none,none}}]}.
    {test,is_eq_exact,
          {f,252},
          [{tr,{y,2},
               {t_union,{t_atom,[a]},none,{t_integer,{889,889}},none,none}},
           {integer,889}]}.
    {move,{y,2},{x,0}}.
    {deallocate,3}.
    return.
  {label,252}.
    {line,[{location,"fun_SUITE.erl",537}]}.
    {badmatch,{integer,889}}.
  {label,253}.
    {line,[{location,"fun_SUITE.erl",536}]}.
    {badmatch,{y,0}}.
  {label,254}.
    {line,[{location,"fun_SUITE.erl",535}]}.
    {badmatch,{y,1}}.
  {label,255}.
    {line,[{location,"fun_SUITE.erl",539}]}.
    {badmatch,{atom,cannot_happen}}.
  {label,256}.
    {line,[{location,"fun_SUITE.erl",533}]}.
    {case_end,{x,0}}.


{function, parallel_scopes_12, 3, 258}.
  {label,257}.
    {line,[{location,"fun_SUITE.erl",544}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_12},3}.
  {label,258}.
    {'%',{var_info,{x,0},[{type,{t_integer,{333,333}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[other]},
                                   none,
                                   {t_integer,{333,333}},
                                   none,none}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[nope]},
                                   none,
                                   {t_integer,{333,333}},
                                   none,none}}]}}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"fun_SUITE.erl",546}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_cons,{t_integer,{1,3}},nil},
                {t_integer,{0,'+inf'}},
                [{{2,nil},{t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                {t_fun,1,any,any}}},
        {f,263},
        {list,[{atom,false},{f,262},{atom,true},{f,259}]}}.
  {label,259}.
    {test,is_eq_exact,
          {f,261},
          [{tr,{y,1},
               {t_union,{t_atom,[other]},
                        none,
                        {t_integer,{333,333}},
                        none,none}},
           {integer,333}]}.
    {test,is_eq_exact,
          {f,260},
          [{tr,{y,0},
               {t_union,{t_atom,[nope]},none,{t_integer,{333,333}},none,none}},
           {integer,333}]}.
    {move,{y,2},{x,0}}.
    {deallocate,3}.
    return.
  {label,260}.
    {line,[{location,"fun_SUITE.erl",550}]}.
    {badmatch,{atom,nope}}.
  {label,261}.
    {line,[{location,"fun_SUITE.erl",549}]}.
    {badmatch,{atom,other}}.
  {label,262}.
    {line,[{location,"fun_SUITE.erl",552}]}.
    {badmatch,{atom,cannot_happen}}.
  {label,263}.
    {line,[{location,"fun_SUITE.erl",546}]}.
    {case_end,{x,0}}.


{function, parallel_scopes_13, 2, 265}.
  {label,264}.
    {line,[{location,"fun_SUITE.erl",557}]}.
    {func_info,{atom,fun_SUITE},{atom,parallel_scopes_13},2}.
  {label,265}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{99,99}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[nope]},
                                   none,
                                   {t_integer,{100,100}},
                                   none,none}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"fun_SUITE.erl",560}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_eq_exact,
          {f,267},
          [{tr,{y,1},
               {t_union,{t_atom,[no]},none,{t_integer,{99,99}},none,none}},
           {integer,99}]}.
    {test,is_eq_exact,
          {f,266},
          [{tr,{y,0},
               {t_union,{t_atom,[nope]},none,{t_integer,{100,100}},none,none}},
           {integer,100}]}.
    {move,{literal,[1,100]},{x,0}}.
    {deallocate,2}.
    return.
  {label,266}.
    {line,[{location,"fun_SUITE.erl",562}]}.
    {badmatch,{atom,nope}}.
  {label,267}.
    {line,[{location,"fun_SUITE.erl",561}]}.
    {badmatch,{atom,no}}.


{function, coverage, 1, 269}.
  {label,268}.
    {line,[{location,"fun_SUITE.erl",565}]}.
    {func_info,{atom,fun_SUITE},{atom,coverage},1}.
  {label,269}.
    {allocate,0,0}.
    {line,[{location,"fun_SUITE.erl",566}]}.
    {call,0,{f,273}}. % coverage_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"fun_SUITE.erl",568}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {call,1,{f,275}}. % coverage_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_number,any},nil}}]}}.
    {test,is_eq_exact,
          {f,271},
          [{tr,{x,0},{t_list,{t_number,any},nil}},{literal,[2,3,4]}]}.
    {move,{literal,{[],x}},{x,0}}.
    {line,[{location,"fun_SUITE.erl",570}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {call,1,{f,277}}. % coverage_3/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_union,
                               {t_atom,any},
                               {t_cons,{t_integer,{1,3}},nil},
                               {t_integer,{0,'+inf'}},
                               [{{2,nil},
                                 {t_tuple,2,true,
                                     #{1 => nil,2 => {t_atom,[x]}}}}],
                               {t_fun,1,any,any}},
                       2 =>
                           {t_fun,0,
                               {'-coverage_3/1-fun-0-',1},
                               {t_atom,[x]}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,270},
          [{tr,{x,1},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}},
           {integer,42}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"fun_SUITE.erl",571}]}.
    {call_fun2,{f,285},
               0,
               {tr,{x,0},{t_fun,0,{'-coverage_3/1-fun-0-',1},{t_atom,[x]}}}}.
    {'%',{var_info,{x,0},[{type,{t_atom,[x]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,270}.
    {line,[{location,"fun_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,271}.
    {line,[{location,"fun_SUITE.erl",568}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 0, 273}.
  {label,272}.
    {line,[{location,"fun_SUITE.erl",575}]}.
    {func_info,{atom,fun_SUITE},{atom,coverage_1},0}.
  {label,273}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_2, 1, 275}.
  {label,274}.
    {line,[{location,"fun_SUITE.erl",584}]}.
    {func_info,{atom,fun_SUITE},{atom,coverage_2},1}.
  {label,275}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,287},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_number,any}}]}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"fun_SUITE.erl",587}]}.
    {call_ext_only,2,{extfunc,lists,map,2}}.


{function, coverage_3, 1, 277}.
  {label,276}.
    {line,[{location,"fun_SUITE.erl",590}]}.
    {func_info,{atom,fun_SUITE},{atom,coverage_3},1}.
  {label,277}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test,is_tuple,
          {f,276},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{1,3}},nil},
                        {t_integer,{0,'+inf'}},
                        [{{2,nil},
                          {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                        {t_fun,1,any,any}}}]}.
    {allocate,0,0}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"fun_SUITE.erl",591}]}.
    {call,1,{f,279}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,285},0,0,{x,1},{list,[{atom,x}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[x]}}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,0}.
    return.


{function, id, 1, 279}.
  {label,278}.
    {line,[{location,"fun_SUITE.erl",593}]}.
    {func_info,{atom,fun_SUITE},{atom,id},1}.
  {label,279}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{1,3}},nil},
                     {t_integer,{0,'+inf'}},
                     [{{2,nil},
                       {t_tuple,2,true,#{1 => nil,2 => {t_atom,[x]}}}}],
                     {t_fun,1,any,any}}}]}}.
    return.


{function, module_info, 0, 281}.
  {label,280}.
    {line,[]}.
    {func_info,{atom,fun_SUITE},{atom,module_info},0}.
  {label,281}.
    {move,{atom,fun_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 283}.
  {label,282}.
    {line,[]}.
    {func_info,{atom,fun_SUITE},{atom,module_info},1}.
  {label,283}.
    {move,{x,0},{x,1}}.
    {move,{atom,fun_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-coverage_3/1-fun-0-', 1, 285}.
  {label,284}.
    {line,[{location,"fun_SUITE.erl",591}]}.
    {func_info,{atom,fun_SUITE},{atom,'-coverage_3/1-fun-0-'},1}.
  {label,285}.
    {'%',{var_info,{x,0},[{type,{t_atom,[x]}}]}}.
    return.


{function, '-coverage_2/1-fun-0-', 1, 287}.
  {label,286}.
    {line,[{location,"fun_SUITE.erl",587}]}.
    {func_info,{atom,fun_SUITE},{atom,'-coverage_2/1-fun-0-'},1}.
  {label,287}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    return.


{function, '-badfun/1-fun-0-', 1, 289}.
  {label,288}.
    {line,[{location,"fun_SUITE.erl",308}]}.
    {func_info,{atom,fun_SUITE},{atom,'-badfun/1-fun-0-'},1}.
  {label,289}.
    {test,is_eq_exact,{f,288},[{x,0},{atom,literal}]}.
    {allocate,0,0}.
    {move,{atom,literal},{x,0}}.
    {line,[{location,"fun_SUITE.erl",309}]}.
    {call_fun,0}.
    {deallocate,0}.
    return.


{function, '-badarity/1-fun-0-', 0, 291}.
  {label,290}.
    {line,[{location,"fun_SUITE.erl",288}]}.
    {func_info,{atom,fun_SUITE},{atom,'-badarity/1-fun-0-'},0}.
  {label,291}.
    {move,{integer,42},{x,0}}.
    return.


{function, '-eep37_gh6515_2/0-Fact/1-0-', 1, 293}.
  {label,292}.
    {line,[{location,"fun_SUITE.erl",281}]}.
    {func_info,{atom,fun_SUITE},{atom,'-eep37_gh6515_2/0-Fact/1-0-'},1}.
  {label,293}.
    {test,is_lt,{f,294},[{integer,0},{x,0}]}.
    {line,[{location,"fun_SUITE.erl",282}]}.
    {gc_bif,'-',
            {f,0},
            1,
            [{tr,{x,0},
                 {t_union,{t_atom,any},
                          {t_list,any,any},
                          {t_number,{0,'+inf'}},
                          {t_tuple,0,false,#{}},
                          other}},
             {integer,1}],
            {x,1}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,293}}. % '-eep37_gh6515_2/0-Fact/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{y,0},{t_number,{0,'+inf'}}},
             {tr,{x,0},{t_number,{0,'+inf'}}}],
            {x,0}}.
    {deallocate,1}.
    return.
  {label,294}.
    {test,is_eq_exact,{f,292},[{tr,{x,0},{t_number,{'-inf',0}}},{integer,0}]}.
    {move,{integer,1},{x,0}}.
    return.


{function, '-eep37_gh6515_1/0-X/0-0-', 0, 296}.
  {label,295}.
    {line,[{location,"fun_SUITE.erl",270}]}.
    {func_info,{atom,fun_SUITE},{atom,'-eep37_gh6515_1/0-X/0-0-'},0}.
  {label,296}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,296},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_fun,0,
                     {'-eep37_gh6515_1/0-X/0-0-',0},
                     {t_fun,0,
                         {'-eep37_gh6515_1/0-X/0-0-',0},
                         {t_fun,0,
                             {'-eep37_gh6515_1/0-X/0-0-',0},
                             {t_fun,0,
                                 {'-eep37_gh6515_1/0-X/0-0-',0},
                                 {t_fun,0,
                                     {'-eep37_gh6515_1/0-X/0-0-',0},
                                     any}}}}}}]}}.
    return.


{function, '-dup2/0-fun-0-', 0, 298}.
  {label,297}.
    {line,[{location,"fun_SUITE.erl",251}]}.
    {func_info,{atom,fun_SUITE},{atom,'-dup2/0-fun-0-'},0}.
  {label,298}.
    {move,{atom,dup2},{x,0}}.
    return.


{function, '-dup1/0-fun-0-', 0, 300}.
  {label,299}.
    {line,[{location,"fun_SUITE.erl",248}]}.
    {func_info,{atom,fun_SUITE},{atom,'-dup1/0-fun-0-'},0}.
  {label,300}.
    {move,{atom,dup1},{x,0}}.
    return.


{function, '-eep37_basic/0-fun-2-', 1, 302}.
  {label,301}.
    {line,[{location,"fun_SUITE.erl",236}]}.
    {func_info,{atom,fun_SUITE},{atom,'-eep37_basic/0-fun-2-'},1}.
  {label,302}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,42}],{x,0}}.
    return.


{function, '-eep37_basic/0-fun-1-', 1, 304}.
  {label,303}.
    {line,[{location,"fun_SUITE.erl",235}]}.
    {func_info,{atom,fun_SUITE},{atom,'-eep37_basic/0-fun-1-'},1}.
  {label,304}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    return.


{function, '-eep37_basic/0-Fact/1-0-', 1, 306}.
  {label,305}.
    {line,[{location,"fun_SUITE.erl",234}]}.
    {func_info,{atom,fun_SUITE},{atom,'-eep37_basic/0-Fact/1-0-'},1}.
  {label,306}.
    {test,is_lt,{f,307},[{integer,0},{x,0}]}.
    {gc_bif,'-',
            {f,0},
            1,
            [{tr,{x,0},
                 {t_union,{t_atom,any},
                          {t_list,any,any},
                          {t_number,{0,'+inf'}},
                          {t_tuple,0,false,#{}},
                          other}},
             {integer,1}],
            {x,1}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,306}}. % '-eep37_basic/0-Fact/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{y,0},{t_number,{0,'+inf'}}},
             {tr,{x,0},{t_number,{0,'+inf'}}}],
            {x,0}}.
    {deallocate,1}.
    return.
  {label,307}.
    {test,is_eq_exact,{f,305},[{tr,{x,0},{t_number,{'-inf',0}}},{integer,0}]}.
    {move,{integer,1},{x,0}}.
    return.


{function, '-external/1-fun-23-', 1, 309}.
  {label,308}.
    {line,[{location,"fun_SUITE.erl",201}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-23-'},1}.
  {label,309}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,312},0,0,{x,0},{list,[]}}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,310},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,310},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,310}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-22-', 1, 312}.
  {label,311}.
    {line,[{location,"fun_SUITE.erl",201}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-22-'},1}.
  {label,312}.
    return.


{function, '-external/1-fun-21-', 1, 314}.
  {label,313}.
    {line,[{location,"fun_SUITE.erl",200}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-21-'},1}.
  {label,314}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,317},0,0,{x,0},{list,[]}}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,315},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,315},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,315}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-20-', 1, 317}.
  {label,316}.
    {line,[{location,"fun_SUITE.erl",200}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-20-'},1}.
  {label,317}.
    return.


{function, '-external/1-fun-19-', 1, 319}.
  {label,318}.
    {line,[{location,"fun_SUITE.erl",199}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-19-'},1}.
  {label,319}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,322},0,0,{x,0},{list,[]}}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,320},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,320},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,320}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-18-', 1, 322}.
  {label,321}.
    {line,[{location,"fun_SUITE.erl",199}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-18-'},1}.
  {label,322}.
    return.


{function, '-external/1-fun-17-', 1, 324}.
  {label,323}.
    {line,[{location,"fun_SUITE.erl",198}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-17-'},1}.
  {label,324}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,327},0,0,{x,0},{list,[]}}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,325},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,325},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,325}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-16-', 1, 327}.
  {label,326}.
    {line,[{location,"fun_SUITE.erl",198}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-16-'},1}.
  {label,327}.
    return.


{function, '-external/1-fun-15-', 1, 329}.
  {label,328}.
    {line,[{location,"fun_SUITE.erl",197}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-15-'},1}.
  {label,329}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,332},0,0,{x,0},{list,[]}}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,330},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,330},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,330}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-14-', 1, 332}.
  {label,331}.
    {line,[{location,"fun_SUITE.erl",197}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-14-'},1}.
  {label,332}.
    return.


{function, '-external/1-fun-13-', 1, 334}.
  {label,333}.
    {line,[{location,"fun_SUITE.erl",196}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-13-'},1}.
  {label,334}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,337},0,0,{x,0},{list,[]}}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,335},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,335},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,335}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-12-', 1, 337}.
  {label,336}.
    {line,[{location,"fun_SUITE.erl",196}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-12-'},1}.
  {label,337}.
    return.


{function, '-external/1-fun-11-', 1, 339}.
  {label,338}.
    {line,[{location,"fun_SUITE.erl",195}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-11-'},1}.
  {label,339}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,342},0,0,{x,0},{list,[]}}.
    {move,{y,0},{x,2}}.
    {move,{literal,[x,y]},{x,1}}.
    {call_fun,2}.
    {test,is_eq_exact,{f,340},[{x,0},{literal,[x,y]}]}.
    {move,{atom,type},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,erlang,fun_info,2}}.
    {test,is_eq_exact,{f,340},[{x,0},{literal,{type,external}}]}.
    {deallocate,0}.
    return.
  {label,340}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-10-', 1, 342}.
  {label,341}.
    {line,[{location,"fun_SUITE.erl",195}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-10-'},1}.
  {label,342}.
    return.


{function, '-external/1-fun-8-', 1, 344}.
  {label,343}.
    {line,[{location,"fun_SUITE.erl",194}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-8-'},1}.
  {label,344}.
    return.


{function, '-external/1-fun-7-', 1, 346}.
  {label,345}.
    {line,[{location,"fun_SUITE.erl",188}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-7-'},1}.
  {label,346}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,347},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,347}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-6-', 1, 349}.
  {label,348}.
    {line,[{location,"fun_SUITE.erl",187}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-6-'},1}.
  {label,349}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,350},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,350}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-5-', 1, 352}.
  {label,351}.
    {line,[{location,"fun_SUITE.erl",186}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-5-'},1}.
  {label,352}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,353},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,353}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-4-', 1, 355}.
  {label,354}.
    {line,[{location,"fun_SUITE.erl",185}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-4-'},1}.
  {label,355}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,356},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,356}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-3-', 1, 358}.
  {label,357}.
    {line,[{location,"fun_SUITE.erl",184}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-3-'},1}.
  {label,358}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,359},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,359}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-2-', 1, 361}.
  {label,360}.
    {line,[{location,"fun_SUITE.erl",183}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-2-'},1}.
  {label,361}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,362},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,362}.
    {badmatch,{x,0}}.


{function, '-external/1-fun-1-', 1, 364}.
  {label,363}.
    {line,[{location,"fun_SUITE.erl",182}]}.
    {func_info,{atom,fun_SUITE},{atom,'-external/1-fun-1-'},1}.
  {label,364}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,365},[{x,0},{literal,{ok,{a,b}}}]}.
    {deallocate,0}.
    return.
  {label,365}.
    {badmatch,{x,0}}.


{function, '-bif_fun/1-fun-0-', 1, 367}.
  {label,366}.
    {line,[{location,"fun_SUITE.erl",163}]}.
    {func_info,{atom,fun_SUITE},{atom,'-bif_fun/1-fun-0-'},1}.
  {label,367}.
    {gc_bif,abs,{f,0},1,[{x,0}],{x,0}}.
    return.


{function, '-otp_7202/0-fun-0-', 2, 369}.
  {label,368}.
    {line,[{location,"fun_SUITE.erl",150}]}.
    {func_info,{atom,fun_SUITE},{atom,'-otp_7202/0-fun-0-'},2}.
  {label,369}.
    {'%',{var_info,{x,1},[{type,{t_atom,[true]}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-overwritten_fun_1/1-fun-0-', 1, 371}.
  {label,370}.
    {line,[{location,"fun_SUITE.erl",125}]}.
    {func_info,{atom,fun_SUITE},{atom,'-overwritten_fun_1/1-fun-0-'},1}.
  {label,371}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     none,none,
                     [{{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},
                             2 =>
                                 {t_union,{t_atom,[c]},nil,none,none,none}}}}],
                     none}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, '-l1/0-fun-0-', 2, 373}.
  {label,372}.
    {line,[{location,"fun_SUITE.erl",68}]}.
    {func_info,{atom,fun_SUITE},{atom,'-l1/0-fun-0-'},2}.
  {label,373}.
    {test,is_eq_exact,{f,374},[{x,1},{integer,1}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,374}.
    {gc_bif,'-',{f,0},2,[{x,1},{integer,1}],{x,2}}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,0},{x,2}}.
    {call_fun,2}.
    {gc_bif,'*',{f,0},1,[{tr,{y,0},{t_number,any}},{x,0}],{x,0}}.
    {deallocate,1}.
    return.


{function, '-l1/0-fun-2-', 2, 376}.
  {label,375}.
    {line,[{location,"fun_SUITE.erl",67}]}.
    {func_info,{atom,fun_SUITE},{atom,'-l1/0-fun-2-'},2}.
  {label,376}.
    {test,is_eq_exact,{f,377},[{x,1},{integer,1}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,377}.
    {gc_bif,'-',{f,0},2,[{x,1},{integer,1}],{x,2}}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,0},{x,2}}.
    {call_fun,2}.
    {gc_bif,'*',{f,0},1,[{tr,{y,0},{t_number,any}},{x,0}],{x,0}}.
    {deallocate,1}.
    return.


{function, '-l1/0-fun-4-', 1, 379}.
  {label,378}.
    {line,[{location,"fun_SUITE.erl",66}]}.
    {func_info,{atom,fun_SUITE},{atom,'-l1/0-fun-4-'},1}.
  {label,379}.
    {jump,{f,378}}.
