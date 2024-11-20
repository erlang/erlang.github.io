{module, beam_jump_SUITE}.  %% version = 0

{exports, [{all,0},
           {ambiguous_catch_try_state,1},
           {build_tuple,1},
           {call_sharing,1},
           {coverage,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {module_info,0},
           {module_info,1},
           {suite,0},
           {undecided_allocation,1},
           {undefined_label,1},
           {unsafe_move_elimination,1}]}.

{attributes, []}.

{labels, 204}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_jump_SUITE.erl",28}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_jump_SUITE.erl",31}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_jump_SUITE.erl",34}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [undefined_label,ambiguous_catch_try_state,
                        unsafe_move_elimination,build_tuple,coverage,
                        call_sharing,undecided_allocation]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_jump_SUITE.erl",45}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_jump_SUITE},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",46}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_jump_SUITE.erl",49}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_jump_SUITE.erl",52}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_jump_SUITE.erl",55}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, undefined_label, 1, 16}.
  {label,15}.
    {line,[{location,"beam_jump_SUITE.erl",58}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,undefined_label},1}.
  {label,16}.
    {allocate,1,0}.
    {'catch',{y,0},{f,17}}.
    {move,nil,{x,1}}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",59}]}.
    {call,3,{f,20}}. % flights/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,17}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,18},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,18},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,18}.
    {line,[{scope,[0]},{location,"beam_jump_SUITE.erl",59}]}.
    {badmatch,{x,0}}.


{function, flights, 3, 20}.
  {label,19}.
    {line,[{location,"beam_jump_SUITE.erl",64}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,flights},3}.
  {label,20}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {'%',{var_info,{x,2},[{type,nil}]}}.
    {jump,{f,19}}.


{function, ambiguous_catch_try_state, 1, 22}.
  {label,21}.
    {line,[{location,"beam_jump_SUITE.erl",72}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,ambiguous_catch_try_state},1}.
  {label,22}.
    {allocate,6,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,3},{y,4},{y,5}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",74}]}.
    {call,1,{f,39}}. % checks/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_tagged_tuple,{f,35},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,35},[{x,1}]}.
    {test,test_arity,{f,35},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,35},[{x,1},{literal,{case_clause,song}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,35},[{x,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,35},[{x,1}]}.
    {test,test_arity,{f,35},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,35},[{x,1},{literal,{case_clause,song}}]}.
    {'catch',{y,5},{f,23}}.
    {line,[{scope,"\f"},{location,"beam_jump_SUITE.erl",76}]}.
    {call,0,{f,43}}. % unsafe_sharing/0
    {'%',{var_info,{x,0},[{type,{t_atom,[name]}}]}}.
  {label,23}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,34},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,34},[{x,1}]}.
    {test,test_arity,{f,34},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,34},[{x,1},{literal,{try_clause,42}}]}.
    {'catch',{y,4},{f,24}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",78}]}.
    {call,1,{f,77}}. % ambiguous_catch_try_state_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,24}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,33},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,33},[{x,1}]}.
    {test,test_arity,{f,33},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,33},[{x,1},{literal,{badmatch,b}}]}.
    {'catch',{y,3},{f,25}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,"\b"},{location,"beam_jump_SUITE.erl",79}]}.
    {call,1,{f,77}}. % ambiguous_catch_try_state_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,25}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,32},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,32},[{x,1}]}.
    {test,test_arity,{f,32},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,32},[{x,1},{literal,{badmatch,b}}]}.
    {'catch',{y,2},{f,26}}.
    {line,[{scope,[6]},{location,"beam_jump_SUITE.erl",81}]}.
    {call,0,{f,86}}. % ambiguous_catch_try_state_2/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,26}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,31},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,31},[{x,1}]}.
    {test,test_arity,{f,31},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,31},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,1},{f,27}}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",82}]}.
    {call,0,{f,90}}. % ambiguous_catch_try_state_3/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,27}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,30},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,30},[{x,1}]}.
    {test,test_arity,{f,30},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,30},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,0},{f,28}}.
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",84}]}.
    {call,0,{f,94}}. % ambiguous_catch_try_state_4/0
    {'%',{var_info,{x,0},[{type,{t_float,{0.0,0.0}}}]}}.
  {label,28}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,29},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,29},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,29}.
    {line,[{scope,[0]},{location,"beam_jump_SUITE.erl",84}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",82}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",81}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,[6]},{location,"beam_jump_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,"\b"},{location,"beam_jump_SUITE.erl",78}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",76}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,"\f"},{location,"beam_jump_SUITE.erl",73}]}.
    {badmatch,{x,0}}.


{function, river, 0, 37}.
  {label,36}.
    {line,[{location,"beam_jump_SUITE.erl",88}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,river},0}.
  {label,37}.
    {move,{atom,song},{x,0}}.
    return.


