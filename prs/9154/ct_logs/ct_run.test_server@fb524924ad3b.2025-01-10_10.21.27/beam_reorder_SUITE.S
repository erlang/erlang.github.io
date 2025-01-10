{module, beam_reorder_SUITE}.  %% version = 0

{exports, [{all,0},
           {alloc,1},
           {confused_beam_validator,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {module_info,0},
           {module_info,1},
           {suite,0}]}.

{attributes, []}.

{labels, 35}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_reorder_SUITE.erl",26}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_reorder_SUITE.erl",28}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_reorder_SUITE.erl",31}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],[alloc,confused_beam_validator]}]},{x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_reorder_SUITE.erl",37}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_reorder_SUITE},{x,0}}.
    {line,[{location,"beam_reorder_SUITE.erl",38}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_reorder_SUITE.erl",41}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_reorder_SUITE.erl",44}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_reorder_SUITE.erl",47}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, alloc, 1, 16}.
  {label,15}.
    {line,[{location,"beam_reorder_SUITE.erl",52}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,alloc},1}.
  {label,16}.
    {allocate,0,0}.
    {move,{integer,2},{x,1}}.
    {move,{literal,{alloc,42}},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_reorder_SUITE.erl",53}]}.
    {call,3,{f,20}}. % alloc_a/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_integer,{42,42}}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,18},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,0}},
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{42,42}}}}},
                         {{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        none}},
           {literal,{ok,42}}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,{alloc,{a,b,c}}},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_reorder_SUITE.erl",54}]}.
    {call,3,{f,22}}. % alloc_b/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_integer,{42,42}}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,17},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,0}},
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{42,42}}}}},
                         {{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        none}},
           {literal,{a,b,c}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {badmatch,{x,0}}.
  {label,18}.
    {line,[{location,"beam_reorder_SUITE.erl",53}]}.
    {badmatch,{x,0}}.


{function, alloc_a, 3, 20}.
  {label,19}.
    {line,[{location,"beam_reorder_SUITE.erl",57}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,alloc_a},3}.
  {label,20}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{2,2}}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[alloc]},
                                     2 => {t_integer,{42,42}}}}}]}}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{ok,42}},{x,0}}.
    {line,[{location,"beam_reorder_SUITE.erl",59}]}.
    {call,1,{f,30}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_integer,{42,42}}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_reorder_SUITE.erl",60}]}.
    {call,1,{f,30}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_integer,{42,42}}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, alloc_b, 3, 22}.
  {label,21}.
    {line,[{location,"beam_reorder_SUITE.erl",63}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,alloc_b},3}.
  {label,22}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{2,2}}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[alloc]},
                       2 =>
                           {t_tuple,3,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[c]}}}}}}]}}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{location,"beam_reorder_SUITE.erl",65}]}.
    {call,1,{f,30}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_integer,{42,42}}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_reorder_SUITE.erl",66}]}.
    {call,1,{f,30}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_integer,{42,42}}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, confused_beam_validator, 1, 24}.
  {label,23}.
    {line,[{location,"beam_reorder_SUITE.erl",69}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,confused_beam_validator},1}.
  {label,24}.
    {allocate,1,0}.
    {'catch',{y,0},{f,25}}.
    {move,{literal,{any}},{x,0}}.
    {line,[{location,"beam_reorder_SUITE.erl",70}]}.
    {call,1,{f,28}}. % efficient/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,25}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,26},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,26},[{x,1}]}.
    {test,test_arity,{f,26},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,26},[{x,1},{literal,{badmap,{any}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,26}.
    {line,[{scope,[0]},{location,"beam_reorder_SUITE.erl",70}]}.
    {badmatch,{x,0}}.


{function, efficient, 1, 28}.
  {label,27}.
    {line,[{location,"beam_reorder_SUITE.erl",73}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,efficient},1}.
  {label,28}.
    {'%',{var_info,{x,0},[{type,{t_tuple,1,true,#{1 => {t_atom,[any]}}}}]}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{literal,{any}}]}}.
    {line,[{location,"beam_reorder_SUITE.erl",74}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, id, 1, 30}.
  {label,29}.
    {line,[{location,"beam_reorder_SUITE.erl",80}]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,id},1}.
  {label,30}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_integer,{42,42}}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    return.


{function, module_info, 0, 32}.
  {label,31}.
    {line,[]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,module_info},0}.
  {label,32}.
    {move,{atom,beam_reorder_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 34}.
  {label,33}.
    {line,[]}.
    {func_info,{atom,beam_reorder_SUITE},{atom,module_info},1}.
  {label,34}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_reorder_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
