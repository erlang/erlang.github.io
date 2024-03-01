{module, beam_block_SUITE}.  %% version = 0

{exports, [{all,0},
           {coverage,1},
           {encode_wildcards3,4},
           {end_per_group,2},
           {end_per_suite,1},
           {erl_202,1},
           {find_operands,4},
           {get_map_elements,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {local_cse,1},
           {module_info,0},
           {module_info,1},
           {move_opt_across_gc_bif,1},
           {otp_7345,1},
           {repro,1},
           {second_block_pass,1},
           {suite,0}]}.

{attributes, []}.

{labels, 131}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_block_SUITE.erl",32}]}.
    {func_info,{atom,beam_block_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_block_SUITE.erl",34}]}.
    {func_info,{atom,beam_block_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_block_SUITE.erl",37}]}.
    {func_info,{atom,beam_block_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [get_map_elements,otp_7345,move_opt_across_gc_bif,
                        erl_202,repro,local_cse,second_block_pass,coverage]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_block_SUITE.erl",49}]}.
    {func_info,{atom,beam_block_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_block_SUITE},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",50}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_block_SUITE.erl",53}]}.
    {func_info,{atom,beam_block_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_block_SUITE.erl",56}]}.
    {func_info,{atom,beam_block_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_block_SUITE.erl",59}]}.
    {func_info,{atom,beam_block_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, get_map_elements, 1, 16}.
  {label,15}.
    {line,[{location,"beam_block_SUITE.erl",62}]}.
    {func_info,{atom,beam_block_SUITE},{atom,get_map_elements},1}.
  {label,16}.
    {allocate,0,0}.
    {move,{literal,#{}},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,[{pred,var}]},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",63}]}.
    {call,3,{f,21}}. % get_map_elements/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[acc]},
                     {t_list,
                         {t_tuple,2,true,
                             #{1 => {t_atom,[pred]},2 => {t_atom,[var]}}},
                         {t_union,{t_atom,[acc]},nil,none,none,none}},
                     none,none,none}}]}}.
    {test,is_eq_exact,
        {f,19},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[acc]},
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[pred]},2 => {t_atom,[var]}}},
                     {t_union,{t_atom,[acc]},nil,none,none,none}},
                 none,none,none}},
         {literal,[{pred,var}]}]}.
    {move,{literal,#{pred => []}},{x,1}}.
    {move,nil,{x,2}}.
    {line,[{location,"beam_block_SUITE.erl",64}]}.
    {call,3,{f,21}}. % get_map_elements/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[acc]},
                     {t_list,
                         {t_tuple,2,true,
                             #{1 => {t_atom,[pred]},2 => {t_atom,[var]}}},
                         {t_union,{t_atom,[acc]},nil,none,none,none}},
                     none,none,none}}]}}.
    {test,is_eq_exact,
        {f,18},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[acc]},
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[pred]},2 => {t_atom,[var]}}},
                     {t_union,{t_atom,[acc]},nil,none,none,none}},
                 none,none,none}},
         {literal,[{pred,var}]}]}.
    {move,{literal,#{pred => []}},{x,1}}.
    {move,{atom,acc},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",65}]}.
    {call,3,{f,21}}. % get_map_elements/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[acc]},
                     {t_list,
                         {t_tuple,2,true,
                             #{1 => {t_atom,[pred]},2 => {t_atom,[var]}}},
                         {t_union,{t_atom,[acc]},nil,none,none,none}},
                     none,none,none}}]}}.
    {test,is_eq_exact,
        {f,17},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[acc]},
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[pred]},2 => {t_atom,[var]}}},
                     {t_union,{t_atom,[acc]},nil,none,none,none}},
                 none,none,none}},
         {atom,acc}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {badmatch,{x,0}}.
  {label,18}.
    {line,[{location,"beam_block_SUITE.erl",64}]}.
    {badmatch,{x,0}}.
  {label,19}.
    {line,[{location,"beam_block_SUITE.erl",63}]}.
    {badmatch,{x,0}}.


