{module, beam_except_SUITE}.  %% version = 0

{exports, [{all,0},
           {binary_construction_allocation,1},
           {bs_get_tail,1},
           {coverage,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {module_info,0},
           {module_info,1},
           {multiple_allocs,1},
           {suite,0},
           {unfold_literals,1}]}.

{attributes, []}.

{labels, 116}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_except_SUITE.erl",27}]}.
    {func_info,{atom,beam_except_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_except_SUITE.erl",29}]}.
    {func_info,{atom,beam_except_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_except_SUITE.erl",32}]}.
    {func_info,{atom,beam_except_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [multiple_allocs,bs_get_tail,coverage,
                        binary_construction_allocation,unfold_literals]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_except_SUITE.erl",40}]}.
    {func_info,{atom,beam_except_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_except_SUITE},{x,0}}.
    {line,[{location,"beam_except_SUITE.erl",41}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_except_SUITE.erl",44}]}.
    {func_info,{atom,beam_except_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_except_SUITE.erl",47}]}.
    {func_info,{atom,beam_except_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_except_SUITE.erl",50}]}.
    {func_info,{atom,beam_except_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, multiple_allocs, 1, 16}.
  {label,15}.
    {line,[{location,"beam_except_SUITE.erl",53}]}.
    {func_info,{atom,beam_except_SUITE},{atom,multiple_allocs},1}.
  {label,16}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'catch',{y,2},{f,17}}.
    {move,{literal,{false,true}},{x,2}}.
    {move,{float,0.0},{x,1}}.
    {move,{literal,{p}},{x,3}}.
    {move,{atom,pda},{x,0}}.
    {line,[{location,"beam_except_SUITE.erl",55}]}.
    {call,4,{f,24}}. % could/4
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,17}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,22},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,22},[{x,1}]}.
    {test,test_arity,{f,22},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,22},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,22},[{x,1}]}.
    {get_map_elements,{f,22},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,true},{x,1}]}}.
    {test,is_eq_exact,{f,22},[{x,1},{literal,[p]}]}.
    {'catch',{y,1},{f,18}}.
    {move,{atom,lee},{x,0}}.
    {line,[{scope,[4]},{location,"beam_except_SUITE.erl",56}]}.
    {call,1,{f,26}}. % place/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,18}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,21},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,21},[{x,1}]}.
    {test,test_arity,{f,21},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,21},[{x,1},{literal,{bad_generator,0}}]}.
    {'catch',{y,0},{f,19}}.
    {line,[{scope,[2]},{location,"beam_except_SUITE.erl",57}]}.
    {call,0,{f,28}}. % conditions/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,19}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,20},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,20},[{x,1}]}.
    {test,test_arity,{f,20},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,20},[{x,1},{literal,{badmatch,wanted}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,20}.
    {line,[{scope,[0]},{location,"beam_except_SUITE.erl",57}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{scope,[2]},{location,"beam_except_SUITE.erl",56}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{scope,[4]},{location,"beam_except_SUITE.erl",54}]}.
    {badmatch,{x,0}}.


{function, could, 4, 24}.
  {label,23}.
    {line,[{location,"beam_except_SUITE.erl",61}]}.
    {func_info,{atom,beam_except_SUITE},{atom,could},4}.
  {label,24}.
    {'%',{var_info,{x,0},[{type,{t_atom,[pda]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_float,{0.0,0.0}}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false]},
                                     2 => {t_atom,[true]}}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_tuple,1,true,#{1 => {t_atom,[p]}}}}]}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[{atom,true},{literal,[p]}]}}.
    {line,[{location,"beam_except_SUITE.erl",62}]}.
    {badmatch,{x,0}}.


{function, place, 1, 26}.
  {label,25}.
    {line,[{location,"beam_except_SUITE.erl",64}]}.
    {func_info,{atom,beam_except_SUITE},{atom,place},1}.
  {label,26}.
    {'%',{var_info,{x,0},[{type,{t_atom,[lee]}}]}}.
    {move,{integer,0},{x,0}}.
    {call_only,1,{f,115}}. % '-place/1-lc$^0/1-0-'/1


{function, conditions, 0, 28}.
  {label,27}.
    {line,[{location,"beam_except_SUITE.erl",67}]}.
    {func_info,{atom,beam_except_SUITE},{atom,conditions},0}.
  {label,28}.
    {line,[{location,"beam_except_SUITE.erl",68}]}.
    {badmatch,{atom,wanted}}.


{function, bs_get_tail, 1, 30}.
  {label,29}.
    {line,[{location,"beam_except_SUITE.erl",70}]}.
    {func_info,{atom,beam_except_SUITE},{atom,bs_get_tail},1}.
  {label,30}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{literal,<<0,0,0,0,97,98,99>>},{x,0}}.
    {line,[{location,"beam_except_SUITE.erl",71}]}.
    {call,1,{f,100}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{integer,0},{x,2}}.
    {move,{y,0},{x,3}}.
    {move,{integer,0},{x,1}}.
    {call,4,{f,37}}. % bs_get_tail_1/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_integer,{0,0}},
                                     3 => {t_integer,{0,0}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,35},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,35},[{x,1},{y,0}]}.
    {'catch',{y,1},{f,31}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"beam_except_SUITE.erl",75}]}.
    {call,1,{f,100}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{integer,0},{x,2}}.
    {move,{y,0},{x,3}}.
    {move,{integer,0},{x,1}}.
    {call,4,{f,37}}. % bs_get_tail_1/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_integer,{0,0}},
                                     3 => {t_integer,{0,0}}}}}]}}.
  {label,31}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,34},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,34},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,34},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,34},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,34},[{x,2},{atom,bs_get_tail_1}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,34},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,34},[{x,2},{literal,<<>>}]}.
    {test,is_nonempty_list,{f,34},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,34},[{x,2},{integer,0}]}.
    {test,is_nonempty_list,{f,34},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,34},[{x,2},{integer,0}]}.
    {test,is_nonempty_list,{f,34},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,34},[{x,1}]}.
    {test,is_eq_exact,{f,34},[{x,2},{y,0}]}.
    {move,{literal,<<"X">>},{x,1}}.
    {move,{literal,<<"Z">>},{x,2}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"W">>},{x,0}}.
    {line,[{scope,[2]},{location,"beam_except_SUITE.erl",77}]}.
    {call,3,{f,40}}. % bs_get_tail_2/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"X">>},{x,1}}.
    {move,{literal,<<"Z">>},{x,2}}.
    {move,{literal,<<"M">>},{x,0}}.
    {line,[{scope,[2]},{location,"beam_except_SUITE.erl",78}]}.
    {call,3,{f,40}}. % bs_get_tail_2/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,32}}.
    {move,{literal,<<"B">>},{x,1}}.
    {move,{literal,<<"C">>},{x,2}}.
    {move,{literal,<<"A">>},{x,0}}.
    {line,[{scope,[2]},{location,"beam_except_SUITE.erl",82}]}.
    {call,3,{f,40}}. % bs_get_tail_2/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,32}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,33},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,33},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,33},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,33},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,33},[{x,2},{atom,do_get_bs_tail_2}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,33},[{x,1},{literal,[<<"A">>,<<"B">>,[],<<"C">>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,33}.
    {line,[{scope,[0]},{location,"beam_except_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,[2]},{location,"beam_except_SUITE.erl",72}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,[4]},{location,"beam_except_SUITE.erl",71}]}.
    {badmatch,{x,0}}.


{function, bs_get_tail_1, 4, 37}.
  {label,36}.
    {line,[{location,"beam_except_SUITE.erl",86}]}.
    {func_info,{atom,beam_except_SUITE},{atom,bs_get_tail_1},4}.
  {label,37}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}},
             accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,0}}}]}}.
    {test,bs_start_match3,{f,36},4,[{x,0}],{x,4}}.
    {bs_get_position,{x,4},{x,0},5}.
    {bs_match,{f,38},
              {x,4},
              {commands,[{ensure_at_least,32,1},
                         {skip,32},
                         {get_tail,5,1,{x,0}}]}}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,0},{integer,0},{integer,0},{x,3}]}}.
    return.
  {label,38}.
    {bs_set_position,{x,4},{x,0}}.
    {bs_get_tail,{x,4},{x,0},5}.
    {jump,{f,36}}.


