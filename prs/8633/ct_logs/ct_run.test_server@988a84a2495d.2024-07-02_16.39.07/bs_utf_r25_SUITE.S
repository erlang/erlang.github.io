{module, bs_utf_r25_SUITE}.  %% version = 0

{exports, [{all,0},
           {coverage,1},
           {end_per_group,2},
           {end_per_suite,1},
           {extreme_tripping,1},
           {groups,0},
           {guard,1},
           {init_per_group,2},
           {init_per_suite,1},
           {literals,1},
           {module_info,0},
           {module_info,1},
           {suite,0},
           {unused_utf_char,1},
           {utf16_roundtrip,1},
           {utf32_roundtrip,1},
           {utf8_roundtrip,1},
           {verify_highest_opcode,1}]}.

{attributes, []}.

{labels, 291}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_utf_r25_SUITE.erl",32}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_utf_r25_SUITE.erl",34}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[verify_highest_opcode,utf8_roundtrip,unused_utf_char,
                    utf16_roundtrip,utf32_roundtrip,guard,extreme_tripping,
                    literals,coverage]},
          {x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_utf_r25_SUITE.erl",40}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,groups},0}.
  {label,6}.
    {move,nil,{x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_utf_r25_SUITE.erl",43}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_utf_r25_SUITE},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",44}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_utf_r25_SUITE.erl",47}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_utf_r25_SUITE.erl",50}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_utf_r25_SUITE.erl",53}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 16}.
  {label,15}.
    {line,[{location,"bs_utf_r25_SUITE.erl",56}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,verify_highest_opcode},1}.
  {label,16}.
    {move,{atom,ok},{x,0}}.
    return.


{function, utf8_roundtrip, 1, 18}.
  {label,17}.
    {line,[{location,"bs_utf_r25_SUITE.erl",78}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf8_roundtrip},1}.
  {label,18}.
    {test,is_list,{f,17},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_utf_r25_SUITE.erl",79}]}.
    {call,0,{f,264}}. % utf_data/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,3,true,
                         #{1 => {t_cons,{t_integer,{46,54620}},nil},
                           2 => {t_bitstring,8,false},
                           3 => {t_bitstring,8,false}}},
                     nil}}]}}.
    {call,1,{f,289}}. % '-utf8_roundtrip/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, utf8_roundtrip_1, 1, 20}.
  {label,19}.
    {line,[{location,"bs_utf_r25_SUITE.erl",82}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf8_roundtrip_1},1}.
  {label,20}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_cons,{t_integer,{46,54620}},nil},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,
          {f,19},
          [{tr,{x,3},{t_bitstring,8,false}},{tr,{x,2},{t_bitstring,8,false}}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",83}]}.
    {call,1,{f,27}}. % utf8_to_list/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},{t_list,{t_integer,{0,1114111}},nil}},
           {tr,{y,0},{t_cons,{t_integer,{46,54620}},nil}}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",84}]}.
    {call,1,{f,31}}. % list_to_utf8/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,21},
          [{tr,{x,0},{t_bitstring,8,true}},{tr,{y,1},{t_bitstring,8,false}}]}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",85}]}.
    {call,1,{f,285}}. % '-utf8_roundtrip_1/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_utf_r25_SUITE.erl",86}]}.
    {call,1,{f,281}}. % '-utf8_roundtrip_1/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,21}.
    {line,[{location,"bs_utf_r25_SUITE.erl",84}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"bs_utf_r25_SUITE.erl",83}]}.
    {badmatch,{x,0}}.


{function, utf8_guard, 2, 24}.
  {label,23}.
    {line,[{location,"bs_utf_r25_SUITE.erl",89}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf8_guard},2}.
  {label,24}.
    {'%',{var_info,{x,0},[{type,{t_integer,{46,54620}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_create_bin,{f,25},
                   0,2,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"*">>},
                          {integer,1},
                          {atom,utf8},
                          2,0,nil,
                          {tr,{x,0},{t_integer,{46,54620}}},
                          {atom,undefined}]}}.
    {test,is_eq_exact,
          {f,25},
          [{tr,{x,0},{t_bitstring,8,false}},{tr,{x,1},{t_bitstring,8,false}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,25}.
    {move,{atom,error},{x,0}}.
    return.


{function, utf8_to_list, 1, 27}.
  {label,26}.
    {line,[{location,"bs_utf_r25_SUITE.erl",92}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf8_to_list},1}.
  {label,27}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,28},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[92,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",93}]}.
    {call,1,{f,27}}. % utf8_to_list/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,28}.
    {test,bs_test_tail2,{f,29},[{x,0},0]}.
    {move,nil,{x,0}}.
    return.
  {label,29}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,26}}.


{function, list_to_utf8, 1, 31}.
  {label,30}.
    {line,[{location,"bs_utf_r25_SUITE.erl",96}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,list_to_utf8},1}.
  {label,31}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{46,54620}},nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,33},1}. % list_to_utf8/2


{function, list_to_utf8, 2, 33}.
  {label,32}.
    {line,[{location,"bs_utf_r25_SUITE.erl",99}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,list_to_utf8},2}.
  {label,33}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,54620}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,34},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",100}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,utf8},
                          2,0,nil,
                          {tr,{x,2},{t_integer,{46,54620}}},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,33}}. % list_to_utf8/2
  {label,34}.
    {move,{x,1},{x,0}}.
    return.


