{module, bs_bincomp_r25_SUITE}.  %% version = 0

{exports, [{all,0},
           {bit_aligned,1},
           {byte_aligned,1},
           {end_per_group,2},
           {end_per_suite,1},
           {extended_bit_aligned,1},
           {extended_byte_aligned,1},
           {filters,1},
           {general_expressions,1},
           {grab_bag,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {mixed,1},
           {module_info,0},
           {module_info,1},
           {multiple_segments,1},
           {no_generator,1},
           {nomatch,1},
           {sizes,1},
           {suite,0},
           {trim_coverage,1},
           {verify_highest_opcode,1},
           {zero_pattern,1}]}.

{attributes, []}.

{labels, 796}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",36}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",38}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[verify_highest_opcode,byte_aligned,bit_aligned,
                    extended_byte_aligned,extended_bit_aligned,mixed,filters,
                    trim_coverage,nomatch,sizes,general_expressions,
                    no_generator,zero_pattern,multiple_segments,grab_bag]},
          {x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",46}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,groups},0}.
  {label,6}.
    {move,nil,{x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",49}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_bincomp_r25_SUITE},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",50}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",53}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",56}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",59}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 16}.
  {label,15}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",62}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,verify_highest_opcode},1}.
  {label,16}.
    {move,{atom,ok},{x,0}}.
    return.


{function, byte_aligned, 1, 18}.
  {label,17}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",84}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,byte_aligned},1}.
  {label,18}.
    {test,is_list,{f,17},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",85}]}.
    {call,0,{f,300}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",86}]}.
    {call,2,{f,794}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abcdefg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABC">>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",87}]}.
    {call,2,{f,791}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,21},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"AxyzBxyzCxyz">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,1,0,0,0,2,0,0,0,3,0,0,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",89}]}.
    {call,2,{f,788}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,20},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,20},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",91}]}.
    {call,2,{f,785}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,19},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,19},[{x,1},0]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",90}]}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,0,{f,302},0}. % cs_end/0
  {label,19}.
    {badmatch,{x,0}}.
  {label,20}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",88}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",87}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",86}]}.
    {badmatch,{x,0}}.


{function, bit_aligned, 1, 24}.
  {label,23}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",94}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,bit_aligned},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",95}]}.
    {call,0,{f,300}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",97}]}.
    {call,2,{f,782}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,28},
          [{x,1},49,{string,<<195,139,30,76,185,179,128>>}]}.
    {test,bs_test_tail2,{f,28},[{x,1},0]}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",98}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,778}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,27},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"ABCDEFG">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,2,0,0,0,8,0,0,0,24,0,0,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",100}]}.
    {call,2,{f,775}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,26},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,26},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",102}]}.
    {call,2,{f,772}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,25},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,25},[{x,1},0]}.
    {call_last,0,{f,302},1}. % cs_end/0
  {label,25}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",101}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",98}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",96}]}.
    {badmatch,{x,0}}.


{function, extended_byte_aligned, 1, 30}.
  {label,29}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",105}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,extended_byte_aligned},1}.
  {label,30}.
    {test,is_list,{f,29},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",106}]}.
    {call,0,{f,300}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",107}]}.
    {call,2,{f,769}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,34},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abcdefg">>}]}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",108}]}.
    {call,1,{f,766}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{32,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,33},
          [{tr,{x,0},{t_list,{t_integer,{32,'+inf'}},nil}},
           {literal,"abcdefg"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",110}]}.
    {call,2,{f,763}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,32},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,32},[{x,1},0]}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",112}]}.
    {call,1,{f,760}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,65535}},nil}}]}}.
    {test,is_eq_exact,
          {f,31},
          [{tr,{x,0},{t_list,{t_integer,{0,65535}},nil}},
           {literal,[256,512,768,1024]}]}.
    {call_last,0,{f,302},0}. % cs_end/0
  {label,31}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",111}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",108}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",107}]}.
    {badmatch,{x,0}}.


{function, extended_bit_aligned, 1, 36}.
  {label,35}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",115}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,extended_bit_aligned},1}.
  {label,36}.
    {test,is_list,{f,35},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",116}]}.
    {call,0,{f,300}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",118}]}.
    {call,2,{f,757}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,40},
          [{x,1},49,{string,<<195,139,30,76,185,179,128>>}]}.
    {test,bs_test_tail2,{f,40},[{x,1},0]}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",119}]}.
    {call,1,{f,754}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{'-inf',95}},nil}}]}}.
    {test,is_eq_exact,
          {f,39},
          [{tr,{x,0},{t_list,{t_integer,{'-inf',95}},nil}},
           {literal,"ABCDEFG"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",121}]}.
    {call,2,{f,751}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,38},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,38},[{x,1},0]}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",123}]}.
    {call,1,{f,748}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,32767}},nil}}]}}.
    {test,is_eq_exact,
          {f,37},
          [{tr,{x,0},{t_list,{t_integer,{0,32767}},nil}},
           {literal,[256,512,768,1024]}]}.
    {call_last,0,{f,302},0}. % cs_end/0
  {label,37}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",117}]}.
    {badmatch,{x,0}}.


{function, mixed, 1, 42}.
  {label,41}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",126}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,mixed},1}.
  {label,42}.
    {test,is_list,{f,41},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",127}]}.
    {call,0,{f,300}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",129}]}.
    {call,2,{f,742}}. % '-mixed/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",131}]}.
    {call,2,{f,736}}. % '-mixed/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,70},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",133}]}.
    {call,2,{f,730}}. % '-mixed/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,69},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",134}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",135}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,2}}.
    {gc_bif,length,{f,43},0,[{y,3}],{x,0}}.
    {gc_bif,length,{f,43},1,[{y,2}],{x,1}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_integer,{0,288230376151711743}}}],
            {x,0}}.
    {jump,{f,44}}.
  {label,43}.
    {move,{integer,256},{x,0}}.
  {label,44}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",137}]}.
    {call,3,{f,722}}. % '-mixed/1-lbc$^6/2-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,68},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",139}]}.
    {call,1,{f,716}}. % '-mixed/1-lc$^8/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,67},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",141}]}.
    {call,1,{f,710}}. % '-mixed/1-lc$^10/1-10-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,66},
          [{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",143}]}.
    {call,2,{f,704}}. % '-mixed/1-lbc$^12/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,65},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,65},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",146}]}.
    {call,2,{f,698}}. % '-mixed/1-lbc$^14/2-14-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,64},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,64},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",148}]}.
    {call,2,{f,692}}. % '-mixed/1-lbc$^16/2-16-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,63},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,63},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[{1,1},{1,2},{2,1},{2,2},{3,1},{3,2},{4,1},{4,2}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",150}]}.
    {call,2,{f,689}}. % '-mixed/1-lbc$^18/2-18-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,62},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,62},[{x,1},0]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",153}]}.
    {call,1,{f,683}}. % '-mixed/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,61},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",155}]}.
    {call,1,{f,677}}. % '-mixed/1-lc$^21/1-21-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,60},
          [{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",158}]}.
    {call,1,{f,73}}. % mixed_nested/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,59},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2,0,3,99>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[1]]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",160}]}.
    {call,2,{f,671}}. % '-mixed/1-lbc$^23/2-23-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,58},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",164}]}.
    {call,1,{f,309}}. % id/1
    {move,{literal,<<"*Ký">>},{x,1}}.
    {call,2,{f,75}}. % mixed_size/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,57},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,42,0,0,0,75,0,0,0,253,0,0,42,75>>}]}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",166}]}.
    {call,1,{f,77}}. % silly_lc_bc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",168}]}.
    {call,1,{f,88}}. % gen_data/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{integer,256},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",169}]}.
    {call,1,{f,88}}. % gen_data/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{integer,512},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",170}]}.
    {call,1,{f,88}}. % gen_data/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",172}]}.
    {call,1,{f,93}}. % match_context_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,56},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{literal,<<4,5,6>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",173}]}.
    {call,1,{f,95}}. % match_context_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,55},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<4,5,6>>}]}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",175}]}.
    {call,0,{f,99}}. % over_complex_generator/0
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,54},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<"ÿ">>}]}.
    {'catch',{y,3},{f,45}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",176}]}.
    {call,0,{f,101}}. % float_segment_size/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,45}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,53},[{x,0},2,{atom,'EXIT'}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_bincomp_r25_SUITE.erl",178}]}.
    {call,1,{f,103}}. % inconsistent_types_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,52},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {'catch',{y,2},{f,46}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_r25_SUITE.erl",179}]}.
    {call,1,{f,103}}. % inconsistent_types_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,46}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,51},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,51},[{x,1}]}.
    {test,test_arity,{f,51},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,51},[{x,1},{literal,{bad_generator,42}}]}.
    {bif,self,{f,0},[],{y,3}}.
    {'catch',{y,1},{f,47}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[4]},{location,"bs_bincomp_r25_SUITE.erl",181}]}.
    {call,1,{f,103}}. % inconsistent_types_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,47}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,50},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,50},[{x,1}]}.
    {test,test_arity,{f,50},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,50},[{x,1},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,50},[{x,1},{tr,{y,3},pid}]}.
    {'catch',{y,0},{f,48}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",183}]}.
    {call,0,{f,105}}. % inconsistent_types_2/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,48}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,49},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,49},[{x,1}]}.
    {test,test_arity,{f,49},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,49},[{x,1},{literal,{bad_filter,<<>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",188}]}.
    {call,1,{f,309}}. % id/1
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",186}]}.
    {call,1,{f,663}}. % '-mixed/1-fun-26-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {call_last,0,{f,302},4}. % cs_end/0
  {label,49}.
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",183}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{scope,[4]},{location,"bs_bincomp_r25_SUITE.erl",179}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[6]},{location,"bs_bincomp_r25_SUITE.erl",178}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[6]},{location,"bs_bincomp_r25_SUITE.erl",176}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",175}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",173}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",172}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",160}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",158}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",154}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",152}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",149}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",147}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",145}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",140}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",138}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",136}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",130}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",128}]}.
    {badmatch,{x,0}}.


{function, mixed_nested, 1, 73}.
  {label,72}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",193}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,mixed_nested},1}.
  {label,73}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {line,[]}.
    {gc_bif,length,{f,0},0,[{tr,{y,1},{t_cons,{t_integer,{1,3}},nil}}],{x,0}}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{1,288230376151711743}}},{integer,2}],
            {x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",194}]}.
    {call,2,{f,660}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {y,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,0},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {tr,{x,0},{t_bitstring,16,true}},
                          {atom,all}]}}.
    {'%',{var_info,{y,1},[{type,{t_bitstring,16,true}}]}}.
    {trim,1,1}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,309}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,private_append},
                          1,8,nil,
                          {tr,{y,0},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {integer,99},
                          {x,0}]}}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {deallocate,1}.
    return.


{function, mixed_size, 2, 75}.
  {label,74}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",196}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,mixed_size},2}.
  {label,75}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,653},2}. % '-mixed_size/2-lbc$^0/2-0-'/3


{function, silly_lc_bc, 1, 77}.
  {label,76}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",199}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,silly_lc_bc},1}.
  {label,77}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',5}}}]}}.
    {test,is_ge,{f,78},[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,1}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",200}]}.
    {call,1,{f,85}}. % silly_lc/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_cons,
          {t_union,none,
           {t_cons,
            {t_union,none,
             {t_cons,
              {t_union,none,{t_cons,any,any},{t_integer,{0,4}},none,none},
              nil},
             {t_integer,{0,4}},
             none,none},
            nil},
           {t_integer,{0,4}},
           none,none},
          nil},
         nil}}]}}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",201}]}.
    {call,1,{f,82}}. % silly_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,80},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",202}]}.
    {gc_bif,byte_size,{f,0},0,[{tr,{y,0},{t_bitstring,8,false}}],{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",203}]}.
    {gc_bif,'bsl',{f,0},1,[{integer,5},{tr,{y,1},{t_integer,{1,5}}}],{x,1}}.
    {test,is_eq_exact,
          {f,79},
          [{tr,{x,1},{t_integer,{10,160}}},
           {tr,{x,0},{t_integer,{0,288230376151711743}}}]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",204}]}.
    {gc_bif,'-',{f,0},0,[{tr,{y,1},{t_integer,{1,5}}},{integer,1}],{x,0}}.
    {call_last,1,{f,77},2}. % silly_lc_bc/1
  {label,78}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,79}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",203}]}.
    {badmatch,{x,1}}.
  {label,80}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",201}]}.
    {badmatch,{x,0}}.


{function, silly_bc, 1, 82}.
  {label,81}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",207}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,silly_bc},1}.
  {label,82}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',5}}}]}}.
    {test,is_eq_exact,{f,83},[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,0}]}.
    {move,{literal,<<0,1,2,3,4>>},{x,0}}.
    return.
  {label,83}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",210}]}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,1}],{x,0}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,82}}. % silly_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,650},1}. % '-silly_bc/1-lbc$^0/2-0-'/2


{function, silly_lc, 1, 85}.
  {label,84}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",212}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,silly_lc},1}.
  {label,85}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',5}}}]}}.
    {test,is_eq_exact,{f,86},[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,0}]}.
    {move,{literal,[0,1,2,3,4]},{x,0}}.
    return.
  {label,86}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",215}]}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,1}],{x,0}}.
    {allocate,0,1}.
    {call,1,{f,85}}. % silly_lc/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_union,none,
          {t_cons,
           {t_union,none,
            {t_cons,
             {t_union,none,
              {t_cons,
               {t_union,none,{t_cons,any,any},{t_integer,{0,4}},none,none},
               nil},
              {t_integer,{0,4}},
              none,none},
             nil},
            {t_integer,{0,4}},
            none,none},
           nil},
          {t_integer,{0,4}},
          none,none},
         nil}}]}}.
    {call_last,1,{f,647},0}. % '-silly_lc/1-lc$^0/1-0-'/1


