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

{labels, 205}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_jump_SUITE.erl",29}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_jump_SUITE.erl",32}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_jump_SUITE.erl",35}]}.
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
    {line,[{location,"beam_jump_SUITE.erl",46}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_jump_SUITE},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",47}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_jump_SUITE.erl",50}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_jump_SUITE.erl",53}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_jump_SUITE.erl",56}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, undefined_label, 1, 16}.
  {label,15}.
    {line,[{location,"beam_jump_SUITE.erl",59}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,undefined_label},1}.
  {label,16}.
    {allocate,1,0}.
    {'catch',{y,0},{f,17}}.
    {move,nil,{x,1}}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",60}]}.
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
    {line,[{scope,[0]},{location,"beam_jump_SUITE.erl",60}]}.
    {badmatch,{x,0}}.


{function, flights, 3, 20}.
  {label,19}.
    {line,[{location,"beam_jump_SUITE.erl",65}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,flights},3}.
  {label,20}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {'%',{var_info,{x,2},[{type,nil}]}}.
    {jump,{f,19}}.


{function, ambiguous_catch_try_state, 1, 22}.
  {label,21}.
    {line,[{location,"beam_jump_SUITE.erl",73}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,ambiguous_catch_try_state},1}.
  {label,22}.
    {allocate,6,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,3},{y,4},{y,5}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",75}]}.
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
    {line,[{scope,"\f"},{location,"beam_jump_SUITE.erl",77}]}.
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
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",79}]}.
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
    {line,[{scope,"\b"},{location,"beam_jump_SUITE.erl",80}]}.
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
    {line,[{scope,[6]},{location,"beam_jump_SUITE.erl",82}]}.
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
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",83}]}.
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
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",85}]}.
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
    {line,[{scope,[0]},{location,"beam_jump_SUITE.erl",85}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",83}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",82}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,[6]},{location,"beam_jump_SUITE.erl",80}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,"\b"},{location,"beam_jump_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",77}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,"\f"},{location,"beam_jump_SUITE.erl",74}]}.
    {badmatch,{x,0}}.


{function, river, 0, 37}.
  {label,36}.
    {line,[{location,"beam_jump_SUITE.erl",89}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,river},0}.
  {label,37}.
    {move,{atom,song},{x,0}}.
    return.


{function, checks, 1, 39}.
  {label,38}.
    {line,[{location,"beam_jump_SUITE.erl",91}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,checks},1}.
  {label,39}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,40}}.
    {line,[{location,"beam_jump_SUITE.erl",93}]}.
    {call,0,{f,37}}. % river/0
    {'%',{var_info,{x,0},[{type,{t_atom,[song]}}]}}.
    {case_end,{atom,song}}.
  {label,40}.
    {catch_end,{y,1}}.
    {move,{x,0},{y,1}}.
    {'catch',{y,0},{f,41}}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",93}]}.
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
    {line,[{location,"beam_jump_SUITE.erl",96}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,unsafe_sharing},0}.
  {label,43}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,45}}.
    {'try',{y,0},{f,44}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,192}}. % id/1
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
    {line,[{location,"beam_jump_SUITE.erl",98}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,unsafe_move_elimination},1}.
  {label,47}.
    {allocate,0,0}.
    {move,{atom,right},{x,1}}.
    {move,{atom,false},{x,2}}.
    {move,{atom,left},{x,0}}.
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
    {line,[{location,"beam_jump_SUITE.erl",101}]}.
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
    {line,[{location,"beam_jump_SUITE.erl",102}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,202}}. % '-unsafe_move_elimination/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,48}.
    {line,[{location,"beam_jump_SUITE.erl",101}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{location,"beam_jump_SUITE.erl",100}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{location,"beam_jump_SUITE.erl",99}]}.
    {badmatch,{x,0}}.