{function, unused_utf_char, 1, 36}.
  {label,35}.
    {line,[{location,"bs_utf_r25_SUITE.erl",103}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,unused_utf_char},1}.
  {label,36}.
    {test,is_list,{f,35},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_utf_r25_SUITE.erl",105}]}.
    {call,0,{f,264}}. % utf_data/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,3,true,
                         #{1 => {t_cons,{t_integer,{46,54620}},nil},
                           2 => {t_bitstring,8,false},
                           3 => {t_bitstring,8,false}}},
                     nil}}]}}.
    {call,1,{f,278}}. % '-unused_utf_char/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, utf16_roundtrip, 1, 38}.
  {label,37}.
    {line,[{location,"bs_utf_r25_SUITE.erl",115}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf16_roundtrip},1}.
  {label,38}.
    {test,is_list,{f,37},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",116}]}.
    {call,0,{f,266}}. % utf16_data/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_cons,{t_integer,{61,74565}},nil},
                                     2 => {t_bitstring,16,false},
                                     3 => {t_bitstring,16,false},
                                     4 => {t_bitstring,16,false},
                                     5 => {t_bitstring,16,false}}}}]}}.
    {get_tuple_element,{x,0},0,{y,2}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,45},
          [{tr,{x,1},{t_bitstring,16,false}},
           {tr,{y,1},{t_bitstring,16,false}}]}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_eq_exact,
          {f,45},
          [{tr,{x,1},{t_bitstring,16,false}},
           {tr,{y,0},{t_bitstring,16,false}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",117}]}.
    {call,1,{f,47}}. % utf16_big_len/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,44},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,4}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",118}]}.
    {call,1,{f,53}}. % utf16_little_len/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,43},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,4}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",119}]}.
    {call,1,{f,69}}. % big_utf16_to_list/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test,is_eq_exact,
          {f,42},
          [{tr,{x,0},{t_list,{t_integer,{0,1114111}},nil}},
           {tr,{y,2},{t_cons,{t_integer,{61,74565}},nil}}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",120}]}.
    {call,1,{f,73}}. % little_utf16_to_list/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test,is_eq_exact,
          {f,41},
          [{tr,{x,0},{t_list,{t_integer,{0,1114111}},nil}},
           {tr,{y,2},{t_cons,{t_integer,{61,74565}},nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",122}]}.
    {call,1,{f,59}}. % list_to_big_utf16/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,40},
          [{tr,{x,0},{t_bitstring,16,true}},
           {tr,{y,1},{t_bitstring,16,false}}]}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_utf_r25_SUITE.erl",123}]}.
    {call,1,{f,64}}. % list_to_little_utf16/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,39},
          [{tr,{x,0},{t_bitstring,16,true}},
           {tr,{y,0},{t_bitstring,16,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,39}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{location,"bs_utf_r25_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{location,"bs_utf_r25_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{location,"bs_utf_r25_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{location,"bs_utf_r25_SUITE.erl",118}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{location,"bs_utf_r25_SUITE.erl",117}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{location,"bs_utf_r25_SUITE.erl",116}]}.
    {badmatch,{x,0}}.


{function, utf16_big_len, 1, 47}.
  {label,46}.
    {line,[{location,"bs_utf_r25_SUITE.erl",127}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf16_big_len},1}.
  {label,47}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,49}}. % utf16_big_len/2


{function, utf16_big_len, 2, 49}.
  {label,48}.
    {line,[{location,"bs_utf_r25_SUITE.erl",130}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf16_big_len},2}.
  {label,49}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_utf16,
          {f,50},
          [{x,0},
           2,
           {field_flags,[{anno,[130,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {line,[{location,"bs_utf_r25_SUITE.erl",131}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,49}}. % utf16_big_len/2
  {label,50}.
    {test,bs_test_tail2,{f,51},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,51}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,48}}.


{function, utf16_little_len, 1, 53}.
  {label,52}.
    {line,[{location,"bs_utf_r25_SUITE.erl",134}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf16_little_len},1}.
  {label,53}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,55}}. % utf16_little_len/2


{function, utf16_little_len, 2, 55}.
  {label,54}.
    {line,[{location,"bs_utf_r25_SUITE.erl",137}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf16_little_len},2}.
  {label,55}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_utf16,
          {f,56},
          [{x,0},
           2,
           {field_flags,[{anno,[137,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}]}.
    {line,[{location,"bs_utf_r25_SUITE.erl",138}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,55}}. % utf16_little_len/2
  {label,56}.
    {test,bs_test_tail2,{f,57},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,57}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,54}}.


{function, list_to_big_utf16, 1, 59}.
  {label,58}.
    {line,[{location,"bs_utf_r25_SUITE.erl",141}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,list_to_big_utf16},1}.
  {label,59}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{61,74565}},nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,61},1}. % list_to_big_utf16/2


{function, list_to_big_utf16, 2, 61}.
  {label,60}.
    {line,[{location,"bs_utf_r25_SUITE.erl",144}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,list_to_big_utf16},2}.
  {label,61}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{61,74565}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,62},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",145}]}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,utf16},
                          2,0,nil,
                          {tr,{x,2},{t_integer,{61,74565}}},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {call_only,2,{f,61}}. % list_to_big_utf16/2
  {label,62}.
    {move,{x,1},{x,0}}.
    return.


{function, list_to_little_utf16, 1, 64}.
  {label,63}.
    {line,[{location,"bs_utf_r25_SUITE.erl",148}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,list_to_little_utf16},1}.
  {label,64}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{61,74565}},nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,66},1}. % list_to_little_utf16/2


{function, list_to_little_utf16, 2, 66}.
  {label,65}.
    {line,[{location,"bs_utf_r25_SUITE.erl",151}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,list_to_little_utf16},2}.
  {label,66}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{61,74565}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,67},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",152}]}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,utf16},
                          2,0,
                          {literal,[little]},
                          {tr,{x,2},{t_integer,{61,74565}}},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {call_only,2,{f,66}}. % list_to_little_utf16/2
  {label,67}.
    {move,{x,1},{x,0}}.
    return.


{function, big_utf16_to_list, 1, 69}.
  {label,68}.
    {line,[{location,"bs_utf_r25_SUITE.erl",155}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,big_utf16_to_list},1}.
  {label,69}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_utf16,
          {f,70},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {field_flags,[{anno,[155,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",156}]}.
    {call,1,{f,69}}. % big_utf16_to_list/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,70}.
    {test,bs_test_tail2,{f,71},[{x,0},0]}.
    {move,nil,{x,0}}.
    return.
  {label,71}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,68}}.


{function, little_utf16_to_list, 1, 73}.
  {label,72}.
    {line,[{location,"bs_utf_r25_SUITE.erl",159}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,little_utf16_to_list},1}.
  {label,73}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_utf16,
          {f,74},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {field_flags,[{anno,[159,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",160}]}.
    {call,1,{f,73}}. % little_utf16_to_list/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,74}.
    {test,bs_test_tail2,{f,75},[{x,0},0]}.
    {move,nil,{x,0}}.
    return.
  {label,75}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,72}}.


{function, utf32_roundtrip, 1, 77}.
  {label,76}.
    {line,[{location,"bs_utf_r25_SUITE.erl",163}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf32_roundtrip},1}.
  {label,77}.
    {test,is_list,{f,76},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",164}]}.
    {call,0,{f,268}}. % utf32_data/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_cons,{t_integer,{46,8802}},nil},
                                     2 => {t_bitstring,128,false},
                                     3 => {t_bitstring,128,false},
                                     4 => {t_bitstring,128,false},
                                     5 => {t_bitstring,128,false}}}}]}}.
    {get_tuple_element,{x,0},0,{y,2}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,84},
          [{tr,{x,1},{t_bitstring,128,false}},
           {tr,{y,1},{t_bitstring,128,false}}]}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_eq_exact,
          {f,84},
          [{tr,{x,1},{t_bitstring,128,false}},
           {tr,{y,0},{t_bitstring,128,false}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",165}]}.
    {call,1,{f,86}}. % utf32_big_len/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,83},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,4}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",166}]}.
    {call,1,{f,92}}. % utf32_little_len/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,82},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,4}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",167}]}.
    {call,1,{f,108}}. % big_utf32_to_list/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test,is_eq_exact,
          {f,81},
          [{tr,{x,0},{t_list,{t_integer,{0,1114111}},nil}},
           {tr,{y,2},{t_cons,{t_integer,{46,8802}},nil}}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",168}]}.
    {call,1,{f,112}}. % little_utf32_to_list/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test,is_eq_exact,
          {f,80},
          [{tr,{x,0},{t_list,{t_integer,{0,1114111}},nil}},
           {tr,{y,2},{t_cons,{t_integer,{46,8802}},nil}}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",170}]}.
    {call,1,{f,98}}. % list_to_big_utf32/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,79},
          [{tr,{x,0},{t_bitstring,32,true}},
           {tr,{y,1},{t_bitstring,128,false}}]}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_utf_r25_SUITE.erl",171}]}.
    {call,1,{f,103}}. % list_to_little_utf32/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,78},
          [{tr,{x,0},{t_bitstring,32,true}},
           {tr,{y,0},{t_bitstring,128,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,78}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"bs_utf_r25_SUITE.erl",170}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"bs_utf_r25_SUITE.erl",168}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"bs_utf_r25_SUITE.erl",167}]}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{location,"bs_utf_r25_SUITE.erl",166}]}.
    {badmatch,{x,0}}.
  {label,83}.
    {line,[{location,"bs_utf_r25_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,84}.
    {line,[{location,"bs_utf_r25_SUITE.erl",164}]}.
    {badmatch,{x,0}}.


{function, utf32_big_len, 1, 86}.
  {label,85}.
    {line,[{location,"bs_utf_r25_SUITE.erl",175}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf32_big_len},1}.
  {label,86}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,128,false}},accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,88}}. % utf32_big_len/2