{function, checks, 1, 39}.
  {label,38}.
    {line,[{location,"beam_jump_SUITE.erl",90}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,checks},1}.
  {label,39}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,40}}.
    {line,[{location,"beam_jump_SUITE.erl",92}]}.
    {call,0,{f,37}}. % river/0
    {'%',{var_info,{x,0},[{type,{t_atom,[song]}}]}}.
    {case_end,{atom,song}}.
  {label,40}.
    {catch_end,{y,1}}.
    {move,{x,0},{y,1}}.
    {'catch',{y,0},{f,41}}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",92}]}.
    {call,0,{f,37}}. % river/0
    {'%',{var_info,{x,0},[{type,{t_atom,[song]}}]}}.
    {case_end,{atom,song}}.
  {label,41}.
    {catch_end,{y,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,1},{x,0}]}}.
    {deallocate,2}.
    return.


{function, unsafe_sharing, 0, 43}.
  {label,42}.
    {line,[{location,"beam_jump_SUITE.erl",95}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,unsafe_sharing},0}.
  {label,43}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,45}}.
    {'try',{y,0},{f,44}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {try_end,{y,0}}.
    {try_end,{y,1}}.
    {try_case_end,{x,0}}.
  {label,44}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,45}.
    {try_case,{y,1}}.
    {move,{atom,name},{x,0}}.
    {deallocate,2}.
    return.


{function, unsafe_move_elimination, 1, 47}.
  {label,46}.
    {line,[{location,"beam_jump_SUITE.erl",97}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,unsafe_move_elimination},1}.
  {label,47}.
    {allocate,0,0}.
    {move,{atom,right},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,left},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",98}]}.
    {call,3,{f,52}}. % unsafe_move_elimination_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{44,114}},nil},
             {t_integer,{1,42}},
             {t_tuple,2,false,
              #{1 => {t_atom,any},
                2 =>
                 {t_union,
                  {t_atom,[badarg,right]},
                  none,
                  {t_integer,{1,1}},
                  none,none}}},
             other},
           2 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{44,114}},nil},
             {t_integer,{1,42}},
             {t_tuple,2,false,
              #{1 => {t_atom,any},
                2 =>
                 {t_union,
                  {t_atom,[badarg,right]},
                  none,
                  {t_integer,{1,1}},
                  none,none}}},
             other}}}}]}}.
    {test,is_eq_exact,
     {f,50},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{44,114}},nil},
            {t_integer,{1,42}},
            {t_tuple,2,false,
             #{1 => {t_atom,any},
               2 =>
                {t_union,
                 {t_atom,[badarg,right]},
                 none,
                 {t_integer,{1,1}},
                 none,none}}},
            other},
          2 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{44,114}},nil},
            {t_integer,{1,42}},
            {t_tuple,2,false,
             #{1 => {t_atom,any},
               2 =>
                {t_union,
                 {t_atom,[badarg,right]},
                 none,
                 {t_integer,{1,1}},
                 none,none}}},
            other}}}},
      {literal,{{left,right,false},false}}]}.
    {move,{atom,right},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",99}]}.
    {call,3,{f,52}}. % unsafe_move_elimination_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{44,114}},nil},
             {t_integer,{1,42}},
             {t_tuple,2,false,
              #{1 => {t_atom,any},
                2 =>
                 {t_union,
                  {t_atom,[badarg,right]},
                  none,
                  {t_integer,{1,1}},
                  none,none}}},
             other},
           2 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{44,114}},nil},
             {t_integer,{1,42}},
             {t_tuple,2,false,
              #{1 => {t_atom,any},
                2 =>
                 {t_union,
                  {t_atom,[badarg,right]},
                  none,
                  {t_integer,{1,1}},
                  none,none}}},
             other}}}}]}}.
    {test,is_eq_exact,
     {f,49},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{44,114}},nil},
            {t_integer,{1,42}},
            {t_tuple,2,false,
             #{1 => {t_atom,any},
               2 =>
                {t_union,
                 {t_atom,[badarg,right]},
                 none,
                 {t_integer,{1,1}},
                 none,none}}},
            other},
          2 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{44,114}},nil},
            {t_integer,{1,42}},
            {t_tuple,2,false,
             #{1 => {t_atom,any},
               2 =>
                {t_union,
                 {t_atom,[badarg,right]},
                 none,
                 {t_integer,{1,1}},
                 none,none}}},
            other}}}},
      {literal,{{false,right,false},false}}]}.
    {move,{atom,right},{x,1}}.
    {move,{atom,true},{x,2}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",100}]}.
    {call,3,{f,52}}. % unsafe_move_elimination_1/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{44,114}},nil},
             {t_integer,{1,42}},
             {t_tuple,2,false,
              #{1 => {t_atom,any},
                2 =>
                 {t_union,
                  {t_atom,[badarg,right]},
                  none,
                  {t_integer,{1,1}},
                  none,none}}},
             other},
           2 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{44,114}},nil},
             {t_integer,{1,42}},
             {t_tuple,2,false,
              #{1 => {t_atom,any},
                2 =>
                 {t_union,
                  {t_atom,[badarg,right]},
                  none,
                  {t_integer,{1,1}},
                  none,none}}},
             other}}}}]}}.
    {test,is_eq_exact,
     {f,48},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{44,114}},nil},
            {t_integer,{1,42}},
            {t_tuple,2,false,
             #{1 => {t_atom,any},
               2 =>
                {t_union,
                 {t_atom,[badarg,right]},
                 none,
                 {t_integer,{1,1}},
                 none,none}}},
            other},
          2 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{44,114}},nil},
            {t_integer,{1,42}},
            {t_tuple,2,false,
             #{1 => {t_atom,any},
               2 =>
                {t_union,
                 {t_atom,[badarg,right]},
                 none,
                 {t_integer,{1,1}},
                 none,none}}},
            other}}}},
      {literal,{{true,right,right},right}}]}.
    {move,{integer,16},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",101}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,201}}. % '-unsafe_move_elimination/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,48}.
    {line,[{location,"beam_jump_SUITE.erl",100}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{location,"beam_jump_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{location,"beam_jump_SUITE.erl",98}]}.
    {badmatch,{x,0}}.


{function, unsafe_move_elimination_1, 3, 52}.
  {label,51}.
    {line,[{location,"beam_jump_SUITE.erl",104}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,unsafe_move_elimination_1},3}.
  {label,52}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,left,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[right]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[false,true]}}]}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",105}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test,is_eq_exact,{f,54},[{y,0},{atom,true}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",125}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {select_val,
        {tr,{x,0},
            {t_union,
                {t_atom,any},
                {t_cons,{t_integer,{44,114}},nil},
                {t_integer,{1,42}},
                {t_tuple,2,false,
                    #{1 => {t_atom,any},
                      2 =>
                          {t_union,
                              {t_atom,[badarg,right]},
                              none,
                              {t_integer,{1,1}},
                              none,none}}},
                other}},
        {f,56},
        {list,[{atom,false},{f,54},{atom,true},{f,53}]}}.
  {label,53}.
    {move,{atom,right},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",131}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {move,{x,0},{y,0}}.
    {jump,{f,55}}.
  {label,54}.
    {move,{atom,false},{y,0}}.
  {label,55}.
    {test_heap,4,0}.
    {put_tuple2,{x,0},{list,[{y,1},{atom,right},{y,0}]}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"beam_jump_SUITE.erl",133}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,56}.
    {line,[{location,"beam_jump_SUITE.erl",123}]}.
    {case_end,{x,0}}.


