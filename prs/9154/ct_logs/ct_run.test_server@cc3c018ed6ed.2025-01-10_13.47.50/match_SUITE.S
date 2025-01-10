{module, match_SUITE}.  %% version = 0

{exports, [{aliases,1},
           {all,0},
           {coverage,1},
           {deselectify,1},
           {end_per_group,2},
           {end_per_suite,1},
           {eq_types,1},
           {grab_bag,1},
           {groups,0},
           {heisen_variables,1},
           {init_per_group,2},
           {init_per_suite,1},
           {letify_guard,1},
           {literal_binary,1},
           {map_vars_used,1},
           {match_after_return,1},
           {match_boolean_list,1},
           {match_in_call,1},
           {match_map,1},
           {match_right_tuple,1},
           {mixed,1},
           {module_info,0},
           {module_info,1},
           {mutable_variables,1},
           {non_matching_aliases,1},
           {pmatch,1},
           {selectify,1},
           {shortcut_boolean,1},
           {suite,0},
           {tuple_size_in_try,1},
           {unary_op,1},
           {underscore,1},
           {untuplify,1}]}.

{attributes, []}.

{labels, 587}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"match_SUITE.erl",35}]}.
    {func_info,{atom,match_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"match_SUITE.erl",37}]}.
    {func_info,{atom,match_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"match_SUITE.erl",40}]}.
    {func_info,{atom,match_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [pmatch,mixed,aliases,non_matching_aliases,
                        match_in_call,untuplify,shortcut_boolean,letify_guard,
                        selectify,deselectify,underscore,match_map,
                        map_vars_used,coverage,grab_bag,literal_binary,
                        unary_op,eq_types,match_after_return,
                        match_right_tuple,tuple_size_in_try,
                        match_boolean_list,heisen_variables,
                        mutable_variables]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"match_SUITE.erl",52}]}.
    {func_info,{atom,match_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,match_SUITE},{x,0}}.
    {line,[{location,"match_SUITE.erl",53}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"match_SUITE.erl",56}]}.
    {func_info,{atom,match_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"match_SUITE.erl",59}]}.
    {func_info,{atom,match_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"match_SUITE.erl",62}]}.
    {func_info,{atom,match_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, pmatch, 1, 16}.
  {label,15}.
    {line,[{location,"match_SUITE.erl",66}]}.
    {func_info,{atom,match_SUITE},{atom,pmatch},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"match_SUITE.erl",67}]}.
    {call,1,{f,20}}. % doit/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"match_SUITE.erl",68}]}.
    {call,1,{f,20}}. % doit/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"match_SUITE.erl",69}]}.
    {call,1,{f,20}}. % doit/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 => {t_atom,[baz,foobar]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,18},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_atom,[baz,foobar]}}}}],
                        none}},
           {literal,{error,baz}}]}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"match_SUITE.erl",70}]}.
    {call,1,{f,20}}. % doit/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_atom,[baz,foobar]}}}}]}}.
    {test,is_eq_exact,
          {f,17},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[error]},2 => {t_atom,[baz,foobar]}}}},
           {literal,{error,foobar}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {badmatch,{x,0}}.
  {label,18}.
    {line,[{location,"match_SUITE.erl",69}]}.
    {badmatch,{x,0}}.


{function, doit, 1, 20}.
  {label,19}.
    {line,[{location,"match_SUITE.erl",82}]}.
    {func_info,{atom,match_SUITE},{atom,doit},1}.
  {label,20}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,4}}}]}}.
    {select_val,{tr,{x,0},{t_integer,{1,4}}},
                {f,24},
                {list,[{integer,3},{f,22},{integer,4},{f,21}]}}.
  {label,21}.
    {move,{atom,foobar},{x,0}}.
    {jump,{f,23}}.
  {label,22}.
    {move,{atom,baz},{x,0}}.
  {label,23}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    return.
  {label,24}.
    {move,{atom,ok},{x,0}}.
    return.


{function, mixed, 1, 26}.
  {label,25}.
    {line,[{location,"match_SUITE.erl",89}]}.
    {func_info,{atom,match_SUITE},{atom,mixed},1}.
  {label,26}.
    {test,is_list,{f,25},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"match_SUITE.erl",90}]}.
    {call,1,{f,34}}. % mixit/1
    {'%',{var_info,{x,0},[{type,{t_atom,[glufs]}}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"match_SUITE.erl",91}]}.
    {call,1,{f,34}}. % mixit/1
    {'%',{var_info,{x,0},[{type,{t_atom,[glufs,klafs]}}]}}.
    {test,is_eq_exact,{f,32},[{tr,{x,0},{t_atom,[glufs,klafs]}},{atom,klafs}]}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"match_SUITE.erl",92}]}.
    {call,1,{f,34}}. % mixit/1
    {'%',{var_info,{x,0},[{type,{t_atom,[fnurra,glufs]}}]}}.
    {test,is_eq_exact,
          {f,31},
          [{tr,{x,0},{t_atom,[fnurra,glufs]}},{atom,fnurra}]}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"match_SUITE.erl",93}]}.
    {call,1,{f,34}}. % mixit/1
    {'%',{var_info,{x,0},[{type,{t_atom,[glufs,usch]}}]}}.
    {test,is_eq_exact,{f,30},[{tr,{x,0},{t_atom,[glufs,usch]}},{atom,usch}]}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"match_SUITE.erl",94}]}.
    {call,1,{f,34}}. % mixit/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[glufs]},
         none,none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},
              2 =>
               {t_union,
                {t_atom,[blurf]},
                none,
                {t_integer,{87987987,87987987}},
                [{{3,{t_atom,[a]}},
                  {t_tuple,3,true,
                   #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,29},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[glufs]},
                 none,none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 =>
                             {t_union,
                                 {t_atom,[blurf]},
                                 none,
                                 {t_integer,{87987987,87987987}},
                                 [{{3,{t_atom,[a]}},
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[a]},
                                         2 => {t_atom,[b]},
                                         3 => {t_atom,[c]}}}}],
                                 none}}}}],
                 none}},
         {literal,{error,blurf}}]}.
    {move,{integer,6},{x,0}}.
    {line,[{location,"match_SUITE.erl",95}]}.
    {call,1,{f,34}}. % mixit/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[glufs]},
         none,none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},
              2 =>
               {t_union,
                {t_atom,[blurf]},
                none,
                {t_integer,{87987987,87987987}},
                [{{3,{t_atom,[a]}},
                  {t_tuple,3,true,
                   #{1 => {t_atom,[a]},2 => {t_atom,[b]},3 => {t_atom,[c]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,28},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[glufs]},
                 none,none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 =>
                             {t_union,
                                 {t_atom,[blurf]},
                                 none,
                                 {t_integer,{87987987,87987987}},
                                 [{{3,{t_atom,[a]}},
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[a]},
                                         2 => {t_atom,[b]},
                                         3 => {t_atom,[c]}}}}],
                                 none}}}}],
                 none}},
         {literal,{error,87987987}}]}.
    {move,{integer,7},{x,0}}.
    {line,[{location,"match_SUITE.erl",96}]}.
    {call,1,{f,34}}. % mixit/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[error]},
                       2 =>
                           {t_union,
                               {t_atom,[blurf]},
                               none,
                               {t_integer,{87987987,87987987}},
                               [{{3,{t_atom,[a]}},
                                 {t_tuple,3,true,
                                     #{1 => {t_atom,[a]},
                                       2 => {t_atom,[b]},
                                       3 => {t_atom,[c]}}}}],
                               none}}}}]}}.
    {test,is_eq_exact,
        {f,27},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[error]},
                   2 =>
                       {t_union,
                           {t_atom,[blurf]},
                           none,
                           {t_integer,{87987987,87987987}},
                           [{{3,{t_atom,[a]}},
                             {t_tuple,3,true,
                                 #{1 => {t_atom,[a]},
                                   2 => {t_atom,[b]},
                                   3 => {t_atom,[c]}}}}],
                           none}}}},
         {literal,{error,{a,b,c}}}]}.
    {line,[{location,"match_SUITE.erl",97}]}.
    {call,0,{f,44}}. % mixed_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,27}.
    {line,[{location,"match_SUITE.erl",96}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{location,"match_SUITE.erl",95}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{location,"match_SUITE.erl",94}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{location,"match_SUITE.erl",93}]}.
    {badmatch,{atom,glufs}}.
  {label,31}.
    {line,[{location,"match_SUITE.erl",92}]}.
    {badmatch,{atom,glufs}}.
  {label,32}.
    {line,[{location,"match_SUITE.erl",91}]}.
    {badmatch,{atom,glufs}}.


{function, mixit, 1, 34}.
  {label,33}.
    {line,[{location,"match_SUITE.erl",100}]}.
    {func_info,{atom,match_SUITE},{atom,mixit},1}.
  {label,34}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,7}}}]}}.
    {select_val,{tr,{x,0},{t_integer,{1,7}}},
                {f,42},
                {list,[{integer,2},
                       {f,41},
                       {integer,3},
                       {f,40},
                       {integer,4},
                       {f,39},
                       {integer,5},
                       {f,37},
                       {integer,6},
                       {f,36},
                       {integer,7},
                       {f,35}]}}.
  {label,35}.
    {move,{literal,{a,b,c}},{x,0}}.
    {jump,{f,38}}.
  {label,36}.
    {move,{integer,87987987},{x,0}}.
    {jump,{f,38}}.
  {label,37}.
    {move,{atom,blurf},{x,0}}.
  {label,38}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    return.
  {label,39}.
    {move,{atom,usch},{x,0}}.
    return.
  {label,40}.
    {move,{atom,fnurra},{x,0}}.
    return.
  {label,41}.
    {move,{atom,klafs},{x,0}}.
    return.
  {label,42}.
    {move,{atom,glufs},{x,0}}.
    return.


{function, mixed_1, 0, 44}.
  {label,43}.
    {line,[{location,"match_SUITE.erl",117}]}.
    {func_info,{atom,match_SUITE},{atom,mixed_1},0}.
  {label,44}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, aliases, 1, 46}.
  {label,45}.
    {line,[{location,"match_SUITE.erl",128}]}.
    {func_info,{atom,match_SUITE},{atom,aliases},1}.
  {label,46}.
    {test,is_list,{f,45},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{location,"match_SUITE.erl",130}]}.
    {call,1,{f,81}}. % str_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,79},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,"def"},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",131}]}.
    {call,1,{f,81}}. % str_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,78},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,"ghi"},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",132}]}.
    {call,1,{f,81}}. % str_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,77},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,"klm"},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",133}]}.
    {call,1,{f,81}}. % str_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,76},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,"qrs"},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",134}]}.
    {call,1,{f,81}}. % str_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,75},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,"xy"},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",135}]}.
    {call,1,{f,81}}. % str_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,74},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",136}]}.
    {call,1,{f,81}}. % str_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,73},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",137}]}.
    {call,1,{f,81}}. % str_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,72},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,"blurf"},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",138}]}.
    {call,1,{f,81}}. % str_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,71},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,118},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",141}]}.
    {call,1,{f,104}}. % char_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,70},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{integer,118},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",142}]}.
    {call,1,{f,104}}. % char_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,69},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{integer,119},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",143}]}.
    {call,1,{f,104}}. % char_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,68},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{integer,119},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",144}]}.
    {call,1,{f,104}}. % char_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,67},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",145}]}.
    {call,1,{f,104}}. % char_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,66},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{float,3.0},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",146}]}.
    {call,1,{f,104}}. % char_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,65},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{integer,95},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",147}]}.
    {call,1,{f,104}}. % char_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,64},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",148}]}.
    {call,1,{f,104}}. % char_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,63},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",150}]}.
    {call,1,{f,117}}. % three/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{42,42}},
                                     2 => {t_integer,{42,42}},
                                     3 => {t_integer,{42,42}}}}}]}}.
    {move,{literal,{1,42,99}},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",152}]}.
    {call,1,{f,123}}. % tuple_alias/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{6,{t_integer,{-10,-10}}},
                       {t_tuple,6,true,
                           #{1 => {t_integer,{-10,-10}},
                             2 => {t_integer,{20,20}},
                             3 => {t_integer,{-10,-10}},
                             4 => {t_integer,{20,20}},
                             5 => {t_integer,{-10,-10}},
                             6 => {t_integer,{20,20}}}}},
                      {{6,{t_integer,{1,1}}},
                       {t_tuple,6,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{42,42}},
                             3 => {t_integer,{99,99}},
                             4 => {t_integer,{1,1}},
                             5 => {t_integer,{42,42}},
                             6 => {t_integer,{99,99}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,62},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{6,{t_integer,{-10,-10}}},
                          {t_tuple,6,true,
                                   #{1 => {t_integer,{-10,-10}},
                                     2 => {t_integer,{20,20}},
                                     3 => {t_integer,{-10,-10}},
                                     4 => {t_integer,{20,20}},
                                     5 => {t_integer,{-10,-10}},
                                     6 => {t_integer,{20,20}}}}},
                         {{6,{t_integer,{1,1}}},
                          {t_tuple,6,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{42,42}},
                                     3 => {t_integer,{99,99}},
                                     4 => {t_integer,{1,1}},
                                     5 => {t_integer,{42,42}},
                                     6 => {t_integer,{99,99}}}}}],
                        none}},
           {literal,{1,42,99,1,42,99}}]}.
    {move,{literal,{-10,20}},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",153}]}.
    {call,1,{f,123}}. % tuple_alias/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{6,{t_integer,{-10,-10}}},
                       {t_tuple,6,true,
                           #{1 => {t_integer,{-10,-10}},
                             2 => {t_integer,{20,20}},
                             3 => {t_integer,{-10,-10}},
                             4 => {t_integer,{20,20}},
                             5 => {t_integer,{-10,-10}},
                             6 => {t_integer,{20,20}}}}},
                      {{6,{t_integer,{1,1}}},
                       {t_tuple,6,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{42,42}},
                             3 => {t_integer,{99,99}},
                             4 => {t_integer,{1,1}},
                             5 => {t_integer,{42,42}},
                             6 => {t_integer,{99,99}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,61},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{6,{t_integer,{-10,-10}}},
                          {t_tuple,6,true,
                                   #{1 => {t_integer,{-10,-10}},
                                     2 => {t_integer,{20,20}},
                                     3 => {t_integer,{-10,-10}},
                                     4 => {t_integer,{20,20}},
                                     5 => {t_integer,{-10,-10}},
                                     6 => {t_integer,{20,20}}}}},
                         {{6,{t_integer,{1,1}}},
                          {t_tuple,6,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{42,42}},
                                     3 => {t_integer,{99,99}},
                                     4 => {t_integer,{1,1}},
                                     5 => {t_integer,{42,42}},
                                     6 => {t_integer,{99,99}}}}}],
                        none}},
           {literal,{-10,20,-10,20,-10,20}}]}.
    {move,{literal,{1,2,3}},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",154}]}.
    {call,1,{f,134}}. % tup_lit_alias/1
    {'%',{var_info,{x,0},[{type,{t_integer,{6,6}}}]}}.
    {move,{literal,{1,2,3}},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",155}]}.
    {call,1,{f,136}}. % tup_lit_alias_rev/1
    {'%',{var_info,{x,0},[{type,{t_integer,{6,6}}}]}}.
    {move,{literal,{container,[1,2,3],4}},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",157}]}.
    {call,1,{f,138}}. % list_in_tuple/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       2 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       3 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       4 =>
                           {t_union,
                               {t_atom,[d]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}}]}}.
    {test,is_eq_exact,
        {f,60},
        [{tr,{x,0},
             {t_tuple,4,true,
                 #{1 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   2 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   3 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   4 =>
                       {t_union,
                           {t_atom,[d]},
                           none,
                           {t_integer,{4,4}},
                           none,none}}}},
         {literal,{1,2,3,4}}]}.
    {move,{literal,{container,[a,b,c],d}},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",158}]}.
    {call,1,{f,138}}. % list_in_tuple/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       2 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       3 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       4 =>
                           {t_union,
                               {t_atom,[d]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}}]}}.
    {test,is_eq_exact,
        {f,59},
        [{tr,{x,0},
             {t_tuple,4,true,
                 #{1 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   2 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   3 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   4 =>
                       {t_union,
                           {t_atom,[d]},
                           none,
                           {t_integer,{4,4}},
                           none,none}}}},
         {literal,{a,b,c,d}}]}.
    {move,{literal,{x,{y,13},17}},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",160}]}.
    {call,1,{f,146}}. % tuple_in_tuple/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,7,true,
         #{1 => {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none},
           2 => {t_atom,[y]},
           3 => {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none},
           4 => {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none},
           5 => {t_atom,[x]},
           6 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[y]},
               2 =>
                {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none}}},
           7 =>
            {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none}}}}]}}.
    {test,is_eq_exact,
        {f,58},
        [{tr,{x,0},
             {t_tuple,7,true,
                 #{1 =>
                       {t_union,
                           {t_atom,[a]},
                           none,
                           {t_integer,{13,13}},
                           none,none},
                   2 => {t_atom,[y]},
                   3 =>
                       {t_union,
                           {t_atom,[a]},
                           none,
                           {t_integer,{13,13}},
                           none,none},
                   4 =>
                       {t_union,
                           {t_atom,[b]},
                           none,
                           {t_integer,{17,17}},
                           none,none},
                   5 => {t_atom,[x]},
                   6 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[y]},
                             2 =>
                                 {t_union,
                                     {t_atom,[a]},
                                     none,
                                     {t_integer,{13,13}},
                                     none,none}}},
                   7 =>
                       {t_union,
                           {t_atom,[b]},
                           none,
                           {t_integer,{17,17}},
                           none,none}}}},
         {literal,{13,y,13,17,x,{y,13},17}}]}.
    {move,{literal,{x,{y,a},b}},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",161}]}.
    {call,1,{f,146}}. % tuple_in_tuple/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,7,true,
         #{1 => {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none},
           2 => {t_atom,[y]},
           3 => {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none},
           4 => {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none},
           5 => {t_atom,[x]},
           6 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[y]},
               2 =>
                {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none}}},
           7 =>
            {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none}}}}]}}.
    {test,is_eq_exact,
        {f,57},
        [{tr,{x,0},
             {t_tuple,7,true,
                 #{1 =>
                       {t_union,
                           {t_atom,[a]},
                           none,
                           {t_integer,{13,13}},
                           none,none},
                   2 => {t_atom,[y]},
                   3 =>
                       {t_union,
                           {t_atom,[a]},
                           none,
                           {t_integer,{13,13}},
                           none,none},
                   4 =>
                       {t_union,
                           {t_atom,[b]},
                           none,
                           {t_integer,{17,17}},
                           none,none},
                   5 => {t_atom,[x]},
                   6 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[y]},
                             2 =>
                                 {t_union,
                                     {t_atom,[a]},
                                     none,
                                     {t_integer,{13,13}},
                                     none,none}}},
                   7 =>
                       {t_union,
                           {t_atom,[b]},
                           none,
                           {t_integer,{17,17}},
                           none,none}}}},
         {literal,{a,y,a,b,x,{y,a},b}}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",163}]}.
    {call,1,{f,557}}. % id/1
    {call,1,{f,153}}. % multiple_aliases_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,4,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,56},
          [{tr,{x,0},{t_tuple,4,true,#{}}},{literal,{42,42,42,42}}]}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",164}]}.
    {call,1,{f,557}}. % id/1
    {call,1,{f,160}}. % multiple_aliases_2/1
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,55},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{7,7,7}}]}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",165}]}.
    {call,1,{f,557}}. % id/1
    {call,1,{f,162}}. % multiple_aliases_3/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_tuple,2,true,#{}},
                                     2 => {t_tuple,2,true,#{}},
                                     3 => {t_tuple,2,true,#{}}}}}]}}.
    {test,is_eq_exact,
          {f,54},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_tuple,2,true,#{}},
                          2 => {t_tuple,2,true,#{}},
                          3 => {t_tuple,2,true,#{}}}}},
           {literal,{{a,b},{a,b},{a,b}}}]}.
    {move,{literal,[x,y,z]},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",166}]}.
    {call,1,{f,557}}. % id/1
    {call,1,{f,170}}. % multiple_aliases_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_cons,any,any},
                                     2 => {t_cons,any,any},
                                     3 => {t_cons,any,any}}}}]}}.
    {test,is_eq_exact,
          {f,53},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_cons,any,any},
                          2 => {t_cons,any,any},
                          3 => {t_cons,any,any}}}},
           {literal,{[x,y,z],[x,y,z],[x,y,z]}}]}.
    {move,{literal,[a,b]},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",169}]}.
    {call,1,{f,557}}. % id/1
    {call,1,{f,178}}. % list_alias/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}]}}.
    {'catch',{y,2},{f,47}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",174}]}.
    {badmatch,{atom,home}}.
  {label,47}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,52},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,52},[{x,1}]}.
    {test,test_arity,{f,52},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,52},[{x,1},{literal,{badmatch,home}}]}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",178}]}.
    {call,0,{f,586}}. % '-aliases/1-fun-1-'/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[home]},
                                     2 => {t_atom,[home]}}}}]}}.
    {'catch',{y,1},{f,48}}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",184}]}.
    {badmatch,{integer,16}}.
  {label,48}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,51},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,51},[{x,1}]}.
    {test,test_arity,{f,51},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,51},[{x,1},{literal,{badmatch,16}}]}.
    {'catch',{y,0},{f,49}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",188}]}.
    {badmatch,{integer,0}}.
  {label,49}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,50},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,50},[{x,1}]}.
    {test,test_arity,{f,50},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,50},[{x,1},{literal,{badmatch,0}}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",191}]}.
    {call,1,{f,583}}. % '-aliases/1-fun-4-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{42,42}},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,50}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",186}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",182}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",172}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",166}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",164}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",161}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",160}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",158}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",157}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",153}]}.
    {badmatch,{literal,{1,42,99,1,42,99}}}.
  {label,62}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",152}]}.
    {badmatch,{literal,{-10,20,-10,20,-10,20}}}.
  {label,63}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",148}]}.
    {badmatch,{atom,ok}}.
  {label,64}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",147}]}.
    {badmatch,{atom,ok}}.
  {label,65}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",146}]}.
    {badmatch,{atom,error}}.
  {label,66}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",145}]}.
    {badmatch,{atom,error}}.
  {label,67}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",144}]}.
    {badmatch,{atom,error}}.
  {label,68}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",143}]}.
    {badmatch,{atom,error}}.
  {label,69}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",142}]}.
    {badmatch,{atom,error}}.
  {label,70}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",141}]}.
    {badmatch,{atom,error}}.
  {label,71}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",138}]}.
    {badmatch,{atom,ok}}.
  {label,72}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",137}]}.
    {badmatch,{atom,error}}.
  {label,73}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",136}]}.
    {badmatch,{atom,error}}.
  {label,74}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",135}]}.
    {badmatch,{atom,error}}.
  {label,75}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",134}]}.
    {badmatch,{atom,error}}.
  {label,76}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",133}]}.
    {badmatch,{atom,error}}.
  {label,77}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",132}]}.
    {badmatch,{atom,error}}.
  {label,78}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",131}]}.
    {badmatch,{atom,error}}.
  {label,79}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",130}]}.
    {badmatch,{atom,error}}.


{function, str_alias, 1, 81}.
  {label,80}.
    {line,[{location,"match_SUITE.erl",198}]}.
    {func_info,{atom,match_SUITE},{atom,str_alias},1}.
  {label,81}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,121}},nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",199}]}.
    {call,1,{f,84}}. % str_alias_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",200}]}.
    {call,1,{f,94}}. % str_alias_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,
          {f,82},
          [{tr,{x,0},{t_atom,[error,ok]}},{tr,{y,0},{t_atom,[error,ok]}}]}.
    {deallocate,1}.
    return.
  {label,82}.
    {badmatch,{x,0}}.