{function, utf32_big_len, 2, 88}.
  {label,87}.
    {line,[{location,"bs_utf_r25_SUITE.erl",178}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf32_big_len},2}.
  {label,88}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_utf32,
          {f,89},
          [{x,0},
           2,
           {field_flags,[{anno,[178,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {line,[{location,"bs_utf_r25_SUITE.erl",179}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,88}}. % utf32_big_len/2
  {label,89}.
    {test,bs_test_tail2,{f,90},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,90}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,87}}.


{function, utf32_little_len, 1, 92}.
  {label,91}.
    {line,[{location,"bs_utf_r25_SUITE.erl",182}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf32_little_len},1}.
  {label,92}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,128,false}},accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,94}}. % utf32_little_len/2


{function, utf32_little_len, 2, 94}.
  {label,93}.
    {line,[{location,"bs_utf_r25_SUITE.erl",185}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf32_little_len},2}.
  {label,94}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_utf32,
          {f,95},
          [{x,0},
           2,
           {field_flags,[{anno,[185,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}]}.
    {line,[{location,"bs_utf_r25_SUITE.erl",186}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,94}}. % utf32_little_len/2
  {label,95}.
    {test,bs_test_tail2,{f,96},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,96}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,93}}.


{function, list_to_big_utf32, 1, 98}.
  {label,97}.
    {line,[{location,"bs_utf_r25_SUITE.erl",189}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,list_to_big_utf32},1}.
  {label,98}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{46,8802}},nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,100},1}. % list_to_big_utf32/2


{function, list_to_big_utf32, 2, 100}.
  {label,99}.
    {line,[{location,"bs_utf_r25_SUITE.erl",192}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,list_to_big_utf32},2}.
  {label,100}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,8802}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,101},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",193}]}.
    {bs_create_bin,{f,0},
                   0,3,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,utf32},
                          2,0,nil,
                          {tr,{x,2},{t_integer,{46,8802}}},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,2,{f,100}}. % list_to_big_utf32/2
  {label,101}.
    {move,{x,1},{x,0}}.
    return.


{function, list_to_little_utf32, 1, 103}.
  {label,102}.
    {line,[{location,"bs_utf_r25_SUITE.erl",196}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,list_to_little_utf32},1}.
  {label,103}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{46,8802}},nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,105},1}. % list_to_little_utf32/2


{function, list_to_little_utf32, 2, 105}.
  {label,104}.
    {line,[{location,"bs_utf_r25_SUITE.erl",199}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,list_to_little_utf32},2}.
  {label,105}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,8802}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,106},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",200}]}.
    {bs_create_bin,{f,0},
                   0,3,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,utf32},
                          2,0,
                          {literal,[little]},
                          {tr,{x,2},{t_integer,{46,8802}}},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,2,{f,105}}. % list_to_little_utf32/2
  {label,106}.
    {move,{x,1},{x,0}}.
    return.


{function, big_utf32_to_list, 1, 108}.
  {label,107}.
    {line,[{location,"bs_utf_r25_SUITE.erl",203}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,big_utf32_to_list},1}.
  {label,108}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_utf32,
          {f,109},
          1,
          [{tr,{x,0},{t_bs_context,32}},
           {field_flags,[{anno,[203,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",204}]}.
    {call,1,{f,108}}. % big_utf32_to_list/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,109}.
    {test,bs_test_tail2,{f,110},[{x,0},0]}.
    {move,nil,{x,0}}.
    return.
  {label,110}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,107}}.


{function, little_utf32_to_list, 1, 112}.
  {label,111}.
    {line,[{location,"bs_utf_r25_SUITE.erl",207}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,little_utf32_to_list},1}.
  {label,112}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_utf32,
          {f,113},
          1,
          [{tr,{x,0},{t_bs_context,32}},
           {field_flags,[{anno,[207,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",208}]}.
    {call,1,{f,112}}. % little_utf32_to_list/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,113}.
    {test,bs_test_tail2,{f,114},[{x,0},0]}.
    {move,nil,{x,0}}.
    return.
  {label,114}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,111}}.


{function, guard, 1, 116}.
  {label,115}.
    {line,[{location,"bs_utf_r25_SUITE.erl",212}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,guard},1}.
  {label,116}.
    {test,is_list,{f,115},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,55296},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",213}]}.
    {call,1,{f,119}}. % do_guard/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,117},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,117}.
    {badmatch,{atom,ok}}.


{function, do_guard, 1, 119}.
  {label,118}.
    {line,[{location,"bs_utf_r25_SUITE.erl",216}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,do_guard},1}.
  {label,119}.
    {'%',{var_info,{x,0},[{type,{t_integer,{55296,55296}}}]}}.
    {bs_create_bin,{f,120},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf8},
                          1,0,nil,
                          {integer,55296},
                          {atom,undefined}]}}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,122},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,42}]}.
  {label,120}.
    {line,[{location,"bs_utf_r25_SUITE.erl",217}]}.
    {bs_create_bin,{f,121},
                   0,0,16,
                   {x,0},
                   {list,[{atom,utf16},
                          1,0,nil,
                          {integer,55296},
                          {atom,undefined}]}}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,16,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,122},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,42}]}.
  {label,121}.
    {line,[{location,"bs_utf_r25_SUITE.erl",218}]}.
    {bs_create_bin,{f,123},
                   0,0,32,
                   {x,0},
                   {list,[{atom,utf32},
                          1,0,nil,
                          {integer,55296},
                          {atom,undefined}]}}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,32,false}}],{x,0}}.
    {test,is_ne_exact,
          {f,123},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,42}]}.
  {label,122}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,123}.
    {move,{atom,error},{x,0}}.
    return.