{function, gen_data, 1, 88}.
  {label,87}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",217}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,gen_data},1}.
  {label,88}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,512}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",218}]}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{0,512}}},{integer,1}],{x,1}}.
    {move,{integer,0},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,89},1,[{x,0}],{x,0}}.
    {jump,{f,90}}.
  {label,89}.
    {move,{integer,256},{x,0}}.
  {label,90}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,643}}. % '-gen_data/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",219}]}.
    {gc_bif,'div',
            {f,0},
            1,
            [{tr,{y,1},{t_integer,{0,512}}},{integer,256}],
            {x,1}}.
    {move,{x,0},{y,1}}.
    {move,{integer,1},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,2,{f,635}}. % '-gen_data/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,91},
          [{tr,{x,0},{t_bitstring,8,true}},{tr,{y,0},{t_bitstring,1,true}}]}.
    {deallocate,1}.
    return.
  {label,91}.
    {badmatch,{x,0}}.


{function, match_context_1, 1, 93}.
  {label,92}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",222}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,match_context_1},1}.
  {label,93}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,632},1}. % '-match_context_1/1-lbc$^0/2-0-'/2


{function, match_context_2, 1, 95}.
  {label,94}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",225}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,match_context_2},1}.
  {label,95}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call_only,1,{f,97}}. % do_match_context_2/1


{function, do_match_context_2, 1, 97}.
  {label,96}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",228}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,do_match_context_2},1}.
  {label,97}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,629},1}. % '-do_match_context_2/1-lbc$^0/2-0-'/2


{function, over_complex_generator, 0, 99}.
  {label,98}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",232}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,over_complex_generator},0}.
  {label,99}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0:2>>},{x,0}}.
    {call_last,2,{f,622},0}. % '-over_complex_generator/0-lbc$^0/2-0-'/2


{function, float_segment_size, 0, 101}.
  {label,100}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",247}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,float_segment_size},0}.
  {label,101}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{float,0.79},{x,2}}.
    {move,{integer,42},{x,0}}.
    {call_last,3,{f,620},0}. % '-float_segment_size/0-lbc$^0/2-0-'/3


{function, inconsistent_types_1, 1, 103}.
  {label,102}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",263}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,inconsistent_types_1},1}.
  {label,103}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,617},1}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3


{function, inconsistent_types_2, 0, 105}.
  {label,104}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",278}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,inconsistent_types_2},0}.
  {label,105}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",280}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",282}]}.
    {call,3,{f,613}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",280}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.


{function, filters, 1, 107}.
  {label,106}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",290}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,filters},1}.
  {label,107}.
    {test,is_list,{f,106},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",291}]}.
    {call,0,{f,300}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",293}]}.
    {call,2,{f,609}}. % '-filters/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,116},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"BDF">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",296}]}.
    {call,2,{f,604}}. % '-filters/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,115},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",299}]}.
    {call,2,{f,599}}. % '-filters/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,114},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"efg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",302}]}.
    {call,2,{f,594}}. % '-filters/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,113},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"b">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",306}]}.
    {call,2,{f,589}}. % '-filters/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,112},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"eg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[],[a],[],[x,y,z]]},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",310}]}.
    {call,2,{f,585}}. % '-filters/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,111},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<"M">>,<<1,2>>,<<"*">>]},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",316}]}.
    {call,2,{f,581}}. % '-filters/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,110},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"M*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<97,98,227,100,229,0:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",319}]}.
    {call,2,{f,577}}. % '-filters/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,109},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abd">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,42,43,42]},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",323}]}.
    {call,2,{f,573}}. % '-filters/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,108},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"**">>}]}.
    {call_last,0,{f,302},0}. % cs_end/0
  {label,108}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",319}]}.
    {badmatch,{x,0}}.
  {label,110}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",316}]}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",306}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",299}]}.
    {badmatch,{x,0}}.
  {label,115}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",296}]}.
    {badmatch,{x,0}}.
  {label,116}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",292}]}.
    {badmatch,{x,0}}.


{function, is_less_than, 2, 118}.
  {label,117}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",326}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,is_less_than},2}.
  {label,118}.
    {'%',{var_info,{x,0},[{type,{t_integer,{65,71}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{68,69}}}]}}.
    {bif,'<',
         {f,0},
         [{tr,{x,0},{t_integer,{65,71}}},{tr,{x,1},{t_integer,{68,69}}}],
         {x,0}}.
    return.


{function, trim_coverage, 1, 120}.
  {label,119}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",329}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,trim_coverage},1}.
  {label,120}.
    {test,is_list,{f,119},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,b},{x,1}}.
    {move,{literal,{1328,777134}},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",330}]}.
    {call,3,{f,126}}. % coverage_materialiv/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,124},
          [{tr,{x,0},{t_bitstring,32,false}},
           {literal,<<0,0,0,2,0,0,5,48,0,11,219,174,0,0,0,0>>}]}.
    {move,{literal,[42,19,777]},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",331}]}.
    {call,1,{f,132}}. % coverage_trimmer/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,123},
          [{tr,{x,0},{t_bitstring,32,true}},
           {literal,<<67,40,0,0,66,152,0,0,69,66,64,0>>}]}.
    {move,{integer,777},{x,1}}.
    {move,{literal,{3.0,40.0,-3555.0}},{x,2}}.
    {move,{integer,555},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",334}]}.
    {call,3,{f,130}}. % coverage_lightfv/3
    {test,is_eq_exact,
          {f,122},
          [{x,0},
           {literal,<<0,0,2,43,0,0,3,9,0,0,0,3,64,8,0,0,0,0,0,0,64,68,0,0,0,
                      0,0,0,192,171,198,0,0,0,0,0>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",335}]}.
    {call,2,{f,136}}. % coverage_strange/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,121},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<"abcabc">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,121}.
    {badmatch,{x,0}}.
  {label,122}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",332}]}.
    {badmatch,{x,0}}.
  {label,123}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",331}]}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",330}]}.
    {badmatch,{x,0}}.


{function, coverage_materialiv, 3, 126}.
  {label,125}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",338}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,coverage_materialiv},3}.
  {label,126}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[b]}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1328,1328}},
                                     2 => {t_integer,{777134,777134}}}}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",339}]}.
    {call,1,{f,309}}. % id/1
    {test,is_eq_exact,{f,128},[{x,0},{atom,a}]}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",340}]}.
    {call,1,{f,309}}. % id/1
    {test,is_eq_exact,{f,127},[{x,0},{atom,b}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1328,777134]},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",342}]}.
    {call,2,{f,570}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",341}]}.
    {bs_create_bin,{f,0},
                   0,1,32,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<0,0,0,2>>},
                          {integer,4},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<0,0,0,0>>},
                          {integer,4}]}}.
    {deallocate,0}.
    return.
  {label,127}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,128}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",339}]}.
    {badmatch,{x,0}}.


{function, coverage_lightfv, 3, 130}.
  {label,129}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",345}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,coverage_lightfv},3}.
  {label,130}.
    {'%',{var_info,{x,0},[{type,{t_integer,{555,555}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{777,777}}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_float,{3.0,3.0}},
                                     2 => {t_float,{40.0,40.0}},
                                     3 => {t_float,{-3555.0,-3555.0}}}}}]}}.
    {allocate,0,0}.
    {move,{integer,24},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[3.0,40.0,-3555.0]},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",347}]}.
    {call,2,{f,567}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",346}]}.
    {bs_create_bin,{f,0},
                   0,1,32,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<0,0,2,43,0,0,3,9,0,0,0,3>>},
                          {integer,12},
                          {atom,binary},
                          4,8,nil,
                          {tr,{x,0},{t_bitstring,64,true}},
                          {atom,all},
                          {atom,integer},
                          5,1,nil,
                          {integer,0},
                          {integer,0}]}}.
    {call_last,1,{f,309},0}. % id/1


{function, coverage_trimmer, 1, 132}.
  {label,131}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",350}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,coverage_trimmer},1}.
  {label,132}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{19,777}},nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",351}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",352}]}.
    {call,1,{f,309}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",353}]}.
    {call,1,{f,309}}. % id/1
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,563},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2


{function, coverage_summer, 4, 134}.
  {label,133}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",358}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,coverage_summer},4}.
  {label,134}.
    {'%',{var_info,{x,2},[{type,{t_integer,{19,777}}}]}}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,0},{t_number,any}},{tr,{x,2},{t_integer,{19,777}}}],
            {x,0}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,0},{t_number,any}},{x,3}],{x,0}}.
    return.


{function, coverage_strange, 2, 136}.
  {label,135}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",360}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,coverage_strange},2}.
  {label,136}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",362}]}.
    {call,2,{f,560}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",363}]}.
    {call,2,{f,557}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",361}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,0},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,8,true}},
                          {integer,3}]}}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {deallocate,1}.
    return.


{function, nomatch, 1, 138}.
  {label,137}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",374}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,nomatch},1}.
  {label,138}.
    {test,is_list,{f,137},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",375}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",376}]}.
    {call,2,{f,554}}. % '-nomatch/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,150},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",377}]}.
    {call,1,{f,552}}. % '-nomatch/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",378}]}.
    {call,1,{f,549}}. % '-nomatch/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",379}]}.
    {call,2,{f,547}}. % '-nomatch/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,149},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",380}]}.
    {call,2,{f,544}}. % '-nomatch/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,148},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",382}]}.
    {call,2,{f,540}}. % '-nomatch/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,147},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",385}]}.
    {call,2,{f,537}}. % '-nomatch/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,146},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",387}]}.
    {call,2,{f,152}}. % nomatch_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,145},
          [{tr,{x,0},{t_bitstring,32,true}},
           {literal,<<0,0,0,1,0,0,0,2,0,0,0,3>>}]}.
    {move,{atom,bad},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",388}]}.
    {call,2,{f,152}}. % nomatch_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,144},
          [{tr,{x,0},{t_bitstring,32,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",390}]}.
    {call,2,{f,534}}. % '-nomatch/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,143},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",395}]}.
    {call,2,{f,532}}. % '-nomatch/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,309}}. % id/1
    {test,is_eq_exact,{f,142},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",396}]}.
    {call,2,{f,530}}. % '-nomatch/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,309}}. % id/1
    {test,is_eq_exact,{f,141},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,139}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",398}]}.
    {call,2,{f,528}}. % '-nomatch/1-lbc$^12/2-12-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,139}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,140},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,140},[{x,1}]}.
    {test,test_arity,{f,140},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,140},[{x,1},{literal,{bad_generator,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,140}.
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",398}]}.
    {badmatch,{x,0}}.
  {label,141}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",396}]}.
    {badmatch,{x,0}}.
  {label,142}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",395}]}.
    {badmatch,{x,0}}.
  {label,143}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,144}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,145}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",387}]}.
    {badmatch,{x,0}}.
  {label,146}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",385}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",382}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",380}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",379}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",376}]}.
    {badmatch,{x,0}}.


{function, nomatch_1, 2, 152}.
  {label,151}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",402}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,nomatch_1},2}.
  {label,152}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[bad]},
                                   none,
                                   {t_integer,{8,8}},
                                   none,none}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,525},2}. % '-nomatch_1/2-lbc$^0/2-0-'/3