{function, unsafe_move_elimination_2, 1, 58}.
  {label,57}.
    {line,[{location,"beam_jump_SUITE.erl",135}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,unsafe_move_elimination_2},1}.
  {label,58}.
    {line,[{location,"beam_jump_SUITE.erl",148}]}.
    {gc_bif,'band',{f,0},1,[{x,0},{integer,7}],{x,0}}.
    {select_val,{tr,{x,0},{t_integer,{0,7}}},
                {f,68},
                {list,[{integer,0},
                       {f,64},
                       {integer,1},
                       {f,63},
                       {integer,2},
                       {f,62},
                       {integer,3},
                       {f,61},
                       {integer,4},
                       {f,60},
                       {integer,5},
                       {f,59},
                       {integer,6},
                       {f,66}]}}.
  {label,59}.
    {move,{atom,f},{x,1}}.
    {jump,{f,65}}.
  {label,60}.
    {move,{atom,e},{x,1}}.
    {jump,{f,65}}.
  {label,61}.
    {move,{atom,d},{x,1}}.
    {jump,{f,65}}.
  {label,62}.
    {move,{atom,c},{x,1}}.
    {jump,{f,65}}.
  {label,63}.
    {move,{atom,b},{x,1}}.
    {jump,{f,65}}.
  {label,64}.
    {move,{atom,a},{x,1}}.
  {label,65}.
    {select_val,{tr,{x,1},{t_atom,any}},
                {f,67},
                {list,[{atom,g},{f,66},{atom,h},{f,68}]}}.
  {label,66}.
    {move,{atom,g},{x,1}}.
    {call_only,2,{f,71}}. % expects_g/2
  {label,67}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",162}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,69},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}},
         {tr,{y,0},{t_atom,any}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,68}.
    {move,{atom,h},{x,1}}.
    {call_only,2,{f,74}}. % expects_h/2
  {label,69}.
    {badmatch,{x,0}}.


{function, expects_g, 2, 71}.
  {label,70}.
    {line,[{location,"beam_jump_SUITE.erl",165}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,expects_g},2}.
  {label,71}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,6}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[g]}}]}}.
    {test,is_eq_exact,{f,70},[{tr,{x,0},{t_integer,{0,6}}},{integer,6}]}.
    {allocate,0,0}.
    {move,{atom,g},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",166}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,72},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}},
         {atom,g}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,72}.
    {badmatch,{x,0}}.


{function, expects_h, 2, 74}.
  {label,73}.
    {line,[{location,"beam_jump_SUITE.erl",169}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,expects_h},2}.
  {label,74}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,7}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[h]}}]}}.
    {test,is_eq_exact,{f,73},[{tr,{x,0},{t_integer,{0,7}}},{integer,7}]}.
    {allocate,0,0}.
    {move,{atom,h},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",170}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,75},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}},
         {atom,h}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,75}.
    {badmatch,{x,0}}.


