{module, maybe_SUITE}.  %% version = 0

{exports, [{all,0},
           {basic,1},
           {end_per_suite,1},
           {groups,0},
           {init_per_suite,1},
           {module_info,0},
           {module_info,1},
           {nested,1}]}.

{attributes, []}.

{labels, 128}.


{function, all, 0, 2}.
  {label,1}.
    {line,[{location,"maybe_SUITE.erl",32}]}.
    {func_info,{atom,maybe_SUITE},{atom,all},0}.
  {label,2}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 4}.
  {label,3}.
    {line,[{location,"maybe_SUITE.erl",35}]}.
    {func_info,{atom,maybe_SUITE},{atom,groups},0}.
  {label,4}.
    {move,{literal,[{p,[parallel],[basic,nested]}]},{x,0}}.
    return.


{function, init_per_suite, 1, 6}.
  {label,5}.
    {line,[{location,"maybe_SUITE.erl",39}]}.
    {func_info,{atom,maybe_SUITE},{atom,init_per_suite},1}.
  {label,6}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,maybe_SUITE},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",40}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"maybe_SUITE.erl",43}]}.
    {func_info,{atom,maybe_SUITE},{atom,end_per_suite},1}.
  {label,8}.
    {move,{atom,ok},{x,0}}.
    return.


{function, basic, 1, 10}.
  {label,9}.
    {line,[{location,"maybe_SUITE.erl",48}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic},1}.
  {label,10}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,#{0 => {ok,42},42 => {ok,fish}}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",49}]}.
    {call,2,{f,37}}. % basic_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{3,{t_atom,[ok]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,35},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{3,{t_atom,[ok]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}},
         {literal,{ok,42,fish}}]}.
    {move,{literal,#{0 => {ok,42},42 => {error,whatever}}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",50}]}.
    {call,2,{f,37}}. % basic_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{3,{t_atom,[ok]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,34},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{3,{t_atom,[ok]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}},
         {atom,error}]}.
    {move,{literal,#{0 => {ok,42},42 => error}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",51}]}.
    {call,2,{f,37}}. % basic_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{3,{t_atom,[ok]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,33},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{3,{t_atom,[ok]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}},
         {atom,error}]}.
    {move,{literal,#{0 => error}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",52}]}.
    {call,2,{f,37}}. % basic_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{3,{t_atom,[ok]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,32},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{3,{t_atom,[ok]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}},
         {atom,error}]}.
    {move,{literal,#{0 => {error,whatever}}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",53}]}.
    {call,2,{f,37}}. % basic_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{3,{t_atom,[ok]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,31},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{3,{t_atom,[ok]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}},
         {atom,error}]}.
    {move,{literal,#{0 => {value,some_value}}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",54}]}.
    {call,2,{f,37}}. % basic_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{3,{t_atom,[ok]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,30},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{3,{t_atom,[ok]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}},
         {atom,some_value}]}.
    {'catch',{y,3},{f,11}}.
    {move,{literal,#{0 => something_wrong}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",55}]}.
    {call,2,{f,37}}. % basic_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{3,{t_atom,[ok]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
  {label,11}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,29},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,29},[{x,1}]}.
    {test,test_arity,{f,29},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,29},[{x,2},{literal,{else_clause,something_wrong}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,29},[{x,1}]}.
    {move,{literal,#{0 => {ok,life},
                     life => "universe",
                     "universe" => {ok,everything}}},
          {x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"maybe_SUITE.erl",57}]}.
    {call,2,{f,63}}. % basic_2/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 => {t_cons,{t_integer,{101,118}},nil},
              4 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,28},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{4,{t_atom,[ok]}},
                   {t_tuple,4,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 => {t_cons,{t_integer,{101,118}},nil},
                         4 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}},
         {literal,{ok,life,"universe",everything}}]}.
    {move,{literal,#{0 => {ok,life},life => "universe","universe" => error}},
          {x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"maybe_SUITE.erl",60}]}.
    {call,2,{f,63}}. % basic_2/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 => {t_cons,{t_integer,{101,118}},nil},
              4 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,27},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{4,{t_atom,[ok]}},
                   {t_tuple,4,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 => {t_cons,{t_integer,{101,118}},nil},
                         4 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}},
         {atom,error}]}.
    {'catch',{y,2},{f,12}}.
    {move,{literal,#{0 => {ok,life},life => not_a_list}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"maybe_SUITE.erl",63}]}.
    {call,2,{f,63}}. % basic_2/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 => {t_cons,{t_integer,{101,118}},nil},
              4 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
  {label,12}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,26},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,26},[{x,1}]}.
    {test,test_arity,{f,26},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,26},[{x,2},{literal,{badmatch,not_a_list}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,26},[{x,1}]}.
    {'catch',{y,1},{f,13}}.
    {move,{literal,#{0 => {ok,life},life => "universe","universe" => not_ok}},
          {x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[4]},{location,"maybe_SUITE.erl",65}]}.
    {call,2,{f,63}}. % basic_2/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 => {t_cons,{t_integer,{101,118}},nil},
              4 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
  {label,13}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,25},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,25},[{x,1}]}.
    {test,test_arity,{f,25},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,25},[{x,2},{literal,{else_clause,not_ok}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,25},[{x,1}]}.
    {'catch',{y,0},{f,14}}.
    {move,{literal,#{0 => not_ok}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"maybe_SUITE.erl",68}]}.
    {call,2,{f,63}}. % basic_2/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 => {t_cons,{t_integer,{101,118}},nil},
              4 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
  {label,14}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,24},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,24},[{x,1}]}.
    {test,test_arity,{f,24},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,24},[{x,2},{literal,{else_clause,not_ok}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,24},[{x,1}]}.
    {move,{literal,#{0 => {ok,42},
                     42 => {ok,fish},
                     fish => {ok,{value,dolphins}}}},
          {x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",70}]}.
    {call,2,{f,84}}. % basic_3/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
          {{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              4 => {t_atom,[dolphins]}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,23},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
                  {{4,{t_atom,[ok]}},
                   {t_tuple,4,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         4 => {t_atom,[dolphins]}}}}],
                 none}},
         {literal,{ok,42,fish,dolphins}}]}.
    {move,{literal,#{0 => {ok,42},42 => {error,whatever}}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",72}]}.
    {call,2,{f,84}}. % basic_3/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
          {{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              4 => {t_atom,[dolphins]}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,22},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
                  {{4,{t_atom,[ok]}},
                   {t_tuple,4,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         4 => {t_atom,[dolphins]}}}}],
                 none}},
         {literal,{error,whatever}}]}.
    {move,{literal,#{0 => {ok,42},42 => failed}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",73}]}.
    {call,2,{f,84}}. % basic_3/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
          {{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              4 => {t_atom,[dolphins]}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,21},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
                  {{4,{t_atom,[ok]}},
                   {t_tuple,4,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         4 => {t_atom,[dolphins]}}}}],
                 none}},
         {atom,failed}]}.
    {move,{literal,#{0 => failed_early}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",74}]}.
    {call,2,{f,84}}. % basic_3/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
          {{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              4 => {t_atom,[dolphins]}}}}],
         none}}]}}.
    {test,is_eq_exact,
        {f,20},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
                  {{4,{t_atom,[ok]}},
                   {t_tuple,4,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         4 => {t_atom,[dolphins]}}}}],
                 none}},
         {atom,failed_early}]}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",76}]}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {test,is_eq_exact,
        {f,15},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}},
         {atom,nomatch}]}.
    {badmatch,{atom,nomatch}}.
  {label,15}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",77}]}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {test,is_eq_exact,
        {f,16},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}},
         {atom,nomatch}]}.
    {badmatch,{atom,nomatch}}.
  {label,16}.
    {move,{atom,x},{x,0}}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",79}]}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {test,is_eq_exact,
        {f,19},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}},
         {atom,x}]}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",87}]}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {test,is_eq_exact,
        {f,18},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}},
         {atom,whatever}]}.
    {move,{literal,{<<0>>}},{x,0}}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",93}]}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {call,1,{f,93}}. % basic_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,17},
          [{tr,{x,0},
               {t_union,{t_atom,[error,ok,value]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<0>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,17}.
    {badmatch,{x,0}}.
  {label,18}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",86}]}.
    {badmatch,{x,0}}.
  {label,19}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,20}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",74}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",73}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",72}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",70}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{scope,[0]},{location,"maybe_SUITE.erl",68}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{scope,[2]},{location,"maybe_SUITE.erl",65}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{scope,[4]},{location,"maybe_SUITE.erl",63}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{scope,[6]},{location,"maybe_SUITE.erl",60}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{scope,[6]},{location,"maybe_SUITE.erl",57}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[6]},{location,"maybe_SUITE.erl",55}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",54}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",53}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",52}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",51}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",50}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,"\b"},{location,"maybe_SUITE.erl",49}]}.
    {badmatch,{x,0}}.


