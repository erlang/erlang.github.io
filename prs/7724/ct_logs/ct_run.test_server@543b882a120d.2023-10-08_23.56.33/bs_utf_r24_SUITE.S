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

{labels, 303}.


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
    {call,0,{f,270}}. % utf_data/0
    {call,1,{f,300}}. % '-utf8_roundtrip/1-lc$^0/1-0-'/1
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
    {call,1,{f,31}}. % list_to_utf8/1
    {test,is_eq_exact,{f,21},[{x,0},{y,1}]}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",85}]}.
    {call,1,{f,295}}. % '-utf8_roundtrip_1/1-lc$^0/1-0-'/1
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_utf_r24_SUITE.erl",86}]}.
    {call,1,{f,290}}. % '-utf8_roundtrip_1/1-lc$^1/1-1-'/1
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
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,26},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_utf8,
          {f,28},
          2,
          [{x,1},
           {field_flags,[{anno,[92,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,28},[{x,1},8]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",93}]}.
    {call,1,{f,27}}. % utf8_to_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,28}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_test_tail2,{f,29},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.
  {label,29}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,26}}.


{function, list_to_utf8, 1, 31}.
  {label,30}.
    {line,[{location,"bs_utf_r24_SUITE.erl",96}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_utf8},1}.
  {label,31}.
    {move,{literal,<<>>},{x,1}}.
    {call_only,2,{f,33}}. % list_to_utf8/2


{function, list_to_utf8, 2, 33}.
  {label,32}.
    {line,[{location,"bs_utf_r24_SUITE.erl",99}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_utf8},2}.
  {label,33}.
    {test,is_nonempty_list,{f,34},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",100}]}.
    {move,{integer,0},{x,3}}.
    {bs_utf8_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,33}}. % list_to_utf8/2
  {label,34}.
    {test,is_nil,{f,32},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, unused_utf_char, 1, 36}.
  {label,35}.
    {line,[{location,"bs_utf_r24_SUITE.erl",103}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,unused_utf_char},1}.
  {label,36}.
    {test,is_list,{f,35},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_utf_r24_SUITE.erl",105}]}.
    {call,0,{f,270}}. % utf_data/0
    {call,1,{f,284}}. % '-unused_utf_char/1-lc$^0/1-0-'/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, utf8_len, 1, 38}.
  {label,37}.
    {line,[{location,"bs_utf_r24_SUITE.erl",108}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_len},1}.
  {label,38}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,40}}. % utf8_len/2