{function, sizes, 1, 154}.
  {label,153}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",405}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,sizes},1}.
  {label,154}.
    {test,is_list,{f,153},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",406}]}.
    {call,0,{f,300}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",410}]}.
    {call,1,{f,517}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,211},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",411}]}.
    {call,1,{f,517}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,210},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",412}]}.
    {call,1,{f,517}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",413}]}.
    {call,1,{f,517}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,208},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",418}]}.
    {call,1,{f,509}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,207},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",419}]}.
    {call,1,{f,509}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1>>}]}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",420}]}.
    {call,1,{f,509}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,205},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2>>}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",421}]}.
    {call,1,{f,509}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,204},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2,0,3>>}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",426}]}.
    {call,1,{f,501}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,203},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",427}]}.
    {call,1,{f,501}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,202},[{x,1},4,{string,<<16>>}]}.
    {test,bs_test_tail2,{f,202},[{x,1},0]}.
    {move,{literal,[1,13]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",428}]}.
    {call,1,{f,501}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,201},[{x,1},8,{string,<<29>>}]}.
    {test,bs_test_tail2,{f,201},[{x,1},0]}.
    {move,{literal,[1,13,7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",429}]}.
    {call,1,{f,501}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,200},[{x,1},12,{string,<<29,112>>}]}.
    {test,bs_test_tail2,{f,200},[{x,1},0]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2000},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",430}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {call,1,{f,501}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,199},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1000},
           8,
           {field_flags,[{anno,[430,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,199},[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {test,bs_test_tail2,{f,199},[{x,1},0]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",435}]}.
    {call,1,{f,493}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,198},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1,2,1,3,0,7,5]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",436}]}.
    {call,1,{f,493}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,197},[{x,1},21,{string,<<"(±è">>}]}.
    {test,bs_test_tail2,{f,197},[{x,1},0]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,512},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",437}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {call,1,{f,493}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,196},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,512},
           3,
           {field_flags,[{anno,[437,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,196},[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {test,bs_test_tail2,{f,196},[{x,1},0]}.
    {move,{integer,8},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",442}]}.
    {call,2,{f,485}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,195},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,6},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",443}]}.
    {call,2,{f,485}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,194},[{x,1},6,{string,<<"¨">>}]}.
    {test,bs_test_tail2,{f,194},[{x,1},0]}.
    {move,{integer,16},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",444}]}.
    {call,2,{f,485}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,193},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,42>>}]}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,3}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",449}]}.
    {call,4,{f,477}}. % '-sizes/1-fun-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,192},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,3},{x,1}}.
    {move,{integer,7},{x,3}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",450}]}.
    {call,4,{f,477}}. % '-sizes/1-fun-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,191},
          [{x,1},99,{string,<<224,0,0,0,1,0,0,0,0,0,0,1,32>>}]}.
    {test,bs_test_tail2,{f,191},[{x,1},0]}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,3}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",456}]}.
    {call,4,{f,469}}. % '-sizes/1-fun-13-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,190},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,3},{x,1}}.
    {move,{integer,7},{x,3}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",457}]}.
    {call,4,{f,469}}. % '-sizes/1-fun-13-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,189},
          [{x,1},
           171,
           {string,<<97,98,99,224,0,0,0,1,14,46,46,32,0,0,0,0,0,1,47,15,47,
                     64>>}]}.
    {test,bs_test_tail2,{f,189},[{x,1},0]}.
    {move,{integer,42},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",462}]}.
    {call,2,{f,461}}. % '-sizes/1-fun-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,188},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,20},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",463}]}.
    {call,2,{f,461}}. % '-sizes/1-fun-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,187},[{x,1},28,{string,<<42,0,2,176>>}]}.
    {test,bs_test_tail2,{f,187},[{x,1},0]}.
    {move,{literal,"Foundation"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",468}]}.
    {call,1,{f,455}}. % '-sizes/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,186},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"Foundation">>}]}.
    {move,{literal,[1054,1089,1085,1086,1074,1072,1085,1080,1077]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",469}]}.
    {call,1,{f,455}}. % '-sizes/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,185},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",476}]}.
    {call,1,{f,449}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,184},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",477}]}.
    {call,1,{f,449}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,183},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1>>}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",478}]}.
    {call,1,{f,449}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,182},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",483}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,181},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",484}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,180},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,<<0,1,0,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",485}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,179},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",486}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,178},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,0:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",487}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,177},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",488}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,176},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,21,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",489}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,175},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,1,127:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",490}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,174},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",495}]}.
    {call,3,{f,437}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,173},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,255},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",496}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",497}]}.
    {call,3,{f,437}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,172},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,4},{x,1}}.
    {move,{integer,4},{x,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",498}]}.
    {call,3,{f,437}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,171},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,8},{x,1}}.
    {move,{integer,8},{x,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",499}]}.
    {call,3,{f,437}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,170},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,9},{x,1}}.
    {move,{integer,6},{x,2}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<69,3:4>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",500}]}.
    {call,3,{f,437}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,169},[{x,1},18,{string,<<8,132,192>>}]}.
    {test,bs_test_tail2,{f,169},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",505}]}.
    {call,1,{f,432}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,168},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",506}]}.
    {call,1,{f,432}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,167},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",507}]}.
    {call,1,{f,432}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,166},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,6},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",508}]}.
    {call,1,{f,432}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,165},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",509}]}.
    {call,1,{f,432}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,164},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",510}]}.
    {call,1,{f,432}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,163},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0,0>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",512}]}.
    {call,2,{f,429}}. % '-sizes/1-lbc$^26/2-13-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,162},[{x,1},3,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,162},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",513}]}.
    {call,2,{f,426}}. % '-sizes/1-lbc$^27/2-14-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,161},[{x,1},3,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,161},[{x,1},0]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",518}]}.
    {call,2,{f,416}}. % '-sizes/1-fun-30-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,160},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,97,0,0,0,98,0,0,0,99,0,0,97,98>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{literal,[8,bad]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",519}]}.
    {call,2,{f,416}}. % '-sizes/1-fun-30-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,159},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>}]}.
    {move,{literal,<<0,0,0,70,0,0,0,111,0,0,0,117,0,0,0,110,0,0,0,100,0,0,0,
                     97,0,0,0,116,0,0,0,105,0,0,0,111,0,0,0,110>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",524}]}.
    {call,1,{f,410}}. % '-sizes/1-fun-32-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,158},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"Foundation">>}]}.
    {move,{literal,<<0,0,4,30,0,0,4,65,0,0,4,61,0,0,4,62,0,0,4,50,0,0,4,48,0,
                     0,4,61,0,0,4,56,0,0,4,53>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",525}]}.
    {call,1,{f,410}}. % '-sizes/1-fun-32-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,157},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,155}}.
    {move,{literal,{1,2,3}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",527}]}.
    {call,2,{f,408}}. % '-sizes/1-lbc$^33/2-18-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,155}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,156},[{x,0},2,{atom,'EXIT'}]}.
    {call_last,0,{f,302},1}. % cs_end/0
  {label,156}.
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",527}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",525}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",524}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",519}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",518}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",513}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",512}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",510}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",509}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",508}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",507}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",506}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",505}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",500}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",499}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",498}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",497}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",495}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",490}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",489}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",488}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",487}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",486}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",485}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",484}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",483}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",478}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",477}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",476}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",469}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",468}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",463}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",462}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",457}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",456}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",450}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",449}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",444}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",437}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",426}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",413}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",410}]}.
    {badmatch,{x,0}}.


{function, general_expressions, 1, 213}.
  {label,212}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",535}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,general_expressions},1}.
  {label,213}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",536}]}.
    {call,0,{f,300}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",538}]}.
    {call,2,{f,405}}. % '-general_expressions/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,237},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",539}]}.
    {call,2,{f,402}}. % '-general_expressions/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,236},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",540}]}.
    {call,2,{f,399}}. % '-general_expressions/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,235},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<1,2>>,<<3>>]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",544}]}.
    {call,2,{f,396}}. % '-general_expressions/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,234},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",545}]}.
    {call,2,{f,393}}. % '-general_expressions/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,233},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4,5]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",546}]}.
    {call,2,{f,388}}. % '-general_expressions/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,232},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",550}]}.
    {call,2,{f,382}}. % '-general_expressions/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,231},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,4,5,6,7>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",552}]}.
    {call,2,{f,377}}. % '-general_expressions/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,230},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,2,3,4,4>>}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,<<"*">>},{x,1}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",556}]}.
    send.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",557}]}.
    {call,2,{f,372}}. % '-general_expressions/1-lbc$^9/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,229},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",558}]}.
    {call,2,{f,367}}. % '-general_expressions/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<10,5,3>>}]}.
    {move,{literal,"3A7"},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",564}]}.
    {call,1,{f,239}}. % hstring_to_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,227},[{x,1},12,{string,<<":p">>}]}.
    {test,bs_test_tail2,{f,227},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",565}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{literal,{65,8}},{x,0}}.
    {call,1,{f,309}}. % id/1
    {move,{y,5},{x,1}}.
    {move,{x,0},{x,2}}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{literal,"ABCDEFGH"},{x,0}}.
    {call,3,{f,246}}. % encode_chars_compact_map/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,226},[{x,1},24,{string,<<5,57,119>>}]}.
    {test,bs_test_tail2,{f,226},[{x,1},0]}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",567}]}.
    {call,0,{f,302}}. % cs_end/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,5},{f,214}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",570}]}.
    {call,2,{f,365}}. % '-general_expressions/1-lbc$^11/2-11-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,214}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,225},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,225},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,4},{f,215}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_bincomp_r25_SUITE.erl",571}]}.
    {call,2,{f,363}}. % '-general_expressions/1-lbc$^12/2-12-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,215}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,224},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,224},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,3},{f,216}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_bincomp_r25_SUITE.erl",572}]}.
    {call,2,{f,361}}. % '-general_expressions/1-lbc$^13/2-13-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,216}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,223},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,223},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,2},{f,217}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_bincomp_r25_SUITE.erl",573}]}.
    {call,2,{f,359}}. % '-general_expressions/1-lbc$^14/2-14-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,217}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,222},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,222},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,1},{f,218}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_bincomp_r25_SUITE.erl",574}]}.
    {call,2,{f,357}}. % '-general_expressions/1-lbc$^15/2-15-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,218}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,221},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,221},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,219}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_bincomp_r25_SUITE.erl",575}]}.
    {call,2,{f,352}}. % '-general_expressions/1-lbc$^16/2-16-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
  {label,219}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,220},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,220},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,220}.
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,222}.
    {line,[{scope,[4]},{location,"bs_bincomp_r25_SUITE.erl",573}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[6]},{location,"bs_bincomp_r25_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,224}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r25_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,"\n"},{location,"bs_bincomp_r25_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",565}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",564}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",546}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",545}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",544}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",540}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",539}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r25_SUITE.erl",538}]}.
    {badmatch,{x,0}}.


{function, hstring_to_bitstring, 1, 239}.
  {label,238}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",579}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,hstring_to_bitstring},1}.
  {label,239}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{51,65}},nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[]}.
    {gc_bif,length,
            {f,0},
            1,
            [{tr,{x,0},{t_cons,{t_integer,{51,65}},nil}}],
            {x,0}}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{1,288230376151711743}}},{integer,4}],
            {x,0}}.
    {gc_bif,'+',
            {f,240},
            1,
            [{tr,{x,0},{t_integer,{4,1152921504606846972}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{11,1152921504606846979}}},{integer,3}],
            {x,0}}.
    {jump,{f,241}}.
  {label,240}.
    {move,{integer,256},{x,0}}.
  {label,241}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,349},1}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2


{function, hex_to_int, 1, 243}.
  {label,242}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",582}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,hex_to_int},1}.
  {label,243}.
    {'%',{var_info,{x,0},[{type,{t_integer,{51,65}}}]}}.
    {test,is_ge,{f,244},[{integer,57},{tr,{x,0},{t_integer,{51,65}}}]}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{51,57}}},{integer,48}],{x,0}}.
    return.
  {label,244}.
    {test,is_ge,{f,242},[{tr,{x,0},{t_integer,{58,65}}},{integer,65}]}.
    {move,{integer,10},{x,0}}.
    return.


{function, encode_chars_compact_map, 3, 246}.
  {label,245}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",585}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,encode_chars_compact_map},3}.
  {label,246}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{65,72}},nil}}]}}.
    {test,is_tuple,{f,245},[{x,2}]}.
    {test,test_arity,{f,245},[{x,2},2]}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[]}.
    {gc_bif,length,
            {f,0},
            2,
            [{tr,{x,0},{t_cons,{t_integer,{65,72}},nil}}],
            {x,0}}.
    {gc_bif,'*',
            {f,247},
            2,
            [{tr,{x,0},{t_integer,{1,288230376151711743}}},{x,1}],
            {x,0}}.
    {gc_bif,'+',{f,247},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,247},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,248}}.
  {label,247}.
    {move,{integer,256},{x,0}}.
  {label,248}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {get_tuple_element,{y,0},0,{x,4}}.
    {get_tuple_element,{y,0},1,{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,5,{f,346},3}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5


{function, enc_char_cm, 3, 250}.
  {label,249}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",588}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,enc_char_cm},3}.
  {label,250}.
    {'%',{var_info,{x,0},[{type,{t_integer,{65,72}}}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",589}]}.
    {gc_bif,'-',{f,0},3,[{tr,{x,0},{t_integer,{65,72}}},{x,1}],{x,0}}.
    {test,is_ge,{f,251},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {test,is_lt,{f,251},[{tr,{x,0},{t_number,{0,'+inf'}}},{x,2}]}.
    return.
  {label,251}.
    {move,{atom,illegal},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",594}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, no_generator, 1, 253}.
  {label,252}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",599}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,no_generator},1}.
  {label,253}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",600}]}.
    {call,1,{f,309}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,0},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,0},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {x,0},
                          {atom,all}]}}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,257},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test,is_eq_exact,
          {f,256},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {'catch',{y,0},{f,254}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",604}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,0},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,0},{t_bitstring,256,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {literal,[1]},
                          {atom,all}]}}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
  {label,254}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,255},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,255},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,255}.
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",604}]}.
    {badmatch,{x,0}}.
  {label,256}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",601}]}.
    {badmatch,{x,0}}.
  {label,257}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",600}]}.
    {badmatch,{x,0}}.