{function, basic_1, 2, 37}.
  {label,36}.
    {line,[{location,"maybe_SUITE.erl",97}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_1},2}.
  {label,37}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_map,
         {t_integer,{0,42}},
         {t_union,
          {t_atom,[error,something_wrong]},
          none,none,
          [{{2,{t_atom,[error]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[error]},2 => {t_atom,[whatever]}}}},
           {{2,{t_atom,[ok]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[ok]},
               2 =>
                {t_union,
                 {t_atom,[fish]},
                 none,
                 {t_integer,{42,42}},
                 none,none}}}},
           {{2,{t_atom,[value]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
          none}}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"maybe_SUITE.erl",98}]}.
    {call,2,{f,41}}. % basic_1a/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{3,{t_atom,[ok]}},
           {t_tuple,3,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",99}]}.
    {call,2,{f,48}}. % basic_1b/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_atom,[wrapped]},
           2 =>
            {t_union,
             {t_atom,[error,some_value]},
             none,none,
             [{{3,{t_atom,[ok]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[ok]},
                  2 =>
                   {t_union,
                    {t_atom,[everything,fish,life,x]},
                    none,
                    {t_integer,{42,42}},
                    [{{2,{t_atom,[value]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                    none},
                  3 =>
                   {t_union,
                    {t_atom,[everything,fish,life,x]},
                    none,
                    {t_integer,{42,42}},
                    [{{2,{t_atom,[value]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
        {f,39},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{3,{t_atom,[ok]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}},
         {tr,{y,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{3,{t_atom,[ok]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}}]}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",100}]}.
    {call,2,{f,55}}. % basic_1c/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_atom,[wrapped]},
           2 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{101,118}},nil},
             none,
             {t_tuple,2,false,
              #{1 => {t_atom,[error,ok,value]},
                2 =>
                 {t_union,
                  {t_atom,any},
                  none,
                  {t_integer,{42,42}},
                  [{{2,{t_atom,[value]}},
                    {t_tuple,2,true,
                     #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                  none}}},
             none}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
        {f,38},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 {t_tuple,2,false,
                     #{1 => {t_atom,[error,ok,value]},
                       2 =>
                           {t_union,
                               {t_atom,any},
                               none,
                               {t_integer,{42,42}},
                               [{{2,{t_atom,[value]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[value]},
                                       2 => {t_atom,[dolphins]}}}}],
                               none}}},
                 none}},
         {tr,{y,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{3,{t_atom,[ok]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,38}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{location,"maybe_SUITE.erl",99}]}.
    {badmatch,{x,0}}.


{function, basic_1a, 2, 41}.
  {label,40}.
    {line,[{location,"maybe_SUITE.erl",103}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_1a},2}.
  {label,41}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_map,
         {t_integer,{0,42}},
         {t_union,
          {t_atom,[error,something_wrong]},
          none,none,
          [{{2,{t_atom,[error]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[error]},2 => {t_atom,[whatever]}}}},
           {{2,{t_atom,[ok]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[ok]},
               2 =>
                {t_union,
                 {t_atom,[fish]},
                 none,
                 {t_integer,{42,42}},
                 none,none}}}},
           {{2,{t_atom,[value]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
          none}}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"maybe_SUITE.erl",105}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {move,{x,0},{y,0}}.
    {test,is_tagged_tuple,
        {f,42},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",106}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,43},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{y,0},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,42}.
    {move,{y,0},{x,0}}.
  {label,43}.
    {test,is_tuple,
          {f,45},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{101,118}},nil},
                        none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_atom,[inner,whatever]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[value]},
                                     2 => {t_atom,[some_value]}}}}],
                        none}}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,44},[{x,0},{atom,value}]}.
    {move,{atom,some_value},{x,0}}.
    {deallocate,2}.
    return.
  {label,44}.
    {move,{atom,error},{x,0}}.
    {deallocate,2}.
    return.
  {label,45}.
    {test,is_eq_exact,
          {f,46},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{101,118}},nil},
                        none,none,none}},
           {atom,error}]}.
    {deallocate,2}.
    return.
  {label,46}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,else_clause},{x,0}]}}.
    {line,[{location,"maybe_SUITE.erl",104}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.


{function, basic_1b, 2, 48}.
  {label,47}.
    {line,[{location,"maybe_SUITE.erl",117}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_1b},2}.
  {label,48}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_map,
         {t_integer,{0,42}},
         {t_union,
          {t_atom,[error,something_wrong]},
          none,none,
          [{{2,{t_atom,[error]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[error]},2 => {t_atom,[whatever]}}}},
           {{2,{t_atom,[ok]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[ok]},
               2 =>
                {t_union,
                 {t_atom,[fish]},
                 none,
                 {t_integer,{42,42}},
                 none,none}}}},
           {{2,{t_atom,[value]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
          none}}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"maybe_SUITE.erl",120}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {move,{x,0},{y,0}}.
    {test,is_tagged_tuple,
        {f,49},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",121}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,50},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {test_heap,7,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{y,0},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,wrapped},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,49}.
    {move,{y,0},{x,0}}.
  {label,50}.
    {test,is_tuple,
          {f,51},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{101,118}},nil},
                        none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_atom,[inner,whatever]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[value]},
                                     2 => {t_atom,[some_value]}}}}],
                        none}}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,52},[{x,0},{atom,value}]}.
    {move,{literal,{wrapped,some_value}},{x,0}}.
    {deallocate,2}.
    return.
  {label,51}.
    {test,is_eq_exact,
          {f,53},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{101,118}},nil},
                        none,none,none}},
           {atom,error}]}.
  {label,52}.
    {move,{literal,{wrapped,error}},{x,0}}.
    {deallocate,2}.
    return.
  {label,53}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,else_clause},{x,0}]}}.
    {line,[{location,"maybe_SUITE.erl",119}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.


{function, basic_1c, 2, 55}.
  {label,54}.
    {line,[{location,"maybe_SUITE.erl",133}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_1c},2}.
  {label,55}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_map,
         {t_integer,{0,42}},
         {t_union,
          {t_atom,[error,something_wrong]},
          none,none,
          [{{2,{t_atom,[error]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[error]},2 => {t_atom,[whatever]}}}},
           {{2,{t_atom,[ok]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[ok]},
               2 =>
                {t_union,
                 {t_atom,[fish]},
                 none,
                 {t_integer,{42,42}},
                 none,none}}}},
           {{2,{t_atom,[value]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
          none}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,1},{y,3}}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",134}]}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {move,{x,0},{y,2}}.
    {move,{atom,error},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",135}]}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {move,{x,0},{y,1}}.
    {move,{y,3},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",138}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {move,{x,0},{y,0}}.
    {test,is_tuple,
        {f,56},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,
        {f,56},
        [{tr,{x,0},{t_atom,[error,ok,value]}},
         {tr,{y,2},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}}]}.
    {get_tuple_element,{y,0},1,{y,0}}.
    {move,{y,3},{x,1}}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",139}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tuple,
        {f,57},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,57},
          [{tr,{x,1},{t_atom,[error,ok,value]}},
           {tr,{y,2},{t_atom,[error,ok,value]}}]}.
    {test_heap,7,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{y,2},{y,0},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,wrapped},{x,0}]}}.
    {deallocate,4}.
    return.
  {label,56}.
    {move,{y,0},{x,0}}.
  {label,57}.
    {test,is_tuple,
        {f,58},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_ne_exact,
        {f,59},
        [{tr,{x,1},{t_atom,[error,ok,value]}},
         {tr,{y,1},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}}]}.
  {label,58}.
    {test,is_eq_exact,
        {f,60},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         {tr,{y,1},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}}]}.
  {label,59}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,wrapped},{y,1}]}}.
    {deallocate,4}.
    return.
  {label,60}.
    {test,is_tagged_tuple,
        {f,61},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,value}]}.
    {move,{literal,{wrapped,some_value}},{x,0}}.
    {deallocate,4}.
    return.
  {label,61}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,else_clause},{x,0}]}}.
    {line,[{location,"maybe_SUITE.erl",137}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.


{function, basic_2, 2, 63}.
  {label,62}.
    {line,[{location,"maybe_SUITE.erl",151}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_2},2}.
  {label,63}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_union,
                         {t_atom,[life]},
                         {t_cons,{t_integer,{101,118}},nil},
                         {t_integer,{0,0}},
                         none,none},
                     {t_union,
                         {t_atom,[error,not_a_list,not_ok]},
                         {t_cons,{t_integer,{101,118}},nil},
                         none,
                         [{{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},
                                 2 => {t_atom,[everything,life]}}}}],
                         none}}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"maybe_SUITE.erl",152}]}.
    {call,2,{f,66}}. % basic_2a/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error,some_value]},
         none,none,
         [{{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 => {t_cons,{t_integer,{101,118}},nil},
              4 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}}],
         none}}]}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",153}]}.
    {call,2,{f,74}}. % basic_2b/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_atom,[wrapped]},
           2 =>
            {t_union,
             {t_atom,[error,some_value]},
             none,none,
             [{{4,{t_atom,[ok]}},
               {t_tuple,4,true,
                #{1 => {t_atom,[ok]},
                  2 =>
                   {t_union,
                    {t_atom,[everything,fish,life,x]},
                    none,
                    {t_integer,{42,42}},
                    [{{2,{t_atom,[value]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                    none},
                  3 => {t_cons,{t_integer,{101,118}},nil},
                  4 =>
                   {t_union,
                    {t_atom,[everything,fish,life,x]},
                    none,
                    {t_integer,{42,42}},
                    [{{2,{t_atom,[value]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                    none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
        {f,64},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{4,{t_atom,[ok]}},
                   {t_tuple,4,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 => {t_cons,{t_integer,{101,118}},nil},
                         4 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}},
         {tr,{y,0},
             {t_union,
                 {t_atom,[error,some_value]},
                 none,none,
                 [{{4,{t_atom,[ok]}},
                   {t_tuple,4,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 => {t_cons,{t_integer,{101,118}},nil},
                         4 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}}],
                 none}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,64}.
    {badmatch,{x,0}}.


{function, basic_2a, 2, 66}.
  {label,65}.
    {line,[{location,"maybe_SUITE.erl",156}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_2a},2}.
  {label,66}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_union,
                         {t_atom,[life]},
                         {t_cons,{t_integer,{101,118}},nil},
                         {t_integer,{0,0}},
                         none,none},
                     {t_union,
                         {t_atom,[error,not_a_list,not_ok]},
                         {t_cons,{t_integer,{101,118}},nil},
                         none,
                         [{{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},
                                 2 => {t_atom,[everything,life]}}}}],
                         none}}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {line,[{location,"maybe_SUITE.erl",158}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {move,{x,0},{y,1}}.
    {test,is_tagged_tuple,
        {f,67},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{y,2},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",159}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {move,{x,0},{y,0}}.
    {test,is_nonempty_list,{f,72},[{x,0}]}.
    {move,{y,2},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"maybe_SUITE.erl",160}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,68},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {test_heap,5,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{y,1},{y,0},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,67}.
    {move,{y,1},{x,0}}.
  {label,68}.
    {test,is_tuple,
          {f,70},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{101,118}},nil},
                        none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_atom,[inner,whatever]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[value]},
                                     2 => {t_atom,[some_value]}}}}],
                        none}}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,69},[{x,0},{atom,value}]}.
    {move,{atom,some_value},{x,0}}.
    {deallocate,3}.
    return.
  {label,69}.
    {move,{atom,error},{x,0}}.
    {deallocate,3}.
    return.
  {label,70}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{101,118}},nil},
                        none,none,none}},
           {atom,error}]}.
    {deallocate,3}.
    return.
  {label,71}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,else_clause},{x,0}]}}.
    {line,[{location,"maybe_SUITE.erl",157}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,72}.
    {line,[{location,"maybe_SUITE.erl",159}]}.
    {badmatch,{x,0}}.


{function, basic_2b, 2, 74}.
  {label,73}.
    {line,[{location,"maybe_SUITE.erl",171}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_2b},2}.
  {label,74}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_union,
                         {t_atom,[life]},
                         {t_cons,{t_integer,{101,118}},nil},
                         {t_integer,{0,0}},
                         none,none},
                     {t_union,
                         {t_atom,[error,not_a_list,not_ok]},
                         {t_cons,{t_integer,{101,118}},nil},
                         none,
                         [{{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},
                                 2 => {t_atom,[everything,life]}}}}],
                         none}}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {line,[{location,"maybe_SUITE.erl",174}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {move,{x,0},{y,1}}.
    {test,is_tagged_tuple,
        {f,75},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{y,2},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",175}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {move,{x,0},{y,0}}.
    {test,is_nonempty_list,{f,82},[{x,0}]}.
    {move,{y,2},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"maybe_SUITE.erl",176}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,76},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {test_heap,5,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{y,1},{y,0},{x,0}]}}.
    {move,{x,0},{y,2}}.
    {jump,{f,80}}.
  {label,75}.
    {move,{y,1},{x,0}}.
  {label,76}.
    {test,is_tuple,
          {f,78},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{101,118}},nil},
                        none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_atom,[inner,whatever]}}}},
                         {{2,{t_atom,[value]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[value]},
                                     2 => {t_atom,[some_value]}}}}],
                        none}}]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,77},[{x,0},{atom,value}]}.
    {move,{atom,some_value},{x,0}}.
    {jump,{f,79}}.
  {label,77}.
    {move,{atom,error},{x,0}}.
    {jump,{f,79}}.
  {label,78}.
    {test,is_eq_exact,
          {f,81},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,{t_integer,{101,118}},nil},
                        none,none,none}},
           {atom,error}]}.
  {label,79}.
    {move,{x,0},{y,2}}.
  {label,80}.
    {trim,2,1}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",186}]}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,wrapped},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,81}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,else_clause},{x,0}]}}.
    {line,[{location,"maybe_SUITE.erl",173}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,82}.
    {line,[{location,"maybe_SUITE.erl",175}]}.
    {badmatch,{x,0}}.


{function, basic_3, 2, 84}.
  {label,83}.
    {line,[{location,"maybe_SUITE.erl",189}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_3},2}.
  {label,84}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_map,
         {t_union,{t_atom,[fish]},none,{t_integer,{0,42}},none,none},
         {t_union,
          {t_atom,[failed,failed_early]},
          none,none,
          [{{2,{t_atom,[error]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[error]},2 => {t_atom,[whatever]}}}},
           {{2,{t_atom,[ok]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[ok]},
               2 =>
                {t_union,
                 {t_atom,[fish]},
                 none,
                 {t_integer,{42,42}},
                 [{{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                 none}}}}],
          none}}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"maybe_SUITE.erl",190}]}.
    {call,2,{f,87}}. % basic_3a/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
          {{4,{t_atom,[ok]}},
           {t_tuple,4,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              3 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none},
              4 => {t_atom,[dolphins]}}}}],
         none}}]}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",191}]}.
    {call,2,{f,90}}. % basic_3b/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_atom,[wrapped]},
           2 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{101,118}},nil},
             none,
             [{{2,{t_atom,[error]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
              {{2,{t_atom,[ok]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[ok]},
                  2 =>
                   {t_union,
                    {t_atom,[everything,fish,life,x]},
                    none,
                    {t_integer,{42,42}},
                    [{{2,{t_atom,[value]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                    none}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
              {{4,{t_atom,[ok]}},
               {t_tuple,4,true,
                #{1 => {t_atom,[ok]},
                  2 =>
                   {t_union,
                    {t_atom,[everything,fish,life,x]},
                    none,
                    {t_integer,{42,42}},
                    [{{2,{t_atom,[value]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                    none},
                  3 =>
                   {t_union,
                    {t_atom,[everything,fish,life,x]},
                    none,
                    {t_integer,{42,42}},
                    [{{2,{t_atom,[value]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                    none},
                  4 => {t_atom,[dolphins]}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
        {f,85},
        [{tr,{x,1},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
                  {{4,{t_atom,[ok]}},
                   {t_tuple,4,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         4 => {t_atom,[dolphins]}}}}],
                 none}},
         {tr,{y,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}},
                  {{4,{t_atom,[ok]}},
                   {t_tuple,4,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         3 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none},
                         4 => {t_atom,[dolphins]}}}}],
                 none}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,85}.
    {badmatch,{x,0}}.


{function, basic_3a, 2, 87}.
  {label,86}.
    {line,[{location,"maybe_SUITE.erl",194}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_3a},2}.
  {label,87}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_map,
         {t_union,{t_atom,[fish]},none,{t_integer,{0,42}},none,none},
         {t_union,
          {t_atom,[failed,failed_early]},
          none,none,
          [{{2,{t_atom,[error]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[error]},2 => {t_atom,[whatever]}}}},
           {{2,{t_atom,[ok]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[ok]},
               2 =>
                {t_union,
                 {t_atom,[fish]},
                 none,
                 {t_integer,{42,42}},
                 [{{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                 none}}}}],
          none}}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {line,[{location,"maybe_SUITE.erl",196}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,88},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{y,2},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",197}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,88},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,2},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",198}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,88},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,
          {f,88},
          [{tr,{x,1},
               {t_union,{t_atom,[everything,fish,life,x]},
                        none,
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[value]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[value]},
                                     2 => {t_atom,[dolphins]}}}}],
                        none}}]}.
    {test_heap,5,0}.
    {put_tuple2,{x,0},{list,[{atom,ok},{y,1},{y,0},{atom,dolphins}]}}.
    {deallocate,3}.
    return.
  {label,88}.
    {deallocate,3}.
    return.


{function, basic_3b, 2, 90}.
  {label,89}.
    {line,[{location,"maybe_SUITE.erl",202}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_3b},2}.
  {label,90}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_map,
         {t_union,{t_atom,[fish]},none,{t_integer,{0,42}},none,none},
         {t_union,
          {t_atom,[failed,failed_early]},
          none,none,
          [{{2,{t_atom,[error]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[error]},2 => {t_atom,[whatever]}}}},
           {{2,{t_atom,[ok]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[ok]},
               2 =>
                {t_union,
                 {t_atom,[fish]},
                 none,
                 {t_integer,{42,42}},
                 [{{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                 none}}}}],
          none}}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {line,[{location,"maybe_SUITE.erl",205}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,91},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{y,2},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",206}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,91},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,2},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",207}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,91},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,
          {f,91},
          [{tr,{x,1},
               {t_union,{t_atom,[everything,fish,life,x]},
                        none,
                        {t_integer,{42,42}},
                        [{{2,{t_atom,[value]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[value]},
                                     2 => {t_atom,[dolphins]}}}}],
                        none}}]}.
    {test_heap,8,0}.
    {put_tuple2,{x,0},{list,[{atom,ok},{y,1},{y,0},{atom,dolphins}]}}.
    {put_tuple2,{x,0},{list,[{atom,wrapped},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,91}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,wrapped},{x,0}]}}.
    {deallocate,3}.
    return.


{function, basic_4, 1, 93}.
  {label,92}.
    {line,[{location,"maybe_SUITE.erl",212}]}.
    {func_info,{atom,maybe_SUITE},{atom,basic_4},1}.
  {label,93}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {test,is_tuple,
        {f,92},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}}]}.
    {test,test_arity,{f,92},[{x,0},1]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    return.


{function, nested, 1, 95}.
  {label,94}.
    {line,[{location,"maybe_SUITE.erl",217}]}.
    {func_info,{atom,maybe_SUITE},{atom,nested},1}.
  {label,95}.
    {allocate,0,0}.
    {move,{literal,#{0 => not_ok}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",218}]}.
    {call,2,{f,100}}. % nested_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 =>
            {t_union,
             {t_atom,[everything,fish,life,outer_fail,x]},
             none,
             {t_integer,{42,42}},
             [{{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
             none},
           2 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{101,118}},nil},
             none,
             [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
              {{2,{t_atom,[unexpected]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[unexpected]},
                  2 =>
                   {t_union,
                    {t_atom,any},
                    {t_cons,{t_integer,{101,118}},nil},
                    {t_integer,{0,42}},
                    {t_tuple,1,false,
                     #{1 =>
                        {t_union,
                         {t_atom,[error,ok,value]},
                         none,none,none,
                         {t_bitstring,8,false}}}},
                    none}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,98},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 =>
           {t_union,
            {t_atom,[everything,fish,life,outer_fail,x]},
            none,
            {t_integer,{42,42}},
            [{{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
            none},
          2 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{101,118}},nil},
            none,
            [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
             {{2,{t_atom,[unexpected]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[unexpected]},
                 2 =>
                  {t_union,
                   {t_atom,any},
                   {t_cons,{t_integer,{101,118}},nil},
                   {t_integer,{0,42}},
                   {t_tuple,1,false,
                    #{1 =>
                       {t_union,
                        {t_atom,[error,ok,value]},
                        none,none,none,
                        {t_bitstring,8,false}}}},
                   none}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
            none}}}},
      {literal,{outer_fail,not_ok}}]}.
    {move,{literal,#{0 => {ok,x},x => {error,inner}}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",219}]}.
    {call,2,{f,100}}. % nested_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 =>
            {t_union,
             {t_atom,[everything,fish,life,outer_fail,x]},
             none,
             {t_integer,{42,42}},
             [{{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
             none},
           2 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{101,118}},nil},
             none,
             [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
              {{2,{t_atom,[unexpected]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[unexpected]},
                  2 =>
                   {t_union,
                    {t_atom,any},
                    {t_cons,{t_integer,{101,118}},nil},
                    {t_integer,{0,42}},
                    {t_tuple,1,false,
                     #{1 =>
                        {t_union,
                         {t_atom,[error,ok,value]},
                         none,none,none,
                         {t_bitstring,8,false}}}},
                    none}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,97},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 =>
           {t_union,
            {t_atom,[everything,fish,life,outer_fail,x]},
            none,
            {t_integer,{42,42}},
            [{{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
            none},
          2 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{101,118}},nil},
            none,
            [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
             {{2,{t_atom,[unexpected]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[unexpected]},
                 2 =>
                  {t_union,
                   {t_atom,any},
                   {t_cons,{t_integer,{101,118}},nil},
                   {t_integer,{0,42}},
                   {t_tuple,1,false,
                    #{1 =>
                       {t_union,
                        {t_atom,[error,ok,value]},
                        none,none,none,
                        {t_bitstring,8,false}}}},
                   none}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
            none}}}},
      {literal,{x,{error,inner}}}]}.
    {move,{literal,#{0 => {ok,x},x => not_error}},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",220}]}.
    {call,2,{f,100}}. % nested_1/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 =>
            {t_union,
             {t_atom,[everything,fish,life,outer_fail,x]},
             none,
             {t_integer,{42,42}},
             [{{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
             none},
           2 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{101,118}},nil},
             none,
             [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
              {{2,{t_atom,[unexpected]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[unexpected]},
                  2 =>
                   {t_union,
                    {t_atom,any},
                    {t_cons,{t_integer,{101,118}},nil},
                    {t_integer,{0,42}},
                    {t_tuple,1,false,
                     #{1 =>
                        {t_union,
                         {t_atom,[error,ok,value]},
                         none,none,none,
                         {t_bitstring,8,false}}}},
                    none}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,96},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 =>
           {t_union,
            {t_atom,[everything,fish,life,outer_fail,x]},
            none,
            {t_integer,{42,42}},
            [{{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
            none},
          2 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{101,118}},nil},
            none,
            [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
             {{2,{t_atom,[unexpected]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[unexpected]},
                 2 =>
                  {t_union,
                   {t_atom,any},
                   {t_cons,{t_integer,{101,118}},nil},
                   {t_integer,{0,42}},
                   {t_tuple,1,false,
                    #{1 =>
                       {t_union,
                        {t_atom,[error,ok,value]},
                        none,none,none,
                        {t_bitstring,8,false}}}},
                   none}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
            none}}}},
      {literal,{outer_fail,{unexpected,not_error}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,96}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{location,"maybe_SUITE.erl",219}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{location,"maybe_SUITE.erl",218}]}.
    {badmatch,{x,0}}.


{function, nested_1, 2, 100}.
  {label,99}.
    {line,[{location,"maybe_SUITE.erl",223}]}.
    {func_info,{atom,maybe_SUITE},{atom,nested_1},2}.
  {label,100}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_union,{t_atom,[x]},none,{t_integer,{0,0}},none,none},
                     {t_union,
                         {t_atom,[not_error,not_ok]},
                         none,none,
                         [{{2,{t_atom,[error]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[error]},
                                 2 => {t_atom,[inner]}}}},
                          {{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => {t_atom,[x]}}}}],
                         none}}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"maybe_SUITE.erl",224}]}.
    {call,2,{f,104}}. % nested_1a/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 =>
            {t_union,
             {t_atom,[everything,fish,life,outer_fail,x]},
             none,
             {t_integer,{42,42}},
             [{{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
             none},
           2 =>
            {t_union,
             {t_atom,any},
             {t_cons,{t_integer,{101,118}},nil},
             none,
             [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
              {{2,{t_atom,[unexpected]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[unexpected]},
                  2 =>
                   {t_union,
                    {t_atom,any},
                    {t_cons,{t_integer,{101,118}},nil},
                    {t_integer,{0,42}},
                    {t_tuple,1,false,
                     #{1 =>
                        {t_union,
                         {t_atom,[error,ok,value]},
                         none,none,none,
                         {t_bitstring,8,false}}}},
                    none}}}},
              {{2,{t_atom,[value]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
             none}}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",225}]}.
    {call,2,{f,109}}. % nested_1b/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_atom,[wrapped]},
           2 =>
            {t_tuple,2,true,
             #{1 =>
                {t_union,
                 {t_atom,[everything,fish,life,outer_fail,x]},
                 none,
                 {t_integer,{42,42}},
                 [{{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                 none},
               2 =>
                {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[unexpected]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[unexpected]},
                      2 =>
                       {t_union,
                        {t_atom,any},
                        {t_cons,{t_integer,{101,118}},nil},
                        {t_integer,{0,42}},
                        {t_tuple,1,false,
                         #{1 =>
                            {t_union,
                             {t_atom,[error,ok,value]},
                             none,none,none,
                             {t_bitstring,8,false}}}},
                        none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}}}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
     {f,102},
     [{tr,
       {x,1},
       {t_tuple,2,true,
        #{1 =>
           {t_union,
            {t_atom,[everything,fish,life,outer_fail,x]},
            none,
            {t_integer,{42,42}},
            [{{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
            none},
          2 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{101,118}},nil},
            none,
            [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
             {{2,{t_atom,[unexpected]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[unexpected]},
                 2 =>
                  {t_union,
                   {t_atom,any},
                   {t_cons,{t_integer,{101,118}},nil},
                   {t_integer,{0,42}},
                   {t_tuple,1,false,
                    #{1 =>
                       {t_union,
                        {t_atom,[error,ok,value]},
                        none,none,none,
                        {t_bitstring,8,false}}}},
                   none}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
            none}}}},
      {tr,
       {y,0},
       {t_tuple,2,true,
        #{1 =>
           {t_union,
            {t_atom,[everything,fish,life,outer_fail,x]},
            none,
            {t_integer,{42,42}},
            [{{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
            none},
          2 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{101,118}},nil},
            none,
            [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
             {{2,{t_atom,[unexpected]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[unexpected]},
                 2 =>
                  {t_union,
                   {t_atom,any},
                   {t_cons,{t_integer,{101,118}},nil},
                   {t_integer,{0,42}},
                   {t_tuple,1,false,
                    #{1 =>
                       {t_union,
                        {t_atom,[error,ok,value]},
                        none,none,none,
                        {t_bitstring,8,false}}}},
                   none}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
            none}}}}]}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",226}]}.
    {call,2,{f,115}}. % nested_1c/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_atom,[wrapped]},
           2 =>
            {t_tuple,2,true,
             #{1 =>
                {t_union,
                 {t_atom,[everything,fish,life,outer_fail,x]},
                 none,
                 {t_integer,{42,42}},
                 [{{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                 none},
               2 =>
                {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,#{1 => {t_atom,[error]}}}},
                  {{2,{t_atom,[unexpected]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[unexpected]},
                      2 =>
                       {t_union,
                        {t_atom,any},
                        {t_cons,{t_integer,{101,118}},nil},
                        {t_integer,{0,42}},
                        {t_tuple,1,false,
                         #{1 =>
                            {t_union,
                             {t_atom,[error,ok,value]},
                             none,none,none,
                             {t_bitstring,8,false}}}},
                        none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}}}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
     {f,101},
     [{tr,
       {x,1},
       {t_tuple,2,true,
        #{1 =>
           {t_union,
            {t_atom,[everything,fish,life,outer_fail,x]},
            none,
            {t_integer,{42,42}},
            [{{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
            none},
          2 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{101,118}},nil},
            none,
            [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
             {{2,{t_atom,[unexpected]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[unexpected]},
                 2 =>
                  {t_union,
                   {t_atom,any},
                   {t_cons,{t_integer,{101,118}},nil},
                   {t_integer,{0,42}},
                   {t_tuple,1,false,
                    #{1 =>
                       {t_union,
                        {t_atom,[error,ok,value]},
                        none,none,none,
                        {t_bitstring,8,false}}}},
                   none}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
            none}}}},
      {tr,
       {y,0},
       {t_tuple,2,true,
        #{1 =>
           {t_union,
            {t_atom,[everything,fish,life,outer_fail,x]},
            none,
            {t_integer,{42,42}},
            [{{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
            none},
          2 =>
           {t_union,
            {t_atom,any},
            {t_cons,{t_integer,{101,118}},nil},
            none,
            [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
             {{2,{t_atom,[unexpected]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[unexpected]},
                 2 =>
                  {t_union,
                   {t_atom,any},
                   {t_cons,{t_integer,{101,118}},nil},
                   {t_integer,{0,42}},
                   {t_tuple,1,false,
                    #{1 =>
                       {t_union,
                        {t_atom,[error,ok,value]},
                        none,none,none,
                        {t_bitstring,8,false}}}},
                   none}}}},
             {{2,{t_atom,[value]}},
              {t_tuple,2,true,
               #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
            none}}}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,101}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{location,"maybe_SUITE.erl",225}]}.
    {badmatch,{x,0}}.


{function, nested_1a, 2, 104}.
  {label,103}.
    {line,[{location,"maybe_SUITE.erl",229}]}.
    {func_info,{atom,maybe_SUITE},{atom,nested_1a},2}.
  {label,104}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_union,{t_atom,[x]},none,{t_integer,{0,0}},none,none},
                     {t_union,
                         {t_atom,[not_error,not_ok]},
                         none,none,
                         [{{2,{t_atom,[error]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[error]},
                                 2 => {t_atom,[inner]}}}},
                          {{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => {t_atom,[x]}}}}],
                         none}}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"maybe_SUITE.erl",231}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {test,is_tagged_tuple,
        {f,107},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",234}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {test,is_tagged_tuple,
        {f,105},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}},
         2,
         {atom,error}]}.
    {jump,{f,106}}.
  {label,105}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,unexpected},{x,0}]}}.
  {label,106}.
    {test,is_tagged_tuple,
     {f,107},
     [{tr,
       {x,0},
       {t_union,none,none,none,
        [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
         {{2,{t_atom,[unexpected]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[unexpected]},
             2 =>
              {t_union,
               {t_atom,any},
               {t_cons,{t_integer,{101,118}},nil},
               {t_integer,{0,42}},
               {t_tuple,1,false,
                #{1 =>
                   {t_union,
                    {t_atom,[error,ok,value]},
                    none,none,none,
                    {t_bitstring,8,false}}}},
               none}}}}],
        none}},
      2,
      {atom,error}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,107}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,outer_fail},{x,0}]}}.
    {deallocate,2}.
    return.