{function, extreme_tripping, 1, 125}.
  {label,124}.
    {line,[{location,"bs_utf_r25_SUITE.erl",224}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,extreme_tripping},1}.
  {label,125}.
    {test,is_list,{f,124},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{integer,1024},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",225}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,3}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",226}]}.
    {call,2,{f,130}}. % unicode_to_utf8/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",227}]}.
    {call,2,{f,133}}. % utf8_to_utf16/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",228}]}.
    {call,2,{f,141}}. % utf8_to_utf32/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",229}]}.
    {call,2,{f,137}}. % utf16_to_utf32/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,128},
          [{tr,{x,0},{t_bitstring,32,true}},{tr,{y,0},{t_bitstring,32,true}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",230}]}.
    {call,2,{f,145}}. % utf32_to_utf8/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,127},
          [{tr,{x,0},{t_bitstring,8,true}},{tr,{y,2},{t_bitstring,8,true}}]}.
    {move,{y,0},{x,0}}.
    {trim,3,1}.
    {line,[{location,"bs_utf_r25_SUITE.erl",231}]}.
    {call,1,{f,149}}. % utf32_to_unicode/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test,is_eq_exact,
          {f,126},
          [{tr,{x,0},{t_list,{t_integer,{0,1114111}},nil}},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,126}.
    {badmatch,{x,0}}.
  {label,127}.
    {line,[{location,"bs_utf_r25_SUITE.erl",230}]}.
    {badmatch,{x,0}}.
  {label,128}.
    {line,[{location,"bs_utf_r25_SUITE.erl",229}]}.
    {badmatch,{x,0}}.


{function, unicode_to_utf8, 2, 130}.
  {label,129}.
    {line,[{location,"bs_utf_r25_SUITE.erl",234}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,unicode_to_utf8},2}.
  {label,130}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,131},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",235}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,utf8},
                          2,0,nil,
                          {x,2},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,130}}. % unicode_to_utf8/2
  {label,131}.
    {test,is_nil,{f,129},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, utf8_to_utf16, 2, 133}.
  {label,132}.
    {line,[{location,"bs_utf_r25_SUITE.erl",238}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf8_to_utf16},2}.
  {label,133}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,134},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[238,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",239}]}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,utf16},
                          2,0,nil,
                          {tr,{x,2},{t_integer,{0,1114111}}},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {call_only,2,{f,133}}. % utf8_to_utf16/2
  {label,134}.
    {test,bs_test_tail2,{f,135},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,135}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,132}}.


{function, utf16_to_utf32, 2, 137}.
  {label,136}.
    {line,[{location,"bs_utf_r25_SUITE.erl",242}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf16_to_utf32},2}.
  {label,137}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_utf16,
          {f,138},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {field_flags,[{anno,[242,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",243}]}.
    {bs_create_bin,{f,0},
                   0,3,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,utf32},
                          2,0,nil,
                          {tr,{x,2},{t_integer,{0,1114111}}},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,2,{f,137}}. % utf16_to_utf32/2
  {label,138}.
    {test,bs_test_tail2,{f,139},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,139}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,136}}.


{function, utf8_to_utf32, 2, 141}.
  {label,140}.
    {line,[{location,"bs_utf_r25_SUITE.erl",246}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf8_to_utf32},2}.
  {label,141}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,142},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[246,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",247}]}.
    {bs_create_bin,{f,0},
                   0,3,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,utf32},
                          2,0,nil,
                          {tr,{x,2},{t_integer,{0,1114111}}},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,2,{f,141}}. % utf8_to_utf32/2
  {label,142}.
    {test,bs_test_tail2,{f,143},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,143}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,140}}.


