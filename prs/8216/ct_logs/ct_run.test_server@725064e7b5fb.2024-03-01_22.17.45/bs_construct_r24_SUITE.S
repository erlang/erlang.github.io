{module, bs_construct_r24_SUITE}.  %% version = 0

{exports, [{all,0},
           {bad_size,1},
           {coerce_to_float,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {fail,1},
           {float_arith,1},
           {float_bin,1},
           {groups,0},
           {in_catch,1},
           {in_guard,1},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {module_info,0},
           {module_info,1},
           {nasty_literals,1},
           {opt,1},
           {otp_7556,1},
           {otp_8054,1},
           {private_append,1},
           {side_effect,1},
           {strings,1},
           {suite,0},
           {test1,1},
           {two,1},
           {verify_highest_opcode,1}]}.

{attributes, []}.

{labels, 451}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_construct_r24_SUITE.erl",38}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_construct_r24_SUITE.erl",42}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_construct_r24_SUITE.erl",45}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [verify_highest_opcode,two,test1,fail,float_bin,
                        in_guard,in_catch,nasty_literals,side_effect,opt,
                        otp_7556,float_arith,otp_8054,strings,bad_size,
                        private_append]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_construct_r24_SUITE.erl",53}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_construct_r24_SUITE},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",54}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_construct_r24_SUITE.erl",57}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_construct_r24_SUITE.erl",60}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_construct_r24_SUITE.erl",63}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"bs_construct_r24_SUITE.erl",67}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"bs_construct_r24_SUITE.erl",70}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 20}.
  {label,19}.
    {line,[{location,"bs_construct_r24_SUITE.erl",73}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,verify_highest_opcode},1}.
  {label,20}.
    {allocate,0,0}.
    {move,{atom,bs_construct_r24_SUITE},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",76}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {call_ext,1,{extfunc,file,read_file,1}}.
    {test,is_tagged_tuple,{f,22},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,22},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",77}]}.
    {call_ext,1,{extfunc,test_lib,highest_opcode,1}}.
    {test,is_ge,{f,21},[{integer,176},{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,21}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,too_high_opcode},{x,0}]}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",81}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,22}.
    {line,[{location,"bs_construct_r24_SUITE.erl",76}]}.
    {badmatch,{x,0}}.