{function, str_alias_1, 1, 84}.
  {label,83}.
    {line,[{location,"match_SUITE.erl",202}]}.
    {func_info,{atom,match_SUITE},{atom,str_alias_1},1}.
  {label,84}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,121}},nil}}]}}.
    {test,is_nonempty_list,{f,92},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {select_val,{tr,{x,1},{t_integer,{97,121}}},
                {f,91},
                {list,[{integer,97},
                       {f,90},
                       {integer,100},
                       {f,89},
                       {integer,103},
                       {f,88},
                       {integer,107},
                       {f,87},
                       {integer,113},
                       {f,86},
                       {integer,120},
                       {f,85}]}}.
  {label,85}.
    {test,is_eq_exact,
          {f,91},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"y"}]}.
    {jump,{f,92}}.
  {label,86}.
    {test,is_eq_exact,
          {f,91},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"rs"}]}.
    {jump,{f,92}}.
  {label,87}.
    {test,is_eq_exact,
          {f,91},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"lm"}]}.
    {jump,{f,92}}.
  {label,88}.
    {test,is_eq_exact,
          {f,91},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"hi"}]}.
    {jump,{f,92}}.
  {label,89}.
    {test,is_eq_exact,
          {f,91},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"ef"}]}.
    {jump,{f,92}}.
  {label,90}.
    {test,is_ne_exact,
          {f,92},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"bc"}]}.
  {label,91}.
    {move,{atom,error},{x,0}}.
    return.
  {label,92}.
    {move,{atom,ok},{x,0}}.
    return.


{function, str_alias_2, 1, 94}.
  {label,93}.
    {line,[{location,"match_SUITE.erl",213}]}.
    {func_info,{atom,match_SUITE},{atom,str_alias_2},1}.
  {label,94}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,121}},nil}}]}}.
    {test,is_nonempty_list,{f,102},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {select_val,{tr,{x,1},{t_integer,{97,121}}},
                {f,101},
                {list,[{integer,97},
                       {f,100},
                       {integer,100},
                       {f,99},
                       {integer,103},
                       {f,98},
                       {integer,107},
                       {f,97},
                       {integer,113},
                       {f,96},
                       {integer,120},
                       {f,95}]}}.
  {label,95}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"y"}]}.
    {jump,{f,102}}.
  {label,96}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"rs"}]}.
    {jump,{f,102}}.
  {label,97}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"lm"}]}.
    {jump,{f,102}}.
  {label,98}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"hi"}]}.
    {jump,{f,102}}.
  {label,99}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"ef"}]}.
    {jump,{f,102}}.
  {label,100}.
    {test,is_ne_exact,
          {f,102},
          [{tr,{x,0},{t_list,{t_integer,{97,121}},nil}},{literal,"bc"}]}.
  {label,101}.
    {move,{atom,error},{x,0}}.
    return.
  {label,102}.
    {move,{atom,ok},{x,0}}.
    return.


{function, char_alias, 1, 104}.
  {label,103}.
    {line,[{location,"match_SUITE.erl",238}]}.
    {func_info,{atom,match_SUITE},{atom,char_alias},1}.
  {label,104}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,119}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",239}]}.
    {call,1,{f,107}}. % char_alias_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",240}]}.
    {call,1,{f,112}}. % char_alias_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,
          {f,105},
          [{tr,{x,0},{t_atom,[error,ok]}},{tr,{y,0},{t_atom,[error,ok]}}]}.
    {deallocate,1}.
    return.
  {label,105}.
    {badmatch,{x,0}}.


{function, char_alias_1, 1, 107}.
  {label,106}.
    {line,[{location,"match_SUITE.erl",242}]}.
    {func_info,{atom,match_SUITE},{atom,char_alias_1},1}.
  {label,107}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,119}}}]}}.
    {test,is_float,{f,108},[{tr,{x,0},{t_number,{0,119}}}]}.
    {test,is_eq_exact,{f,110},[{tr,{x,0},{t_float,{-0.0,119.0}}},{float,3.0}]}.
    {jump,{f,109}}.
  {label,108}.
    {select_val,{tr,{x,0},{t_integer,{0,119}}},
                {f,110},
                {list,[{integer,42},
                       {f,109},
                       {integer,118},
                       {f,109},
                       {integer,119},
                       {f,109}]}}.
  {label,109}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,110}.
    {move,{atom,error},{x,0}}.
    return.


{function, char_alias_2, 1, 112}.
  {label,111}.
    {line,[{location,"match_SUITE.erl",248}]}.
    {func_info,{atom,match_SUITE},{atom,char_alias_2},1}.
  {label,112}.
    {'%',{var_info,{x,0},[{type,{t_number,{0,119}}}]}}.
    {test,is_float,{f,113},[{tr,{x,0},{t_number,{0,119}}}]}.
    {test,is_eq_exact,{f,115},[{tr,{x,0},{t_float,{-0.0,119.0}}},{float,3.0}]}.
    {jump,{f,114}}.
  {label,113}.
    {select_val,{tr,{x,0},{t_integer,{0,119}}},
                {f,115},
                {list,[{integer,42},
                       {f,114},
                       {integer,118},
                       {f,114},
                       {integer,119},
                       {f,114}]}}.
  {label,114}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,115}.
    {move,{atom,error},{x,0}}.
    return.


{function, three, 1, 117}.
  {label,116}.
    {line,[{location,"match_SUITE.erl",258}]}.
    {func_info,{atom,match_SUITE},{atom,three},1}.
  {label,117}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {allocate,0,1}.
    {line,[{location,"match_SUITE.erl",259}]}.
    {call,1,{f,119}}. % three_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{42,42}},
                                     2 => {t_integer,{42,42}},
                                     3 => {t_integer,{42,42}}}}}]}}.
    {move,{integer,42},{x,0}}.
    {call_last,1,{f,121},0}. % three_2/1


{function, three_1, 1, 119}.
  {label,118}.
    {line,[{location,"match_SUITE.erl",262}]}.
    {func_info,{atom,match_SUITE},{atom,three_1},1}.
  {label,119}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,{42,42,42}},{x,0}}.
    return.


{function, three_2, 1, 121}.
  {label,120}.
    {line,[{location,"match_SUITE.erl",265}]}.
    {func_info,{atom,match_SUITE},{atom,three_2},1}.
  {label,121}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,{42,42,42}},{x,0}}.
    return.


{function, tuple_alias, 1, 123}.
  {label,122}.
    {line,[{location,"match_SUITE.erl",270}]}.
    {func_info,{atom,match_SUITE},{atom,tuple_alias},1}.
  {label,123}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{-10,-10}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{-10,-10}},
                             2 => {t_integer,{20,20}}}}},
                      {{3,{t_integer,{1,1}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{42,42}},
                             3 => {t_integer,{99,99}}}}}],
                     none}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",271}]}.
    {call,1,{f,126}}. % tuple_alias_a/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{6,{t_integer,{-10,-10}}},
                       {t_tuple,6,true,
                           #{1 => {t_integer,{-10,-10}},
                             2 => {t_integer,{20,20}},
                             3 => {t_integer,{-10,-10}},
                             4 => {t_integer,{20,20}},
                             5 => {t_integer,{-10,-10}},
                             6 => {t_integer,{20,20}}}}},
                      {{6,{t_integer,{1,1}}},
                       {t_tuple,6,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{42,42}},
                             3 => {t_integer,{99,99}},
                             4 => {t_integer,{1,1}},
                             5 => {t_integer,{42,42}},
                             6 => {t_integer,{99,99}}}}}],
                     none}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",272}]}.
    {call,1,{f,130}}. % tuple_alias_b/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{6,{t_integer,{-10,-10}}},
                       {t_tuple,6,true,
                           #{1 => {t_integer,{-10,-10}},
                             2 => {t_integer,{20,20}},
                             3 => {t_integer,{-10,-10}},
                             4 => {t_integer,{20,20}},
                             5 => {t_integer,{-10,-10}},
                             6 => {t_integer,{20,20}}}}},
                      {{6,{t_integer,{1,1}}},
                       {t_tuple,6,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{42,42}},
                             3 => {t_integer,{99,99}},
                             4 => {t_integer,{1,1}},
                             5 => {t_integer,{42,42}},
                             6 => {t_integer,{99,99}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,124},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{6,{t_integer,{-10,-10}}},
                          {t_tuple,6,true,
                                   #{1 => {t_integer,{-10,-10}},
                                     2 => {t_integer,{20,20}},
                                     3 => {t_integer,{-10,-10}},
                                     4 => {t_integer,{20,20}},
                                     5 => {t_integer,{-10,-10}},
                                     6 => {t_integer,{20,20}}}}},
                         {{6,{t_integer,{1,1}}},
                          {t_tuple,6,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{42,42}},
                                     3 => {t_integer,{99,99}},
                                     4 => {t_integer,{1,1}},
                                     5 => {t_integer,{42,42}},
                                     6 => {t_integer,{99,99}}}}}],
                        none}},
           {tr,{y,0},
               {t_union,none,none,none,
                        [{{6,{t_integer,{-10,-10}}},
                          {t_tuple,6,true,
                                   #{1 => {t_integer,{-10,-10}},
                                     2 => {t_integer,{20,20}},
                                     3 => {t_integer,{-10,-10}},
                                     4 => {t_integer,{20,20}},
                                     5 => {t_integer,{-10,-10}},
                                     6 => {t_integer,{20,20}}}}},
                         {{6,{t_integer,{1,1}}},
                          {t_tuple,6,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{42,42}},
                                     3 => {t_integer,{99,99}},
                                     4 => {t_integer,{1,1}},
                                     5 => {t_integer,{42,42}},
                                     6 => {t_integer,{99,99}}}}}],
                        none}}]}.
    {deallocate,1}.
    return.
  {label,124}.
    {badmatch,{x,0}}.


{function, tuple_alias_a, 1, 126}.
  {label,125}.
    {line,[{location,"match_SUITE.erl",274}]}.
    {func_info,{atom,match_SUITE},{atom,tuple_alias_a},1}.
  {label,126}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{-10,-10}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{-10,-10}},
                             2 => {t_integer,{20,20}}}}},
                      {{3,{t_integer,{1,1}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{42,42}},
                             3 => {t_integer,{99,99}}}}}],
                     none}}]}}.
    {select_tuple_arity,
        {tr,{x,0},
            {t_union,none,none,none,
                [{{2,{t_integer,{-10,-10}}},
                  {t_tuple,2,true,
                      #{1 => {t_integer,{-10,-10}},2 => {t_integer,{20,20}}}}},
                 {{3,{t_integer,{1,1}}},
                  {t_tuple,3,true,
                      #{1 => {t_integer,{1,1}},
                        2 => {t_integer,{42,42}},
                        3 => {t_integer,{99,99}}}}}],
                none}},
        {f,125},
        {list,[2,{f,128},3,{f,127}]}}.
  {label,127}.
    {move,{literal,{1,42,99,1,42,99}},{x,0}}.
    return.
  {label,128}.
    {move,{literal,{-10,20,-10,20,-10,20}},{x,0}}.
    return.


{function, tuple_alias_b, 1, 130}.
  {label,129}.
    {line,[{location,"match_SUITE.erl",279}]}.
    {func_info,{atom,match_SUITE},{atom,tuple_alias_b},1}.
  {label,130}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{-10,-10}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{-10,-10}},
                             2 => {t_integer,{20,20}}}}},
                      {{3,{t_integer,{1,1}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{42,42}},
                             3 => {t_integer,{99,99}}}}}],
                     none}}]}}.
    {select_tuple_arity,
        {tr,{x,0},
            {t_union,none,none,none,
                [{{2,{t_integer,{-10,-10}}},
                  {t_tuple,2,true,
                      #{1 => {t_integer,{-10,-10}},2 => {t_integer,{20,20}}}}},
                 {{3,{t_integer,{1,1}}},
                  {t_tuple,3,true,
                      #{1 => {t_integer,{1,1}},
                        2 => {t_integer,{42,42}},
                        3 => {t_integer,{99,99}}}}}],
                none}},
        {f,129},
        {list,[2,{f,132},3,{f,131}]}}.
  {label,131}.
    {move,{literal,{1,42,99,1,42,99}},{x,0}}.
    return.
  {label,132}.
    {move,{literal,{-10,20,-10,20,-10,20}},{x,0}}.
    return.


{function, tup_lit_alias, 1, 134}.
  {label,133}.
    {line,[{location,"match_SUITE.erl",286}]}.
    {func_info,{atom,match_SUITE},{atom,tup_lit_alias},1}.
  {label,134}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {move,{integer,6},{x,0}}.
    return.


{function, tup_lit_alias_rev, 1, 136}.
  {label,135}.
    {line,[{location,"match_SUITE.erl",289}]}.
    {func_info,{atom,match_SUITE},{atom,tup_lit_alias_rev},1}.
  {label,136}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {move,{integer,6},{x,0}}.
    return.


{function, list_in_tuple, 1, 138}.
  {label,137}.
    {line,[{location,"match_SUITE.erl",292}]}.
    {func_info,{atom,match_SUITE},{atom,list_in_tuple},1}.
  {label,138}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[container]},
                       2 =>
                           {t_cons,
                               {t_union,
                                   {t_atom,[a,b,c]},
                                   none,
                                   {t_integer,{1,3}},
                                   none,none},
                               nil},
                       3 =>
                           {t_union,
                               {t_atom,[d]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",293}]}.
    {call,1,{f,141}}. % list_in_tuple_a/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       2 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       3 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       4 =>
                           {t_union,
                               {t_atom,[d]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",294}]}.
    {call,1,{f,143}}. % list_in_tuple_b/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       2 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       3 =>
                           {t_union,
                               {t_atom,[a,b,c]},
                               none,
                               {t_integer,{1,3}},
                               none,none},
                       4 =>
                           {t_union,
                               {t_atom,[d]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}}]}}.
    {test,is_eq_exact,
        {f,139},
        [{tr,{x,0},
             {t_tuple,4,true,
                 #{1 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   2 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   3 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   4 =>
                       {t_union,
                           {t_atom,[d]},
                           none,
                           {t_integer,{4,4}},
                           none,none}}}},
         {tr,{y,0},
             {t_tuple,4,true,
                 #{1 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   2 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   3 =>
                       {t_union,
                           {t_atom,[a,b,c]},
                           none,
                           {t_integer,{1,3}},
                           none,none},
                   4 =>
                       {t_union,
                           {t_atom,[d]},
                           none,
                           {t_integer,{4,4}},
                           none,none}}}}]}.
    {deallocate,1}.
    return.
  {label,139}.
    {badmatch,{x,0}}.


{function, list_in_tuple_a, 1, 141}.
  {label,140}.
    {line,[{location,"match_SUITE.erl",296}]}.
    {func_info,{atom,match_SUITE},{atom,list_in_tuple_a},1}.
  {label,141}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[container]},
                       2 =>
                           {t_cons,
                               {t_union,
                                   {t_atom,[a,b,c]},
                                   none,
                                   {t_integer,{1,3}},
                                   none,none},
                               nil},
                       3 =>
                           {t_union,
                               {t_atom,[d]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,140},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,140},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_nil,
          {f,140},
          [{tr,{x,1},
               {t_list,{t_union,{t_atom,[a,b,c]},
                                none,
                                {t_integer,{1,3}},
                                none,none},
                       nil}}]}.
    {test_heap,5,5}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{x,4},{x,0}]}}.
    return.


{function, list_in_tuple_b, 1, 143}.
  {label,142}.
    {line,[{location,"match_SUITE.erl",299}]}.
    {func_info,{atom,match_SUITE},{atom,list_in_tuple_b},1}.
  {label,143}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[container]},
                       2 =>
                           {t_cons,
                               {t_union,
                                   {t_atom,[a,b,c]},
                                   none,
                                   {t_integer,{1,3}},
                                   none,none},
                               nil},
                       3 =>
                           {t_union,
                               {t_atom,[d]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,144},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,144},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_nil,
          {f,144},
          [{tr,{x,1},
               {t_list,{t_union,{t_atom,[a,b,c]},
                                none,
                                {t_integer,{1,3}},
                                none,none},
                       nil}}]}.
    {test_heap,5,5}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{x,4},{x,0}]}}.
    return.
  {label,144}.
    {line,[{location,"match_SUITE.erl",300}]}.
    {badmatch,{x,0}}.