{function, zero_pattern, 1, 259}.
  {label,258}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",608}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,zero_pattern},1}.
  {label,259}.
    {test,is_atom,{f,260},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,2,{f,344},0}. % '-zero_pattern/1-lbc$^0/2-0-'/2
  {label,260}.
    {move,{atom,ok},{x,0}}.
    return.


{function, multiple_segments, 1, 262}.
  {label,261}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",629}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,multiple_segments},1}.
  {label,262}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",630}]}.
    {call,0,{f,300}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<4,16,66>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",632}]}.
    {call,1,{f,274}}. % matched_out_size/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,272},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[1,2]}]}.
    {move,{literal,<<16,0,42,72>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",633}]}.
    {call,1,{f,274}}. % matched_out_size/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,271},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,"*"}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",635}]}.
    {call,1,{f,277}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,270},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",636}]}.
    {call,1,{f,277}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,269},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",637}]}.
    {call,1,{f,277}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,268},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",638}]}.
    {call,1,{f,277}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,267},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<99,0,1,1,2,3,4,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",639}]}.
    {call,1,{f,277}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_eq_exact,
          {f,266},
          [{tr,{x,0},{t_list,{t_integer,{0,255}},nil}},{literal,[1,4]}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",641}]}.
    {call,1,{f,280}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_nil,{f,265},[{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",642}]}.
    {call,1,{f,280}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,264},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[6]}]}.
    {move,{literal,<<1,2,3,4,5,6,7,8>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",643}]}.
    {call,1,{f,280}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,263},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[6,15]}]}.
    {call_last,0,{f,302},0}. % cs_end/0
  {label,263}.
    {badmatch,{x,0}}.
  {label,264}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",642}]}.
    {badmatch,{x,0}}.
  {label,265}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",641}]}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",639}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",638}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",637}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",636}]}.
    {badmatch,{x,0}}.
  {label,270}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",635}]}.
    {badmatch,{x,0}}.
  {label,271}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",633}]}.
    {badmatch,{x,0}}.
  {label,272}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",632}]}.
    {badmatch,{x,0}}.


{function, matched_out_size, 1, 274}.
  {label,273}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",648}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,matched_out_size},1}.
  {label,274}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",649}]}.
    {call,2,{f,340}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",650}]}.
    {call,1,{f,336}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",651}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,
          {f,275},
          [{tr,{x,0},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,1,true}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,275}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_1, 1, 277}.
  {label,276}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",654}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,do_multiple_segments_1},1}.
  {label,277}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",655}]}.
    {call,2,{f,332}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,306}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",656}]}.
    {call,1,{f,328}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",657}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,
          {f,278},
          [{tr,{x,0},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,1,true}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,278}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_2, 1, 280}.
  {label,279}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",660}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,do_multiple_segments_2},1}.
  {label,280}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",661}]}.
    {call,2,{f,325}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,304}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",662}]}.
    {call,1,{f,322}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",663}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,
          {f,281},
          [{tr,{x,0},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,1,true}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,281}.
    {badmatch,{x,0}}.


{function, grab_bag, 1, 283}.
  {label,282}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",666}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,grab_bag},1}.
  {label,283}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {'catch',{y,3},{f,284}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",667}]}.
    {call,1,{f,295}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,284}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,293},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,293},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,285}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_bincomp_r25_SUITE.erl",668}]}.
    {call,1,{f,295}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,285}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,292},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,292},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,286}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_bincomp_r25_SUITE.erl",669}]}.
    {call,1,{f,295}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,286}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,291},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,291},[{x,1}]}.
    {test,test_arity,{f,291},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,291},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,0},{f,287}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",672}]}.
    {call,2,{f,320}}. % '-grab_bag/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,287}.
    {try_case,{y,0}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_bincomp_r25_SUITE.erl",674}]}.
    {call,1,{f,298}}. % grab_bag_gh_8617/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_nil,{f,290},[{tr,{x,0},{t_list,{t_integer,{0,0}},nil}}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",675}]}.
    {call,1,{f,298}}. % grab_bag_gh_8617/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_eq_exact,
          {f,289},
          [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{literal,[0]}]}.
    {move,{literal,<<0:3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",676}]}.
    {call,1,{f,298}}. % grab_bag_gh_8617/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_eq_exact,
          {f,288},
          [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{literal,[0,0,0]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,288}.
    {badmatch,{x,0}}.
  {label,289}.
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",675}]}.
    {badmatch,{x,0}}.
  {label,290}.
    {line,[{scope,[0]},{location,"bs_bincomp_r25_SUITE.erl",674}]}.
    {badmatch,{x,0}}.
  {label,291}.
    {line,[{scope,[2]},{location,"bs_bincomp_r25_SUITE.erl",669}]}.
    {badmatch,{x,0}}.
  {label,292}.
    {line,[{scope,[4]},{location,"bs_bincomp_r25_SUITE.erl",668}]}.
    {badmatch,{x,0}}.
  {label,293}.
    {line,[{scope,[6]},{location,"bs_bincomp_r25_SUITE.erl",667}]}.
    {badmatch,{x,0}}.


{function, grab_bag_gh_6553, 1, 295}.
  {label,294}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",680}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,grab_bag_gh_6553},1}.
  {label,295}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,294},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,294},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[680,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,294},[{x,1},0]}.
    {move,{literal,<<>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,296},[{x,0},0]}.
    {move,{literal,<<>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,296},[{x,0},8]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",682}]}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,8},
                          {atom,integer},
                          2,1,nil,
                          {literal,<<>>},
                          {integer,8}]}}.
    return.
  {label,296}.
    {badmatch,{literal,<<>>}}.


{function, grab_bag_gh_8617, 1, 298}.
  {label,297}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",684}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,grab_bag_gh_8617},1}.
  {label,298}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {call_only,1,{f,315}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1


{function, cs_init, 0, 300}.
  {label,299}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",691}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,cs_init},0}.
  {label,300}.
    {allocate,0,0}.
    {move,{atom,true},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",692}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs_end, 0, 302}.
  {label,301}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",695}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,cs_end},0}.
  {label,302}.
    {allocate,0,0}.
    {move,{atom,false},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",696}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs, 1, 304}.
  {label,303}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",700}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,cs},1}.
  {label,304}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    return.


{function, cs_default, 1, 306}.
  {label,305}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",728}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,cs_default},1}.
  {label,306}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",729}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,true}}],{y,0}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,binary_info},{y,1}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",731}]}.
    {call_ext,1,{extfunc,erts_debug,get_internal_state,1}}.
    {test,is_tagged_tuple,{f,307},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,307},[{x,1},{literal,{binary,256}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,307},
          [{x,1},{tr,{y,0},{t_integer,{0,288230376151711743}}}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,307}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",730}]}.
    {badmatch,{x,0}}.


{function, id, 1, 309}.
  {label,308}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",734}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,id},1}.
  {label,309}.
    return.


{function, module_info, 0, 311}.
  {label,310}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,module_info},0}.
  {label,311}.
    {move,{atom,bs_bincomp_r25_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 313}.
  {label,312}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,module_info},1}.
  {label,313}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_bincomp_r25_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-grab_bag_gh_8617/1-lc$^0/1-0-', 1, 315}.
  {label,314}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",688}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-grab_bag_gh_8617/1-lc$^0/1-0-'},
               1}.
  {label,315}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,317},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bif,self,{f,0},[],{x,2}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,317},
          [{x,1},
           {integer,1},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",689}]}.
    {call,1,{f,309}}. % id/1
    {test,is_pid,{f,316},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",688}]}.
    {call,1,{f,315}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,316}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,315},1}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
  {label,317}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,318},
          [{x,0},
           {integer,0},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,318},
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call_only,1,{f,315}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
  {label,318}.
    {move,nil,{x,0}}.
    return.


{function, '-grab_bag/1-lbc$^0/2-0-', 2, 320}.
  {label,319}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",672}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-grab_bag/1-lbc$^0/2-0-'},2}.
  {label,320}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lc$^1/1-1-', 1, 322}.
  {label,321}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",662}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-do_multiple_segments_2/1-lc$^1/1-1-'},
               1}.
  {label,322}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,323},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,323},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,323},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}],
            {x,1}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,510}}},{tr,{x,3},{t_integer,{0,255}}}],
            {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,322}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,323}.
    {move,nil,{x,0}}.
    return.


{function, '-do_multiple_segments_2/1-lbc$^0/2-0-', 2, 325}.
  {label,324}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",661}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-do_multiple_segments_2/1-lbc$^0/2-0-'},
               2}.
  {label,325}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,326},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,326},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,326},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,0},{x,0},5}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}],
            {x,2}}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,2},{t_integer,{0,510}}},{tr,{x,4},{t_integer,{0,255}}}],
            {x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,765}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,325}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
  {label,326}.
    {move,{x,1},{x,0}}.
    return.


{function, '-do_multiple_segments_1/1-lc$^1/1-1-', 1, 328}.
  {label,327}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",656}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-do_multiple_segments_1/1-lc$^1/1-1-'},
               1}.
  {label,328}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,330},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,330},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test,is_eq_exact,
          {f,329},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,328}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,329}.
    {call_only,1,{f,328}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
  {label,330}.
    {move,nil,{x,0}}.
    return.


{function, '-do_multiple_segments_1/1-lbc$^0/2-0-', 2, 332}.
  {label,331}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",655}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-do_multiple_segments_1/1-lbc$^0/2-0-'},
               2}.
  {label,332}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,334},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,334},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {test,is_eq_exact,
          {f,333},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,332}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,333}.
    {call_only,2,{f,332}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,334}.
    {move,{x,1},{x,0}}.
    return.


{function, '-matched_out_size/1-lc$^1/1-1-', 1, 336}.
  {label,335}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",650}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-matched_out_size/1-lc$^1/1-1-'},
               1}.
  {label,336}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,337},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,337},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call,1,{f,336}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,337}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,338},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,338},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call_only,1,{f,336}}. % '-matched_out_size/1-lc$^1/1-1-'/1
  {label,338}.
    {move,nil,{x,0}}.
    return.


{function, '-matched_out_size/1-lbc$^0/2-0-', 2, 340}.
  {label,339}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",649}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-matched_out_size/1-lbc$^0/2-0-'},
               2}.
  {label,340}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,341},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,341},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{0,'+inf'}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,340}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,341}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,342},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,342},
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},2}.
    {call_only,2,{f,340}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,342}.
    {move,{x,1},{x,0}}.
    return.


{function, '-zero_pattern/1-lbc$^0/2-0-', 2, 344}.
  {label,343}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",613}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-zero_pattern/1-lbc$^0/2-0-'},
               2}.
  {label,344}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_create_bin,{f,0},
                   0,2,256,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,256,true}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {call_only,2,{f,344}}. % '-zero_pattern/1-lbc$^0/2-0-'/2


{function, '-encode_chars_compact_map/3-lbc$^0/2-0-', 5, 346}.
  {label,345}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",586}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-encode_chars_compact_map/3-lbc$^0/2-0-'},
               5}.
  {label,346}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,72}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,347},[{x,0}]}.
    {allocate,5,5}.
    {move,{x,4},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,2},{y,4}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,1}}.
    {call,3,{f,250}}. % enc_char_cm/3
    {'%',{var_info,{x,0},[{type,{t_number,{0,'+inf'}}}]}}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,3},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_number,{0,'+inf'}}},
                          {y,4}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,4},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,5,{f,346},5}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5
  {label,347}.
    {move,{x,1},{x,0}}.
    return.