{function, unsafe_move_elimination_1, 3, 52}.
  {label,51}.
    {line,[{location,"beam_jump_SUITE.erl",105}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,unsafe_move_elimination_1},3}.
  {label,52}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,left,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[right]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[false,true]}}]}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",106}]}.
    {call,1,{f,192}}. % id/1
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
    {line,[{location,"beam_jump_SUITE.erl",126}]}.
    {call,1,{f,192}}. % id/1
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
    {line,[{location,"beam_jump_SUITE.erl",132}]}.
    {call,1,{f,192}}. % id/1
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
    {line,[{location,"beam_jump_SUITE.erl",134}]}.
    {call,1,{f,192}}. % id/1
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
    {line,[{location,"beam_jump_SUITE.erl",124}]}.
    {case_end,{x,0}}.


{function, unsafe_move_elimination_2, 1, 58}.
  {label,57}.
    {line,[{location,"beam_jump_SUITE.erl",136}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,unsafe_move_elimination_2},1}.
  {label,58}.
    {line,[{location,"beam_jump_SUITE.erl",149}]}.
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
    {line,[{location,"beam_jump_SUITE.erl",163}]}.
    {call,1,{f,192}}. % id/1
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
    {line,[{location,"beam_jump_SUITE.erl",166}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,expects_g},2}.
  {label,71}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,6}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[g]}}]}}.
    {test,is_eq_exact,{f,70},[{tr,{x,0},{t_integer,{0,6}}},{integer,6}]}.
    {allocate,0,0}.
    {move,{atom,g},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",167}]}.
    {call,1,{f,192}}. % id/1
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
    {line,[{location,"beam_jump_SUITE.erl",170}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,expects_h},2}.
  {label,74}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,7}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[h]}}]}}.
    {test,is_eq_exact,{f,73},[{tr,{x,0},{t_integer,{0,7}}},{integer,7}]}.
    {allocate,0,0}.
    {move,{atom,h},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",171}]}.
    {call,1,{f,192}}. % id/1
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
    {line,[{location,"beam_jump_SUITE.erl",176}]}.
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
    {line,[{scope,[6,7]},{location,"beam_jump_SUITE.erl",182}]}.
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
    {line,[{scope,[1,3,12]},{location,"beam_jump_SUITE.erl",182}]}.
    {badmatch,{atom,b}}.


{function, ambiguous_catch_try_state_2, 0, 86}.
  {label,85}.
    {line,[{location,"beam_jump_SUITE.erl",203}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,ambiguous_catch_try_state_2},0}.
  {label,86}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,88}}.
    {'try',{y,0},{f,87}}.
    {line,[{location,"beam_jump_SUITE.erl",206}]}.
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
    {line,[{location,"beam_jump_SUITE.erl",218}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,ambiguous_catch_try_state_3},0}.
  {label,90}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,92}}.
    {'try',{y,0},{f,91}}.
    {line,[{location,"beam_jump_SUITE.erl",221}]}.
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
    {line,[{location,"beam_jump_SUITE.erl",234}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,ambiguous_catch_try_state_4},0}.
  {label,94}.
    {allocate,1,0}.
    {'try',{y,0},{f,98}}.
    {line,[{location,"beam_jump_SUITE.erl",235}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
    {select_val,{x,0},{f,97},{list,[{atom,false},{f,96},{atom,true},{f,95}]}}.
  {label,95}.
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",235}]}.
    {call_ext,1,{extfunc,erlang,binary_to_float,1}}.
    {try_end,{y,0}}.
    {test,is_eq_exact,{f,99},[{x,0},{float,0.0}]}.
    {deallocate,1}.
    return.
  {label,96}.
    {move,{atom,ok},{x,0}}.
    {call_ext,1,{extfunc,erlang,tuple_to_list,1}}.
    {test,is_eq_exact,{f,100},[{x,0},{float,1.0}]}.
    {move,{atom,ok},{x,1}}.
    {line,[{scope,[1]},{location,"beam_jump_SUITE.erl",235}]}.
    {call_ext,2,{extfunc,erlang,'--',2}}.
    {jump,{f,98}}.
  {label,97}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",235}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,98}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,99}.
    {line,[{scope,[1]},{location,"beam_jump_SUITE.erl",235}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {badmatch,{x,0}}.


{function, build_tuple, 1, 102}.
  {label,101}.
    {line,[{location,"beam_jump_SUITE.erl",243}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,build_tuple},1}.
  {label,102}.
    {allocate,1,0}.
    {'catch',{y,0},{f,103}}.
    {move,{literal,{message2,undefined,undefined}},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",245}]}.
    {call,1,{f,106}}. % do_build_tuple/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,103}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,104},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,104},[{x,1}]}.
    {test,test_arity,{f,104},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,104},[{x,1},2,{atom,badrecord}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,104},
          [{x,1},{literal,{message2,undefined,undefined}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,104}.
    {line,[{scope,[0]},{location,"beam_jump_SUITE.erl",245}]}.
    {badmatch,{x,0}}.


{function, do_build_tuple, 1, 106}.
  {label,105}.
    {line,[{location,"beam_jump_SUITE.erl",248}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,do_build_tuple},1}.
  {label,106}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[message2]},
                                     2 => {t_atom,[undefined]},
                                     3 => {t_atom,[undefined]}}}}]}}.
    {allocate,0,0}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",250}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {line,[{location,"beam_jump_SUITE.erl",251}]}.
    {badrecord,{literal,{message2,undefined,undefined}}}.