{function, get_map_elements, 3, 21}.
  {label,20}.
    {line,[{location,"beam_block_SUITE.erl",68}]}.
    {func_info,{atom,beam_block_SUITE},{atom,get_map_elements},3}.
  {label,21}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[pred]},2 => {t_atom,[var]}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,{t_atom,[pred]},nil}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_union,
                     {t_atom,[acc]},
                     {t_list,
                         {t_tuple,2,true,
                             #{1 => {t_atom,[pred]},2 => {t_atom,[var]}}},
                         {t_union,{t_atom,[acc]},nil,none,none,none}},
                     none,none,none}}]}}.
    {test,is_nonempty_list,{f,22},[{x,0}]}.
    {test_heap,2,3}.
    {get_tl,{x,0},{x,0}}.
    {put_list,{literal,{pred,var}},{x,2},{x,2}}.
    {call_only,3,{f,21}}. % get_map_elements/3
  {label,22}.
    {move,{x,2},{x,0}}.
    return.


{function, otp_7345, 1, 24}.
  {label,23}.
    {line,[{location,"beam_block_SUITE.erl",106}]}.
    {func_info,{atom,beam_block_SUITE},{atom,otp_7345},1}.
  {label,24}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,[[1,2,3],4,5]},{x,2}}.
    {move,{literal,{contextId,undefined,undefined,undefined}},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",108}]}.
    {call,3,{f,27}}. % otp_7345/3
    {test,is_tagged_tuple,{f,25},[{x,0},4,{atom,llUnitdataReq}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,25},[{x,1},{integer,3}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,25},[{x,1},{integer,4}]}.
    {deallocate,0}.
    return.
  {label,25}.
    {line,[{location,"beam_block_SUITE.erl",107}]}.
    {badmatch,{x,0}}.


{function, otp_7345, 3, 27}.
  {label,26}.
    {line,[{location,"beam_block_SUITE.erl",111}]}.
    {func_info,{atom,beam_block_SUITE},{atom,otp_7345},3}.
  {label,27}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_atom,[contextId]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[undefined]},
                                     4 => {t_atom,[undefined]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_cons,
                     {t_union,none,
                         {t_cons,{t_integer,{1,3}},nil},
                         {t_integer,{4,5}},
                         none,none},
                     nil}}]}}.
    {get_hd,{x,2},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",122}]}.
    {gc_bif,length,
            {f,0},
            1,
            [{tr,{x,0},
                 {t_union,none,
                          {t_cons,{t_integer,{1,3}},nil},
                          {t_integer,{4,5}},
                          none,none}}],
            {x,0}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",124}]}.
    {call,1,{f,115}}. % id/1
    {line,[{location,"beam_block_SUITE.erl",125}]}.
    {gc_bif,'div',{f,0},1,[{x,0},{integer,10}],{x,0}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{atom,llUnitdataReq},{integer,7},{y,0},{x,0}]}}.
    {call_last,1,{f,115},1}. % id/1