{function, two, 1, 24}.
  {label,23}.
    {line,[{location,"bs_construct_r24_SUITE.erl",95}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,two},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,[<<1,2,3,4>>,<<6,7,8,9>>]},{x,1}}.
    {move,{literal,[0]},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",96}]}.
    {call,2,{f,27}}. % two_1/2
    {test,is_eq_exact,{f,25},[{x,0},{literal,<<0,1,2,3,4,6,7,8,9>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,25}.
    {badmatch,{x,0}}.


{function, two_1, 2, 27}.
  {label,26}.
    {line,[{location,"bs_construct_r24_SUITE.erl",99}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,two_1},2}.
  {label,27}.
    {test_heap,2,2}.
    {put_list,{x,0},{x,1},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",100}]}.
    {call_ext_only,1,{extfunc,erlang,list_to_binary,1}}.


{function, big, 1, 29}.
  {label,28}.
    {line,[{location,"bs_construct_r24_SUITE.erl",103}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,big},1}.
  {label,29}.
    {test,is_eq_exact,{f,28},[{x,0},{integer,1}]}.
    {move,{integer,57285702734876389752897683},{x,0}}.
    return.


{function, i, 1, 31}.
  {label,30}.
    {line,[{location,"bs_construct_r24_SUITE.erl",106}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,i},1}.
  {label,31}.
    return.


{function, id, 1, 33}.
  {label,32}.
    {line,[{location,"bs_construct_r24_SUITE.erl",108}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,id},1}.
  {label,33}.
    return.


{function, l, 4, 35}.
  {label,34}.
    {line,[{location,"bs_construct_r24_SUITE.erl",115}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,l},4}.
  {label,35}.
    {line,[{location,"bs_construct_r24_SUITE.erl",117}]}.
    {move,{integer,0},{x,4}}.
    {bs_init_bits,{f,0},{x,4},0,5,{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,0},1,{field_flags,[]},{x,0}}.
    {move,{x,4},{x,4}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",123}]}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{x,2},1],{x,5}}.
    {bs_init_bits,{f,0},{x,5},0,6,{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{x,2},1,{field_flags,[little]},{integer,45}}.
    {move,{x,5},{x,5}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",127}]}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,3},1],{x,6}}.
    {bs_add,{f,0},[{x,6},{x,0},1],{x,6}}.
    {bs_init_bits,{f,0},{x,6},0,7,{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{x,0},1,{field_flags,[]},{integer,777}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{integer,5}}.
    {move,{x,6},{x,6}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",129}]}.
    {move,{integer,0},{x,7}}.
    {bs_add,{f,0},[{x,7},{integer,3},1],{x,7}}.
    {bs_add,{f,0},[{x,7},{integer,1},8],{x,7}}.
    {bs_add,{f,0},[{x,7},{x,0},1],{x,7}}.
    {bs_init_bits,{f,0},{x,7},0,8,{field_flags,[]},{x,7}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{integer,5}}.
    {bs_put_integer,{f,0},{x,0},1,{field_flags,[]},{integer,987}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{integer,25}}.
    {move,{x,7},{x,7}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",137}]}.
    {move,{integer,0},{x,8}}.
    {bs_add,{f,0},[{x,8},{integer,4},8],{x,8}}.
    {bs_init_bits,{f,0},{x,8},0,9,{field_flags,[]},{x,8}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,1}}.
    {move,{x,8},{x,1}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",139}]}.
    {gc_bif,'+',{f,0},8,[{x,2},{integer,16}],{x,8}}.
    {move,{integer,0},{x,9}}.
    {bs_add,{f,0},[{x,9},{x,8},1],{x,9}}.
    {bs_init_bits,{f,0},{x,9},0,10,{field_flags,[]},{x,9}}.
    {bs_put_integer,{f,0},
                    {x,8},
                    1,
                    {field_flags,[]},
                    {integer,57285702734876389752897684}}.
    {move,{x,9},{x,8}}.
    {allocate,20,9}.
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
                       {y,10}]}}.
    {move,{x,4},{y,11}}.
    {move,{x,5},{y,12}}.
    {move,{x,6},{y,13}}.
    {move,{x,7},{y,14}}.
    {move,{x,1},{y,15}}.
    {move,{x,8},{y,16}}.
    {move,{x,3},{y,17}}.
    {move,{x,2},{y,18}}.
    {move,{x,0},{y,19}}.
    {move,{integer,255},{x,1}}.
    {move,{integer,17},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",142}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{x,0},{y,10}}.
    {move,{integer,255},{x,1}}.
    {move,{integer,17},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",144}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",145}]}.
    {gc_bif,'-',{f,0},1,[{y,18},{integer,8}],{x,1}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,2},8],{x,2}}.
    {gc_bif,'*',{f,0},3,[{integer,2},{x,1}],{x,3}}.
    {bs_add,{f,0},[{x,2},{x,3},1],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{x,1},2,{field_flags,[]},{integer,4}}.
    {bs_put_string,2,{string,<<0,5>>}}.
    {move,{x,2},{y,9}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",147}]}.
    {gc_bif,'-',{f,0},1,[{y,19},{integer,7}],{x,1}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,2},1],{x,2}}.
    {bs_add,{f,0},[{x,2},{x,1},1],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,1},1,{field_flags,[]},{integer,1}}.
    {bs_put_integer,{f,0},{x,1},1,{field_flags,[]},{integer,0}}.
    {bs_put_integer,{f,0},{integer,1},1,{field_flags,[]},{integer,1}}.
    {move,{x,2},{y,8}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",153}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,8},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[native]},{float,37.98}}.
    {move,{x,1},{y,7}}.
    {move,{x,0},{y,6}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",154}]}.
    {call,0,{f,37}}. % native_3798/0
    {line,[{location,"bs_construct_r24_SUITE.erl",155}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,16},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},
                    {integer,128},
                    1,
                    {field_flags,[native]},
                    {integer,32978297842987249827298387697777669766334937}}.
    {move,{x,1},{y,5}}.
    {move,{x,0},{y,4}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",156}]}.
    {call,0,{f,42}}. % native_bignum/0
    {line,[{location,"bs_construct_r24_SUITE.erl",157}]}.
    {move,{integer,0},{x,1}}.
    {bs_utf16_size,{f,0},{integer,1082},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_utf16_size,{f,0},{integer,1080},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_utf16_size,{f,0},{integer,1085},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_utf16_size,{f,0},{integer,1090},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_utf16_size,{f,0},{integer,1091},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_utf16_size,{f,0},{integer,1087},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_utf16_size,{f,0},{integer,1089},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_utf16_size,{f,0},{integer,32},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_utf16_size,{f,0},{integer,1086},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_utf16_size,{f,0},{integer,1090},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_utf16_size,{f,0},{integer,1101},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,1101}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,1090}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,1086}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,32}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,1089}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,1087}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,1091}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,1090}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,1085}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,1080}}.
    {bs_put_utf16,{f,0},{field_flags,[native]},{integer,1082}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",158}]}.
    {call,0,{f,47}}. % native_utf16/0
    {line,[{location,"bs_construct_r24_SUITE.erl",159}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,16},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_utf32,{f,0},{field_flags,[native]},{integer,1074}}.
    {bs_put_utf32,{f,0},{field_flags,[native]},{integer,1086}}.
    {bs_put_utf32,{f,0},{field_flags,[native]},{integer,1076}}.
    {bs_put_utf32,{f,0},{field_flags,[native]},{integer,1072}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",160}]}.
    {call,0,{f,52}}. % native_utf32/0
    {line,[{location,"bs_construct_r24_SUITE.erl",162}]}.
    {move,{integer,0},{x,1}}.
    {bs_append,{f,0},{x,1},0,2,8,{y,17},{field_flags,[]},{x,1}}.
    {move,{x,1},{x,1}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",164}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,1},8],{x,2}}.
    {gc_bif,byte_size,{f,0},3,[{y,17}],{x,3}}.
    {bs_add,{f,0},[{x,2},{x,3},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_string,1,{string,<<"O">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{y,17}}.
    {move,{x,2},{x,2}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",166}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},1],{x,3}}.
    {gc_bif,byte_size,{f,0},4,[{y,17}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_add,{f,0},[{x,3},{y,19},1],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{y,19},1,{field_flags,[]},{integer,3479}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{y,17}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{integer,7}}.
    {move,{x,3},{x,3}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",168}]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},1],{x,4}}.
    {gc_bif,byte_size,{f,0},5,[{y,17}],{x,5}}.
    {bs_add,{f,0},[{x,4},{x,5},8],{x,4}}.
    {bs_add,{f,0},[{x,4},{y,19},1],{x,4}}.
    {bs_init_bits,{f,0},{x,4},0,5,{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{y,19},1,{field_flags,[]},{integer,3479}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{y,17}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{integer,7}}.
    {move,{x,4},{x,4}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",170}]}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,3},1],{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,2},8],{x,5}}.
    {gc_bif,byte_size,{f,0},6,[{y,17}],{x,6}}.
    {bs_add,{f,0},[{x,5},{x,6},8],{x,5}}.
    {bs_add,{f,0},[{x,5},{y,19},1],{x,5}}.
    {bs_init_bits,{f,0},{x,5},0,6,{field_flags,[]},{x,5}}.
    {bs_put_string,2,{string,<<101,3>>}}.
    {bs_put_integer,{f,0},{y,19},1,{field_flags,[]},{integer,3479}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{y,17}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{integer,7}}.
    {move,{x,5},{x,5}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",172}]}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,3},1],{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,2},8],{x,6}}.
    {gc_bif,byte_size,{f,0},7,[{y,17}],{x,7}}.
    {bs_add,{f,0},[{x,6},{x,7},8],{x,6}}.
    {gc_bif,byte_size,{f,0},7,[{y,17}],{x,7}}.
    {bs_add,{f,0},[{x,6},{x,7},8],{x,6}}.
    {bs_add,{f,0},[{x,6},{y,19},1],{x,6}}.
    {bs_init_bits,{f,0},{x,6},0,7,{field_flags,[]},{x,6}}.
    {bs_put_string,2,{string,<<101,3>>}}.
    {bs_put_integer,{f,0},{y,19},1,{field_flags,[]},{integer,3479}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{y,17}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{integer,7}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{y,17}}.
    {move,{x,6},{x,6}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",176}]}.
    {move,{integer,0},{x,7}}.
    {bs_add,{f,0},[{x,7},{integer,1},8],{x,7}}.
    {bs_add,{f,0},[{x,7},{y,19},8],{x,7}}.
    {bs_init_bits,{f,0},{x,7},0,8,{field_flags,[]},{x,7}}.
    {bs_put_integer,{f,0},{y,19},8,{field_flags,[]},{integer,0}}.
    {bs_put_string,1,{string,<<4>>}}.
    {move,{x,7},{x,7}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",190}]}.
    {gc_bif,'-',{f,0},8,[{y,18},{integer,12}],{x,8}}.
    {move,{integer,0},{x,9}}.
    {bs_add,{f,0},[{x,9},{integer,1},1],{x,9}}.
    {bs_add,{f,0},[{x,9},{x,8},8],{x,9}}.
    {bs_init_bits,{f,0},{x,9},154,10,{field_flags,[]},{x,9}}.
    {bs_put_integer,{f,0},{x,8},8,{field_flags,[]},{integer,37558955}}.
    {bs_put_integer,{f,0},{integer,1},1,{field_flags,[]},{integer,1}}.
    {move,{x,9},{x,8}}.
    {put_tuple2,{x,8},
                {list,[{x,8},
                       {literal,"<< 37558955 : ( I_16 - 12 ) / unit : 8 , 1 : 1 >>"},
                       {literal,[2,61,26,171,<<1:1>>]}]}}.
    {put_list,{x,8},nil,{x,8}}.
    {put_list,{literal,{<<"abc">>,
                        "<< ( << \"abc\" , 7 : 3 >> ) : 3 / binary >>","abc"}},
              {x,8},
              {x,8}}.
    {put_list,{literal,{<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,119,255,255,255,255,
                          255,255,255,255,255,255,255,255,255,255,255,255>>,
                        "<< 40833884030512615615604952891812185374719 : 264 >>",
                        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,119,255,255,255,255,
                         255,255,255,255,255,255,255,255,255,255,255,255]}},
              {x,8},
              {x,8}}.
    {put_list,{literal,{<<0,7>>,"<< 0 : 13 / little , 7 : 3 >>",[0,7]}},
              {x,8},
              {x,8}}.
    {put_list,{literal,{<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>>,
                        "<< 0 : 128 >>",
                        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}},
              {x,8},
              {x,8}}.
    {put_tuple2,{x,7},
                {list,[{x,7},
                       {literal,"<< 0 : I_13 / unit : 8 , 1 : 6 , 0 : 2 >>"},
                       {literal,[0,0,0,0,0,0,0,0,0,0,0,0,0,4]}]}}.
    {put_list,{x,7},{x,8},{x,7}}.
    {put_tuple2,{x,6},
                {list,[{x,6},
                       {literal,"<< 869 : 16 / little , 3479 : I_13 , Bin / binary , 7 : 1 / unit : 3 , Bin / binary >>"},
                       {literal,[101,3,108,189,42,214,31,165,90,195]}]}}.
    {put_list,{x,6},{x,7},{x,6}}.
    {put_tuple2,{x,5},
                {list,[{x,5},
                       {literal,"<< 869 : 16 / little , 3479 : I_13 , Bin / binary , 7 : 1 / unit : 3 >>"},
                       {literal,[101,3,108,189,42,214,31]}]}}.
    {put_list,{x,5},{x,6},{x,5}}.
    {put_tuple2,{x,4},
                {list,[{x,4},
                       {literal,"<< 3479 : I_13 , Bin / binary , 7 : 1 / unit : 3 >>"},
                       {literal,[108,189,42,214,31]}]}}.
    {put_list,{x,4},{x,5},{x,4}}.
    {put_tuple2,{x,3},
                {list,[{x,3},
                       {literal,"<< 3479 : I_13 , Bin / binary , 7 : 3 >>"},
                       {literal,[108,189,42,214,31]}]}}.
    {put_list,{x,3},{x,4},{x,3}}.
    {put_tuple2,{x,2},
                {list,[{x,2},
                       {literal,"<< 79 , Bin / binary >>"},
                       {literal,"O¥ZÃ"}]}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_tuple2,{x,1},
                {list,[{x,1},{literal,"<< Bin / binary >>"},{literal,"¥ZÃ"}]}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{y,1},
                       {literal,[60,60,32,36,1074,32,47,32,110,97,116,105,118,
                                 101,32,45,32,117,116,102,51,50,32,44,32,34,
                                 1086,1076,1072,34,32,47,32,110,97,116,105,
                                 118,101,32,45,32,117,116,102,51,50,32,62,62]},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,3},
                       {literal,[60,60,32,36,1101,32,47,32,110,97,116,105,118,
                                 101,32,45,32,117,116,102,49,54,32,44,32,36,
                                 1090,32,47,32,110,97,116,105,118,101,32,45,
                                 32,117,116,102,49,54,32,44,32,36,1086,32,47,
                                 32,110,97,116,105,118,101,32,45,32,117,116,
                                 102,49,54,32,44,32,34,32,1089,1087,1091,1090,
                                 1085,1080,1082,34,32,47,32,110,97,116,105,
                                 118,101,32,45,32,117,116,102,49,54,32,62,62]},
                       {y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,5},
                       {literal,"<< 32978297842987249827298387697777669766334937 : 128 / native - integer >>"},
                       {y,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,7},
                       {literal,"<< 37.98 : 64 / native - float >>"},
                       {y,4}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{<<46,110,142,77,45,204,233>>,
                        "<< 1 : 3 , \"string\" , 9 : 5 >>",
                        [46,110,142,77,45,204,233]}},
              {x,0},
              {x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,8},
                       {literal,"<< 1 : 1 , 0 : ( I_13 - 7 ) , 1 : 1 >>"},
                       {literal,[129]}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,9},
                       {literal,"<< 4 : ( I_16 - 8 ) / unit : 2 , 5 : 2 / unit : 8 >>"},
                       {literal,[0,4,0,5]}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{literal,<<"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ">>},
                       {literal,"<< - 1 : 8 / unit : 17 >>"},
                       {y,6}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{literal,<<"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ">>},
                       {literal,"<< - 1 : 17 / unit : 8 >>"},
                       {y,10}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,16},
                       {literal,"<< 57285702734876389752897684 : ( I_16 + 16 ) >>"},
                       {literal,[138,99,0,148]}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,15},
                       {literal,"<< I_big1 : 32 >>"},
                       {literal,[138,99,0,147]}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{<<0,0,128,63>>,
                        "<< 1.0 : 32 / little - float >>",
                        [0,0,128,63]}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{<<62,0,0,0>>,"<< 0.125 : 32 / float >>",[62,0,0,0]}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{<<0,0,0,0>>,"<< 0.0 : 32 / float >>",[0,0,0,0]}},
              {x,0},
              {x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,14},
                       {literal,"<< 5 : 4 , 987 : I_13 , 537 : 7 >>"},
                       {literal,[81,237,153]}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,13},
                       {literal,"<< 777 : I_13 , 13 : 3 >>"},
                       {literal,[24,77]}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{<<9,3>>,"<< 777 : 16 / little >>",[9,3]}},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{y,12},
                       {literal,"<< 45 : I_16 / little >>"},
                       {literal,[45,0]}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{literal,{<<"G">>,"<< 4 : 4 , 7 : 4 >>","G"}},{x,0},{x,0}}.
    {put_list,{literal,{<<"Õ">>,"<< - 43 >>","Õ"}},{x,0},{x,0}}.
    {put_tuple2,{x,1},{list,[{y,11},{literal,"<< I_13 : 0 >>"},nil]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,20}.
    return.


{function, native_3798, 0, 37}.
  {label,36}.
    {line,[{location,"bs_construct_r24_SUITE.erl",194}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,native_3798},0}.
  {label,37}.
    {line,[{location,"bs_construct_r24_SUITE.erl",195}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[native]},{integer,1}}.
    {move,{x,0},{x,0}}.
    {test,bs_start_match3,{f,40},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,40},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[196,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},{f,40},{list,[{integer,1},{f,39},{integer,256},{f,38}]}}.
  {label,38}.
    {test,bs_test_tail2,{f,40},[{x,1},0]}.
    {move,{literal,"=\n×£pýB@"},{x,0}}.
    return.
  {label,39}.
    {test,bs_test_tail2,{f,40},[{x,1},0]}.
    {move,{literal,"@Býp£×\n="},{x,0}}.
    return.
  {label,40}.
    {case_end,{x,0}}.


{function, native_bignum, 0, 42}.
  {label,41}.
    {line,[{location,"bs_construct_r24_SUITE.erl",200}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,native_bignum},0}.
  {label,42}.
    {line,[{location,"bs_construct_r24_SUITE.erl",201}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[native]},{integer,1}}.
    {move,{x,0},{x,0}}.
    {test,bs_start_match3,{f,45},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,45},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[202,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},{f,45},{list,[{integer,1},{f,44},{integer,256},{f,43}]}}.
  {label,43}.
    {test,bs_test_tail2,{f,45},[{x,1},0]}.
    {move,{literal,[217,73,11,176,128,109,231,39,101,170,213,1,177,18,205,
                    129]},
          {x,0}}.
    return.
  {label,44}.
    {test,bs_test_tail2,{f,45},[{x,1},0]}.
    {move,{literal,[129,205,18,177,1,213,170,101,39,231,109,128,176,11,73,
                    217]},
          {x,0}}.
    return.
  {label,45}.
    {case_end,{x,0}}.


{function, native_utf16, 0, 47}.
  {label,46}.
    {line,[{location,"bs_construct_r24_SUITE.erl",206}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,native_utf16},0}.
  {label,47}.
    {line,[{location,"bs_construct_r24_SUITE.erl",207}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[native]},{integer,1}}.
    {move,{x,0},{x,0}}.
    {test,bs_start_match3,{f,50},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,50},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[208,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},{f,50},{list,[{integer,1},{f,49},{integer,256},{f,48}]}}.
  {label,48}.
    {test,bs_test_tail2,{f,50},[{x,1},0]}.
    {move,{literal,[77,4,66,4,62,4,32,0,65,4,63,4,67,4,66,4,61,4,56,4,58,4]},
          {x,0}}.
    return.
  {label,49}.
    {test,bs_test_tail2,{f,50},[{x,1},0]}.
    {move,{literal,[4,77,4,66,4,62,0,32,4,65,4,63,4,67,4,66,4,61,4,56,4,58]},
          {x,0}}.
    return.
  {label,50}.
    {case_end,{x,0}}.


{function, native_utf32, 0, 52}.
  {label,51}.
    {line,[{location,"bs_construct_r24_SUITE.erl",212}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,native_utf32},0}.
  {label,52}.
    {line,[{location,"bs_construct_r24_SUITE.erl",213}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[native]},{integer,1}}.
    {move,{x,0},{x,0}}.
    {test,bs_start_match3,{f,55},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,55},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[214,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},{f,55},{list,[{integer,1},{f,54},{integer,256},{f,53}]}}.
  {label,53}.
    {test,bs_test_tail2,{f,55},[{x,1},0]}.
    {move,{literal,[50,4,0,0,62,4,0,0,52,4,0,0,48,4,0,0]},{x,0}}.
    return.
  {label,54}.
    {test,bs_test_tail2,{f,55},[{x,1},0]}.
    {move,{literal,[0,0,4,50,0,0,4,62,0,0,4,52,0,0,4,48]},{x,0}}.
    return.
  {label,55}.
    {case_end,{x,0}}.


{function, evaluate, 2, 57}.
  {label,56}.
    {line,[{location,"bs_construct_r24_SUITE.erl",218}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,evaluate},2}.
  {label,57}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{literal," . "},{x,1}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",220}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {call_ext,1,{extfunc,erl_scan,string,1}}.
    {test,is_tagged_tuple,{f,60},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,60},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",221}]}.
    {call_ext,1,{extfunc,erl_parse,parse_exprs,1}}.
    {test,is_tagged_tuple,{f,59},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,59},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,59},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,59},[{x,1}]}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",222}]}.
    {call_ext,2,{extfunc,erl_eval,expr,2}}.
    {test,is_tagged_tuple,{f,58},[{x,0},3,{atom,value}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,58},[{x,1},{atom,value}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,0}.
    return.
  {label,58}.
    {case_end,{x,0}}.
  {label,59}.
    {line,[{location,"bs_construct_r24_SUITE.erl",221}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{location,"bs_construct_r24_SUITE.erl",219}]}.
    {badmatch,{x,0}}.


{function, eval_list, 2, 62}.
  {label,61}.
    {line,[{location,"bs_construct_r24_SUITE.erl",227}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,eval_list},2}.
  {label,62}.
    {test,is_nonempty_list,{f,65},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,{f,61},[{x,2}]}.
    {test,test_arity,{f,61},[{x,2},3]}.
    {allocate,5,4}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_tuple_element,{x,2},1,{y,0}}.
    {'catch',{y,4},{f,63}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",230}]}.
    {call,2,{f,57}}. % evaluate/2
  {label,63}.
    {catch_end,{y,4}}.
    {move,{x,0},{y,4}}.
    {test,is_tagged_tuple,{f,64},[{y,4},2,{atom,'EXIT'}]}.
    {get_tuple_element,{y,4},0,{x,0}}.
    {test,is_eq_exact,{f,64},[{x,0},{atom,'EXIT'}]}.
    {test_heap,6,0}.
    {get_tuple_element,{y,4},1,{y,4}}.
    {put_list,{y,4},nil,{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {trim,4,1}.
    {move,{literal,"Evaluation error: ~p, ~p, ~p~n"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",232}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",233}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},1}.
  {label,64}.
    {move,{y,3},{x,1}}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,3}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",235}]}.
    {call,2,{f,62}}. % eval_list/2
    {test_heap,7,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},2,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,2},{y,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,65}.
    {test,is_nil,{f,61},[{x,0}]}.
    return.