{function, '-hstring_to_bitstring/1-lbc$^0/2-0-', 2, 349}.
  {label,348}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",580}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-hstring_to_bitstring/1-lbc$^0/2-0-'},
               2}.
  {label,349}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{51,65}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,4,true}}]}}.
    {test,is_nonempty_list,{f,350},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,243}}. % hex_to_int/1
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',10}}}]}}.
    {bs_create_bin,{f,0},
                   0,1,4,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,1},{t_bitstring,4,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{'-inf',10}}},
                          {integer,4}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,4,true}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,349},2}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2
  {label,350}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^16/2-16-', 2, 352}.
  {label,351}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^16/2-16-'},
               2}.
  {label,352}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,353},[{x,0}]}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {get_list,{x,0},{x,2},{x,0}}.
    {make_fun3,{f,355},0,0,{x,2},{list,[{x,2}]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{1,3}}}]}}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {tr,{x,2},
                              {t_fun,0,
                                     {'-general_expressions/1-fun-17-',1},
                                     {t_integer,{1,3}}}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,352}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,353}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-fun-17-', 1, 355}.
  {label,354}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-fun-17-'},
               1}.
  {label,355}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,3}}}]}}.
    return.


{function, '-general_expressions/1-lbc$^15/2-15-', 2, 357}.
  {label,356}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",574}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^15/2-15-'},
               2}.
  {label,357}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^14/2-14-', 2, 359}.
  {label,358}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",573}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^14/2-14-'},
               2}.
  {label,359}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^13/2-13-', 2, 361}.
  {label,360}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",572}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^13/2-13-'},
               2}.
  {label,361}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^12/2-12-', 2, 363}.
  {label,362}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",571}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^12/2-12-'},
               2}.
  {label,363}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^11/2-11-', 2, 365}.
  {label,364}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",570}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^11/2-11-'},
               2}.
  {label,365}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^10/2-10-', 2, 367}.
  {label,366}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",558}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^10/2-10-'},
               2}.
  {label,367}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,370},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'div',{f,368},3,[{integer,10},{tr,{x,2},{t_integer,{0,3}}}],{x,2}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",559}]}.
    {bs_create_bin,{f,368},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{3,10}}},
                          {integer,8}]}}.
    {jump,{f,369}}.
  {label,368}.
    {move,{literal,<<>>},{x,2}}.
  {label,369}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",558}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {tr,{x,2},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,367}}. % '-general_expressions/1-lbc$^10/2-10-'/2
  {label,370}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^9/2-9-', 2, 372}.
  {label,371}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",557}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^9/2-9-'},
               2}.
  {label,372}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,375},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
  {label,373}.
    {loop_rec,{f,374},{x,0}}.
    remove_message.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {x,0},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,372},2}. % '-general_expressions/1-lbc$^9/2-9-'/2
  {label,374}.
    {wait,{f,373}}.
  {label,375}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^8/2-8-', 2, 377}.
  {label,376}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",552}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^8/2-8-'},
               2}.
  {label,377}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,380},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",553}]}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{1,4}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,378},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,4}}},
                          {integer,8},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{1,4}}},
                          {integer,8}]}}.
    {jump,{f,379}}.
  {label,378}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",554}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,4}}},
                          {integer,8}]}}.
  {label,379}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",552}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {tr,{x,2},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,377}}. % '-general_expressions/1-lbc$^8/2-8-'/2
  {label,380}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^6/2-6-', 2, 382}.
  {label,381}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^6/2-6-'},
               2}.
  {label,382}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,383},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'*',{f,0},3,[{tr,{x,2},{t_integer,{1,3}}},{integer,2}],{x,2}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{2,6}}},{integer,1}],{x,3}}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test_heap,4,1}.
    {put_list,{y,2},nil,{x,1}}.
    {put_list,{y,1},{x,1},{x,1}}.
    {swap,{x,0},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,2,2}.
    {call,2,{f,385}}. % '-general_expressions/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {tr,{x,0},{t_bitstring,1,true}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,382},2}. % '-general_expressions/1-lbc$^6/2-6-'/2
  {label,383}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^7/2-7-', 2, 385}.
  {label,384}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^7/2-7-'},
               2}.
  {label,385}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{2,'+inf'}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,386},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{2,'+inf'}}},
                          {integer,8}]}}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,309}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {x,0},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,385},2}. % '-general_expressions/1-lbc$^7/2-7-'/2
  {label,386}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^5/2-5-', 2, 388}.
  {label,387}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",546}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^5/2-5-'},
               2}.
  {label,388}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,391},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{1,5}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,389},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",547}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,5}}},
                          {integer,8}]}}.
    {jump,{f,390}}.
  {label,389}.
    {move,{literal,<<>>},{x,2}}.
  {label,390}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",546}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {tr,{x,2},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,388}}. % '-general_expressions/1-lbc$^5/2-5-'/2
  {label,391}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^4/2-4-', 2, 393}.
  {label,392}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",545}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^4/2-4-'},
               2}.
  {label,393}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,394},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,3}}},
                          {integer,8}]}}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,309}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {x,0},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,393},2}. % '-general_expressions/1-lbc$^4/2-4-'/2
  {label,394}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^3/2-3-', 2, 396}.
  {label,395}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",544}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^3/2-3-'},
               2}.
  {label,396}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,397},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {tr,{x,2},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,396}}. % '-general_expressions/1-lbc$^3/2-3-'/2
  {label,397}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^2/2-2-', 2, 399}.
  {label,398}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",540}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^2/2-2-'},
               2}.
  {label,399}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,400},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[540,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",541}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}},{integer,1}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,256}}},
                          {integer,8}]}}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",542}]}.
    {call,1,{f,309}}. % id/1
    {line,[{location,"bs_bincomp_r25_SUITE.erl",540}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {x,0},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,399},2}. % '-general_expressions/1-lbc$^2/2-2-'/2
  {label,400}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^1/2-1-', 2, 402}.
  {label,401}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",539}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^1/2-1-'},
               2}.
  {label,402}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,403},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"abc">>},
                          {integer,3}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,402}}. % '-general_expressions/1-lbc$^1/2-1-'/2
  {label,403}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^0/2-0-', 2, 405}.
  {label,404}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",538}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-general_expressions/1-lbc$^0/2-0-'},
               2}.
  {label,405}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,406},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<1,2,3>>},
                          {integer,3}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,405}}. % '-general_expressions/1-lbc$^0/2-0-'/2
  {label,406}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-lbc$^33/2-18-', 2, 408}.
  {label,407}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",527}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^33/2-18-'},2}.
  {label,408}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,{1,2,3}}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-32-', 1, 410}.
  {label,409}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",521}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-32-'},1}.
  {label,410}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",522}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,412}}. % '-sizes/1-lbc$^31/2-17-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,306},0}. % cs_default/1


{function, '-sizes/1-lbc$^31/2-17-', 2, 412}.
  {label,411}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",522}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^31/2-17-'},2}.
  {label,412}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,414},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,413},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[522,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_get_tail,{x,2},{x,2},3}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,utf8},
                          2,0,nil,
                          {tr,{x,0},{t_integer,{0,4294967295}}},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,412}}. % '-sizes/1-lbc$^31/2-17-'/2
  {label,413}.
    {move,{x,1},{x,0}}.
    return.
  {label,414}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-30-', 2, 416}.
  {label,415}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",515}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-30-'},2}.
  {label,416}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",516}]}.
    {call,3,{f,418}}. % '-sizes/1-lbc$^28/2-15-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call_last,1,{f,306},0}. % cs_default/1


{function, '-sizes/1-lbc$^28/2-15-', 3, 418}.
  {label,417}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^28/2-15-'},3}.
  {label,418}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,419},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,422}}. % '-sizes/1-lbc$^29/2-16-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,418},2}. % '-sizes/1-lbc$^28/2-15-'/3
  {label,419}.
    {test,is_nil,{f,420},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,420}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^29/2-16-', 3, 422}.
  {label,421}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^29/2-16-'},3}.
  {label,422}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,bs_start_match3,{f,424},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,423},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {x,2},
           1,
           {field_flags,[{anno,[516,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_get_tail,{x,3},{x,3},4}.
    {bs_create_bin,{f,0},
                   0,4,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{0,'+inf'}}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,422}}. % '-sizes/1-lbc$^29/2-16-'/3
  {label,423}.
    {move,{x,1},{x,0}}.
    return.
  {label,424}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^27/2-14-', 2, 426}.
  {label,425}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",513}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^27/2-14-'},2}.
  {label,426}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,427},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[513,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {integer,0},
                          {tr,{x,2},{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,426}}. % '-sizes/1-lbc$^27/2-14-'/2
  {label,427}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-lbc$^26/2-13-', 2, 429}.
  {label,428}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",512}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^26/2-13-'},2}.
  {label,429}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,430},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {integer,0},
                          {tr,{x,2},{t_integer,{0,2}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,429}}. % '-sizes/1-lbc$^26/2-13-'/2
  {label,430}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-fun-25-', 1, 432}.
  {label,431}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",502}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-25-'},1}.
  {label,432}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",503}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<18>>},
                          {integer,1},
                          {atom,integer},
                          0,1,nil,
                          {integer,3},
                          {integer,4},
                          {atom,integer},
                          4,1,nil,
                          {integer,0},
                          {x,0}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,434}}. % '-sizes/1-lbc$^24/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^24/2-12-', 2, 434}.
  {label,433}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",503}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^24/2-12-'},2}.
  {label,434}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,435},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[503,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,15}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,434}}. % '-sizes/1-lbc$^24/2-12-'/2
  {label,435}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-fun-23-', 3, 437}.
  {label,436}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",492}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-23-'},3}.
  {label,437}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",493}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,3,0}.
    {call,4,{f,439}}. % '-sizes/1-lbc$^22/2-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^22/2-11-', 4, 439}.
  {label,438}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",493}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^22/2-11-'},4}.
  {label,439}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,bs_start_match3,{f,441},4,[{x,0}],{x,4}}.
    {test,bs_get_integer2,
          {f,440},
          5,
          [{tr,{x,4},{t_bs_context,1}},
           {x,2},
           1,
           {field_flags,[{anno,[493,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_get_tail,{x,4},{x,4},5}.
    {bs_create_bin,{f,0},
                   0,5,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{0,'+inf'}}},
                          {x,3}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,439}}. % '-sizes/1-lbc$^22/2-11-'/4
  {label,440}.
    {move,{x,1},{x,0}}.
    return.
  {label,441}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-21-', 1, 443}.
  {label,442}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",480}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-21-'},1}.
  {label,443}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",481}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,445}}. % '-sizes/1-lbc$^20/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^20/2-10-', 2, 445}.
  {label,444}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",481}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^20/2-10-'},2}.
  {label,445}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,447},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,446},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[481,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_get_tail,{x,2},{x,2},3}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{0,65535}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,445}}. % '-sizes/1-lbc$^20/2-10-'/2
  {label,446}.
    {move,{x,1},{x,0}}.
    return.
  {label,447}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-19-', 1, 449}.
  {label,448}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",473}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-19-'},1}.
  {label,449}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",474}]}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,451}}. % '-sizes/1-lbc$^18/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^18/2-9-', 2, 451}.
  {label,450}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",474}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^18/2-9-'},2}.
  {label,451}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,bs_start_match3,{f,453},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,452},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[474,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_get_tail,{x,2},{x,2},3}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{0,255}}},
                          {integer,16}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,451}}. % '-sizes/1-lbc$^18/2-9-'/2
  {label,452}.
    {move,{x,1},{x,0}}.
    return.
  {label,453}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-17-', 1, 455}.
  {label,454}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",465}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-17-'},1}.
  {label,455}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",466}]}.
    {call,2,{f,457}}. % '-sizes/1-lbc$^16/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,306},0}. % cs_default/1


