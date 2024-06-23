{module, convopts}.  %% version = 0

{exports, [{convopts,0},{module_info,0},{module_info,1}]}.

{attributes, []}.

{labels, 32}.


{function, convopts, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     26}]}.
    {func_info,{atom,convopts},{atom,convopts},0}.
  {label,2}.
    {allocate,0,0}.
    {move,{literal,[{dest,{tipc_name,12345,1,0}}]},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     30}]}.
    {call,1,{f,5}}. % convopts/1
    {test,is_tagged_tuple,{f,3},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,3},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,3},[{x,2}]}.
    {test,test_arity,{f,3},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,3},[{x,3},{integer,66}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,bs_start_match3,{f,3},3,[{x,2}],{x,2}}.
    {bs_match,{f,3},
              {x,2},
              {commands,[{ensure_exactly,96},
                         {integer,3,{literal,[]},32,1,{x,3}},
                         {integer,4,{literal,[]},32,1,{x,4}},
                         {integer,5,{literal,[]},32,1,{x,5}}]}}.
    {test,is_nil,{f,3},[{x,1}]}.
    {test,is_eq_exact,
          {f,3},
          [{tr,{x,3},{t_integer,{0,4294967295}}},{integer,12345}]}.
    {test,is_eq_exact,
          {f,3},
          [{tr,{x,4},{t_integer,{0,4294967295}}},{integer,1}]}.
    {test,is_eq_exact,
          {f,3},
          [{tr,{x,5},{t_integer,{0,4294967295}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,3}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    {deallocate,0}.
    return.


{function, convopts, 1, 5}.
  {label,4}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     39}]}.
    {func_info,{atom,convopts},{atom,convopts},1}.
  {label,5}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[dest]},
                           2 =>
                               {t_tuple,4,true,
                                   #{1 => {t_atom,[tipc_name]},
                                     2 => {t_integer,{12345,12345}},
                                     3 => {t_integer,{1,1}},
                                     4 => {t_integer,{0,0}}}}}},
                     nil}}]}}.
    {allocate,1,1}.
    {'catch',{y,0},{f,18}}.
    {move,{literal,[active,recvfrom,importance,distribution,dest]},{x,1}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     41}]}.
    {call,2,{f,20}}. % getopts/2
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 =>
            {t_list,
             {t_list,
              {t_tuple,2,true,
               #{1 => {t_atom,[dest]},2 => {t_tuple,0,false,#{}}}},
              nil},
             nil},
           2 =>
            {t_list,
             {t_tuple,2,true,
              #{1 => {t_atom,[dest]},
                2 =>
                 {t_tuple,4,true,
                  #{1 => {t_atom,[tipc_name]},
                    2 => {t_integer,{12345,12345}},
                    3 => {t_integer,{1,1}},
                    4 => {t_integer,{0,0}}}}}},
             nil}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_nonempty_list,{f,17},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,17},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_nonempty_list,{f,17},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,17},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_nonempty_list,{f,17},[{x,1}]}.
    {get_list,{x,1},{x,5},{x,1}}.
    {test,is_nil,
        {f,17},
        [{tr,{x,1},
             {t_list,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[dest]},2 => {t_tuple,0,false,#{}}}},
                     nil},
                 nil}}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nil,
        {f,17},
        [{tr,{x,0},
             {t_list,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[dest]},
                       2 =>
                           {t_tuple,4,true,
                               #{1 => {t_atom,[tipc_name]},
                                 2 => {t_integer,{12345,12345}},
                                 3 => {t_integer,{1,1}},
                                 4 => {t_integer,{0,0}}}}}},
                 nil}}]}.
    {test,is_nonempty_list,{f,6},[{x,2}]}.
    {move,{literal,{error,einval}},{x,0}}.
    {line,[{scope,[1]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     72}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
    {jump,{f,18}}.
  {label,6}.
    {test,is_nonempty_list,{f,7},[{x,3}]}.
    {move,{literal,{error,einval}},{x,0}}.
    {line,[{scope,[1]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     82}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
    {jump,{f,18}}.
  {label,7}.
    {test,is_nil,
          {f,16},
          [{tr,{x,4},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[dest]},
                                  2 => {t_tuple,0,false,#{}}}},
                       nil}}]}.
    {test,is_nonempty_list,{f,14},[{x,5}]}.
    {get_list,{x,5},{x,0},{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,13},
                        {list,[3,{f,10},4,{f,8}]}}.
  {label,8}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,13},[{x,2},{atom,tipc_name}]}.
    {test,is_nil,
          {f,13},
          [{tr,{x,1},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[dest]},
                                  2 => {t_tuple,0,false,#{}}}},
                       nil}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_integer,{f,13},[{x,1}]}.
    {test,is_ge,{f,13},[{tr,{x,1},{t_integer,any}},{integer,0}]}.
    {test,is_ge,
          {f,13},
          [{integer,4294967295},{tr,{x,1},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_integer,{f,13},[{x,2}]}.
    {test,is_ge,{f,13},[{tr,{x,2},{t_integer,any}},{integer,0}]}.
    {test,is_ge,
          {f,13},
          [{integer,4294967295},{tr,{x,2},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_integer,{f,9},[{x,0}]}.
    {test,is_ge,{f,9},[{tr,{x,0},{t_integer,any}},{integer,0}]}.
    {test,is_ge,
          {f,9},
          [{integer,4294967295},{tr,{x,0},{t_integer,{0,'+inf'}}}]}.
    {line,[{scope,[1]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     106}]}.
    {bs_create_bin,{f,0},
                   5,3,32,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,1},{t_integer,{0,4294967295}}},
                          {integer,32},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,4294967295}}},
                          {integer,32},
                          {atom,integer},
                          3,1,nil,
                          {tr,{x,0},{t_integer,{0,4294967295}}},
                          {integer,32}]}}.
    {put_tuple2,{x,0},{list,[{integer,66},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {jump,{f,15}}.
  {label,9}.
    {test,is_tagged_tuple,{f,13},[{x,0},4,{atom,tipc_processor_id}]}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {test,is_integer,{f,13},[{x,3}]}.
    {test,is_ge,{f,13},[{tr,{x,3},{t_integer,any}},{integer,0}]}.
    {test,is_ge,{f,13},[{integer,254},{tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,0},2,{x,4}}.
    {test,is_integer,{f,13},[{x,4}]}.
    {test,is_ge,{f,13},[{tr,{x,4},{t_integer,any}},{integer,0}]}.
    {test,is_ge,{f,13},[{integer,4094},{tr,{x,4},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_integer,{f,13},[{x,0}]}.
    {test,is_ge,{f,13},[{tr,{x,0},{t_integer,any}},{integer,0}]}.
    {test,is_ge,{f,13},[{integer,4094},{tr,{x,0},{t_integer,{0,'+inf'}}}]}.
    {line,[{scope,[1]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     128}]}.
    {bs_create_bin,{f,0},
                   5,5,32,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,1},{t_integer,{0,4294967295}}},
                          {integer,32},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,4294967295}}},
                          {integer,32},
                          {atom,integer},
                          3,1,nil,
                          {tr,{x,3},{t_integer,{0,254}}},
                          {integer,8},
                          {atom,integer},
                          4,1,nil,
                          {tr,{x,4},{t_integer,{0,4094}}},
                          {integer,12},
                          {atom,integer},
                          5,1,nil,
                          {tr,{x,0},{t_integer,{0,4094}}},
                          {integer,12}]}}.
    {put_tuple2,{x,0},{list,[{integer,66},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {jump,{f,15}}.
  {label,10}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,13},[{x,2},{atom,tipc_port_id}]}.
    {test,is_nil,
          {f,13},
          [{tr,{x,1},
               {t_list,{t_tuple,2,true,
                                #{1 => {t_atom,[dest]},
                                  2 => {t_tuple,0,false,#{}}}},
                       nil}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_binary,{f,11},[{x,1}]}.
    {test,is_integer,{f,13},[{x,0}]}.
    {test,is_ge,{f,13},[{tr,{x,0},{t_integer,any}},{integer,0}]}.
    {test,is_ge,
          {f,13},
          [{integer,4294967295},{tr,{x,0},{t_integer,{0,'+inf'}}}]}.
    {jump,{f,12}}.
  {label,11}.
    {test,is_list,{f,13},[{x,1}]}.
    {test,is_integer,{f,13},[{x,0}]}.
    {test,is_ge,{f,13},[{tr,{x,0},{t_integer,any}},{integer,0}]}.
    {test,is_ge,
          {f,13},
          [{integer,4294967295},{tr,{x,0},{t_integer,{0,'+inf'}}}]}.
  {label,12}.
    {line,[{scope,[1]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     100}]}.
    {bs_create_bin,{f,0},
                   7,2,32,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,0},{t_integer,{0,4294967295}}},
                          {integer,32}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{integer,112},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {jump,{f,15}}.
  {label,13}.
    {move,{literal,{error,einval}},{x,0}}.
    {line,[{scope,[1]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     134}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
    {jump,{f,18}}.
  {label,14}.
    {move,nil,{x,0}}.
  {label,15}.
    {test_heap,8,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {line,[{scope,[1]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     55}]}.
    {call_ext,1,{extfunc,lists,flatten,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {jump,{f,18}}.
  {label,16}.
    {move,{literal,{error,einval}},{x,0}}.
    {line,[{scope,[1]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     90}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
    {jump,{f,18}}.
  {label,17}.
    {move,{literal,{error,einval}},{x,0}}.
    {line,[{scope,[1]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     138}]}.
    {call_ext,1,{extfunc,erlang,throw,1}}.
  {label,18}.
    {catch_end,{y,0}}.
    {deallocate,1}.
    return.


{function, getopts, 2, 20}.
  {label,19}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     143}]}.
    {func_info,{atom,convopts},{atom,getopts},2}.
  {label,20}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[dest]},
                           2 =>
                               {t_tuple,4,true,
                                   #{1 => {t_atom,[tipc_name]},
                                     2 => {t_integer,{12345,12345}},
                                     3 => {t_integer,{1,1}},
                                     4 => {t_integer,{0,0}}}}}},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_cons,
                     {t_atom,[active,dest,distribution,importance,recvfrom]},
                     nil}}]}}.
    {move,nil,{x,2}}.
    {swap,{x,0},{x,1}}.
    {call_only,3,{f,22}}. % getopts_1/3