{function, bs_get_tail_2, 3, 40}.
  {label,39}.
    {line,[{location,"beam_except_SUITE.erl",89}]}.
    {func_info,{atom,beam_except_SUITE},{atom,bs_get_tail_2},3}.
  {label,40}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {move,{x,2},{x,3}}.
    {move,nil,{x,2}}.
    {call_only,4,{f,42}}. % do_get_bs_tail_2/4


{function, do_get_bs_tail_2, 4, 42}.
  {label,41}.
    {line,[{location,"beam_except_SUITE.erl",92}]}.
    {func_info,{atom,beam_except_SUITE},{atom,do_get_bs_tail_2},4}.
  {label,42}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,nil}]}}.
    {'%',{var_info,{x,3},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,4},4}.
    {bs_match,{f,44},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {select_val,{tr,{x,5},{t_integer,{0,255}}},
                {f,44},
                {list,[{integer,77},{f,43},{integer,87},{f,43}]}}.
  {label,43}.
    {bs_match,{f,44},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,44},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<"X">>}]}.
    {test,is_eq_exact,
          {f,44},
          [{tr,{x,3},{t_bitstring,8,false}},{literal,<<"Z">>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,44}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {jump,{f,41}}.


{function, coverage, 1, 46}.
  {label,45}.
    {line,[{location,"beam_except_SUITE.erl",95}]}.
    {func_info,{atom,beam_except_SUITE},{atom,coverage},1}.
  {label,46}.
    {allocate,14,0}.
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
                       {y,13}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_except_SUITE.erl",97}]}.
    {call,1,{f,102}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,13},{f,47}}.
    {move,{literal,[x]},{x,0}}.
    {line,[{location,"beam_except_SUITE.erl",100}]}.
    {call,1,{f,102}}. % fc/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,47}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,77},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,77},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,77},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,77},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,77},[{x,2},{atom,fc}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,77},[{x,2},{literal,[[x]]}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_nonempty_list,{f,77},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,77},[{x,1},{literal,[{line,2}]}]}.
    {test,is_eq_exact,{f,77},[{x,2},{literal,{file,"fake.erl"}}]}.
    {'catch',{y,12},{f,48}}.
    {move,{atom,y},{x,0}}.
    {line,[{scope,[26]},{location,"beam_except_SUITE.erl",103}]}.
    {call,1,{f,102}}. % fc/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,48}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,76},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,76},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,76},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,76},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,76},[{x,2},{atom,fc}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,76},[{x,2},{literal,[y]}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_nonempty_list,{f,76},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,76},[{x,1},{literal,[{line,2}]}]}.
    {test,is_eq_exact,{f,76},[{x,2},{literal,{file,"fake.erl"}}]}.
    {'catch',{y,11},{f,49}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{scope,[24]},{location,"beam_except_SUITE.erl",112}]}.
    {call,1,{f,102}}. % fc/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,49}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,75},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,75},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,75},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,75},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,75},[{x,2},{atom,fc}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,75},[{x,2},{literal,[[a,b,c]]}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_nonempty_list,{f,75},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,75},[{x,1},{literal,[{line,6}]}]}.
    {test,is_eq_exact,{f,75},[{x,2},{literal,{file,"fake.erl"}}]}.
    {'catch',{y,10},{f,50}}.
    {move,{atom,c},{x,2}}.
    {move,{atom,b},{x,1}}.
    {move,{atom,d},{x,3}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[22]},{location,"beam_except_SUITE.erl",116}]}.
    {call_ext,4,{extfunc,erlang,error,4}}.
  {label,50}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,74},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,74},[{x,1},2,{atom,undef}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,74},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,74},[{x,1},4,{atom,erlang}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,74},[{x,2},{atom,error}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,74},[{x,1},{literal,[a,b,c,d]}]}.
    {'catch',{y,9},{f,51}}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[20]},{location,"beam_except_SUITE.erl",120}]}.
    {call,1,{f,105}}. % bar/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,51}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,73},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,73},[{x,1},2,{atom,badarith}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,73},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,73},[{x,2}]}.
    {test,test_arity,{f,73},[{x,2},4]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,4}}.
    {get_tuple_element,{x,2},2,{x,5}}.
    {get_tuple_element,{x,2},3,{x,2}}.
    {select_val,{x,3},
                {f,73},
                {list,[{atom,beam_except_SUITE},{f,53},{atom,erlang},{f,52}]}}.
  {label,52}.
    {test,is_eq_exact,{f,73},[{x,4},{atom,'+'}]}.
    {test,is_eq_exact,{f,73},[{x,5},{literal,[x,1]}]}.
    {test,is_nonempty_list,{f,73},[{x,2}]}.
    {test,is_nonempty_list,{f,73},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,73},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,73},[{x,2},{atom,bar}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,73},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_nonempty_list,{f,73},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,73},[{x,1},{literal,[{line,9}]}]}.
    {test,is_eq_exact,{f,73},[{x,2},{literal,{file,"fake.erl"}}]}.
    {jump,{f,54}}.
  {label,53}.
    {test,is_eq_exact,{f,73},[{x,4},{atom,bar}]}.
    {test,is_eq_exact,{f,73},[{x,5},{integer,1}]}.
    {test,is_nonempty_list,{f,73},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_eq_exact,{f,73},[{x,2},{literal,[{line,9}]}]}.
    {test,is_eq_exact,{f,73},[{x,1},{literal,{file,"fake.erl"}}]}.
  {label,54}.
    {'catch',{y,8},{f,55}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[18]},{location,"beam_except_SUITE.erl",129}]}.
    {call,1,{f,105}}. % bar/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,55}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,72},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,72},[{x,1}]}.
    {test,test_arity,{f,72},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,72},[{x,2},{literal,{case_clause,{1}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,72},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,72},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,72},[{x,2},{atom,bar}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,72},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_nonempty_list,{f,72},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,72},[{x,1},{literal,[{line,9}]}]}.
    {test,is_eq_exact,{f,72},[{x,2},{literal,{file,"fake.erl"}}]}.
    {bif,self,{f,0},[],{y,13}}.
    {'catch',{y,7},{f,56}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[16]},{location,"beam_except_SUITE.erl",133}]}.
    {call,1,{f,107}}. % foo/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,56}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,71},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,71},[{x,1}]}.
    {test,test_arity,{f,71},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,71},[{x,2},2,{atom,strange}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,71},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,71},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,71},[{x,3},{atom,foo}]}.
    {get_tuple_element,{x,1},2,{x,3}}.
    {test,is_eq_exact,{f,71},[{x,3},{literal,[any]}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_nonempty_list,{f,71},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_eq_exact,{f,71},[{x,1},{literal,[{line,14}]}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,71},[{x,1},{tr,{y,13},pid}]}.
    {test,is_eq_exact,{f,71},[{x,3},{literal,{file,"fake.erl"}}]}.
    {move,{integer,1},{x,1}}.
    {move,{integer,2},{x,2}}.
    {init_yregs,{list,[{y,13}]}}.
    {move,{atom,succeed},{x,0}}.
    {line,[{scope,[14]},{location,"beam_except_SUITE.erl",135}]}.
    {call,3,{f,109}}. % foobar/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_atom,[succeed]},
                                     3 => {t_integer,{1,1}},
                                     4 => {t_integer,{2,2}}}}}]}}.
    {'catch',{y,6},{f,57}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,2},{x,2}}.
    {move,{literal,[fail]},{x,0}}.
    {line,[{scope,[14]},{location,"beam_except_SUITE.erl",138}]}.
    {call,3,{f,109}}. % foobar/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,57}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,70},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,70},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,70},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_eq_exact,
        {f,70},
        [{x,1},
         {literal,
             {beam_except_SUITE,foobar,
                 [[fail],1,2],
                 [{file,"fake.erl"},{line,16}]}}]}.
    {'catch',{y,5},{f,58}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_except_SUITE.erl",141}]}.
    {call,1,{f,81}}. % fake_function_clause1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,58}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,69},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,69},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,69},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,69},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,69},[{x,2},{atom,fake_function_clause1}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,69},[{x,1},{literal,[{a,b},42.0]}]}.
    {'catch',{y,4},{f,59}}.
    {move,{atom,bad_tl},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_except_SUITE.erl",144}]}.
    {call,2,{f,83}}. % fake_function_clause2/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,59}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,68},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,68},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,68},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,68},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,68},[{x,2},{atom,fake_function_clause2}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,68},[{x,1},{literal,[42|bad_tl]}]}.
    {'catch',{y,3},{f,60}}.
    {move,{literal,[x,y]},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_except_SUITE.erl",147}]}.
    {call,1,{f,100}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{integer,42},{x,0}}.
    {call,2,{f,85}}. % fake_function_clause3/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,60}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,67},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,67},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,67},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,67},[{x,1},4,{atom,beam_except_SUITE}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,67},[{x,2},{atom,fake_function_clause3}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,67},[{x,1},{literal,[x,y]}]}.
    {'catch',{y,2},{f,61}}.
    {line,[{scope,[6]},{location,"beam_except_SUITE.erl",149}]}.
    {call,0,{f,87}}. % fake_function_clause4/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,61}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,66},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,66},[{x,1}]}.
    {test,test_arity,{f,66},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,66},[{x,1},{literal,{function_clause,a,b,c}}]}.
    {'catch',{y,1},{f,62}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[4]},{location,"beam_except_SUITE.erl",151}]}.
    {call,1,{f,100}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {call,1,{f,79}}. % coverage_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,62}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,65},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,65},[{x,1}]}.
    {test,test_arity,{f,65},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,65},[{x,1},{literal,{badmatch,0.0}}]}.
    {'catch',{y,0},{f,63}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"beam_except_SUITE.erl",152}]}.
    {call,1,{f,100}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {call,1,{f,79}}. % coverage_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,63}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,64},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,64},[{x,1},2,{atom,badarith}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,14}.
    return.
  {label,64}.
    {line,[{scope,[0]},{location,"beam_except_SUITE.erl",152}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,[2]},{location,"beam_except_SUITE.erl",151}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{scope,[4]},{location,"beam_except_SUITE.erl",149}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{scope,[6]},{location,"beam_except_SUITE.erl",146}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{scope,"\b"},{location,"beam_except_SUITE.erl",143}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{scope,"\n"},{location,"beam_except_SUITE.erl",140}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{scope,"\f"},{location,"beam_except_SUITE.erl",136}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{scope,[14]},{location,"beam_except_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{scope,[16]},{location,"beam_except_SUITE.erl",128}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{scope,[18]},{location,"beam_except_SUITE.erl",120}]}.
    {case_end,{x,0}}.
  {label,74}.
    {line,[{scope,[20]},{location,"beam_except_SUITE.erl",115}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{scope,[22]},{location,"beam_except_SUITE.erl",110}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{scope,[24]},{location,"beam_except_SUITE.erl",101}]}.
    {badmatch,{x,0}}.
  {label,77}.
    {line,[{scope,[26]},{location,"beam_except_SUITE.erl",98}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 1, 79}.
  {label,78}.
    {line,[{location,"beam_except_SUITE.erl",156}]}.
    {func_info,{atom,beam_except_SUITE},{atom,coverage_1},1}.
  {label,79}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {fmove,{float,0.0},{fr,0}}.
    {line,[{location,"beam_except_SUITE.erl",158}]}.
    {fconv,{tr,{x,0},
               {t_union,{t_atom,[a]},
                        {t_cons,{t_atom,[x,y]},nil},
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        {t_bitstring,8,false}}},
           {fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {badmatch,{x,0}}.


{function, fake_function_clause1, 1, 81}.
  {label,80}.
    {line,[{location,"beam_except_SUITE.erl",160}]}.
    {func_info,{atom,beam_except_SUITE},{atom,fake_function_clause1},1}.
  {label,81}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}]}}.
    {move,{literal,[{a,b},42.0]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, fake_function_clause2, 2, 83}.
  {label,82}.
    {line,[{location,"beam_except_SUITE.erl",162}]}.
    {func_info,{atom,beam_except_SUITE},{atom,fake_function_clause2},2}.
  {label,83}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bad_tl]}}]}}.
    {move,{literal,[42|bad_tl]},{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, fake_function_clause3, 2, 85}.
  {label,84}.
    {line,[{location,"beam_except_SUITE.erl",164}]}.
    {func_info,{atom,beam_except_SUITE},{atom,fake_function_clause3},2}.
  {label,85}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{atom,function_clause},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, fake_function_clause4, 0, 87}.
  {label,86}.
    {line,[{location,"beam_except_SUITE.erl",166}]}.
    {func_info,{atom,beam_except_SUITE},{atom,fake_function_clause4},0}.
  {label,87}.
    {move,{literal,{function_clause,a,b,c}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, binary_construction_allocation, 1, 89}.
  {label,88}.
    {line,[{location,"beam_except_SUITE.erl",168}]}.
    {func_info,{atom,beam_except_SUITE},
               {atom,binary_construction_allocation},
               1}.
  {label,89}.
    {move,{literal,"PUT"},{x,0}}.
    {call_only,1,{f,91}}. % do_binary_construction_allocation/1


{function, do_binary_construction_allocation, 1, 91}.
  {label,90}.
    {line,[{location,"beam_except_SUITE.erl",172}]}.
    {func_info,{atom,beam_except_SUITE},
               {atom,do_binary_construction_allocation},
               1}.
  {label,91}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{80,85}},nil}}]}}.
    {test,is_eq_exact,
          {f,92},
          [{tr,{x,0},{t_cons,{t_integer,{80,85}},nil}},{literal,"POST"}]}.
    {line,[{location,"beam_except_SUITE.erl",177}]}.
    {bs_create_bin,{f,0},
                   4,1,8,
                   {x,1},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"BAD METHOD ">>},
                          {integer,11},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_cons,{t_integer,{80,84}},nil}},
                          {atom,all}]}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,1},{x,0}]}}.
    {line,[{location,"beam_except_SUITE.erl",176}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {move,{atom,ok},{x,0}}.
    return.


{function, unfold_literals, 1, 94}.
  {label,93}.
    {line,[{location,"beam_except_SUITE.erl",181}]}.
    {func_info,{atom,beam_except_SUITE},{atom,unfold_literals},1}.
  {label,94}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"beam_except_SUITE.erl",182}]}.
    {call,1,{f,100}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,badarg},{x,0}}.
    {call,2,{f,98}}. % do_unfold_literals/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'catch',{y,0},{f,95}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_except_SUITE.erl",183}]}.
    {call,1,{f,100}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,badarg},{x,0}}.
    {call,2,{f,98}}. % do_unfold_literals/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,95}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,96},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,96},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,96}.
    {line,[{scope,[0]},{location,"beam_except_SUITE.erl",183}]}.
    {badmatch,{x,0}}.