{function, coverage, 1, 108}.
  {label,107}.
    {line,[{location,"beam_jump_SUITE.erl",254}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,coverage},1}.
  {label,108}.
    {allocate,0,0}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",255}]}.
    {call,1,{f,116}}. % coverage_1/1
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
        {f,114},
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
    {line,[{location,"beam_jump_SUITE.erl",256}]}.
    {call,1,{f,116}}. % coverage_1/1
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
         {literal,{error,badarg}}]}.
    {move,{integer,42},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",258}]}.
    {call,2,{f,118}}. % coverage_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[gt,le]}}]}}.
    {test,is_eq_exact,{f,112},[{tr,{x,0},{t_atom,[gt,le]}},{atom,gt}]}.
    {move,{integer,999},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",259}]}.
    {call,2,{f,118}}. % coverage_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[gt,le]}}]}}.
    {test,is_eq_exact,{f,111},[{tr,{x,0},{t_atom,[gt,le]}},{atom,le}]}.
    {move,nil,{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",260}]}.
    {call,2,{f,118}}. % coverage_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[gt,le]}}]}}.
    {test,is_eq_exact,{f,110},[{tr,{x,0},{t_atom,[gt,le]}},{atom,le}]}.
    {move,{atom,xxx},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",261}]}.
    {call,2,{f,118}}. % coverage_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[gt,le]}}]}}.
    {test,is_eq_exact,{f,109},[{tr,{x,0},{t_atom,[gt,le]}},{atom,gt}]}.
    {move,{literal,#{key => <<"child">>}},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",263}]}.
    {call,1,{f,123}}. % coverage_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",264}]}.
    {call,1,{f,123}}. % coverage_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",266}]}.
    {call,1,{f,125}}. % coverage_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,any},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",267}]}.
    {call,1,{f,125}}. % coverage_4/1
    {'%',{var_info,{x,0},[{type,{t_float,{-0.5,-0.5}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,109}.
    {line,[{location,"beam_jump_SUITE.erl",261}]}.
    {badmatch,{atom,le}}.
  {label,110}.
    {line,[{location,"beam_jump_SUITE.erl",260}]}.
    {badmatch,{atom,gt}}.
  {label,111}.
    {line,[{location,"beam_jump_SUITE.erl",259}]}.
    {badmatch,{atom,gt}}.
  {label,112}.
    {line,[{location,"beam_jump_SUITE.erl",258}]}.
    {badmatch,{atom,le}}.
  {label,113}.
    {line,[{location,"beam_jump_SUITE.erl",256}]}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{location,"beam_jump_SUITE.erl",255}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 1, 116}.
  {label,115}.
    {line,[{location,"beam_jump_SUITE.erl",271}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,coverage_1},1}.
  {label,116}.
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
    {call_only,1,{f,192}}. % id/1


{function, coverage_2, 2, 118}.
  {label,117}.
    {line,[{location,"beam_jump_SUITE.erl",278}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,coverage_2},2}.
  {label,118}.
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
          {f,119},
          [{tr,{x,0},{t_union,none,nil,{t_integer,{100,100}},none,none}}]}.
    {test,is_nil,
          {f,120},
          [{tr,{x,1},
               {t_union,{t_atom,[xxx]},nil,{t_integer,{42,999}},none,none}}]}.
  {label,119}.
    {test,is_lt,
          {f,121},
          [{tr,{x,1},
               {t_union,{t_atom,[xxx]},nil,{t_integer,{42,999}},none,none}},
           {tr,{x,0},{t_union,none,nil,{t_integer,{100,100}},none,none}}]}.
  {label,120}.
    {move,{atom,gt},{x,0}}.
    return.
  {label,121}.
    {move,{atom,le},{x,0}}.
    return.


{function, coverage_3, 1, 123}.
  {label,122}.
    {line,[{location,"beam_jump_SUITE.erl",298}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,coverage_3},1}.
  {label,123}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[key]},{t_bitstring,8,false}}}]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, coverage_4, 1, 125}.
  {label,124}.
    {line,[{location,"beam_jump_SUITE.erl",304}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,coverage_4},1}.
  {label,125}.
    {'%',{var_info,{x,0},[{type,{t_atom,[any,ok,whatever]}}]}}.
    {test,is_eq_exact,
          {f,126},
          [{tr,{x,0},{t_atom,[any,ok,whatever]}},{atom,whatever}]}.
    {allocate,0,0}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",306}]}.
    {call,1,{f,125}}. % coverage_4/1
    {'%',{var_info,{x,0},[{type,{t_float,{-0.5,-0.5}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,126}.
    {move,{float,-0.5},{x,0}}.
    return.


{function, call_sharing, 1, 128}.
  {label,127}.
    {line,[{location,"beam_jump_SUITE.erl",315}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,call_sharing},1}.
  {label,128}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,{a,1}},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",319}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,138}}. % cs_1/1
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
        {f,136},
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
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",320}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,138}}. % cs_1/1
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
         {literal,{a,1,2}}]}.
    {move,{literal,{b,1}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",324}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,138}}. % cs_1/1
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
         {literal,{b,1}}]}.
    {move,{literal,{b,1,2}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",325}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,138}}. % cs_1/1
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
         {literal,{b,1,2}}]}.
    {'catch',{y,1},{f,129}}.
    {move,{literal,{c,1}},{x,0}}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",329}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,138}}. % cs_1/1
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
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,132},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,130}}.
    {move,{literal,{c,1,2}},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_jump_SUITE.erl",330}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,138}}. % cs_1/1
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
  {label,130}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,131},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,131}.
    {line,[{scope,[0]},{location,"beam_jump_SUITE.erl",330}]}.
    {badmatch,{x,0}}.
  {label,132}.
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",329}]}.
    {badmatch,{x,0}}.
  {label,133}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",325}]}.
    {badmatch,{x,0}}.
  {label,134}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",324}]}.
    {badmatch,{x,0}}.
  {label,135}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",320}]}.
    {badmatch,{x,0}}.
  {label,136}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",319}]}.
    {badmatch,{x,0}}.