{function, one_test, 1, 67}.
  {label,66}.
    {line,[{location,"bs_construct_r24_SUITE.erl",238}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,one_test},1}.
  {label,67}.
    {test,is_tuple,{f,66},[{x,0}]}.
    {test,test_arity,{f,66},[{x,0},4]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_list,{f,70},[{x,0}]}.
    {allocate_heap,5,4,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{x,0},{y,4}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,3},{x,0},{x,1}}.
    {move,{literal,"  ~ts, ~p~n"},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",239}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",240}]}.
    {call_ext,1,{extfunc,erlang,list_to_bitstring,1}}.
    {move,{x,0},{y,0}}.
    {test,is_ne,{f,68},[{y,1},{x,0}]}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",246}]}.
    {call_ext,1,{extfunc,erlang,bitstring_to_list,1}}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,4},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,1}}.
    {move,{literal,"ERROR: Compiled: ~p.~nExpected ~p.~nGot ~p.~n"},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",245}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,comp},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",247}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,68}.
    {test,is_eq,{f,69},[{y,2},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,69}.
    {move,{y,2},{x,0}}.
    {trim,3,2}.
    {line,[{location,"bs_construct_r24_SUITE.erl",254}]}.
    {call_ext,1,{extfunc,erlang,bitstring_to_list,1}}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {trim,2,0}.
    {move,{literal,"ERROR: Interpreted: ~p.~nExpected ~p.~nGot ~p.~n"},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",253}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,comp},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",255}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,70}.
    {allocate_heap,4,4,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,0},{y,3}}.
    {put_list,{x,1},nil,{x,0}}.
    {put_list,{x,3},{x,0},{x,1}}.
    {move,{literal,"  ~ts ~p~n"},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",258}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test,is_eq,{f,71},[{y,1},{y,2}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,71}.
    {test,is_eq_exact,{f,72},[{y,3},{atom,unknown}]}.
    {line,[{location,"bs_construct_r24_SUITE.erl",265}]}.
    {gc_bif,size,{f,0},0,[{y,1}],{x,0}}.
    {move,{x,0},{y,3}}.
  {label,72}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",269}]}.
    {call_ext,1,{extfunc,erlang,bitstring_to_list,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",270}]}.
    {call_ext,1,{extfunc,erlang,bitstring_to_list,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0},{y,3}]}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",269}]}.
    {call,3,{f,77}}. % equal_lists/3
    {test,is_atom,{f,73},[{x,0}]}.
    {test,is_eq_exact,{f,74},[{x,0},{atom,false}]}.
    {move,{y,1},{x,0}}.
    {trim,2,2}.
    {line,[{location,"bs_construct_r24_SUITE.erl",275}]}.
    {call_ext,1,{extfunc,erlang,bitstring_to_list,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call_ext,1,{extfunc,erlang,bitstring_to_list,1}}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {trim,1,0}.
    {move,{literal,"ERROR: Compiled not equal to interpreted:~n ~p, ~p.~n"},
          {x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",273}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,comp},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",276}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,73}.
    {test,is_eq_exact,{f,74},[{x,0},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,74}.
    {test,is_integer,{f,75},[{x,0}]}.
    {move,{y,1},{x,0}}.
    {trim,2,2}.
    {line,[{location,"bs_construct_r24_SUITE.erl",284}]}.
    {call_ext,1,{extfunc,erlang,bitstring_to_list,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call_ext,1,{extfunc,erlang,bitstring_to_list,1}}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {trim,1,0}.
    {move,{literal,"Info: compiled and interpreted differ in the last bytes:~n ~p, ~p.~n"},
          {x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",282}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,75}.
    {line,[{location,"bs_construct_r24_SUITE.erl",269}]}.
    {case_end,{x,0}}.


{function, equal_lists, 3, 77}.
  {label,76}.
    {line,[{location,"bs_construct_r24_SUITE.erl",289}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,equal_lists},3}.
  {label,77}.
    {test,is_nil,{f,78},[{x,0}]}.
    {test,is_nil,{f,81},[{x,1}]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,78}.
    {test,is_ne_exact,{f,81},[{x,1},nil]}.
    {test,is_nonempty_list,{f,79},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,79},[{x,1}]}.
    {get_list,{x,1},{x,5},{x,6}}.
    {test,is_eq_exact,{f,79},[{x,5},{x,3}]}.
    {move,{x,6},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,77}}. % equal_lists/3
  {label,79}.
    {gc_bif,length,{f,80},3,[{x,0}],{x,3}}.
    {gc_bif,length,{f,80},4,[{x,1}],{x,1}}.
    {test,is_eq,{f,81},[{x,3},{x,1}]}.
  {label,80}.
    {gc_bif,length,{f,81},3,[{x,0}],{x,0}}.
    {test,is_ge,{f,81},[{x,2},{x,0}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,81}.
    {move,{atom,false},{x,0}}.
    return.


{function, test1, 1, 83}.
  {label,82}.
    {line,[{location,"bs_construct_r24_SUITE.erl",307}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,test1},1}.
  {label,83}.
    {test,is_list,{f,82},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,13},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",308}]}.
    {call,1,{f,31}}. % i/1
    {move,{x,0},{y,4}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",309}]}.
    {call,1,{f,29}}. % big/1
    {move,{x,0},{y,3}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",310}]}.
    {call,1,{f,31}}. % i/1
    {move,{x,0},{y,2}}.
    {move,{literal,<<"¥ZÃ">>},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",311}]}.
    {call,1,{f,31}}. % i/1
    {test_heap,20,1}.
    {put_tuple2,{x,1},{list,[{atom,'Bin'},{x,0}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,2},{list,[{atom,'I_16'},{y,2}]}}.
    {put_list,{x,2},{x,1},{x,1}}.
    {put_tuple2,{x,2},{list,[{atom,'I_big1'},{y,3}]}}.
    {put_list,{x,2},{x,1},{x,1}}.
    {put_tuple2,{x,2},{list,[{atom,'I_13'},{y,4}]}}.
    {put_list,{x,2},{x,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",312}]}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,67},0,0,{y,0},{list,[]}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,4}}.
    {move,{x,0},{y,4}}.
    {move,{y,1},{x,3}}.
    {move,{y,0},{y,3}}.
    {trim,3,2}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",316}]}.
    {call,4,{f,35}}. % l/4
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {call,2,{f,62}}. % eval_list/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_ext_last,2,{extfunc,lists,foreach,2},1}.


{function, fail, 1, 85}.
  {label,84}.
    {line,[{location,"bs_construct_r24_SUITE.erl",318}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,fail},1}.
  {label,85}.
    {test,is_list,{f,84},[{x,0}]}.
    {allocate,21,0}.
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
                       {y,14},
                       {y,15},
                       {y,16},
                       {y,17},
                       {y,18},
                       {y,19},
                       {y,20}]}}.
    {move,{integer,-777},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",319}]}.
    {call,1,{f,31}}. % i/1
    {move,{x,0},{y,19}}.
    {move,{integer,-2047},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",320}]}.
    {call,1,{f,31}}. % i/1
    {'catch',{y,20},{f,86}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",325}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2048},8],{x,1}}.
    {bs_add,{f,0},[{x,1},{x,0},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,2048},8,{field_flags,[]},{y,19}}.
    {bs_put_integer,{f,0},{x,0},8,{field_flags,[]},{integer,57}}.
    {move,{x,1},{x,0}}.
  {label,86}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,130},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,130},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,130},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,130},[{x,1},{atom,badarg}]}.
    {'catch',{y,19},{f,87}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,"("},{location,"bs_construct_r24_SUITE.erl",329}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,87}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,129},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,129},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,129},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,129},[{x,1},{atom,badarg}]}.
    {'catch',{y,18},{f,88}}.
    {init_yregs,{list,[{y,19}]}}.
    {move,{atom,not_a_number},{x,0}}.
    {line,[{scope,"&"},{location,"bs_construct_r24_SUITE.erl",333}]}.
    {call,1,{f,31}}. % i/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{x,0},1],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{x,0},1,{field_flags,[]},{integer,45}}.
    {move,{x,1},{x,0}}.
  {label,88}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,128},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,128},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,128},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,128},[{x,1},{atom,badarg}]}.
    {'catch',{y,17},{f,89}}.
    {move,{atom,not_a_number},{x,0}}.
    {line,[{scope,"$"},{location,"bs_construct_r24_SUITE.erl",334}]}.
    {call,1,{f,31}}. % i/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {bs_add,{f,0},[{x,1},{x,0},1],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_string,1,{string,<<"\r">>}}.
    {bs_put_integer,{f,0},{x,0},1,{field_flags,[]},{integer,45}}.
    {move,{x,1},{x,0}}.
  {label,89}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,127},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,127},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,127},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,127},[{x,1},{atom,badarg}]}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,"\""},{location,"bs_construct_r24_SUITE.erl",337}]}.
    {call,1,{f,31}}. % i/1
    {move,{x,0},{y,20}}.
    {move,{literal,<<0,21,0:1>>},{x,0}}.
    {line,[{scope,"\""},{location,"bs_construct_r24_SUITE.erl",338}]}.
    {call,1,{f,31}}. % i/1
    {move,{x,0},{y,19}}.
    {'catch',{y,16},{f,90}}.
    {line,[{scope,"\""},{location,"bs_construct_r24_SUITE.erl",340}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{integer,4},8,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
  {label,90}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,126},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,126},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,126},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,126},[{x,1},{atom,badarg}]}.
    {'catch',{y,15},{f,91}}.
    {line,[{scope," "},{location,"bs_construct_r24_SUITE.erl",341}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{y,20},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_binary,{f,0},{y,20},8,{field_flags,[]},{y,19}}.
    {move,{x,0},{x,0}}.
  {label,91}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,125},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,125},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,125},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,125},[{x,1},{atom,badarg}]}.
    {move,{y,19},{x,2}}.
    {move,{y,20},{x,1}}.
    {init_yregs,{list,[{y,20}]}}.
    {move,nil,{x,0}}.
    {line,[{scope,[30]},{location,"bs_construct_r24_SUITE.erl",343}]}.
    {call,3,{f,447}}. % '-fail/1-lc$^0/1-0-'/3
    {test,is_nil,{f,124},[{x,0}]}.
    {move,{y,19},{x,1}}.
    {init_yregs,{list,[{y,19}]}}.
    {move,nil,{x,0}}.
    {line,[{scope,[30]},{location,"bs_construct_r24_SUITE.erl",344}]}.
    {call,2,{f,442}}. % '-fail/1-lc$^1/1-1-'/2
    {test,is_nil,{f,123},[{x,0}]}.
    {'catch',{y,14},{f,92}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[30]},{location,"bs_construct_r24_SUITE.erl",347}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,92}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,122},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,122},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,122},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,122},[{x,1},{atom,badarg}]}.
    {'catch',{y,13},{f,93}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[28]},{location,"bs_construct_r24_SUITE.erl",348}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,93}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,121},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,121},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,121},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,121},[{x,1},{atom,badarg}]}.
    {'catch',{y,12},{f,94}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[26]},{location,"bs_construct_r24_SUITE.erl",349}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,94}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,120},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,120},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,120},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,120},[{x,1},{atom,badarg}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_construct_r24_SUITE.erl",352}]}.
    {call,1,{f,31}}. % i/1
    {'catch',{y,11},{f,95}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[24]},{location,"bs_construct_r24_SUITE.erl",353}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,95}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,119},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,119},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,119},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,119},[{x,1},{atom,badarg}]}.
    {'catch',{y,10},{f,96}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[22]},{location,"bs_construct_r24_SUITE.erl",354}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,96}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,118},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,118},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,118},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,118},[{x,1},{atom,badarg}]}.
    {'catch',{y,9},{f,97}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[20]},{location,"bs_construct_r24_SUITE.erl",355}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,97}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,117},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,117},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,117},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,117},[{x,1},{atom,badarg}]}.
    {'catch',{y,8},{f,98}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[18]},{location,"bs_construct_r24_SUITE.erl",356}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,98}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,116},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,116},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,116},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,116},[{x,1},{atom,badarg}]}.
    {'catch',{y,7},{f,99}}.
    {line,[{scope,[16]},{location,"bs_construct_r24_SUITE.erl",359}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,1,{string,<<0>>}}.
    {bs_put_binary,{f,0},
                   {atom,all},
                   8,
                   {field_flags,[]},
                   {literal,<<15,48,1:1>>}}.
    {move,{x,0},{x,0}}.
  {label,99}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,115},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,115},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,115},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,115},[{x,1},{atom,badarg}]}.
    {'catch',{y,6},{f,100}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[14]},{location,"bs_construct_r24_SUITE.erl",363}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,100}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,114},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,114},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,114},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,114},[{x,1},{atom,badarg}]}.
    {'catch',{y,5},{f,101}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",366}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,101}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,113},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,113},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,113},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,113},[{x,1},{atom,badarg}]}.
    {'catch',{y,4},{f,102}}.
    {move,{integer,17},{x,1}}.
    {move,{atom,fail},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_construct_r24_SUITE.erl",370}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{x,0},1],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{x,0},1,{field_flags,[]},{integer,13}}.
    {move,{x,1},{x,0}}.
  {label,102}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,112},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,112},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,112},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,112},[{x,1},{atom,badarg}]}.
    {move,{atom,fail},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",371}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,111},[{x,0},{integer,17}]}.
    {'catch',{y,3},{f,103}}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",372}]}.
    {call,0,{f,132}}. % fail_1/0
  {label,103}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,110},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,110},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,110},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,110},[{x,1},{atom,badarg}]}.
    {'catch',{y,2},{f,104}}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",377}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,42},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_binary,{f,0},
                   {integer,42},
                   8,
                   {field_flags,[native]},
                   {literal,<<"t">>}}.
    {move,{x,0},{x,0}}.
  {label,104}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,109},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,109},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,109},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,109},[{x,1},{atom,badarg}]}.
    {'catch',{y,1},{f,105}}.
    {line,[{scope,[4]},{location,"bs_construct_r24_SUITE.erl",378}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,42},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_binary,{f,0},{integer,42},8,{field_flags,[]},{literal,<<"t">>}}.
    {move,{x,0},{x,0}}.
  {label,105}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,108},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,108},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,108},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,108},[{x,1},{atom,badarg}]}.
    {'catch',{y,0},{f,106}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",380}]}.
    {call,1,{f,134}}. % fail_2/1
  {label,106}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,107},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,107},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,107},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,107},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,21}.
    return.
  {label,107}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",380}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",378}]}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{scope,[4]},{location,"bs_construct_r24_SUITE.erl",377}]}.
    {badmatch,{x,0}}.
  {label,110}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",372}]}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",371}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",370}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{scope,"\n"},{location,"bs_construct_r24_SUITE.erl",366}]}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",363}]}.
    {badmatch,{x,0}}.
  {label,115}.
    {line,[{scope,[14]},{location,"bs_construct_r24_SUITE.erl",359}]}.
    {badmatch,{x,0}}.
  {label,116}.
    {line,[{scope,[16]},{location,"bs_construct_r24_SUITE.erl",356}]}.
    {badmatch,{x,0}}.
  {label,117}.
    {line,[{scope,[18]},{location,"bs_construct_r24_SUITE.erl",355}]}.
    {badmatch,{x,0}}.
  {label,118}.
    {line,[{scope,[20]},{location,"bs_construct_r24_SUITE.erl",354}]}.
    {badmatch,{x,0}}.
  {label,119}.
    {line,[{scope,[22]},{location,"bs_construct_r24_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,120}.
    {line,[{scope,[24]},{location,"bs_construct_r24_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,121}.
    {line,[{scope,[26]},{location,"bs_construct_r24_SUITE.erl",348}]}.
    {badmatch,{x,0}}.
  {label,122}.
    {line,[{scope,[28]},{location,"bs_construct_r24_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,123}.
    {line,[{scope,[30]},{location,"bs_construct_r24_SUITE.erl",344}]}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{scope,[30]},{location,"bs_construct_r24_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,125}.
    {line,[{scope,[30]},{location,"bs_construct_r24_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,126}.
    {line,[{scope," "},{location,"bs_construct_r24_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,127}.
    {line,[{scope,"\""},{location,"bs_construct_r24_SUITE.erl",334}]}.
    {badmatch,{x,0}}.
  {label,128}.
    {line,[{scope,"$"},{location,"bs_construct_r24_SUITE.erl",333}]}.
    {badmatch,{x,0}}.
  {label,129}.
    {line,[{scope,"&"},{location,"bs_construct_r24_SUITE.erl",329}]}.
    {badmatch,{x,0}}.
  {label,130}.
    {line,[{scope,"("},{location,"bs_construct_r24_SUITE.erl",325}]}.
    {badmatch,{x,0}}.


{function, fail_1, 0, 132}.
  {label,131}.
    {line,[{location,"bs_construct_r24_SUITE.erl",384}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,fail_1},0}.
  {label,132}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",385}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, fail_2, 1, 134}.
  {label,133}.
    {line,[{location,"bs_construct_r24_SUITE.erl",389}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,fail_2},1}.
  {label,134}.
    {test,is_eq_exact,{f,133},[{x,0},{atom,true}]}.
    {line,[{location,"bs_construct_r24_SUITE.erl",390}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_string,1,{string,<<0>>}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    return.


{function, float_bin, 1, 136}.
  {label,135}.
    {line,[{location,"bs_construct_r24_SUITE.erl",392}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,float_bin},1}.
  {label,136}.
    {test,is_list,{f,135},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",394}]}.
    {call,1,{f,140}}. % float_bin_1/1
    {test,is_eq_exact,{f,138},[{x,0},{literal,{<<1,2,3>>,7.0}}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",396}]}.
    {call,1,{f,33}}. % id/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,9},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {bs_put_string,8,{string,<<0,0,0,0,0,0,69,64>>}}.
    {move,{x,1},{x,0}}.
    {test,is_eq_exact,{f,137},[{x,0},{literal,<<42,0,0,0,0,0,0,69,64>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,137}.
    {badmatch,{x,0}}.
  {label,138}.
    {line,[{location,"bs_construct_r24_SUITE.erl",394}]}.
    {badmatch,{x,0}}.


{function, float_bin_1, 1, 140}.
  {label,139}.
    {line,[{location,"bs_construct_r24_SUITE.erl",399}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,float_bin_1},1}.
  {label,140}.
    {line,[{location,"bs_construct_r24_SUITE.erl",400}]}.
    {gc_bif,'+',{f,0},1,[{x,0},{float,3.0}],{x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,<<1,2,3>>},{x,0}]}}.
    return.


{function, in_guard, 1, 142}.
  {label,141}.
    {line,[{location,"bs_construct_r24_SUITE.erl",402}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,in_guard},1}.
  {label,142}.
    {test,is_list,{f,141},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,3733},{x,1}}.
    {move,{integer,5},{x,2}}.
    {move,{literal,<<"t­">>},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",403}]}.
    {call,3,{f,166}}. % in_guard_1/3
    {test,is_eq_exact,{f,164},[{x,0},{integer,1}]}.
    {move,{integer,15095},{x,1}}.
    {move,{literal,<<"hello">>},{x,2}}.
    {move,{literal,<<":÷hello">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",404}]}.
    {call,3,{f,166}}. % in_guard_1/3
    {test,is_eq_exact,{f,163},[{x,0},{integer,2}]}.
    {move,{integer,64461},{x,1}}.
    {move,{float,3.1415},{x,2}}.
    {move,{literal,<<239,53,0,36,135,43,2,12,73,191>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",405}]}.
    {call,3,{f,166}}. % in_guard_1/3
    {test,is_eq_exact,{f,162},[{x,0},{integer,3}]}.
    {move,{integer,64461},{x,1}}.
    {move,{integer,3},{x,2}}.
    {move,{literal,<<239,53,0,32,0,0,0,0,0,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",406}]}.
    {call,3,{f,166}}. % in_guard_1/3
    {test,is_eq_exact,{f,161},[{x,0},{integer,3}]}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",407}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,10},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,10,{string,<<239,53,56,128,0,0,0,0,0,3>>}}.
    {move,{x,0},{x,0}}.
    {move,{integer,215679573337205118357336120696157045389097155380324579848828881993728},
          {x,2}}.
    {move,{integer,64461},{x,1}}.
    {call,3,{f,166}}. % in_guard_1/3
    {test,is_eq_exact,{f,160},[{x,0},{integer,3}]}.
    {move,{integer,42},{x,1}}.
    {move,{atom,b},{x,2}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",408}]}.
    {call,3,{f,166}}. % in_guard_1/3
    {test,is_eq_exact,{f,159},[{x,0},{atom,nope}]}.
    {move,{atom,a},{x,1}}.
    {move,{atom,b},{x,2}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",409}]}.
    {call,3,{f,166}}. % in_guard_1/3
    {test,is_eq_exact,{f,158},[{x,0},{atom,nope}]}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",410}]}.
    {call,3,{f,166}}. % in_guard_1/3
    {test,is_eq_exact,{f,157},[{x,0},{atom,nope}]}.
    {move,{integer,1},{x,1}}.
    {move,{float,2.71},{x,2}}.
    {move,{literal,<<4,5>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",411}]}.
    {call,3,{f,166}}. % in_guard_1/3
    {test,is_eq_exact,{f,156},[{x,0},{atom,nope}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"\f\r">>},{x,2}}.
    {move,{literal,<<4,5>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",412}]}.
    {call,3,{f,166}}. % in_guard_1/3
    {test,is_eq_exact,{f,155},[{x,0},{atom,nope}]}.
    {move,{integer,7},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{literal,<<0,56>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",414}]}.
    {call,3,{f,172}}. % in_guard_2/3
    {test,is_eq_exact,{f,154},[{x,0},{integer,1}]}.
    {move,{integer,511},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{literal,<<1,255>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",415}]}.
    {call,3,{f,172}}. % in_guard_2/3
    {test,is_eq_exact,{f,153},[{x,0},{integer,2}]}.
    {move,{integer,0},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{literal,<<0,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",416}]}.
    {call,3,{f,172}}. % in_guard_2/3
    {test,is_eq_exact,{f,152},[{x,0},{integer,3}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,{<<0,7>>}},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",417}]}.
    {call,3,{f,172}}. % in_guard_2/3
    {test,is_eq_exact,{f,151},[{x,0},{integer,4}]}.
    {move,{integer,1},{x,1}}.
    {move,{atom,blurf},{x,2}}.
    {move,{literal,<<4,5>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",418}]}.
    {call,3,{f,172}}. % in_guard_2/3
    {test,is_eq_exact,{f,150},[{x,0},{atom,nope}]}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{literal,<<1,2,3,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",420}]}.
    {call,2,{f,178}}. % in_guard_3/2
    {test,is_eq_exact,{f,149},[{x,0},{integer,42}]}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{literal,<<1,2,3,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",421}]}.
    {call,2,{f,178}}. % in_guard_3/2
    {test,is_eq_exact,{f,148},[{x,0},{integer,42}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",422}]}.
    {call,2,{f,178}}. % in_guard_3/2
    {test,is_eq_exact,{f,147},[{x,0},{atom,nope}]}.
    {move,{integer,255},{x,1}}.
    {move,{literal,<<15:4>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",424}]}.
    {call,2,{f,181}}. % in_guard_4/2
    {test,is_eq_exact,{f,146},[{x,0},{atom,ok}]}.
    {move,{integer,255},{x,1}}.
    {move,{literal,<<15>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",425}]}.
    {call,2,{f,181}}. % in_guard_4/2
    {test,is_eq_exact,{f,145},[{x,0},{atom,nope}]}.
    {'catch',{y,0},{f,143}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",427}]}.
    {call,0,{f,184}}. % in_guard_5/0
  {label,143}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,{f,144},[{x,0},{atom,nope}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,144}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,145}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",425}]}.
    {badmatch,{x,0}}.
  {label,146}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",424}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",422}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",417}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",416}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",415}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",414}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",410}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",409}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",408}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",407}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",406}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",405}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",404}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",403}]}.
    {badmatch,{x,0}}.


{function, in_guard_1, 3, 166}.
  {label,165}.
    {line,[{location,"bs_construct_r24_SUITE.erl",431}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,in_guard_1},3}.
  {label,166}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,167},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,167},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,167},{integer,13},1,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,167},{integer,3},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq,{f,167},[{x,3},{x,0}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,167}.
    {line,[{location,"bs_construct_r24_SUITE.erl",432}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,168},[{x,3},{integer,2},8],{x,3}}.
    {gc_bif,byte_size,{f,168},4,[{x,2}],{x,4}}.
    {bs_add,{f,168},[{x,3},{x,4},8],{x,3}}.
    {bs_init_bits,{f,168},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,168},{integer,16},1,{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,168},{atom,all},8,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq,{f,168},[{x,3},{x,0}]}.
    {move,{integer,2},{x,0}}.
    return.
  {label,168}.
    {line,[{location,"bs_construct_r24_SUITE.erl",433}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,169},[{x,3},{integer,10},8],{x,3}}.
    {bs_init_bits,{f,169},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,169},{integer,14},1,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,169},{integer,64},1,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,169},{integer,2},1,{field_flags,[]},{integer,3}}.
    {move,{x,3},{x,3}}.
    {test,is_eq,{f,169},[{x,3},{x,0}]}.
    {move,{integer,3},{x,0}}.
    return.
  {label,169}.
    {line,[{location,"bs_construct_r24_SUITE.erl",434}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,170},[{x,3},{integer,10},8],{x,3}}.
    {bs_init_bits,{f,170},{x,3},4,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,170},{integer,14},1,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,170},{integer,64},1,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,170},{integer,2},1,{field_flags,[]},{integer,3}}.
    {move,{x,3},{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,a},{atom,b},{x,1}]}}.
    {test,is_eq,{f,170},[{x,1},{x,0}]}.
    {move,{atom,cant_happen},{x,0}}.
    return.
  {label,170}.
    {move,{atom,nope},{x,0}}.
    return.


{function, in_guard_2, 3, 172}.
  {label,171}.
    {line,[{location,"bs_construct_r24_SUITE.erl",437}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,in_guard_2},3}.
  {label,172}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,173},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,173},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,173},{integer,13},1,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,173},{integer,3},1,{field_flags,[]},{integer,0}}.
    {move,{x,3},{x,3}}.
    {test,is_eq,{f,173},[{x,3},{x,0}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,173}.
    {line,[{location,"bs_construct_r24_SUITE.erl",438}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,174},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,174},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,174},{integer,16},1,{field_flags,[]},{x,1}}.
    {move,{x,3},{x,3}}.
    {test,is_eq,{f,174},[{x,3},{x,0}]}.
    {move,{integer,2},{x,0}}.
    return.
  {label,174}.
    {line,[{location,"bs_construct_r24_SUITE.erl",439}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,175},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,175},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,175},{integer,14},1,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,175},{integer,2},1,{field_flags,[]},{integer,3}}.
    {move,{x,3},{x,3}}.
    {test,is_eq,{f,175},[{x,3},{x,0}]}.
    {move,{integer,3},{x,0}}.
    return.
  {label,175}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,b}]}}.
    {test,is_lt,{f,176},[{literal,{0,1}},{x,0}]}.
    {line,[{location,"bs_construct_r24_SUITE.erl",440}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,176},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,176},{x,3},2,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,176},{integer,14},1,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,176},{integer,2},1,{field_flags,[]},{integer,3}}.
    {move,{x,3},{x,0}}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {test,is_eq,{f,176},[{x,0},{x,2}]}.
    {move,{integer,4},{x,0}}.
    return.
  {label,176}.
    {move,{atom,nope},{x,0}}.
    return.


{function, in_guard_3, 2, 178}.
  {label,177}.
    {line,[{location,"bs_construct_r24_SUITE.erl",443}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,in_guard_3},2}.
  {label,178}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,179},[{x,2},{integer,1},8],{x,2}}.
    {bs_append,{f,179},{x,2},0,3,8,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,1,{string,<<"*">>}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,{f,179},[{x,1},{x,0}]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,179}.
    {move,{atom,nope},{x,0}}.
    return.


{function, in_guard_4, 2, 181}.
  {label,180}.
    {line,[{location,"bs_construct_r24_SUITE.erl",446}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,in_guard_4},2}.
  {label,181}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,182},[{x,2},{integer,4},1],{x,2}}.
    {bs_init_bits,{f,182},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,182},{integer,4},1,{field_flags,[]},{x,1}}.
    {move,{x,2},{x,1}}.
    {test,is_eq_exact,{f,182},[{x,1},{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,182}.
    {move,{atom,nope},{x,0}}.
    return.


{function, in_guard_5, 0, 184}.
  {label,183}.
    {line,[{location,"bs_construct_r24_SUITE.erl",450}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,in_guard_5},0}.
  {label,184}.
    {move,{atom,nope},{x,0}}.
    return.


{function, in_catch, 1, 186}.
  {label,185}.
    {line,[{location,"bs_construct_r24_SUITE.erl",453}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,in_catch},1}.
  {label,186}.
    {test,is_list,{f,185},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,5},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",454}]}.
    {call,2,{f,196}}. % small/2
    {test,is_eq_exact,{f,194},[{x,0},{literal,<<42,0,5>>}]}.
    {move,{literal,<<1,2,3,4,5,6,7,8,9>>},{x,1}}.
    {move,{integer,255},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",455}]}.
    {call,2,{f,196}}. % small/2
    {test,is_eq_exact,{f,193},[{x,0},{literal,<<"ÿ">>}]}.
    {move,{integer,258},{x,1}}.
    {move,{literal,<<7,8,9,10>>},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",456}]}.
    {call,2,{f,196}}. % small/2
    {test,is_eq_exact,{f,192},[{x,0},{literal,<<1,2>>}]}.
    {move,{literal,<<7,8,9,10>>},{x,1}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",457}]}.
    {call,2,{f,196}}. % small/2
    {test,is_eq_exact,{f,191},[{x,0},{literal,<<>>}]}.
    {move,{integer,42},{x,1}}.
    {move,{integer,255},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",459}]}.
    {call,2,{f,203}}. % small2/2
    {test,is_eq_exact,{f,190},[{x,0},{literal,<<15,240,0,42>>}]}.
    {move,{integer,7},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",460}]}.
    {call,2,{f,203}}. % small2/2
    {test,bs_start_match3,{f,189},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,189},[{x,1},20,{string,<<0,0,112>>}]}.
    {test,bs_test_tail2,{f,189},[{x,1},0]}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,300},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",461}]}.
    {call,2,{f,203}}. % small2/2
    {test,bs_start_match3,{f,188},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,188},[{x,1},12,{string,<<18,192>>}]}.
    {test,bs_test_tail2,{f,188},[{x,1},0]}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",462}]}.
    {call,2,{f,203}}. % small2/2
    {test,is_eq_exact,{f,187},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,187}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{location,"bs_construct_r24_SUITE.erl",461}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{location,"bs_construct_r24_SUITE.erl",460}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{location,"bs_construct_r24_SUITE.erl",459}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{location,"bs_construct_r24_SUITE.erl",457}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{location,"bs_construct_r24_SUITE.erl",456}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{location,"bs_construct_r24_SUITE.erl",455}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{location,"bs_construct_r24_SUITE.erl",454}]}.
    {badmatch,{x,0}}.


{function, small, 2, 196}.
  {label,195}.
    {line,[{location,"bs_construct_r24_SUITE.erl",465}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,small},2}.
  {label,196}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,1},{y,0}}.
    {'catch',{y,2},{f,197}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",467}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
  {label,197}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,198},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,198},[{x,1},{atom,'EXIT'}]}.
    {move,{literal,<<>>},{y,2}}.
    {jump,{f,199}}.
  {label,198}.
    {move,{x,0},{y,2}}.
  {label,199}.
    {'catch',{y,1},{f,200}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",475}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{y,0}}.
    {move,{x,0},{x,0}}.
  {label,200}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,201},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,201},[{x,1},{atom,'EXIT'}]}.
    {move,{literal,<<>>},{x,0}}.
  {label,201}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",482}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,byte_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,8,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {deallocate,3}.
    return.


{function, small2, 2, 203}.
  {label,202}.
    {line,[{location,"bs_construct_r24_SUITE.erl",484}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,small2},2}.
  {label,203}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,1},{y,0}}.
    {'catch',{y,2},{f,204}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",486}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},1],{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,12},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
  {label,204}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,205},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,205},[{x,1},{atom,'EXIT'}]}.
    {move,{literal,<<>>},{y,2}}.
    {jump,{f,206}}.
  {label,205}.
    {move,{x,0},{y,2}}.
  {label,206}.
    {'catch',{y,1},{f,207}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",494}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4},1],{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,20},1,{field_flags,[]},{y,0}}.
    {move,{x,0},{x,0}}.
  {label,207}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,208},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,208},[{x,1},{atom,'EXIT'}]}.
    {move,{literal,<<>>},{x,0}}.
  {label,208}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",501}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {deallocate,3}.
    return.