{function, '-sizes/1-lbc$^16/2-8-', 2, 457}.
  {label,456}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",466}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^16/2-8-'},2}.
  {label,457}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,458},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,utf8},
                          2,0,nil,
                          {x,2},
                          {atom,undefined}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,457}}. % '-sizes/1-lbc$^16/2-8-'/2
  {label,458}.
    {test,is_nil,{f,459},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,459}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-15-', 2, 461}.
  {label,460}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",459}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-15-'},2}.
  {label,461}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,462},2,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,462},2,[{x,1},{integer,8}],{x,1}}.
    {gc_bif,'*',
            {f,462},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,462},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,462},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,463}}.
  {label,462}.
    {move,{integer,256},{x,0}}.
  {label,463}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",460}]}.
    {call,3,{f,465}}. % '-sizes/1-lbc$^14/2-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^14/2-7-', 3, 465}.
  {label,464}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",460}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^14/2-7-'},3}.
  {label,465}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,466},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,3},{integer,1}],{x,4}}.
    {bs_create_bin,{f,0},
                   0,5,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_number,any}},
                          {integer,8},
                          {atom,integer},
                          3,1,nil,
                          {tr,{x,4},{t_number,any}},
                          {x,2}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,3,{f,465}}. % '-sizes/1-lbc$^14/2-7-'/3
  {label,466}.
    {test,is_nil,{f,467},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,467}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-13-', 4, 469}.
  {label,468}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",452}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-13-'},4}.
  {label,469}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,470},4,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,470},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,470},4,[{x,2},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,470},
            4,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'+',{f,470},4,[{tr,{x,1},{t_number,any}},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,470},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,470},
            3,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'+',{f,470},2,[{tr,{x,1},{t_number,any}},{integer,24}],{x,1}}.
    {gc_bif,'*',
            {f,470},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,470},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,470},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,471}}.
  {label,470}.
    {move,{integer,256},{x,0}}.
  {label,471}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",453}]}.
    {call,5,{f,473}}. % '-sizes/1-lbc$^12/2-6-'/5
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^12/2-6-', 5, 473}.
  {label,472}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",453}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^12/2-6-'},5}.
  {label,473}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,474},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,0}}.
    {gc_bif,'+',{f,0},6,[{x,5},{integer,1}],{x,6}}.
    {gc_bif,'+',{f,0},7,[{tr,{x,5},{t_number,any}},{integer,2}],{x,7}}.
    {bs_create_bin,{f,0},
                   0,8,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"abc">>},
                          {integer,3},
                          {atom,integer},
                          3,1,nil,
                          {tr,{x,5},{t_number,any}},
                          {x,4},
                          {atom,integer},
                          4,8,nil,
                          {tr,{x,6},{t_number,any}},
                          {x,3},
                          {atom,string},
                          0,8,nil,
                          {string,<<"qqq">>},
                          {integer,3},
                          {atom,integer},
                          6,8,nil,
                          {tr,{x,7},{t_number,any}},
                          {x,2},
                          {atom,string},
                          0,8,nil,
                          {string,<<"xyz">>},
                          {integer,3}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,5,{f,473}}. % '-sizes/1-lbc$^12/2-6-'/5
  {label,474}.
    {test,is_nil,{f,475},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,475}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",454}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-11-', 4, 477}.
  {label,476}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",446}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-11-'},4}.
  {label,477}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,478},4,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,478},4,[{x,2},{integer,8}],{x,1}}.
    {gc_bif,'+',{f,478},4,[{y,1},{tr,{x,1},{t_number,any}}],{x,1}}.
    {gc_bif,'*',{f,478},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,478},
            3,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'*',
            {f,478},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,478},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,478},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,479}}.
  {label,478}.
    {move,{integer,256},{x,0}}.
  {label,479}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",447}]}.
    {call,5,{f,481}}. % '-sizes/1-lbc$^10/2-5-'/5
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^10/2-5-', 5, 481}.
  {label,480}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",447}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^10/2-5-'},5}.
  {label,481}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,482},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,0}}.
    {gc_bif,'+',{f,0},6,[{x,5},{integer,1}],{x,6}}.
    {gc_bif,'+',{f,0},7,[{tr,{x,5},{t_number,any}},{integer,2}],{x,7}}.
    {bs_create_bin,{f,0},
                   0,8,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,5},{t_number,any}},
                          {x,4},
                          {atom,integer},
                          3,8,nil,
                          {tr,{x,6},{t_number,any}},
                          {x,3},
                          {atom,integer},
                          4,8,nil,
                          {tr,{x,7},{t_number,any}},
                          {x,2}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,5,{f,481}}. % '-sizes/1-lbc$^10/2-5-'/5
  {label,482}.
    {test,is_nil,{f,483},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,483}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-9-', 2, 485}.
  {label,484}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",439}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-9-'},2}.
  {label,485}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,486},2,[{x,0}],{x,0}}.
    {gc_bif,'*',
            {f,486},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{x,1}],
            {x,0}}.
    {gc_bif,'+',{f,486},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,486},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,487}}.
  {label,486}.
    {move,{integer,256},{x,0}}.
  {label,487}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",440}]}.
    {call,3,{f,489}}. % '-sizes/1-lbc$^8/2-4-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^8/2-4-', 3, 489}.
  {label,488}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",440}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^8/2-4-'},3}.
  {label,489}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,490},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {bs_create_bin,{f,0},
                   0,4,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,3},
                          {x,2}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,3,{f,489}}. % '-sizes/1-lbc$^8/2-4-'/3
  {label,490}.
    {test,is_nil,{f,491},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,491}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-7-', 1, 493}.
  {label,492}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",432}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-7-'},1}.
  {label,493}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,494},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,3}],
            {x,0}}.
    {gc_bif,'+',
            {f,494},
            1,
            [{tr,{x,0},{t_integer,{0,864691128455135229}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{7,864691128455135236}}},{integer,3}],
            {x,0}}.
    {jump,{f,495}}.
  {label,494}.
    {move,{integer,256},{x,0}}.
  {label,495}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",433}]}.
    {call,2,{f,497}}. % '-sizes/1-lbc$^6/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^6/2-3-', 2, 497}.
  {label,496}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",433}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^6/2-3-'},2}.
  {label,497}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,498},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,3}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,497}}. % '-sizes/1-lbc$^6/2-3-'/2
  {label,498}.
    {test,is_nil,{f,499},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,499}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-5-', 1, 501}.
  {label,500}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",423}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-5-'},1}.
  {label,501}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,502},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,4}],
            {x,0}}.
    {gc_bif,'+',
            {f,502},
            1,
            [{tr,{x,0},{t_integer,{0,1152921504606846972}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{7,1152921504606846979}}},{integer,3}],
            {x,0}}.
    {jump,{f,503}}.
  {label,502}.
    {move,{integer,256},{x,0}}.
  {label,503}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",424}]}.
    {call,2,{f,505}}. % '-sizes/1-lbc$^4/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^4/2-2-', 2, 505}.
  {label,504}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",424}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^4/2-2-'},2}.
  {label,505}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,4,true}}]}}.
    {test,is_nonempty_list,{f,506},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,4,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,4,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,4}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,4,true}}]}}.
    {call_only,2,{f,505}}. % '-sizes/1-lbc$^4/2-2-'/2
  {label,506}.
    {test,is_nil,{f,507},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,507}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-3-', 1, 509}.
  {label,508}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",415}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-3-'},1}.
  {label,509}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,510},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,2}],
            {x,0}}.
    {jump,{f,511}}.
  {label,510}.
    {move,{integer,256},{x,0}}.
  {label,511}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",416}]}.
    {call,2,{f,513}}. % '-sizes/1-lbc$^2/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^2/2-1-', 2, 513}.
  {label,512}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",416}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^2/2-1-'},2}.
  {label,513}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,514},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,16}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {call_only,2,{f,513}}. % '-sizes/1-lbc$^2/2-1-'/2
  {label,514}.
    {test,is_nil,{f,515},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,515}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-1-', 1, 517}.
  {label,516}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",407}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-fun-1-'},1}.
  {label,517}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,518},1,[{x,0}],{x,0}}.
    {jump,{f,519}}.
  {label,518}.
    {move,{integer,256},{x,0}}.
  {label,519}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",408}]}.
    {call,2,{f,521}}. % '-sizes/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,304},0}. % cs/1


{function, '-sizes/1-lbc$^0/2-0-', 2, 521}.
  {label,520}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",408}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-sizes/1-lbc$^0/2-0-'},2}.
  {label,521}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,522},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,521}}. % '-sizes/1-lbc$^0/2-0-'/2
  {label,522}.
    {test,is_nil,{f,523},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,523}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch_1/2-lbc$^0/2-0-', 3, 525}.
  {label,524}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",403}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-nomatch_1/2-lbc$^0/2-0-'},
               3}.
  {label,525}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[bad]},
                                   none,
                                   {t_integer,{8,8}},
                                   none,none}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,526},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},
               {t_union,{t_atom,[bad]},none,{t_integer,{8,8}},none,none}},
           1,
           {field_flags,[{anno,[403,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {bs_create_bin,{f,0},
                   0,4,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{0,255}}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,3,{f,525}}. % '-nomatch_1/2-lbc$^0/2-0-'/3
  {label,526}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^12/2-12-', 2, 528}.
  {label,527}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",398}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-nomatch/1-lbc$^12/2-12-'},
               2}.
  {label,528}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,false}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^10/2-10-', 2, 530}.
  {label,529}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",396}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-nomatch/1-lbc$^10/2-10-'},
               2}.
  {label,530}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^8/2-8-', 2, 532}.
  {label,531}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-nomatch/1-lbc$^8/2-8-'},2}.
  {label,532}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^7/2-7-', 2, 534}.
  {label,533}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",390}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-nomatch/1-lbc$^7/2-7-'},2}.
  {label,534}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,535},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[390,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_create_bin,{f,0},
                   0,2,256,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,256,true}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {call_only,2,{f,534}}. % '-nomatch/1-lbc$^7/2-7-'/2
  {label,535}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^6/2-6-', 2, 537}.
  {label,536}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",385}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-nomatch/1-lbc$^6/2-6-'},2}.
  {label,537}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,538},
          2,
          [{tr,{x,0},{t_bs_context,32}},
           {integer,32},
           1,
           {field_flags,[{anno,[385,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"a">>},
                          {integer,1}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,537}}. % '-nomatch/1-lbc$^6/2-6-'/2
  {label,538}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^5/2-5-', 2, 540}.
  {label,539}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",382}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-nomatch/1-lbc$^5/2-5-'},2}.
  {label,540}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,542},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,541},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[382,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"a">>},
                          {integer,1}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,540}}. % '-nomatch/1-lbc$^5/2-5-'/2
  {label,541}.
    {move,{x,1},{x,0}}.
    return.
  {label,542}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^4/2-4-', 2, 544}.
  {label,543}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",380}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-nomatch/1-lbc$^4/2-4-'},2}.
  {label,544}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_bitstr,{f,545},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,545}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^3/2-3-', 2, 547}.
  {label,546}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",379}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-nomatch/1-lbc$^3/2-3-'},2}.
  {label,547}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lc$^2/1-2-', 1, 549}.
  {label,548}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",378}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-nomatch/1-lc$^2/1-2-'},1}.
  {label,549}.
    {test,is_bitstr,{f,550},[{x,0}]}.
    {move,nil,{x,0}}.
    return.
  {label,550}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lc$^1/1-1-', 1, 552}.
  {label,551}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",377}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-nomatch/1-lc$^1/1-1-'},1}.
  {label,552}.
    {move,nil,{x,0}}.
    return.