{function, do_unfold_literals, 2, 98}.
  {label,97}.
    {line,[{location,"beam_except_SUITE.erl",187}]}.
    {func_info,{atom,beam_except_SUITE},{atom,do_unfold_literals},2}.
  {label,98}.
    {'%',{var_info,{x,0},[{type,{t_atom,[badarg]}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {line,[{location,"beam_except_SUITE.erl",192}]}.
    {bif,element,
         {f,0},
         [{integer,1},
          {tr,{x,1},
              {t_union,{t_atom,[a]},
                       {t_cons,{t_atom,[x,y]},nil},
                       {t_integer,{42,42}},
                       [{{2,{t_atom,[a]}},
                         {t_tuple,2,true,
                                  #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                       {t_bitstring,8,false}}}],
         {x,0}}.
    {move,{atom,a},{x,0}}.
    return.


{function, id, 1, 100}.
  {label,99}.
    {line,[{location,"beam_except_SUITE.erl",194}]}.
    {func_info,{atom,beam_except_SUITE},{atom,id},1}.
  {label,100}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a]},
                     {t_cons,{t_atom,[x,y]},nil},
                     {t_integer,{42,42}},
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,8,false}}}]}}.
    return.


{function, fc, 1, 102}.
  {label,101}.
    {line,[{location,"fake.erl",2}]}.
    {func_info,{atom,beam_except_SUITE},{atom,fc},1}.
  {label,102}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a,y]},
                                   {t_cons,{t_atom,[a,b,c,x]},nil},
                                   none,none,none}}]}}.
    {test,is_eq_exact,
          {f,103},
          [{tr,{x,0},
               {t_union,{t_atom,[a,y]},
                        {t_cons,{t_atom,[a,b,c,x]},nil},
                        none,none,none}},
           {atom,a}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,103}.
    {gc_bif,length,
            {f,101},
            1,
            [{tr,{x,0},
                 {t_union,{t_atom,[y]},
                          {t_cons,{t_atom,[a,b,c,x]},nil},
                          none,none,none}}],
            {x,1}}.
    {test,is_ge,
          {f,101},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,3}]}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{atom,function_clause},{x,0}}.
    {line,[{location,"fake.erl",6}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, bar, 1, 105}.
  {label,104}.
    {line,[{location,"fake.erl",8}]}.
    {func_info,{atom,beam_except_SUITE},{atom,bar},1}.
  {label,105}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[x]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {line,[{location,"fake.erl",9}]}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{x,0},
                 {t_union,{t_atom,[x]},none,{t_integer,{0,0}},none,none}},
             {integer,1}],
            {x,0}}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {case_end,{x,0}}.