{function, nasty_literals, 1, 210}.
  {label,209}.
    {line,[{location,"bs_construct_r24_SUITE.erl",503}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,nasty_literals},1}.
  {label,210}.
    {test,is_list,{f,209},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,endian},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",504}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},
                {f,225},
                {list,[{atom,big},{f,212},{atom,little},{f,211}]}}.
  {label,211}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",508}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[native]},{integer,42}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,33}}. % id/1
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {test,is_eq_exact,{f,218},[{x,0},{literal,[42,0]}]}.
    {jump,{f,213}}.
  {label,212}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",506}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[native]},{integer,42}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,33}}. % id/1
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {test,is_eq_exact,{f,224},[{x,0},{literal,[0,42]}]}.
  {label,213}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",511}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1250006},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,3,{string,<<1,2,3>>}}.
    {bs_put_integer,{f,0},{integer,10000000},1,{field_flags,[]},{integer,0}}.
    {bs_put_string,3,{string,<<4,5,6>>}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,33}}. % id/1
    {line,[{location,"bs_construct_r24_SUITE.erl",512}]}.
    {gc_bif,size,{f,0},1,[{x,0}],{x,1}}.
    {test,is_eq_exact,{f,223},[{x,1},{integer,1250006}]}.
    {test,bs_start_match3,{f,222},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,222},[{x,1},24,{string,<<1,2,3>>}]}.
    {test,bs_get_integer2,
          {f,222},
          2,
          [{x,1},
           {integer,10000000},
           1,
           {field_flags,[{anno,[513,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,222},[{x,2},{integer,0}]}.
    {test,bs_match_string,{f,222},[{x,1},24,{string,<<4,5,6>>}]}.
    {test,bs_test_tail2,{f,222},[{x,1},0]}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",515}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,3750004},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,10000000},1,{field_flags,[]},{integer,0}}.
    {bs_put_string,2,{string,<<7,8>>}}.
    {bs_put_integer,{f,0},{integer,10000000},1,{field_flags,[]},{integer,-1}}.
    {bs_put_string,2,{string,<<"\t\n">>}}.
    {bs_put_integer,{f,0},{integer,10000000},1,{field_flags,[]},{integer,0}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,33}}. % id/1
    {line,[{location,"bs_construct_r24_SUITE.erl",516}]}.
    {gc_bif,size,{f,0},1,[{x,0}],{x,1}}.
    {test,is_eq_exact,{f,221},[{x,1},{integer,3750004}]}.
    {test,bs_start_match3,{f,220},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,220},
          2,
          [{x,1},
           {integer,10000000},
           1,
           {field_flags,[{anno,[517,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,220},[{x,2},{integer,0}]}.
    {test,bs_match_string,{f,220},[{x,1},16,{string,<<7,8>>}]}.
    {test,bs_get_integer2,
          {f,220},
          2,
          [{x,1},
           {integer,10000000},
           1,
           {field_flags,[{anno,[517,{file,"bs_construct_r24_SUITE.erl"}]},
                         signed,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,220},[{x,2},{integer,-1}]}.
    {test,bs_match_string,{f,220},[{x,1},16,{string,<<"\t\n">>}]}.
    {test,bs_get_integer2,
          {f,220},
          2,
          [{x,1},
           {integer,10000000},
           1,
           {field_flags,[{anno,[517,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,220},[{x,2},{integer,0}]}.
    {test,bs_test_tail2,{f,220},[{x,1},0]}.
    {move,{literal,<<255,255,0,0,0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",519}]}.
    {call,1,{f,33}}. % id/1
    {test,is_eq_exact,{f,219},[{x,0},{literal,<<255,255,0,0,0>>}]}.
    {move,{literal,<<0,0,0,0,0,0,0,0,7,119,127,255,247,119,127,255,247,119,
                     127,255,247,119,127,255,247,119,127,255,247,119,127,255,
                     15:4>>},
          {x,0}}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",523}]}.
    {call,1,{f,33}}. % id/1
    {'try',{y,0},{f,214}}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",527}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2097152},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16777216},1,{field_flags,[]},{integer,0}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,33}}. % id/1
    {try_end,{y,0}}.
    {jump,{f,215}}.
  {label,214}.
    {try_case,{y,0}}.
  {label,215}.
    {'try',{y,0},{f,216}}.
    {line,[{scope,[3,4]},{location,"bs_construct_r24_SUITE.erl",528}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4194304},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,33554432},1,{field_flags,[]},{integer,0}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,33}}. % id/1
    {try_end,{y,0}}.
    {jump,{f,217}}.
  {label,216}.
    {try_case,{y,0}}.
  {label,217}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,218}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",508}]}.
    {badmatch,{x,0}}.
  {label,219}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",519}]}.
    {badmatch,{x,0}}.
  {label,220}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",517}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",516}]}.
    {badmatch,{x,1}}.
  {label,222}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",513}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",512}]}.
    {badmatch,{x,1}}.
  {label,224}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",506}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",504}]}.
    {case_end,{x,0}}.


{function, nonliteral, 1, 227}.
  {label,226}.
    {line,[{location,"bs_construct_r24_SUITE.erl",556}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,nonliteral},1}.
  {label,227}.
    return.


{function, coerce_to_float, 1, 229}.
  {label,228}.
    {line,[{location,"bs_construct_r24_SUITE.erl",558}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,coerce_to_float},1}.
  {label,229}.
    {test,is_list,{f,228},[{x,0}]}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,438},0,0,{y,0},{list,[]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",559}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,434},0,0,{y,0},{list,[]}}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",560}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,2,{string,<<188,0>>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,{f,233},[{x,0},{literal,<<188,0>>}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,4,{string,<<191,128,0,0>>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,{f,233},[{x,0},{literal,<<191,128,0,0>>}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,8},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,8,{string,<<191,240,0,0,0,0,0,0>>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,{f,233},[{x,0},{literal,<<191,240,0,0,0,0,0,0>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,430},0,0,{y,0},{list,[]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",561}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,426},0,0,{y,0},{list,[]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",562}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,422},0,0,{y,0},{list,[]}}.
    {move,{integer,255},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",563}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,418},0,0,{y,0},{list,[]}}.
    {move,{integer,-255},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",564}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,2,{string,<<"Ûø">>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,{f,232},[{x,0},{literal,<<"Ûø">>}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,4,{string,<<195,127,0,0>>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,{f,232},[{x,0},{literal,<<195,127,0,0>>}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,8},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,8,{string,<<192,111,224,0,0,0,0,0>>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,{f,232},[{x,0},{literal,<<192,111,224,0,0,0,0,0>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,414},0,0,{y,0},{list,[]}}.
    {move,{integer,38474},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",565}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,410},0,0,{y,0},{list,[]}}.
    {move,{integer,65504},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",566}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,406},0,0,{y,0},{list,[]}}.
    {move,{integer,-65504},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",567}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,2,{string,<<"ûÿ">>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,{f,231},[{x,0},{literal,<<"ûÿ">>}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,4,{string,<<199,127,224,0>>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,{f,231},[{x,0},{literal,<<199,127,224,0>>}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,8},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,8,{string,<<192,239,252,0,0,0,0,0>>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,{f,231},[{x,0},{literal,<<192,239,252,0,0,0,0,0>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,402},0,0,{y,0},{list,[]}}.
    {move,{integer,387498738948729893849444444443},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",568}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,398},0,0,{y,0},{list,[]}}.
    {move,{integer,-37489378937773899999999999999993},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",569}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,4},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,4,{string,<<243,236,151,92>>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,{f,230},[{x,0},{literal,<<243,236,151,92>>}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,8},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,8,{string,<<198,125,146,235,118,241,149,108>>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,
          {f,230},
          [{x,0},{literal,<<198,125,146,235,118,241,149,108>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,395},0,0,{y,0},{list,[]}}.
    {move,{integer,298748888888888888888888888883478264866528467367364766666666666666663},
          {x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",570}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,392},0,0,{y,0},{list,[]}}.
    {move,{integer,-367546729879999999999947826486652846736736476555566666663},
          {x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",571}]}.
    {call,1,{f,227}}. % nonliteral/1
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_fun,1}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,8},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,8,{string,<<203,173,250,187,219,157,28,243>>}}.
    {move,{x,0},{x,0}}.
    {test,is_eq_exact,
          {f,234},
          [{x,0},{literal,<<203,173,250,187,219,157,28,243>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,230}.
    {line,[{location,"bs_construct_r24_SUITE.erl",569}]}.
    {badmatch,{atom,false}}.
  {label,231}.
    {line,[{location,"bs_construct_r24_SUITE.erl",567}]}.
    {badmatch,{atom,false}}.
  {label,232}.
    {line,[{location,"bs_construct_r24_SUITE.erl",564}]}.
    {badmatch,{atom,false}}.
  {label,233}.
    {line,[{location,"bs_construct_r24_SUITE.erl",560}]}.
    {badmatch,{atom,false}}.
  {label,234}.
    {line,[{location,"bs_construct_r24_SUITE.erl",571}]}.
    {badmatch,{atom,false}}.


{function, side_effect, 1, 236}.
  {label,235}.
    {line,[{location,"bs_construct_r24_SUITE.erl",574}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,side_effect},1}.
  {label,236}.
    {test,is_list,{f,235},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,237}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",575}]}.
    {call,1,{f,243}}. % side_effect_1/1
  {label,237}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,241},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,241},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,241},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,241},[{x,1},{atom,badarg}]}.
    {'catch',{y,0},{f,238}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",576}]}.
    {call,1,{f,243}}. % side_effect_1/1
  {label,238}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,240},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,240},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,240},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,240},[{x,1},{atom,badarg}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",577}]}.
    {call,1,{f,243}}. % side_effect_1/1
    {test,is_eq_exact,{f,239},[{x,0},{atom,ok}]}.
    {deallocate,2}.
    return.
  {label,239}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",576}]}.
    {badmatch,{x,0}}.
  {label,241}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",575}]}.
    {badmatch,{x,0}}.


{function, side_effect_1, 1, 243}.
  {label,242}.
    {line,[{location,"bs_construct_r24_SUITE.erl",580}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,side_effect_1},1}.
  {label,243}.
    {line,[{location,"bs_construct_r24_SUITE.erl",581}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},1],{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,17},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, opt, 1, 245}.
  {label,244}.
    {line,[{location,"bs_construct_r24_SUITE.erl",586}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,opt},1}.
  {label,245}.
    {test,is_list,{f,244},[{x,0}]}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {move,{literal,{otp_7029,<<>>,42}},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",587}]}.
    {call,1,{f,273}}. % otp_7029/1
    {test,is_eq_exact,{f,269},[{x,0},{integer,42}]}.
    {move,{literal,<<1,3,65>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",589}]}.
    {call,1,{f,33}}. % id/1
    {test,is_eq_exact,{f,268},[{x,0},{literal,<<1,3,65>>}]}.
    {move,{literal,<<1,66,3>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",590}]}.
    {call,1,{f,33}}. % id/1
    {test,is_eq_exact,{f,267},[{x,0},{literal,<<1,66,3>>}]}.
    {move,{literal,<<1,65,136,0,0>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",591}]}.
    {call,1,{f,33}}. % id/1
    {test,is_eq_exact,{f,266},[{x,0},{literal,<<1,65,136,0,0>>}]}.
    {move,{literal,<<1,64,8,0,0,0,0,0,0>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",592}]}.
    {call,1,{f,33}}. % id/1
    {test,is_eq_exact,{f,265},[{x,0},{literal,<<1,64,8,0,0,0,0,0,0>>}]}.
    {move,{literal,<<1,0,0,0,0,0,0,8,64>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",593}]}.
    {call,1,{f,33}}. % id/1
    {test,is_eq_exact,{f,264},[{x,0},{literal,<<1,0,0,0,0,0,0,8,64>>}]}.
    {move,{literal,<<0,1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",596}]}.
    {call,1,{f,33}}. % id/1
    {test,is_eq_exact,{f,263},[{x,0},{literal,<<0,1,2,3,4,5>>}]}.
    {move,{literal,<<1,2,3,4,5,19>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",597}]}.
    {call,1,{f,33}}. % id/1
    {test,is_eq_exact,{f,262},[{x,0},{literal,<<1,2,3,4,5,19>>}]}.
    {move,{literal,<<1,2,3,42>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",598}]}.
    {call,1,{f,33}}. % id/1
    {test,is_eq_exact,{f,261},[{x,0},{literal,<<1,2,3,42>>}]}.
    {'catch',{y,5},{f,246}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",600}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,246}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,260},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,260},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,4},{f,247}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_construct_r24_SUITE.erl",601}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,247}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,259},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,259},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,3},{f,248}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",602}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,248}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,258},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,258},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,2},{f,249}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",603}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,249}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,257},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,257},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,1},{f,250}}.
    {line,[{scope,[4]},{location,"bs_construct_r24_SUITE.erl",604}]}.
    {move,{integer,0},{x,0}}.
    {bs_append,{f,0},
               {x,0},
               0,1,8,
               {literal,<<23,56,0,2:7>>},
               {field_flags,[]},
               {x,0}}.
    {move,{x,0},{x,0}}.
  {label,250}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,256},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,256},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,0},{f,251}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",608}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,251}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,255},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,255},[{x,1},{atom,'EXIT'}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",610}]}.
    {call,1,{f,33}}. % id/1
    {select_val,{x,0},
                {f,254},
                {list,[{atom,false},{f,253},{atom,true},{f,252}]}}.
  {label,252}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",611}]}.
    {call,0,{f,271}}. % opt_dont_call_me/0
  {label,253}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,254}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",610}]}.
    {case_end,{x,0}}.
  {label,255}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",608}]}.
    {badmatch,{x,0}}.
  {label,256}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",604}]}.
    {badmatch,{x,0}}.
  {label,257}.
    {line,[{scope,[4]},{location,"bs_construct_r24_SUITE.erl",603}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",602}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",601}]}.
    {badmatch,{x,0}}.
  {label,260}.
    {line,[{scope,"\n"},{location,"bs_construct_r24_SUITE.erl",600}]}.
    {badmatch,{x,0}}.
  {label,261}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",598}]}.
    {badmatch,{x,0}}.
  {label,262}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",597}]}.
    {badmatch,{x,0}}.
  {label,263}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",596}]}.
    {badmatch,{x,0}}.
  {label,264}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",593}]}.
    {badmatch,{x,0}}.
  {label,265}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",592}]}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",591}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",590}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",589}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",587}]}.
    {badmatch,{x,0}}.


{function, opt_dont_call_me, 0, 271}.
  {label,270}.
    {line,[{location,"bs_construct_r24_SUITE.erl",617}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,opt_dont_call_me},0}.
  {label,271}.
    {line,[{location,"bs_construct_r24_SUITE.erl",619}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,38177487},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,305419896},1,{field_flags,[]},{integer,0}}.
    {move,{x,0},{x,0}}.
    return.


{function, otp_7029, 1, 273}.
  {label,272}.
    {line,[{location,"bs_construct_r24_SUITE.erl",621}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,otp_7029},1}.
  {label,273}.
    {test,is_tagged_tuple,{f,275},[{x,0},3,{atom,otp_7029}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,275},[{x,1},{atom,otp_7029}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,275},[{x,2},{literal,<<>>}]}.
    {test,is_eq_exact,{f,274},[{x,1},{atom,otp_7029}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    return.
  {label,274}.
    {line,[{location,"bs_construct_r24_SUITE.erl",623}]}.
    {move,{x,0},{x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badrecord},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,275}.
    {line,[{location,"bs_construct_r24_SUITE.erl",622}]}.
    {badmatch,{x,0}}.


{function, otp_7556, 1, 277}.
  {label,276}.
    {line,[{location,"bs_construct_r24_SUITE.erl",625}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,otp_7556},1}.
  {label,277}.
    {test,is_list,{f,276},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,1023},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",626}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,388}}. % '-otp_7556/1-lc$^0/1-0-'/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, otp_7556, 4, 279}.
  {label,278}.
    {line,[{location,"bs_construct_r24_SUITE.erl",629}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,otp_7556},4}.
  {label,279}.
    {line,[{location,"bs_construct_r24_SUITE.erl",632}]}.
    {move,{integer,0},{x,4}}.
    {gc_bif,'*',{f,0},5,[{integer,16},{x,3}],{x,5}}.
    {bs_add,{f,0},[{x,4},{x,5},1],{x,4}}.
    {gc_bif,'*',{f,0},5,[{integer,16},{x,2}],{x,5}}.
    {bs_add,{f,0},[{x,4},{x,5},1],{x,4}}.
    {gc_bif,'*',{f,0},5,[{integer,16},{x,1}],{x,5}}.
    {bs_add,{f,0},[{x,4},{x,5},1],{x,4}}.
    {bs_append,{f,0},{x,4},0,5,8,{x,0},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{x,1},16,{field_flags,[]},{integer,-1}}.
    {bs_put_integer,{f,0},{x,2},16,{field_flags,[]},{integer,0}}.
    {bs_put_integer,{f,0},{x,3},16,{field_flags,[]},{integer,-1}}.
    {move,{x,4},{x,0}}.
    return.


{function, float_arith, 1, 281}.
  {label,280}.
    {line,[{location,"bs_construct_r24_SUITE.erl",638}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,float_arith},1}.
  {label,281}.
    {test,is_list,{f,280},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,42},{x,1}}.
    {move,{integer,2},{x,2}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",639}]}.
    {call,3,{f,284}}. % do_float_arith/3
    {test,is_eq_exact,
          {f,282},
          [{x,0},{literal,{<<1,2,3,64,69,0,0,0,0,0,0>>,21.0}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,282}.
    {badmatch,{x,0}}.


{function, do_float_arith, 3, 284}.
  {label,283}.
    {line,[{location,"bs_construct_r24_SUITE.erl",643}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,do_float_arith},3}.
  {label,284}.
    {line,[{location,"bs_construct_r24_SUITE.erl",644}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,0},{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,1}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",645}]}.
    {gc_bif,'/',{f,0},3,[{x,1},{x,2}],{x,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.


{function, otp_8054, 1, 286}.
  {label,285}.
    {line,[{location,"bs_construct_r24_SUITE.erl",647}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,otp_8054},1}.
  {label,286}.
    {test,is_list,{f,285},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{literal,[null,1,2,3]},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",648}]}.
    {call,2,{f,289}}. % otp_8054_1/2
    {test,is_eq_exact,{f,287},[{x,0},{literal,<<"abc">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,287}.
    {badmatch,{x,0}}.


{function, otp_8054_1, 2, 289}.
  {label,288}.
    {line,[{location,"bs_construct_r24_SUITE.erl",651}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,otp_8054_1},2}.
  {label,289}.
    {test,is_nonempty_list,{f,291},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,290},[{x,2},{atom,null}]}.
    {line,[{location,"bs_construct_r24_SUITE.erl",657}]}.
    {move,{integer,0},{x,2}}.
    {bs_append,{f,0},{x,2},0,3,8,{x,1},{field_flags,[]},{x,2}}.
    {move,{x,2},{x,2}}.
  {label,290}.
    {call_only,2,{f,289}}. % otp_8054_1/2
  {label,291}.
    {test,is_nil,{f,288},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.


{function, strings, 1, 293}.
  {label,292}.
    {line,[{location,"bs_construct_r24_SUITE.erl",673}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,strings},1}.
  {label,293}.
    {line,[{location,"bs_construct_r24_SUITE.erl",674}]}.
    {gc_bif,length,{f,0},1,[{x,0}],{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",676}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,10},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_string,6,{string,<<0,97,0,98,0,99>>}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {test,bs_start_match3,{f,313},2,[{x,1}],{x,2}}.
    {test,bs_match_string,{f,313},[{x,2},48,{string,<<0,97,0,98,0,99>>}]}.
    {test,bs_get_integer2,
          {f,313},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[676,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,313},[{x,2},0]}.
    {test,is_eq_exact,{f,313},[{x,3},{x,0}]}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",679}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {test,bs_start_match3,{f,312},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,312},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[679,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,312},[{x,2},0]}.
    {test,is_eq_exact,{f,312},[{x,3},{x,0}]}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {test,is_integer,{f,294},[{x,0}]}.
    {test,is_lt,{f,295},[{x,0},{integer,0}]}.
  {label,294}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",680}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,295}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{y,3}}.
    {move,{x,0},{x,0}}.
    {test,bs_start_match3,{f,311},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,311},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[680,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,311},[{x,1},0]}.
    {test,is_eq_exact,{f,311},[{x,2},{y,3}]}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",681}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{y,3}}.
    {move,{x,0},{x,0}}.
    {test,bs_start_match3,{f,310},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,310},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[681,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,310},[{x,1},0]}.
    {test,is_eq_exact,{f,310},[{x,2},{y,3}]}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",683}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{y,3}}.
    {move,{x,0},{x,0}}.
    {test,bs_start_match3,{f,309},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,309},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[683,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,309},[{x,1},0]}.
    {test,is_eq_exact,{f,309},[{x,2},{y,3}]}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",684}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{y,3}}.
    {move,{x,0},{x,0}}.
    {test,bs_start_match3,{f,308},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,308},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[684,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,308},[{x,1},0]}.
    {test,is_eq_exact,{f,308},[{x,2},{y,3}]}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",687}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,348},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{y,3}}.
    {bs_put_string,344,
                   {string,<<"3lz7Q4au2i3DJWNlNhWuzmvA7gYWGXG+LAPtgtlEO2VGSxRqL2WOoHWQxORTQfJw17mNEU8i87UKvEPbo9YY8ppiM7vfaG88TTyfEzgUMTgY3IvsikMBELPz2AayVz5aaMh9PBFTZ4DkBIFxURBUKHho4Vgt7IzYnWNgn3ON5D9VS89TPANK5/PwSUoMQYZ2fk5VLbq7D1ExlnCScvTDnF/WHMQ3m2GUcQWb+ajfOf3bnP7EX4f1Q3d/1Soe6lEpf1KN/5S7A/ugjMhy4+HZuo1J1J6CCwEVZ/wDc79OpDPPj/qOGhDK73F8DaMcynZ91El+01vfTnuUxNFUHLpuoQ==">>}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,33}}. % id/1
    {test,bs_start_match3,{f,307},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,307},
          2,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[688,{file,"bs_construct_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_match_string,
          {f,307},
          [{x,1},
           2752,
           {string,<<"3lz7Q4au2i3DJWNlNhWuzmvA7gYWGXG+LAPtgtlEO2VGSxRqL2WOoHWQxORTQfJw17mNEU8i87UKvEPbo9YY8ppiM7vfaG88TTyfEzgUMTgY3IvsikMBELPz2AayVz5aaMh9PBFTZ4DkBIFxURBUKHho4Vgt7IzYnWNgn3ON5D9VS89TPANK5/PwSUoMQYZ2fk5VLbq7D1ExlnCScvTDnF/WHMQ3m2GUcQWb+ajfOf3bnP7EX4f1Q3d/1Soe6lEpf1KN/5S7A/ugjMhy4+HZuo1J1J6CCwEVZ/wDc79OpDPPj/qOGhDK73F8DaMcynZ91El+01vfTnuUxNFUHLpuoQ==">>}]}.
    {test,bs_test_tail2,{f,307},[{x,1},0]}.
    {test,is_eq_exact,{f,307},[{x,2},{y,3}]}.
    {'catch',{y,3},{f,296}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",691}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,296}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,306},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,306},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,306},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,306},[{x,1},{atom,badarg}]}.
    {'catch',{y,2},{f,297}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",692}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,297}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,305},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,305},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,305},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,305},[{x,1},{atom,badarg}]}.
    {'catch',{y,1},{f,298}}.
    {line,[{scope,[4]},{location,"bs_construct_r24_SUITE.erl",693}]}.
    {call,0,{f,315}}. % bad_empty_string_1/0
  {label,298}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,304},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,304},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,304},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,304},[{x,1},{atom,badarg}]}.
    {'catch',{y,0},{f,299}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",694}]}.
    {call,0,{f,317}}. % bad_empty_string_2/0
  {label,299}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,303},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,303},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,303},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,303},[{x,1},{atom,badarg}]}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",695}]}.
    {call,0,{f,319}}. % bad_empty_string_3/0
    {test,is_eq_exact,{f,302},[{x,0},{atom,error}]}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",696}]}.
    {call,1,{f,321}}. % bad_empty_string_4/1
    {test,is_eq_exact,{f,301},[{x,0},{atom,error}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",697}]}.
    {call,1,{f,321}}. % bad_empty_string_4/1
    {test,is_eq_exact,{f,300},[{x,0},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,300}.
    {badmatch,{x,0}}.
  {label,301}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",696}]}.
    {badmatch,{x,0}}.
  {label,302}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",695}]}.
    {badmatch,{x,0}}.
  {label,303}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",694}]}.
    {badmatch,{x,0}}.
  {label,304}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",693}]}.
    {badmatch,{x,0}}.
  {label,305}.
    {line,[{scope,[4]},{location,"bs_construct_r24_SUITE.erl",692}]}.
    {badmatch,{x,0}}.
  {label,306}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",691}]}.
    {badmatch,{x,0}}.
  {label,307}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",688}]}.
    {badmatch,{x,0}}.
  {label,308}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",684}]}.
    {badmatch,{x,0}}.
  {label,309}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",683}]}.
    {badmatch,{x,0}}.
  {label,310}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",681}]}.
    {badmatch,{x,0}}.
  {label,311}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",680}]}.
    {badmatch,{x,0}}.
  {label,312}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",679}]}.
    {badmatch,{x,1}}.
  {label,313}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",676}]}.
    {badmatch,{x,1}}.


{function, bad_empty_string_1, 0, 315}.
  {label,314}.
    {line,[{location,"bs_construct_r24_SUITE.erl",701}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_empty_string_1},0}.
  {label,315}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",702}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, bad_empty_string_2, 0, 317}.
  {label,316}.
    {line,[{location,"bs_construct_r24_SUITE.erl",705}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_empty_string_2},0}.
  {label,317}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",706}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, bad_empty_string_3, 0, 319}.
  {label,318}.
    {line,[{location,"bs_construct_r24_SUITE.erl",709}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_empty_string_3},0}.
  {label,319}.
    {move,{atom,error},{x,0}}.
    return.


{function, bad_empty_string_4, 1, 321}.
  {label,320}.
    {line,[{location,"bs_construct_r24_SUITE.erl",712}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_empty_string_4},1}.
  {label,321}.
    {move,{integer,0},{x,1}}.
    {bs_utf8_size,{f,322},{integer,78},{x,2}}.
    {bs_add,{f,322},[{x,1},{x,2},8],{x,1}}.
    {bs_utf8_size,{f,322},{integer,70},{x,2}}.
    {bs_add,{f,322},[{x,1},{x,2},8],{x,1}}.
    {bs_utf8_size,{f,322},{integer,101},{x,2}}.
    {bs_add,{f,322},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,322},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,322},{integer,0},1,{field_flags,[]},{integer,0}}.
    {bs_put_utf8,{f,322},{field_flags,[native]},{integer,101}}.
    {bs_put_utf8,{f,322},{field_flags,[native]},{integer,70}}.
    {bs_put_utf8,{f,322},{field_flags,[native]},{integer,78}}.
    {move,{x,1},{x,1}}.
    {test,is_eq_exact,{f,322},[{x,1},{atom,true}]}.
    {test,is_eq_exact,{f,322},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,322}.
    {move,{atom,error},{x,0}}.
    return.


{function, bad_size, 1, 324}.
  {label,323}.
    {line,[{location,"bs_construct_r24_SUITE.erl",715}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_size},1}.
  {label,324}.
    {allocate,9,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {'catch',{y,8},{f,325}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",716}]}.
    {call,0,{f,344}}. % bad_float_size/0
  {label,325}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,342},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,342},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,342},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,342},[{x,1},{atom,badarg}]}.
    {'catch',{y,7},{f,326}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[16]},{location,"bs_construct_r24_SUITE.erl",717}]}.
    {call,1,{f,346}}. % bad_float_size/1
  {label,326}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,341},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,341},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,341},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,341},[{x,1},{atom,badarg}]}.
    {'catch',{y,6},{f,327}}.
    {line,[{scope,[14]},{location,"bs_construct_r24_SUITE.erl",718}]}.
    {call,0,{f,348}}. % bad_integer_size/0
  {label,327}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,340},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,340},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,340},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,340},[{x,1},{atom,badarg}]}.
    {'catch',{y,5},{f,328}}.
    {move,{literal,<<"xyz">>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",719}]}.
    {call,1,{f,350}}. % bad_integer_size/1
  {label,328}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,339},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,339},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,339},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,339},[{x,1},{atom,badarg}]}.
    {'catch',{y,4},{f,329}}.
    {line,[{scope,"\n"},{location,"bs_construct_r24_SUITE.erl",720}]}.
    {call,0,{f,352}}. % bad_integer_size2/0
  {label,329}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,338},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,338},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,338},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,338},[{x,1},{atom,badarg}]}.
    {'catch',{y,3},{f,330}}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",721}]}.
    {call,0,{f,354}}. % bad_binary_size/0
  {label,330}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,337},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,337},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,337},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,337},[{x,1},{atom,badarg}]}.
    {'catch',{y,2},{f,331}}.
    {move,{literal,<<"xyz">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",722}]}.
    {call,1,{f,356}}. % bad_binary_size/1
  {label,331}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,336},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,336},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,336},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,336},[{x,1},{atom,badarg}]}.
    {'catch',{y,1},{f,332}}.
    {line,[{scope,[4]},{location,"bs_construct_r24_SUITE.erl",723}]}.
    {call,0,{f,358}}. % bad_binary_size2/0
  {label,332}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,335},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,335},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,335},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,335},[{x,1},{atom,badarg}]}.
    {'catch',{y,0},{f,333}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",724}]}.
    {call,1,{f,33}}. % id/1
    {call,1,{f,360}}. % bad_binary_size3/1
  {label,333}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,334},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,334},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,334},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,334},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,9}.
    return.
  {label,334}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",724}]}.
    {badmatch,{x,0}}.
  {label,335}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",723}]}.
    {badmatch,{x,0}}.
  {label,336}.
    {line,[{scope,[4]},{location,"bs_construct_r24_SUITE.erl",722}]}.
    {badmatch,{x,0}}.
  {label,337}.
    {line,[{scope,[6]},{location,"bs_construct_r24_SUITE.erl",721}]}.
    {badmatch,{x,0}}.
  {label,338}.
    {line,[{scope,"\b"},{location,"bs_construct_r24_SUITE.erl",720}]}.
    {badmatch,{x,0}}.
  {label,339}.
    {line,[{scope,"\n"},{location,"bs_construct_r24_SUITE.erl",719}]}.
    {badmatch,{x,0}}.
  {label,340}.
    {line,[{scope,"\f"},{location,"bs_construct_r24_SUITE.erl",718}]}.
    {badmatch,{x,0}}.
  {label,341}.
    {line,[{scope,[14]},{location,"bs_construct_r24_SUITE.erl",717}]}.
    {badmatch,{x,0}}.
  {label,342}.
    {line,[{scope,[16]},{location,"bs_construct_r24_SUITE.erl",716}]}.
    {badmatch,{x,0}}.