{function, tuple_in_tuple, 1, 146}.
  {label,145}.
    {line,[{location,"match_SUITE.erl",303}]}.
    {func_info,{atom,match_SUITE},{atom,tuple_in_tuple},1}.
  {label,146}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 => {t_atom,[x]},
           2 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[y]},
               2 =>
                {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none}}},
           3 =>
            {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none}}}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",304}]}.
    {call,1,{f,149}}. % tuple_in_tuple_a/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,7,true,
         #{1 => {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none},
           2 => {t_atom,[y]},
           3 => {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none},
           4 => {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none},
           5 => {t_atom,[x]},
           6 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[y]},
               2 =>
                {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none}}},
           7 =>
            {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none}}}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",305}]}.
    {call,1,{f,151}}. % tuple_in_tuple_b/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,7,true,
         #{1 => {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none},
           2 => {t_atom,[y]},
           3 => {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none},
           4 => {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none},
           5 => {t_atom,[x]},
           6 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[y]},
               2 =>
                {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none}}},
           7 =>
            {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none}}}}]}}.
    {test,is_eq_exact,
        {f,147},
        [{tr,{x,0},
             {t_tuple,7,true,
                 #{1 =>
                       {t_union,
                           {t_atom,[a]},
                           none,
                           {t_integer,{13,13}},
                           none,none},
                   2 => {t_atom,[y]},
                   3 =>
                       {t_union,
                           {t_atom,[a]},
                           none,
                           {t_integer,{13,13}},
                           none,none},
                   4 =>
                       {t_union,
                           {t_atom,[b]},
                           none,
                           {t_integer,{17,17}},
                           none,none},
                   5 => {t_atom,[x]},
                   6 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[y]},
                             2 =>
                                 {t_union,
                                     {t_atom,[a]},
                                     none,
                                     {t_integer,{13,13}},
                                     none,none}}},
                   7 =>
                       {t_union,
                           {t_atom,[b]},
                           none,
                           {t_integer,{17,17}},
                           none,none}}}},
         {tr,{y,0},
             {t_tuple,7,true,
                 #{1 =>
                       {t_union,
                           {t_atom,[a]},
                           none,
                           {t_integer,{13,13}},
                           none,none},
                   2 => {t_atom,[y]},
                   3 =>
                       {t_union,
                           {t_atom,[a]},
                           none,
                           {t_integer,{13,13}},
                           none,none},
                   4 =>
                       {t_union,
                           {t_atom,[b]},
                           none,
                           {t_integer,{17,17}},
                           none,none},
                   5 => {t_atom,[x]},
                   6 =>
                       {t_tuple,2,true,
                           #{1 => {t_atom,[y]},
                             2 =>
                                 {t_union,
                                     {t_atom,[a]},
                                     none,
                                     {t_integer,{13,13}},
                                     none,none}}},
                   7 =>
                       {t_union,
                           {t_atom,[b]},
                           none,
                           {t_integer,{17,17}},
                           none,none}}}}]}.
    {deallocate,1}.
    return.
  {label,147}.
    {badmatch,{x,0}}.


{function, tuple_in_tuple_a, 1, 149}.
  {label,148}.
    {line,[{location,"match_SUITE.erl",307}]}.
    {func_info,{atom,match_SUITE},{atom,tuple_in_tuple_a},1}.
  {label,149}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 => {t_atom,[x]},
           2 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[y]},
               2 =>
                {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none}}},
           3 =>
            {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none}}}}]}}.
    {test_heap,8,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{x,2},{atom,y},{x,2},{x,0},{atom,x},{x,1},{x,0}]}}.
    return.


{function, tuple_in_tuple_b, 1, 151}.
  {label,150}.
    {line,[{location,"match_SUITE.erl",310}]}.
    {func_info,{atom,match_SUITE},{atom,tuple_in_tuple_b},1}.
  {label,151}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 => {t_atom,[x]},
           2 =>
            {t_tuple,2,true,
             #{1 => {t_atom,[y]},
               2 =>
                {t_union,{t_atom,[a]},none,{t_integer,{13,13}},none,none}}},
           3 =>
            {t_union,{t_atom,[b]},none,{t_integer,{17,17}},none,none}}}}]}}.
    {test_heap,8,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{x,2},{atom,y},{x,2},{x,0},{atom,x},{x,1},{x,0}]}}.
    return.


{function, multiple_aliases_1, 1, 153}.
  {label,152}.
    {line,[{location,"match_SUITE.erl",314}]}.
    {func_info,{atom,match_SUITE},{atom,multiple_aliases_1},1}.
  {label,153}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",315}]}.
    {call,1,{f,156}}. % multiple_aliases_1a/1
    {'%',{var_info,{x,0},[{type,{t_tuple,4,true,#{}}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",316}]}.
    {call,1,{f,158}}. % multiple_aliases_1b/1
    {'%',{var_info,{x,0},[{type,{t_tuple,4,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,154},
          [{tr,{x,0},{t_tuple,4,true,#{}}},{tr,{y,0},{t_tuple,4,true,#{}}}]}.
    {deallocate,1}.
    return.
  {label,154}.
    {badmatch,{x,0}}.


{function, multiple_aliases_1a, 1, 156}.
  {label,155}.
    {line,[{location,"match_SUITE.erl",318}]}.
    {func_info,{atom,match_SUITE},{atom,multiple_aliases_1a},1}.
  {label,156}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{x,0},{x,0},{x,0},{x,0}]}}.
    return.


{function, multiple_aliases_1b, 1, 158}.
  {label,157}.
    {line,[{location,"match_SUITE.erl",321}]}.
    {func_info,{atom,match_SUITE},{atom,multiple_aliases_1b},1}.
  {label,158}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{x,0},{x,0},{x,0},{x,0}]}}.
    return.


{function, multiple_aliases_2, 1, 160}.
  {label,159}.
    {line,[{location,"match_SUITE.erl",325}]}.
    {func_info,{atom,match_SUITE},{atom,multiple_aliases_2},1}.
  {label,160}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{x,0},{x,0},{x,0}]}}.
    return.


{function, multiple_aliases_3, 1, 162}.
  {label,161}.
    {line,[{location,"match_SUITE.erl",328}]}.
    {func_info,{atom,match_SUITE},{atom,multiple_aliases_3},1}.
  {label,162}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",329}]}.
    {call,1,{f,165}}. % multiple_aliases_3a/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_tuple,2,true,#{}},
                                     2 => {t_tuple,2,true,#{}},
                                     3 => {t_tuple,2,true,#{}}}}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",330}]}.
    {call,1,{f,167}}. % multiple_aliases_3b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_tuple,2,true,#{}},
                                     2 => {t_tuple,2,true,#{}},
                                     3 => {t_tuple,2,true,#{}}}}}]}}.
    {test,is_eq_exact,
          {f,163},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_tuple,2,true,#{}},
                          2 => {t_tuple,2,true,#{}},
                          3 => {t_tuple,2,true,#{}}}}},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => {t_tuple,2,true,#{}},
                          2 => {t_tuple,2,true,#{}},
                          3 => {t_tuple,2,true,#{}}}}}]}.
    {deallocate,1}.
    return.
  {label,163}.
    {badmatch,{x,0}}.


{function, multiple_aliases_3a, 1, 165}.
  {label,164}.
    {line,[{location,"match_SUITE.erl",332}]}.
    {func_info,{atom,match_SUITE},{atom,multiple_aliases_3a},1}.
  {label,165}.
    {test,is_tuple,{f,164},[{x,0}]}.
    {test,test_arity,{f,164},[{x,0},2]}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{x,0},{x,0},{x,0}]}}.
    return.


{function, multiple_aliases_3b, 1, 167}.
  {label,166}.
    {line,[{location,"match_SUITE.erl",335}]}.
    {func_info,{atom,match_SUITE},{atom,multiple_aliases_3b},1}.
  {label,167}.
    {test,is_tuple,{f,168},[{x,0}]}.
    {test,test_arity,{f,168},[{x,0},2]}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{x,0},{x,0},{x,0}]}}.
    return.
  {label,168}.
    {line,[{location,"match_SUITE.erl",336}]}.
    {badmatch,{x,0}}.


{function, multiple_aliases_4, 1, 170}.
  {label,169}.
    {line,[{location,"match_SUITE.erl",339}]}.
    {func_info,{atom,match_SUITE},{atom,multiple_aliases_4},1}.
  {label,170}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",340}]}.
    {call,1,{f,173}}. % multiple_aliases_4a/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_cons,any,any},
                                     2 => {t_cons,any,any},
                                     3 => {t_cons,any,any}}}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",341}]}.
    {call,1,{f,175}}. % multiple_aliases_4b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_cons,any,any},
                                     2 => {t_cons,any,any},
                                     3 => {t_cons,any,any}}}}]}}.
    {test,is_eq_exact,
          {f,171},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_cons,any,any},
                          2 => {t_cons,any,any},
                          3 => {t_cons,any,any}}}},
           {tr,{y,0},
               {t_tuple,3,true,
                        #{1 => {t_cons,any,any},
                          2 => {t_cons,any,any},
                          3 => {t_cons,any,any}}}}]}.
    {deallocate,1}.
    return.
  {label,171}.
    {badmatch,{x,0}}.


{function, multiple_aliases_4a, 1, 173}.
  {label,172}.
    {line,[{location,"match_SUITE.erl",343}]}.
    {func_info,{atom,match_SUITE},{atom,multiple_aliases_4a},1}.
  {label,173}.
    {test,is_nonempty_list,{f,172},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nonempty_list,{f,172},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_nonempty_list,{f,172},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_nil,{f,172},[{x,1}]}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{x,0},{x,0},{x,0}]}}.
    return.


{function, multiple_aliases_4b, 1, 175}.
  {label,174}.
    {line,[{location,"match_SUITE.erl",346}]}.
    {func_info,{atom,match_SUITE},{atom,multiple_aliases_4b},1}.
  {label,175}.
    {test,is_nonempty_list,{f,176},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nonempty_list,{f,176},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_nonempty_list,{f,176},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_nil,{f,176},[{x,1}]}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{x,0},{x,0},{x,0}]}}.
    return.
  {label,176}.
    {line,[{location,"match_SUITE.erl",347}]}.
    {badmatch,{x,0}}.


{function, list_alias, 1, 178}.
  {label,177}.
    {line,[{location,"match_SUITE.erl",350}]}.
    {func_info,{atom,match_SUITE},{atom,list_alias},1}.
  {label,178}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",351}]}.
    {call,1,{f,183}}. % list_alias1a/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",352}]}.
    {call,1,{f,185}}. % list_alias1b/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,181},
          [{tr,{x,0},{t_tuple,2,true,#{}}},{literal,{a,b}}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",353}]}.
    {call,1,{f,188}}. % list_alias2a/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",354}]}.
    {call,1,{f,190}}. % list_alias2b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a,b]},
                                     2 => {t_atom,[a,b]}}}}]}}.
    {test,is_eq_exact,
          {f,180},
          [{tr,{x,0},
               {t_tuple,2,true,#{1 => {t_atom,[a,b]},2 => {t_atom,[a,b]}}}},
           {literal,{a,b}}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",355}]}.
    {call,1,{f,193}}. % list_alias3a/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}]}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"match_SUITE.erl",356}]}.
    {call,1,{f,195}}. % list_alias3b/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[a]}}}}]}}.
    {test,is_eq_exact,
          {f,179},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[a]}}}},{literal,{a,b}}]}.
    {deallocate,0}.
    return.
  {label,179}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{location,"match_SUITE.erl",354}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{location,"match_SUITE.erl",352}]}.
    {badmatch,{x,0}}.


{function, list_alias1a, 1, 183}.
  {label,182}.
    {line,[{location,"match_SUITE.erl",358}]}.
    {func_info,{atom,match_SUITE},{atom,list_alias1a},1}.
  {label,183}.
    {test,is_nonempty_list,{f,182},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,182},[{x,1},{atom,a}]}.
    {test,is_nonempty_list,{f,182},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,182},[{x,1},{atom,b}]}.
    {test,is_nil,{f,182},[{x,2}]}.
    {move,{literal,{a,b}},{x,0}}.
    return.


{function, list_alias1b, 1, 185}.
  {label,184}.
    {line,[{location,"match_SUITE.erl",361}]}.
    {func_info,{atom,match_SUITE},{atom,list_alias1b},1}.
  {label,185}.
    {test,is_nonempty_list,{f,186},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nonempty_list,{f,186},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_nil,{f,186},[{x,2}]}.
    {test,is_eq_exact,{f,186},[{tr,{x,0},{t_cons,any,any}},{literal,[a,b]}]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,1},{x,3}]}}.
    return.
  {label,186}.
    {line,[{location,"match_SUITE.erl",362}]}.
    {badmatch,{x,0}}.


{function, list_alias2a, 1, 188}.
  {label,187}.
    {line,[{location,"match_SUITE.erl",365}]}.
    {func_info,{atom,match_SUITE},{atom,list_alias2a},1}.
  {label,188}.
    {test,is_nonempty_list,{f,187},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,187},[{x,1},{atom,a}]}.
    {test,is_nonempty_list,{f,187},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,187},[{x,1},{atom,b}]}.
    {test,is_nil,{f,187},[{x,2}]}.
    {move,{literal,{a,b}},{x,0}}.
    return.


{function, list_alias2b, 1, 190}.
  {label,189}.
    {line,[{location,"match_SUITE.erl",368}]}.
    {func_info,{atom,match_SUITE},{atom,list_alias2b},1}.
  {label,190}.
    {test,is_eq_exact,{f,191},[{x,0},{literal,[a,b]}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nonempty_list,{f,191},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_nil,{f,191},[{tr,{x,2},{t_list,{t_atom,[a,b]},nil}}]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,1},{x,3}]}}.
    return.
  {label,191}.
    {line,[{location,"match_SUITE.erl",369}]}.
    {badmatch,{x,0}}.


{function, list_alias3a, 1, 193}.
  {label,192}.
    {line,[{location,"match_SUITE.erl",372}]}.
    {func_info,{atom,match_SUITE},{atom,list_alias3a},1}.
  {label,193}.
    {test,is_nonempty_list,{f,192},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,192},[{x,1},{atom,a}]}.
    {test,is_nonempty_list,{f,192},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,192},[{x,1},{atom,b}]}.
    {test,is_nil,{f,192},[{x,2}]}.
    {move,{literal,{a,b}},{x,0}}.
    return.


{function, list_alias3b, 1, 195}.
  {label,194}.
    {line,[{location,"match_SUITE.erl",375}]}.
    {func_info,{atom,match_SUITE},{atom,list_alias3b},1}.
  {label,195}.
    {test,is_nonempty_list,{f,196},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,196},[{x,1},{atom,a}]}.
    {test,is_nonempty_list,{f,196},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,3}}.
    {test,is_nil,{f,196},[{x,3}]}.
    {test,is_eq_exact,{f,196},[{tr,{x,2},{t_cons,any,any}},{literal,[b]}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,1}]}}.
    return.
  {label,196}.
    {line,[{location,"match_SUITE.erl",376}]}.
    {badmatch,{x,0}}.


{function, non_matching_aliases, 1, 198}.
  {label,197}.
    {line,[{location,"match_SUITE.erl",379}]}.
    {func_info,{atom,match_SUITE},{atom,non_matching_aliases},1}.
  {label,198}.
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
                       {y,11},
                       {y,12}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"match_SUITE.erl",380}]}.
    {call,1,{f,230}}. % mixed_aliases/1
    {'%',{var_info,{x,0},[{type,{t_atom,[none]}}]}}.
    {move,{literal,[b]},{x,0}}.
    {line,[{location,"match_SUITE.erl",381}]}.
    {call,1,{f,230}}. % mixed_aliases/1
    {'%',{var_info,{x,0},[{type,{t_atom,[none]}}]}}.
    {move,{literal,[d]},{x,0}}.
    {line,[{location,"match_SUITE.erl",382}]}.
    {call,1,{f,230}}. % mixed_aliases/1
    {'%',{var_info,{x,0},[{type,{t_atom,[none]}}]}}.
    {move,{literal,{a,42}},{x,0}}.
    {line,[{location,"match_SUITE.erl",383}]}.
    {call,1,{f,230}}. % mixed_aliases/1
    {'%',{var_info,{x,0},[{type,{t_atom,[none]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"match_SUITE.erl",384}]}.
    {call,1,{f,230}}. % mixed_aliases/1
    {'%',{var_info,{x,0},[{type,{t_atom,[none]}}]}}.
    {move,{literal,<<26,133>>},{x,0}}.
    {line,[{location,"match_SUITE.erl",385}]}.
    {call,1,{f,230}}. % mixed_aliases/1
    {'%',{var_info,{x,0},[{type,{t_atom,[none]}}]}}.
    {move,{literal,#{key => value}},{x,0}}.
    {line,[{location,"match_SUITE.erl",386}]}.
    {call,1,{f,230}}. % mixed_aliases/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[none]},
                     none,none,
                     [{{2,{t_atom,[i]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[i]},2 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,0},
               {t_union,{t_atom,[none]},
                        none,none,
                        [{{2,{t_atom,[i]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[i]},
                                     2 => {t_map,any,any}}}}],
                        none}},
           {atom,none}]}.
    {'catch',{y,12},{f,199}}.
    {line,[{scope,[26]},{location,"match_SUITE.erl",388}]}.
    {call,0,{f,235}}. % plus_plus_prefix/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,199}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,227},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,227},[{x,1}]}.
    {test,test_arity,{f,227},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,227},[{x,1},{literal,{badmatch,bar}}]}.
    {'catch',{y,11},{f,200}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[24]},{location,"match_SUITE.erl",389}]}.
    {call,1,{f,237}}. % nomatch_alias/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,200}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,226},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,226},[{x,1}]}.
    {test,test_arity,{f,226},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,226},[{x,1},{literal,{badmatch,42}}]}.
    {'catch',{y,10},{f,201}}.
    {line,[{scope,[22]},{location,"match_SUITE.erl",390}]}.
    {call,0,{f,239}}. % entirely/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,201}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,225},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,225},[{x,1}]}.
    {test,test_arity,{f,225},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,225},[{x,1},{literal,{badmatch,job}}]}.
    {'catch',{y,9},{f,202}}.
    {line,[{scope,[20]},{location,"match_SUITE.erl",391}]}.
    {call,0,{f,241}}. % printer/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,202}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,224},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,224},[{x,1}]}.
    {test,test_arity,{f,224},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,224},[{x,1},{literal,{badmatch,associates}}]}.
    {'catch',{y,8},{f,203}}.
    {line,[{scope,[18]},{location,"match_SUITE.erl",392}]}.
    {call,0,{f,243}}. % tench/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,203}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,223},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,223},[{x,1}]}.
    {test,test_arity,{f,223},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,223},[{x,1},{literal,{badmatch,borogoves}}]}.
    {move,{integer,0},{x,1}}.
    {move,{atom,perch},{x,0}}.
    {line,[{scope,[16]},{location,"match_SUITE.erl",394}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {'catch',{y,7},{f,204}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[16]},{location,"match_SUITE.erl",395}]}.
    {call,1,{f,245}}. % perch/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,204}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,222},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,222},[{x,1}]}.
    {test,test_arity,{f,222},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,222},[{x,1},{literal,{badmatch,{spine,42}}}]}.
    {move,{atom,perch},{x,0}}.
    {line,[{scope,[14]},{location,"match_SUITE.erl",396}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,221},[{x,0},{integer,1}]}.
    {move,{integer,0},{x,1}}.
    {move,{atom,salmon},{x,0}}.
    {line,[{scope,[14]},{location,"match_SUITE.erl",398}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {'catch',{y,6},{f,205}}.
    {line,[{scope,[14]},{location,"match_SUITE.erl",399}]}.
    {call,0,{f,247}}. % salmon/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,205}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,220},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,220},[{x,1}]}.
    {test,test_arity,{f,220},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,220},[{x,1},{literal,{badmatch,mimsy}}]}.
    {move,{atom,salmon},{x,0}}.
    {line,[{scope,"\f"},{location,"match_SUITE.erl",400}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,219},[{x,0},{integer,1}]}.
    {move,{integer,0},{x,1}}.
    {move,{atom,shark},{x,0}}.
    {line,[{scope,"\f"},{location,"match_SUITE.erl",402}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {'catch',{y,5},{f,206}}.
    {line,[{scope,"\f"},{location,"match_SUITE.erl",403}]}.
    {call,0,{f,249}}. % shark/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,206}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,218},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,218},[{x,1}]}.
    {test,test_arity,{f,218},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,218},[{x,1},2,{atom,badmatch}]}.
    {move,{atom,shark},{x,0}}.
    {line,[{scope,"\v\f"},{location,"match_SUITE.erl",404}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,217},[{x,0},{integer,1}]}.
    {'catch',{y,4},{f,207}}.
    {move,{atom,research},{x,0}}.
    {line,[{scope,"\n"},{location,"match_SUITE.erl",406}]}.
    {call,1,{f,252}}. % radio/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,207}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,216},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,216},[{x,1}]}.
    {test,test_arity,{f,216},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,216},[{x,1},2,{atom,badmatch}]}.
    {'catch',{y,3},{f,208}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\t\n"},{location,"match_SUITE.erl",408}]}.
    {call,1,{f,255}}. % pike1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,208}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,215},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,215},[{x,1}]}.
    {test,test_arity,{f,215},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,215},[{x,1},{literal,{case_clause,whatever}}]}.
    {'catch',{y,2},{f,209}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",409}]}.
    {call,1,{f,258}}. % pike2/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,209}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,214},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,214},[{x,1}]}.
    {test,test_arity,{f,214},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,214},[{x,1},{literal,{case_clause,whatever}}]}.
    {'catch',{y,1},{f,210}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",411}]}.
    {call,1,{f,261}}. % squid/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,210}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,213},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,213},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,0},{f,211}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[3,4]},{location,"match_SUITE.erl",412}]}.
    {call,1,{f,261}}. % squid/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,211}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,212},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,212},[{x,1}]}.
    {test,test_arity,{f,212},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,212},[{x,1},{literal,{badmatch,43}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,13}.
    return.
  {label,212}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",409}]}.
    {badmatch,{x,0}}.
  {label,215}.
    {line,[{scope,[6]},{location,"match_SUITE.erl",408}]}.
    {badmatch,{x,0}}.
  {label,216}.
    {line,[{scope,"\b"},{location,"match_SUITE.erl",406}]}.
    {badmatch,{x,0}}.
  {label,217}.
    {line,[{scope,"\n"},{location,"match_SUITE.erl",404}]}.
    {badmatch,{x,0}}.
  {label,218}.
    {line,[{scope,"\n"},{location,"match_SUITE.erl",403}]}.
    {badmatch,{x,0}}.
  {label,219}.
    {line,[{scope,"\f"},{location,"match_SUITE.erl",400}]}.
    {badmatch,{x,0}}.
  {label,220}.
    {line,[{scope,"\f"},{location,"match_SUITE.erl",399}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,[14]},{location,"match_SUITE.erl",396}]}.
    {badmatch,{x,0}}.
  {label,222}.
    {line,[{scope,[14]},{location,"match_SUITE.erl",395}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[16]},{location,"match_SUITE.erl",392}]}.
    {badmatch,{x,0}}.
  {label,224}.
    {line,[{scope,[18]},{location,"match_SUITE.erl",391}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,[20]},{location,"match_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,[22]},{location,"match_SUITE.erl",389}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,[24]},{location,"match_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{scope,[26]},{location,"match_SUITE.erl",386}]}.
    {badmatch,{x,0}}.