{function, ambiguous_catch_try_state_1, 1, 77}.
  {label,76}.
    {line,[{location,"beam_jump_SUITE.erl",175}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,ambiguous_catch_try_state_1},1}.
  {label,77}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,0}}.
    {'try',{y,4},{f,84}}.
    {'try',{y,3},{f,83}}.
    {'try',{y,2},{f,82}}.
    {'try',{y,1},{f,79}}.
  {label,78}.
    {wait_timeout,{f,78},{atom,bad}}.
    timeout.
    {try_end,{y,1}}.
    {move,{atom,timeout},{x,0}}.
    {jump,{f,80}}.
  {label,79}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,{f,81},[{x,0},{y,0}]}.
    {move,{atom,error},{x,0}}.
  {label,80}.
    {try_end,{y,2}}.
    {try_end,{y,3}}.
    {line,[{scope,[6,7]},{location,"beam_jump_SUITE.erl",181}]}.
    {try_case_end,{x,0}}.
  {label,81}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,82}.
    {try_case,{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,83}.
    {try_case,{y,3}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,84}.
    {try_case,{y,4}}.
    {line,[{scope,[1,3,12]},{location,"beam_jump_SUITE.erl",181}]}.
    {badmatch,{atom,b}}.


{function, ambiguous_catch_try_state_2, 0, 86}.
  {label,85}.
    {line,[{location,"beam_jump_SUITE.erl",202}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,ambiguous_catch_try_state_2},0}.
  {label,86}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,88}}.
    {'try',{y,0},{f,87}}.
    {line,[{location,"beam_jump_SUITE.erl",205}]}.
    {badmatch,{integer,0}}.
  {label,87}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,88}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, ambiguous_catch_try_state_3, 0, 90}.
  {label,89}.
    {line,[{location,"beam_jump_SUITE.erl",217}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,ambiguous_catch_try_state_3},0}.
  {label,90}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,92}}.
    {'try',{y,0},{f,91}}.
    {line,[{location,"beam_jump_SUITE.erl",220}]}.
    {badmatch,{integer,0}}.
  {label,91}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,92}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, ambiguous_catch_try_state_4, 0, 94}.
  {label,93}.
    {line,[{location,"beam_jump_SUITE.erl",233}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,ambiguous_catch_try_state_4},0}.
  {label,94}.
    {allocate,1,0}.
    {'try',{y,0},{f,98}}.
    {line,[{location,"beam_jump_SUITE.erl",234}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
    {select_val,{x,0},{f,97},{list,[{atom,false},{f,96},{atom,true},{f,95}]}}.
  {label,95}.
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",234}]}.
    {call_ext,1,{extfunc,erlang,binary_to_float,1}}.
    {try_end,{y,0}}.
    {test,is_eq_exact,{f,99},[{x,0},{float,0.0}]}.
    {deallocate,1}.
    return.
  {label,96}.
    {move,{atom,ok},{x,0}}.
    {call_ext,1,{extfunc,erlang,tuple_to_list,1}}.
    {jump,{f,98}}.
  {label,97}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,98}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,99}.
    {line,[{scope,[1]},{location,"beam_jump_SUITE.erl",234}]}.
    {badmatch,{x,0}}.


{function, build_tuple, 1, 101}.
  {label,100}.
    {line,[{location,"beam_jump_SUITE.erl",242}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,build_tuple},1}.
  {label,101}.
    {allocate,1,0}.
    {'catch',{y,0},{f,102}}.
    {move,{literal,{message2,undefined,undefined}},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",244}]}.
    {call,1,{f,105}}. % do_build_tuple/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,102}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,103},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,103},[{x,1}]}.
    {test,test_arity,{f,103},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,103},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,103},
          [{x,1},{literal,{message2,undefined,undefined}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,103}.
    {line,[{scope,[0]},{location,"beam_jump_SUITE.erl",244}]}.
    {badmatch,{x,0}}.


{function, do_build_tuple, 1, 105}.
  {label,104}.
    {line,[{location,"beam_jump_SUITE.erl",247}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,do_build_tuple},1}.
  {label,105}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[message2]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[undefined]}}}}]}}.
    {allocate,0,0}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",249}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {line,[{location,"beam_jump_SUITE.erl",250}]}.
    {badrecord,{literal,{message2,undefined,undefined}}}.