{function, utf32_to_utf8, 2, 145}.
  {label,144}.
    {line,[{location,"bs_utf_r25_SUITE.erl",250}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf32_to_utf8},2}.
  {label,145}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_utf32,
          {f,146},
          2,
          [{tr,{x,0},{t_bs_context,32}},
           {field_flags,[{anno,[250,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",251}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,utf8},
                          2,0,nil,
                          {tr,{x,2},{t_integer,{0,1114111}}},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,145}}. % utf32_to_utf8/2
  {label,146}.
    {test,bs_test_tail2,{f,147},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,147}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,144}}.


{function, utf32_to_unicode, 1, 149}.
  {label,148}.
    {line,[{location,"bs_utf_r25_SUITE.erl",254}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf32_to_unicode},1}.
  {label,149}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_utf32,
          {f,150},
          1,
          [{tr,{x,0},{t_bs_context,32}},
           {field_flags,[{anno,[254,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",255}]}.
    {call,1,{f,149}}. % utf32_to_unicode/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,150}.
    {test,bs_test_tail2,{f,151},[{x,0},0]}.
    {move,nil,{x,0}}.
    return.
  {label,151}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,148}}.


{function, literals, 1, 153}.
  {label,152}.
    {line,[{location,"bs_utf_r25_SUITE.erl",258}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,literals},1}.
  {label,153}.
    {test,is_list,{f,152},[{x,0}]}.
    {allocate,15,0}.
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
                       {y,14}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",259}]}.
    {call,1,{f,272}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,216},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",260}]}.
    {call,1,{f,272}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,215},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",261}]}.
    {call,1,{f,272}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,214},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",262}]}.
    {call,1,{f,272}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",263}]}.
    {call,1,{f,272}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",264}]}.
    {call,1,{f,272}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,211},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",265}]}.
    {call,1,{f,272}}. % id/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,210},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",267}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,209},[{tr,{x,0},{t_atom,any}},{atom,abc_utf8}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",268}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,208},[{tr,{x,0},{t_atom,any}},{atom,abc_utf8}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",269}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,207},[{tr,{x,0},{t_atom,any}},{atom,abc_utf8}]}.
    {move,{literal,<<0,97,0,98,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",271}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,206},[{tr,{x,0},{t_atom,any}},{atom,abc_utf16be}]}.
    {move,{literal,<<0,97,0,98,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",272}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,205},[{tr,{x,0},{t_atom,any}},{atom,abc_utf16be}]}.
    {move,{literal,<<97,0,98,0,99,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",273}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,204},[{tr,{x,0},{t_atom,any}},{atom,abc_utf16le}]}.
    {move,{literal,<<97,0,98,0,99,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",274}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,203},[{tr,{x,0},{t_atom,any}},{atom,abc_utf16le}]}.
    {move,{literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",276}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,202},[{tr,{x,0},{t_atom,any}},{atom,abc_utf32be}]}.
    {move,{literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",277}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,201},[{tr,{x,0},{t_atom,any}},{atom,abc_utf32be}]}.
    {move,{literal,<<97,0,0,0,98,0,0,0,99,0,0,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",278}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,200},[{tr,{x,0},{t_atom,any}},{atom,abc_utf32le}]}.
    {move,{literal,<<97,0,0,0,98,0,0,0,99,0,0,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",279}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,199},[{tr,{x,0},{t_atom,any}},{atom,abc_utf32le}]}.
    {move,{literal,<<208,156,208,176,209,129,209,130,208,181,209,128,32,208,
                     184,32,208,156,208,176,209,128,208,179,208,176,209,128,
                     208,184,209,130,208,176>>},
          {x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",281}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,198},[{tr,{x,0},{t_atom,any}},{atom,mm_utf8}]}.
    {move,{literal,<<4,28,4,48,4,65,4,66,4,53,4,64,0,32,4,56,0,32,4,28,4,48,4,
                     64,4,51,4,48,4,64,4,56,4,66,4,48>>},
          {x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",282}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,197},[{tr,{x,0},{t_atom,any}},{atom,mm_utf16be}]}.
    {move,{literal,<<0,0,4,28,0,0,4,48,0,0,4,65,0,0,4,66,0,0,4,53,0,0,4,64,0,
                     0,0,32,0,0,4,56,0,0,0,32,0,0,4,28,0,0,4,48,0,0,4,64,0,0,
                     4,51,0,0,4,48,0,0,4,64,0,0,4,56,0,0,4,66,0,0,4,48>>},
          {x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",283}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,196},[{tr,{x,0},{t_atom,any}},{atom,mm_utf32be}]}.
    {move,{literal,<<"bjÃ¶rn">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",285}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,195},[{tr,{x,0},{t_atom,any}},{atom,bjorn_utf8}]}.
    {move,{literal,<<"bjÃ¶rn">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",286}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,194},[{tr,{x,0},{t_atom,any}},{atom,bjorn_utf8}]}.
    {move,{literal,<<0,98,0,106,0,246,0,114,0,110>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",288}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,193},[{tr,{x,0},{t_atom,any}},{atom,bjorn_utf16be}]}.
    {move,{literal,<<0,98,0,106,0,246,0,114,0,110>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",289}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,192},[{tr,{x,0},{t_atom,any}},{atom,bjorn_utf16be}]}.
    {move,{literal,<<98,0,106,0,246,0,114,0,110,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",290}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,191},[{tr,{x,0},{t_atom,any}},{atom,bjorn_utf16le}]}.
    {move,{literal,<<98,0,106,0,246,0,114,0,110,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",291}]}.
    {call,1,{f,218}}. % match_literal/1
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,{f,190},[{tr,{x,0},{t_atom,any}},{atom,bjorn_utf16le}]}.
    {'catch',{y,14},{f,154}}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",298}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf8},
                          1,0,nil,
                          {integer,-1},
                          {atom,undefined},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
  {label,154}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,189},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,189},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,13},{f,155}}.
    {line,[{scope,[29,30]},{location,"bs_utf_r25_SUITE.erl",299}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf16},
                          1,0,nil,
                          {integer,-1},
                          {atom,undefined},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
  {label,155}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,188},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,188},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,12},{f,156}}.
    {line,[{scope,[27,28]},{location,"bs_utf_r25_SUITE.erl",300}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf16},
                          1,0,
                          {literal,[little]},
                          {integer,-1},
                          {atom,undefined},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
  {label,156}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,187},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,187},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,11},{f,157}}.
    {line,[{scope,[25,26]},{location,"bs_utf_r25_SUITE.erl",301}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf32},
                          1,0,nil,
                          {integer,-1},
                          {atom,undefined},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
  {label,157}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,186},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,186},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,10},{f,158}}.
    {line,[{scope,[23,24]},{location,"bs_utf_r25_SUITE.erl",302}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf32},
                          1,0,
                          {literal,[little]},
                          {integer,-1},
                          {atom,undefined},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
  {label,158}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,185},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,185},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,9},{f,159}}.
    {line,[{scope,[21,22]},{location,"bs_utf_r25_SUITE.erl",303}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf8},
                          1,0,nil,
                          {integer,55296},
                          {atom,undefined},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
  {label,159}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,184},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,184},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,8},{f,160}}.
    {line,[{scope,[19,20]},{location,"bs_utf_r25_SUITE.erl",304}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf16},
                          1,0,nil,
                          {integer,55296},
                          {atom,undefined},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
  {label,160}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,183},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,183},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,7},{f,161}}.
    {line,[{scope,[17,18]},{location,"bs_utf_r25_SUITE.erl",305}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf16},
                          1,0,
                          {literal,[little]},
                          {integer,55296},
                          {atom,undefined},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
  {label,161}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,182},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,182},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,6},{f,162}}.
    {line,[{scope,[15,16]},{location,"bs_utf_r25_SUITE.erl",306}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf32},
                          1,0,nil,
                          {integer,55296},
                          {atom,undefined},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
  {label,162}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,181},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,181},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,5},{f,163}}.
    {line,[{scope,[13,14]},{location,"bs_utf_r25_SUITE.erl",307}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf32},
                          1,0,
                          {literal,[little]},
                          {integer,55296},
                          {atom,undefined},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
  {label,163}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,180},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,180},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,4},{f,164}}.
    {line,[{scope,"\v\f"},{location,"bs_utf_r25_SUITE.erl",310}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,utf8},
                          1,0,nil,
                          {integer,1114112},
                          {atom,undefined}]}}.
  {label,164}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,179},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,179},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,3},{f,165}}.
    {line,[{scope,"\t\n"},{location,"bs_utf_r25_SUITE.erl",311}]}.
    {bs_create_bin,{f,0},
                   0,0,16,
                   {x,0},
                   {list,[{atom,utf16},
                          1,0,nil,
                          {integer,1114112},
                          {atom,undefined}]}}.
  {label,165}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,178},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,178},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,2},{f,166}}.
    {line,[{scope,[7,8]},{location,"bs_utf_r25_SUITE.erl",312}]}.
    {bs_create_bin,{f,0},
                   0,0,16,
                   {x,0},
                   {list,[{atom,utf16},
                          1,0,
                          {literal,[little]},
                          {integer,1114112},
                          {atom,undefined}]}}.
  {label,166}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,177},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,177},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,1},{f,167}}.
    {line,[{scope,[5,6]},{location,"bs_utf_r25_SUITE.erl",313}]}.
    {bs_create_bin,{f,0},
                   0,0,32,
                   {x,0},
                   {list,[{atom,utf32},
                          1,0,nil,
                          {integer,1114112},
                          {atom,undefined}]}}.
  {label,167}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,176},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,176},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,168}}.
    {line,[{scope,[3,4]},{location,"bs_utf_r25_SUITE.erl",314}]}.
    {bs_create_bin,{f,0},
                   0,0,32,
                   {x,0},
                   {list,[{atom,utf32},
                          1,0,
                          {literal,[little]},
                          {integer,1114112},
                          {atom,undefined}]}}.
  {label,168}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,175},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,175},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<237,160,128>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_utf_r25_SUITE.erl",317}]}.
    {call,1,{f,231}}. % bad_literal_match/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,174},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<244,144,128,128>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",318}]}.
    {call,1,{f,231}}. % bad_literal_match/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,173},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<0,0,216,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",320}]}.
    {call,1,{f,231}}. % bad_literal_match/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,172},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<0,17,0,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",321}]}.
    {call,1,{f,231}}. % bad_literal_match/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,171},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<0,216,0,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",322}]}.
    {call,1,{f,231}}. % bad_literal_match/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,170},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<0,0,17,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",323}]}.
    {call,1,{f,231}}. % bad_literal_match/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,169},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,15}.
    return.
  {label,169}.
    {badmatch,{atom,ok}}.
  {label,170}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",322}]}.
    {badmatch,{atom,ok}}.
  {label,171}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",321}]}.
    {badmatch,{atom,ok}}.
  {label,172}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",320}]}.
    {badmatch,{atom,ok}}.
  {label,173}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",318}]}.
    {badmatch,{atom,ok}}.
  {label,174}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",317}]}.
    {badmatch,{atom,ok}}.
  {label,175}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",314}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[2]},{location,"bs_utf_r25_SUITE.erl",313}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[4]},{location,"bs_utf_r25_SUITE.erl",312}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[6]},{location,"bs_utf_r25_SUITE.erl",311}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,"\b"},{location,"bs_utf_r25_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,"\n"},{location,"bs_utf_r25_SUITE.erl",307}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,"\f"},{location,"bs_utf_r25_SUITE.erl",306}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[14]},{location,"bs_utf_r25_SUITE.erl",305}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,[16]},{location,"bs_utf_r25_SUITE.erl",304}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[18]},{location,"bs_utf_r25_SUITE.erl",303}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[20]},{location,"bs_utf_r25_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[22]},{location,"bs_utf_r25_SUITE.erl",301}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,[24]},{location,"bs_utf_r25_SUITE.erl",300}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,[26]},{location,"bs_utf_r25_SUITE.erl",299}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[28]},{location,"bs_utf_r25_SUITE.erl",298}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",291}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",290}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",289}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",288}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",286}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",285}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",283}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",282}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",281}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",279}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",278}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",277}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",276}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",274}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",273}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",272}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",271}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",269}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",268}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",267}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",265}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",264}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",263}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",262}]}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",261}]}.
    {badmatch,{x,0}}.
  {label,215}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",260}]}.
    {badmatch,{x,0}}.
  {label,216}.
    {line,[{scope,[30]},{location,"bs_utf_r25_SUITE.erl",259}]}.
    {badmatch,{x,0}}.