{function, mixed_aliases, 1, 230}.
  {label,229}.
    {line,[{location,"match_SUITE.erl",416}]}.
    {func_info,{atom,match_SUITE},{atom,mixed_aliases},1}.
  {label,230}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,{t_atom,[b,d]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_integer,{42,42}}}}}],
                     other}},
             accepts_match_context]}}.
    {test,is_bitstr,
          {f,231},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[b,d]},nil},
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{42,42}}}}}],
                        other}}]}.
    {jump,{f,233}}.
  {label,231}.
    {test,is_tuple,
          {f,232},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[b,d]},nil},
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{42,42}}}}}],
                        other}}]}.
    {jump,{f,233}}.
  {label,232}.
    {test,is_map,
          {f,233},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[b,d]},nil},
                        {t_integer,{42,42}},
                        none,other}}]}.
    {get_map_elements,{f,233},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,233},[{x,1},{tr,{x,0},{t_map,any,any}}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,i},{x,0}]}}.
    return.
  {label,233}.
    {move,{atom,none},{x,0}}.
    return.


{function, plus_plus_prefix, 0, 235}.
  {label,234}.
    {line,[{location,"match_SUITE.erl",433}]}.
    {func_info,{atom,match_SUITE},{atom,plus_plus_prefix},0}.
  {label,235}.
    {line,[{location,"match_SUITE.erl",434}]}.
    {badmatch,{atom,bar}}.


{function, nomatch_alias, 1, 237}.
  {label,236}.
    {line,[{location,"match_SUITE.erl",436}]}.
    {func_info,{atom,match_SUITE},{atom,nomatch_alias},1}.
  {label,237}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {allocate,0,1}.
    {line,[{location,"match_SUITE.erl",437}]}.
    {call,1,{f,557}}. % id/1
    {badmatch,{x,0}}.


{function, entirely, 0, 239}.
  {label,238}.
    {line,[{location,"match_SUITE.erl",440}]}.
    {func_info,{atom,match_SUITE},{atom,entirely},0}.
  {label,239}.
    {line,[{location,"match_SUITE.erl",441}]}.
    {badmatch,{atom,job}}.


{function, printer, 0, 241}.
  {label,240}.
    {line,[{location,"match_SUITE.erl",444}]}.
    {func_info,{atom,match_SUITE},{atom,printer},0}.
  {label,241}.
    {line,[{location,"match_SUITE.erl",445}]}.
    {badmatch,{atom,associates}}.


{function, tench, 0, 243}.
  {label,242}.
    {line,[{location,"match_SUITE.erl",448}]}.
    {func_info,{atom,match_SUITE},{atom,tench},0}.
  {label,243}.
    {line,[{location,"match_SUITE.erl",450}]}.
    {badmatch,{atom,borogoves}}.


{function, perch, 1, 245}.
  {label,244}.
    {line,[{location,"match_SUITE.erl",455}]}.
    {func_info,{atom,match_SUITE},{atom,perch},1}.
  {label,245}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {bif,get,{f,0},[{atom,perch}],{x,0}}.
    {line,[{location,"match_SUITE.erl",457}]}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,perch},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {line,[{location,"match_SUITE.erl",458}]}.
    {badmatch,{literal,{spine,42}}}.


{function, salmon, 0, 247}.
  {label,246}.
    {line,[{location,"match_SUITE.erl",461}]}.
    {func_info,{atom,match_SUITE},{atom,salmon},0}.
  {label,247}.
    {bif,get,{f,0},[{atom,salmon}],{x,0}}.
    {line,[{location,"match_SUITE.erl",462}]}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,salmon},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {badmatch,{atom,mimsy}}.


{function, shark, 0, 249}.
  {label,248}.
    {line,[{location,"match_SUITE.erl",465}]}.
    {func_info,{atom,match_SUITE},{atom,shark},0}.
  {label,249}.
    {allocate,1,0}.
    {bif,get,{f,0},[{atom,shark}],{x,0}}.
    {'catch',{y,0},{f,250}}.
    {line,[{location,"match_SUITE.erl",466}]}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,1}}.
    {move,{atom,shark},{x,0}}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {badmatch,{atom,b}}.
  {label,250}.
    {catch_end,{y,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",466}]}.
    {badmatch,{x,0}}.


{function, radio, 1, 252}.
  {label,251}.
    {line,[{location,"match_SUITE.erl",471}]}.
    {func_info,{atom,match_SUITE},{atom,radio},1}.
  {label,252}.
    {'%',{var_info,{x,0},[{type,{t_atom,[research]}}]}}.
    {allocate,1,0}.
    {'catch',{y,0},{f,253}}.
    {line,[{location,"match_SUITE.erl",474}]}.
    {badmatch,{atom,mechanisms}}.
  {label,253}.
    {catch_end,{y,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",472}]}.
    {badmatch,{x,0}}.


{function, pike1, 1, 255}.
  {label,254}.
    {line,[{location,"match_SUITE.erl",476}]}.
    {func_info,{atom,match_SUITE},{atom,pike1},1}.
  {label,255}.
    {'%',{var_info,{x,0},[{type,{t_atom,[whatever]}}]}}.
    {allocate,0,0}.
    {move,nil,{x,0}}.
    {line,[{location,"match_SUITE.erl",477}]}.
    {call,1,{f,557}}. % id/1
    {test,is_nil,{f,256},[{x,0}]}.
    {line,[{location,"match_SUITE.erl",479}]}.
    {case_end,{atom,whatever}}.
  {label,256}.
    {line,[{location,"match_SUITE.erl",477}]}.
    {case_end,{x,0}}.


{function, pike2, 1, 258}.
  {label,257}.
    {line,[{location,"match_SUITE.erl",486}]}.
    {func_info,{atom,match_SUITE},{atom,pike2},1}.
  {label,258}.
    {'%',{var_info,{x,0},[{type,{t_atom,[whatever]}}]}}.
    {allocate,0,0}.
    {move,nil,{x,0}}.
    {line,[{location,"match_SUITE.erl",487}]}.
    {call,1,{f,557}}. % id/1
    {test,is_nil,{f,259},[{x,0}]}.
    {line,[{location,"match_SUITE.erl",489}]}.
    {case_end,{atom,whatever}}.
  {label,259}.
    {line,[{location,"match_SUITE.erl",487}]}.
    {case_end,{x,0}}.


{function, squid, 1, 261}.
  {label,260}.
    {line,[{location,"match_SUITE.erl",496}]}.
    {func_info,{atom,match_SUITE},{atom,squid},1}.
  {label,261}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,none}}]}}.
    {line,[{location,"match_SUITE.erl",497}]}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{x,0},
                 {t_union,{t_atom,[a]},none,{t_integer,{42,42}},none,none}},
             {integer,1}],
            {x,0}}.
    {badmatch,{x,0}}.


{function, match_in_call, 1, 263}.
  {label,262}.
    {line,[{location,"match_SUITE.erl",503}]}.
    {func_info,{atom,match_SUITE},{atom,match_in_call},1}.
  {label,263}.
    {test,is_list,{f,262},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",504}]}.
    {call,1,{f,268}}. % mac_a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"match_SUITE.erl",505}]}.
    {call,1,{f,270}}. % mac_b/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"match_SUITE.erl",506}]}.
    {call,1,{f,272}}. % mac_c/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"match_SUITE.erl",507}]}.
    {call,1,{f,274}}. % mac_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{gurka,42}},{x,0}}.
    {line,[{location,"match_SUITE.erl",508}]}.
    {call,1,{f,276}}. % mac_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[{2,any},{2,2}]},{x,0}}.
    {line,[{location,"match_SUITE.erl",510}]}.
    {call,1,{f,278}}. % mac_lc/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{2,2}},2 => {t_integer,{2,2}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,266},
          [{tr,{x,0},
               {t_cons,{t_tuple,2,true,
                                #{1 => {t_integer,{2,2}},
                                  2 => {t_integer,{2,2}}}},
                       nil}},
           {literal,[{2,2},{2,2}]}]}.
    {'catch',{y,0},{f,264}}.
    {move,{literal,[{1,1}]},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",511}]}.
    {call,1,{f,278}}. % mac_lc/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{2,2}},2 => {t_integer,{2,2}}}},
                     nil}}]}}.
  {label,264}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,265},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,265}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",511}]}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",510}]}.
    {badmatch,{x,0}}.


{function, mac_a, 1, 268}.
  {label,267}.
    {line,[{location,"match_SUITE.erl",515}]}.
    {func_info,{atom,match_SUITE},{atom,mac_a},1}.
  {label,268}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {allocate,0,0}.
    {move,{literal,{gurka,0}},{x,0}}.
    {line,[{location,"match_SUITE.erl",516}]}.
    {call,1,{f,557}}. % id/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, mac_b, 1, 270}.
  {label,269}.
    {line,[{location,"match_SUITE.erl",519}]}.
    {func_info,{atom,match_SUITE},{atom,mac_b},1}.
  {label,270}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {allocate,0,0}.
    {move,{literal,{gurka,1}},{x,0}}.
    {line,[{location,"match_SUITE.erl",520}]}.
    {call,1,{f,557}}. % id/1
    {move,{integer,1},{x,1}}.
    {move,{literal,{gurka,1}},{x,0}}.
    {call_last,2,{f,285},0}. % gurka/2


{function, mac_c, 1, 272}.
  {label,271}.
    {line,[{location,"match_SUITE.erl",524}]}.
    {func_info,{atom,match_SUITE},{atom,mac_c},1}.
  {label,272}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {allocate,0,0}.
    {move,{literal,{gurka,42}},{x,0}}.
    {line,[{location,"match_SUITE.erl",525}]}.
    {call,1,{f,557}}. % id/1
    {move,{literal,{{gurka,42},{gurka,42}}},{x,0}}.
    {line,[{location,"match_SUITE.erl",526}]}.
    {call,1,{f,557}}. % id/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, mac_d, 1, 274}.
  {label,273}.
    {line,[{location,"match_SUITE.erl",529}]}.
    {func_info,{atom,match_SUITE},{atom,mac_d},1}.
  {label,274}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {allocate,0,0}.
    {move,{literal,{gurka,42}},{x,0}}.
    {line,[{location,"match_SUITE.erl",530}]}.
    {call,1,{f,557}}. % id/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, mac_e, 1, 276}.
  {label,275}.
    {line,[{location,"match_SUITE.erl",533}]}.
    {func_info,{atom,match_SUITE},{atom,mac_e},1}.
  {label,276}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[gurka]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {allocate,0,1}.
    {line,[{location,"match_SUITE.erl",534}]}.
    {call,1,{f,557}}. % id/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, mac_lc, 1, 278}.
  {label,277}.
    {line,[{location,"match_SUITE.erl",537}]}.
    {func_info,{atom,match_SUITE},{atom,mac_lc},1}.
  {label,278}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_union,none,none,none,
          [{{2,{t_integer,{1,1}}},
            {t_tuple,2,true,#{1 => {t_integer,{1,1}},2 => {t_integer,{1,1}}}}},
           {{2,{t_integer,{2,2}}},
            {t_tuple,2,true,
             #{1 => {t_integer,{2,2}},
               2 =>
                {t_union,{t_atom,[any]},none,{t_integer,{2,2}},none,none}}}}],
          none},
         nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",538}]}.
    {call,1,{f,281}}. % mac_lc1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{2,2}},2 => {t_integer,{2,2}}}},
                     nil}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",539}]}.
    {call,1,{f,283}}. % mac_lc2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{2,2}},2 => {t_integer,{2,2}}}},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,279},
          [{tr,{x,0},
               {t_cons,{t_tuple,2,true,
                                #{1 => {t_integer,{2,2}},
                                  2 => {t_integer,{2,2}}}},
                       nil}},
           {tr,{y,0},
               {t_cons,{t_tuple,2,true,
                                #{1 => {t_integer,{2,2}},
                                  2 => {t_integer,{2,2}}}},
                       nil}}]}.
    {deallocate,1}.
    return.
  {label,279}.
    {badmatch,{x,0}}.


{function, mac_lc1, 1, 281}.
  {label,280}.
    {line,[{location,"match_SUITE.erl",541}]}.
    {func_info,{atom,match_SUITE},{atom,mac_lc1},1}.
  {label,281}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_union,none,none,none,
          [{{2,{t_integer,{1,1}}},
            {t_tuple,2,true,#{1 => {t_integer,{1,1}},2 => {t_integer,{1,1}}}}},
           {{2,{t_integer,{2,2}}},
            {t_tuple,2,true,
             #{1 => {t_integer,{2,2}},
               2 =>
                {t_union,{t_atom,[any]},none,{t_integer,{2,2}},none,none}}}}],
          none},
         nil}}]}}.
    {call_only,1,{f,579}}. % '-mac_lc1/1-lc$^0/1-0-'/1


{function, mac_lc2, 1, 283}.
  {label,282}.
    {line,[{location,"match_SUITE.erl",546}]}.
    {func_info,{atom,match_SUITE},{atom,mac_lc2},1}.
  {label,283}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_union,none,none,none,
          [{{2,{t_integer,{1,1}}},
            {t_tuple,2,true,#{1 => {t_integer,{1,1}},2 => {t_integer,{1,1}}}}},
           {{2,{t_integer,{2,2}}},
            {t_tuple,2,true,
             #{1 => {t_integer,{2,2}},
               2 =>
                {t_union,{t_atom,[any]},none,{t_integer,{2,2}},none,none}}}}],
          none},
         nil}}]}}.
    {call_only,1,{f,575}}. % '-mac_lc2/1-lc$^0/1-0-'/1


{function, gurka, 2, 285}.
  {label,284}.
    {line,[{location,"match_SUITE.erl",551}]}.
    {func_info,{atom,match_SUITE},{atom,gurka},2}.
  {label,285}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[gurka]},
                                     2 => {t_integer,{1,1}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{1,1}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, untuplify, 1, 287}.
  {label,286}.
    {line,[{location,"match_SUITE.erl",554}]}.
    {func_info,{atom,match_SUITE},{atom,untuplify},1}.
  {label,287}.
    {test,is_list,{f,286},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{3,4}},{x,1}}.
    {move,{atom,alias},{x,2}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"match_SUITE.erl",556}]}.
    {call,3,{f,292}}. % untuplify_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error]},
         none,none,
         {t_tuple,6,true,
          #{1 => {t_integer,{1,2}},
            2 => {t_integer,{1,2}},
            3 => {t_integer,{3,3}},
            4 => {t_integer,{4,4}},
            5 => {t_atom,[alias]},
            6 =>
             {t_tuple,3,true,
              #{1 => {t_cons,{t_integer,{1,2}},nil},
                2 =>
                 {t_tuple,2,true,
                  #{1 => {t_integer,{3,3}},2 => {t_integer,{4,4}}}},
                3 => {t_atom,[alias]}}}}},
         none}}]}}.
    {test,is_eq_exact,
     {f,290},
     [{tr,
       {x,0},
       {t_union,
        {t_atom,[error]},
        none,none,
        {t_tuple,6,true,
         #{1 => {t_integer,{1,2}},
           2 => {t_integer,{1,2}},
           3 => {t_integer,{3,3}},
           4 => {t_integer,{4,4}},
           5 => {t_atom,[alias]},
           6 =>
            {t_tuple,3,true,
             #{1 => {t_cons,{t_integer,{1,2}},nil},
               2 =>
                {t_tuple,2,true,
                 #{1 => {t_integer,{3,3}},2 => {t_integer,{4,4}}}},
               3 => {t_atom,[alias]}}}}},
        none}},
      {literal,{1,2,3,4,alias,{[1,2],{3,4},alias}}}]}.
    {move,{literal,{3,4}},{x,1}}.
    {move,{integer,42},{x,2}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{location,"match_SUITE.erl",557}]}.
    {call,3,{f,292}}. % untuplify_1/3
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,65},{x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"match_SUITE.erl",562}]}.
    {call,2,{f,295}}. % untuplify_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,{t_integer,{'-inf',33}},nil},
                     none,
                     {t_tuple,4,true,
                         #{1 => {t_integer,{'-inf',33}},
                           2 => {t_integer,{0,1}},
                           3 => {t_integer,{'-inf',33}},
                           4 => {t_integer,{-1,0}}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,289},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_integer,{'-inf',33}},nil},
                        none,
                        {t_tuple,4,true,
                                 #{1 => {t_integer,{'-inf',33}},
                                   2 => {t_integer,{0,1}},
                                   3 => {t_integer,{'-inf',33}},
                                   4 => {t_integer,{-1,0}}}},
                        none}},
           {literal,[33,-1,-33,1]}]}.
    {move,{integer,32},{x,1}}.
    {move,{integer,65},{x,0}}.
    {line,[{location,"match_SUITE.erl",563}]}.
    {call,2,{f,295}}. % untuplify_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,{t_integer,{'-inf',33}},nil},
                     none,
                     {t_tuple,4,true,
                         #{1 => {t_integer,{'-inf',33}},
                           2 => {t_integer,{0,1}},
                           3 => {t_integer,{'-inf',33}},
                           4 => {t_integer,{-1,0}}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,288},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_integer,{'-inf',33}},nil},
                        none,
                        {t_tuple,4,true,
                                 #{1 => {t_integer,{'-inf',33}},
                                   2 => {t_integer,{0,1}},
                                   3 => {t_integer,{'-inf',33}},
                                   4 => {t_integer,{-1,0}}}},
                        none}},
           {literal,{33,1,-33,-1}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,288}.
    {badmatch,{x,0}}.
  {label,289}.
    {line,[{location,"match_SUITE.erl",562}]}.
    {badmatch,{x,0}}.
  {label,290}.
    {line,[{location,"match_SUITE.erl",556}]}.
    {badmatch,{x,0}}.