{function, move_opt_across_gc_bif, 1, 29}.
  {label,28}.
    {line,[{location,"beam_block_SUITE.erl",131}]}.
    {func_info,{atom,beam_block_SUITE},{atom,move_opt_across_gc_bif},1}.
  {label,29}.
    {allocate,0,0}.
    {move,{atom,speaking},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",132}]}.
    {call,1,{f,32}}. % positive/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[true]},
                         none,
                         {t_integer,{0,1}},
                         none,none},
                     nil}}]}}.
    {test,is_eq_exact,
          {f,30},
          [{tr,{x,0},
               {t_cons,{t_union,{t_atom,[true]},
                                none,
                                {t_integer,{0,1}},
                                none,none},
                       nil}},
           {literal,[0,true,1]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,30}.
    {badmatch,{x,0}}.


{function, positive, 1, 32}.
  {label,31}.
    {line,[{location,"beam_block_SUITE.erl",135}]}.
    {func_info,{atom,beam_block_SUITE},{atom,positive},1}.
  {label,32}.
    {'%',{var_info,{x,0},[{type,{t_atom,[speaking]}}]}}.
    {allocate,1,0}.
    {'try',{y,0},{f,33}}.
    {move,{integer,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",138}]}.
    {call,2,{f,35}}. % paris/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {try_end,{y,0}}.
    {move,{literal,[0,true,1]},{x,0}}.
    {deallocate,1}.
    return.
  {label,33}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, paris, 2, 35}.
  {label,34}.
    {line,[{location,"beam_block_SUITE.erl",143}]}.
    {func_info,{atom,beam_block_SUITE},{atom,paris},2}.
  {label,35}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {move,{integer,1},{x,0}}.
    return.


{function, erl_202, 1, 37}.
  {label,36}.
    {line,[{location,"beam_block_SUITE.erl",153}]}.
    {func_info,{atom,beam_block_SUITE},{atom,erl_202},1}.
  {label,37}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{literal,{1,2}},{x,0}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{integer,42},{x,1}}.
    {line,[{location,"beam_block_SUITE.erl",155}]}.
    {call,2,{f,41}}. % erl_202/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{8,8}},
                                   none,reference}}]}}.
    {test,is_eq_exact,
          {f,39},
          [{tr,{x,0},{t_union,none,none,{t_integer,{8,8}},none,reference}},
           {tr,{y,0},reference}]}.
    {test_heap,6,0}.
    {put_tuple2,{x,0},{list,[{atom,erl_202_r2},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,erl_202_r1},{x,0}]}}.
    {move,{literal,{7,8}},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",157}]}.
    {call,2,{f,41}}. % erl_202/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{8,8}},
                                   {t_tuple,1,true,#{1 => reference}},
                                   reference}}]}}.
    {test,is_tuple,
          {f,38},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{8,8}},
                        {t_tuple,1,true,#{1 => reference}},
                        reference}}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,38},[{tr,{x,1},reference},{tr,{y,0},reference}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,38}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{location,"beam_block_SUITE.erl",155}]}.
    {badmatch,{x,0}}.


{function, erl_202, 2, 41}.
  {label,40}.
    {line,[{location,"beam_block_SUITE.erl",161}]}.
    {func_info,{atom,beam_block_SUITE},{atom,erl_202},2}.
  {label,41}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{7,7}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{7,7}},2 => {t_integer,{8,8}}}}},
                      {{2,
                        {t_tuple,2,true,
                            #{1 => {t_integer,{1,1}},2 => {t_integer,{2,2}}}}},
                       {t_tuple,2,true,
                           #{1 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_integer,{1,1}},
                                       2 => {t_integer,{2,2}}}},
                             2 => reference}}}],
                     none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[erl_202_r1]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[erl_202_r1]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[erl_202_r2]},
                                       2 => reference}}}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_tuple,
          {f,42},
          [{tr,{x,2},
               {t_union,none,none,
                        {t_integer,{7,7}},
                        [{{2,{t_integer,{1,1}}},
                          {t_tuple,2,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}}}}}],
                        none}}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    return.
  {label,42}.
    {test,is_tuple,
        {f,43},
        [{tr,{x,1},
             {t_union,none,none,
                 {t_integer,{42,42}},
                 [{{2,{t_atom,[erl_202_r1]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[erl_202_r1]},
                         2 =>
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[erl_202_r2]},
                                   2 => reference}}}}}],
                 none}}]}.
    {test_heap,2,2}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    return.
  {label,43}.
    {move,{integer,42},{x,1}}.
    {jump,{f,40}}.


{function, repro, 1, 45}.
  {label,44}.
    {line,[{location,"beam_block_SUITE.erl",171}]}.
    {func_info,{atom,beam_block_SUITE},{atom,repro},1}.
  {label,45}.
    {allocate,0,0}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",172}]}.
    {call,3,{f,50}}. % repro/3
    {'%',{var_info,{x,0},[{type,{t_map,{t_atom,[tmp1]},{t_atom,[n,name]}}}]}}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {test,is_nil,
          {f,48},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[tmp1]},
                                  2 => {t_atom,[n,name]}}},
                       nil}}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{literal,[{tmp1,0}]},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",173}]}.
    {call,3,{f,50}}. % repro/3
    {'%',{var_info,{x,0},[{type,{t_map,{t_atom,[tmp1]},{t_atom,[n,name]}}}]}}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {test,is_eq_exact,
          {f,47},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[tmp1]},
                                  2 => {t_atom,[n,name]}}},
                       nil}},
           {literal,[{tmp1,n}]}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,#{0 => name}},{x,2}}.
    {move,{literal,[{tmp1,0}]},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",174}]}.
    {call,3,{f,50}}. % repro/3
    {'%',{var_info,{x,0},[{type,{t_map,{t_atom,[tmp1]},{t_atom,[n,name]}}}]}}.
    {call_ext,1,{extfunc,maps,to_list,1}}.
    {test,is_eq_exact,
          {f,46},
          [{tr,{x,0},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[tmp1]},
                                  2 => {t_atom,[n,name]}}},
                       nil}},
           {literal,[{tmp1,name}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,46}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{location,"beam_block_SUITE.erl",173}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{location,"beam_block_SUITE.erl",172}]}.
    {badmatch,{x,0}}.