{function, foo, 1, 107}.
  {label,106}.
    {line,[{location,"fake.erl",13}]}.
    {func_info,{atom,beam_except_SUITE},{atom,foo},1}.
  {label,107}.
    {'%',{var_info,{x,0},[{type,{t_atom,[any]}}]}}.
    {test_heap,3,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,strange},{x,0}]}}.
    {move,{literal,[any]},{x,1}}.
    {line,[{location,"fake.erl",14}]}.
    {call_ext_only,2,{extfunc,erlang,error,2}}.


{function, foobar, 3, 109}.
  {label,108}.
    {line,[{location,"fake.erl",16}]}.
    {func_info,{atom,beam_except_SUITE},{atom,foobar},3}.
  {label,109}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[succeed]},
                                   {t_cons,{t_atom,[fail]},nil},
                                   none,none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{1,1}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{2,2}}}]}}.
    {test,is_atom,
          {f,108},
          [{tr,{x,0},
               {t_union,{t_atom,[succeed]},
                        {t_cons,{t_atom,[fail]},nil},
                        none,none,none}}]}.
    {move,{literal,{ok,succeed,1,2}},{x,0}}.
    return.


{function, module_info, 0, 111}.
  {label,110}.
    {line,[]}.
    {func_info,{atom,beam_except_SUITE},{atom,module_info},0}.
  {label,111}.
    {move,{atom,beam_except_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 113}.
  {label,112}.
    {line,[]}.
    {func_info,{atom,beam_except_SUITE},{atom,module_info},1}.
  {label,113}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_except_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-place/1-lc$^0/1-0-', 1, 115}.
  {label,114}.
    {line,[{location,"beam_except_SUITE.erl",65}]}.
    {func_info,{atom,beam_except_SUITE},{atom,'-place/1-lc$^0/1-0-'},1}.
  {label,115}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {move,{literal,{bad_generator,0}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