{function, coverage, 1, 107}.
  {label,106}.
    {line,[{location,"beam_jump_SUITE.erl",253}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,coverage},1}.
  {label,107}.
    {allocate,0,0}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",254}]}.
    {call,1,{f,115}}. % coverage_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,113},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}},
         {atom,ok}]}.
    {move,{literal,{error,badarg}},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",255}]}.
    {call,1,{f,115}}. % coverage_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,112},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}},
         {literal,{error,badarg}}]}.
    {move,{integer,42},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",257}]}.
    {call,2,{f,117}}. % coverage_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[gt,le]}}]}}.
    {test,is_eq_exact,{f,111},[{tr,{x,0},{t_atom,[gt,le]}},{atom,gt}]}.
    {move,{integer,999},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",258}]}.
    {call,2,{f,117}}. % coverage_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[gt,le]}}]}}.
    {test,is_eq_exact,{f,110},[{tr,{x,0},{t_atom,[gt,le]}},{atom,le}]}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",259}]}.
    {call,2,{f,117}}. % coverage_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[gt,le]}}]}}.
    {test,is_eq_exact,{f,109},[{tr,{x,0},{t_atom,[gt,le]}},{atom,le}]}.
    {move,{atom,xxx},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",260}]}.
    {call,2,{f,117}}. % coverage_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[gt,le]}}]}}.
    {test,is_eq_exact,{f,108},[{tr,{x,0},{t_atom,[gt,le]}},{atom,gt}]}.
    {move,{literal,#{key => <<"child">>}},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",262}]}.
    {call,1,{f,122}}. % coverage_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",263}]}.
    {call,1,{f,122}}. % coverage_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",265}]}.
    {call,1,{f,124}}. % coverage_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,any},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",266}]}.
    {call,1,{f,124}}. % coverage_4/1
    {'%',{var_info,{x,0},[{type,{t_float,{-0.5,-0.5}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,108}.
    {line,[{location,"beam_jump_SUITE.erl",260}]}.
    {badmatch,{atom,le}}.
  {label,109}.
    {line,[{location,"beam_jump_SUITE.erl",259}]}.
    {badmatch,{atom,gt}}.
  {label,110}.
    {line,[{location,"beam_jump_SUITE.erl",258}]}.
    {badmatch,{atom,gt}}.
  {label,111}.
    {line,[{location,"beam_jump_SUITE.erl",257}]}.
    {badmatch,{atom,le}}.
  {label,112}.
    {line,[{location,"beam_jump_SUITE.erl",255}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{location,"beam_jump_SUITE.erl",254}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 1, 115}.
  {label,114}.
    {line,[{location,"beam_jump_SUITE.erl",270}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,coverage_1},1}.
  {label,115}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},2 => {t_atom,[badarg]}}}}],
                     none}}]}}.
    {call_only,1,{f,191}}. % id/1


{function, coverage_2, 2, 117}.
  {label,116}.
    {line,[{location,"beam_jump_SUITE.erl",277}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,coverage_2},2}.
  {label,117}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,
                                   {t_integer,{100,100}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[xxx]},
                                   nil,
                                   {t_integer,{42,999}},
                                   none,none}}]}}.
    {test,is_nil,
          {f,118},
          [{tr,{x,0},{t_union,none,nil,{t_integer,{100,100}},none,none}}]}.
    {test,is_nil,
          {f,119},
          [{tr,{x,1},
               {t_union,{t_atom,[xxx]},nil,{t_integer,{42,999}},none,none}}]}.
  {label,118}.
    {test,is_lt,
          {f,120},
          [{tr,{x,1},
               {t_union,{t_atom,[xxx]},nil,{t_integer,{42,999}},none,none}},
           {tr,{x,0},{t_union,none,nil,{t_integer,{100,100}},none,none}}]}.
  {label,119}.
    {move,{atom,gt},{x,0}}.
    return.
  {label,120}.
    {move,{atom,le},{x,0}}.
    return.


{function, coverage_3, 1, 122}.
  {label,121}.
    {line,[{location,"beam_jump_SUITE.erl",297}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,coverage_3},1}.
  {label,122}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[key]},{t_bitstring,8,false}}}]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, coverage_4, 1, 124}.
  {label,123}.
    {line,[{location,"beam_jump_SUITE.erl",303}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,coverage_4},1}.
  {label,124}.
    {'%',{var_info,{x,0},[{type,{t_atom,[any,ok,whatever]}}]}}.
    {test,is_eq_exact,
          {f,125},
          [{tr,{x,0},{t_atom,[any,ok,whatever]}},{atom,whatever}]}.
    {allocate,0,0}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",305}]}.
    {call,1,{f,124}}. % coverage_4/1
    {'%',{var_info,{x,0},[{type,{t_float,{-0.5,-0.5}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,125}.
    {move,{float,-0.5},{x,0}}.
    return.


{function, call_sharing, 1, 127}.
  {label,126}.
    {line,[{location,"beam_jump_SUITE.erl",314}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,call_sharing},1}.
  {label,127}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,{a,1}},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",318}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,137}}. % cs_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,135},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}},
         {literal,{a,1}}]}.
    {move,{literal,{a,1,2}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",319}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,137}}. % cs_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,134},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}},
         {literal,{a,1,2}}]}.
    {move,{literal,{b,1}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",323}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,137}}. % cs_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,133},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}},
         {literal,{b,1}}]}.
    {move,{literal,{b,1,2}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",324}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,137}}. % cs_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {test,is_eq_exact,
        {f,132},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}},
         {literal,{b,1,2}}]}.
    {'catch',{y,1},{f,128}}.
    {move,{literal,{c,1}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",328}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,137}}. % cs_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
  {label,128}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,131},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,129}}.
    {move,{literal,{c,1,2}},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_jump_SUITE.erl",329}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,137}}. % cs_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
  {label,129}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,130},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,130}.
    {line,[{scope,[0]},{location,"beam_jump_SUITE.erl",329}]}.
    {badmatch,{x,0}}.
  {label,131}.
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",328}]}.
    {badmatch,{x,0}}.
  {label,132}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",324}]}.
    {badmatch,{x,0}}.
  {label,133}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",323}]}.
    {badmatch,{x,0}}.
  {label,134}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",319}]}.
    {badmatch,{x,0}}.
  {label,135}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",318}]}.
    {badmatch,{x,0}}.