{function, utf8_len, 2, 40}.
  {label,39}.
    {line,[{location,"bs_utf_r24_SUITE.erl",111}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_len},2}.
  {label,40}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,39},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_utf8,
          {f,41},
          [{x,2},
           3,
           {field_flags,[{anno,[111,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_unit,{f,41},[{x,2},8]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",112}]}.
    {gc_bif,'+',{f,0},3,[{x,1},{integer,1}],{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,40}}. % utf8_len/2
  {label,41}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,42},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,42}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,39}}.


{function, utf16_roundtrip, 1, 44}.
  {label,43}.
    {line,[{location,"bs_utf_r24_SUITE.erl",115}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_roundtrip},1}.
  {label,44}.
    {test,is_list,{f,43},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",116}]}.
    {call,0,{f,272}}. % utf16_data/0
    {test,is_tuple,{f,51},[{x,0}]}.
    {test,test_arity,{f,51},[{x,0},5]}.
    {get_tuple_element,{x,0},0,{y,2}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,51},[{x,1},{y,1}]}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_eq_exact,{f,51},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",117}]}.
    {call,1,{f,53}}. % utf16_big_len/1
    {test,is_eq_exact,{f,50},[{x,0},{integer,4}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",118}]}.
    {call,1,{f,59}}. % utf16_little_len/1
    {test,is_eq_exact,{f,49},[{x,0},{integer,4}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",119}]}.
    {call,1,{f,75}}. % big_utf16_to_list/1
    {test,is_eq_exact,{f,48},[{x,0},{y,2}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",120}]}.
    {call,1,{f,79}}. % little_utf16_to_list/1
    {test,is_eq_exact,{f,47},[{x,0},{y,2}]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",122}]}.
    {call,1,{f,65}}. % list_to_big_utf16/1
    {test,is_eq_exact,{f,46},[{x,0},{y,1}]}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_utf_r24_SUITE.erl",123}]}.
    {call,1,{f,70}}. % list_to_little_utf16/1
    {test,is_eq_exact,{f,45},[{x,0},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,45}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{location,"bs_utf_r24_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{location,"bs_utf_r24_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{location,"bs_utf_r24_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{location,"bs_utf_r24_SUITE.erl",118}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{location,"bs_utf_r24_SUITE.erl",117}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{location,"bs_utf_r24_SUITE.erl",116}]}.
    {badmatch,{x,0}}.


{function, utf16_big_len, 1, 53}.
  {label,52}.
    {line,[{location,"bs_utf_r24_SUITE.erl",127}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_big_len},1}.
  {label,53}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,55}}. % utf16_big_len/2


{function, utf16_big_len, 2, 55}.
  {label,54}.
    {line,[{location,"bs_utf_r24_SUITE.erl",130}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_big_len},2}.
  {label,55}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,54},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_utf16,
          {f,56},
          [{x,2},
           3,
           {field_flags,[{anno,[130,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_unit,{f,56},[{x,2},8]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",131}]}.
    {gc_bif,'+',{f,0},3,[{x,1},{integer,1}],{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,55}}. % utf16_big_len/2
  {label,56}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,57},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,57}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,54}}.


{function, utf16_little_len, 1, 59}.
  {label,58}.
    {line,[{location,"bs_utf_r24_SUITE.erl",134}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_little_len},1}.
  {label,59}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,61}}. % utf16_little_len/2


{function, utf16_little_len, 2, 61}.
  {label,60}.
    {line,[{location,"bs_utf_r24_SUITE.erl",137}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_little_len},2}.
  {label,61}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,60},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_utf16,
          {f,62},
          [{x,2},
           3,
           {field_flags,[{anno,[137,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}]}.
    {test,bs_test_unit,{f,62},[{x,2},8]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",138}]}.
    {gc_bif,'+',{f,0},3,[{x,1},{integer,1}],{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,61}}. % utf16_little_len/2
  {label,62}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,63},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,63}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,60}}.


{function, list_to_big_utf16, 1, 65}.
  {label,64}.
    {line,[{location,"bs_utf_r24_SUITE.erl",141}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_big_utf16},1}.
  {label,65}.
    {move,{literal,<<>>},{x,1}}.
    {call_only,2,{f,67}}. % list_to_big_utf16/2


{function, list_to_big_utf16, 2, 67}.
  {label,66}.
    {line,[{location,"bs_utf_r24_SUITE.erl",144}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_big_utf16},2}.
  {label,67}.
    {test,is_nonempty_list,{f,68},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",145}]}.
    {move,{integer,0},{x,3}}.
    {bs_utf16_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,67}}. % list_to_big_utf16/2
  {label,68}.
    {test,is_nil,{f,66},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, list_to_little_utf16, 1, 70}.
  {label,69}.
    {line,[{location,"bs_utf_r24_SUITE.erl",148}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_little_utf16},1}.
  {label,70}.
    {move,{literal,<<>>},{x,1}}.
    {call_only,2,{f,72}}. % list_to_little_utf16/2


{function, list_to_little_utf16, 2, 72}.
  {label,71}.
    {line,[{location,"bs_utf_r24_SUITE.erl",151}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_little_utf16},2}.
  {label,72}.
    {test,is_nonempty_list,{f,73},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",152}]}.
    {move,{integer,0},{x,3}}.
    {bs_utf16_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf16,{f,0},{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,72}}. % list_to_little_utf16/2
  {label,73}.
    {test,is_nil,{f,71},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, big_utf16_to_list, 1, 75}.
  {label,74}.
    {line,[{location,"bs_utf_r24_SUITE.erl",155}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,big_utf16_to_list},1}.
  {label,75}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,74},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_utf16,
          {f,76},
          2,
          [{x,1},
           {field_flags,[{anno,[155,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,76},[{x,1},8]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",156}]}.
    {call,1,{f,75}}. % big_utf16_to_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,76}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_test_tail2,{f,77},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.
  {label,77}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,74}}.


{function, little_utf16_to_list, 1, 79}.
  {label,78}.
    {line,[{location,"bs_utf_r24_SUITE.erl",159}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,little_utf16_to_list},1}.
  {label,79}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,78},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_utf16,
          {f,80},
          2,
          [{x,1},
           {field_flags,[{anno,[159,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_test_unit,{f,80},[{x,1},8]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",160}]}.
    {call,1,{f,79}}. % little_utf16_to_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,80}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_test_tail2,{f,81},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.
  {label,81}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,78}}.


{function, utf32_roundtrip, 1, 83}.
  {label,82}.
    {line,[{location,"bs_utf_r24_SUITE.erl",163}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_roundtrip},1}.
  {label,83}.
    {test,is_list,{f,82},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",164}]}.
    {call,0,{f,274}}. % utf32_data/0
    {test,is_tuple,{f,90},[{x,0}]}.
    {test,test_arity,{f,90},[{x,0},5]}.
    {get_tuple_element,{x,0},0,{y,2}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,90},[{x,1},{y,1}]}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_eq_exact,{f,90},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",165}]}.
    {call,1,{f,92}}. % utf32_big_len/1
    {test,is_eq_exact,{f,89},[{x,0},{integer,4}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",166}]}.
    {call,1,{f,98}}. % utf32_little_len/1
    {test,is_eq_exact,{f,88},[{x,0},{integer,4}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",167}]}.
    {call,1,{f,114}}. % big_utf32_to_list/1
    {test,is_eq_exact,{f,87},[{x,0},{y,2}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",168}]}.
    {call,1,{f,118}}. % little_utf32_to_list/1
    {test,is_eq_exact,{f,86},[{x,0},{y,2}]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",170}]}.
    {call,1,{f,104}}. % list_to_big_utf32/1
    {test,is_eq_exact,{f,85},[{x,0},{y,1}]}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_utf_r24_SUITE.erl",171}]}.
    {call,1,{f,109}}. % list_to_little_utf32/1
    {test,is_eq_exact,{f,84},[{x,0},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,84}.
    {badmatch,{x,0}}.
  {label,85}.
    {line,[{location,"bs_utf_r24_SUITE.erl",170}]}.
    {badmatch,{x,0}}.
  {label,86}.
    {line,[{location,"bs_utf_r24_SUITE.erl",168}]}.
    {badmatch,{x,0}}.
  {label,87}.
    {line,[{location,"bs_utf_r24_SUITE.erl",167}]}.
    {badmatch,{x,0}}.
  {label,88}.
    {line,[{location,"bs_utf_r24_SUITE.erl",166}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{location,"bs_utf_r24_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{location,"bs_utf_r24_SUITE.erl",164}]}.
    {badmatch,{x,0}}.


{function, utf32_big_len, 1, 92}.
  {label,91}.
    {line,[{location,"bs_utf_r24_SUITE.erl",175}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_big_len},1}.
  {label,92}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,94}}. % utf32_big_len/2


{function, utf32_big_len, 2, 94}.
  {label,93}.
    {line,[{location,"bs_utf_r24_SUITE.erl",178}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_big_len},2}.
  {label,94}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,93},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_utf32,
          {f,95},
          [{x,2},
           3,
           {field_flags,[{anno,[178,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_unit,{f,95},[{x,2},8]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",179}]}.
    {gc_bif,'+',{f,0},3,[{x,1},{integer,1}],{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,94}}. % utf32_big_len/2
  {label,95}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,96},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,96}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,93}}.


{function, utf32_little_len, 1, 98}.
  {label,97}.
    {line,[{location,"bs_utf_r24_SUITE.erl",182}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_little_len},1}.
  {label,98}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,100}}. % utf32_little_len/2


{function, utf32_little_len, 2, 100}.
  {label,99}.
    {line,[{location,"bs_utf_r24_SUITE.erl",185}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_little_len},2}.
  {label,100}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,99},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_utf32,
          {f,101},
          [{x,2},
           3,
           {field_flags,[{anno,[185,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}]}.
    {test,bs_test_unit,{f,101},[{x,2},8]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",186}]}.
    {gc_bif,'+',{f,0},3,[{x,1},{integer,1}],{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,100}}. % utf32_little_len/2
  {label,101}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,102},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,102}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,99}}.


{function, list_to_big_utf32, 1, 104}.
  {label,103}.
    {line,[{location,"bs_utf_r24_SUITE.erl",189}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_big_utf32},1}.
  {label,104}.
    {move,{literal,<<>>},{x,1}}.
    {call_only,2,{f,106}}. % list_to_big_utf32/2


{function, list_to_big_utf32, 2, 106}.
  {label,105}.
    {line,[{location,"bs_utf_r24_SUITE.erl",192}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_big_utf32},2}.
  {label,106}.
    {test,is_nonempty_list,{f,107},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",193}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,106}}. % list_to_big_utf32/2
  {label,107}.
    {test,is_nil,{f,105},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, list_to_little_utf32, 1, 109}.
  {label,108}.
    {line,[{location,"bs_utf_r24_SUITE.erl",196}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_little_utf32},1}.
  {label,109}.
    {move,{literal,<<>>},{x,1}}.
    {call_only,2,{f,111}}. % list_to_little_utf32/2


{function, list_to_little_utf32, 2, 111}.
  {label,110}.
    {line,[{location,"bs_utf_r24_SUITE.erl",199}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,list_to_little_utf32},2}.
  {label,111}.
    {test,is_nonempty_list,{f,112},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",200}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf32,{f,0},{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,111}}. % list_to_little_utf32/2
  {label,112}.
    {test,is_nil,{f,110},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, big_utf32_to_list, 1, 114}.
  {label,113}.
    {line,[{location,"bs_utf_r24_SUITE.erl",203}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,big_utf32_to_list},1}.
  {label,114}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,113},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_utf32,
          {f,115},
          2,
          [{x,1},
           {field_flags,[{anno,[203,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,115},[{x,1},8]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",204}]}.
    {call,1,{f,114}}. % big_utf32_to_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,115}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_test_tail2,{f,116},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.
  {label,116}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,113}}.


{function, little_utf32_to_list, 1, 118}.
  {label,117}.
    {line,[{location,"bs_utf_r24_SUITE.erl",207}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,little_utf32_to_list},1}.
  {label,118}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,117},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_utf32,
          {f,119},
          2,
          [{x,1},
           {field_flags,[{anno,[207,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_test_unit,{f,119},[{x,1},8]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",208}]}.
    {call,1,{f,118}}. % little_utf32_to_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,119}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_test_tail2,{f,120},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.
  {label,120}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,117}}.


{function, guard, 1, 122}.
  {label,121}.
    {line,[{location,"bs_utf_r24_SUITE.erl",212}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,guard},1}.
  {label,122}.
    {test,is_list,{f,121},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,55296},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",213}]}.
    {call,1,{f,125}}. % do_guard/1
    {test,is_eq_exact,{f,123},[{x,0},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,123}.
    {badmatch,{x,0}}.


{function, do_guard, 1, 125}.
  {label,124}.
    {line,[{location,"bs_utf_r24_SUITE.erl",216}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,do_guard},1}.
  {label,125}.
    {move,{integer,0},{x,1}}.
    {bs_utf8_size,{f,126},{x,0},{x,2}}.
    {bs_add,{f,126},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,126},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_utf8,{f,126},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,byte_size,{f,126},2,[{x,1}],{x,1}}.
    {test,is_eq_exact,{f,128},[{x,1},{integer,42}]}.
  {label,126}.
    {line,[{location,"bs_utf_r24_SUITE.erl",217}]}.
    {move,{integer,0},{x,1}}.
    {bs_utf16_size,{f,127},{x,0},{x,2}}.
    {bs_add,{f,127},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,127},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_utf16,{f,127},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,byte_size,{f,127},2,[{x,1}],{x,1}}.
    {test,is_eq_exact,{f,128},[{x,1},{integer,42}]}.
  {label,127}.
    {line,[{location,"bs_utf_r24_SUITE.erl",218}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,129},[{x,1},{integer,4},8],{x,1}}.
    {bs_init_bits,{f,129},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_utf32,{f,129},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {gc_bif,byte_size,{f,129},1,[{x,0}],{x,0}}.
    {test,is_ne_exact,{f,129},[{x,0},{integer,42}]}.
  {label,128}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,129}.
    {move,{atom,error},{x,0}}.
    return.


{function, extreme_tripping, 1, 131}.
  {label,130}.
    {line,[{location,"bs_utf_r24_SUITE.erl",224}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,extreme_tripping},1}.
  {label,131}.
    {test,is_list,{f,130},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,1024},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",225}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,2}}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",226}]}.
    {call,2,{f,136}}. % unicode_to_utf8/2
    {move,{x,0},{y,1}}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",227}]}.
    {call,2,{f,139}}. % utf8_to_utf16/2
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",228}]}.
    {call,2,{f,147}}. % utf8_to_utf32/2
    {swap,{y,0},{x,0}}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",229}]}.
    {call,2,{f,143}}. % utf16_to_utf32/2
    {test,is_eq_exact,{f,134},[{x,0},{y,0}]}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",230}]}.
    {call,2,{f,151}}. % utf32_to_utf8/2
    {test,is_eq_exact,{f,133},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {trim,2,1}.
    {line,[{location,"bs_utf_r24_SUITE.erl",231}]}.
    {call,1,{f,155}}. % utf32_to_unicode/1
    {test,is_eq_exact,{f,132},[{x,0},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,132}.
    {badmatch,{x,0}}.
  {label,133}.
    {line,[{location,"bs_utf_r24_SUITE.erl",230}]}.
    {badmatch,{x,0}}.
  {label,134}.
    {line,[{location,"bs_utf_r24_SUITE.erl",229}]}.
    {badmatch,{x,0}}.


{function, unicode_to_utf8, 2, 136}.
  {label,135}.
    {line,[{location,"bs_utf_r24_SUITE.erl",234}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,unicode_to_utf8},2}.
  {label,136}.
    {test,is_nonempty_list,{f,137},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",235}]}.
    {move,{integer,0},{x,3}}.
    {bs_utf8_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,136}}. % unicode_to_utf8/2
  {label,137}.
    {test,is_nil,{f,135},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, utf8_to_utf16, 2, 139}.
  {label,138}.
    {line,[{location,"bs_utf_r24_SUITE.erl",238}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_to_utf16},2}.
  {label,139}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,138},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_utf8,
          {f,140},
          3,
          [{x,2},
           {field_flags,[{anno,[238,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_unit,{f,140},[{x,2},8]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",239}]}.
    {move,{integer,0},{x,4}}.
    {bs_utf16_size,{f,0},{x,3},{x,5}}.
    {bs_add,{f,0},[{x,4},{x,5},8],{x,4}}.
    {bs_append,{f,0},{x,4},0,5,8,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,139}}. % utf8_to_utf16/2
  {label,140}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,141},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,141}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,138}}.


{function, utf16_to_utf32, 2, 143}.
  {label,142}.
    {line,[{location,"bs_utf_r24_SUITE.erl",242}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_to_utf32},2}.
  {label,143}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,142},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_utf16,
          {f,144},
          3,
          [{x,2},
           {field_flags,[{anno,[242,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_unit,{f,144},[{x,2},8]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",243}]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,4},8],{x,4}}.
    {bs_append,{f,0},{x,4},0,5,8,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,143}}. % utf16_to_utf32/2
  {label,144}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,145},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,145}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,142}}.


{function, utf8_to_utf32, 2, 147}.
  {label,146}.
    {line,[{location,"bs_utf_r24_SUITE.erl",246}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf8_to_utf32},2}.
  {label,147}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,146},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_utf8,
          {f,148},
          3,
          [{x,2},
           {field_flags,[{anno,[246,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_unit,{f,148},[{x,2},8]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",247}]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,4},8],{x,4}}.
    {bs_append,{f,0},{x,4},0,5,8,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,147}}. % utf8_to_utf32/2
  {label,148}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,149},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,149}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,146}}.


{function, utf32_to_utf8, 2, 151}.
  {label,150}.
    {line,[{location,"bs_utf_r24_SUITE.erl",250}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_to_utf8},2}.
  {label,151}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,150},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_utf32,
          {f,152},
          3,
          [{x,2},
           {field_flags,[{anno,[250,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_unit,{f,152},[{x,2},8]}.
    {line,[{location,"bs_utf_r24_SUITE.erl",251}]}.
    {move,{integer,0},{x,4}}.
    {bs_utf8_size,{f,0},{x,3},{x,5}}.
    {bs_add,{f,0},[{x,4},{x,5},8],{x,4}}.
    {bs_append,{f,0},{x,4},0,5,8,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,151}}. % utf32_to_utf8/2
  {label,152}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,153},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,153}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,150}}.


{function, utf32_to_unicode, 1, 155}.
  {label,154}.
    {line,[{location,"bs_utf_r24_SUITE.erl",254}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_to_unicode},1}.
  {label,155}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,154},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_utf32,
          {f,156},
          2,
          [{x,1},
           {field_flags,[{anno,[254,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,156},[{x,1},8]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",255}]}.
    {call,1,{f,155}}. % utf32_to_unicode/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,156}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_test_tail2,{f,157},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.
  {label,157}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,154}}.


{function, literals, 1, 159}.
  {label,158}.
    {line,[{location,"bs_utf_r24_SUITE.erl",258}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,literals},1}.
  {label,159}.
    {test,is_list,{f,158},[{x,0}]}.
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
    {call,1,{f,278}}. % id/1
    {test,is_eq_exact,{f,222},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",260}]}.
    {call,1,{f,278}}. % id/1
    {test,is_eq_exact,{f,221},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",261}]}.
    {call,1,{f,278}}. % id/1
    {test,is_eq_exact,{f,220},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",262}]}.
    {call,1,{f,278}}. % id/1
    {test,is_eq_exact,{f,219},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",263}]}.
    {call,1,{f,278}}. % id/1
    {test,is_eq_exact,{f,218},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",264}]}.
    {call,1,{f,278}}. % id/1
    {test,is_eq_exact,{f,217},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",265}]}.
    {call,1,{f,278}}. % id/1
    {test,is_eq_exact,{f,216},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",267}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,215},[{x,0},{atom,abc_utf8}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",268}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,214},[{x,0},{atom,abc_utf8}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",269}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,213},[{x,0},{atom,abc_utf8}]}.
    {move,{literal,<<0,97,0,98,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",271}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,212},[{x,0},{atom,abc_utf16be}]}.
    {move,{literal,<<0,97,0,98,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",272}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,211},[{x,0},{atom,abc_utf16be}]}.
    {move,{literal,<<97,0,98,0,99,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",273}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,210},[{x,0},{atom,abc_utf16le}]}.
    {move,{literal,<<97,0,98,0,99,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",274}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,209},[{x,0},{atom,abc_utf16le}]}.
    {move,{literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",276}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,208},[{x,0},{atom,abc_utf32be}]}.
    {move,{literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",277}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,207},[{x,0},{atom,abc_utf32be}]}.
    {move,{literal,<<97,0,0,0,98,0,0,0,99,0,0,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",278}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,206},[{x,0},{atom,abc_utf32le}]}.
    {move,{literal,<<97,0,0,0,98,0,0,0,99,0,0,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",279}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,205},[{x,0},{atom,abc_utf32le}]}.
    {move,{literal,<<208,156,208,176,209,129,209,130,208,181,209,128,32,208,
                     184,32,208,156,208,176,209,128,208,179,208,176,209,128,
                     208,184,209,130,208,176>>},
          {x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",281}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,204},[{x,0},{atom,mm_utf8}]}.
    {move,{literal,<<4,28,4,48,4,65,4,66,4,53,4,64,0,32,4,56,0,32,4,28,4,48,4,
                     64,4,51,4,48,4,64,4,56,4,66,4,48>>},
          {x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",282}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,203},[{x,0},{atom,mm_utf16be}]}.
    {move,{literal,<<0,0,4,28,0,0,4,48,0,0,4,65,0,0,4,66,0,0,4,53,0,0,4,64,0,
                     0,0,32,0,0,4,56,0,0,0,32,0,0,4,28,0,0,4,48,0,0,4,64,0,0,
                     4,51,0,0,4,48,0,0,4,64,0,0,4,56,0,0,4,66,0,0,4,48>>},
          {x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",283}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,202},[{x,0},{atom,mm_utf32be}]}.
    {move,{literal,<<"bjÃ¶rn">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",285}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,201},[{x,0},{atom,bjorn_utf8}]}.
    {move,{literal,<<"bjÃ¶rn">>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",286}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,200},[{x,0},{atom,bjorn_utf8}]}.
    {move,{literal,<<0,98,0,106,0,246,0,114,0,110>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",288}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,199},[{x,0},{atom,bjorn_utf16be}]}.
    {move,{literal,<<0,98,0,106,0,246,0,114,0,110>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",289}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,198},[{x,0},{atom,bjorn_utf16be}]}.
    {move,{literal,<<98,0,106,0,246,0,114,0,110,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",290}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,197},[{x,0},{atom,bjorn_utf16le}]}.
    {move,{literal,<<98,0,106,0,246,0,114,0,110,0>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",291}]}.
    {call,1,{f,224}}. % match_literal/1
    {test,is_eq_exact,{f,196},[{x,0},{atom,bjorn_utf16le}]}.
    {'catch',{y,14},{f,160}}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",298}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf8_size,{f,0},{integer,-1},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{integer,-1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,160}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,195},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,195},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,195},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,195},[{x,1},{atom,badarg}]}.
    {'catch',{y,13},{f,161}}.
    {line,[{scope,[28]},{location,"bs_utf_r24_SUITE.erl",299}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf16_size,{f,0},{integer,-1},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{integer,-1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,161}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,194},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,194},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,194},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,194},[{x,1},{atom,badarg}]}.
    {'catch',{y,12},{f,162}}.
    {line,[{scope,[26]},{location,"bs_utf_r24_SUITE.erl",300}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf16_size,{f,0},{integer,-1},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[little]},{integer,-1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,162}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,193},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,193},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,193},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,193},[{x,1},{atom,badarg}]}.
    {'catch',{y,11},{f,163}}.
    {line,[{scope,[24]},{location,"bs_utf_r24_SUITE.erl",301}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,5},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{integer,-1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,163}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,192},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,192},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,192},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,192},[{x,1},{atom,badarg}]}.
    {'catch',{y,10},{f,164}}.
    {line,[{scope,[22]},{location,"bs_utf_r24_SUITE.erl",302}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,5},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[little]},{integer,-1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,164}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,191},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,191},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,191},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,191},[{x,1},{atom,badarg}]}.
    {'catch',{y,9},{f,165}}.
    {line,[{scope,[20]},{location,"bs_utf_r24_SUITE.erl",303}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf8_size,{f,0},{integer,55296},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{integer,55296}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,165}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,190},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,190},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,190},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,190},[{x,1},{atom,badarg}]}.
    {'catch',{y,8},{f,166}}.
    {line,[{scope,[18]},{location,"bs_utf_r24_SUITE.erl",304}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf16_size,{f,0},{integer,55296},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{integer,55296}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,166}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,189},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,189},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,189},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,189},[{x,1},{atom,badarg}]}.
    {'catch',{y,7},{f,167}}.
    {line,[{scope,[16]},{location,"bs_utf_r24_SUITE.erl",305}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},8],{x,0}}.
    {bs_utf16_size,{f,0},{integer,55296},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[little]},{integer,55296}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,167}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,188},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,188},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,188},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,188},[{x,1},{atom,badarg}]}.
    {'catch',{y,6},{f,168}}.
    {line,[{scope,[14]},{location,"bs_utf_r24_SUITE.erl",306}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,5},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{integer,55296}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,168}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,187},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,187},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,187},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,187},[{x,1},{atom,badarg}]}.
    {'catch',{y,5},{f,169}}.
    {line,[{scope,"\f"},{location,"bs_utf_r24_SUITE.erl",307}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,5},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[little]},{integer,55296}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,0},{x,0}}.
  {label,169}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,186},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,186},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,186},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,186},[{x,1},{atom,badarg}]}.
    {'catch',{y,4},{f,170}}.
    {line,[{scope,"\n"},{location,"bs_utf_r24_SUITE.erl",310}]}.
    {move,{integer,0},{x,0}}.
    {bs_utf8_size,{f,0},{integer,1114112},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{integer,1114112}}.
    {move,{x,0},{x,0}}.
  {label,170}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,185},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,185},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,185},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,185},[{x,1},{atom,badarg}]}.
    {'catch',{y,3},{f,171}}.
    {line,[{scope,"\b"},{location,"bs_utf_r24_SUITE.erl",311}]}.
    {move,{integer,0},{x,0}}.
    {bs_utf16_size,{f,0},{integer,1114112},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{integer,1114112}}.
    {move,{x,0},{x,0}}.
  {label,171}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,184},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,184},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,184},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,184},[{x,1},{atom,badarg}]}.
    {'catch',{y,2},{f,172}}.
    {line,[{scope,[6]},{location,"bs_utf_r24_SUITE.erl",312}]}.
    {move,{integer,0},{x,0}}.
    {bs_utf16_size,{f,0},{integer,1114112},{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf16,{f,0},{field_flags,[little]},{integer,1114112}}.
    {move,{x,0},{x,0}}.
  {label,172}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,183},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,183},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,183},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,183},[{x,1},{atom,badarg}]}.
    {'catch',{y,1},{f,173}}.
    {line,[{scope,[4]},{location,"bs_utf_r24_SUITE.erl",313}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{integer,1114112}}.
    {move,{x,0},{x,0}}.
  {label,173}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,182},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,182},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,182},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,182},[{x,1},{atom,badarg}]}.
    {'catch',{y,0},{f,174}}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",314}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_utf32,{f,0},{field_flags,[little]},{integer,1114112}}.
    {move,{x,0},{x,0}}.
  {label,174}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,181},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,181},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,181},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,181},[{x,1},{atom,badarg}]}.
    {move,{literal,<<237,160,128>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",317}]}.
    {call,1,{f,237}}. % bad_literal_match/1
    {test,is_eq_exact,{f,180},[{x,0},{atom,error}]}.
    {move,{literal,<<244,144,128,128>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",318}]}.
    {call,1,{f,237}}. % bad_literal_match/1
    {test,is_eq_exact,{f,179},[{x,0},{atom,error}]}.
    {move,{literal,<<0,0,216,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",320}]}.
    {call,1,{f,237}}. % bad_literal_match/1
    {test,is_eq_exact,{f,178},[{x,0},{atom,error}]}.
    {move,{literal,<<0,17,0,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",321}]}.
    {call,1,{f,237}}. % bad_literal_match/1
    {test,is_eq_exact,{f,177},[{x,0},{atom,error}]}.
    {move,{literal,<<0,216,0,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",322}]}.
    {call,1,{f,237}}. % bad_literal_match/1
    {test,is_eq_exact,{f,176},[{x,0},{atom,error}]}.
    {move,{literal,<<0,0,17,0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",323}]}.
    {call,1,{f,237}}. % bad_literal_match/1
    {test,is_eq_exact,{f,175},[{x,0},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,15}.
    return.
  {label,175}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",322}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",321}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",320}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",318}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",317}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",314}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",313}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,[4]},{location,"bs_utf_r24_SUITE.erl",312}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[6]},{location,"bs_utf_r24_SUITE.erl",311}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,"\b"},{location,"bs_utf_r24_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,"\n"},{location,"bs_utf_r24_SUITE.erl",307}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,"\f"},{location,"bs_utf_r24_SUITE.erl",306}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,[14]},{location,"bs_utf_r24_SUITE.erl",305}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[16]},{location,"bs_utf_r24_SUITE.erl",304}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[18]},{location,"bs_utf_r24_SUITE.erl",303}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[20]},{location,"bs_utf_r24_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[22]},{location,"bs_utf_r24_SUITE.erl",301}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[24]},{location,"bs_utf_r24_SUITE.erl",300}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[26]},{location,"bs_utf_r24_SUITE.erl",299}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[28]},{location,"bs_utf_r24_SUITE.erl",298}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",291}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",290}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",289}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",288}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",286}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",285}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",283}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",282}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",281}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",279}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",278}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",277}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",276}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",274}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",273}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",272}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",271}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",269}]}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",268}]}.
    {badmatch,{x,0}}.
  {label,215}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",267}]}.
    {badmatch,{x,0}}.
  {label,216}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",265}]}.
    {badmatch,{x,0}}.
  {label,217}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",264}]}.
    {badmatch,{x,0}}.
  {label,218}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",263}]}.
    {badmatch,{x,0}}.
  {label,219}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",262}]}.
    {badmatch,{x,0}}.
  {label,220}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",261}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",260}]}.
    {badmatch,{x,0}}.
  {label,222}.
    {line,[{scope,[30]},{location,"bs_utf_r24_SUITE.erl",259}]}.
    {badmatch,{x,0}}.