{function, untuplify_1, 3, 292}.
  {label,291}.
    {line,[{location,"match_SUITE.erl",567}]}.
    {func_info,{atom,match_SUITE},{atom,untuplify_1},3}.
  {label,292}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{3,3}},
                                     2 => {t_integer,{4,4}}}}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[alias]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,none}}]}}.
    {get_list,{x,0},{x,1},{x,3}}.
    {test,is_nonempty_list,{f,293},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nil,{f,293},[{tr,{x,3},{t_list,{t_integer,{1,2}},nil}}]}.
    {test,is_eq_exact,
          {f,293},
          [{tr,{x,2},
               {t_union,{t_atom,[alias]},none,{t_integer,{42,42}},none,none}},
           {atom,alias}]}.
    {test_heap,11,5}.
    {put_tuple2,{x,0},{list,[{x,0},{literal,{3,4}},{atom,alias}]}}.
    {put_tuple2,{x,0},
                {list,[{x,1},
                       {x,4},
                       {integer,3},
                       {integer,4},
                       {atom,alias},
                       {x,0}]}}.
    return.
  {label,293}.
    {move,{atom,error},{x,0}}.
    return.


{function, untuplify_2, 2, 295}.
  {label,294}.
    {line,[{location,"match_SUITE.erl",577}]}.
    {func_info,{atom,match_SUITE},{atom,untuplify_2},2}.
  {label,295}.
    {'%',{var_info,{x,0},[{type,{t_integer,{32,65}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{32,65}}}]}}.
    {test,is_lt,
          {f,296},
          [{tr,{x,1},{t_integer,{32,65}}},{tr,{x,0},{t_integer,{32,65}}}]}.
    {line,[{location,"match_SUITE.erl",581}]}.
    {gc_bif,'-',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{33,65}}},{tr,{x,1},{t_integer,{32,64}}}],
            {x,2}}.
    {gc_bif,'-',
            {f,0},
            3,
            [{tr,{x,1},{t_integer,{32,64}}},{tr,{x,0},{t_integer,{33,65}}}],
            {x,0}}.
    {move,{integer,-1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {swap,{x,0},{x,2}}.
    {jump,{f,297}}.
  {label,296}.
    {line,[{location,"match_SUITE.erl",583}]}.
    {gc_bif,'-',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{32,65}}},{tr,{x,0},{t_integer,{32,65}}}],
            {x,2}}.
    {gc_bif,'-',
            {f,0},
            3,
            [{tr,{x,0},{t_integer,{32,65}}},{tr,{x,1},{t_integer,{32,65}}}],
            {x,0}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,-1},{x,1}}.
    {swap,{x,0},{x,2}}.
  {label,297}.
    {test,is_lt,
          {f,298},
          [{tr,{x,3},{t_integer,{-1,1}}},{tr,{x,1},{t_integer,{-1,1}}}]}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2},{x,3}]}}.
    return.
  {label,298}.
    {test_heap,8,4}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    return.


{function, shortcut_boolean, 1, 300}.
  {label,299}.
    {line,[{location,"match_SUITE.erl",593}]}.
    {func_info,{atom,match_SUITE},{atom,shortcut_boolean},1}.
  {label,300}.
    {test,is_list,{f,299},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[0]},{x,0}}.
    {line,[{location,"match_SUITE.erl",594}]}.
    {call,1,{f,309}}. % shortcut_boolean_1/1
    {test,is_eq_exact,{f,307},[{x,0},{atom,false}]}.
    {move,{literal,{42}},{x,0}}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",595}]}.
    {call,1,{f,309}}. % shortcut_boolean_1/1
    {test,is_eq_exact,{f,306},[{x,0},{atom,true}]}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",596}]}.
    {call,1,{f,309}}. % shortcut_boolean_1/1
    {test,is_eq_exact,{f,305},[{x,0},{atom,'maybe'}]}.
    {'catch',{y,1},{f,301}}.
    {move,{literal,[a,b]},{x,0}}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",597}]}.
    {call,1,{f,309}}. % shortcut_boolean_1/1
  {label,301}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,304},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,302}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[3,4]},{location,"match_SUITE.erl",598}]}.
    {call,1,{f,309}}. % shortcut_boolean_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,302}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,303},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,303}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",598}]}.
    {badmatch,{x,0}}.
  {label,304}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",597}]}.
    {badmatch,{x,0}}.
  {label,305}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",596}]}.
    {badmatch,{x,0}}.
  {label,306}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",595}]}.
    {badmatch,{x,0}}.
  {label,307}.
    {line,[{scope,[4]},{location,"match_SUITE.erl",594}]}.
    {badmatch,{x,0}}.


{function, shortcut_boolean_1, 1, 309}.
  {label,308}.
    {line,[{location,"match_SUITE.erl",601}]}.
    {func_info,{atom,match_SUITE},{atom,shortcut_boolean_1},1}.
  {label,309}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,
                         {t_union,
                             {t_atom,[a,b]},
                             none,
                             {t_integer,{0,0}},
                             none,none},
                         nil},
                     none,
                     [{{1,{t_integer,{42,42}}},
                       {t_tuple,1,true,#{1 => {t_integer,{42,42}}}}},
                      {{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     pid}}]}}.
    {test,is_pid,
        {f,310},
        [{tr,{x,0},
             {t_union,none,
                 {t_cons,
                     {t_union,{t_atom,[a,b]},none,{t_integer,{0,0}},none,none},
                     nil},
                 none,
                 [{{1,{t_integer,{42,42}}},
                   {t_tuple,1,true,#{1 => {t_integer,{42,42}}}}},
                  {{2,{t_atom,[a]}},
                   {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                 pid}}]}.
    {move,{atom,'maybe'},{x,0}}.
    {jump,{f,312}}.
  {label,310}.
    {test,is_nonempty_list,{f,311},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nil,
          {f,313},
          [{tr,{x,1},
               {t_list,{t_union,{t_atom,[a,b]},
                                none,
                                {t_integer,{0,0}},
                                none,none},
                       nil}}]}.
    {move,{atom,false},{x,0}}.
    {jump,{f,312}}.
  {label,311}.
    {test,test_arity,{f,313},[{x,0},1]}.
    {move,{atom,true},{x,0}}.
  {label,312}.
    {call_only,1,{f,557}}. % id/1
  {label,313}.
    {line,[{location,"match_SUITE.erl",604}]}.
    {case_end,{x,0}}.


{function, letify_guard, 1, 315}.
  {label,314}.
    {line,[{location,"match_SUITE.erl",616}]}.
    {func_info,{atom,match_SUITE},{atom,letify_guard},1}.
  {label,315}.
    {test,is_list,{f,314},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,a},{x,1}}.
    {move,{integer,-15},{x,0}}.
    {line,[{location,"match_SUITE.erl",617}]}.
    {call,2,{f,319}}. % letify_guard/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{-15,2}},
                       2 =>
                           {t_union,
                               {t_atom,[a]},
                               none,
                               {t_integer,{3,3}},
                               none,none}}}}]}}.
    {test,is_eq_exact,
        {f,317},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 => {t_integer,{-15,2}},
                   2 =>
                       {t_union,
                           {t_atom,[a]},
                           none,
                           {t_integer,{3,3}},
                           none,none}}}},
         {literal,{-15,a}}]}.
    {move,{integer,3},{x,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"match_SUITE.erl",618}]}.
    {call,2,{f,319}}. % letify_guard/2
    {'%',{var_info,{x,0},[{type,{t_integer,{3,'+inf'}}}]}}.
    {test,is_eq_exact,{f,316},[{tr,{x,0},{t_integer,{3,'+inf'}}},{integer,5}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,316}.
    {badmatch,{x,0}}.
  {label,317}.
    {line,[{location,"match_SUITE.erl",617}]}.
    {badmatch,{x,0}}.


{function, letify_guard, 2, 319}.
  {label,318}.
    {line,[{location,"match_SUITE.erl",621}]}.
    {func_info,{atom,match_SUITE},{atom,letify_guard},2}.
  {label,319}.
    {'%',{var_info,{x,0},[{type,{t_integer,{-15,2}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{3,3}},
                                   none,none}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,2},{list,[{x,0},{x,1}]}}.
    {test,is_ge,{f,320},[{integer,-1},{tr,{x,0},{t_integer,{-15,2}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,320}.
    {line,[{location,"match_SUITE.erl",627}]}.
    {gc_bif,'+',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{0,2}}},
             {tr,{x,1},
                 {t_union,{t_atom,[a]},none,{t_integer,{3,3}},none,none}}],
            {x,0}}.
    return.


{function, selectify, 1, 322}.
  {label,321}.
    {line,[{location,"match_SUITE.erl",633}]}.
    {func_info,{atom,match_SUITE},{atom,selectify},1}.
  {label,322}.
    {test,is_list,{f,321},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{r,42}},{x,0}}.
    {line,[{location,"match_SUITE.erl",634}]}.
    {call,1,{f,330}}. % sel_different_types/1
    {'%',{var_info,{x,0},[{type,{t_atom,[integer,none]}}]}}.
    {test,is_eq_exact,
          {f,328},
          [{tr,{x,0},{t_atom,[integer,none]}},{atom,integer}]}.
    {move,{literal,{r,forty_two}},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",635}]}.
    {call,1,{f,330}}. % sel_different_types/1
    {'%',{var_info,{x,0},[{type,{t_atom,[atom,none]}}]}}.
    {test,is_eq_exact,{f,327},[{tr,{x,0},{t_atom,[atom,none]}},{atom,atom}]}.
    {move,{literal,{r,100.0}},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",636}]}.
    {call,1,{f,330}}. % sel_different_types/1
    {'%',{var_info,{x,0},[{type,{t_atom,[float,none]}}]}}.
    {test,is_eq_exact,{f,326},[{tr,{x,0},{t_atom,[float,none]}},{atom,float}]}.
    {move,{literal,{r,18}},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",637}]}.
    {call,1,{f,330}}. % sel_different_types/1
    {'%',{var_info,{x,0},[{type,{t_atom,[none]}}]}}.
    {'catch',{y,0},{f,323}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",638}]}.
    {call,1,{f,330}}. % sel_different_types/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,323}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,325},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,{r,42}},{x,0}}.
    {line,[{scope,[1,2]},{location,"match_SUITE.erl",640}]}.
    {call,1,{f,335}}. % sel_same_value/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,integer]}}]}}.
    {test,is_eq_exact,
          {f,324},
          [{tr,{x,0},{t_atom,[error,integer]}},{atom,integer}]}.
    {move,{literal,{r,100}},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",641}]}.
    {call,1,{f,335}}. % sel_same_value/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",642}]}.
    {call,1,{f,335}}. % sel_same_value/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",644}]}.
    {call,1,{f,338}}. % sel_same_value2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[integer42]}}]}}.
    {move,{integer,43},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",645}]}.
    {call,1,{f,338}}. % sel_same_value2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[integer43]}}]}}.
    {move,{integer,44},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",646}]}.
    {call,1,{f,338}}. % sel_same_value2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,324}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",640}]}.
    {badmatch,{atom,error}}.
  {label,325}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",638}]}.
    {badmatch,{x,0}}.
  {label,326}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",636}]}.
    {badmatch,{atom,none}}.
  {label,327}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",635}]}.
    {badmatch,{atom,none}}.
  {label,328}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",634}]}.
    {badmatch,{atom,none}}.


{function, sel_different_types, 1, 330}.
  {label,329}.
    {line,[{location,"match_SUITE.erl",650}]}.
    {func_info,{atom,match_SUITE},{atom,sel_different_types},1}.
  {label,330}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,{t_atom,[a,b,c]},nil},
                     none,
                     [{{2,{t_atom,[r]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[r]},
                             2 =>
                                 {t_union,
                                     {t_atom,[forty_two]},
                                     none,
                                     {t_number,{18,100}},
                                     none,none}}}}],
                     none}}]}}.
    {test,is_tuple,
        {f,329},
        [{tr,{x,0},
             {t_union,none,
                 {t_cons,{t_atom,[a,b,c]},nil},
                 none,
                 [{{2,{t_atom,[r]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[r]},
                         2 =>
                             {t_union,
                                 {t_atom,[forty_two]},
                                 none,
                                 {t_number,{18,100}},
                                 none,none}}}}],
                 none}}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,
          {f,331},
          [{tr,{x,0},
               {t_union,{t_atom,[forty_two]},
                        none,
                        {t_number,{18,100}},
                        none,none}},
           {atom,forty_two}]}.
    {move,{atom,atom},{x,0}}.
    return.
  {label,331}.
    {test,is_eq_exact,{f,332},[{tr,{x,0},{t_number,{18,100}}},{integer,42}]}.
    {move,{atom,integer},{x,0}}.
    return.
  {label,332}.
    {test,is_eq_exact,{f,333},[{tr,{x,0},{t_number,{18,100}}},{float,100.0}]}.
    {move,{atom,float},{x,0}}.
    return.
  {label,333}.
    {move,{atom,none},{x,0}}.
    return.


{function, sel_same_value, 1, 335}.
  {label,334}.
    {line,[{location,"match_SUITE.erl",659}]}.
    {func_info,{atom,match_SUITE},{atom,sel_same_value},1}.
  {label,335}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     none,none,
                     [{{2,{t_atom,[r]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[r]},2 => {t_integer,{42,100}}}}}],
                     none}}]}}.
    {test,is_tuple,
          {f,336},
          [{tr,{x,0},
               {t_union,{t_atom,[a]},
                        none,none,
                        [{{2,{t_atom,[r]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[r]},
                                     2 => {t_integer,{42,100}}}}}],
                        none}}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,336},[{tr,{x,0},{t_integer,{42,100}}},{integer,42}]}.
    {move,{atom,integer},{x,0}}.
    return.
  {label,336}.
    {move,{atom,error},{x,0}}.
    return.


{function, sel_same_value2, 1, 338}.
  {label,337}.
    {line,[{location,"match_SUITE.erl",666}]}.
    {func_info,{atom,match_SUITE},{atom,sel_same_value2},1}.
  {label,338}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,44}}}]}}.
    {select_val,{tr,{x,0},{t_integer,{42,44}}},
                {f,341},
                {list,[{integer,42},{f,340},{integer,43},{f,339}]}}.
  {label,339}.
    {move,{atom,integer43},{x,0}}.
    return.
  {label,340}.
    {move,{atom,integer42},{x,0}}.
    return.
  {label,341}.
    {move,{atom,error},{x,0}}.
    return.


{function, deselectify, 1, 343}.
  {label,342}.
    {line,[{location,"match_SUITE.erl",676}]}.
    {func_info,{atom,match_SUITE},{atom,deselectify},1}.
  {label,343}.
    {test,is_list,{f,342},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,{1}},{x,0}}.
    {line,[{location,"match_SUITE.erl",677}]}.
    {call,1,{f,360}}. % desel_tuple_arity/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other]}}]}}.
    {move,{literal,{1,1}},{x,0}}.
    {line,[{location,"match_SUITE.erl",678}]}.
    {call,1,{f,360}}. % desel_tuple_arity/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other,two]}}]}}.
    {test,is_eq_exact,
          {f,358},
          [{tr,{x,0},{t_atom,[one_or_other,two]}},{atom,two}]}.
    {move,{literal,{1,1,1}},{x,0}}.
    {line,[{location,"match_SUITE.erl",679}]}.
    {call,1,{f,360}}. % desel_tuple_arity/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other]}}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"match_SUITE.erl",681}]}.
    {call,1,{f,363}}. % dsel_integer/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other]}}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"match_SUITE.erl",682}]}.
    {call,1,{f,363}}. % dsel_integer/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other,two]}}]}}.
    {test,is_eq_exact,
          {f,357},
          [{tr,{x,0},{t_atom,[one_or_other,two]}},{atom,two}]}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"match_SUITE.erl",683}]}.
    {call,1,{f,363}}. % dsel_integer/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other]}}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"match_SUITE.erl",685}]}.
    {call,1,{f,366}}. % dsel_integer_typecheck/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other]}}]}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"match_SUITE.erl",686}]}.
    {call,1,{f,366}}. % dsel_integer_typecheck/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other,two]}}]}}.
    {test,is_eq_exact,
          {f,356},
          [{tr,{x,0},{t_atom,[one_or_other,two]}},{atom,two}]}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"match_SUITE.erl",687}]}.
    {call,1,{f,366}}. % dsel_integer_typecheck/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other]}}]}}.
    {move,{atom,one},{x,0}}.
    {line,[{location,"match_SUITE.erl",689}]}.
    {call,1,{f,369}}. % dsel_atom/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other]}}]}}.
    {move,{atom,two},{x,0}}.
    {line,[{location,"match_SUITE.erl",690}]}.
    {call,1,{f,369}}. % dsel_atom/1
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,three},{x,0}}.
    {line,[{location,"match_SUITE.erl",691}]}.
    {call,1,{f,369}}. % dsel_atom/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other]}}]}}.
    {move,{atom,one},{x,0}}.
    {line,[{location,"match_SUITE.erl",693}]}.
    {call,1,{f,372}}. % dsel_atom_typecheck/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other]}}]}}.
    {move,{atom,two},{x,0}}.
    {line,[{location,"match_SUITE.erl",694}]}.
    {call,1,{f,372}}. % dsel_atom_typecheck/1
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,three},{x,0}}.
    {line,[{location,"match_SUITE.erl",695}]}.
    {call,1,{f,372}}. % dsel_atom_typecheck/1
    {'%',{var_info,{x,0},[{type,{t_atom,[one_or_other]}}]}}.
    {move,{atom,stop},{x,0}}.
    {line,[{location,"match_SUITE.erl",700}]}.
    {call,1,{f,375}}. % dsel_peek_0/1
    {test,is_eq_exact,{f,355},[{x,0},{atom,stop}]}.
    {move,{atom,ignore},{x,0}}.
    {line,[{location,"match_SUITE.erl",701}]}.
    {call,1,{f,375}}. % dsel_peek_0/1
    {test,is_eq_exact,{f,354},[{x,0},{atom,ignore}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",702}]}.
    {call,1,{f,375}}. % dsel_peek_0/1
    {test,is_eq_exact,{f,353},[{x,0},{tr,{y,0},{t_list,any,any}}]}.
    {move,{atom,any},{x,1}}.
    {move,{atom,stop},{x,0}}.
    {line,[{location,"match_SUITE.erl",704}]}.
    {call,2,{f,377}}. % dsel_peek_1/2
    {test,is_eq_exact,{f,352},[{x,0},{atom,stop}]}.
    {move,{y,0},{x,1}}.
    {move,{atom,ignore},{x,0}}.
    {line,[{location,"match_SUITE.erl",705}]}.
    {call,2,{f,377}}. % dsel_peek_1/2
    {test,is_eq_exact,{f,351},[{x,0},{tr,{y,0},{t_list,any,any}}]}.
    {move,{atom,ignored},{x,1}}.
    {move,{atom,other},{x,0}}.
    {line,[{location,"match_SUITE.erl",706}]}.
    {call,2,{f,377}}. % dsel_peek_1/2
    {test,is_eq_exact,{f,350},[{x,0},{atom,other}]}.
    {move,{atom,any},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",708}]}.
    {call,2,{f,380}}. % dsel_peek_2/2
    {test,is_eq_exact,{f,349},[{x,0},{integer,0}]}.
    {move,{y,0},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"match_SUITE.erl",709}]}.
    {call,2,{f,380}}. % dsel_peek_2/2
    {test,is_eq_exact,{f,348},[{x,0},{tr,{y,0},{t_list,any,any}}]}.
    {move,{atom,ignored},{x,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"match_SUITE.erl",710}]}.
    {call,2,{f,380}}. % dsel_peek_2/2
    {test,is_eq_exact,{f,347},[{x,0},{integer,2}]}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"match_SUITE.erl",712}]}.
    {call,1,{f,383}}. % dsel_peek_3/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,346},
          [{tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                        none}},
           {atom,true}]}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"match_SUITE.erl",713}]}.
    {call,1,{f,383}}. % dsel_peek_3/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,345},
          [{tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                        none}},
           {atom,false}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",714}]}.
    {call,1,{f,383}}. % dsel_peek_3/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,true]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_tuple,
          {f,344},
          [{tr,{x,0},
               {t_union,{t_atom,[false,true]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,#{1 => {t_atom,[error]}}}}],
                        none}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,344},[{x,1},{tr,{y,0},{t_list,any,any}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,344}.
    {badmatch,{x,0}}.
  {label,345}.
    {line,[{location,"match_SUITE.erl",713}]}.
    {badmatch,{x,0}}.
  {label,346}.
    {line,[{location,"match_SUITE.erl",712}]}.
    {badmatch,{x,0}}.
  {label,347}.
    {line,[{location,"match_SUITE.erl",710}]}.
    {badmatch,{x,0}}.
  {label,348}.
    {line,[{location,"match_SUITE.erl",709}]}.
    {badmatch,{x,0}}.
  {label,349}.
    {line,[{location,"match_SUITE.erl",708}]}.
    {badmatch,{x,0}}.
  {label,350}.
    {line,[{location,"match_SUITE.erl",706}]}.
    {badmatch,{x,0}}.
  {label,351}.
    {line,[{location,"match_SUITE.erl",705}]}.
    {badmatch,{x,0}}.
  {label,352}.
    {line,[{location,"match_SUITE.erl",704}]}.
    {badmatch,{x,0}}.
  {label,353}.
    {line,[{location,"match_SUITE.erl",702}]}.
    {badmatch,{x,0}}.
  {label,354}.
    {line,[{location,"match_SUITE.erl",701}]}.
    {badmatch,{x,0}}.
  {label,355}.
    {line,[{location,"match_SUITE.erl",700}]}.
    {badmatch,{x,0}}.
  {label,356}.
    {line,[{location,"match_SUITE.erl",686}]}.
    {badmatch,{atom,one_or_other}}.
  {label,357}.
    {line,[{location,"match_SUITE.erl",682}]}.
    {badmatch,{atom,one_or_other}}.
  {label,358}.
    {line,[{location,"match_SUITE.erl",678}]}.
    {badmatch,{atom,one_or_other}}.


{function, desel_tuple_arity, 1, 360}.
  {label,359}.
    {line,[{location,"match_SUITE.erl",721}]}.
    {func_info,{atom,match_SUITE},{atom,desel_tuple_arity},1}.
  {label,360}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{1,{t_integer,{1,1}}},
                       {t_tuple,1,true,#{1 => {t_integer,{1,1}}}}},
                      {{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_integer,{1,1}}}}},
                      {{3,{t_integer,{1,1}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{1,1}},
                             3 => {t_integer,{1,1}}}}}],
                     none}}]}}.
    {test,test_arity,{f,361},[{x,0},2]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,361}.
    {move,{atom,one_or_other},{x,0}}.
    return.