{function, bad_float_size, 0, 344}.
  {label,343}.
    {line,[{location,"bs_construct_r24_SUITE.erl",727}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_float_size},0}.
  {label,344}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",728}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, bad_float_size, 1, 346}.
  {label,345}.
    {line,[{location,"bs_construct_r24_SUITE.erl",730}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_float_size},1}.
  {label,346}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",731}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, bad_integer_size, 0, 348}.
  {label,347}.
    {line,[{location,"bs_construct_r24_SUITE.erl",733}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_integer_size},0}.
  {label,348}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",734}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, bad_integer_size, 1, 350}.
  {label,349}.
    {line,[{location,"bs_construct_r24_SUITE.erl",736}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_integer_size},1}.
  {label,350}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",737}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, bad_integer_size2, 0, 352}.
  {label,351}.
    {line,[{location,"bs_construct_r24_SUITE.erl",739}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_integer_size2},0}.
  {label,352}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",741}]}.
    {call,1,{f,33}}. % id/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{y,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call,1,{f,385}}. % '-bad_integer_size2/0-lc$^0/1-0-'/1
    {move,{x,0},{y,0}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",742}]}.
    {call,1,{f,33}}. % id/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",740}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,7},1],{x,1}}.
    {bs_add,{f,0},[{x,1},{y,0},1],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{y,0},1,{field_flags,[]},{y,1}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {deallocate,2}.
    return.


{function, bad_binary_size, 0, 354}.
  {label,353}.
    {line,[{location,"bs_construct_r24_SUITE.erl",744}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_binary_size},0}.
  {label,354}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",745}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, bad_binary_size, 1, 356}.
  {label,355}.
    {line,[{location,"bs_construct_r24_SUITE.erl",747}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_binary_size},1}.
  {label,356}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",748}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, bad_binary_size2, 0, 358}.
  {label,357}.
    {line,[{location,"bs_construct_r24_SUITE.erl",750}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_binary_size2},0}.
  {label,358}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",752}]}.
    {call,1,{f,33}}. % id/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{y,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call,1,{f,382}}. % '-bad_binary_size2/0-lc$^0/1-0-'/1
    {move,{x,0},{y,0}}.
    {move,{integer,100},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",753}]}.
    {call,1,{f,33}}. % id/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",751}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,7},1],{x,1}}.
    {bs_add,{f,0},[{x,1},{y,0},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{y,0},8,{field_flags,[]},{y,1}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {deallocate,2}.
    return.


{function, bad_binary_size3, 1, 360}.
  {label,359}.
    {line,[{location,"bs_construct_r24_SUITE.erl",755}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,bad_binary_size3},1}.
  {label,360}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",756}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, private_append, 1, 362}.
  {label,361}.
    {line,[{location,"bs_construct_r24_SUITE.erl",758}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,private_append},1}.
  {label,362}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{<<"alpha">> => <<"alpha">>,<<"beta">> => <<"beta">>}},
          {x,0}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",760}]}.
    {call,1,{f,368}}. % private_append_1/1
    {test,is_eq_exact,
          {f,366},
          [{x,0},{literal,<<"alpha=\"alpha\",beta=\"beta\"">>}]}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",763}]}.
    {call,1,{f,370}}. % private_append_2/1
    {test,is_eq_exact,{f,365},[{x,0},{literal,<<>>}]}.
    {'catch',{y,0},{f,363}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",764}]}.
    {call,1,{f,370}}. % private_append_2/1
  {label,363}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,364},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,364},[{x,1},{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,364}.
    {line,[{scope,[0]},{location,"bs_construct_r24_SUITE.erl",764}]}.
    {badmatch,{x,0}}.
  {label,365}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",763}]}.
    {badmatch,{x,0}}.
  {label,366}.
    {line,[{scope,[2]},{location,"bs_construct_r24_SUITE.erl",759}]}.
    {badmatch,{x,0}}.


{function, private_append_1, 1, 368}.
  {label,367}.
    {line,[{location,"bs_construct_r24_SUITE.erl",770}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,private_append_1},1}.
  {label,368}.
    {test,is_map,{f,367},[{x,0}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,379},0,0,{x,1},{list,[]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{literal,<<>>},{x,1}}.
    {line,[{location,"bs_construct_r24_SUITE.erl",771}]}.
    {call_ext_only,3,{extfunc,maps,fold,3}}.


{function, private_append_2, 1, 370}.
  {label,369}.
    {line,[{location,"bs_construct_r24_SUITE.erl",778}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,private_append_2},1}.
  {label,370}.
    {allocate,0,1}.
    {line,[{location,"bs_construct_r24_SUITE.erl",779}]}.
    {call,1,{f,33}}. % id/1
    {select_val,{x,0},
                {f,372},
                {list,[{atom,false},{f,371},{atom,true},{f,373}]}}.
  {label,371}.
    {move,{literal,<<>>},{x,0}}.
    {jump,{f,373}}.
  {label,372}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,373}.
    {move,{integer,0},{x,1}}.
    {bs_append,{f,0},{x,1},0,2,8,{x,0},{field_flags,[]},{x,1}}.
    {move,{x,1},{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_append,{f,0},{x,1},0,2,8,{x,0},{field_flags,[]},{x,1}}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.


{function, module_info, 0, 375}.
  {label,374}.
    {line,[]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,module_info},0}.
  {label,375}.
    {move,{atom,bs_construct_r24_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 377}.
  {label,376}.
    {line,[]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,module_info},1}.
  {label,377}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_construct_r24_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-private_append_1/1-fun-0-', 3, 379}.
  {label,378}.
    {line,[{location,"bs_construct_r24_SUITE.erl",771}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-private_append_1/1-fun-0-'},
               3}.
  {label,379}.
    {test,is_eq_exact,{f,380},[{x,2},{literal,<<>>}]}.
    {line,[{location,"bs_construct_r24_SUITE.erl",772}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},8],{x,3}}.
    {gc_bif,byte_size,{f,0},4,[{x,1}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {gc_bif,byte_size,{f,0},4,[{x,0}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,2},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {bs_put_string,2,{string,<<"=\"">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,1}}.
    {bs_put_string,1,{string,<<"\"">>}}.
    {move,{x,3},{x,0}}.
    return.
  {label,380}.
    {line,[{location,"bs_construct_r24_SUITE.erl",774}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {gc_bif,byte_size,{f,0},4,[{x,1}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {gc_bif,byte_size,{f,0},4,[{x,0}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},0,4,8,{x,2},{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<",">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {bs_put_string,2,{string,<<"=\"">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,1}}.
    {bs_put_string,1,{string,<<"\"">>}}.
    {move,{x,3},{x,0}}.
    return.


{function, '-bad_binary_size2/0-lc$^0/1-0-', 1, 382}.
  {label,381}.
    {line,[{location,"bs_construct_r24_SUITE.erl",752}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-bad_binary_size2/0-lc$^0/1-0-'},
               1}.
  {label,382}.
    {test,bs_start_match3,{f,383},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,383}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_integer_size2/0-lc$^0/1-0-', 1, 385}.
  {label,384}.
    {line,[{location,"bs_construct_r24_SUITE.erl",741}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-bad_integer_size2/0-lc$^0/1-0-'},
               1}.
  {label,385}.
    {test,bs_start_match3,{f,386},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,386}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-otp_7556/1-lc$^0/1-0-', 1, 388}.
  {label,387}.
    {line,[{location,"bs_construct_r24_SUITE.erl",626}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-otp_7556/1-lc$^0/1-0-'},
               1}.
  {label,388}.
    {test,is_nonempty_list,{f,389},[{x,0}]}.
    {allocate,1,1}.
    {get_tl,{x,0},{y,0}}.
    {move,{integer,1024},{x,2}}.
    {move,{integer,1024},{x,1}}.
    {move,{integer,1024},{x,3}}.
    {move,{literal,<<>>},{x,0}}.
    {call,4,{f,279}}. % otp_7556/4
    {move,{y,0},{x,0}}.
    {call_last,1,{f,388},1}. % '-otp_7556/1-lc$^0/1-0-'/1
  {label,389}.
    {test,is_nil,{f,390},[{x,0}]}.
    return.
  {label,390}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coerce_to_float/1-fun-12-', 1, 392}.
  {label,391}.
    {line,[{location,"bs_construct_r24_SUITE.erl",571}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-12-'},
               1}.
  {label,392}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,8},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,8},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,2},{x,0}}.
    {bif,'=:=',{f,0},[{x,1},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,393},[{x,0},{atom,true}]}.
    return.
  {label,393}.
    {badmatch,{x,0}}.


{function, '-coerce_to_float/1-fun-11-', 1, 395}.
  {label,394}.
    {line,[{location,"bs_construct_r24_SUITE.erl",570}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-11-'},
               1}.
  {label,395}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,8},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,8},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,2},{x,0}}.
    {bif,'=:=',{f,0},[{x,1},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,396},[{x,0},{atom,true}]}.
    return.
  {label,396}.
    {badmatch,{x,0}}.


{function, '-coerce_to_float/1-fun-10-', 1, 398}.
  {label,397}.
    {line,[{location,"bs_construct_r24_SUITE.erl",569}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-10-'},
               1}.
  {label,398}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,400},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,399},[{x,0},{atom,true}]}.
    return.
  {label,399}.
    {badmatch,{x,0}}.
  {label,400}.
    {badmatch,{atom,false}}.


{function, '-coerce_to_float/1-fun-9-', 1, 402}.
  {label,401}.
    {line,[{location,"bs_construct_r24_SUITE.erl",568}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-9-'},
               1}.
  {label,402}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,404},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,403},[{x,0},{atom,true}]}.
    return.
  {label,403}.
    {badmatch,{x,0}}.
  {label,404}.
    {badmatch,{atom,false}}.


{function, '-coerce_to_float/1-fun-8-', 1, 406}.
  {label,405}.
    {line,[{location,"bs_construct_r24_SUITE.erl",567}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-8-'},
               1}.
  {label,406}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,407},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,407},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,408},[{x,0},{atom,true}]}.
    return.
  {label,407}.
    {badmatch,{atom,false}}.
  {label,408}.
    {badmatch,{x,0}}.


{function, '-coerce_to_float/1-fun-7-', 1, 410}.
  {label,409}.
    {line,[{location,"bs_construct_r24_SUITE.erl",566}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-7-'},
               1}.
  {label,410}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,411},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,411},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,412},[{x,0},{atom,true}]}.
    return.
  {label,411}.
    {badmatch,{atom,false}}.
  {label,412}.
    {badmatch,{x,0}}.