{function, '-nomatch/1-lbc$^0/2-0-', 2, 554}.
  {label,553}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",376}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-nomatch/1-lbc$^0/2-0-'},2}.
  {label,554}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,555},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,554}}. % '-nomatch/1-lbc$^0/2-0-'/2
  {label,555}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_strange/2-lbc$^0/2-1-', 2, 557}.
  {label,556}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",363}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-coverage_strange/2-lbc$^0/2-1-'},
               2}.
  {label,557}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,558},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[363,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,557}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
  {label,558}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_strange/2-lbc$^1/2-0-', 2, 560}.
  {label,559}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",362}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-coverage_strange/2-lbc$^1/2-0-'},
               2}.
  {label,560}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,561},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[362,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,1114111}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,560}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
  {label,561}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_trimmer/1-lbc$^0/2-0-', 2, 563}.
  {label,562}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",354}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-coverage_trimmer/1-lbc$^0/2-0-'},
               2}.
  {label,563}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{19,777}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,564},[{x,0}]}.
    {allocate_heap,4,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {put_tuple2,{x,0},{list,[{y,2},{y,2},{y,2}]}}.
    {call,1,{f,309}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,565},[{x,0}]}.
    {test,test_arity,{f,565},[{x,0},3]}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,309}}. % id/1
    {get_tuple_element,{y,0},0,{x,0}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {get_tuple_element,{y,0},2,{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",355}]}.
    {call,4,{f,134}}. % coverage_summer/4
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",354}]}.
    {bs_create_bin,{f,0},
                   0,1,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,float},
                          2,1,nil,
                          {tr,{x,0},{t_number,any}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,563},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2
  {label,564}.
    {move,{x,1},{x,0}}.
    return.
  {label,565}.
    {badmatch,{y,0}}.


{function, '-coverage_lightfv/3-lbc$^0/2-0-', 2, 567}.
  {label,566}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",347}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-coverage_lightfv/3-lbc$^0/2-0-'},
               2}.
  {label,567}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,{-3555.0,40.0}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,568},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,64,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,64,true}},
                          {atom,all},
                          {atom,float},
                          2,1,nil,
                          {tr,{x,2},{t_float,{-3555.0,40.0}}},
                          {integer,64}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {call_only,2,{f,567}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
  {label,568}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_materialiv/3-lbc$^0/2-0-', 2, 570}.
  {label,569}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",342}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-coverage_materialiv/3-lbc$^0/2-0-'},
               2}.
  {label,570}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1328,777134}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,571},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{1328,777134}}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,2,{f,570}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
  {label,571}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^8/2-8-', 2, 573}.
  {label,572}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",323}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-filters/1-lbc$^8/2-8-'},2}.
  {label,573}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,43}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,575},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,574},[{tr,{x,2},{t_integer,{1,43}}},{integer,42}]}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"*">>},
                          {integer,1}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,573}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,574}.
    {call_only,2,{f,573}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,575}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^7/2-7-', 2, 577}.
  {label,576}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",319}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-filters/1-lbc$^7/2-7-'},2}.
  {label,577}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,579},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,578},[{tr,{x,2},{t_integer,{0,1}}},{integer,0}]}.
    {test,bs_get_integer2,
          {f,578},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,127}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,577}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,578}.
    {test,bs_skip_bits2,
          {f,579},
          [{x,0},
           {integer,7},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},2}.
    {call_only,2,{f,577}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,579}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^6/2-6-', 2, 581}.
  {label,580}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",316}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-filters/1-lbc$^6/2-6-'},2}.
  {label,581}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,583},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,582},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[316,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,582},[{x,2},0]}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,581}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,582}.
    {call_only,2,{f,581}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,583}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^5/2-5-', 2, 585}.
  {label,584}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",310}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-filters/1-lbc$^5/2-5-'},2}.
  {label,585}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_list,{t_atom,[a,x,y,z]},nil},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,587},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nonempty_list,{f,586},[{x,2}]}.
    {gc_bif,length,{f,0},3,[{tr,{x,2},{t_cons,{t_atom,[a,x,y,z]},nil}}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{1,288230376151711743}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
  {label,586}.
    {call_only,2,{f,585}}. % '-filters/1-lbc$^5/2-5-'/2
  {label,587}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^4/2-4-', 2, 589}.
  {label,588}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",306}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-filters/1-lbc$^4/2-4-'},2}.
  {label,589}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,592},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",308}]}.
    {call,2,{f,118}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ne_exact,{f,590},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",309}]}.
    {gc_bif,'rem',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,590},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",306}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,32}],{x,0}}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,2},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{97,103}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {jump,{f,591}}.
  {label,590}.
    {move,{y,2},{x,1}}.
  {label,591}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,589},3}. % '-filters/1-lbc$^4/2-4-'/2
  {label,592}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^3/2-3-', 2, 594}.
  {label,593}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",302}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-filters/1-lbc$^3/2-3-'},2}.
  {label,594}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,597},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",304}]}.
    {call,2,{f,118}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,595},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",305}]}.
    {gc_bif,'rem',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,595},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",302}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,32}],{x,0}}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,2},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{97,103}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {jump,{f,596}}.
  {label,595}.
    {move,{y,2},{x,1}}.
  {label,596}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,594},3}. % '-filters/1-lbc$^3/2-3-'/2
  {label,597}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^2/2-2-', 2, 599}.
  {label,598}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",299}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-filters/1-lbc$^2/2-2-'},2}.
  {label,599}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,602},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",301}]}.
    {call,2,{f,118}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,600},[{x,0},{atom,true}]}.
    {move,{y,2},{x,1}}.
    {jump,{f,601}}.
  {label,600}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",299}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,32}],{x,0}}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,2},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{97,103}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
  {label,601}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,599},3}. % '-filters/1-lbc$^2/2-2-'/2
  {label,602}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^1/2-1-', 2, 604}.
  {label,603}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",296}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-filters/1-lbc$^1/2-1-'},2}.
  {label,604}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,607},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",298}]}.
    {call,2,{f,118}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,605},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",296}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,32}],{x,0}}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,2},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{97,103}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {jump,{f,606}}.
  {label,605}.
    {move,{y,2},{x,1}}.
  {label,606}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,604},3}. % '-filters/1-lbc$^1/2-1-'/2
  {label,607}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^0/2-0-', 2, 609}.
  {label,608}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",293}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-filters/1-lbc$^0/2-0-'},2}.
  {label,609}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,611},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[293,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",295}]}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{0,127}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,610},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",293}]}.
    {gc_bif,'-',{f,0},3,[{tr,{x,2},{t_integer,{0,127}}},{integer,32}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{-32,95}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,609}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,610}.
    {call_only,2,{f,609}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,611}.
    {move,{x,1},{x,0}}.
    return.


{function, '-inconsistent_types_2/0-lbc$^0/2-0-', 3, 613}.
  {label,612}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",282}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-inconsistent_types_2/0-lbc$^0/2-0-'},
               3}.
  {label,613}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,614},[{x,0}]}.
    {bif,'=/=',{f,0},[{x,2},nil],{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",285}]}.
    {badmatch,{x,0}}.
  {label,614}.
    {test,is_nil,{f,615},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,615}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",284}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-inconsistent_types_1/1-lbc$^0/2-0-', 3, 617}.
  {label,616}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",264}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-inconsistent_types_1/1-lbc$^0/2-0-'},
               3}.
  {label,617}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}}.
    {test,is_nil,
          {f,618},
          [{tr,{x,0},{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,618}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",265}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-float_segment_size/0-lbc$^0/2-0-', 3, 620}.
  {label,619}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",254}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-float_segment_size/0-lbc$^0/2-0-'},
               3}.
  {label,620}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_float,{0.79,0.79}}}]}}.
    {move,{literal,{bad_generator,42}},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",255}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^0/2-0-', 2, 622}.
  {label,621}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-over_complex_generator/0-lbc$^0/2-0-'},
               2}.
  {label,622}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,2,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,624},
          2,
          [{tr,{x,0},{t_bs_context,2}},
           {integer,2},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,623},[{tr,{x,2},{t_integer,{0,3}}},{integer,0}]}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,0},{y,0},2}.
    {move,{literal,<<"\b">>},{x,0}}.
    {call,2,{f,626}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,622},1}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,623}.
    {bs_get_tail,{x,0},{x,0},2}.
    {call_only,2,{f,622}}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,624}.
    {move,{x,1},{x,0}}.
    return.


{function, '-over_complex_generator/0-lbc$^1/2-1-', 2, 626}.
  {label,625}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-over_complex_generator/0-lbc$^1/2-1-'},
               2}.
  {label,626}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,627},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},2}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",234}]}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"ÿ">>},
                          {integer,1}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,626}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
  {label,627}.
    {move,{x,1},{x,0}}.
    return.


{function, '-do_match_context_2/1-lbc$^0/2-0-', 2, 629}.
  {label,628}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",229}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-do_match_context_2/1-lbc$^0/2-0-'},
               2}.
  {label,629}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,630},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[229,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,629}}. % '-do_match_context_2/1-lbc$^0/2-0-'/2
  {label,630}.
    {move,{x,1},{x,0}}.
    return.


{function, '-match_context_1/1-lbc$^0/2-0-', 2, 632}.
  {label,631}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",223}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-match_context_1/1-lbc$^0/2-0-'},
               2}.
  {label,632}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,633},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[223,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,632}}. % '-match_context_1/1-lbc$^0/2-0-'/2
  {label,633}.
    {move,{x,1},{x,0}}.
    return.


{function, '-gen_data/1-lbc$^1/2-1-', 2, 635}.
  {label,634}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-gen_data/1-lbc$^1/2-1-'},2}.
  {label,635}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,636},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
    {move,{integer,255},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",220}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",219}]}.
    {call,2,{f,639}}. % '-gen_data/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,635},1}. % '-gen_data/1-lbc$^1/2-1-'/2
  {label,636}.
    {test,is_nil,{f,637},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,637}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^2/2-2-', 2, 639}.
  {label,638}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-gen_data/1-lbc$^2/2-2-'},2}.
  {label,639}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,640},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,639}}. % '-gen_data/1-lbc$^2/2-2-'/2
  {label,640}.
    {test,is_nil,{f,641},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,641}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",220}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^0/2-0-', 2, 643}.
  {label,642}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",218}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-gen_data/1-lbc$^0/2-0-'},2}.
  {label,643}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,644},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {x,2},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,643}}. % '-gen_data/1-lbc$^0/2-0-'/2
  {label,644}.
    {test,is_nil,{f,645},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,645}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_lc/1-lc$^0/1-0-', 1, 647}.
  {label,646}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",215}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-silly_lc/1-lc$^0/1-0-'},1}.
  {label,647}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_union,none,
          {t_cons,
           {t_union,none,
            {t_cons,
             {t_union,none,
              {t_cons,
               {t_union,none,{t_cons,any,any},{t_integer,{0,4}},none,none},
               nil},
              {t_integer,{0,4}},
              none,none},
             nil},
            {t_integer,{0,4}},
            none,none},
           nil},
          {t_integer,{0,4}},
          none,none},
         nil}}]}}.
    {test,is_nonempty_list,{f,648},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,647}}. % '-silly_lc/1-lc$^0/1-0-'/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_cons,
          {t_union,none,
           {t_cons,
            {t_union,none,
             {t_cons,
              {t_union,none,{t_cons,any,any},{t_integer,{0,4}},none,none},
              nil},
             {t_integer,{0,4}},
             none,none},
            nil},
           {t_integer,{0,4}},
           none,none},
          nil},
         nil}}]}}.
    {test_heap,6,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,648}.
    return.


{function, '-silly_bc/1-lbc$^0/2-0-', 2, 650}.
  {label,649}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",210}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-silly_bc/1-lbc$^0/2-0-'},2}.
  {label,650}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,651},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[210,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,8},
                          {atom,integer},
                          3,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {call_only,2,{f,650}}. % '-silly_bc/1-lbc$^0/2-0-'/2
  {label,651}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed_size/2-lbc$^0/2-0-', 3, 653}.
  {label,652}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-mixed_size/2-lbc$^0/2-0-'},
               3}.
  {label,653}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,is_nonempty_list,{f,654},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,657}}. % '-mixed_size/2-lbc$^1/2-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,653},2}. % '-mixed_size/2-lbc$^0/2-0-'/3
  {label,654}.
    {test,is_nil,{f,655},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,655}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^1/2-1-', 3, 657}.
  {label,656}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-mixed_size/2-lbc$^1/2-1-'},
               3}.
  {label,657}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,658},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {x,2},
           1,
           {field_flags,[{anno,[197,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {bs_create_bin,{f,0},
                   0,4,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{0,'+inf'}}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,3,{f,657}}. % '-mixed_size/2-lbc$^1/2-1-'/3
  {label,658}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed_nested/1-lbc$^0/2-0-', 2, 660}.
  {label,659}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",194}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-mixed_nested/1-lbc$^0/2-0-'},
               2}.
  {label,660}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,661},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{1,3}}},
                          {integer,16}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {call_only,2,{f,660}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
  {label,661}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-fun-26-', 1, 663}.
  {label,662}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",186}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-fun-26-'},1}.
  {label,663}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",187}]}.
    {call,2,{f,666}}. % '-mixed/1-lc$^25/1-25-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test,is_nil,{f,664},[{tr,{x,0},{t_list,{t_atom,[ok]},nil}}]}.
    {deallocate,0}.
    return.
  {label,664}.
    {badmatch,{x,0}}.


{function, '-mixed/1-lc$^25/1-25-', 2, 666}.
  {label,665}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",187}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lc$^25/1-25-'},2}.
  {label,666}.
    {test,bs_start_match3,{f,667},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,667},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {gc_bif,'bsr',
            {f,0},
            4,
            [{tr,{x,3},{t_integer,{0,'+inf'}}},{integer,1}],
            {x,3}}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_skip_bits2,
          {f,667},
          [{x,2},
           {tr,{x,3},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {bs_get_tail,{x,2},{x,0},3}.
    {call,2,{f,666}}. % '-mixed/1-lc$^25/1-25-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,667}.
    {test,bs_start_match3,{f,668},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,668},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {gc_bif,'bsr',
            {f,0},
            4,
            [{tr,{x,3},{t_integer,{0,'+inf'}}},{integer,1}],
            {x,3}}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_skip_bits2,
          {f,668},
          [{x,2},
           {tr,{x,3},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {call_only,2,{f,666}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,668}.
    {test,is_bitstr,{f,669},[{x,0}]}.
    {move,nil,{x,0}}.
    return.
  {label,669}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^23/2-23-', 2, 671}.
  {label,670}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^23/2-23-'},2}.
  {label,671}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{1,1}},nil},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,672},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,674}}. % '-mixed/1-lbc$^24/2-24-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,671},1}. % '-mixed/1-lbc$^23/2-23-'/2
  {label,672}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^24/2-24-', 2, 674}.
  {label,673}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^24/2-24-'},2}.
  {label,674}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,675},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<1>>},
                          {integer,1}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,674}}. % '-mixed/1-lbc$^24/2-24-'/2
  {label,675}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lc$^21/1-21-', 1, 677}.
  {label,676}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lc$^21/1-21-'},1}.
  {label,677}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,678},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,3},
           1,
           {field_flags,[{anno,[155,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,2},2}.
    {move,{literal,[{a,1},{b,2}]},{x,0}}.
    {call_only,3,{f,680}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,678}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^22/1-22-', 3, 680}.
  {label,679}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lc$^22/1-22-'},3}.
  {label,680}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[a]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[a]},2 => {t_integer,{1,1}}}}},
                          {{2,{t_atom,[b]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[b]},2 => {t_integer,{2,2}}}}}],
                         none},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,7}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,1,false}}]}}.
    {test,is_nonempty_list,{f,681},[{x,0}]}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,3},{x,0}}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,7}}},{tr,{x,3},{t_integer,{1,2}}}],
            {y,0}}.
    {call,3,{f,680}}. % '-mixed/1-lc$^22/1-22-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,681}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,677}}. % '-mixed/1-lc$^21/1-21-'/1


