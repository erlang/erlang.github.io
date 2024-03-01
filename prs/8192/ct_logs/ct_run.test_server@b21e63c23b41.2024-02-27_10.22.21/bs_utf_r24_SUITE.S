{module, bs_utf_r24_SUITE}.  %% version = 0

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

{labels, 285}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_utf_r24_SUITE.erl",32}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_utf_r24_SUITE.erl",34}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[verify_highest_opcode,utf8_roundtrip,unused_utf_char,
                    utf16_roundtrip,utf32_roundtrip,guard,extreme_tripping,
                    literals,coverage]},
          {x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_utf_r24_SUITE.erl",40}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,groups},0}.
  {label,6}.
    {move,nil,{x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_utf_r24_SUITE.erl",43}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_utf_r24_SUITE},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",44}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_utf_r24_SUITE.erl",47}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_utf_r24_SUITE.erl",50}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_utf_r24_SUITE.erl",53}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 16}.
  {label,15}.
    {line,[{location,"bs_utf_r24_SUITE.erl",56}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,verify_highest_opcode},1}.
  {label,16}.
    {move,{atom,ok},{x,0}}.
    return.


{function, utf8_roundtrip, 1, 18}.
  {label,17}.
    {line,[{location,"bs_utf_r24_SUITE.erl",78}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_roundtrip},1}.
  {label,18}.
    {test,is_list,{f,17},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_utf_r24_SUITE.erl",79}]}.
    {call,0,{f,252}}. % utf_data/0
    {call,1,{f,282}}. % '-utf8_roundtrip/1-lc$^0/1-0-'/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, utf8_roundtrip_1, 1, 20}.
  {label,19}.
    {line,[{location,"bs_utf_r24_SUITE.erl",82}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_roundtrip_1},1}.
  {label,20}.
    {test,is_tuple,{f,19},[{x,0}]}.
    {test,test_arity,{f,19},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,19},[{x,3},{x,2}]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",83}]}.
    {call,1,{f,27}}. % utf8_to_list/1
    {test,is_eq_exact,{f,22},[{x,0},{y,0}]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",84}]}.
    {call,1,{f,30}}. % list_to_utf8/1
    {test,is_eq_exact,{f,21},[{x,0},{y,1}]}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",85}]}.
    {call,1,{f,277}}. % '-utf8_roundtrip_1/1-lc$^0/1-0-'/1
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_utf_r24_SUITE.erl",86}]}.
    {call,1,{f,272}}. % '-utf8_roundtrip_1/1-lc$^1/1-1-'/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,21}.
    {line,[{location,"bs_utf_r24_SUITE.erl",84}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"bs_utf_r24_SUITE.erl",83}]}.
    {badmatch,{x,0}}.