{function, cs_1, 1, 137}.
  {label,136}.
    {line,[{location,"beam_jump_SUITE.erl",333}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,cs_1},1}.
  {label,137}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {allocate,0,1}.
    {test,is_tuple,
        {f,143},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}}]}.
    {select_tuple_arity,
        {tr,{x,0},
            {t_tuple,2,false,
                #{1 => {t_atom,any},
                  2 =>
                      {t_union,
                          {t_atom,[badarg,right]},
                          none,
                          {t_integer,{1,1}},
                          none,none}}}},
        {f,143},
        {list,[2,{f,140},3,{f,138}]}}.
  {label,138}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{tr,{x,1},{t_atom,any}},
                {f,143},
                {list,[{atom,a},{f,139},{atom,b},{f,139}]}}.
  {label,139}.
    {line,[{location,"beam_jump_SUITE.erl",336}]}.
    {call,1,{f,145}}. % cs_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}},
                      {{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}},
                      {{3,{t_atom,[b]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[b]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}}],
                     none}}]}}.
    {jump,{f,142}}.
  {label,140}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{tr,{x,1},{t_atom,any}},
                {f,143},
                {list,[{atom,a},{f,141},{atom,b},{f,141}]}}.
  {label,141}.
    {call,1,{f,145}}. % cs_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}},
                      {{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}},
                      {{3,{t_atom,[b]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[b]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}}],
                     none}}]}}.
  {label,142}.
    {call_last,1,{f,191},0}. % id/1
  {label,143}.
    {line,[{location,"beam_jump_SUITE.erl",334}]}.
    {case_end,{x,0}}.


{function, cs_2, 1, 145}.
  {label,144}.
    {line,[{location,"beam_jump_SUITE.erl",340}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,cs_2},1}.
  {label,145}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}},
                      {{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}},
                      {{3,{t_atom,[b]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[b]},
                             2 =>
                                 {t_union,
                                     {t_atom,[badarg,right]},
                                     none,
                                     {t_integer,{1,1}},
                                     none,none}}}}],
                     none}}]}}.
    return.