{function, getopts_1, 3, 22}.
  {label,21}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     146}]}.
    {func_info,{atom,convopts},{atom,getopts_1},3}.
  {label,22}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_atom,[active,dest,distribution,importance,recvfrom]},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[dest]},
                           2 =>
                               {t_tuple,4,true,
                                   #{1 => {t_atom,[tipc_name]},
                                     2 => {t_integer,{12345,12345}},
                                     3 => {t_integer,{1,1}},
                                     4 => {t_integer,{0,0}}}}}},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_list,
                     {t_list,
                         {t_tuple,2,true,
                             #{1 => {t_atom,[dest]},
                               2 =>
                                   {t_tuple,4,true,
                                       #{1 => {t_atom,[tipc_name]},
                                         2 => {t_integer,{12345,12345}},
                                         3 => {t_integer,{1,1}},
                                         4 => {t_integer,{0,0}}}}}},
                         nil},
                     nil}}]}}.
    {test,is_nonempty_list,{f,23},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {move,nil,{x,3}}.
    {move,nil,{x,2}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     149}]}.
    {call,4,{f,25}}. % getopts_2/4
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 =>
            {t_list,
             {t_tuple,2,true,
              #{1 => {t_atom,[dest]},
                2 =>
                 {t_tuple,4,true,
                  #{1 => {t_atom,[tipc_name]},
                    2 => {t_integer,{12345,12345}},
                    3 => {t_integer,{1,1}},
                    4 => {t_integer,{0,0}}}}}},
             nil},
           2 =>
            {t_list,
             {t_tuple,2,true,
              #{1 => {t_atom,[dest]},
                2 =>
                 {t_tuple,4,true,
                  #{1 => {t_atom,[tipc_name]},
                    2 => {t_integer,{12345,12345}},
                    3 => {t_integer,{1,1}},
                    4 => {t_integer,{0,0}}}}}},
             nil}}}}]}}.
    {test_heap,2,1}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {put_list,{x,1},{y,1},{x,2}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,22},2}. % getopts_1/3
  {label,23}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     147}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.