{function, cs_1, 1, 138}.
  {label,137}.
    {line,[{location,"beam_jump_SUITE.erl",334}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,cs_1},1}.
  {label,138}.
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
        {f,144},
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
        {f,144},
        {list,[2,{f,141},3,{f,139}]}}.
  {label,139}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{tr,{x,1},{t_atom,any}},
                {f,144},
                {list,[{atom,a},{f,140},{atom,b},{f,140}]}}.
  {label,140}.
    {line,[{location,"beam_jump_SUITE.erl",337}]}.
    {call,1,{f,146}}. % cs_2/1
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
    {jump,{f,143}}.
  {label,141}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{tr,{x,1},{t_atom,any}},
                {f,144},
                {list,[{atom,a},{f,142},{atom,b},{f,142}]}}.
  {label,142}.
    {call,1,{f,146}}. % cs_2/1
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
  {label,143}.
    {call_last,1,{f,192},0}. % id/1
  {label,144}.
    {line,[{location,"beam_jump_SUITE.erl",335}]}.
    {case_end,{x,0}}.


{function, cs_2, 1, 146}.
  {label,145}.
    {line,[{location,"beam_jump_SUITE.erl",341}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,cs_2},1}.
  {label,146}.
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


{function, undecided_allocation, 1, 148}.
  {label,147}.
    {line,[{location,"beam_jump_SUITE.erl",343}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,undecided_allocation},1}.
  {label,148}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {'catch',{y,6},{f,149}}.
    {move,{literal,<<0,0,10:5>>},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",344}]}.
    {call,1,{f,166}}. % undecided_allocation_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,149}.
    {catch_end,{y,6}}.
    {test,is_eq_exact,{f,164},[{x,0},{atom,ok}]}.
    {'catch',{y,5},{f,150}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,"\f"},{location,"beam_jump_SUITE.erl",345}]}.
    {call,1,{f,166}}. % undecided_allocation_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,150}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,163},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,163},[{x,1}]}.
    {test,test_arity,{f,163},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,163},[{x,1},{literal,{badrecord,<<0>>}}]}.
    {move,{literal,<<"bar">>},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",347}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,170}}. % undecided_allocation_2/1
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
          {f,162},
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
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",348}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,170}}. % undecided_allocation_2/1
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
           {literal,{foo,2}}]}.
    {'catch',{y,4},{f,151}}.
    {move,{literal,<<"foobar">>},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",349}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,170}}. % undecided_allocation_2/1
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
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,160},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,152}}.
    {move,{literal,"foo,bar"},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_jump_SUITE.erl",350}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,170}}. % undecided_allocation_2/1
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
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,159},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,159},[{x,1}]}.
    {test,test_arity,{f,159},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,159},[{x,1},{literal,{badmatch,error}}]}.
    {'catch',{y,2},{f,153}}.
    {move,{atom,foobar},{x,0}}.
    {line,[{scope,[6]},{location,"beam_jump_SUITE.erl",351}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,170}}. % undecided_allocation_2/1
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
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,158},[{x,0},2,{atom,'EXIT'}]}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {'catch',{y,1},{f,154}}.
    {line,[{scope,[5,6]},{location,"beam_jump_SUITE.erl",352}]}.
    {call,1,{f,192}}. % id/1
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
    {call,1,{f,170}}. % undecided_allocation_2/1
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
  {label,154}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,157},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_jump_SUITE.erl",354}]}.
    {call,1,{f,192}}. % id/1
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
    {call,2,{f,181}}. % undecided_allocation_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,155}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"beam_jump_SUITE.erl",355}]}.
    {call,1,{f,192}}. % id/1
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
    {call,2,{f,181}}. % undecided_allocation_3/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,155}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,156},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,156},[{x,1},2,{atom,badarith}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,7}.
    return.
  {label,156}.
    {line,[{scope,[0]},{location,"beam_jump_SUITE.erl",355}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,[2]},{location,"beam_jump_SUITE.erl",352}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[4]},{location,"beam_jump_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[6]},{location,"beam_jump_SUITE.erl",350}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,"\b"},{location,"beam_jump_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",348}]}.
    {badmatch,{literal,{bar,1}}}.
  {label,162}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",347}]}.
    {badmatch,{literal,{foo,2}}}.
  {label,163}.
    {line,[{scope,"\n"},{location,"beam_jump_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,"\f"},{location,"beam_jump_SUITE.erl",344}]}.
    {badmatch,{x,0}}.


{function, undecided_allocation_1, 1, 166}.
  {label,165}.
    {line,[{location,"beam_jump_SUITE.erl",360}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,undecided_allocation_1},1}.
  {label,166}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{8,8}},
                                   none,
                                   {t_bitstring,1,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,168},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,167},
              {x,0},
              {commands,[{ensure_exactly,21},{'=:=',nil,21,10}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,167}.
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
    {line,[{location,"beam_jump_SUITE.erl",372}]}.
    {call,3,{f,198}}. % '-undecided_allocation_1/1-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {badrecord,{x,0}}.
  {label,168}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{integer,8},{x,2}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,3,{f,198}}. % '-undecided_allocation_1/1-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {badrecord,{x,0}}.


{function, undecided_allocation_2, 1, 170}.
  {label,169}.
    {line,[{location,"beam_jump_SUITE.erl",377}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,undecided_allocation_2},1}.
  {label,170}.
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
    {test,bs_start_match3,{f,176},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,173},
              {x,1},
              {commands,[{ensure_at_least,24,1},
                         {integer,2,{literal,[]},24,1,{x,2}}]}}.
    {select_val,{tr,{x,2},{t_integer,{0,16777215}}},
                {f,173},
                {list,[{integer,6447474},{f,172},{integer,6713199},{f,171}]}}.
  {label,171}.
    {bs_match,{f,173},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,{foo,2}},{x,0}}.
    return.
  {label,172}.
    {bs_match,{f,173},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,{bar,1}},{x,0}}.
    return.
  {label,173}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{literal,"o"},{x,1}}.
    {move,{literal,"foo"},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",385}]}.
    {call_ext,2,{extfunc,string,split,2}}.
    {test,is_ne_exact,{f,179},[{x,0},nil]}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{y,1},0}.
    {test,is_binary,{f,174},[{tr,{y,1},{t_bitstring,1,false}}]}.
    {move,{y,1},{x,0}}.
    {jump,{f,175}}.
  {label,174}.
    {move,{literal,","},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"beam_jump_SUITE.erl",402}]}.
    {call_ext,2,{extfunc,string,split,2}}.
  {label,175}.
    {line,[{location,"beam_jump_SUITE.erl",399}]}.
    {call_ext,1,{extfunc,lists,flatten,1}}.
    {jump,{f,179}}.
  {label,176}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,"o"},{x,1}}.
    {move,{literal,"foo"},{x,0}}.
    {line,[{location,"beam_jump_SUITE.erl",385}]}.
    {call_ext,2,{extfunc,string,split,2}}.
    {test,is_ne_exact,{f,179},[{x,0},nil]}.
    {test,is_binary,
        {f,177},
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
    {jump,{f,178}}.
  {label,177}.
    {move,{literal,","},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_jump_SUITE.erl",402}]}.
    {call_ext,2,{extfunc,string,split,2}}.
  {label,178}.
    {line,[{location,"beam_jump_SUITE.erl",399}]}.
    {call_ext,1,{extfunc,lists,flatten,1}}.
  {label,179}.
    {line,[{location,"beam_jump_SUITE.erl",378}]}.
    {badmatch,{atom,error}}.


{function, undecided_allocation_3, 2, 181}.
  {label,180}.
    {line,[{location,"beam_jump_SUITE.erl",411}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,undecided_allocation_3},2}.
  {label,181}.
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
    {test,bs_start_match3,{f,186},1,[{x,0}],{x,1}}.
    {bs_match,{f,182},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,182}.
    {allocate,0,0}.
    {line,[{location,"beam_jump_SUITE.erl",414}]}.
    {call_ext,0,{extfunc,erlang,get_keys,0}}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,0}],{x,0}}.
    {bif,node,{f,0},[],{x,0}}.
    {select_val,{tr,{x,0},{t_atom,any}},
                {f,185},
                {list,[{atom,false},{f,183},{atom,true},{f,184}]}}.
  {label,183}.
    {line,[{location,"beam_jump_SUITE.erl",418}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
  {label,184}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {line,[{location,"beam_jump_SUITE.erl",419}]}.
    {case_end,{x,0}}.
  {label,185}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"beam_jump_SUITE.erl",418}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,186}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_jump_SUITE.erl",414}]}.
    {call_ext,0,{extfunc,erlang,get_keys,0}}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,0}],{x,0}}.
    {test,is_eq_exact,
        {f,187},
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
  {label,187}.
    {bif,node,{f,0},[],{x,0}}.
    {select_val,{tr,{x,0},{t_atom,any}},
                {f,190},
                {list,[{atom,false},{f,188},{atom,true},{f,189}]}}.
  {label,188}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_jump_SUITE.erl",418}]}.
    {call_ext,0,{extfunc,erlang,garbage_collect,0}}.
  {label,189}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {line,[{location,"beam_jump_SUITE.erl",419}]}.
    {case_end,{x,0}}.
  {label,190}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"beam_jump_SUITE.erl",418}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.