{function, repro, 3, 50}.
  {label,49}.
    {line,[{location,"beam_block_SUITE.erl",177}]}.
    {func_info,{atom,beam_block_SUITE},{atom,repro},3}.
  {label,50}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[tmp1]},2 => {t_integer,{0,0}}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,{t_atom,[tmp1]},{t_atom,[n,name]}}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_map,{t_integer,{0,0}},{t_atom,[n,name]}}}]}}.
    {test,is_nonempty_list,{f,53},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {get_map_elements,{f,51},
                      {tr,{x,2},{t_map,{t_integer,{0,0}},{t_atom,[n,name]}}},
                      {list,[{integer,0},{x,3}]}}.
    {swap,{x,2},{x,3}}.
    {jump,{f,52}}.
  {label,51}.
    {put_map_assoc,{f,0},{x,2},{x,2},3,{list,[{integer,0},{atom,n}]}}.
    {move,{x,2},{x,3}}.
    {move,{atom,n},{x,2}}.
  {label,52}.
    {put_map_assoc,{f,0},{x,1},{x,1},4,{list,[{atom,tmp1},{x,2}]}}.
    {move,{x,3},{x,2}}.
    {call_only,3,{f,50}}. % repro/3
  {label,53}.
    {move,{x,1},{x,0}}.
    return.


{function, encode_wildcards3, 4, 55}.
  {label,54}.
    {line,[{location,"beam_block_SUITE.erl",207}]}.
    {func_info,{atom,beam_block_SUITE},{atom,encode_wildcards3},4}.
  {label,55}.
    {test,is_nonempty_list,{f,61},[{x,0}]}.
    {get_list,{x,0},{x,4},{x,5}}.
    {test,is_nonempty_list,{f,54},[{x,1}]}.
    {allocate,6,6}.
    {move,{x,5},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{x,2},{y,4}}.
    {get_list,{x,1},{y,1},{y,0}}.
    {'catch',{y,5},{f,56}}.
    {line,[{location,"beam_block_SUITE.erl",209}]}.
    {gc_bif,'-',{f,0},6,[{x,3},{y,1}],{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",210}]}.
    {gc_bif,length,{f,0},6,[{x,5}],{x,3}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",209}]}.
    {call_ext,4,{extfunc,beam_block_SUITE,encode_wildcard,4}}.
  {label,56}.
    {catch_end,{y,5}}.
    {test,is_tuple,{f,60},[{x,0}]}.
    {test,test_arity,{f,62},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{y,5}}.
    {select_val,{x,1},
                {f,62},
                {list,[{atom,'EXIT'},
                       {f,59},
                       {atom,level},
                       {f,58},
                       {atom,recursive},
                       {f,57}]}}.
  {label,57}.
    {test_heap,2,0}.
    {put_list,{y,5},nil,{x,0}}.
    {deallocate,6}.
    return.
  {label,58}.
    {line,[{location,"beam_block_SUITE.erl",219}]}.
    {gc_bif,'+',{f,0},0,[{y,4},{integer,1}],{x,0}}.
    {gc_bif,'-',{f,0},1,[{y,3},{y,1}],{x,3}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,2},{x,0}}.
    {trim,5,1}.
    {line,[{scope,[0]},{location,"beam_block_SUITE.erl",219}]}.
    {call,4,{f,55}}. % encode_wildcards3/4
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,59}.
    {test,is_tuple,{f,62},[{y,5}]}.
    {test,test_arity,{f,62},[{y,5},2]}.
    {test_heap,6,0}.
    {get_tuple_element,{y,5},0,{x,0}}.
    {get_tuple_element,{y,5},1,{x,1}}.
    {put_tuple2,{x,1},{list,[{y,4},{x,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {line,[{scope,[0]},{location,"beam_block_SUITE.erl",212}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},6}.
  {label,60}.
    {test,is_eq_exact,{f,62},[{x,0},{atom,no_wildcard}]}.
    {line,[{location,"beam_block_SUITE.erl",215}]}.
    {gc_bif,'+',{f,0},0,[{y,4},{integer,1}],{x,0}}.
    {gc_bif,'-',{f,0},1,[{y,3},{y,1}],{x,3}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,4,{f,55},6}. % encode_wildcards3/4
  {label,61}.
    {test,is_nil,{f,54},[{x,0}]}.
    {test,is_nil,{f,54},[{x,1}]}.
    {move,nil,{x,0}}.
    return.
  {label,62}.
    {line,[{scope,[0]},{location,"beam_block_SUITE.erl",209}]}.
    {case_end,{x,0}}.


{function, find_operands, 4, 64}.
  {label,63}.
    {line,[{location,"beam_block_SUITE.erl",235}]}.
    {func_info,{atom,beam_block_SUITE},{atom,find_operands},4}.
  {label,64}.
    {test,is_nil,{f,65},[{x,2}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,65}.
    {allocate,4,4}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,nil,{x,3}}.
    {line,[{location,"beam_block_SUITE.erl",238}]}.
    {call_ext,4,{extfunc,beam_block_SUITE,find_operands_for_active_list,4}}.
    {test,is_tuple,{f,66},[{x,0}]}.
    {test,test_arity,{f,66},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{y,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",240}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {line,[{location,"beam_block_SUITE.erl",241}]}.
    {gc_bif,'+',{f,0},1,[{y,2},{integer,1}],{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,3},{x,0}}.
    {call_ext,1,{extfunc,digraph,vertices,1}}.
    {gc_bif,length,{f,0},1,[{x,0}],{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",242}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,2},{t_number,any}},{integer,1}],{x,3}}.
    {move,{y,0},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,4,{f,64},4}. % find_operands/4
  {label,66}.
    {line,[{location,"beam_block_SUITE.erl",238}]}.
    {badmatch,{x,0}}.


{function, local_cse, 1, 68}.
  {label,67}.
    {line,[{location,"beam_block_SUITE.erl",246}]}.
    {func_info,{atom,beam_block_SUITE},{atom,local_cse},1}.
  {label,68}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_block_SUITE.erl",247}]}.
    {call,0,{f,73}}. % local_cse_1/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => pid,
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => pid}}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_tuple_element,{x,0},0,{y,0}}.
    {test,is_eq_exact,{f,71},[{tr,{x,1},pid},{tr,{y,0},pid}]}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",249}]}.
    {call,1,{f,75}}. % local_cse_2/1
    {move,{integer,512},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",250}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,75}}. % local_cse_2/1
    {line,[{location,"beam_block_SUITE.erl",251}]}.
    {call_ext,0,{extfunc,beam_block_SUITE,module_info,0}}.
    {call,1,{f,75}}. % local_cse_2/1
    {move,{atom,b},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",253}]}.
    {call,2,{f,86}}. % local_cse_3/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_cons,{t_atom,[b]},nil},
                                     2 => {t_cons,{t_atom,[a,b]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,70},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,{t_atom,[b]},nil},
                          2 => {t_cons,{t_atom,[a,b]},nil}}}},
           {literal,{[b],[a,b]}}]}.
    {line,[{location,"beam_block_SUITE.erl",255}]}.
    {call,0,{f,88}}. % local_cse_4/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{2000,2000}},
                       2 => pid,
                       3 =>
                           {t_tuple,2,true,
                               #{1 => pid,2 => {t_atom,[write_cache]}}}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,69},[{tr,{x,1},pid},{tr,{y,0},pid}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,69},[{tr,{x,1},pid},{tr,{y,0},pid}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,69}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{location,"beam_block_SUITE.erl",253}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{location,"beam_block_SUITE.erl",247}]}.
    {badmatch,{x,0}}.


{function, local_cse_1, 0, 73}.
  {label,72}.
    {line,[{location,"beam_block_SUITE.erl",259}]}.
    {func_info,{atom,beam_block_SUITE},{atom,local_cse_1},0}.
  {label,73}.
    {test_heap,6,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,ok},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, local_cse_2, 1, 75}.
  {label,74}.
    {line,[{location,"beam_block_SUITE.erl",266}]}.
    {func_info,{atom,beam_block_SUITE},{atom,local_cse_2},1}.
  {label,75}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"beam_block_SUITE.erl",267}]}.
    {call,1,{f,83}}. % cse_make_binary/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,76},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,76},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[268,{file,"beam_block_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,76},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",269}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {test,is_eq_exact,{f,77},[{x,0},{y,1}]}.
    {deallocate,2}.
    return.
  {label,76}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,81},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,81},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[270,{file,"beam_block_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",271}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {test,is_tagged_tuple,{f,80},[{x,0},2,{atom,'$size'}]}.
    {line,[{location,"beam_block_SUITE.erl",272}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{y,0},{t_bitstring,8,false}}],{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,
          {f,79},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{x,0}]}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"beam_block_SUITE.erl",273}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {test,is_eq_exact,{f,78},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,77}.
    {line,[{location,"beam_block_SUITE.erl",269}]}.
    {badmatch,{x,0}}.
  {label,78}.
    {line,[{location,"beam_block_SUITE.erl",273}]}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"beam_block_SUITE.erl",272}]}.
    {badmatch,{x,1}}.
  {label,80}.
    {line,[{location,"beam_block_SUITE.erl",271}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"beam_block_SUITE.erl",267}]}.
    {case_end,{x,0}}.