{function, '-coerce_to_float/1-fun-6-', 1, 414}.
  {label,413}.
    {line,[{location,"bs_construct_r24_SUITE.erl",565}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-6-'},
               1}.
  {label,414}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,415},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,415},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,416},[{x,0},{atom,true}]}.
    return.
  {label,415}.
    {badmatch,{atom,false}}.
  {label,416}.
    {badmatch,{x,0}}.


{function, '-coerce_to_float/1-fun-5-', 1, 418}.
  {label,417}.
    {line,[{location,"bs_construct_r24_SUITE.erl",564}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-5-'},
               1}.
  {label,418}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,419},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,419},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,420},[{x,0},{atom,true}]}.
    return.
  {label,419}.
    {badmatch,{atom,false}}.
  {label,420}.
    {badmatch,{x,0}}.


{function, '-coerce_to_float/1-fun-4-', 1, 422}.
  {label,421}.
    {line,[{location,"bs_construct_r24_SUITE.erl",563}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-4-'},
               1}.
  {label,422}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,423},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,423},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,424},[{x,0},{atom,true}]}.
    return.
  {label,423}.
    {badmatch,{atom,false}}.
  {label,424}.
    {badmatch,{x,0}}.


{function, '-coerce_to_float/1-fun-3-', 1, 426}.
  {label,425}.
    {line,[{location,"bs_construct_r24_SUITE.erl",562}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-3-'},
               1}.
  {label,426}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,427},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,427},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,428},[{x,0},{atom,true}]}.
    return.
  {label,427}.
    {badmatch,{atom,false}}.
  {label,428}.
    {badmatch,{x,0}}.