{function, match_literal, 1, 218}.
  {label,217}.
    {line,[{location,"bs_utf_r25_SUITE.erl",327}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,match_literal},1}.
  {label,218}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,219},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[327,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,219},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,bs_match_string,{f,219},[{x,0},16,{string,<<"bc">>}]}.
    {test,bs_test_tail2,{f,219},[{x,0},0]}.
    {move,{atom,abc_utf8},{x,0}}.
    return.
  {label,219}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf16,
          {f,220},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[328,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,220},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,97}]}.
    {test,bs_get_utf16,
          {f,220},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[328,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,220},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,98}]}.
    {test,bs_get_utf16,
          {f,220},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[328,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,220},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,99}]}.
    {test,bs_test_tail2,{f,220},[{x,0},0]}.
    {move,{atom,abc_utf16be},{x,0}}.
    return.
  {label,220}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf16,
          {f,221},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[329,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,221},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,97}]}.
    {test,bs_get_utf16,
          {f,221},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[329,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,221},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,98}]}.
    {test,bs_get_utf16,
          {f,221},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[329,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,221},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,99}]}.
    {test,bs_test_tail2,{f,221},[{x,0},0]}.
    {move,{atom,abc_utf16le},{x,0}}.
    return.
  {label,221}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf32,
          {f,222},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[330,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,222},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,97}]}.
    {test,bs_get_utf32,
          {f,222},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[330,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,222},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,98}]}.
    {test,bs_get_utf32,
          {f,222},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[330,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,222},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,99}]}.
    {test,bs_test_tail2,{f,222},[{x,0},0]}.
    {move,{atom,abc_utf32be},{x,0}}.
    return.
  {label,222}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf32,
          {f,223},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[331,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,223},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,97}]}.
    {test,bs_get_utf32,
          {f,223},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[331,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,223},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,98}]}.
    {test,bs_get_utf32,
          {f,223},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[331,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,223},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,99}]}.
    {test,bs_test_tail2,{f,223},[{x,0},0]}.
    {move,{atom,abc_utf32le},{x,0}}.
    return.
  {label,223}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,224},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[332,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,224},[{tr,{x,2},{t_integer,{0,255}}},{integer,208}]}.
    {test,bs_match_string,
          {f,224},
          [{x,0},
           264,
           {string,<<156,208,176,209,129,209,130,208,181,209,128,32,208,184,
                     32,208,156,208,176,209,128,208,179,208,176,209,128,208,
                     184,209,130,208,176>>}]}.
    {test,bs_test_tail2,{f,224},[{x,0},0]}.
    {move,{atom,mm_utf8},{x,0}}.
    return.
  {label,224}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1052}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1072}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1089}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1090}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1077}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1088}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,32}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1080}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,32}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1052}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1072}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1088}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1075}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1072}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1088}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1080}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1090}]}.
    {test,bs_get_utf16,
          {f,225},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[333,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1072}]}.
    {test,bs_test_tail2,{f,225},[{x,0},0]}.
    {move,{atom,mm_utf16be},{x,0}}.
    return.
  {label,225}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1052}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1072}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1089}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1090}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1077}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1088}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,32}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1080}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,32}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1052}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1072}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1088}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1075}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1072}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1088}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1080}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1090}]}.
    {test,bs_get_utf32,
          {f,226},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[334,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1072}]}.
    {test,bs_test_tail2,{f,226},[{x,0},0]}.
    {move,{atom,mm_utf32be},{x,0}}.
    return.
  {label,226}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,227},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[335,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,227},[{tr,{x,2},{t_integer,{0,255}}},{integer,98}]}.
    {test,bs_match_string,{f,227},[{x,0},40,{string,<<"jÃ¶rn">>}]}.
    {test,bs_test_tail2,{f,227},[{x,0},0]}.
    {move,{atom,bjorn_utf8},{x,0}}.
    return.
  {label,227}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf16,
          {f,228},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[336,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,98}]}.
    {test,bs_get_utf16,
          {f,228},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[336,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,106}]}.
    {test,bs_get_utf16,
          {f,228},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[336,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,246}]}.
    {test,bs_get_utf16,
          {f,228},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[336,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,114}]}.
    {test,bs_get_utf16,
          {f,228},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[336,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,110}]}.
    {test,bs_test_tail2,{f,228},[{x,0},0]}.
    {move,{atom,bjorn_utf16be},{x,0}}.
    return.
  {label,228}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf16,
          {f,229},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[337,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,229},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,98}]}.
    {test,bs_get_utf16,
          {f,229},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[337,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,229},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,106}]}.
    {test,bs_get_utf16,
          {f,229},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[337,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,229},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,246}]}.
    {test,bs_get_utf16,
          {f,229},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[337,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,229},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,114}]}.
    {test,bs_get_utf16,
          {f,229},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[337,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,229},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,110}]}.
    {test,bs_test_tail2,{f,229},[{x,0},0]}.
    {move,{atom,bjorn_utf16le},{x,0}}.
    return.
  {label,229}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,217}}.