{function, cse_make_binary, 1, 83}.
  {label,82}.
    {line,[{location,"beam_block_SUITE.erl",279}]}.
    {func_info,{atom,beam_block_SUITE},{atom,cse_make_binary},1}.
  {label,83}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"beam_block_SUITE.erl",281}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,1}}.
    {move,{x,0},{y,0}}.
    {test,is_ge,
          {f,84},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,256}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,'$size'},{x,1}]}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"beam_block_SUITE.erl",284}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,1}}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,1},{t_integer,{0,288230376151711743}}},
                          {integer,8},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,binary},
                          3,8,nil,
                          {tr,{y,0},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {deallocate,1}.
    return.
  {label,84}.
    {line,[{location,"beam_block_SUITE.erl",286}]}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,1},{t_integer,{0,255}}},
                          {integer,8},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {deallocate,1}.
    return.


{function, local_cse_3, 2, 86}.
  {label,85}.
    {line,[{location,"beam_block_SUITE.erl",289}]}.
    {func_info,{atom,beam_block_SUITE},{atom,local_cse_3},2}.
  {label,86}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[b]}}]}}.
    {move,{literal,{[b],[a,b]}},{x,0}}.
    return.


{function, local_cse_4, 0, 88}.
  {label,87}.
    {line,[{location,"beam_block_SUITE.erl",295}]}.
    {func_info,{atom,beam_block_SUITE},{atom,local_cse_4},0}.
  {label,88}.
    {test_heap,3,0}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,2},{list,[{x,1},{atom,write_cache}]}}.
    {move,{integer,2000},{x,0}}.
    {call_only,3,{f,90}}. % do_local_cse_4/3