{function, '-mixed/1-lc$^19/1-19-', 1, 683}.
  {label,682}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lc$^19/1-19-'},1}.
  {label,683}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,684},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,3},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,2},2}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call_only,3,{f,686}}. % '-mixed/1-lc$^20/1-20-'/3
  {label,684}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^20/1-20-', 3, 686}.
  {label,685}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lc$^20/1-20-'},3}.
  {label,686}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,7}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,687},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,3},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,7}}},{tr,{x,3},{t_integer,{0,7}}}],
            {y,0}}.
    {call,3,{f,686}}. % '-mixed/1-lc$^20/1-20-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,687}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,683}}. % '-mixed/1-lc$^19/1-19-'/1


{function, '-mixed/1-lbc$^18/2-18-', 2, 689}.
  {label,688}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",150}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^18/2-18-'},2}.
  {label,689}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_integer,{1,1}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{1,1}},
                                 2 => {t_integer,{1,2}}}}},
                          {{2,{t_integer,{2,2}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{2,2}},
                                 2 => {t_integer,{1,2}}}}},
                          {{2,{t_integer,{3,3}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{3,3}},
                                 2 => {t_integer,{1,2}}}}},
                          {{2,{t_integer,{4,4}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{4,4}},
                                 2 => {t_integer,{1,2}}}}}],
                         none},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,690},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,3},{t_integer,{1,4}}},{tr,{x,2},{t_integer,{1,2}}}],
            {x,2}}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{2,6}}},
                          {integer,3}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,689}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,690}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^16/2-16-', 2, 692}.
  {label,691}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^16/2-16-'},2}.
  {label,692}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,693},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,695}}. % '-mixed/1-lbc$^17/2-17-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,692},1}. % '-mixed/1-lbc$^16/2-16-'/2
  {label,693}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^17/2-17-', 3, 695}.
  {label,694}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^17/2-17-'},3}.
  {label,695}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,4}}}]}}.
    {test,is_nonempty_list,{f,696},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{1,4}}},{tr,{x,3},{t_integer,{1,2}}}],
            {x,3}}.
    {bs_create_bin,{f,0},
                   0,4,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{2,6}}},
                          {integer,3}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,3,{f,695}}. % '-mixed/1-lbc$^17/2-17-'/3
  {label,696}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^14/2-14-', 2, 698}.
  {label,697}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^14/2-14-'},2}.
  {label,698}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,699},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,3},
           1,
           {field_flags,[{anno,[146,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,0},{y,0},3}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,701}}. % '-mixed/1-lbc$^15/2-15-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,698},1}. % '-mixed/1-lbc$^14/2-14-'/2
  {label,699}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^15/2-15-', 3, 701}.
  {label,700}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^15/2-15-'},3}.
  {label,701}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,7}}}]}}.
    {test,is_nonempty_list,{f,702},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{0,7}}},{tr,{x,3},{t_integer,{1,2}}}],
            {x,3}}.
    {bs_create_bin,{f,0},
                   0,4,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{1,9}}},
                          {integer,3}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,3,{f,701}}. % '-mixed/1-lbc$^15/2-15-'/3
  {label,702}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^12/2-12-', 2, 704}.
  {label,703}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^12/2-12-'},2}.
  {label,704}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,705},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,3},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,0},{y,0},3}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call,3,{f,707}}. % '-mixed/1-lbc$^13/2-13-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,704},1}. % '-mixed/1-lbc$^12/2-12-'/2
  {label,705}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^13/2-13-', 3, 707}.
  {label,706}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^13/2-13-'},3}.
  {label,707}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,7}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,708},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,3},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{0,7}}},{tr,{x,3},{t_integer,{0,7}}}],
            {x,3}}.
    {bs_create_bin,{f,0},
                   0,4,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{0,14}}},
                          {integer,3}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,3,{f,707}}. % '-mixed/1-lbc$^13/2-13-'/3
  {label,708}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lc$^10/1-10-', 1, 710}.
  {label,709}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lc$^10/1-10-'},1}.
  {label,710}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,711},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[141,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,2},2}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,3,{f,713}}. % '-mixed/1-lc$^11/1-11-'/3
  {label,711}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^11/1-11-', 3, 713}.
  {label,712}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lc$^11/1-11-'},3}.
  {label,713}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,is_nonempty_list,{f,714},[{x,0}]}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{1,2}}}],
            {y,0}}.
    {call,3,{f,713}}. % '-mixed/1-lc$^11/1-11-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,714}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,710}}. % '-mixed/1-lc$^10/1-10-'/1


{function, '-mixed/1-lc$^8/1-8-', 1, 716}.
  {label,715}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lc$^8/1-8-'},1}.
  {label,716}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,717},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,2},2}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call_only,3,{f,719}}. % '-mixed/1-lc$^9/1-9-'/3
  {label,717}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^9/1-9-', 3, 719}.
  {label,718}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lc$^9/1-9-'},3}.
  {label,719}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,720},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}],
            {y,0}}.
    {call,3,{f,719}}. % '-mixed/1-lc$^9/1-9-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,720}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,716}}. % '-mixed/1-lc$^8/1-8-'/1


{function, '-mixed/1-lbc$^6/2-6-', 3, 722}.
  {label,721}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^6/2-6-'},3}.
  {label,722}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,723},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,726}}. % '-mixed/1-lbc$^7/2-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,722},2}. % '-mixed/1-lbc$^6/2-6-'/3
  {label,723}.
    {test,is_nil,{f,724},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,724}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^7/2-7-', 3, 726}.
  {label,725}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^7/2-7-'},3}.
  {label,726}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,727},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_number,any}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,3,{f,726}}. % '-mixed/1-lbc$^7/2-7-'/3
  {label,727}.
    {test,is_nil,{f,728},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,728}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^4/2-4-', 2, 730}.
  {label,729}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^4/2-4-'},2}.
  {label,730}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,731},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,733}}. % '-mixed/1-lbc$^5/2-5-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,730},1}. % '-mixed/1-lbc$^4/2-4-'/2
  {label,731}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^5/2-5-', 3, 733}.
  {label,732}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^5/2-5-'},3}.
  {label,733}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,4}}}]}}.
    {test,is_nonempty_list,{f,734},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{1,4}}},{tr,{x,3},{t_integer,{1,2}}}],
            {x,3}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{2,6}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,3,{f,733}}. % '-mixed/1-lbc$^5/2-5-'/3
  {label,734}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^2/2-2-', 2, 736}.
  {label,735}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^2/2-2-'},2}.
  {label,736}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,737},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[131,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,0},{y,0},3}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,739}}. % '-mixed/1-lbc$^3/2-3-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,736},1}. % '-mixed/1-lbc$^2/2-2-'/2
  {label,737}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^3/2-3-', 3, 739}.
  {label,738}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^3/2-3-'},3}.
  {label,739}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,255}}}]}}.
    {test,is_nonempty_list,{f,740},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{1,2}}}],
            {x,3}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{1,257}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,3,{f,739}}. % '-mixed/1-lbc$^3/2-3-'/3
  {label,740}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^0/2-0-', 2, 742}.
  {label,741}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,742}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,743},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,0},{y,0},3}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call,3,{f,745}}. % '-mixed/1-lbc$^1/2-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,742},1}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,743}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^1/2-1-', 3, 745}.
  {label,744}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},{atom,'-mixed/1-lbc$^1/2-1-'},3}.
  {label,745}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,746},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}],
            {x,3}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{0,510}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,3,{f,745}}. % '-mixed/1-lbc$^1/2-1-'/3
  {label,746}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lc$^3/1-3-', 1, 748}.
  {label,747}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",123}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^3/1-3-'},
               1}.
  {label,748}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,749},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,15},
           1,
           {field_flags,[{anno,[123,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call,1,{f,748}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,32767}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,749}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lbc$^2/2-2-', 2, 751}.
  {label,750}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",121}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,751}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,752},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,
                          {literal,[little]},
                          {tr,{x,2},{t_integer,{1,4}}},
                          {integer,31}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,751}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
  {label,752}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lc$^1/1-1-', 1, 754}.
  {label,753}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",119}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^1/1-1-'},
               1}.
  {label,754}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,755},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[119,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {gc_bif,'-',{f,0},2,[{tr,{x,1},{t_integer,{0,127}}},{integer,32}],{y,0}}.
    {call,1,{f,754}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{'-inf',95}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,755}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lbc$^0/2-0-', 2, 757}.
  {label,756}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",118}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,757}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,758},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{65,71}}},{integer,32}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{97,103}}},
                          {integer,7}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,757}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
  {label,758}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lc$^3/1-3-', 1, 760}.
  {label,759}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",112}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^3/1-3-'},
               1}.
  {label,760}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,761},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[112,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call,1,{f,760}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,65535}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,761}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lbc$^2/2-2-', 2, 763}.
  {label,762}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",110}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,763}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,764},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,
                          {literal,[little]},
                          {tr,{x,2},{t_integer,{1,4}}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,2,{f,763}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
  {label,764}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lc$^1/1-1-', 1, 766}.
  {label,765}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",108}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^1/1-1-'},
               1}.
  {label,766}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,767},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[108,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,255}}},{integer,32}],{y,0}}.
    {call,1,{f,766}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{32,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,767}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lbc$^0/2-0-', 2, 769}.
  {label,768}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",107}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,769}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,770},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{65,71}}},{integer,32}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{97,103}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,769}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
  {label,770}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^3/2-3-', 2, 772}.
  {label,771}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",102}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-bit_aligned/1-lbc$^3/2-3-'},
               2}.
  {label,772}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,773},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,15},
           1,
           {field_flags,[{anno,[102,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,
                          {literal,[little]},
                          {tr,{x,2},{t_integer,{0,32767}}},
                          {integer,31}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,772}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
  {label,773}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^2/2-2-', 2, 775}.
  {label,774}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",100}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,775}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,776},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,31},
           1,
           {field_flags,[{anno,[100,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,
                          {literal,[little]},
                          {tr,{x,2},{t_integer,{0,2147483647}}},
                          {integer,31}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,775}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
  {label,776}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^1/2-1-', 2, 778}.
  {label,777}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",98}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-bit_aligned/1-lbc$^1/2-1-'},
               2}.
  {label,778}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,780},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,779},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[98,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_get_tail,{x,2},{x,2},3}.
    {gc_bif,'-',{f,0},3,[{tr,{x,0},{t_integer,{0,127}}},{integer,32}],{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{-32,95}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,778}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
  {label,779}.
    {move,{x,1},{x,0}}.
    return.
  {label,780}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^0/2-0-', 2, 782}.
  {label,781}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",97}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,782}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,783},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[97,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}},{integer,32}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,1,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,1,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{32,287}}},
                          {integer,7}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {call_only,2,{f,782}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
  {label,783}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^3/2-3-', 2, 785}.
  {label,784}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",91}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-byte_aligned/1-lbc$^3/2-3-'},
               2}.
  {label,785}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,786},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[91,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,
                          {literal,[little]},
                          {tr,{x,2},{t_integer,{0,65535}}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,2,{f,785}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
  {label,786}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^2/2-2-', 2, 788}.
  {label,787}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",89}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,788}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,789},
          2,
          [{tr,{x,0},{t_bs_context,32}},
           {integer,32},
           1,
           {field_flags,[{anno,[89,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,
                          {literal,[little]},
                          {tr,{x,2},{t_integer,{0,4294967295}}},
                          {integer,32}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,2,{f,788}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
  {label,789}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^1/2-1-', 2, 791}.
  {label,790}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",87}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-byte_aligned/1-lbc$^1/2-1-'},
               2}.
  {label,791}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,792},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[87,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,32,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,32,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,8},
                          {atom,string},
                          0,8,nil,
                          {string,<<"xyz">>},
                          {integer,3}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {call_only,2,{f,791}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
  {label,792}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^0/2-0-', 2, 794}.
  {label,793}.
    {line,[{location,"bs_bincomp_r25_SUITE.erl",86}]}.
    {func_info,{atom,bs_bincomp_r25_SUITE},
               {atom,'-byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,794}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,795},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[86,{file,"bs_bincomp_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}},{integer,32}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{32,287}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,794}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
  {label,795}.
    {move,{x,1},{x,0}}.
    return.