{function, bad_literal_match, 1, 231}.
  {label,230}.
    {line,[{location,"bs_utf_r25_SUITE.erl",339}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,bad_literal_match},1}.
  {label,231}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_utf8,
          {f,232},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[339,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,232},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,55296}]}.
    {test,bs_test_tail2,{f,232},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,232}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf32,
          {f,233},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[341,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,233},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,55296}]}.
    {test,bs_test_tail2,{f,233},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,233}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf32,
          {f,234},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[343,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {test,is_eq_exact,
          {f,234},
          [{tr,{x,1},{t_integer,{0,1114111}}},{integer,55296}]}.
    {test,bs_test_tail2,{f,234},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,234}.
    {move,{atom,error},{x,0}}.
    return.


{function, coverage, 1, 236}.
  {label,235}.
    {line,[{location,"bs_utf_r25_SUITE.erl",347}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,coverage},1}.
  {label,236}.
    {test,is_list,{f,235},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<225,128,128,240,144,128,128,0>>},{x,0}}.
    {line,[{location,"bs_utf_r25_SUITE.erl",349}]}.
    {call,1,{f,246}}. % coverage_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {test,is_eq_exact,{f,244},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
    {move,{literal,<<225,128,128,240,144,128,128,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r25_SUITE.erl",350}]}.
    {call,1,{f,246}}. % coverage_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {test,is_eq_exact,{f,243},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
    {move,{literal,<<225,128,128,240,144,128,128,0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r25_SUITE.erl",352}]}.
    {call,1,{f,251}}. % coverage_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {test,is_eq_exact,{f,242},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
    {move,{literal,<<208,128,208,129,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r25_SUITE.erl",353}]}.
    {call,1,{f,251}}. % coverage_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {test,is_eq_exact,{f,241},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
    {'catch',{y,0},{f,237}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r25_SUITE.erl",355}]}.
    {call,1,{f,256}}. % coverage_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,237}.
    {catch_end,{y,0}}.
    {line,[{scope,[1,2]},{location,"bs_utf_r25_SUITE.erl",355}]}.
    {call,1,{f,270}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,533},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_utf_r25_SUITE.erl",360}]}.
    {call,1,{f,258}}. % cover_test_heap_utf8/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,240},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}},
           {literal,{ok,<<200,149>>}}]}.
    {move,{integer,1024},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",361}]}.
    {call,1,{f,260}}. % cover_test_heap_utf16/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,16,false}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_utf16,
          {f,239},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {field_flags,[{anno,[361,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,239},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,1024}]}.
    {test,bs_test_tail2,{f,239},[{x,1},0]}.
    {move,{integer,7966},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",362}]}.
    {call,1,{f,262}}. % cover_test_heap_utf32/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,32,false}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_utf32,
          {f,238},
          2,
          [{tr,{x,1},{t_bs_context,32}},
           {field_flags,[{anno,[362,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,238},
          [{tr,{x,2},{t_integer,{0,1114111}}},{integer,7966}]}.
    {test,bs_test_tail2,{f,238},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,238}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",361}]}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{scope,[0]},{location,"bs_utf_r25_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,241}.
    {line,[{scope,[2]},{location,"bs_utf_r25_SUITE.erl",353}]}.
    {badmatch,{integer,0}}.
  {label,242}.
    {line,[{scope,[2]},{location,"bs_utf_r25_SUITE.erl",352}]}.
    {badmatch,{integer,1}}.
  {label,243}.
    {line,[{scope,[2]},{location,"bs_utf_r25_SUITE.erl",350}]}.
    {badmatch,{integer,0}}.
  {label,244}.
    {line,[{scope,[2]},{location,"bs_utf_r25_SUITE.erl",349}]}.
    {badmatch,{integer,1}}.


{function, coverage_1, 1, 246}.
  {label,245}.
    {line,[{location,"bs_utf_r25_SUITE.erl",366}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,coverage_1},1}.
  {label,246}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,64,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_match_string,
          {f,249},
          [{x,0},48,{string,<<225,128,128,240,144,128>>}]}.
    {test,bs_get_integer2,
          {f,249},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[366,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{tr,{x,2},{t_integer,{0,65535}}},
                {f,249},
                {list,[{integer,32768},{f,248},{integer,32769},{f,247}]}}.
  {label,247}.
    {test,bs_test_tail2,{f,249},[{x,0},0]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,248}.
    {test,bs_test_tail2,{f,249},[{x,0},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,249}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,245}}.


{function, coverage_2, 1, 251}.
  {label,250}.
    {line,[{location,"bs_utf_r25_SUITE.erl",369}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,coverage_2},1}.
  {label,251}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,254},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[369,{file,"bs_utf_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{tr,{x,2},{t_integer,{0,65535}}},
                {f,254},
                {list,[{integer,53376},{f,253},{integer,57728},{f,252}]}}.
  {label,252}.
    {test,bs_match_string,
          {f,254},
          [{x,0},48,{string,<<128,240,144,128,128,0>>}]}.
    {test,bs_test_tail2,{f,254},[{x,0},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,253}.
    {test,bs_match_string,{f,254},[{x,0},24,{string,<<208,129,1>>}]}.
    {test,bs_test_tail2,{f,254},[{x,0},0]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,254}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,250}}.


{function, coverage_3, 1, 256}.
  {label,255}.
    {line,[{location,"bs_utf_r25_SUITE.erl",372}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,coverage_3},1}.
  {label,256}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {jump,{f,255}}.


{function, cover_test_heap_utf8, 1, 258}.
  {label,257}.
    {line,[{location,"bs_utf_r25_SUITE.erl",374}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,cover_test_heap_utf8},1}.
  {label,258}.
    {'%',{var_info,{x,0},[{type,{t_integer,{533,533}}}]}}.
    {bs_create_bin,{f,0},
                   3,0,8,
                   {x,0},
                   {list,[{atom,utf8},
                          1,0,nil,
                          {integer,533},
                          {atom,undefined}]}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, cover_test_heap_utf16, 1, 260}.
  {label,259}.
    {line,[{location,"bs_utf_r25_SUITE.erl",375}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,cover_test_heap_utf16},1}.
  {label,260}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1024,1024}}}]}}.
    {bs_create_bin,{f,0},
                   3,0,16,
                   {x,0},
                   {list,[{atom,utf16},
                          1,0,nil,
                          {integer,1024},
                          {atom,undefined}]}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, cover_test_heap_utf32, 1, 262}.
  {label,261}.
    {line,[{location,"bs_utf_r25_SUITE.erl",376}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,cover_test_heap_utf32},1}.
  {label,262}.
    {'%',{var_info,{x,0},[{type,{t_integer,{7966,7966}}}]}}.
    {bs_create_bin,{f,0},
                   3,0,32,
                   {x,0},
                   {list,[{atom,utf32},
                          1,0,nil,
                          {integer,7966},
                          {atom,undefined}]}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, utf_data, 0, 264}.
  {label,263}.
    {line,[{location,"bs_utf_r25_SUITE.erl",378}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf_data},0}.
  {label,264}.
    {move,{literal,[{[65,8802,913,46],
                     <<65,226,137,162,206,145,46>>,
                     <<65,226,137,162,206,145,46>>},
                    {[54620,44397,50612],
                     <<237,149,156,234,181,173,236,150,180>>,
                     <<237,149,156,234,181,173,236,150,180>>},
                    {[26085,26412,35486],
                     <<230,151,165,230,156,172,232,170,158>>,
                     <<230,151,165,230,156,172,232,170,158>>}]},
          {x,0}}.
    return.