{function, getopts_2, 4, 25}.
  {label,24}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     152}]}.
    {func_info,{atom,convopts},{atom,getopts_2},4}.
  {label,25}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[dest]},
                           2 =>
                               {t_tuple,4,true,
                                   #{1 => {t_atom,[tipc_name]},
                                     2 => {t_integer,{12345,12345}},
                                     3 => {t_integer,{1,1}},
                                     4 => {t_integer,{0,0}}}}}},
                     nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_atom,[active,dest,distribution,importance,
                                   recvfrom]}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[dest]},
                           2 =>
                               {t_tuple,4,true,
                                   #{1 => {t_atom,[tipc_name]},
                                     2 => {t_integer,{12345,12345}},
                                     3 => {t_integer,{1,1}},
                                     4 => {t_integer,{0,0}}}}}},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,3},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[dest]},
                           2 =>
                               {t_tuple,4,true,
                                   #{1 => {t_atom,[tipc_name]},
                                     2 => {t_integer,{12345,12345}},
                                     3 => {t_integer,{1,1}},
                                     4 => {t_integer,{0,0}}}}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,27},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {test,is_eq_exact,
          {f,26},
          [{tr,{x,1},{t_atom,[active,dest,distribution,importance,recvfrom]}},
           {atom,dest}]}.
    {test_heap,2,4}.
    {put_list,{literal,{dest,{tipc_name,12345,1,0}}},{x,2},{x,2}}.
    {move,{atom,dest},{x,1}}.
    {call_only,4,{f,25}}. % getopts_2/4
  {label,26}.
    {test_heap,2,4}.
    {put_list,{literal,{dest,{tipc_name,12345,1,0}}},{x,3},{x,3}}.
    {call_only,4,{f,25}}. % getopts_2/4
  {label,27}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/convopts.erl",
                     153}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {swap,{y,0},{x,0}}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.


{function, module_info, 0, 29}.
  {label,28}.
    {line,[]}.
    {func_info,{atom,convopts},{atom,module_info},0}.
  {label,29}.
    {move,{atom,convopts},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 31}.
  {label,30}.
    {line,[]}.
    {func_info,{atom,convopts},{atom,module_info},1}.
  {label,31}.
    {move,{x,0},{x,1}}.
    {move,{atom,convopts},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