{function, '-coerce_to_float/1-fun-2-', 1, 430}.
  {label,429}.
    {line,[{location,"bs_construct_r24_SUITE.erl",561}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-2-'},
               1}.
  {label,430}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,431},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,431},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,432},[{x,0},{atom,true}]}.
    return.
  {label,431}.
    {badmatch,{atom,false}}.
  {label,432}.
    {badmatch,{x,0}}.


{function, '-coerce_to_float/1-fun-1-', 1, 434}.
  {label,433}.
    {line,[{location,"bs_construct_r24_SUITE.erl",560}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-1-'},
               1}.
  {label,434}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,435},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,435},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,436},[{x,0},{atom,true}]}.
    return.
  {label,435}.
    {badmatch,{atom,false}}.
  {label,436}.
    {badmatch,{x,0}}.


{function, '-coerce_to_float/1-fun-0-', 1, 438}.
  {label,437}.
    {line,[{location,"bs_construct_r24_SUITE.erl",559}]}.
    {func_info,{atom,bs_construct_r24_SUITE},
               {atom,'-coerce_to_float/1-fun-0-'},
               1}.
  {label,438}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {gc_bif,float,{f,0},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,439},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,3}}.
    {test,is_eq_exact,{f,439},[{x,1},{x,3}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,440},[{x,0},{atom,true}]}.
    return.
  {label,439}.
    {badmatch,{atom,false}}.
  {label,440}.
    {badmatch,{x,0}}.