{function, do_local_cse_4, 3, 90}.
  {label,89}.
    {line,[{location,"beam_block_SUITE.erl",298}]}.
    {func_info,{atom,beam_block_SUITE},{atom,do_local_cse_4},3}.
  {label,90}.
    {'%',{var_info,{x,0},[{type,{t_integer,{2000,2000}}}]}}.
    {'%',{var_info,{x,1},[{type,pid}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_tuple,2,true,
                                   #{1 => pid,
                                     2 => {t_atom,[write_cache]}}}}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{integer,2000},{x,1},{x,2}]}}.
    return.


{function, second_block_pass, 1, 92}.
  {label,91}.
    {line,[{location,"beam_block_SUITE.erl",303}]}.
    {func_info,{atom,beam_block_SUITE},{atom,second_block_pass},1}.
  {label,92}.
    {allocate,0,0}.
    {move,{float,2.0},{x,1}}.
    {move,{literal,[#{dts => 10.0}]},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",304}]}.
    {call,2,{f,95}}. % second_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_map,{t_atom,[dts]},{t_float,{5.0,10.0}}},
                                  nil}}]}}.
    {test,is_nonempty_list,{f,93},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_map_elements,{f,93},
                      {tr,{x,1},{t_map,{t_atom,[dts]},{t_float,{5.0,10.0}}}},
                      {list,[{atom,dts},{x,1}]}}.
    {test,is_eq_exact,{f,93},[{tr,{x,1},{t_float,{5.0,10.0}}},{float,5.0}]}.
    {test,is_nil,
          {f,93},
          [{tr,{x,2},
               {t_list,{t_map,{t_atom,[dts]},{t_float,{5.0,10.0}}},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,93}.
    {badmatch,{x,0}}.


{function, second_1, 2, 95}.
  {label,94}.
    {line,[{location,"beam_block_SUITE.erl",307}]}.
    {func_info,{atom,beam_block_SUITE},{atom,second_1},2}.
  {label,95}.
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_map,{t_atom,[dts]},{t_float,{10.0,10.0}}},
                                  nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_float,{2.0,2.0}}}]}}.
    {call_only,2,{f,126}}. % '-second_1/2-lc$^0/1-0-'/2