{function, undecided_allocation, 1, 147}.
  {label,146}.
    {line,[{location,"beam_jump_SUITE.erl",342}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,undecided_allocation},1}.
  {label,147}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {'catch',{y,6},{f,148}}.
    {move,{literal,<<0,0,10:5>>},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",343}]}.
    {call,1,{f,165}}. % undecided_allocation_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,148}.
    {catch_end,{y,6}}.
    {test,is_eq_exact,{f,163},[{x,0},{atom,ok}]}.
    {'catch',{y,5},{f,149}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_jump_SUITE.erl",344}]}.
    {call,1,{f,165}}. % undecided_allocation_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,149}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,162},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,162},[{x,1},{literal,{badrecord,<<0>>}}]}.
    {move,{literal,<<"bar">>},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",346}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,169}}. % undecided_allocation_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[bar]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bar]},2 => {t_integer,{1,1}}}}},
                      {{2,{t_atom,[foo]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{2,2}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,161},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[bar]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[bar]},
                                     2 => {t_integer,{1,1}}}}},
                         {{2,{t_atom,[foo]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{2,2}}}}}],
                        none}},
           {literal,{bar,1}}]}.
    {move,{literal,<<"foo">>},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",347}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,169}}. % undecided_allocation_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[bar]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bar]},2 => {t_integer,{1,1}}}}},
                      {{2,{t_atom,[foo]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{2,2}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,160},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[bar]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[bar]},
                                     2 => {t_integer,{1,1}}}}},
                         {{2,{t_atom,[foo]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[foo]},
                                     2 => {t_integer,{2,2}}}}}],
                        none}},
           {literal,{foo,2}}]}.
    {'catch',{y,4},{f,150}}.
    {move,{literal,<<"foobar">>},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",348}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,169}}. % undecided_allocation_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[bar]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bar]},2 => {t_integer,{1,1}}}}},
                      {{2,{t_atom,[foo]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{2,2}}}}}],
                     none}}]}}.
  {label,150}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,159},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,151}}.
    {move,{literal,"foo,bar"},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_jump_SUITE.erl",349}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,169}}. % undecided_allocation_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[bar]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bar]},2 => {t_integer,{1,1}}}}},
                      {{2,{t_atom,[foo]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{2,2}}}}}],
                     none}}]}}.
  {label,151}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,158},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,158},[{x,1}]}.
    {test,test_arity,{f,158},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,158},[{x,1},{literal,{badmatch,error}}]}.
    {'catch',{y,2},{f,152}}.
    {move,{atom,foobar},{x,0}}.
    {line,[{scope,[6]},{location,"beam_jump_SUITE.erl",350}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,169}}. % undecided_allocation_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[bar]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bar]},2 => {t_integer,{1,1}}}}},
                      {{2,{t_atom,[foo]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{2,2}}}}}],
                     none}}]}}.
  {label,152}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,157},[{x,0},2,{atom,'EXIT'}]}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {'catch',{y,1},{f,153}}.
    {line,[{scope,[5,6]},{location,"beam_jump_SUITE.erl",351}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {call,1,{f,169}}. % undecided_allocation_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[bar]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[bar]},2 => {t_integer,{1,1}}}}},
                      {{2,{t_atom,[foo]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[foo]},2 => {t_integer,{2,2}}}}}],
                     none}}]}}.
  {label,153}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,156},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_jump_SUITE.erl",353}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {move,{atom,gurka},{x,1}}.
    {call,2,{f,180}}. % undecided_allocation_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,154}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_jump_SUITE.erl",354}]}.
    {call,1,{f,191}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    {move,{atom,gurka},{x,1}}.
    {call,2,{f,180}}. % undecided_allocation_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,154}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,155},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,155},[{x,1},2,{atom,badarith}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,7}.
    return.
  {label,155}.
    {line,[{scope,[0]},{location,"beam_jump_SUITE.erl",354}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",350}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[6]},{location,"beam_jump_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,"\b"},{location,"beam_jump_SUITE.erl",348}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",347}]}.
    {badmatch,{literal,{bar,1}}}.
  {label,161}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",346}]}.
    {badmatch,{literal,{foo,2}}}.
  {label,162}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",344}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,"\f"},{location,"beam_jump_SUITE.erl",343}]}.
    {badmatch,{x,0}}.


{function, undecided_allocation_1, 1, 165}.
  {label,164}.
    {line,[{location,"beam_jump_SUITE.erl",359}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,undecided_allocation_1},1}.
  {label,165}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{8,8}},
                                   none,
                                   {t_bitstring,1,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,167},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,166},
              {x,0},
              {commands,[{ensure_exactly,21},{'=:=',nil,21,10}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,166}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,2},1}.
    {move,{x,0},{x,1}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",371}]}.
    {call,3,{f,197}}. % '-undecided_allocation_1/1-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {badrecord,{x,0}}.
  {label,167}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{integer,8},{x,2}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,3,{f,197}}. % '-undecided_allocation_1/1-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {badrecord,{x,0}}.