{function, dsel_integer, 1, 363}.
  {label,362}.
    {line,[{location,"match_SUITE.erl",728}]}.
    {func_info,{atom,match_SUITE},{atom,dsel_integer},1}.
  {label,363}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,3}}}]}}.
    {test,is_eq_exact,{f,364},[{x,0},{integer,2}]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,364}.
    {move,{atom,one_or_other},{x,0}}.
    return.


{function, dsel_integer_typecheck, 1, 366}.
  {label,365}.
    {line,[{location,"match_SUITE.erl",735}]}.
    {func_info,{atom,match_SUITE},{atom,dsel_integer_typecheck},1}.
  {label,366}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,3}}}]}}.
    {test,is_eq_exact,{f,367},[{x,0},{integer,2}]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,367}.
    {move,{atom,one_or_other},{x,0}}.
    return.


{function, dsel_atom, 1, 369}.
  {label,368}.
    {line,[{location,"match_SUITE.erl",742}]}.
    {func_info,{atom,match_SUITE},{atom,dsel_atom},1}.
  {label,369}.
    {'%',{var_info,{x,0},[{type,{t_atom,[one,three,two]}}]}}.
    {test,is_eq_exact,{f,370},[{x,0},{atom,two}]}.
    return.
  {label,370}.
    {move,{atom,one_or_other},{x,0}}.
    return.


{function, dsel_atom_typecheck, 1, 372}.
  {label,371}.
    {line,[{location,"match_SUITE.erl",749}]}.
    {func_info,{atom,match_SUITE},{atom,dsel_atom_typecheck},1}.
  {label,372}.
    {'%',{var_info,{x,0},[{type,{t_atom,[one,three,two]}}]}}.
    {test,is_eq_exact,{f,373},[{x,0},{atom,two}]}.
    return.
  {label,373}.
    {move,{atom,one_or_other},{x,0}}.
    return.


{function, dsel_peek_0, 1, 375}.
  {label,374}.
    {line,[{location,"match_SUITE.erl",761}]}.
    {func_info,{atom,match_SUITE},{atom,dsel_peek_0},1}.
  {label,375}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ignore,stop]},
                                   {t_list,any,any},
                                   none,none,none}}]}}.
    {allocate,0,1}.
    {line,[{location,"match_SUITE.erl",762}]}.
    {call_last,1,{f,557},0}. % id/1


{function, dsel_peek_1, 2, 377}.
  {label,376}.
    {line,[{location,"match_SUITE.erl",768}]}.
    {func_info,{atom,match_SUITE},{atom,dsel_peek_1},2}.
  {label,377}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ignore,other,stop]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[any,ignored]},
                                   {t_list,any,any},
                                   none,none,none}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"match_SUITE.erl",769}]}.
    {call,1,{f,557}}. % id/1
    {test,is_eq_exact,{f,378},[{x,0},{atom,ignore}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,378}.
    {deallocate,1}.
    return.


{function, dsel_peek_2, 2, 380}.
  {label,379}.
    {line,[{location,"match_SUITE.erl",775}]}.
    {func_info,{atom,match_SUITE},{atom,dsel_peek_2},2}.
  {label,380}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,2}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[any,ignored]},
                                   {t_list,any,any},
                                   none,none,none}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"match_SUITE.erl",776}]}.
    {call,1,{f,557}}. % id/1
    {test,is_eq_exact,{f,381},[{x,0},{integer,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,381}.
    {deallocate,1}.
    return.


{function, dsel_peek_3, 1, 383}.
  {label,382}.
    {line,[{location,"match_SUITE.erl",782}]}.
    {func_info,{atom,match_SUITE},{atom,dsel_peek_3},1}.
  {label,383}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false,true]},
                                   {t_list,any,any},
                                   none,none,none}}]}}.
    {allocate,0,1}.
    {line,[{location,"match_SUITE.erl",783}]}.
    {call,1,{f,557}}. % id/1
    {test,is_boolean,{f,384},[{x,0}]}.
    {deallocate,0}.
    return.
  {label,384}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    {deallocate,0}.
    return.


{function, underscore, 1, 386}.
  {label,385}.
    {line,[{location,"match_SUITE.erl",789}]}.
    {func_info,{atom,match_SUITE},{atom,underscore},1}.
  {label,386}.
    {test,is_list,{f,385},[{x,0}]}.
    {allocate,0,1}.
    {test,is_nonempty_list,{f,387},[{x,0}]}.
    {line,[{location,"match_SUITE.erl",796}]}.
    {call_ext,1,{extfunc,erlang,list_to_tuple,1}}.
  {label,387}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, match_map, 1, 389}.
  {label,388}.
    {line,[{location,"match_SUITE.erl",803}]}.
    {func_info,{atom,match_SUITE},{atom,match_map},1}.
  {label,389}.
    {test,is_list,{f,388},[{x,0}]}.
    {allocate_heap,1,4,0}.
    {init_yregs,{list,[{y,0}]}}.
    {put_tuple2,{x,0},
                {list,[{atom,s},
                       {literal,#{ignore => anything,key => {x,y}}},
                       {atom,undefined}]}}.
    {line,[{location,"match_SUITE.erl",805}]}.
    {call,1,{f,395}}. % do_match_map/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 => {t_atom,[s]},
           2 =>
            {t_map,
             {t_atom,[ignore,key]},
             {t_union,
              {t_atom,[anything]},
              none,none,
              [{{2,{t_atom,[x]}},
                {t_tuple,2,true,#{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
              none}},
           3 =>
            {t_union,
             {t_atom,[anything]},
             none,none,
             [{{2,{t_atom,[x]}},
               {t_tuple,2,true,#{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,393},
          [{tr,{x,1},
               {t_union,{t_atom,[anything]},
                        none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        none}},
           {literal,{x,y}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
        {f,393},
        [{tr,{x,1},
             {t_map,
                 {t_atom,[ignore,key]},
                 {t_union,
                     {t_atom,[anything]},
                     none,none,
                     [{{2,{t_atom,[x]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                     none}}},
         {literal,#{ignore => anything,key => {x,y}}}]}.
    {move,{literal,#{k => {a,b,c}}},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",806}]}.
    {call,1,{f,397}}. % do_match_map_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[a]},
                       2 =>
                           {t_map,
                               {t_atom,[k]},
                               {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,has_map_fields,{f,392},{x,1},{list,[{atom,k}]}}.
    {'catch',{y,0},{f,390}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",807}]}.
    {call,1,{f,557}}. % id/1
    {call,1,{f,400}}. % do_match_map_none/1
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
  {label,390}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,391},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,391},[{x,1}]}.
    {test,test_arity,{f,391},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,391},[{x,1},{literal,{badmatch,whatever}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,391}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",807}]}.
    {badmatch,{x,0}}.
  {label,392}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",806}]}.
    {badmatch,{x,0}}.
  {label,393}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",805}]}.
    {badmatch,{x,0}}.


{function, do_match_map, 1, 395}.
  {label,394}.
    {line,[{location,"match_SUITE.erl",810}]}.
    {func_info,{atom,match_SUITE},{atom,do_match_map},1}.
  {label,395}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 => {t_atom,[s]},
           2 =>
            {t_map,
             {t_atom,[ignore,key]},
             {t_union,
              {t_atom,[anything]},
              none,none,
              [{{2,{t_atom,[x]}},
                {t_tuple,2,true,#{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
              none}},
           3 => {t_atom,[undefined]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_map_elements,
        {f,394},
        {tr,{x,1},
            {t_map,
                {t_atom,[ignore,key]},
                {t_union,
                    {t_atom,[anything]},
                    none,none,
                    [{{2,{t_atom,[x]}},
                      {t_tuple,2,true,
                          #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                    none}}},
        {list,[{atom,key},{x,1}]}}.
    {test_heap,4,2}.
    {update_record,
        {atom,inplace},
        3,
        {tr,{x,0},
            {t_tuple,3,true,
                #{1 => {t_atom,[s]},
                  2 =>
                      {t_map,
                          {t_atom,[ignore,key]},
                          {t_union,
                              {t_atom,[anything]},
                              none,none,
                              [{{2,{t_atom,[x]}},
                                {t_tuple,2,true,
                                    #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                              none}},
                  3 => {t_atom,[undefined]}}}},
        {x,0},
        {list,
            [3,
             {tr,{x,1},
                 {t_union,
                     {t_atom,[anything]},
                     none,none,
                     [{{2,{t_atom,[x]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                     none}}]}}.
    return.


{function, do_match_map_2, 1, 397}.
  {label,396}.
    {line,[{location,"match_SUITE.erl",814}]}.
    {func_info,{atom,match_SUITE},{atom,do_match_map_2},1}.
  {label,397}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_map,
                     {t_atom,[k]},
                     {t_tuple,3,true,
                         #{1 => {t_atom,[a]},
                           2 => {t_atom,[b]},
                           3 => {t_atom,[c]}}}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,a},{x,0}]}}.
    {test,has_map_fields,{f,398},{x,0},{list,[{atom,k}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,398}.
    {line,[{location,"match_SUITE.erl",815}]}.
    {case_end,{x,1}}.


{function, do_match_map_none, 1, 400}.
  {label,399}.
    {line,[{location,"match_SUITE.erl",820}]}.
    {func_info,{atom,match_SUITE},{atom,do_match_map_none},1}.
  {label,400}.
    {allocate,2,1}.
    {move,{x,0},{y,0}}.
    {'try',{y,1},{f,401}}.
    {test,is_eq_exact,{f,405},[{x,0},{literal,{}}]}.
    {line,[{scope,[1]},{location,"match_SUITE.erl",823}]}.
    {badmatch,{literal,{{}}}}.
  {label,401}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,404},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {test,is_eq_exact,{f,402},[{x,1},{y,0}]}.
    {move,{literal,#{}},{x,0}}.
    {jump,{f,403}}.
  {label,402}.
    {move,{y,0},{x,0}}.
  {label,403}.
    {test,is_map,{f,406},[{x,0}]}.
    {test,has_map_fields,{f,406},{x,0},{list,[{integer,42}]}}.
    {deallocate,2}.
    return.
  {label,404}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,405}.
    {badmatch,{x,0}}.
  {label,406}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",822}]}.
    {badmatch,{x,0}}.


{function, map_vars_used, 1, 408}.
  {label,407}.
    {line,[{location,"match_SUITE.erl",831}]}.
    {func_info,{atom,match_SUITE},{atom,map_vars_used},1}.
  {label,408}.
    {test,is_list,{f,407},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,b},{x,1}}.
    {move,{literal,#{v => {some,value},{a,b} => 42}},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"match_SUITE.erl",832}]}.
    {call,3,{f,411}}. % do_map_vars_used/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[some]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[some]},2 => {t_atom,[value]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,409},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[some]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[some]},
                                     2 => {t_atom,[value]}}}}],
                        none}},
           {literal,{some,value}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,409}.
    {badmatch,{integer,42}}.


{function, do_map_vars_used, 3, 411}.
  {label,410}.
    {line,[{location,"match_SUITE.erl",835}]}.
    {func_info,{atom,match_SUITE},{atom,do_map_vars_used},3}.
  {label,411}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[b]}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_map,
                     {t_union,
                         {t_atom,[v]},
                         none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                         none},
                     {t_union,none,none,
                         {t_integer,{42,42}},
                         [{{2,{t_atom,[some]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[some]},
                                 2 => {t_atom,[value]}}}}],
                         none}}}]}}.
    {get_map_elements,
        {f,412},
        {tr,{x,2},
            {t_map,
                {t_union,
                    {t_atom,[v]},
                    none,none,
                    [{{2,{t_atom,[a]}},
                      {t_tuple,2,true,
                          #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                    none},
                {t_union,none,none,
                    {t_integer,{42,42}},
                    [{{2,{t_atom,[some]}},
                      {t_tuple,2,true,
                          #{1 => {t_atom,[some]},2 => {t_atom,[value]}}}}],
                    none}}},
        {list,[{literal,{a,b}},{x,1},{atom,v},{x,0}]}}.
    {test,is_eq_exact,
          {f,412},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[some]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[some]},
                                     2 => {t_atom,[value]}}}}],
                        none}},
           {integer,42}]}.
    return.
  {label,412}.
    {line,[{location,"match_SUITE.erl",839}]}.
    {badmatch,{x,2}}.


{function, coverage, 1, 414}.
  {label,413}.
    {line,[{location,"match_SUITE.erl",844}]}.
    {func_info,{atom,match_SUITE},{atom,coverage},1}.
  {label,414}.
    {test,is_list,{f,413},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,a},{x,1}}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"match_SUITE.erl",846}]}.
    {call,2,{f,425}}. % coverage_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,b},{x,1}}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"match_SUITE.erl",847}]}.
    {call,2,{f,425}}. % coverage_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{location,"match_SUITE.erl",850}]}.
    {call,1,{f,432}}. % coverage_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[[expr,key]]},{x,1}}.
    {move,{literal,[literal,get]},{x,0}}.
    {line,[{location,"match_SUITE.erl",853}]}.
    {call,2,{f,434}}. % coverage_4/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[expr,get,key,literal]},
                                     2 =>
                                         {t_atom,[expr,get,key,literal]}}}}]}}.
    {test,is_eq_exact,
          {f,423},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[expr,get,key,literal]},
                          2 => {t_atom,[expr,get,key,literal]}}}},
           {literal,{expr,key}}]}.
    {move,nil,{x,1}}.
    {move,{literal,[expr,key]},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",854}]}.
    {call,2,{f,434}}. % coverage_4/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[expr,get,key,literal]},
                                     2 =>
                                         {t_atom,[expr,get,key,literal]}}}}]}}.
    {test,is_eq_exact,
          {f,422},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[expr,get,key,literal]},
                          2 => {t_atom,[expr,get,key,literal]}}}},
           {literal,{expr,key}}]}.
    {move,{literal,{coverage_id,true,undefined}},{x,1}}.
    {move,{literal,"\b\b\b"},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",856}]}.
    {call,2,{f,437}}. % coverage_5/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,421},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {move,{literal,{coverage_id,true,undefined}},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",857}]}.
    {call,2,{f,437}}. % coverage_5/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",860}]}.
    {call,0,{f,440}}. % coverage_6/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",863}]}.
    {call,1,{f,557}}. % id/1
    {move,{atom,x},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,x},{x,0}}.
    {call,3,{f,443}}. % coverage_7/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a,c]}}]}}.
    {test,is_eq_exact,{f,420},[{tr,{x,0},{t_atom,[a,c]}},{atom,a}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",864}]}.
    {call,1,{f,557}}. % id/1
    {move,{integer,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,x},{x,0}}.
    {call,3,{f,443}}. % coverage_7/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,419},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {'catch',{y,0},{f,415}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",866}]}.
    {call,1,{f,557}}. % id/1
    {call,1,{f,447}}. % coverage_8/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
  {label,415}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,418},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,418},[{x,1}]}.
    {test,test_arity,{f,418},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,418},[{x,1},{literal,{badmatch,{42}}}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",868}]}.
    {call,1,{f,557}}. % id/1
    {call,1,{f,450}}. % coverage_9/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,false,true]}}]}}.
    {test,is_eq_exact,
          {f,417},
          [{tr,{x,0},{t_atom,[error,false,true]}},{atom,error}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",869}]}.
    {call,1,{f,557}}. % id/1
    {call,1,{f,450}}. % coverage_9/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,false,true]}}]}}.
    {test,is_eq_exact,
          {f,416},
          [{tr,{x,0},{t_atom,[error,false,true]}},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,416}.
    {badmatch,{x,0}}.
  {label,417}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",868}]}.
    {badmatch,{x,0}}.
  {label,418}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",866}]}.
    {badmatch,{x,0}}.
  {label,419}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",864}]}.
    {badmatch,{atom,a}}.
  {label,420}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",863}]}.
    {badmatch,{atom,c}}.
  {label,421}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",856}]}.
    {badmatch,{atom,b}}.
  {label,422}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",854}]}.
    {badmatch,{x,0}}.
  {label,423}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",853}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 2, 425}.
  {label,424}.
    {line,[{location,"match_SUITE.erl",873}]}.
    {func_info,{atom,match_SUITE},{atom,coverage_1},2}.
  {label,425}.
    {'%',{var_info,{x,0},[{type,{t_atom,[x]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,426},[{x,1},{atom,b}]}.
    {move,{atom,x},{x,2}}.
    {move,{integer,2},{x,0}}.
    {call_only,3,{f,428}}. % coverage_2/3
  {label,426}.
    {move,{atom,a},{x,1}}.
    {move,{atom,x},{x,2}}.
    {move,{integer,1},{x,0}}.
    {call_only,3,{f,428}}. % coverage_2/3


{function, coverage_2, 3, 428}.
  {label,427}.
    {line,[{location,"match_SUITE.erl",879}]}.
    {func_info,{atom,match_SUITE},{atom,coverage_2},3}.
  {label,428}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,2}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[a,b]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[x]}}]}}.
    {test,is_eq_exact,{f,429},[{x,0},{integer,2}]}.
    {test,is_eq_exact,{f,427},[{tr,{x,1},{t_atom,[a,b]}},{atom,b}]}.
    {jump,{f,430}}.
  {label,429}.
    {test,is_eq_exact,{f,427},[{tr,{x,1},{t_atom,[a,b]}},{atom,a}]}.
  {label,430}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_3, 1, 432}.
  {label,431}.
    {line,[{location,"match_SUITE.erl",882}]}.
    {func_info,{atom,match_SUITE},{atom,coverage_3},1}.
  {label,432}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{97,99}},nil}}]}}.
    {test,is_eq_exact,
          {f,431},
          [{tr,{x,0},{t_cons,{t_integer,{97,99}},nil}},{literal,"abc"}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_4, 2, 434}.
  {label,433}.
    {line,[{location,"match_SUITE.erl",885}]}.
    {func_info,{atom,match_SUITE},{atom,coverage_4},2}.
  {label,434}.
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_atom,[expr,get,key,literal]},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_list,{t_cons,{t_atom,[expr,key]},nil},nil}}]}}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_eq_exact,
          {f,435},
          [{tr,{x,2},{t_atom,[expr,get,key,literal]}},{atom,literal}]}.
    {test,is_eq_exact,
          {f,435},
          [{tr,{x,3},{t_list,{t_atom,[expr,get,key,literal]},nil}},
           {literal,[get]}]}.
    {test,is_nonempty_list,{f,435},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,5}}.
    {test,is_nil,
          {f,435},
          [{tr,{x,5},{t_list,{t_cons,{t_atom,[expr,key]},nil},nil}}]}.
    {move,nil,{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,434}}. % coverage_4/2
  {label,435}.
    {test,is_nonempty_list,{f,433},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nil,
          {f,433},
          [{tr,{x,3},{t_list,{t_atom,[expr,get,key,literal]},nil}}]}.
    {test,is_nil,
          {f,433},
          [{tr,{x,1},{t_list,{t_cons,{t_atom,[expr,key]},nil},nil}}]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4}]}}.
    return.


