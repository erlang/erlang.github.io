{module, otp_6121}.  %% version = 0

{exports, [{module_info,0},{module_info,1},{otp_6121,0}]}.

{attributes, []}.

{labels, 20}.


{function, otp_6121, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     23}]}.
    {func_info,{atom,otp_6121},{atom,otp_6121},0}.
  {label,2}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,42},{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     24}]}.
    {call,2,{f,14}}. % digit_map_timer/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,4},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},none,{t_integer,{42,42}},none,none}},
           {integer,42}]}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     25}]}.
    {call,0,{f,6}}. % test/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,otp_6121},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     26}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     27}]}.
    {call_ext,1,{extfunc,filelib,file_size,1}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"Size of Beam file: ~p\n"},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     28}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test,is_lt,{f,3},[{integer,100},{y,0}]}.
    {test,is_lt,
          {f,3},
          [{tr,{y,0},
               {t_union,{t_atom,any},
                        {t_list,any,any},
                        {t_number,{100,'+inf'}},
                        {t_tuple,0,false,#{}},
                        other}},
           {integer,100000}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     29}]}.
    if_end.
  {label,4}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     24}]}.
    {badmatch,{atom,error}}.


{function, test, 0, 6}.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     34}]}.
    {func_info,{atom,otp_6121},{atom,test},0}.
  {label,6}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     37}]}.
    {bs_create_bin,{f,0},
                   0,0,256,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,1048576}]}}.
    {allocate,0,1}.
    {call,1,{f,12}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,10},
              {x,1},
              {commands,[{ensure_at_least,1048576,1},
                         {integer,2,{literal,[]},1048576,1,{x,2}}]}}.
    {test,is_eq_exact,{f,10},[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {bs_match,{f,10},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     38}]}.
    {bs_create_bin,{f,0},
                   0,0,256,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,1048568},
                          {atom,string},
                          0,8,nil,
                          {string,<<"d">>},
                          {integer,1}]}}.
    {call,1,{f,12}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,9},
              {x,1},
              {commands,[{ensure_at_least,1048576,1},
                         {integer,2,{literal,[]},1048576,1,{x,2}}]}}.
    {test,is_eq_exact,{f,9},[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,100}]}.
    {bs_match,{f,9},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     40}]}.
    {bs_create_bin,{f,0},
                   0,0,256,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,1048472},
                          {atom,string},
                          0,8,nil,
                          {string,<<12,190,213,58,122,196,221,59,228,97,16,64,
                                    92>>},
                          {integer,13}]}}.
    {call,1,{f,12}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,8},
              {x,1},
              {commands,[{ensure_at_least,1048576,1},
                         {integer,2,{literal,[]},1048576,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,8},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},
           {integer,1009797879398749873879789879388}]}.
    {bs_match,{f,8},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     41}]}.
    {bs_create_bin,{f,0},
                   0,0,256,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,
                          {literal,[little]},
                          {integer,7},
                          {integer,1048576}]}}.
    {call,1,{f,12}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,7},
              {x,1},
              {commands,[{ensure_at_least,1048576,1},
                         {integer,2,{literal,[little]},1048576,1,{x,2}}]}}.
    {test,is_eq_exact,{f,7},[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,7}]}.
    {bs_match,{f,7},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,7}.
    {badmatch,{x,0}}.
  {label,8}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     39}]}.
    {badmatch,{x,0}}.
  {label,9}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     38}]}.
    {badmatch,{x,0}}.
  {label,10}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     37}]}.
    {badmatch,{x,0}}.


{function, id, 1, 12}.
  {label,11}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     44}]}.
    {func_info,{atom,otp_6121},{atom,id},1}.
  {label,12}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    return.


{function, digit_map_timer, 2, 14}.
  {label,13}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_6121.erl",
                     46}]}.
    {func_info,{atom,otp_6121},{atom,digit_map_timer},2}.
  {label,14}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{42,42}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,15},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,15}.
    {move,{atom,error},{x,0}}.
    return.


{function, module_info, 0, 17}.
  {label,16}.
    {line,[]}.
    {func_info,{atom,otp_6121},{atom,module_info},0}.
  {label,17}.
    {move,{atom,otp_6121},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 19}.
  {label,18}.
    {line,[]}.
    {func_info,{atom,otp_6121},{atom,module_info},1}.
  {label,19}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_6121},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