{function, match_literal, 1, 224}.
  {label,223}.
    {line,[{location,"bs_utf_r24_SUITE.erl",327}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,match_literal},1}.
  {label,224}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,223},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,225},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[327,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,225},[{x,2},{integer,97}]}.
    {test,bs_match_string,{f,225},[{x,1},16,{string,<<"bc">>}]}.
    {test,bs_test_tail2,{f,225},[{x,1},0]}.
    {move,{atom,abc_utf8},{x,0}}.
    return.
  {label,225}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_utf16,
          {f,226},
          2,
          [{x,1},
           {field_flags,[{anno,[328,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,226},[{x,2},{integer,97}]}.
    {test,bs_get_utf16,
          {f,226},
          2,
          [{x,1},
           {field_flags,[{anno,[328,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,226},[{x,2},{integer,98}]}.
    {test,bs_get_utf16,
          {f,226},
          2,
          [{x,1},
           {field_flags,[{anno,[328,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,226},[{x,2},{integer,99}]}.
    {test,bs_test_tail2,{f,226},[{x,1},0]}.
    {move,{atom,abc_utf16be},{x,0}}.
    return.
  {label,226}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_utf16,
          {f,227},
          2,
          [{x,1},
           {field_flags,[{anno,[329,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,227},[{x,2},{integer,97}]}.
    {test,bs_get_utf16,
          {f,227},
          2,
          [{x,1},
           {field_flags,[{anno,[329,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,227},[{x,2},{integer,98}]}.
    {test,bs_get_utf16,
          {f,227},
          2,
          [{x,1},
           {field_flags,[{anno,[329,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,227},[{x,2},{integer,99}]}.
    {test,bs_test_tail2,{f,227},[{x,1},0]}.
    {move,{atom,abc_utf16le},{x,0}}.
    return.
  {label,227}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_utf32,
          {f,228},
          2,
          [{x,1},
           {field_flags,[{anno,[330,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,228},[{x,2},{integer,97}]}.
    {test,bs_get_utf32,
          {f,228},
          2,
          [{x,1},
           {field_flags,[{anno,[330,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,228},[{x,2},{integer,98}]}.
    {test,bs_get_utf32,
          {f,228},
          2,
          [{x,1},
           {field_flags,[{anno,[330,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,228},[{x,2},{integer,99}]}.
    {test,bs_test_tail2,{f,228},[{x,1},0]}.
    {move,{atom,abc_utf32be},{x,0}}.
    return.
  {label,228}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_utf32,
          {f,229},
          2,
          [{x,1},
           {field_flags,[{anno,[331,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,229},[{x,2},{integer,97}]}.
    {test,bs_get_utf32,
          {f,229},
          2,
          [{x,1},
           {field_flags,[{anno,[331,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,229},[{x,2},{integer,98}]}.
    {test,bs_get_utf32,
          {f,229},
          2,
          [{x,1},
           {field_flags,[{anno,[331,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,229},[{x,2},{integer,99}]}.
    {test,bs_test_tail2,{f,229},[{x,1},0]}.
    {move,{atom,abc_utf32le},{x,0}}.
    return.
  {label,229}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,230},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[332,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,230},[{x,2},{integer,208}]}.
    {test,bs_match_string,
          {f,230},
          [{x,1},
           264,
           {string,<<156,208,176,209,129,209,130,208,181,209,128,32,208,184,
                     32,208,156,208,176,209,128,208,179,208,176,209,128,208,
                     184,209,130,208,176>>}]}.
    {test,bs_test_tail2,{f,230},[{x,1},0]}.
    {move,{atom,mm_utf8},{x,0}}.
    return.
  {label,230}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1052}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1072}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1089}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1090}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1077}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1088}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,32}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1080}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,32}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1052}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1072}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1088}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1075}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1072}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1088}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1080}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1090}]}.
    {test,bs_get_utf16,
          {f,231},
          2,
          [{x,1},
           {field_flags,[{anno,[333,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,1072}]}.
    {test,bs_test_tail2,{f,231},[{x,1},0]}.
    {move,{atom,mm_utf16be},{x,0}}.
    return.
  {label,231}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1052}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1072}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1089}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1090}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1077}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1088}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,32}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1080}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,32}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1052}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1072}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1088}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1075}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1072}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1088}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1080}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1090}]}.
    {test,bs_get_utf32,
          {f,232},
          2,
          [{x,1},
           {field_flags,[{anno,[334,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,232},[{x,2},{integer,1072}]}.
    {test,bs_test_tail2,{f,232},[{x,1},0]}.
    {move,{atom,mm_utf32be},{x,0}}.
    return.
  {label,232}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,233},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[335,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,233},[{x,2},{integer,98}]}.
    {test,bs_match_string,{f,233},[{x,1},40,{string,<<"jÃ¶rn">>}]}.
    {test,bs_test_tail2,{f,233},[{x,1},0]}.
    {move,{atom,bjorn_utf8},{x,0}}.
    return.
  {label,233}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_utf16,
          {f,234},
          2,
          [{x,1},
           {field_flags,[{anno,[336,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,234},[{x,2},{integer,98}]}.
    {test,bs_get_utf16,
          {f,234},
          2,
          [{x,1},
           {field_flags,[{anno,[336,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,234},[{x,2},{integer,106}]}.
    {test,bs_get_utf16,
          {f,234},
          2,
          [{x,1},
           {field_flags,[{anno,[336,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,234},[{x,2},{integer,246}]}.
    {test,bs_get_utf16,
          {f,234},
          2,
          [{x,1},
           {field_flags,[{anno,[336,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,234},[{x,2},{integer,114}]}.
    {test,bs_get_utf16,
          {f,234},
          2,
          [{x,1},
           {field_flags,[{anno,[336,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,234},[{x,2},{integer,110}]}.
    {test,bs_test_tail2,{f,234},[{x,1},0]}.
    {move,{atom,bjorn_utf16be},{x,0}}.
    return.
  {label,234}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_utf16,
          {f,235},
          2,
          [{x,1},
           {field_flags,[{anno,[337,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,235},[{x,2},{integer,98}]}.
    {test,bs_get_utf16,
          {f,235},
          2,
          [{x,1},
           {field_flags,[{anno,[337,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,235},[{x,2},{integer,106}]}.
    {test,bs_get_utf16,
          {f,235},
          2,
          [{x,1},
           {field_flags,[{anno,[337,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,235},[{x,2},{integer,246}]}.
    {test,bs_get_utf16,
          {f,235},
          2,
          [{x,1},
           {field_flags,[{anno,[337,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,235},[{x,2},{integer,114}]}.
    {test,bs_get_utf16,
          {f,235},
          2,
          [{x,1},
           {field_flags,[{anno,[337,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,is_eq_exact,{f,235},[{x,2},{integer,110}]}.
    {test,bs_test_tail2,{f,235},[{x,1},0]}.
    {move,{atom,bjorn_utf16le},{x,0}}.
    return.
  {label,235}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,223}}.


{function, bad_literal_match, 1, 237}.
  {label,236}.
    {line,[{location,"bs_utf_r24_SUITE.erl",339}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,bad_literal_match},1}.
  {label,237}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,240},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_utf8,
          {f,238},
          2,
          [{x,0},
           {field_flags,[{anno,[339,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,238},[{x,2},{integer,55296}]}.
    {test,bs_test_tail2,{f,238},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,238}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf32,
          {f,239},
          2,
          [{x,0},
           {field_flags,[{anno,[341,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,239},[{x,2},{integer,55296}]}.
    {test,bs_test_tail2,{f,239},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,239}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_utf32,
          {f,240},
          1,
          [{x,0},
           {field_flags,[{anno,[343,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {test,is_eq_exact,{f,240},[{x,1},{integer,55296}]}.
    {test,bs_test_tail2,{f,240},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,240}.
    {move,{atom,error},{x,0}}.
    return.


{function, coverage, 1, 242}.
  {label,241}.
    {line,[{location,"bs_utf_r24_SUITE.erl",347}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,coverage},1}.
  {label,242}.
    {test,is_list,{f,241},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<225,128,128,240,144,128,128,0>>},{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",349}]}.
    {call,1,{f,252}}. % coverage_1/1
    {test,is_eq_exact,{f,250},[{x,0},{integer,0}]}.
    {move,{literal,<<225,128,128,240,144,128,128,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",350}]}.
    {call,1,{f,252}}. % coverage_1/1
    {test,is_eq_exact,{f,249},[{x,0},{integer,1}]}.
    {move,{literal,<<225,128,128,240,144,128,128,0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",352}]}.
    {call,1,{f,257}}. % coverage_2/1
    {test,is_eq_exact,{f,248},[{x,0},{integer,0}]}.
    {move,{literal,<<208,128,208,129,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",353}]}.
    {call,1,{f,257}}. % coverage_2/1
    {test,is_eq_exact,{f,247},[{x,0},{integer,1}]}.
    {'catch',{y,0},{f,243}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",355}]}.
    {call,1,{f,262}}. % coverage_3/1
  {label,243}.
    {catch_end,{y,0}}.
    {line,[{scope,[1,2]},{location,"bs_utf_r24_SUITE.erl",355}]}.
    {call,1,{f,276}}. % fc/1
    {move,{integer,533},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_utf_r24_SUITE.erl",360}]}.
    {call,1,{f,264}}. % cover_test_heap_utf8/1
    {test,is_eq_exact,{f,246},[{x,0},{literal,{ok,<<200,149>>}}]}.
    {move,{integer,1024},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",361}]}.
    {call,1,{f,266}}. % cover_test_heap_utf16/1
    {test,is_tagged_tuple,{f,245},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,245},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,245},2,[{x,1}],{x,1}}.
    {test,bs_get_utf16,
          {f,245},
          2,
          [{x,1},
           {field_flags,[{anno,[361,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,245},[{x,2},{integer,1024}]}.
    {test,bs_test_tail2,{f,245},[{x,1},0]}.
    {move,{integer,7966},{x,0}}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",362}]}.
    {call,1,{f,268}}. % cover_test_heap_utf32/1
    {test,is_tagged_tuple,{f,244},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,244},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,244},2,[{x,1}],{x,1}}.
    {test,bs_get_utf32,
          {f,244},
          2,
          [{x,1},
           {field_flags,[{anno,[362,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,244},[{x,2},{integer,7966}]}.
    {test,bs_test_tail2,{f,244},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,244}.
    {badmatch,{x,0}}.
  {label,245}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",361}]}.
    {badmatch,{x,0}}.
  {label,246}.
    {line,[{scope,[0]},{location,"bs_utf_r24_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,247}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,248}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",352}]}.
    {badmatch,{x,0}}.
  {label,249}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",350}]}.
    {badmatch,{x,0}}.
  {label,250}.
    {line,[{scope,[2]},{location,"bs_utf_r24_SUITE.erl",349}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 1, 252}.
  {label,251}.
    {line,[{location,"bs_utf_r24_SUITE.erl",366}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,coverage_1},1}.
  {label,252}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,251},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,
          {f,255},
          [{x,1},48,{string,<<225,128,128,240,144,128>>}]}.
    {test,bs_get_integer2,
          {f,255},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[366,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},
                {f,255},
                {list,[{integer,32768},{f,254},{integer,32769},{f,253}]}}.
  {label,253}.
    {test,bs_test_tail2,{f,255},[{x,1},0]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,254}.
    {test,bs_test_tail2,{f,255},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,255}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,251}}.


{function, coverage_2, 1, 257}.
  {label,256}.
    {line,[{location,"bs_utf_r24_SUITE.erl",369}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,coverage_2},1}.
  {label,257}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,256},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,260},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[369,{file,"bs_utf_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},
                {f,260},
                {list,[{integer,53376},{f,259},{integer,57728},{f,258}]}}.
  {label,258}.
    {test,bs_match_string,
          {f,260},
          [{x,1},48,{string,<<128,240,144,128,128,0>>}]}.
    {test,bs_test_tail2,{f,260},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,259}.
    {test,bs_match_string,{f,260},[{x,1},24,{string,<<208,129,1>>}]}.
    {test,bs_test_tail2,{f,260},[{x,1},0]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,260}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,256}}.


{function, coverage_3, 1, 262}.
  {label,261}.
    {line,[{location,"bs_utf_r24_SUITE.erl",372}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,coverage_3},1}.
  {label,262}.
    {jump,{f,261}}.


{function, cover_test_heap_utf8, 1, 264}.
  {label,263}.
    {line,[{location,"bs_utf_r24_SUITE.erl",374}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,cover_test_heap_utf8},1}.
  {label,264}.
    {move,{integer,0},{x,1}}.
    {bs_utf8_size,{f,0},{x,0},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},3,2,{field_flags,[]},{x,1}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, cover_test_heap_utf16, 1, 266}.
  {label,265}.
    {line,[{location,"bs_utf_r24_SUITE.erl",375}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,cover_test_heap_utf16},1}.
  {label,266}.
    {move,{integer,0},{x,1}}.
    {bs_utf16_size,{f,0},{x,0},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},3,2,{field_flags,[]},{x,1}}.
    {bs_put_utf16,{f,0},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, cover_test_heap_utf32, 1, 268}.
  {label,267}.
    {line,[{location,"bs_utf_r24_SUITE.erl",376}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,cover_test_heap_utf32},1}.
  {label,268}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},3,2,{field_flags,[]},{x,1}}.
    {bs_put_utf32,{f,0},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.


{function, utf_data, 0, 270}.
  {label,269}.
    {line,[{location,"bs_utf_r24_SUITE.erl",378}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf_data},0}.
  {label,270}.
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


{function, utf16_data, 0, 272}.
  {label,271}.
    {line,[{location,"bs_utf_r24_SUITE.erl",401}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf16_data},0}.
  {label,272}.
    {move,{literal,{[74565,61,82,97],
                    <<216,8,223,69,0,61,0,82,0,97>>,
                    <<216,8,223,69,0,61,0,82,0,97>>,
                    <<8,216,69,223,61,0,82,0,97,0>>,
                    <<8,216,69,223,61,0,82,0,97,0>>}},
          {x,0}}.
    return.


{function, utf32_data, 0, 274}.
  {label,273}.
    {line,[{location,"bs_utf_r24_SUITE.erl",420}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,utf32_data},0}.
  {label,274}.
    {move,{literal,{[65,8802,913,46],
                    <<0,0,0,65,0,0,34,98,0,0,3,145,0,0,0,46>>,
                    <<0,0,0,65,0,0,34,98,0,0,3,145,0,0,0,46>>,
                    <<65,0,0,0,98,34,0,0,145,3,0,0,46,0,0,0>>,
                    <<65,0,0,0,98,34,0,0,145,3,0,0,46,0,0,0>>}},
          {x,0}}.
    return.


{function, fc, 1, 276}.
  {label,275}.
    {line,[{location,"bs_utf_r24_SUITE.erl",435}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,fc},1}.
  {label,276}.
    {test,is_tagged_tuple,{f,275},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,275},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,275},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,275},[{x,1},{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, id, 1, 278}.
  {label,277}.
    {line,[{location,"bs_utf_r24_SUITE.erl",438}]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,id},1}.
  {label,278}.
    return.


{function, module_info, 0, 280}.
  {label,279}.
    {line,[]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,module_info},0}.
  {label,280}.
    {move,{atom,bs_utf_r24_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 282}.
  {label,281}.
    {line,[]}.
    {func_info,{atom,bs_utf_r24_SUITE},{atom,module_info},1}.
  {label,282}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_utf_r24_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-unused_utf_char/1-lc$^0/1-0-', 1, 284}.
  {label,283}.
    {line,[{location,"bs_utf_r24_SUITE.erl",105}]}.
    {func_info,{atom,bs_utf_r24_SUITE},
               {atom,'-unused_utf_char/1-lc$^0/1-0-'},
               1}.
  {label,284}.
    {test,is_nonempty_list,{f,286},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,285},[{x,1}]}.
    {test,test_arity,{f,285},[{x,1},2]}.
    {allocate,2,2}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,1},0,{y,0}}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",104}]}.
    {call,1,{f,38}}. % utf8_len/1
    {gc_bif,length,{f,0},1,[{y,0}],{x,1}}.
    {test,is_eq_exact,{f,288},[{x,0},{x,1}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,284},2}. % '-unused_utf_char/1-lc$^0/1-0-'/1
  {label,285}.
    {call_only,1,{f,284}}. % '-unused_utf_char/1-lc$^0/1-0-'/1
  {label,286}.
    {test,is_nil,{f,287},[{x,0}]}.
    return.
  {label,287}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_utf_r24_SUITE.erl",105}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,288}.
    {line,[{location,"bs_utf_r24_SUITE.erl",104}]}.
    {badmatch,{atom,false}}.


{function, '-utf8_roundtrip_1/1-lc$^1/1-1-', 1, 290}.
  {label,289}.
    {line,[{location,"bs_utf_r24_SUITE.erl",86}]}.
    {func_info,{atom,bs_utf_r24_SUITE},
               {atom,'-utf8_roundtrip_1/1-lc$^1/1-1-'},
               1}.
  {label,290}.
    {test,is_nonempty_list,{f,291},[{x,0}]}.
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
    {test,is_eq_exact,{f,293},[{x,0},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,290},1}. % '-utf8_roundtrip_1/1-lc$^1/1-1-'/1
  {label,291}.
    {test,is_nil,{f,292},[{x,0}]}.
    return.
  {label,292}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,293}.
    {badmatch,{x,0}}.


{function, '-utf8_roundtrip_1/1-lc$^0/1-0-', 1, 295}.
  {label,294}.
    {line,[{location,"bs_utf_r24_SUITE.erl",85}]}.
    {func_info,{atom,bs_utf_r24_SUITE},
               {atom,'-utf8_roundtrip_1/1-lc$^0/1-0-'},
               1}.
  {label,295}.
    {test,is_nonempty_list,{f,296},[{x,0}]}.
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
    {test,is_eq_exact,{f,298},[{x,0},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,295},1}. % '-utf8_roundtrip_1/1-lc$^0/1-0-'/1
  {label,296}.
    {test,is_nil,{f,297},[{x,0}]}.
    return.
  {label,297}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,298}.
    {badmatch,{x,0}}.


{function, '-utf8_roundtrip/1-lc$^0/1-0-', 1, 300}.
  {label,299}.
    {line,[{location,"bs_utf_r24_SUITE.erl",79}]}.
    {func_info,{atom,bs_utf_r24_SUITE},
               {atom,'-utf8_roundtrip/1-lc$^0/1-0-'},
               1}.
  {label,300}.
    {test,is_nonempty_list,{f,301},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,20}}. % utf8_roundtrip_1/1
    {move,{y,0},{x,0}}.
    {call_last,1,{f,300},1}. % '-utf8_roundtrip/1-lc$^0/1-0-'/1
  {label,301}.
    {test,is_nil,{f,302},[{x,0}]}.
    return.
  {label,302}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