{function, coverage_5, 2, 437}.
  {label,436}.
    {line,[{location,"match_SUITE.erl",891}]}.
    {func_info,{atom,match_SUITE},{atom,coverage_5},2}.
  {label,437}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{8,8}},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[coverage_id]},
                                     2 => {t_atom,[true]},
                                     3 => {t_atom,[undefined]}}}}]}}.
    {test,is_eq_exact,
          {f,438},
          [{tr,{x,0},{t_list,{t_integer,{8,8}},nil}},{literal,"\b\b\b"}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,438}.
    {move,{atom,b},{x,0}}.
    return.


{function, coverage_6, 0, 440}.
  {label,439}.
    {line,[{location,"match_SUITE.erl",898}]}.
    {func_info,{atom,match_SUITE},{atom,coverage_6},0}.
  {label,440}.
    {allocate,0,0}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"match_SUITE.erl",901}]}.
    {call,1,{f,557}}. % id/1
    {test,is_lt,{f,441},[{integer,0},{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,441}.
    {move,{literal,[error,17,42]},{x,0}}.
    {line,[{location,"match_SUITE.erl",912}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.


{function, coverage_7, 3, 443}.
  {label,442}.
    {line,[{location,"match_SUITE.erl",916}]}.
    {func_info,{atom,match_SUITE},{atom,coverage_7},3}.
  {label,443}.
    {'%',{var_info,{x,0},[{type,{t_atom,[x]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[x]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,{f,444},[{x,2},{atom,true}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,444}.
    {test,is_eq_exact,
          {f,445},
          [{tr,{x,1},{t_union,{t_atom,[x]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {test,is_eq_exact,{f,442},[{x,2},{atom,false}]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,445}.
    {test,is_eq_exact,{f,442},[{x,2},{atom,true}]}.
    {move,{atom,c},{x,0}}.
    return.


{function, coverage_8, 1, 447}.
  {label,446}.
    {line,[{location,"match_SUITE.erl",924}]}.
    {func_info,{atom,match_SUITE},{atom,coverage_8},1}.
  {label,447}.
    {test_heap,2,1}.
    {put_tuple2,{x,1},{list,[{x,0}]}}.
    {test,is_eq_exact,{f,448},[{tr,{x,1},{t_tuple,1,true,#{}}},{x,0}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,448}.
    {line,[{location,"match_SUITE.erl",925}]}.
    {badmatch,{x,1}}.


{function, coverage_9, 1, 450}.
  {label,449}.
    {line,[{location,"match_SUITE.erl",927}]}.
    {func_info,{atom,match_SUITE},{atom,coverage_9},1}.
  {label,450}.
    {test,is_eq,{f,451},[{x,0},{integer,0}]}.
    {bif,'/=',{f,0},[{x,0},{integer,-1}],{x,0}}.
    return.
  {label,451}.
    {move,{atom,error},{x,0}}.
    return.


{function, grab_bag, 1, 453}.
  {label,452}.
    {line,[{location,"match_SUITE.erl",938}]}.
    {func_info,{atom,match_SUITE},{atom,grab_bag},1}.
  {label,453}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"match_SUITE.erl",939}]}.
    {call,1,{f,557}}. % id/1
    {test,is_nonempty_list,{f,462},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",940}]}.
    {call,1,{f,557}}. % id/1
    {test,is_eq_exact,{f,461},[{x,0},{literal,[b,c]}]}.
    {'catch',{y,0},{f,454}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",945}]}.
    {call,0,{f,573}}. % '-grab_bag/1-fun-0-'/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,454}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,460},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,{z,a,z}},{x,1}}.
    {move,{literal,{a,a,z,z}},{x,0}}.
    {line,[{scope,[1,2]},{location,"match_SUITE.erl",955}]}.
    {call,2,{f,569}}. % '-grab_bag/1-fun-1-'/2
    {test,is_eq_exact,{f,459},[{x,0},{atom,ok}]}.
    {move,{literal,{zzz,1}},{x,1}}.
    {move,{literal,{0,up}},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",956}]}.
    {call,2,{f,569}}. % '-grab_bag/1-fun-1-'/2
    {test,is_eq_exact,{f,458},[{x,0},{integer,1}]}.
    {move,{literal,{a,z,z}},{x,1}}.
    {move,{literal,{x,y}},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",957}]}.
    {call,2,{f,569}}. % '-grab_bag/1-fun-1-'/2
    {test,is_eq_exact,{f,457},[{x,0},{atom,y}]}.
    {move,{atom,unit},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,[{stretch,0,0},
                    {bad,[]},
                    {bad,atom},
                    {bad,0},
                    {bad,17140672472095896272447595651639067760236831933683123576548010},
                    {bad,8570336236047948136223797825819533880118415966841561788274005}]},
          {x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",966}]}.
    {call,3,{f,464}}. % grab_bag_remove_failure/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[atom,ok]},
                     nil,
                     {t_integer,
                         {0,
                          17140672472095896272447595651639067760236831933683123576548010}},
                     none,none}}]}}.
    {test,is_eq_exact,
          {f,456},
          [{tr,{x,0},
               {t_union,{t_atom,[atom,ok]},
                        nil,
                        {t_integer,{0,
                                    17140672472095896272447595651639067760236831933683123576548010}},
                        none,none}},
           {atom,ok}]}.
    {move,{literal,<<"*+,">>},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",968}]}.
    {call,1,{f,472}}. % grab_bag_single_valued/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,455},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false}}}},
           {literal,{42,<<"+,">>}}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",969}]}.
    {call,1,{f,472}}. % grab_bag_single_valued/1
    {'%',{var_info,{x,0},[{type,{t_atom,[empty_list]}}]}}.
    {move,{literal,{}},{x,0}}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",970}]}.
    {call,1,{f,472}}. % grab_bag_single_valued/1
    {'%',{var_info,{x,0},[{type,{t_atom,[empty_tuple]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,455}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",968}]}.
    {badmatch,{x,0}}.
  {label,456}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",966}]}.
    {badmatch,{x,0}}.
  {label,457}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",957}]}.
    {badmatch,{x,0}}.
  {label,458}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",956}]}.
    {badmatch,{x,0}}.
  {label,459}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",955}]}.
    {badmatch,{x,0}}.
  {label,460}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",945}]}.
    {badmatch,{x,0}}.
  {label,461}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",940}]}.
    {badmatch,{x,0}}.
  {label,462}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",939}]}.
    {badmatch,{x,0}}.


{function, grab_bag_remove_failure, 3, 464}.
  {label,463}.
    {line,[{location,"match_SUITE.erl",974}]}.
    {func_info,{atom,match_SUITE},{atom,grab_bag_remove_failure},3}.
  {label,464}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_union,none,none,none,
          [{{2,{t_atom,[bad]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[bad]},
               2 =>
                {t_union,
                 {t_atom,[atom]},
                 nil,
                 {t_integer,
                  {0,
                   17140672472095896272447595651639067760236831933683123576548010}},
                 none,none}}}},
           {{3,{t_atom,[stretch]}},
            {t_tuple,3,true,
             #{1 => {t_atom,[stretch]},
               2 => {t_integer,{0,0}},
               3 => {t_integer,{0,0}}}}}],
          none},
         nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[unit]}}]}}.
    {test,is_nonempty_list,{f,468},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {select_tuple_arity,
        {tr,{x,3},
            {t_union,none,none,none,
                [{{2,{t_atom,[bad]}},
                  {t_tuple,2,true,
                      #{1 => {t_atom,[bad]},
                        2 =>
                            {t_union,
                                {t_atom,[atom]},
                                nil,
                                {t_integer,
                                    {0,
                                     17140672472095896272447595651639067760236831933683123576548010}},
                                none,none}}}},
                 {{3,{t_atom,[stretch]}},
                  {t_tuple,3,true,
                      #{1 => {t_atom,[stretch]},
                        2 => {t_integer,{0,0}},
                        3 => {t_integer,{0,0}}}}}],
                none}},
        {f,463},
        {list,[2,{f,467},3,{f,465}]}}.
  {label,465}.
    {allocate,3,5}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,4},{y,2}}.
    {move,{literal,{min,1}},{x,0}}.
    {line,[{location,"match_SUITE.erl",979}]}.
    {call,1,{f,557}}. % id/1
    {test,is_tuple,{f,470},[{x,0}]}.
    {test,test_arity,{f,470},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{y,1}}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{atom,unit},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"match_SUITE.erl",980}]}.
    {call,3,{f,464}}. % grab_bag_remove_failure/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[atom,ok]},
                     nil,
                     {t_integer,
                         {0,
                          17140672472095896272447595651639067760236831933683123576548010}},
                     none,none}}]}}.
    {test,is_eq_exact,{f,469},[{y,1},{atom,min}]}.
    {test,is_nil,
     {f,466},
     [{tr,
       {y,2},
       {t_list,
        {t_union,none,none,none,
         [{{2,{t_atom,[bad]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[bad]},
              2 =>
               {t_union,
                {t_atom,[atom]},
                nil,
                {t_integer,
                 {0,
                  17140672472095896272447595651639067760236831933683123576548010}},
                none,none}}}},
          {{3,{t_atom,[stretch]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[stretch]},
              2 => {t_integer,{0,0}},
              3 => {t_integer,{0,0}}}}}],
         none},
        nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,466}.
    {test_heap,2,0}.
    {get_tl,{y,2},{x,0}}.
    {put_list,{literal,{stretch,0,0}},{x,0},{x,0}}.
    {move,{y,0},{x,2}}.
    {move,{atom,unit},{x,1}}.
    {call_last,3,{f,464},3}. % grab_bag_remove_failure/3
  {label,467}.
    {get_tuple_element,{x,3},1,{x,0}}.
    return.
  {label,468}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,469}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,1},{x,0}]}}.
    {case_end,{x,0}}.
  {label,470}.
    {line,[{location,"match_SUITE.erl",979}]}.
    {badmatch,{x,0}}.


{function, grab_bag_single_valued, 1, 472}.
  {label,471}.
    {line,[{location,"match_SUITE.erl",990}]}.
    {func_info,{atom,match_SUITE},{atom,grab_bag_single_valued},1}.
  {label,472}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,
                                   {t_tuple,0,true,#{}},
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,474},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,473},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,0}},
                         {get_tail,2,1,{x,1}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,473}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,471}}.
  {label,474}.
    {test,is_eq_exact,
          {f,475},
          [{tr,{x,0},{t_union,none,nil,none,{t_tuple,0,true,#{}},none}},
           {literal,{}}]}.
    {move,{atom,empty_tuple},{x,0}}.
    return.
  {label,475}.
    {move,{atom,empty_list},{x,0}}.
    return.


{function, literal_binary, 1, 477}.
  {label,476}.
    {line,[{location,"match_SUITE.erl",996}]}.
    {func_info,{atom,match_SUITE},{atom,literal_binary},1}.
  {label,477}.
    {allocate,0,0}.
    {move,{literal,<<"y">>},{x,1}}.
    {move,{atom,bar},{x,0}}.
    {line,[{location,"match_SUITE.erl",997}]}.
    {call,2,{f,485}}. % literal_binary_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[fail]},
                                   none,
                                   {t_integer,{1,3}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,483},
          [{tr,{x,0},
               {t_union,{t_atom,[fail]},none,{t_integer,{1,3}},none,none}},
           {integer,3}]}.
    {move,{literal,<<"x">>},{x,1}}.
    {move,{atom,bar},{x,0}}.
    {line,[{location,"match_SUITE.erl",1001}]}.
    {call,2,{f,485}}. % literal_binary_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[fail]},
                                   none,
                                   {t_integer,{1,3}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,482},
          [{tr,{x,0},
               {t_union,{t_atom,[fail]},none,{t_integer,{1,3}},none,none}},
           {integer,1}]}.
    {move,{literal,<<"x">>},{x,1}}.
    {move,{atom,foo},{x,0}}.
    {line,[{location,"match_SUITE.erl",1002}]}.
    {call,2,{f,485}}. % literal_binary_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[fail]},
                                   none,
                                   {t_integer,{2,3}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,481},
          [{tr,{x,0},
               {t_union,{t_atom,[fail]},none,{t_integer,{2,3}},none,none}},
           {integer,2}]}.
    {move,{literal,<<"y">>},{x,1}}.
    {move,{atom,foo},{x,0}}.
    {line,[{location,"match_SUITE.erl",1003}]}.
    {call,2,{f,485}}. % literal_binary_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[fail]},
                                   none,
                                   {t_integer,{2,3}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,480},
          [{tr,{x,0},
               {t_union,{t_atom,[fail]},none,{t_integer,{2,3}},none,none}},
           {integer,3}]}.
    {move,{literal,<<"z">>},{x,1}}.
    {move,{atom,bar},{x,0}}.
    {line,[{location,"match_SUITE.erl",1004}]}.
    {call,2,{f,485}}. % literal_binary_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[fail]},
                                   none,
                                   {t_integer,{1,3}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,479},
          [{tr,{x,0},
               {t_union,{t_atom,[fail]},none,{t_integer,{1,3}},none,none}},
           {atom,fail}]}.
    {move,{literal,<<"z">>},{x,1}}.
    {move,{atom,foo},{x,0}}.
    {line,[{location,"match_SUITE.erl",1005}]}.
    {call,2,{f,485}}. % literal_binary_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[fail]},
                                   none,
                                   {t_integer,{2,3}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,478},
          [{tr,{x,0},
               {t_union,{t_atom,[fail]},none,{t_integer,{2,3}},none,none}},
           {atom,fail}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,478}.
    {badmatch,{x,0}}.
  {label,479}.
    {line,[{location,"match_SUITE.erl",1004}]}.
    {badmatch,{x,0}}.
  {label,480}.
    {line,[{location,"match_SUITE.erl",1003}]}.
    {badmatch,{x,0}}.
  {label,481}.
    {line,[{location,"match_SUITE.erl",1002}]}.
    {badmatch,{x,0}}.
  {label,482}.
    {line,[{location,"match_SUITE.erl",1001}]}.
    {badmatch,{x,0}}.
  {label,483}.
    {line,[{location,"match_SUITE.erl",997}]}.
    {badmatch,{x,0}}.


{function, literal_binary_match, 2, 485}.
  {label,484}.
    {line,[{location,"match_SUITE.erl",1008}]}.
    {func_info,{atom,match_SUITE},{atom,literal_binary_match},2}.
  {label,485}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bar,foo]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,489},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,489},
                {list,[{integer,120},{f,487},{integer,121},{f,486}]}}.
  {label,486}.
    {bs_match,{f,489},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,3},{x,0}}.
    return.
  {label,487}.
    {bs_match,{f,489},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,488},[{tr,{x,0},{t_atom,[bar,foo]}},{atom,bar}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,488}.
    {move,{integer,2},{x,0}}.
    return.
  {label,489}.
    {move,{atom,fail},{x,0}}.
    return.


{function, unary_op, 1, 491}.
  {label,490}.
    {line,[{location,"match_SUITE.erl",1013}]}.
    {func_info,{atom,match_SUITE},{atom,unary_op},1}.
  {label,491}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,'&'},{x,0}}.
    {line,[{location,"match_SUITE.erl",1018}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[non_associative]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[non_associative]},
                             2 => {t_integer,{30,300}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,501},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[non_associative]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[non_associative]},
                                     2 => {t_integer,{30,300}}}}}],
                        none}},
           {literal,{non_associative,30}}]}.
    {move,{atom,'^'},{x,0}}.
    {line,[{location,"match_SUITE.erl",1019}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[non_associative]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[non_associative]},
                             2 => {t_integer,{300,300}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,500},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[non_associative]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[non_associative]},
                                     2 => {t_integer,{300,300}}}}}],
                        none}},
           {literal,{non_associative,300}}]}.
    {move,{atom,'not'},{x,0}}.
    {line,[{location,"match_SUITE.erl",1020}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[non_associative]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[non_associative]},
                             2 => {t_integer,{300,300}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,499},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[non_associative]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[non_associative]},
                                     2 => {t_integer,{300,300}}}}}],
                        none}},
           {literal,{non_associative,300}}]}.
    {move,{atom,'+'},{x,0}}.
    {line,[{location,"match_SUITE.erl",1021}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[non_associative]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[non_associative]},
                             2 => {t_integer,{300,300}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,498},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[non_associative]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[non_associative]},
                                     2 => {t_integer,{300,300}}}}}],
                        none}},
           {literal,{non_associative,300}}]}.
    {move,{atom,'-'},{x,0}}.
    {line,[{location,"match_SUITE.erl",1022}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[non_associative]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[non_associative]},
                             2 => {t_integer,{300,300}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,497},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[non_associative]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[non_associative]},
                                     2 => {t_integer,{300,300}}}}}],
                        none}},
           {literal,{non_associative,300}}]}.
    {move,{atom,'~~~'},{x,0}}.
    {line,[{location,"match_SUITE.erl",1023}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[non_associative]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[non_associative]},
                             2 => {t_integer,{300,300}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,496},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[non_associative]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[non_associative]},
                                     2 => {t_integer,{300,300}}}}}],
                        none}},
           {literal,{non_associative,300}}]}.
    {move,{atom,'!'},{x,0}}.
    {line,[{location,"match_SUITE.erl",1024}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[non_associative]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[non_associative]},
                             2 => {t_integer,{300,300}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,495},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[non_associative]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[non_associative]},
                                     2 => {t_integer,{300,300}}}}}],
                        none}},
           {literal,{non_associative,300}}]}.
    {move,{atom,'@'},{x,0}}.
    {line,[{location,"match_SUITE.erl",1025}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[non_associative]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[non_associative]},
                             2 => {t_integer,{300,320}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,494},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[non_associative]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[non_associative]},
                                     2 => {t_integer,{300,320}}}}}],
                        none}},
           {literal,{non_associative,320}}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"match_SUITE.erl",1027}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[non_associative]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[non_associative]},
                             2 => {t_integer,{30,320}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,493},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[non_associative]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[non_associative]},
                                     2 => {t_integer,{30,320}}}}}],
                        none}},
           {atom,error}]}.
    {move,{atom,abc},{x,0}}.
    {line,[{location,"match_SUITE.erl",1028}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     [{{2,{t_atom,[non_associative]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[non_associative]},
                             2 => {t_integer,{300,300}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,492},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[non_associative]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[non_associative]},
                                     2 => {t_integer,{300,300}}}}}],
                        none}},
           {atom,error}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"match_SUITE.erl",1029}]}.
    {call,1,{f,503}}. % unary_op_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,492}.
    {line,[{location,"match_SUITE.erl",1028}]}.
    {badmatch,{literal,{non_associative,300}}}.
  {label,493}.
    {line,[{location,"match_SUITE.erl",1027}]}.
    {badmatch,{x,0}}.
  {label,494}.
    {line,[{location,"match_SUITE.erl",1025}]}.
    {badmatch,{x,0}}.
  {label,495}.
    {line,[{location,"match_SUITE.erl",1024}]}.
    {badmatch,{atom,error}}.
  {label,496}.
    {line,[{location,"match_SUITE.erl",1023}]}.
    {badmatch,{atom,error}}.
  {label,497}.
    {line,[{location,"match_SUITE.erl",1022}]}.
    {badmatch,{atom,error}}.
  {label,498}.
    {line,[{location,"match_SUITE.erl",1021}]}.
    {badmatch,{atom,error}}.
  {label,499}.
    {line,[{location,"match_SUITE.erl",1020}]}.
    {badmatch,{atom,error}}.
  {label,500}.
    {line,[{location,"match_SUITE.erl",1019}]}.
    {badmatch,{atom,error}}.
  {label,501}.
    {line,[{location,"match_SUITE.erl",1018}]}.
    {badmatch,{x,0}}.