{function, id, 1, 192}.
  {label,191}.
    {line,[{location,"beam_jump_SUITE.erl",425}]}.
    {func_info,{atom,beam_jump_SUITE},{atom,id},1}.
  {label,192}.
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


{function, module_info, 0, 194}.
  {label,193}.
    {line,[]}.
    {func_info,{atom,beam_jump_SUITE},{atom,module_info},0}.
  {label,194}.
    {move,{atom,beam_jump_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 196}.
  {label,195}.
    {line,[]}.
    {func_info,{atom,beam_jump_SUITE},{atom,module_info},1}.
  {label,196}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_jump_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-undecided_allocation_1/1-lbc$^0/2-0-', 3, 198}.
  {label,197}.
    {line,[{location,"beam_jump_SUITE.erl",372}]}.
    {func_info,{atom,beam_jump_SUITE},
               {atom,'-undecided_allocation_1/1-lbc$^0/2-0-'},
               3}.
  {label,198}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,none,
                                   {t_integer,{8,8}},
                                   none,
                                   {t_bitstring,1,false}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,200},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},
               {t_union,none,none,
                        {t_integer,{8,8}},
                        none,
                        {t_bitstring,1,false}}},
           1,
           {field_flags,[{anno,[372,{file,"beam_jump_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,199},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {line,[{location,"beam_jump_SUITE.erl",373}]}.
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
    {call_only,3,{f,198}}. % '-undecided_allocation_1/1-lbc$^0/2-0-'/3
  {label,199}.
    {call_only,3,{f,198}}. % '-undecided_allocation_1/1-lbc$^0/2-0-'/3
  {label,200}.
    {move,{x,1},{x,0}}.
    return.


{function, '-unsafe_move_elimination/1-lc$^0/1-0-', 1, 202}.
  {label,201}.
    {line,[{location,"beam_jump_SUITE.erl",102}]}.
    {func_info,{atom,beam_jump_SUITE},
               {atom,'-unsafe_move_elimination/1-lc$^0/1-0-'},
               1}.
  {label,202}.
    {test,is_nonempty_list,{f,203},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,58}}. % unsafe_move_elimination_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,202},1}. % '-unsafe_move_elimination/1-lc$^0/1-0-'/1
  {label,203}.
    {test,is_nil,{f,204},[{x,0}]}.
    return.
  {label,204}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