{function, nested_1b, 2, 109}.
  {label,108}.
    {line,[{location,"maybe_SUITE.erl",243}]}.
    {func_info,{atom,maybe_SUITE},{atom,nested_1b},2}.
  {label,109}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_union,{t_atom,[x]},none,{t_integer,{0,0}},none,none},
                     {t_union,
                         {t_atom,[not_error,not_ok]},
                         none,none,
                         [{{2,{t_atom,[error]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[error]},
                                 2 => {t_atom,[inner]}}}},
                          {{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => {t_atom,[x]}}}}],
                         none}}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"maybe_SUITE.erl",246}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {move,{x,0},{y,0}}.
    {test,is_tagged_tuple,
        {f,112},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",249}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {test,is_tagged_tuple,
        {f,110},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}},
         2,
         {atom,error}]}.
    {jump,{f,111}}.
  {label,110}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,unexpected},{x,0}]}}.
  {label,111}.
    {test,is_tagged_tuple,
     {f,113},
     [{tr,
       {x,0},
       {t_union,none,none,none,
        [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
         {{2,{t_atom,[unexpected]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[unexpected]},
             2 =>
              {t_union,
               {t_atom,any},
               {t_cons,{t_integer,{101,118}},nil},
               {t_integer,{0,42}},
               {t_tuple,1,false,
                #{1 =>
                   {t_union,
                    {t_atom,[error,ok,value]},
                    none,none,none,
                    {t_bitstring,8,false}}}},
               none}}}}],
        none}},
      2,
      {atom,error}]}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,wrapped},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,112}.
    {move,{y,0},{x,0}}.
  {label,113}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},{list,[{atom,outer_fail},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,wrapped},{x,0}]}}.
    {deallocate,2}.
    return.