{function, undecided_allocation_2, 1, 169}.
  {label,168}.
    {line,[{location,"beam_jump_SUITE.erl",376}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,undecided_allocation_2},1}.
  {label,169}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}},
             accepts_match_context]}}.
    {test,bs_start_match3,{f,175},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,172},
              {x,1},
              {commands,[{ensure_at_least,24,1},
                         {integer,2,{literal,[]},24,1,{x,2}}]}}.
    {select_val,{tr,{x,2},{t_integer,{0,16777215}}},
                {f,172},
                {list,[{integer,6447474},{f,171},{integer,6713199},{f,170}]}}.
  {label,170}.
    {bs_match,{f,172},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,{foo,2}},{x,0}}.
    return.
  {label,171}.
    {bs_match,{f,172},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,{bar,1}},{x,0}}.
    return.
  {label,172}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{literal,"o"},{x,1}}.
    {move,{literal,"foo"},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",384}]}.
    {call_ext,2,{extfunc,string,split,2}}.
    {test,is_ne_exact,{f,178},[{x,0},nil]}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{y,1},0}.
    {test,is_binary,{f,173},[{tr,{y,1},{t_bitstring,1,false}}]}.
    {move,{y,1},{x,0}}.
    {jump,{f,174}}.
  {label,173}.
    {move,{literal,","},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"beam_jump_SUITE.erl",401}]}.
    {call_ext,2,{extfunc,string,split,2}}.
  {label,174}.
    {line,[{location,"beam_jump_SUITE.erl",398}]}.
    {call_ext,1,{extfunc,lists,flatten,1}}.
    {jump,{f,178}}.
  {label,175}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,"o"},{x,1}}.
    {move,{literal,"foo"},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",384}]}.
    {call_ext,2,{extfunc,string,split,2}}.
    {test,is_ne_exact,{f,178},[{x,0},nil]}.
    {test,is_binary,
        {f,176},
        [{tr,{y,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}}]}.
    {move,{y,0},{x,0}}.
    {jump,{f,177}}.
  {label,176}.
    {move,{literal,","},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_jump_SUITE.erl",401}]}.
    {call_ext,2,{extfunc,string,split,2}}.
  {label,177}.
    {line,[{location,"beam_jump_SUITE.erl",398}]}.
    {call_ext,1,{extfunc,lists,flatten,1}}.
  {label,178}.
    {line,[{location,"beam_jump_SUITE.erl",377}]}.
    {badmatch,{atom,error}}.


{function, undecided_allocation_3, 2, 180}.
  {label,179}.
    {line,[{location,"beam_jump_SUITE.erl",410}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,undecided_allocation_3},2}.
  {label,180}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}},
             accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[gurka]}}]}}.
    {test,bs_start_match3,{f,185},1,[{x,0}],{x,1}}.
    {bs_match,{f,181},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,181}.
    {allocate,0,0}.
    {line,[{location,"beam_jump_SUITE.erl",413}]}.
    {call_ext,0,{extfunc,erlang,get_keys,0}}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,0}],{x,0}}.
    {bif,node,{f,0},[],{x,0}}.
    {select_val,{tr,{x,0},{t_atom,any}},
                {f,184},
                {list,[{atom,false},{f,182},{atom,true},{f,183}]}}.
  {label,182}.
    {line,[{location,"beam_jump_SUITE.erl",417}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
  {label,183}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {line,[{location,"beam_jump_SUITE.erl",418}]}.
    {case_end,{x,0}}.
  {label,184}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"beam_jump_SUITE.erl",417}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,185}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_jump_SUITE.erl",413}]}.
    {call_ext,0,{extfunc,erlang,get_keys,0}}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,0}],{x,0}}.
    {test,is_eq_exact,
        {f,186},
        [{tr,{x,0},{t_number,any}},
         {tr,{y,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{44,114}},nil},
                 {t_integer,{1,42}},
                 {t_tuple,2,false,
                     #{1 => {t_atom,any},
                       2 =>
                           {t_union,
                               {t_atom,[badarg,right]},
                               none,
                               {t_integer,{1,1}},
                               none,none}}},
                 other}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,186}.
    {bif,node,{f,0},[],{x,0}}.
    {select_val,{tr,{x,0},{t_atom,any}},
                {f,189},
                {list,[{atom,false},{f,187},{atom,true},{f,188}]}}.
  {label,187}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_jump_SUITE.erl",417}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
  {label,188}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {line,[{location,"beam_jump_SUITE.erl",418}]}.
    {case_end,{x,0}}.
  {label,189}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"beam_jump_SUITE.erl",417}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.


{function, id, 1, 191}.
  {label,190}.
    {line,[{location,"beam_jump_SUITE.erl",424}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,id},1}.
  {label,191}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{44,114}},nil},
                     {t_integer,{1,42}},
                     {t_tuple,2,false,
                         #{1 => {t_atom,any},
                           2 =>
                               {t_union,
                                   {t_atom,[badarg,right]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}},
                     other}}]}}.
    return.


{function, module_info, 0, 193}.
  {label,192}.
    {line,[]}.
    {func_info,{atom,beam_jump_SUITE},{atom,module_info},0}.
  {label,193}.
    {move,{atom,beam_jump_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 195}.
  {label,194}.
    {line,[]}.
    {func_info,{atom,beam_jump_SUITE},{atom,module_info},1}.
  {label,195}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_jump_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-undecided_allocation_1/1-lbc$^0/2-0-', 3, 197}.
  {label,196}.
    {line,[{location,"beam_jump_SUITE.erl",371}]}.
    {func_info,{atom,beam_jump_SUITE},
               {atom,'-undecided_allocation_1/1-lbc$^0/2-0-'},
               3}.
  {label,197}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,none,
                                   {t_integer,{8,8}},
                                   none,
                                   {t_bitstring,1,false}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,199},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},
               {t_union,none,none,
                        {t_integer,{8,8}},
                        none,
                        {t_bitstring,1,false}}},
           1,
           {field_flags,[{anno,[371,{file,"beam_jump_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,198},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {line,[{location,"beam_jump_SUITE.erl",372}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,3,{f,197}}. % '-undecided_allocation_1/1-lbc$^0/2-0-'/3
  {label,198}.
    {call_only,3,{f,197}}. % '-undecided_allocation_1/1-lbc$^0/2-0-'/3
  {label,199}.
    {move,{x,1},{x,0}}.
    return.


{function, '-unsafe_move_elimination/1-lc$^0/1-0-', 1, 201}.
  {label,200}.
    {line,[{location,"beam_jump_SUITE.erl",101}]}.
    {func_info,{atom,beam_jump_SUITE},
               {atom,'-unsafe_move_elimination/1-lc$^0/1-0-'},
               1}.
  {label,201}.
    {test,is_nonempty_list,{f,202},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,58}}. % unsafe_move_elimination_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,201},1}. % '-unsafe_move_elimination/1-lc$^0/1-0-'/1
  {label,202}.
    {test,is_nil,{f,203},[{x,0}]}.
    return.
  {label,203}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