{function, utf16_data, 0, 266}.
  {label,265}.
    {line,[{location,"bs_utf_r25_SUITE.erl",401}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf16_data},0}.
  {label,266}.
    {move,{literal,{[74565,61,82,97],
                    <<216,8,223,69,0,61,0,82,0,97>>,
                    <<216,8,223,69,0,61,0,82,0,97>>,
                    <<8,216,69,223,61,0,82,0,97,0>>,
                    <<8,216,69,223,61,0,82,0,97,0>>}},
          {x,0}}.
    return.


{function, utf32_data, 0, 268}.
  {label,267}.
    {line,[{location,"bs_utf_r25_SUITE.erl",420}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,utf32_data},0}.
  {label,268}.
    {move,{literal,{[65,8802,913,46],
                    <<0,0,0,65,0,0,34,98,0,0,3,145,0,0,0,46>>,
                    <<0,0,0,65,0,0,34,98,0,0,3,145,0,0,0,46>>,
                    <<65,0,0,0,98,34,0,0,145,3,0,0,46,0,0,0>>,
                    <<65,0,0,0,98,34,0,0,145,3,0,0,46,0,0,0>>}},
          {x,0}}.
    return.


{function, fc, 1, 270}.
  {label,269}.
    {line,[{location,"bs_utf_r25_SUITE.erl",435}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,fc},1}.
  {label,270}.
    {test,is_tagged_tuple,{f,269},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,269},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, id, 1, 272}.
  {label,271}.
    {line,[{location,"bs_utf_r25_SUITE.erl",438}]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,id},1}.
  {label,272}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    return.


{function, module_info, 0, 274}.
  {label,273}.
    {line,[]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,module_info},0}.
  {label,274}.
    {move,{atom,bs_utf_r25_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 276}.
  {label,275}.
    {line,[]}.
    {func_info,{atom,bs_utf_r25_SUITE},{atom,module_info},1}.
  {label,276}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_utf_r25_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-unused_utf_char/1-lc$^0/1-0-', 1, 278}.
  {label,277}.
    {line,[{location,"bs_utf_r25_SUITE.erl",105}]}.
    {func_info,{atom,bs_utf_r25_SUITE},
               {atom,'-unused_utf_char/1-lc$^0/1-0-'},
               1}.
  {label,278}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,3,true,
                         #{1 => {t_cons,{t_integer,{46,54620}},nil},
                           2 => {t_bitstring,8,false},
                           3 => {t_bitstring,8,false}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,279},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,278}}. % '-unused_utf_char/1-lc$^0/1-0-'/1
  {label,279}.
    return.


{function, '-utf8_roundtrip_1/1-lc$^1/1-1-', 1, 281}.
  {label,280}.
    {line,[{location,"bs_utf_r25_SUITE.erl",86}]}.
    {func_info,{atom,bs_utf_r25_SUITE},
               {atom,'-utf8_roundtrip_1/1-lc$^1/1-1-'},
               1}.
  {label,281}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,54620}},nil}}]}}.
    {test,is_nonempty_list,{f,282},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,2},
                   {list,[{atom,utf8},
                          1,0,nil,
                          {tr,{x,1},{t_integer,{46,54620}}},
                          {atom,undefined}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {call,2,{f,24}}. % utf8_guard/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,283},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,281},1}. % '-utf8_roundtrip_1/1-lc$^1/1-1-'/1
  {label,282}.
    return.
  {label,283}.
    {badmatch,{atom,ok}}.


{function, '-utf8_roundtrip_1/1-lc$^0/1-0-', 1, 285}.
  {label,284}.
    {line,[{location,"bs_utf_r25_SUITE.erl",85}]}.
    {func_info,{atom,bs_utf_r25_SUITE},
               {atom,'-utf8_roundtrip_1/1-lc$^0/1-0-'},
               1}.
  {label,285}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{46,54620}},nil}}]}}.
    {test,is_nonempty_list,{f,286},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,2},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"*">>},
                          {integer,1},
                          {atom,utf8},
                          2,0,nil,
                          {tr,{x,1},{t_integer,{46,54620}}},
                          {atom,undefined}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {call,2,{f,24}}. % utf8_guard/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,287},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,285},1}. % '-utf8_roundtrip_1/1-lc$^0/1-0-'/1
  {label,286}.
    return.
  {label,287}.
    {badmatch,{atom,error}}.


{function, '-utf8_roundtrip/1-lc$^0/1-0-', 1, 289}.
  {label,288}.
    {line,[{location,"bs_utf_r25_SUITE.erl",79}]}.
    {func_info,{atom,bs_utf_r25_SUITE},
               {atom,'-utf8_roundtrip/1-lc$^0/1-0-'},
               1}.
  {label,289}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,3,true,
                         #{1 => {t_cons,{t_integer,{46,54620}},nil},
                           2 => {t_bitstring,8,false},
                           3 => {t_bitstring,8,false}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,290},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,20}}. % utf8_roundtrip_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,289},1}. % '-utf8_roundtrip/1-lc$^0/1-0-'/1
  {label,290}.
    return.