{function, nested_1c, 2, 115}.
  {label,114}.
    {line,[{location,"maybe_SUITE.erl",259}]}.
    {func_info,{atom,maybe_SUITE},{atom,nested_1c},2}.
  {label,115}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_union,{t_atom,[x]},none,{t_integer,{0,0}},none,none},
                     {t_union,
                         {t_atom,[not_error,not_ok]},
                         none,none,
                         [{{2,{t_atom,[error]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[error]},
                                 2 => {t_atom,[inner]}}}},
                          {{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => {t_atom,[x]}}}}],
                         none}}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"maybe_SUITE.erl",263}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {move,{x,0},{y,0}}.
    {test,is_tagged_tuple,
        {f,118},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 none,
                 [{{2,{t_atom,[error]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[error]},
                         2 => {t_atom,[inner,whatever]}}}},
                  {{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[everything,fish,life,x]},
                                 none,
                                 {t_integer,{42,42}},
                                 [{{2,{t_atom,[value]}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[value]},
                                         2 => {t_atom,[dolphins]}}}}],
                                 none}}}},
                  {{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
                 none}},
         2,
         {atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"maybe_SUITE.erl",266}]}.
    {call,2,{f,121}}. % do_something/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}]}}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {test,is_tagged_tuple,
        {f,116},
        [{tr,{x,0},
             {t_union,
                 {t_atom,any},
                 {t_cons,{t_integer,{101,118}},nil},
                 {t_integer,{0,42}},
                 {t_tuple,1,false,
                     #{1 =>
                           {t_union,
                               {t_atom,[error,ok,value]},
                               none,none,none,
                               {t_bitstring,8,false}}}},
                 none}},
         2,
         {atom,error}]}.
    {jump,{f,117}}.
  {label,116}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,unexpected},{x,0}]}}.
  {label,117}.
    {test,is_tagged_tuple,
     {f,119},
     [{tr,
       {x,0},
       {t_union,none,none,none,
        [{{2,{t_atom,[error]}},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
         {{2,{t_atom,[unexpected]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[unexpected]},
             2 =>
              {t_union,
               {t_atom,any},
               {t_cons,{t_integer,{101,118}},nil},
               {t_integer,{0,42}},
               {t_tuple,1,false,
                #{1 =>
                   {t_union,
                    {t_atom,[error,ok,value]},
                    none,none,none,
                    {t_bitstring,8,false}}}},
               none}}}}],
        none}},
      2,
      {atom,error}]}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,wrapped},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,118}.
    {move,{y,0},{x,0}}.
  {label,119}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},{list,[{atom,outer_fail},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,wrapped},{x,0}]}}.
    {deallocate,2}.
    return.