{function, '-fail/1-lc$^1/1-1-', 2, 442}.
  {label,441}.
    {line,[{location,"bs_construct_r24_SUITE.erl",344}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,'-fail/1-lc$^1/1-1-'},2}.
  {label,442}.
    {test,is_nonempty_list,{f,444},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_tuple,{f,443},[{x,2}]}.
    {test,test_arity,{f,443},[{x,2},1]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,443},[{x,3},{integer,4},8],{x,3}}.
    {bs_init_bits,{f,443},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,443},{integer,4},8,{field_flags,[]},{x,1}}.
    {move,{x,3},{x,3}}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {test,is_eq,{f,443},[{x,2},{x,3}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,442}}. % '-fail/1-lc$^1/1-1-'/2
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,443}.
    {call_only,2,{f,442}}. % '-fail/1-lc$^1/1-1-'/2
  {label,444}.
    {test,is_nil,{f,445},[{x,0}]}.
    return.
  {label,445}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-fail/1-lc$^0/1-0-', 3, 447}.
  {label,446}.
    {line,[{location,"bs_construct_r24_SUITE.erl",343}]}.
    {func_info,{atom,bs_construct_r24_SUITE},{atom,'-fail/1-lc$^0/1-0-'},3}.
  {label,447}.
    {test,is_nonempty_list,{f,449},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {test,is_tuple,{f,448},[{x,3}]}.
    {test,test_arity,{f,448},[{x,3},1]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,448},[{x,4},{x,1},8],{x,4}}.
    {bs_init_bits,{f,448},{x,4},0,5,{field_flags,[]},{x,4}}.
    {bs_put_binary,{f,448},{x,1},8,{field_flags,[]},{x,2}}.
    {move,{x,4},{x,4}}.
    {get_tuple_element,{x,3},0,{x,3}}.
    {test,is_eq,{f,448},[{x,3},{x,4}]}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,3,{f,447}}. % '-fail/1-lc$^0/1-0-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,448}.
    {call_only,3,{f,447}}. % '-fail/1-lc$^0/1-0-'/3
  {label,449}.
    {test,is_nil,{f,450},[{x,0}]}.
    return.
  {label,450}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