{function, unary_op_1, 1, 503}.
  {label,502}.
    {line,[{location,"match_SUITE.erl",1033}]}.
    {func_info,{atom,match_SUITE},{atom,unary_op_1},1}.
  {label,503}.
    {select_val,{x,0},
                {f,507},
                {list,[{atom,'!'},
                       {f,506},
                       {atom,'&'},
                       {f,505},
                       {atom,'+'},
                       {f,506},
                       {atom,'-'},
                       {f,506},
                       {atom,'@'},
                       {f,504},
                       {atom,'^'},
                       {f,506},
                       {atom,'not'},
                       {f,506},
                       {atom,'~~~'},
                       {f,506}]}}.
  {label,504}.
    {move,{literal,{non_associative,320}},{x,0}}.
    return.
  {label,505}.
    {move,{literal,{non_associative,30}},{x,0}}.
    return.
  {label,506}.
    {move,{literal,{non_associative,300}},{x,0}}.
    return.
  {label,507}.
    {move,{atom,error},{x,0}}.
    return.


{function, eq_types, 1, 509}.
  {label,508}.
    {line,[{location,"match_SUITE.erl",1082}]}.
    {func_info,{atom,match_SUITE},{atom,eq_types},1}.
  {label,509}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,0}}.
    {move,{atom,any},{x,1}}.
    {line,[{location,"match_SUITE.erl",1084}]}.
    {call,2,{f,512}}. % eq_types/2
    {'%',{var_info,{x,0},[{type,reference}]}}.
    {test,is_eq_exact,{f,510},[{tr,{x,0},reference},{tr,{y,0},reference}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,510}.
    {badmatch,{x,0}}.


{function, eq_types, 2, 512}.
  {label,511}.
    {line,[{location,"match_SUITE.erl",1087}]}.
    {func_info,{atom,match_SUITE},{atom,eq_types},2}.
  {label,512}.
    {'%',{var_info,{x,0},[{type,reference}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[any]}}]}}.
    {allocate_heap,1,3,1}.
    {put_tuple2,{y,0},{list,[{x,0},{atom,any}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"match_SUITE.erl",1090}]}.
    {call,1,{f,557}}. % id/1
    {test,is_eq_exact,
          {f,513},
          [{tr,{y,0},{t_tuple,2,true,#{1 => reference,2 => {t_atom,[any]}}}},
           {x,0}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {deallocate,1}.
    return.
  {label,513}.
    {line,[{location,"match_SUITE.erl",1095}]}.
    {badmatch,{y,0}}.


{function, match_after_return, 1, 515}.
  {label,514}.
    {line,[{location,"match_SUITE.erl",1102}]}.
    {func_info,{atom,match_SUITE},{atom,match_after_return},1}.
  {label,515}.
    {test,is_list,{f,514},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"match_SUITE.erl",1106}]}.
    {call_ext,0,{extfunc,erlang,unique_integer,0}}.
    {call,1,{f,517}}. % mar_test_tuple/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[gurka]},
                                     2 => {t_integer,any}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, mar_test_tuple, 1, 517}.
  {label,516}.
    {line,[{location,"match_SUITE.erl",1111}]}.
    {func_info,{atom,match_SUITE},{atom,mar_test_tuple},1}.
  {label,517}.
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,gurka},{x,0}]}}.
    return.


{function, match_right_tuple, 1, 519}.
  {label,518}.
    {line,[{location,"match_SUITE.erl",1113}]}.
    {func_info,{atom,match_SUITE},{atom,match_right_tuple},1}.
  {label,519}.
    {test,is_list,{f,518},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,wrong_element},{x,0}}.
    {line,[{location,"match_SUITE.erl",1121}]}.
    {call,1,{f,557}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{atom,ok},{x,0}}.
    {call,1,{f,557}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{y,0},{list,[{y,0},{x,0}]}}.
    {move,{atom,wrong_tuple},{x,0}}.
    {line,[{location,"match_SUITE.erl",1122}]}.
    {call,1,{f,557}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {trim,1,0}.
    {line,[{location,"match_SUITE.erl",1123}]}.
    {call,1,{f,522}}. % match_right_tuple_1/1
    {test,is_eq_exact,{f,520},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,520}.
    {badmatch,{x,0}}.


{function, match_right_tuple_1, 1, 522}.
  {label,521}.
    {line,[{location,"match_SUITE.erl",1125}]}.
    {func_info,{atom,match_SUITE},{atom,match_right_tuple_1},1}.
  {label,522}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_tuple,2,true,#{}}}}}]}}.
    {allocate,0,1}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {line,[{location,"match_SUITE.erl",1129}]}.
    {call,2,{f,524}}. % force_succ_regs/2
    {call_last,1,{f,557},0}. % id/1


{function, force_succ_regs, 2, 524}.
  {label,523}.
    {line,[{location,"match_SUITE.erl",1131}]}.
    {func_info,{atom,match_SUITE},{atom,force_succ_regs},2}.
  {label,524}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, tuple_size_in_try, 1, 526}.
  {label,525}.
    {line,[{location,"match_SUITE.erl",1133}]}.
    {func_info,{atom,match_SUITE},{atom,tuple_size_in_try},1}.
  {label,526}.
    {test,is_list,{f,525},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"match_SUITE.erl",1136}]}.
    {call,1,{f,528}}. % tsit/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,gaffel},{x,0}}.
    {call_last,1,{f,528},0}. % tsit/1


{function, tsit, 1, 528}.
  {label,527}.
    {line,[{location,"match_SUITE.erl",1139}]}.
    {func_info,{atom,match_SUITE},{atom,tsit},1}.
  {label,528}.
    {'%',{var_info,{x,0},[{type,{t_atom,[gaffel,gurka]}}]}}.
    {allocate,2,1}.
    {move,{x,0},{y,0}}.
    {'try',{y,1},{f,529}}.
    {move,{atom,ignored},{x,0}}.
    {line,[{location,"match_SUITE.erl",1141}]}.
    {call,1,{f,557}}. % id/1
    {bif,tuple_size,{f,0},[{tr,{y,0},{t_atom,[gaffel,gurka]}}],{x,0}}.
  {label,529}.
    {try_case,{y,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.


{function, match_boolean_list, 1, 531}.
  {label,530}.
    {line,[{location,"match_SUITE.erl",1148}]}.
    {func_info,{atom,match_SUITE},{atom,match_boolean_list},1}.
  {label,531}.
    {test,is_list,{f,530},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,8},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"match_SUITE.erl",1149}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,565}}. % '-match_boolean_list/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {test,is_nonempty_list,{f,533},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {test,is_eq_exact,{f,532},[{x,0},{atom,true}]}.
    {line,[{location,"match_SUITE.erl",1156}]}.
    {badmatch,{atom,error}}.
  {label,532}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,533}.
    {case_end,nil}.


{function, heisen_variables, 1, 535}.
  {label,534}.
    {line,[{location,"match_SUITE.erl",1162}]}.
    {func_info,{atom,match_SUITE},{atom,heisen_variables},1}.
  {label,535}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,536}}.
    {line,[{location,"match_SUITE.erl",1163}]}.
    {call,0,{f,541}}. % gh_6516_scope1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,536}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,539},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,539},[{x,1}]}.
    {test,test_arity,{f,539},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,539},[{x,1},{literal,{badmatch,3}}]}.
    {'catch',{y,0},{f,537}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",1164}]}.
    {call,0,{f,543}}. % gh_6516_scope2/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,537}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,538},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,538},[{x,1}]}.
    {test,test_arity,{f,538},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,538},[{x,1},{literal,{badmatch,3}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,538}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",1164}]}.
    {badmatch,{x,0}}.
  {label,539}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",1163}]}.
    {badmatch,{x,0}}.


{function, gh_6516_scope1, 0, 541}.
  {label,540}.
    {line,[{location,"match_SUITE.erl",1168}]}.
    {func_info,{atom,match_SUITE},{atom,gh_6516_scope1},0}.
  {label,541}.
    {line,[{location,"match_SUITE.erl",1169}]}.
    {badmatch,{integer,3}}.


{function, gh_6516_scope2, 0, 543}.
  {label,542}.
    {line,[{location,"match_SUITE.erl",1171}]}.
    {func_info,{atom,match_SUITE},{atom,gh_6516_scope2},0}.
  {label,543}.
    {line,[{location,"match_SUITE.erl",1172}]}.
    {badmatch,{integer,3}}.


{function, mutable_variables, 1, 545}.
  {label,544}.
    {line,[{location,"match_SUITE.erl",1175}]}.
    {func_info,{atom,match_SUITE},{atom,mutable_variables},1}.
  {label,545}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,546}}.
    {line,[{location,"match_SUITE.erl",1176}]}.
    {call,0,{f,552}}. % mutable_variables_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,546}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,550},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,550},[{x,1}]}.
    {test,test_arity,{f,550},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,550},[{x,1},{literal,{badmatch,0}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,563},0,0,{y,1},{list,[]}}.
    {move,{literal,{tag,whatever}},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",1179}]}.
    {call,1,{f,557}}. % id/1
    {move,{y,1},{x,1}}.
    {call,2,{f,554}}. % mutable_variables_2/2
    {test,is_eq_exact,{f,549},[{x,0},{atom,whatever}]}.
    {'catch',{y,0},{f,547}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",1180}]}.
    {call,1,{f,557}}. % id/1
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,554}}. % mutable_variables_2/2
  {label,547}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,548},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,548},[{x,1}]}.
    {test,test_arity,{f,548},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,548},[{x,1},{literal,{badmatch,{tag,whatever}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,548}.
    {line,[{scope,[0]},{location,"match_SUITE.erl",1180}]}.
    {badmatch,{x,0}}.
  {label,549}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",1179}]}.
    {badmatch,{x,0}}.
  {label,550}.
    {line,[{scope,[2]},{location,"match_SUITE.erl",1176}]}.
    {badmatch,{x,0}}.


{function, mutable_variables_1, 0, 552}.
  {label,551}.
    {line,[{location,"match_SUITE.erl",1184}]}.
    {func_info,{atom,match_SUITE},{atom,mutable_variables_1},0}.
  {label,552}.
    {line,[{location,"match_SUITE.erl",1187}]}.
    {badmatch,{integer,0}}.


{function, mutable_variables_2, 2, 554}.
  {label,553}.
    {line,[{location,"match_SUITE.erl",1190}]}.
    {func_info,{atom,match_SUITE},{atom,mutable_variables_2},2}.
  {label,554}.
    {'%',{var_info,{x,1},
                   [{type,{t_fun,0,{'-mutable_variables/1-fun-0-',0},any}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"match_SUITE.erl",1191}]}.
    {call,0,{f,563}}. % '-mutable_variables/1-fun-0-'/0
    {test,is_eq_exact,{f,555},[{x,0},{y,0}]}.
    {test,is_tagged_tuple,{f,555},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,1}.
    return.
  {label,555}.
    {badmatch,{x,0}}.


{function, id, 1, 557}.
  {label,556}.
    {line,[{location,"match_SUITE.erl",1195}]}.
    {func_info,{atom,match_SUITE},{atom,id},1}.
  {label,557}.
    return.


{function, module_info, 0, 559}.
  {label,558}.
    {line,[]}.
    {func_info,{atom,match_SUITE},{atom,module_info},0}.
  {label,559}.
    {move,{atom,match_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 561}.
  {label,560}.
    {line,[]}.
    {func_info,{atom,match_SUITE},{atom,module_info},1}.
  {label,561}.
    {move,{x,0},{x,1}}.
    {move,{atom,match_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-mutable_variables/1-fun-0-', 0, 563}.
  {label,562}.
    {line,[{location,"match_SUITE.erl",1178}]}.
    {func_info,{atom,match_SUITE},{atom,'-mutable_variables/1-fun-0-'},0}.
  {label,563}.
    {move,{literal,{tag,whatever}},{x,0}}.
    {call_only,1,{f,557}}. % id/1


{function, '-match_boolean_list/1-lc$^0/1-0-', 1, 565}.
  {label,564}.
    {line,[{location,"match_SUITE.erl",1149}]}.
    {func_info,{atom,match_SUITE},{atom,'-match_boolean_list/1-lc$^0/1-0-'},1}.
  {label,565}.
    {test,is_nonempty_list,{f,566},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {gc_bif,'rem',{f,0},2,[{x,1},{integer,2}],{x,1}}.
    {allocate,1,2}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_integer,{-1,1}}},{integer,0}],{y,0}}.
    {call,1,{f,565}}. % '-match_boolean_list/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[false,true]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,566}.
    {test,is_nil,{f,567},[{x,0}]}.
    return.
  {label,567}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-grab_bag/1-fun-1-', 2, 569}.
  {label,568}.
    {line,[{location,"match_SUITE.erl",947}]}.
    {func_info,{atom,match_SUITE},{atom,'-grab_bag/1-fun-1-'},2}.
  {label,569}.
    {line,[{location,"match_SUITE.erl",948}]}.
    {bif,element,{f,0},[{integer,1},{x,0}],{x,2}}.
    {bif,element,{f,0},[{integer,2},{x,1}],{x,1}}.
    {line,[{location,"match_SUITE.erl",949}]}.
    {bif,element,{f,0},[{integer,2},{tr,{x,0},{t_tuple,1,false,#{}}}],{x,0}}.
    {test_heap,6,3}.
    {put_tuple2,{x,3},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,4},{list,[{x,2},{x,1}]}}.
    {test,is_eq_exact,
          {f,570},
          [{tr,{x,3},{t_tuple,2,true,#{}}},{tr,{x,4},{t_tuple,2,true,#{}}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,570}.
    {test,is_eq_exact,{f,571},[{x,2},{integer,0}]}.
    {test,is_eq_exact,{f,571},[{x,1},{integer,1}]}.
    {test,is_eq_exact,{f,571},[{x,0},{atom,up}]}.
    {move,{integer,1},{x,0}}.
    {call_only,1,{f,557}}. % id/1
  {label,571}.
    {call_only,1,{f,557}}. % id/1


{function, '-grab_bag/1-fun-0-', 0, 573}.
  {label,572}.
    {line,[{location,"match_SUITE.erl",942}]}.
    {func_info,{atom,match_SUITE},{atom,'-grab_bag/1-fun-0-'},0}.
  {label,573}.
    {line,[{location,"match_SUITE.erl",943}]}.
    {badmatch,{atom,x}}.


{function, '-mac_lc2/1-lc$^0/1-0-', 1, 575}.
  {label,574}.
    {line,[{location,"match_SUITE.erl",548}]}.
    {func_info,{atom,match_SUITE},{atom,'-mac_lc2/1-lc$^0/1-0-'},1}.
  {label,575}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_union,none,none,none,
          [{{2,{t_integer,{1,1}}},
            {t_tuple,2,true,#{1 => {t_integer,{1,1}},2 => {t_integer,{1,1}}}}},
           {{2,{t_integer,{2,2}}},
            {t_tuple,2,true,
             #{1 => {t_integer,{2,2}},
               2 =>
                {t_union,{t_atom,[any]},none,{t_integer,{2,2}},none,none}}}}],
          none},
         nil}}]}}.
    {test,is_nonempty_list,{f,576},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,577},[{tr,{x,1},{t_integer,{1,2}}},{integer,2}]}.
    {allocate,0,1}.
    {call,1,{f,575}}. % '-mac_lc2/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{2,2}},2 => {t_integer,{2,2}}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{2,2}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,576}.
    return.
  {label,577}.
    {line,[{location,"match_SUITE.erl",549}]}.
    {badmatch,{integer,2}}.


{function, '-mac_lc1/1-lc$^0/1-0-', 1, 579}.
  {label,578}.
    {line,[{location,"match_SUITE.erl",543}]}.
    {func_info,{atom,match_SUITE},{atom,'-mac_lc1/1-lc$^0/1-0-'},1}.
  {label,579}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_union,none,none,none,
          [{{2,{t_integer,{1,1}}},
            {t_tuple,2,true,#{1 => {t_integer,{1,1}},2 => {t_integer,{1,1}}}}},
           {{2,{t_integer,{2,2}}},
            {t_tuple,2,true,
             #{1 => {t_integer,{2,2}},
               2 =>
                {t_union,{t_atom,[any]},none,{t_integer,{2,2}},none,none}}}}],
          none},
         nil}}]}}.
    {test,is_nonempty_list,{f,580},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,581},[{tr,{x,1},{t_integer,{1,2}}},{integer,2}]}.
    {allocate,0,1}.
    {call,1,{f,579}}. % '-mac_lc1/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{2,2}},2 => {t_integer,{2,2}}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{literal,{2,2}},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,580}.
    return.
  {label,581}.
    {line,[{location,"match_SUITE.erl",544}]}.
    {badmatch,{integer,2}}.


{function, '-aliases/1-fun-4-', 1, 583}.
  {label,582}.
    {line,[{location,"match_SUITE.erl",191}]}.
    {func_info,{atom,match_SUITE},{atom,'-aliases/1-fun-4-'},1}.
  {label,583}.
    {allocate,0,1}.
    {line,[{location,"match_SUITE.erl",192}]}.
    {call,1,{f,557}}. % id/1
    {test,is_eq_exact,{f,584},[{x,0},{integer,42}]}.
    {move,{literal,{42,42}},{x,0}}.
    {deallocate,0}.
    return.
  {label,584}.
    {badmatch,{x,0}}.


{function, '-aliases/1-fun-1-', 0, 586}.
  {label,585}.
    {line,[{location,"match_SUITE.erl",178}]}.
    {func_info,{atom,match_SUITE},{atom,'-aliases/1-fun-1-'},0}.
  {label,586}.
    {move,{literal,{home,home}},{x,0}}.
    return.