{function, do_something, 2, 121}.
  {label,120}.
    {line,[{location,"maybe_SUITE.erl",282}]}.
    {func_info,{atom,maybe_SUITE},{atom,do_something},2}.
  {label,121}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     [{{2,{t_atom,[value]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[value]},
                             2 => {t_atom,[dolphins]}}}}],
                     none}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_map,
         {t_union,
          {t_atom,[fish,life,x]},
          {t_cons,{t_integer,{101,118}},nil},
          {t_integer,{0,42}},
          none,none},
         {t_union,
          {t_atom,any},
          {t_cons,{t_integer,{101,118}},nil},
          none,
          [{{2,{t_atom,[error]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
           {{2,{t_atom,[ok]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[ok]},
               2 =>
                {t_union,
                 {t_atom,[everything,fish,life,x]},
                 none,
                 {t_integer,{42,42}},
                 [{{2,{t_atom,[value]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                 none}}}},
           {{2,{t_atom,[value]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
          none}}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"maybe_SUITE.erl",283}]}.
    {call,1,{f,123}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    {bif,map_get,
     {f,0},
     [{tr,
       {x,0},
       {t_union,
        {t_atom,any},
        {t_cons,{t_integer,{101,118}},nil},
        {t_integer,{0,42}},
        {t_tuple,1,false,
         #{1 =>
            {t_union,
             {t_atom,[error,ok,value]},
             none,none,none,
             {t_bitstring,8,false}}}},
        none}},
      {tr,
       {y,0},
       {t_map,
        {t_union,
         {t_atom,[fish,life,x]},
         {t_cons,{t_integer,{101,118}},nil},
         {t_integer,{0,42}},
         none,none},
        {t_union,
         {t_atom,any},
         {t_cons,{t_integer,{101,118}},nil},
         none,
         [{{2,{t_atom,[error]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[error]},2 => {t_atom,[inner,whatever]}}}},
          {{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_union,
                {t_atom,[everything,fish,life,x]},
                none,
                {t_integer,{42,42}},
                [{{2,{t_atom,[value]}},
                  {t_tuple,2,true,
                   #{1 => {t_atom,[value]},2 => {t_atom,[dolphins]}}}}],
                none}}}},
          {{2,{t_atom,[value]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[value]},2 => {t_atom,[some_value]}}}}],
         none}}}],
     {x,0}}.
    {deallocate,1}.
    return.


{function, id, 1, 123}.
  {label,122}.
    {line,[{location,"maybe_SUITE.erl",285}]}.
    {func_info,{atom,maybe_SUITE},{atom,id},1}.
  {label,123}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,any},
                     {t_cons,{t_integer,{101,118}},nil},
                     {t_integer,{0,42}},
                     {t_tuple,1,false,
                         #{1 =>
                               {t_union,
                                   {t_atom,[error,ok,value]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}},
                     none}}]}}.
    return.


{function, module_info, 0, 125}.
  {label,124}.
    {line,[]}.
    {func_info,{atom,maybe_SUITE},{atom,module_info},0}.
  {label,125}.
    {move,{atom,maybe_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 127}.
  {label,126}.
    {line,[]}.
    {func_info,{atom,maybe_SUITE},{atom,module_info},1}.
  {label,127}.
    {move,{x,0},{x,1}}.
    {move,{atom,maybe_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