{function, coverage, 1, 97}.
  {label,96}.
    {line,[{location,"beam_block_SUITE.erl",310}]}.
    {func_info,{atom,beam_block_SUITE},{atom,coverage},1}.
  {label,97}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_block_SUITE.erl",311}]}.
    {call,0,{f,104}}. % coverage_1/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",313}]}.
    {call,1,{f,106}}. % coverage_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,
                                 {'-coverage_2/1-fun-0-',2},
                                 {t_cons,any,nil}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,115},0,0,{x,1},{list,[]}}.
    {put_tuple2,{x,1},{list,[{x,1}]}}.
    {swap,{x,0},{x,1}}.
    {call_fun2,{f,121},
               1,
               {tr,{x,1},
                   {t_fun,1,{'-coverage_2/1-fun-0-',2},{t_cons,any,nil}}}}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,102},[{x,1},{integer,42}]}.
    {test,is_nonempty_list,{f,102},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,102},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_eq_exact,{f,102},[{x,1},{y,0}]}.
    {move,{atom,b},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"beam_block_SUITE.erl",315}]}.
    {call,2,{f,108}}. % coverage_3/2
    {test,is_eq_exact,{f,101},[{x,0},{literal,{b,a,badarith}}]}.
    {move,{integer,1},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"beam_block_SUITE.erl",316}]}.
    {call,2,{f,108}}. % coverage_3/2
    {test,is_eq_exact,{f,100},[{x,0},{atom,ok}]}.
    {'catch',{y,0},{f,98}}.
    {move,{atom,b},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"beam_block_SUITE.erl",318}]}.
    {call,2,{f,113}}. % coverage_4/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,98}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,99},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,99}.
    {line,[{scope,[0]},{location,"beam_block_SUITE.erl",318}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,[2]},{location,"beam_block_SUITE.erl",316}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,[2]},{location,"beam_block_SUITE.erl",315}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,[2]},{location,"beam_block_SUITE.erl",313}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 0, 104}.
  {label,103}.
    {line,[{location,"beam_block_SUITE.erl",322}]}.
    {func_info,{atom,beam_block_SUITE},{atom,coverage_1},0}.
  {label,104}.
    {move,nil,{x,0}}.
    {call_only,1,{f,124}}. % '-coverage_1/0-lc$^0/1-0-'/1


{function, coverage_2, 1, 106}.
  {label,105}.
    {line,[{location,"beam_block_SUITE.erl",327}]}.
    {func_info,{atom,beam_block_SUITE},{atom,coverage_2},1}.
  {label,106}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,121},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_cons,any,nil}}]}}.
    return.