{function, utf8_guard, 2, 24}.
  {label,23}.
    {line,[{location,"bs_utf_r24_SUITE.erl",89}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_guard},2}.
  {label,24}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,25},[{x,2},{integer,1},8],{x,2}}.
    {bs_utf8_size,{f,25},{x,0},{x,3}}.
    {bs_add,{f,25},[{x,2},{x,3},8],{x,2}}.
    {bs_init_bits,{f,25},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_string,1,{string,<<"*">>}}.
    {bs_put_utf8,{f,25},{field_flags,[]},{x,0}}.
    {move,{x,2},{x,0}}.
    {test,is_eq_exact,{f,25},[{x,0},{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,25}.
    {move,{atom,error},{x,0}}.
    return.


{function, utf8_to_list, 1, 27}.
  {label,26}.
    {line,[{location,"bs_utf_r24_SUITE.erl",92}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_to_list},1}.
  {label,27}.
    {test,bs_start_match3,{f,26},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_utf8,
          {f,28},
          3,
          [{x,1},
           {field_flags,[{anno,[92,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,28},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[92,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",93}]}.
    {call,1,{f,27}}. % utf8_to_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,28}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,26},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.


{function, list_to_utf8, 1, 30}.
  {label,29}.
    {line,[{location,"bs_utf_r24_SUITE.erl",96}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_utf8},1}.
  {label,30}.
    {move,{literal,<<>>},{x,1}}.
    {call_only,2,{f,32}}. % list_to_utf8/2


{function, list_to_utf8, 2, 32}.
  {label,31}.
    {line,[{location,"bs_utf_r24_SUITE.erl",99}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_utf8},2}.
  {label,32}.
    {test,is_nonempty_list,{f,33},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",100}]}.
    {move,{integer,0},{x,3}}.
    {bs_utf8_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,32}}. % list_to_utf8/2
  {label,33}.
    {test,is_nil,{f,31},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, unused_utf_char, 1, 35}.
  {label,34}.
    {line,[{location,"bs_utf_r24_SUITE.erl",103}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,unused_utf_char},1}.
  {label,35}.
    {test,is_list,{f,34},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_utf_r24_SUITE.erl",105}]}.
    {call,0,{f,252}}. % utf_data/0
    {call,1,{f,266}}. % '-unused_utf_char/1-lc$^0/1-0-'/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, utf8_len, 1, 37}.
  {label,36}.
    {line,[{location,"bs_utf_r24_SUITE.erl",108}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_len},1}.
  {label,37}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,39}}. % utf8_len/2


{function, utf8_len, 2, 39}.
  {label,38}.
    {line,[{location,"bs_utf_r24_SUITE.erl",111}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_len},2}.
  {label,39}.
    {test,bs_start_match3,{f,38},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_skip_utf8,
          {f,40},
          [{x,2},
           4,
           {field_flags,[{anno,[111,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,40},
          4,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[111,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",112}]}.
    {gc_bif,'+',{f,0},5,[{x,1},{integer,1}],{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,39}}. % utf8_len/2
  {label,40}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,38},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, utf16_roundtrip, 1, 42}.
  {label,41}.
    {line,[{location,"bs_utf_r24_SUITE.erl",115}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_roundtrip},1}.
  {label,42}.
    {test,is_list,{f,41},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",116}]}.
    {call,0,{f,254}}. % utf16_data/0
    {test,is_tuple,{f,49},[{x,0}]}.
    {test,test_arity,{f,49},[{x,0},5]}.
    {get_tuple_element,{x,0},0,{y,2}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,49},[{x,1},{y,1}]}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_eq_exact,{f,49},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",117}]}.
    {call,1,{f,51}}. % utf16_big_len/1
    {test,is_eq_exact,{f,48},[{x,0},{integer,4}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",118}]}.
    {call,1,{f,56}}. % utf16_little_len/1
    {test,is_eq_exact,{f,47},[{x,0},{integer,4}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",119}]}.
    {call,1,{f,71}}. % big_utf16_to_list/1
    {test,is_eq_exact,{f,46},[{x,0},{y,2}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",120}]}.
    {call,1,{f,74}}. % little_utf16_to_list/1
    {test,is_eq_exact,{f,45},[{x,0},{y,2}]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",122}]}.
    {call,1,{f,61}}. % list_to_big_utf16/1
    {test,is_eq_exact,{f,44},[{x,0},{y,1}]}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_utf_r24_SUITE.erl",123}]}.
    {call,1,{f,66}}. % list_to_little_utf16/1
    {test,is_eq_exact,{f,43},[{x,0},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,43}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{location,"bs_utf_r24_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{location,"bs_utf_r24_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{location,"bs_utf_r24_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{location,"bs_utf_r24_SUITE.erl",118}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{location,"bs_utf_r24_SUITE.erl",117}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{location,"bs_utf_r24_SUITE.erl",116}]}.
    {badmatch,{x,0}}.


{function, utf16_big_len, 1, 51}.
  {label,50}.
    {line,[{location,"bs_utf_r24_SUITE.erl",127}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_big_len},1}.
  {label,51}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,53}}. % utf16_big_len/2


{function, utf16_big_len, 2, 53}.
  {label,52}.
    {line,[{location,"bs_utf_r24_SUITE.erl",130}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_big_len},2}.
  {label,53}.
    {test,bs_start_match3,{f,52},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_skip_utf16,
          {f,54},
          [{x,2},
           4,
           {field_flags,[{anno,[130,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,54},
          4,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[130,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",131}]}.
    {gc_bif,'+',{f,0},5,[{x,1},{integer,1}],{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,53}}. % utf16_big_len/2
  {label,54}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,52},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, utf16_little_len, 1, 56}.
  {label,55}.
    {line,[{location,"bs_utf_r24_SUITE.erl",134}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_little_len},1}.
  {label,56}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,58}}. % utf16_little_len/2


{function, utf16_little_len, 2, 58}.
  {label,57}.
    {line,[{location,"bs_utf_r24_SUITE.erl",137}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_little_len},2}.
  {label,58}.
    {test,bs_start_match3,{f,57},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_skip_utf16,
          {f,59},
          [{x,2},
           4,
           {field_flags,[{anno,[137,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}]}.
    {test,bs_get_binary2,
          {f,59},
          4,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[137,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",138}]}.
    {gc_bif,'+',{f,0},5,[{x,1},{integer,1}],{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,58}}. % utf16_little_len/2
  {label,59}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,57},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, list_to_big_utf16, 1, 61}.
  {label,60}.
    {line,[{location,"bs_utf_r24_SUITE.erl",141}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_big_utf16},1}.
  {label,61}.
    {move,{literal,<<>>},{x,1}}.
    {call_only,2,{f,63}}. % list_to_big_utf16/2


{function, list_to_big_utf16, 2, 63}.
  {label,62}.
    {line,[{location,"bs_utf_r24_SUITE.erl",144}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_big_utf16},2}.
  {label,63}.
    {test,is_nonempty_list,{f,64},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",145}]}.
    {move,{integer,0},{x,3}}.
    {bs_utf16_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,63}}. % list_to_big_utf16/2
  {label,64}.
    {test,is_nil,{f,62},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, list_to_little_utf16, 1, 66}.
  {label,65}.
    {line,[{location,"bs_utf_r24_SUITE.erl",148}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_little_utf16},1}.
  {label,66}.
    {move,{literal,<<>>},{x,1}}.
    {call_only,2,{f,68}}. % list_to_little_utf16/2


{function, list_to_little_utf16, 2, 68}.
  {label,67}.
    {line,[{location,"bs_utf_r24_SUITE.erl",151}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_little_utf16},2}.
  {label,68}.
    {test,is_nonempty_list,{f,69},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",152}]}.
    {move,{integer,0},{x,3}}.
    {bs_utf16_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf16,{f,0},{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,68}}. % list_to_little_utf16/2
  {label,69}.
    {test,is_nil,{f,67},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, big_utf16_to_list, 1, 71}.
  {label,70}.
    {line,[{location,"bs_utf_r24_SUITE.erl",155}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,big_utf16_to_list},1}.
  {label,71}.
    {test,bs_start_match3,{f,70},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_utf16,
          {f,72},
          3,
          [{x,1},
           {field_flags,[{anno,[155,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,72},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[155,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",156}]}.
    {call,1,{f,71}}. % big_utf16_to_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,72}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,70},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.


{function, little_utf16_to_list, 1, 74}.
  {label,73}.
    {line,[{location,"bs_utf_r24_SUITE.erl",159}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,little_utf16_to_list},1}.
  {label,74}.
    {test,bs_start_match3,{f,73},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_utf16,
          {f,75},
          3,
          [{x,1},
           {field_flags,[{anno,[159,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,75},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[159,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",160}]}.
    {call,1,{f,74}}. % little_utf16_to_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,75}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,73},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.


{function, utf32_roundtrip, 1, 77}.
  {label,76}.
    {line,[{location,"bs_utf_r24_SUITE.erl",163}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_roundtrip},1}.
  {label,77}.
    {test,is_list,{f,76},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",164}]}.
    {call,0,{f,256}}. % utf32_data/0
    {test,is_tuple,{f,84},[{x,0}]}.
    {test,test_arity,{f,84},[{x,0},5]}.
    {get_tuple_element,{x,0},0,{y,2}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,84},[{x,1},{y,1}]}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_eq_exact,{f,84},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",165}]}.
    {call,1,{f,86}}. % utf32_big_len/1
    {test,is_eq_exact,{f,83},[{x,0},{integer,4}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",166}]}.
    {call,1,{f,91}}. % utf32_little_len/1
    {test,is_eq_exact,{f,82},[{x,0},{integer,4}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",167}]}.
    {call,1,{f,106}}. % big_utf32_to_list/1
    {test,is_eq_exact,{f,81},[{x,0},{y,2}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",168}]}.
    {call,1,{f,109}}. % little_utf32_to_list/1
    {test,is_eq_exact,{f,80},[{x,0},{y,2}]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",170}]}.
    {call,1,{f,96}}. % list_to_big_utf32/1
    {test,is_eq_exact,{f,79},[{x,0},{y,1}]}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_utf_r24_SUITE.erl",171}]}.
    {call,1,{f,101}}. % list_to_little_utf32/1
    {test,is_eq_exact,{f,78},[{x,0},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,78}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"bs_utf_r24_SUITE.erl",170}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"bs_utf_r24_SUITE.erl",168}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"bs_utf_r24_SUITE.erl",167}]}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{location,"bs_utf_r24_SUITE.erl",166}]}.
    {badmatch,{x,0}}.
  {label,83}.
    {line,[{location,"bs_utf_r24_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,84}.
    {line,[{location,"bs_utf_r24_SUITE.erl",164}]}.
    {badmatch,{x,0}}.


{function, utf32_big_len, 1, 86}.
  {label,85}.
    {line,[{location,"bs_utf_r24_SUITE.erl",175}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_big_len},1}.
  {label,86}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,88}}. % utf32_big_len/2


{function, utf32_big_len, 2, 88}.
  {label,87}.
    {line,[{location,"bs_utf_r24_SUITE.erl",178}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_big_len},2}.
  {label,88}.
    {test,bs_start_match3,{f,87},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_skip_utf32,
          {f,89},
          [{x,2},
           4,
           {field_flags,[{anno,[178,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,89},
          4,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[178,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",179}]}.
    {gc_bif,'+',{f,0},5,[{x,1},{integer,1}],{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,88}}. % utf32_big_len/2
  {label,89}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,87},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, utf32_little_len, 1, 91}.
  {label,90}.
    {line,[{location,"bs_utf_r24_SUITE.erl",182}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_little_len},1}.
  {label,91}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,93}}. % utf32_little_len/2


{function, utf32_little_len, 2, 93}.
  {label,92}.
    {line,[{location,"bs_utf_r24_SUITE.erl",185}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_little_len},2}.
  {label,93}.
    {test,bs_start_match3,{f,92},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_skip_utf32,
          {f,94},
          [{x,2},
           4,
           {field_flags,[{anno,[185,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}]}.
    {test,bs_get_binary2,
          {f,94},
          4,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[185,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",186}]}.
    {gc_bif,'+',{f,0},5,[{x,1},{integer,1}],{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,93}}. % utf32_little_len/2
  {label,94}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,92},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, list_to_big_utf32, 1, 96}.
  {label,95}.
    {line,[{location,"bs_utf_r24_SUITE.erl",189}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_big_utf32},1}.
  {label,96}.
    {move,{literal,<<>>},{x,1}}.
    {call_only,2,{f,98}}. % list_to_big_utf32/2


{function, list_to_big_utf32, 2, 98}.
  {label,97}.
    {line,[{location,"bs_utf_r24_SUITE.erl",192}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_big_utf32},2}.
  {label,98}.
    {test,is_nonempty_list,{f,99},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",193}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,98}}. % list_to_big_utf32/2
  {label,99}.
    {test,is_nil,{f,97},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, list_to_little_utf32, 1, 101}.
  {label,100}.
    {line,[{location,"bs_utf_r24_SUITE.erl",196}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_little_utf32},1}.
  {label,101}.
    {move,{literal,<<>>},{x,1}}.
    {call_only,2,{f,103}}. % list_to_little_utf32/2


{function, list_to_little_utf32, 2, 103}.
  {label,102}.
    {line,[{location,"bs_utf_r24_SUITE.erl",199}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_little_utf32},2}.
  {label,103}.
    {test,is_nonempty_list,{f,104},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",200}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf32,{f,0},{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,103}}. % list_to_little_utf32/2
  {label,104}.
    {test,is_nil,{f,102},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, big_utf32_to_list, 1, 106}.
  {label,105}.
    {line,[{location,"bs_utf_r24_SUITE.erl",203}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,big_utf32_to_list},1}.
  {label,106}.
    {test,bs_start_match3,{f,105},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_utf32,
          {f,107},
          3,
          [{x,1},
           {field_flags,[{anno,[203,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,107},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[203,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",204}]}.
    {call,1,{f,106}}. % big_utf32_to_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,107}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,105},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.


{function, little_utf32_to_list, 1, 109}.
  {label,108}.
    {line,[{location,"bs_utf_r24_SUITE.erl",207}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,little_utf32_to_list},1}.
  {label,109}.
    {test,bs_start_match3,{f,108},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_utf32,
          {f,110},
          3,
          [{x,1},
           {field_flags,[{anno,[207,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,110},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[207,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",208}]}.
    {call,1,{f,109}}. % little_utf32_to_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,110}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,108},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.


{function, guard, 1, 112}.
  {label,111}.
    {line,[{location,"bs_utf_r24_SUITE.erl",212}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,guard},1}.
  {label,112}.
    {test,is_list,{f,111},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,55296},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",213}]}.
    {call,1,{f,115}}. % do_guard/1
    {test,is_eq_exact,{f,113},[{x,0},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,113}.
    {badmatch,{x,0}}.


{function, do_guard, 1, 115}.
  {label,114}.
    {line,[{location,"bs_utf_r24_SUITE.erl",216}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,do_guard},1}.
  {label,115}.
    {move,{integer,0},{x,1}}.
    {bs_utf8_size,{f,116},{x,0},{x,2}}.
    {bs_add,{f,116},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,116},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_utf8,{f,116},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,byte_size,{f,116},2,[{x,1}],{x,1}}.
    {test,is_eq_exact,{f,118},[{x,1},{integer,42}]}.
  {label,116}.
    {line,[{location,"bs_utf_r24_SUITE.erl",217}]}.
    {move,{integer,0},{x,1}}.
    {bs_utf16_size,{f,117},{x,0},{x,2}}.
    {bs_add,{f,117},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,117},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_utf16,{f,117},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,byte_size,{f,117},2,[{x,1}],{x,1}}.
    {test,is_eq_exact,{f,118},[{x,1},{integer,42}]}.
  {label,117}.
    {line,[{location,"bs_utf_r24_SUITE.erl",218}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,119},[{x,1},{integer,4},8],{x,1}}.
    {bs_init_bits,{f,119},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_utf32,{f,119},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {gc_bif,byte_size,{f,119},1,[{x,0}],{x,0}}.
    {test,is_ne_exact,{f,119},[{x,0},{integer,42}]}.
  {label,118}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,119}.
    {move,{atom,error},{x,0}}.
    return.


{function, extreme_tripping, 1, 121}.
  {label,120}.
    {line,[{location,"bs_utf_r24_SUITE.erl",224}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,extreme_tripping},1}.
  {label,121}.
    {test,is_list,{f,120},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,1024},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",225}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,2}}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",226}]}.
    {call,2,{f,126}}. % unicode_to_utf8/2
    {move,{x,0},{y,1}}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",227}]}.
    {call,2,{f,129}}. % utf8_to_utf16/2
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",228}]}.
    {call,2,{f,135}}. % utf8_to_utf32/2
    {swap,{y,0},{x,0}}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",229}]}.
    {call,2,{f,132}}. % utf16_to_utf32/2
    {test,is_eq_exact,{f,124},[{x,0},{y,0}]}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",230}]}.
    {call,2,{f,138}}. % utf32_to_utf8/2
    {test,is_eq_exact,{f,123},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {trim,2,1}.
    {line,[{location,"bs_utf_r24_SUITE.erl",231}]}.
    {call,1,{f,141}}. % utf32_to_unicode/1
    {test,is_eq_exact,{f,122},[{x,0},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,122}.
    {badmatch,{x,0}}.
  {label,123}.
    {line,[{location,"bs_utf_r24_SUITE.erl",230}]}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{location,"bs_utf_r24_SUITE.erl",229}]}.
    {badmatch,{x,0}}.


{function, unicode_to_utf8, 2, 126}.
  {label,125}.
    {line,[{location,"bs_utf_r24_SUITE.erl",234}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,unicode_to_utf8},2}.
  {label,126}.
    {test,is_nonempty_list,{f,127},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",235}]}.
    {move,{integer,0},{x,3}}.
    {bs_utf8_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,126}}. % unicode_to_utf8/2
  {label,127}.
    {test,is_nil,{f,125},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, utf8_to_utf16, 2, 129}.
  {label,128}.
    {line,[{location,"bs_utf_r24_SUITE.erl",238}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_to_utf16},2}.
  {label,129}.
    {test,bs_start_match3,{f,128},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_utf8,
          {f,130},
          4,
          [{x,2},
           {field_flags,[{anno,[238,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,130},
          5,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[238,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",239}]}.
    {move,{integer,0},{x,6}}.
    {bs_utf16_size,{f,0},{x,4},{x,7}}.
    {bs_add,{f,0},[{x,6},{x,7},8],{x,6}}.
    {bs_append,{f,0},{x,6},0,7,8,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{x,4}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,129}}. % utf8_to_utf16/2
  {label,130}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,128},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, utf16_to_utf32, 2, 132}.
  {label,131}.
    {line,[{location,"bs_utf_r24_SUITE.erl",242}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_to_utf32},2}.
  {label,132}.
    {test,bs_start_match3,{f,131},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_utf16,
          {f,133},
          4,
          [{x,2},
           {field_flags,[{anno,[242,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,133},
          5,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[242,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",243}]}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,4},8],{x,6}}.
    {bs_append,{f,0},{x,6},0,7,8,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{x,4}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,132}}. % utf16_to_utf32/2
  {label,133}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,131},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, utf8_to_utf32, 2, 135}.
  {label,134}.
    {line,[{location,"bs_utf_r24_SUITE.erl",246}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_to_utf32},2}.
  {label,135}.
    {test,bs_start_match3,{f,134},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_utf8,
          {f,136},
          4,
          [{x,2},
           {field_flags,[{anno,[246,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,136},
          5,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[246,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",247}]}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,4},8],{x,6}}.
    {bs_append,{f,0},{x,6},0,7,8,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{x,4}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,135}}. % utf8_to_utf32/2
  {label,136}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,134},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, utf32_to_utf8, 2, 138}.
  {label,137}.
    {line,[{location,"bs_utf_r24_SUITE.erl",250}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_to_utf8},2}.
  {label,138}.
    {test,bs_start_match3,{f,137},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_utf32,
          {f,139},
          4,
          [{x,2},
           {field_flags,[{anno,[250,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,139},
          5,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[250,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",251}]}.
    {move,{integer,0},{x,6}}.
    {bs_utf8_size,{f,0},{x,4},{x,7}}.
    {bs_add,{f,0},[{x,6},{x,7},8],{x,6}}.
    {bs_append,{f,0},{x,6},0,7,8,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,4}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,138}}. % utf32_to_utf8/2
  {label,139}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,137},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, utf32_to_unicode, 1, 141}.
  {label,140}.
    {line,[{location,"bs_utf_r24_SUITE.erl",254}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_to_unicode},1}.
  {label,141}.
    {test,bs_start_match3,{f,140},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_utf32,
          {f,142},
          3,
          [{x,1},
           {field_flags,[{anno,[254,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,142},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[254,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",255}]}.
    {call,1,{f,141}}. % utf32_to_unicode/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,142}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,140},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.


{function, literals, 1, 144}.
  {label,143}.
    {line,[{location,"bs_utf_r24_SUITE.erl",258}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,literals},1}.
  {label,144}.
    {test,is_list,{f,143},[{x,0}]}.
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
    {line,[{location,"bs_utf_r24_SUITE.erl",259}]}.
    {call,1,{f,260}}. % id/1
    {test,is_eq_exact,{f,207},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",260}]}.
    {call,1,{f,260}}. % id/1
    {test,is_eq_exact,{f,206},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",261}]}.
    {call,1,{f,260}}. % id/1
    {test,is_eq_exact,{f,205},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",262}]}.
    {call,1,{f,260}}. % id/1
    {test,is_eq_exact,{f,204},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",263}]}.
    {call,1,{f,260}}. % id/1
    {test,is_eq_exact,{f,203},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",264}]}.
    {call,1,{f,260}}. % id/1
    {test,is_eq_exact,{f,202},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",265}]}.
    {call,1,{f,260}}. % id/1
    {test,is_eq_exact,{f,201},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",267}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,200},[{x,0},{atom,abc_utf8}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",268}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,199},[{x,0},{atom,abc_utf8}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",269}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,198},[{x,0},{atom,abc_utf8}]}.
    {move,{literal,<<0,97,0,98,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",271}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,197},[{x,0},{atom,abc_utf16be}]}.
    {move,{literal,<<0,97,0,98,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",272}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,196},[{x,0},{atom,abc_utf16be}]}.
    {move,{literal,<<97,0,98,0,99,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",273}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,195},[{x,0},{atom,abc_utf16le}]}.
    {move,{literal,<<97,0,98,0,99,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",274}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,194},[{x,0},{atom,abc_utf16le}]}.
    {move,{literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",276}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,193},[{x,0},{atom,abc_utf32be}]}.
    {move,{literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",277}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,192},[{x,0},{atom,abc_utf32be}]}.
    {move,{literal,<<97,0,0,0,98,0,0,0,99,0,0,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",278}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,191},[{x,0},{atom,abc_utf32le}]}.
    {move,{literal,<<97,0,0,0,98,0,0,0,99,0,0,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",279}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,190},[{x,0},{atom,abc_utf32le}]}.
    {move,{literal,<<208,156,208,176,209,129,209,130,208,181,209,128,32,208,
                     184,32,208,156,208,176,209,128,208,179,208,176,209,128,
                     208,184,209,130,208,176>>},
          {x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",281}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,189},[{x,0},{atom,mm_utf8}]}.
    {move,{literal,<<4,28,4,48,4,65,4,66,4,53,4,64,0,32,4,56,0,32,4,28,4,48,4,
                     64,4,51,4,48,4,64,4,56,4,66,4,48>>},
          {x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",282}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,188},[{x,0},{atom,mm_utf16be}]}.
    {move,{literal,<<0,0,4,28,0,0,4,48,0,0,4,65,0,0,4,66,0,0,4,53,0,0,4,64,0,
                     0,0,32,0,0,4,56,0,0,0,32,0,0,4,28,0,0,4,48,0,0,4,64,0,0,
                     4,51,0,0,4,48,0,0,4,64,0,0,4,56,0,0,4,66,0,0,4,48>>},
          {x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",283}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,187},[{x,0},{atom,mm_utf32be}]}.
    {move,{literal,<<"bjÃ¶rn">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",285}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,186},[{x,0},{atom,bjorn_utf8}]}.
    {move,{literal,<<"bjÃ¶rn">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",286}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,185},[{x,0},{atom,bjorn_utf8}]}.
    {move,{literal,<<0,98,0,106,0,246,0,114,0,110>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",288}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,184},[{x,0},{atom,bjorn_utf16be}]}.
    {move,{literal,<<0,98,0,106,0,246,0,114,0,110>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",289}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,183},[{x,0},{atom,bjorn_utf16be}]}.
    {move,{literal,<<98,0,106,0,246,0,114,0,110,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",290}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,182},[{x,0},{atom,bjorn_utf16le}]}.
    {move,{literal,<<98,0,106,0,246,0,114,0,110,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",291}]}.
    {call,1,{f,209}}. % match_literal/1
    {test,is_eq_exact,{f,181},[{x,0},{atom,bjorn_utf16le}]}.
    {'catch',{y,14},{f,145}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",298}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf8_size,{f,0},{integer,-1},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{integer,-1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,145}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,180},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,180},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,180},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,180},[{x,1},{atom,badarg}]}.
    {'catch',{y,13},{f,146}}.
    {line,[{scope,[28]},{location,"bs_utf_r24_SUITE.erl",299}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf16_size,{f,0},{integer,-1},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{integer,-1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,146}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,179},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,179},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,179},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,179},[{x,1},{atom,badarg}]}.
    {'catch',{y,12},{f,147}}.
    {line,[{scope,[26]},{location,"bs_utf_r24_SUITE.erl",300}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf16_size,{f,0},{integer,-1},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[little]},{integer,-1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,147}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,178},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,178},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,178},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,178},[{x,1},{atom,badarg}]}.
    {'catch',{y,11},{f,148}}.
    {line,[{scope,[24]},{location,"bs_utf_r24_SUITE.erl",301}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,5},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{integer,-1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,148}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,177},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,177},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,177},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,177},[{x,1},{atom,badarg}]}.
    {'catch',{y,10},{f,149}}.
    {line,[{scope,[22]},{location,"bs_utf_r24_SUITE.erl",302}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,5},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[little]},{integer,-1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,149}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,176},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,176},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,176},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,176},[{x,1},{atom,badarg}]}.
    {'catch',{y,9},{f,150}}.
    {line,[{scope,[20]},{location,"bs_utf_r24_SUITE.erl",303}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf8_size,{f,0},{integer,55296},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{integer,55296}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,150}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,175},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,175},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,175},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,175},[{x,1},{atom,badarg}]}.
    {'catch',{y,8},{f,151}}.
    {line,[{scope,[18]},{location,"bs_utf_r24_SUITE.erl",304}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf16_size,{f,0},{integer,55296},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{integer,55296}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,151}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,174},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,174},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,174},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,174},[{x,1},{atom,badarg}]}.
    {'catch',{y,7},{f,152}}.
    {line,[{scope,[16]},{location,"bs_utf_r24_SUITE.erl",305}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf16_size,{f,0},{integer,55296},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[little]},{integer,55296}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,152}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,173},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,173},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,173},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,173},[{x,1},{atom,badarg}]}.
    {'catch',{y,6},{f,153}}.
    {line,[{scope,[14]},{location,"bs_utf_r24_SUITE.erl",306}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,5},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{integer,55296}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,153}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,172},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,172},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,172},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,172},[{x,1},{atom,badarg}]}.
    {'catch',{y,5},{f,154}}.
    {line,[{scope,"\f"},{location,"bs_utf_r24_SUITE.erl",307}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,5},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[little]},{integer,55296}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,154}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,171},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,171},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,171},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,171},[{x,1},{atom,badarg}]}.
    {'catch',{y,4},{f,155}}.
    {line,[{scope,"\n"},{location,"bs_utf_r24_SUITE.erl",310}]}.
    {move,{integer,0},{x,0}}.
    {bs_utf8_size,{f,0},{integer,1114112},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{integer,1114112}}.
    {move,{x,0},{x,0}}.
  {label,155}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,170},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,170},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,170},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,170},[{x,1},{atom,badarg}]}.
    {'catch',{y,3},{f,156}}.
    {line,[{scope,"\b"},{location,"bs_utf_r24_SUITE.erl",311}]}.
    {move,{integer,0},{x,0}}.
    {bs_utf16_size,{f,0},{integer,1114112},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{integer,1114112}}.
    {move,{x,0},{x,0}}.
  {label,156}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,169},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,169},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,169},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,169},[{x,1},{atom,badarg}]}.
    {'catch',{y,2},{f,157}}.
    {line,[{scope,[6]},{location,"bs_utf_r24_SUITE.erl",312}]}.
    {move,{integer,0},{x,0}}.
    {bs_utf16_size,{f,0},{integer,1114112},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[little]},{integer,1114112}}.
    {move,{x,0},{x,0}}.
  {label,157}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,168},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,168},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{atom,badarg}]}.
    {'catch',{y,1},{f,158}}.
    {line,[{scope,[4]},{location,"bs_utf_r24_SUITE.erl",313}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{integer,1114112}}.
    {move,{x,0},{x,0}}.
  {label,158}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,167},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,167},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,167},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,167},[{x,1},{atom,badarg}]}.
    {'catch',{y,0},{f,159}}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",314}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[little]},{integer,1114112}}.
    {move,{x,0},{x,0}}.
  {label,159}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,166},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,166},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,166},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,166},[{x,1},{atom,badarg}]}.
    {move,{literal,<<237,160,128>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",317}]}.
    {call,1,{f,221}}. % bad_literal_match/1
    {test,is_eq_exact,{f,165},[{x,0},{atom,error}]}.
    {move,{literal,<<244,144,128,128>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",318}]}.
    {call,1,{f,221}}. % bad_literal_match/1
    {test,is_eq_exact,{f,164},[{x,0},{atom,error}]}.
    {move,{literal,<<0,0,216,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",320}]}.
    {call,1,{f,221}}. % bad_literal_match/1
    {test,is_eq_exact,{f,163},[{x,0},{atom,error}]}.
    {move,{literal,<<0,17,0,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",321}]}.
    {call,1,{f,221}}. % bad_literal_match/1
    {test,is_eq_exact,{f,162},[{x,0},{atom,error}]}.
    {move,{literal,<<0,216,0,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",322}]}.
    {call,1,{f,221}}. % bad_literal_match/1
    {test,is_eq_exact,{f,161},[{x,0},{atom,error}]}.
    {move,{literal,<<0,0,17,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",323}]}.
    {call,1,{f,221}}. % bad_literal_match/1
    {test,is_eq_exact,{f,160},[{x,0},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,15}.
    return.
  {label,160}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",322}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",321}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",320}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",318}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",317}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",314}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",313}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{scope,[4]},{location,"bs_utf_r24_SUITE.erl",312}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,[6]},{location,"bs_utf_r24_SUITE.erl",311}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,"\b"},{location,"bs_utf_r24_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,"\n"},{location,"bs_utf_r24_SUITE.erl",307}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,"\f"},{location,"bs_utf_r24_SUITE.erl",306}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope,[14]},{location,"bs_utf_r24_SUITE.erl",305}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,[16]},{location,"bs_utf_r24_SUITE.erl",304}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,[18]},{location,"bs_utf_r24_SUITE.erl",303}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[20]},{location,"bs_utf_r24_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[22]},{location,"bs_utf_r24_SUITE.erl",301}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[24]},{location,"bs_utf_r24_SUITE.erl",300}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[26]},{location,"bs_utf_r24_SUITE.erl",299}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[28]},{location,"bs_utf_r24_SUITE.erl",298}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",291}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",290}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",289}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",288}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",286}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",285}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",283}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",282}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",281}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",279}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",278}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",277}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",276}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",274}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",273}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",272}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",271}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",269}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",268}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",267}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",265}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",264}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",263}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",262}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",261}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",260}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",259}]}.
    {badmatch,{x,0}}.


{function, match_literal, 1, 209}.
  {label,208}.
    {line,[{location,"bs_utf_r24_SUITE.erl",327}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,match_literal},1}.
  {label,209}.
    {test,bs_start_match3,{f,208},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,210},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[327,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,210},[{x,3},{integer,97}]}.
    {test,bs_match_string,{f,210},[{x,1},16,{string,<<"bc">>}]}.
    {test,bs_test_tail2,{f,210},[{x,1},0]}.
    {move,{atom,abc_utf8},{x,0}}.
    return.
  {label,210}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_utf16,
          {f,211},
          3,
          [{x,1},
           {field_flags,[{anno,[328,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,211},[{x,3},{integer,97}]}.
    {test,bs_get_utf16,
          {f,211},
          3,
          [{x,1},
           {field_flags,[{anno,[328,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,211},[{x,3},{integer,98}]}.
    {test,bs_get_utf16,
          {f,211},
          3,
          [{x,1},
           {field_flags,[{anno,[328,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,211},[{x,3},{integer,99}]}.
    {test,bs_test_tail2,{f,211},[{x,1},0]}.
    {move,{atom,abc_utf16be},{x,0}}.
    return.
  {label,211}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_utf16,
          {f,212},
          3,
          [{x,1},
           {field_flags,[{anno,[329,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,is_eq_exact,{f,212},[{x,3},{integer,97}]}.
    {test,bs_get_utf16,
          {f,212},
          3,
          [{x,1},
           {field_flags,[{anno,[329,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,is_eq_exact,{f,212},[{x,3},{integer,98}]}.
    {test,bs_get_utf16,
          {f,212},
          3,
          [{x,1},
           {field_flags,[{anno,[329,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,is_eq_exact,{f,212},[{x,3},{integer,99}]}.
    {test,bs_test_tail2,{f,212},[{x,1},0]}.
    {move,{atom,abc_utf16le},{x,0}}.
    return.
  {label,212}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_utf32,
          {f,213},
          3,
          [{x,1},
           {field_flags,[{anno,[330,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,213},[{x,3},{integer,97}]}.
    {test,bs_get_utf32,
          {f,213},
          3,
          [{x,1},
           {field_flags,[{anno,[330,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,213},[{x,3},{integer,98}]}.
    {test,bs_get_utf32,
          {f,213},
          3,
          [{x,1},
           {field_flags,[{anno,[330,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,213},[{x,3},{integer,99}]}.
    {test,bs_test_tail2,{f,213},[{x,1},0]}.
    {move,{atom,abc_utf32be},{x,0}}.
    return.
  {label,213}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_utf32,
          {f,214},
          3,
          [{x,1},
           {field_flags,[{anno,[331,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,is_eq_exact,{f,214},[{x,3},{integer,97}]}.
    {test,bs_get_utf32,
          {f,214},
          3,
          [{x,1},
           {field_flags,[{anno,[331,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,is_eq_exact,{f,214},[{x,3},{integer,98}]}.
    {test,bs_get_utf32,
          {f,214},
          3,
          [{x,1},
           {field_flags,[{anno,[331,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,is_eq_exact,{f,214},[{x,3},{integer,99}]}.
    {test,bs_test_tail2,{f,214},[{x,1},0]}.
    {move,{atom,abc_utf32le},{x,0}}.
    return.
  {label,214}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,215},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[332,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,215},[{x,3},{integer,208}]}.
    {test,bs_match_string,
          {f,215},
          [{x,1},
           264,
           {string,<<156,208,176,209,129,209,130,208,181,209,128,32,208,184,
                     32,208,156,208,176,209,128,208,179,208,176,209,128,208,
                     184,209,130,208,176>>}]}.
    {test,bs_test_tail2,{f,215},[{x,1},0]}.
    {move,{atom,mm_utf8},{x,0}}.
    return.
  {label,215}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1052}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1072}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1089}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1090}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1077}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1088}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,32}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1080}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,32}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1052}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1072}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1088}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1075}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1072}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1088}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1080}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1090}]}.
    {test,bs_get_utf16,
          {f,216},
          3,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,216},[{x,3},{integer,1072}]}.
    {test,bs_test_tail2,{f,216},[{x,1},0]}.
    {move,{atom,mm_utf16be},{x,0}}.
    return.
  {label,216}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1052}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1072}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1089}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1090}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1077}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1088}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,32}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1080}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,32}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1052}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1072}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1088}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1075}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1072}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1088}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1080}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1090}]}.
    {test,bs_get_utf32,
          {f,217},
          3,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,217},[{x,3},{integer,1072}]}.
    {test,bs_test_tail2,{f,217},[{x,1},0]}.
    {move,{atom,mm_utf32be},{x,0}}.
    return.
  {label,217}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,218},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[335,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,218},[{x,3},{integer,98}]}.
    {test,bs_match_string,{f,218},[{x,1},40,{string,<<"jÃ¶rn">>}]}.
    {test,bs_test_tail2,{f,218},[{x,1},0]}.
    {move,{atom,bjorn_utf8},{x,0}}.
    return.
  {label,218}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_utf16,
          {f,219},
          3,
          [{x,1},
           {field_flags,[{anno,[336,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,219},[{x,3},{integer,98}]}.
    {test,bs_get_utf16,
          {f,219},
          3,
          [{x,1},
           {field_flags,[{anno,[336,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,219},[{x,3},{integer,106}]}.
    {test,bs_get_utf16,
          {f,219},
          3,
          [{x,1},
           {field_flags,[{anno,[336,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,219},[{x,3},{integer,246}]}.
    {test,bs_get_utf16,
          {f,219},
          3,
          [{x,1},
           {field_flags,[{anno,[336,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,219},[{x,3},{integer,114}]}.
    {test,bs_get_utf16,
          {f,219},
          3,
          [{x,1},
           {field_flags,[{anno,[336,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,219},[{x,3},{integer,110}]}.
    {test,bs_test_tail2,{f,219},[{x,1},0]}.
    {move,{atom,bjorn_utf16be},{x,0}}.
    return.
  {label,219}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_utf16,
          {f,208},
          2,
          [{x,1},
           {field_flags,[{anno,[337,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,208},[{x,2},{integer,98}]}.
    {test,bs_get_utf16,
          {f,208},
          2,
          [{x,1},
           {field_flags,[{anno,[337,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,208},[{x,2},{integer,106}]}.
    {test,bs_get_utf16,
          {f,208},
          2,
          [{x,1},
           {field_flags,[{anno,[337,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,208},[{x,2},{integer,246}]}.
    {test,bs_get_utf16,
          {f,208},
          2,
          [{x,1},
           {field_flags,[{anno,[337,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,208},[{x,2},{integer,114}]}.
    {test,bs_get_utf16,
          {f,208},
          2,
          [{x,1},
           {field_flags,[{anno,[337,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,208},[{x,2},{integer,110}]}.
    {test,bs_test_tail2,{f,208},[{x,1},0]}.
    {move,{atom,bjorn_utf16le},{x,0}}.
    return.


{function, bad_literal_match, 1, 221}.
  {label,220}.
    {line,[{location,"bs_utf_r24_SUITE.erl",339}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,bad_literal_match},1}.
  {label,221}.
    {test,bs_start_match3,{f,224},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_utf8,
          {f,222},
          2,
          [{x,0},
           {field_flags,[{anno,[339,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,222},[{x,2},{integer,55296}]}.
    {test,bs_test_tail2,{f,222},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,222}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf32,
          {f,223},
          2,
          [{x,0},
           {field_flags,[{anno,[341,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,223},[{x,2},{integer,55296}]}.
    {test,bs_test_tail2,{f,223},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,223}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf32,
          {f,224},
          1,
          [{x,0},
           {field_flags,[{anno,[343,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {test,is_eq_exact,{f,224},[{x,1},{integer,55296}]}.
    {test,bs_test_tail2,{f,224},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,224}.
    {move,{atom,error},{x,0}}.
    return.


{function, coverage, 1, 226}.
  {label,225}.
    {line,[{location,"bs_utf_r24_SUITE.erl",347}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,coverage},1}.
  {label,226}.
    {test,is_list,{f,225},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<225,128,128,240,144,128,128,0>>},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",349}]}.
    {call,1,{f,236}}. % coverage_1/1
    {test,is_eq_exact,{f,234},[{x,0},{integer,0}]}.
    {move,{literal,<<225,128,128,240,144,128,128,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",350}]}.
    {call,1,{f,236}}. % coverage_1/1
    {test,is_eq_exact,{f,233},[{x,0},{integer,1}]}.
    {move,{literal,<<225,128,128,240,144,128,128,0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",352}]}.
    {call,1,{f,240}}. % coverage_2/1
    {test,is_eq_exact,{f,232},[{x,0},{integer,0}]}.
    {move,{literal,<<208,128,208,129,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",353}]}.
    {call,1,{f,240}}. % coverage_2/1
    {test,is_eq_exact,{f,231},[{x,0},{integer,1}]}.
    {'catch',{y,0},{f,227}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",355}]}.
    {call,1,{f,244}}. % coverage_3/1
  {label,227}.
    {catch_end,{y,0}}.
    {line,[{scope,[1,2]},{location,"bs_utf_r24_SUITE.erl",355}]}.
    {call,1,{f,258}}. % fc/1
    {move,{integer,533},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_utf_r24_SUITE.erl",360}]}.
    {call,1,{f,246}}. % cover_test_heap_utf8/1
    {test,is_eq_exact,{f,230},[{x,0},{literal,{ok,<<200,149>>}}]}.
    {move,{integer,1024},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",361}]}.
    {call,1,{f,248}}. % cover_test_heap_utf16/1
    {test,is_tagged_tuple,{f,229},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,229},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,229},2,[{x,1}],{x,1}}.
    {test,bs_get_utf16,
          {f,229},
          2,
          [{x,1},
           {field_flags,[{anno,[361,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,229},[{x,2},{integer,1024}]}.
    {test,bs_test_tail2,{f,229},[{x,1},0]}.
    {move,{integer,7966},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",362}]}.
    {call,1,{f,250}}. % cover_test_heap_utf32/1
    {test,is_tagged_tuple,{f,228},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,228},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,228},2,[{x,1}],{x,1}}.
    {test,bs_get_utf32,
          {f,228},
          2,
          [{x,1},
           {field_flags,[{anno,[362,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,228},[{x,2},{integer,7966}]}.
    {test,bs_test_tail2,{f,228},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,228}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",361}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",352}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",350}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",349}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 1, 236}.
  {label,235}.
    {line,[{location,"bs_utf_r24_SUITE.erl",366}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,coverage_1},1}.
  {label,236}.
    {test,bs_start_match3,{f,235},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,235},
          [{x,1},48,{string,<<225,128,128,240,144,128>>}]}.
    {test,bs_get_integer2,
          {f,235},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[366,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},
                {f,235},
                {list,[{integer,32768},{f,238},{integer,32769},{f,237}]}}.
  {label,237}.
    {test,bs_test_tail2,{f,235},[{x,1},0]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,238}.
    {test,bs_test_tail2,{f,235},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    return.


{function, coverage_2, 1, 240}.
  {label,239}.
    {line,[{location,"bs_utf_r24_SUITE.erl",369}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,coverage_2},1}.
  {label,240}.
    {test,bs_start_match3,{f,239},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,239},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[369,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},
                {f,239},
                {list,[{integer,53376},{f,242},{integer,57728},{f,241}]}}.
  {label,241}.
    {test,bs_match_string,
          {f,239},
          [{x,1},48,{string,<<128,240,144,128,128,0>>}]}.
    {test,bs_test_tail2,{f,239},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,242}.
    {test,bs_match_string,{f,239},[{x,1},24,{string,<<208,129,1>>}]}.
    {test,bs_test_tail2,{f,239},[{x,1},0]}.
    {move,{integer,1},{x,0}}.
    return.


{function, coverage_3, 1, 244}.
  {label,243}.
    {line,[{location,"bs_utf_r24_SUITE.erl",372}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,coverage_3},1}.
  {label,244}.
    {jump,{f,243}}.


{function, cover_test_heap_utf8, 1, 246}.
  {label,245}.
    {line,[{location,"bs_utf_r24_SUITE.erl",374}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,cover_test_heap_utf8},1}.
  {label,246}.
    {move,{integer,0},{x,1}}.
    {bs_utf8_size,{f,0},{x,0},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},3,2,{field_flags,[]},{x,1}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, cover_test_heap_utf16, 1, 248}.
  {label,247}.
    {line,[{location,"bs_utf_r24_SUITE.erl",375}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,cover_test_heap_utf16},1}.
  {label,248}.
    {move,{integer,0},{x,1}}.
    {bs_utf16_size,{f,0},{x,0},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},3,2,{field_flags,[]},{x,1}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, cover_test_heap_utf32, 1, 250}.
  {label,249}.
    {line,[{location,"bs_utf_r24_SUITE.erl",376}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,cover_test_heap_utf32},1}.
  {label,250}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},3,2,{field_flags,[]},{x,1}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, utf_data, 0, 252}.
  {label,251}.
    {line,[{location,"bs_utf_r24_SUITE.erl",378}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf_data},0}.
  {label,252}.
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


{function, utf16_data, 0, 254}.
  {label,253}.
    {line,[{location,"bs_utf_r24_SUITE.erl",401}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_data},0}.
  {label,254}.
    {move,{literal,{[74565,61,82,97],
                    <<216,8,223,69,0,61,0,82,0,97>>,
                    <<216,8,223,69,0,61,0,82,0,97>>,
                    <<8,216,69,223,61,0,82,0,97,0>>,
                    <<8,216,69,223,61,0,82,0,97,0>>}},
          {x,0}}.
    return.


{function, utf32_data, 0, 256}.
  {label,255}.
    {line,[{location,"bs_utf_r24_SUITE.erl",420}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_data},0}.
  {label,256}.
    {move,{literal,{[65,8802,913,46],
                    <<0,0,0,65,0,0,34,98,0,0,3,145,0,0,0,46>>,
                    <<0,0,0,65,0,0,34,98,0,0,3,145,0,0,0,46>>,
                    <<65,0,0,0,98,34,0,0,145,3,0,0,46,0,0,0>>,
                    <<65,0,0,0,98,34,0,0,145,3,0,0,46,0,0,0>>}},
          {x,0}}.
    return.


{function, fc, 1, 258}.
  {label,257}.
    {line,[{location,"bs_utf_r24_SUITE.erl",435}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,fc},1}.
  {label,258}.
    {test,is_tagged_tuple,{f,257},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,257},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,257},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,257},[{x,1},{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, id, 1, 260}.
  {label,259}.
    {line,[{location,"bs_utf_r24_SUITE.erl",438}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,id},1}.
  {label,260}.
    return.


{function, module_info, 0, 262}.
  {label,261}.
    {line,[]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,module_info},0}.
  {label,262}.
    {move,{atom,bs_utf_r24_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 264}.
  {label,263}.
    {line,[]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,module_info},1}.
  {label,264}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_utf_r24_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-unused_utf_char/1-lc$^0/1-0-', 1, 266}.
  {label,265}.
    {line,[{location,"bs_utf_r24_SUITE.erl",105}]}.
    {func_info,{atom,bs_utf_r24_SUITE},
               {atom,'-unused_utf_char/1-lc$^0/1-0-'},
               1}.
  {label,266}.
    {test,is_nonempty_list,{f,268},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,267},[{x,1}]}.
    {test,test_arity,{f,267},[{x,1},2]}.
    {allocate,2,2}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,1},0,{y,0}}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",104}]}.
    {call,1,{f,37}}. % utf8_len/1
    {gc_bif,length,{f,0},1,[{y,0}],{x,1}}.
    {test,is_eq_exact,{f,270},[{x,0},{x,1}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,266},2}. % '-unused_utf_char/1-lc$^0/1-0-'/1
  {label,267}.
    {call_only,1,{f,266}}. % '-unused_utf_char/1-lc$^0/1-0-'/1
  {label,268}.
    {test,is_nil,{f,269},[{x,0}]}.
    return.
  {label,269}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",105}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,270}.
    {line,[{location,"bs_utf_r24_SUITE.erl",104}]}.
    {badmatch,{atom,false}}.


{function, '-utf8_roundtrip_1/1-lc$^1/1-1-', 1, 272}.
  {label,271}.
    {line,[{location,"bs_utf_r24_SUITE.erl",86}]}.
    {func_info,{atom,bs_utf_r24_SUITE},
               {atom,'-utf8_roundtrip_1/1-lc$^1/1-1-'},
               1}.
  {label,272}.
    {test,is_nonempty_list,{f,273},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_utf8_size,{f,0},{x,1},{x,3}}.
    {bs_add,{f,0},[{x,2},{x,3},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,1}}.
    {move,{x,2},{x,2}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {call,2,{f,24}}. % utf8_guard/2
    {test,is_eq_exact,{f,275},[{x,0},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,272},1}. % '-utf8_roundtrip_1/1-lc$^1/1-1-'/1
  {label,273}.
    {test,is_nil,{f,274},[{x,0}]}.
    return.
  {label,274}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,275}.
    {badmatch,{x,0}}.


{function, '-utf8_roundtrip_1/1-lc$^0/1-0-', 1, 277}.
  {label,276}.
    {line,[{location,"bs_utf_r24_SUITE.erl",85}]}.
    {func_info,{atom,bs_utf_r24_SUITE},
               {atom,'-utf8_roundtrip_1/1-lc$^0/1-0-'},
               1}.
  {label,277}.
    {test,is_nonempty_list,{f,278},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,1},8],{x,2}}.
    {bs_utf8_size,{f,0},{x,1},{x,3}}.
    {bs_add,{f,0},[{x,2},{x,3},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_string,1,{string,<<"*">>}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,1}}.
    {move,{x,2},{x,2}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {call,2,{f,24}}. % utf8_guard/2
    {test,is_eq_exact,{f,280},[{x,0},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,277},1}. % '-utf8_roundtrip_1/1-lc$^0/1-0-'/1
  {label,278}.
    {test,is_nil,{f,279},[{x,0}]}.
    return.
  {label,279}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,280}.
    {badmatch,{x,0}}.


{function, '-utf8_roundtrip/1-lc$^0/1-0-', 1, 282}.
  {label,281}.
    {line,[{location,"bs_utf_r24_SUITE.erl",79}]}.
    {func_info,{atom,bs_utf_r24_SUITE},
               {atom,'-utf8_roundtrip/1-lc$^0/1-0-'},
               1}.
  {label,282}.
    {test,is_nonempty_list,{f,283},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,20}}. % utf8_roundtrip_1/1
    {move,{y,0},{x,0}}.
    {call_last,1,{f,282},1}. % '-utf8_roundtrip/1-lc$^0/1-0-'/1
  {label,283}.
    {test,is_nil,{f,284},[{x,0}]}.
    return.
  {label,284}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