{function, coverage_3, 2, 108}.
  {label,107}.
    {line,[{location,"beam_block_SUITE.erl",332}]}.
    {func_info,{atom,beam_block_SUITE},{atom,coverage_3},2}.
  {label,108}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[b]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {allocate,3,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {'try',{y,2},{f,109}}.
    {line,[{location,"beam_block_SUITE.erl",333}]}.
    {call,1,{f,115}}. % id/1
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {try_end,{y,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,109}.
    {try_case,{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,111},3}. % coverage_3/3


{function, coverage_3, 3, 111}.
  {label,110}.
    {line,[{location,"beam_block_SUITE.erl",341}]}.
    {func_info,{atom,beam_block_SUITE},{atom,coverage_3},3}.
  {label,111}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[b]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2}]}}.
    {call_only,1,{f,115}}. % id/1


{function, coverage_4, 2, 113}.
  {label,112}.
    {line,[{location,"beam_block_SUITE.erl",344}]}.
    {func_info,{atom,beam_block_SUITE},{atom,coverage_4},2}.
  {label,113}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[b]}}]}}.
    {bif,'xor',{f,0},[{atom,ok},{atom,ok}],{x,0}}.
    return.


{function, id, 1, 115}.
  {label,114}.
    {line,[{location,"beam_block_SUITE.erl",354}]}.
    {func_info,{atom,beam_block_SUITE},{atom,id},1}.
  {label,115}.
    return.


{function, module_info, 0, 117}.
  {label,116}.
    {line,[]}.
    {func_info,{atom,beam_block_SUITE},{atom,module_info},0}.
  {label,117}.
    {move,{atom,beam_block_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 119}.
  {label,118}.
    {line,[]}.
    {func_info,{atom,beam_block_SUITE},{atom,module_info},1}.
  {label,119}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_block_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-coverage_2/1-fun-0-', 2, 121}.
  {label,120}.
    {line,[{location,"beam_block_SUITE.erl",328}]}.
    {func_info,{atom,beam_block_SUITE},{atom,'-coverage_2/1-fun-0-'},2}.
  {label,121}.
    {test,is_tuple,{f,122},[{x,0}]}.
    {test,test_arity,{f,122},[{x,0},1]}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_block_SUITE.erl",329}]}.
    {call,1,{f,115}}. % id/1
    {get_tuple_element,{y,0},0,{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call_fun,1}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,122}.
    {call_only,1,{f,130}}. % '-coverage_2/1-inlined-0-'/1


{function, '-coverage_1/0-lc$^0/1-0-', 1, 124}.
  {label,123}.
    {line,[{location,"beam_block_SUITE.erl",325}]}.
    {func_info,{atom,beam_block_SUITE},{atom,'-coverage_1/0-lc$^0/1-0-'},1}.
  {label,124}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-second_1/2-lc$^0/1-0-', 2, 126}.
  {label,125}.
    {line,[{location,"beam_block_SUITE.erl",308}]}.
    {func_info,{atom,beam_block_SUITE},{atom,'-second_1/2-lc$^0/1-0-'},2}.
  {label,126}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_map,{t_atom,[dts]},{t_float,{10.0,10.0}}},
                                  nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_float,{2.0,2.0}}}]}}.
    {test,is_nonempty_list,{f,128},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,has_map_fields,{f,127},{x,2},{list,[{atom,dts}]}}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {put_map_assoc,{f,0},{x,2},{y,0},3,{list,[{atom,dts},{float,5.0}]}}.
    {call,2,{f,126}}. % '-second_1/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_map,{t_atom,[dts]},{t_float,{5.0,10.0}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,127}.
    {call_only,2,{f,126}}. % '-second_1/2-lc$^0/1-0-'/2
  {label,128}.
    return.


{function, '-coverage_2/1-inlined-0-', 1, 130}.
  {label,129}.
    {line,[{location,"beam_block_SUITE.erl",328}]}.
    {func_info,{atom,beam_block_SUITE},{atom,'-coverage_2/1-inlined-0-'},1}.
  {label,130}.
    {jump,{f,129}}.
