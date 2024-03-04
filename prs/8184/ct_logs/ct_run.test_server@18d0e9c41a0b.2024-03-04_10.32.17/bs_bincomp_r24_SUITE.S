{module, bs_bincomp_r24_SUITE}.  %% version = 0

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

{labels, 969}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",36}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",38}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[verify_highest_opcode,byte_aligned,bit_aligned,
                    extended_byte_aligned,extended_bit_aligned,mixed,filters,
                    trim_coverage,nomatch,sizes,general_expressions,
                    no_generator,zero_pattern,multiple_segments,grab_bag]},
          {x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",46}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,groups},0}.
  {label,6}.
    {move,nil,{x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",49}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_bincomp_r24_SUITE},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",50}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",53}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",56}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",59}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 16}.
  {label,15}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",62}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,verify_highest_opcode},1}.
  {label,16}.
    {move,{atom,ok},{x,0}}.
    return.


{function, byte_aligned, 1, 18}.
  {label,17}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",84}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,byte_aligned},1}.
  {label,18}.
    {test,is_list,{f,17},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",85}]}.
    {call,0,{f,312}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",86}]}.
    {call,2,{f,966}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,22},[{x,0},{literal,<<"abcdefg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABC">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",87}]}.
    {call,2,{f,962}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,21},[{x,0},{literal,<<"AxyzBxyzCxyz">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,1,0,0,0,2,0,0,0,3,0,0,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",89}]}.
    {call,2,{f,958}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,20},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,20},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,20},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",91}]}.
    {call,2,{f,954}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
    {test,bs_start_match3,{f,19},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,19},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,19},[{x,1},0]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",90}]}.
    {call,1,{f,316}}. % cs/1
    {call_last,0,{f,314},0}. % cs_end/0
  {label,19}.
    {badmatch,{x,0}}.
  {label,20}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",88}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",87}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",86}]}.
    {badmatch,{x,0}}.


{function, bit_aligned, 1, 24}.
  {label,23}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",94}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,bit_aligned},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",95}]}.
    {call,0,{f,312}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",97}]}.
    {call,2,{f,950}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,28},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,28},
          [{x,1},49,{string,<<195,139,30,76,185,179,128>>}]}.
    {test,bs_test_tail2,{f,28},[{x,1},0]}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",98}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,946}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,27},[{x,0},{literal,<<"ABCDEFG">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,2,0,0,0,8,0,0,0,24,0,0,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",100}]}.
    {call,2,{f,942}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,26},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,26},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,26},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",102}]}.
    {call,2,{f,938}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,25},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,25},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,25},[{x,1},0]}.
    {call_last,0,{f,314},1}. % cs_end/0
  {label,25}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",101}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",98}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",96}]}.
    {badmatch,{x,0}}.


{function, extended_byte_aligned, 1, 30}.
  {label,29}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",105}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,extended_byte_aligned},1}.
  {label,30}.
    {test,is_list,{f,29},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",106}]}.
    {call,0,{f,312}}. % cs_init/0
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",107}]}.
    {call,2,{f,934}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,34},[{x,0},{literal,<<"abcdefg">>}]}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",108}]}.
    {call,1,{f,930}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {test,is_eq_exact,{f,33},[{x,0},{literal,"abcdefg"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",110}]}.
    {call,2,{f,926}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,32},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,32},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,32},[{x,1},0]}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",112}]}.
    {call,1,{f,922}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {test,is_eq_exact,{f,31},[{x,0},{literal,[256,512,768,1024]}]}.
    {call_last,0,{f,314},0}. % cs_end/0
  {label,31}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",111}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",108}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",107}]}.
    {badmatch,{x,0}}.


{function, extended_bit_aligned, 1, 36}.
  {label,35}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",115}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,extended_bit_aligned},1}.
  {label,36}.
    {test,is_list,{f,35},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",116}]}.
    {call,0,{f,312}}. % cs_init/0
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",118}]}.
    {call,2,{f,918}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,40},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,40},
          [{x,1},49,{string,<<195,139,30,76,185,179,128>>}]}.
    {test,bs_test_tail2,{f,40},[{x,1},0]}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",119}]}.
    {call,1,{f,914}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {test,is_eq_exact,{f,39},[{x,0},{literal,"ABCDEFG"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",121}]}.
    {call,2,{f,910}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,38},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,38},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,38},[{x,1},0]}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",123}]}.
    {call,1,{f,906}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {test,is_eq_exact,{f,37},[{x,0},{literal,[256,512,768,1024]}]}.
    {call_last,0,{f,314},0}. % cs_end/0
  {label,37}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",117}]}.
    {badmatch,{x,0}}.


{function, mixed, 1, 42}.
  {label,41}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",126}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,mixed},1}.
  {label,42}.
    {test,is_list,{f,41},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",127}]}.
    {call,0,{f,312}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {call,2,{f,898}}. % '-mixed/1-lbc$^0/2-0-'/2
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,72},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {call,2,{f,890}}. % '-mixed/1-lbc$^2/2-2-'/2
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,71},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {call,2,{f,882}}. % '-mixed/1-lbc$^4/2-4-'/2
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,70},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",134}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",135}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,2}}.
    {gc_bif,length,{f,43},0,[{y,3}],{x,0}}.
    {gc_bif,length,{f,43},1,[{y,2}],{x,1}}.
    {gc_bif,'*',{f,43},2,[{x,1},{integer,1}],{x,1}}.
    {gc_bif,'*',{f,43},2,[{x,0},{x,1}],{x,0}}.
    {jump,{f,44}}.
  {label,43}.
    {move,{integer,256},{x,0}}.
  {label,44}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",137}]}.
    {call,3,{f,874}}. % '-mixed/1-lbc$^6/2-6-'/3
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,69},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {call,1,{f,866}}. % '-mixed/1-lc$^8/1-8-'/1
    {test,is_eq_exact,{f,68},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {call,1,{f,858}}. % '-mixed/1-lc$^10/1-10-'/1
    {test,is_eq_exact,{f,67},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {call,2,{f,850}}. % '-mixed/1-lbc$^12/2-12-'/2
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,66},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,66},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,66},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {call,2,{f,842}}. % '-mixed/1-lbc$^14/2-14-'/2
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,65},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,65},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,65},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {call,2,{f,834}}. % '-mixed/1-lbc$^16/2-16-'/2
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,64},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,64},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,64},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[{1,1},{1,2},{2,1},{2,2},{3,1},{3,2},{4,1},{4,2}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",150}]}.
    {call,2,{f,829}}. % '-mixed/1-lbc$^18/2-18-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,bs_start_match3,{f,63},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,63},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,63},[{x,1},0]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {call,1,{f,821}}. % '-mixed/1-lc$^19/1-19-'/1
    {test,is_eq_exact,{f,62},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {call,1,{f,812}}. % '-mixed/1-lc$^21/1-21-'/1
    {test,is_eq_exact,{f,61},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",158}]}.
    {call,1,{f,74}}. % mixed_nested/1
    {test,is_eq_exact,{f,60},[{x,0},{literal,<<0,1,0,2,0,3,99>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[1]]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {call,2,{f,804}}. % '-mixed/1-lbc$^23/2-23-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,59},[{x,0},{literal,<<1>>}]}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",164}]}.
    {call,1,{f,321}}. % id/1
    {move,{literal,<<"*Ký">>},{x,1}}.
    {call,2,{f,78}}. % mixed_size/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,
          {f,58},
          [{x,0},{literal,<<0,0,0,42,0,0,0,75,0,0,0,253,0,0,42,75>>}]}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",166}]}.
    {call,1,{f,80}}. % silly_lc_bc/1
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",168}]}.
    {call,1,{f,91}}. % gen_data/1
    {move,{integer,256},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",169}]}.
    {call,1,{f,91}}. % gen_data/1
    {move,{integer,512},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",170}]}.
    {call,1,{f,91}}. % gen_data/1
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",172}]}.
    {call,1,{f,96}}. % match_context_1/1
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,57},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{literal,<<4,5,6>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",173}]}.
    {call,1,{f,98}}. % match_context_2/1
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,56},[{x,0},{literal,<<4,5,6>>}]}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",175}]}.
    {call,0,{f,102}}. % over_complex_generator/0
    {test,is_eq_exact,{f,55},[{x,0},{literal,<<"ÿ">>}]}.
    {'catch',{y,3},{f,45}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",176}]}.
    {call,0,{f,104}}. % float_segment_size/0
  {label,45}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,54},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,54},[{x,1},{atom,'EXIT'}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",178}]}.
    {call,1,{f,106}}. % inconsistent_types_1/1
    {test,is_eq_exact,{f,53},[{x,0},{literal,<<>>}]}.
    {'catch',{y,2},{f,46}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",179}]}.
    {call,1,{f,106}}. % inconsistent_types_1/1
  {label,46}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,52},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,52},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,52},[{x,1}]}.
    {test,test_arity,{f,52},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,52},[{x,1},{literal,{bad_generator,42}}]}.
    {bif,self,{f,0},[],{y,3}}.
    {'catch',{y,1},{f,47}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[4]},{location,"bs_bincomp_r24_SUITE.erl",181}]}.
    {call,1,{f,106}}. % inconsistent_types_1/1
  {label,47}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,51},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,51},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,51},[{x,1}]}.
    {test,test_arity,{f,51},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,51},[{x,1},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,51},[{x,2},{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,51},[{x,1},{y,3}]}.
    {'catch',{y,0},{f,48}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",183}]}.
    {call,0,{f,108}}. % inconsistent_types_2/0
  {label,48}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,50},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,50},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,50},[{x,1}]}.
    {test,test_arity,{f,50},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,50},[{x,1},{literal,{bad_filter,<<>>}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,792},0,0,{y,3},{list,[]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",188}]}.
    {call,1,{f,321}}. % id/1
    {move,{y,3},{x,1}}.
    {trim,4,0}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",186}]}.
    {call_fun,1}.
    {test,is_nil,{f,49},[{x,0}]}.
    {call_last,0,{f,314},0}. % cs_end/0
  {label,49}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",183}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[4]},{location,"bs_bincomp_r24_SUITE.erl",179}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",178}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",176}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",175}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",173}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",172}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",158}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",154}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",152}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",149}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",147}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",145}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",140}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",138}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",136}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",130}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",128}]}.
    {badmatch,{x,0}}.


{function, mixed_nested, 1, 74}.
  {label,73}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",193}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,mixed_nested},1}.
  {label,74}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,75},0,[{y,1}],{x,0}}.
    {gc_bif,'*',{f,75},1,[{x,0},{integer,2}],{x,0}}.
    {jump,{f,76}}.
  {label,75}.
    {move,{integer,256},{x,0}}.
  {label,76}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",194}]}.
    {call,2,{f,788}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{y,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,321}}. % id/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{x,0},1],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,8,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{x,0},1,{field_flags,[]},{integer,99}}.
    {move,{x,1},{x,0}}.
    {deallocate,2}.
    return.


{function, mixed_size, 2, 78}.
  {label,77}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",196}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,mixed_size},2}.
  {label,78}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,780},2}. % '-mixed_size/2-lbc$^0/2-0-'/3


{function, silly_lc_bc, 1, 80}.
  {label,79}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",199}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,silly_lc_bc},1}.
  {label,80}.
    {test,is_lt,{f,81},[{integer,0},{x,0}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",200}]}.
    {call,1,{f,88}}. % silly_lc/1
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",201}]}.
    {call,1,{f,85}}. % silly_bc/1
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,83},[{x,0},{y,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",202}]}.
    {gc_bif,byte_size,{f,0},0,[{y,0}],{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",203}]}.
    {gc_bif,'bsl',{f,0},1,[{integer,5},{y,1}],{x,1}}.
    {test,is_eq_exact,{f,82},[{x,1},{x,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",204}]}.
    {gc_bif,'-',{f,0},0,[{y,1},{integer,1}],{x,0}}.
    {call_last,1,{f,80},2}. % silly_lc_bc/1
  {label,81}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,82}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",203}]}.
    {badmatch,{x,1}}.
  {label,83}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",201}]}.
    {badmatch,{x,0}}.


{function, silly_bc, 1, 85}.
  {label,84}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",207}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,silly_bc},1}.
  {label,85}.
    {test,is_eq_exact,{f,86},[{x,0},{integer,0}]}.
    {move,{literal,<<0,1,2,3,4>>},{x,0}}.
    return.
  {label,86}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",210}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,85}}. % silly_bc/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,776},1}. % '-silly_bc/1-lbc$^0/2-0-'/2


{function, silly_lc, 1, 88}.
  {label,87}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",212}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,silly_lc},1}.
  {label,88}.
    {test,is_eq_exact,{f,89},[{x,0},{integer,0}]}.
    {move,{literal,[0,1,2,3,4]},{x,0}}.
    return.
  {label,89}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",215}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {allocate,0,1}.
    {call,1,{f,88}}. % silly_lc/1
    {call_last,1,{f,772},0}. % '-silly_lc/1-lc$^0/1-0-'/1


{function, gen_data, 1, 91}.
  {label,90}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",217}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,gen_data},1}.
  {label,91}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",218}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,1}],{x,1}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,92},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,92},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,93}}.
  {label,92}.
    {move,{integer,256},{x,0}}.
  {label,93}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,768}}. % '-gen_data/1-lbc$^0/2-0-'/2
    {call,1,{f,316}}. % cs/1
    {line,[{location,"bs_bincomp_r24_SUITE.erl",219}]}.
    {gc_bif,'div',{f,0},1,[{y,1},{integer,256}],{x,1}}.
    {move,{x,0},{y,1}}.
    {move,{integer,1},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {call,2,{f,760}}. % '-gen_data/1-lbc$^1/2-1-'/2
    {test,is_eq_exact,{f,94},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,94}.
    {badmatch,{x,0}}.


{function, match_context_1, 1, 96}.
  {label,95}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",222}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,match_context_1},1}.
  {label,96}.
    {test,bs_start_match3,{f,95},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,95},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[222,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,756},1}. % '-match_context_1/1-lbc$^0/2-0-'/2


{function, match_context_2, 1, 98}.
  {label,97}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",225}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,match_context_2},1}.
  {label,98}.
    {test,bs_start_match3,{f,97},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,97},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[225,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,100}}. % do_match_context_2/1


{function, do_match_context_2, 1, 100}.
  {label,99}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",228}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,do_match_context_2},1}.
  {label,100}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,752},1}. % '-do_match_context_2/1-lbc$^0/2-0-'/2


{function, over_complex_generator, 0, 102}.
  {label,101}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",232}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,over_complex_generator},0}.
  {label,102}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0:2>>},{x,0}}.
    {call_last,2,{f,743},0}. % '-over_complex_generator/0-lbc$^0/2-0-'/2


{function, float_segment_size, 0, 104}.
  {label,103}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",247}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,float_segment_size},0}.
  {label,104}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{float,0.79},{x,2}}.
    {move,{integer,42},{x,0}}.
    {call_last,3,{f,738},0}. % '-float_segment_size/0-lbc$^0/2-0-'/3


{function, inconsistent_types_1, 1, 106}.
  {label,105}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",263}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,inconsistent_types_1},1}.
  {label,106}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,728},1}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3


{function, inconsistent_types_2, 0, 108}.
  {label,107}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",278}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,inconsistent_types_2},0}.
  {label,108}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",280}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",282}]}.
    {call,3,{f,720}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
    {select_val,{x,0},
                {f,111},
                {list,[{atom,false},{f,110},{atom,true},{f,109}]}}.
  {label,109}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",279}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,110}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,111}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",280}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.


{function, filters, 1, 113}.
  {label,112}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",290}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,filters},1}.
  {label,113}.
    {test,is_list,{f,112},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",291}]}.
    {call,0,{f,312}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",293}]}.
    {call,2,{f,715}}. % '-filters/1-lbc$^0/2-0-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,122},[{x,0},{literal,<<"BDF">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {call,2,{f,707}}. % '-filters/1-lbc$^1/2-1-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,121},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {call,2,{f,699}}. % '-filters/1-lbc$^2/2-2-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,120},[{x,0},{literal,<<"efg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {call,2,{f,691}}. % '-filters/1-lbc$^3/2-3-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,119},[{x,0},{literal,<<"b">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {call,2,{f,683}}. % '-filters/1-lbc$^4/2-4-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,118},[{x,0},{literal,<<"eg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[],[a],[],[x,y,z]]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",310}]}.
    {call,2,{f,676}}. % '-filters/1-lbc$^5/2-5-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,117},[{x,0},{literal,<<1,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<"M">>,<<1,2>>,<<"*">>]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",316}]}.
    {call,2,{f,671}}. % '-filters/1-lbc$^6/2-6-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,116},[{x,0},{literal,<<"M*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<97,98,227,100,229,0:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",319}]}.
    {call,2,{f,666}}. % '-filters/1-lbc$^7/2-7-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,115},[{x,0},{literal,<<"abd">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,42,43,42]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",323}]}.
    {call,2,{f,661}}. % '-filters/1-lbc$^8/2-8-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,114},[{x,0},{literal,<<"**">>}]}.
    {call_last,0,{f,314},0}. % cs_end/0
  {label,114}.
    {badmatch,{x,0}}.
  {label,115}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",319}]}.
    {badmatch,{x,0}}.
  {label,116}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",316}]}.
    {badmatch,{x,0}}.
  {label,117}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,118}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {badmatch,{x,0}}.
  {label,119}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,120}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {badmatch,{x,0}}.
  {label,121}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {badmatch,{x,0}}.
  {label,122}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",292}]}.
    {badmatch,{x,0}}.


{function, is_less_than, 2, 124}.
  {label,123}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",326}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,is_less_than},2}.
  {label,124}.
    {bif,'<',{f,0},[{x,0},{x,1}],{x,0}}.
    return.


{function, trim_coverage, 1, 126}.
  {label,125}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",329}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,trim_coverage},1}.
  {label,126}.
    {test,is_list,{f,125},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,b},{x,1}}.
    {move,{literal,{1328,777134}},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",330}]}.
    {call,3,{f,132}}. % coverage_materialiv/3
    {test,is_eq_exact,
          {f,130},
          [{x,0},{literal,<<0,0,0,2,0,0,5,48,0,11,219,174,0,0,0,0>>}]}.
    {move,{literal,[42,19,777]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",331}]}.
    {call,1,{f,142}}. % coverage_trimmer/1
    {test,is_eq_exact,
          {f,129},
          [{x,0},{literal,<<67,40,0,0,66,152,0,0,69,66,64,0>>}]}.
    {move,{integer,777},{x,1}}.
    {move,{literal,{3.0,40.0,-3555.0}},{x,2}}.
    {move,{integer,555},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",334}]}.
    {call,3,{f,138}}. % coverage_lightfv/3
    {test,is_eq_exact,
          {f,128},
          [{x,0},
           {literal,<<0,0,2,43,0,0,3,9,0,0,0,3,64,8,0,0,0,0,0,0,64,68,0,0,0,
                      0,0,0,192,171,198,0,0,0,0,0>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",335}]}.
    {call,2,{f,146}}. % coverage_strange/2
    {test,is_eq_exact,{f,127},[{x,0},{literal,<<"abcabc">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,127}.
    {badmatch,{x,0}}.
  {label,128}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",332}]}.
    {badmatch,{x,0}}.
  {label,129}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",331}]}.
    {badmatch,{x,0}}.
  {label,130}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",330}]}.
    {badmatch,{x,0}}.


{function, coverage_materialiv, 3, 132}.
  {label,131}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",338}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,coverage_materialiv},3}.
  {label,132}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",339}]}.
    {call,1,{f,321}}. % id/1
    {test,is_eq_exact,{f,136},[{x,0},{y,2}]}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",340}]}.
    {call,1,{f,321}}. % id/1
    {test,is_eq_exact,{f,135},[{x,0},{y,1}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",341}]}.
    {bif,tuple_size,{f,0},[{y,0}],{y,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",342}]}.
    {call_ext,1,{extfunc,erlang,tuple_to_list,1}}.
    {move,{x,0},{y,1}}.
    {gc_bif,length,{f,133},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,133},1,[{x,0},{integer,4}],{x,0}}.
    {jump,{f,134}}.
  {label,133}.
    {move,{integer,256},{x,0}}.
  {label,134}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,657}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
    {line,[{location,"bs_bincomp_r24_SUITE.erl",343}]}.
    {bif,tuple_size,{f,0},[{y,0}],{x,1}}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,1}}.
    {gc_bif,'rem',{f,0},2,[{x,1},{integer,2}],{x,1}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,32}],{x,1}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",341}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,4},8],{x,2}}.
    {bs_add,{f,0},[{x,2},{x,1},1],{x,2}}.
    {gc_bif,byte_size,{f,0},3,[{x,0}],{x,3}}.
    {bs_add,{f,0},[{x,2},{x,3},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{y,2}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{x,1},1,{field_flags,[]},{integer,0}}.
    {move,{x,2},{x,0}}.
    {deallocate,3}.
    return.
  {label,135}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,136}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",339}]}.
    {badmatch,{x,0}}.


{function, coverage_lightfv, 3, 138}.
  {label,137}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",345}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,coverage_lightfv},3}.
  {label,138}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",346}]}.
    {gc_bif,size,{f,0},3,[{x,2}],{x,3}}.
    {allocate,5,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",347}]}.
    {call_ext,1,{extfunc,erlang,tuple_to_list,1}}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,139},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,139},1,[{x,0},{integer,8}],{x,0}}.
    {jump,{f,140}}.
  {label,139}.
    {move,{integer,256},{x,0}}.
  {label,140}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,653}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
    {line,[{location,"bs_bincomp_r24_SUITE.erl",348}]}.
    {gc_bif,size,{f,0},1,[{y,2}],{x,1}}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,1}}.
    {gc_bif,'rem',{f,0},2,[{x,1},{integer,2}],{x,1}}.
    {gc_bif,'*',{f,0},2,[{x,1},{integer,32}],{x,1}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",346}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,12},8],{x,2}}.
    {bs_add,{f,0},[{x,2},{x,1},1],{x,2}}.
    {gc_bif,byte_size,{f,0},3,[{x,0}],{x,3}}.
    {bs_add,{f,0},[{x,2},{x,3},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{y,4}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{y,3}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{y,1}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{x,1},1,{field_flags,[]},{integer,0}}.
    {move,{x,2},{x,0}}.
    {call_last,1,{f,321},5}. % id/1


{function, coverage_trimmer, 1, 142}.
  {label,141}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",350}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,coverage_trimmer},1}.
  {label,142}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",351}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",352}]}.
    {call,1,{f,321}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",353}]}.
    {call,1,{f,321}}. % id/1
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,648},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2


{function, coverage_summer, 4, 144}.
  {label,143}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",358}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,coverage_summer},4}.
  {label,144}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,2}],{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,3}],{x,0}}.
    return.


{function, coverage_strange, 2, 146}.
  {label,145}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",360}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,coverage_strange},2}.
  {label,146}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",362}]}.
    {call,2,{f,644}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",363}]}.
    {call,2,{f,640}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
    {move,{x,0},{y,1}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",361}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{x,0},8],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,1,{y,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{x,0},8,{field_flags,[]},{y,1}}.
    {move,{x,1},{x,0}}.
    {deallocate,3}.
    return.


{function, nomatch, 1, 148}.
  {label,147}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",374}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,nomatch},1}.
  {label,148}.
    {test,is_list,{f,147},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",375}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {call,2,{f,636}}. % '-nomatch/1-lbc$^0/2-0-'/2
    {test,is_eq_exact,{f,166},[{x,0},{literal,<<>>}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {call,1,{f,634}}. % '-nomatch/1-lc$^1/1-1-'/1
    {test,is_nil,{f,165},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {call,1,{f,631}}. % '-nomatch/1-lc$^2/1-2-'/1
    {test,is_nil,{f,164},[{x,0}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {call,2,{f,629}}. % '-nomatch/1-lbc$^3/2-3-'/2
    {test,is_eq_exact,{f,163},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {call,2,{f,626}}. % '-nomatch/1-lbc$^4/2-4-'/2
    {test,is_eq_exact,{f,162},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {call,2,{f,622}}. % '-nomatch/1-lbc$^5/2-5-'/2
    {test,is_eq_exact,{f,161},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {call,2,{f,618}}. % '-nomatch/1-lbc$^6/2-6-'/2
    {test,is_eq_exact,{f,160},[{x,0},{literal,<<>>}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",387}]}.
    {call,2,{f,168}}. % nomatch_1/2
    {test,is_eq_exact,{f,159},[{x,0},{literal,<<0,0,0,1,0,0,0,2,0,0,0,3>>}]}.
    {move,{atom,bad},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",388}]}.
    {call,2,{f,168}}. % nomatch_1/2
    {test,is_eq_exact,{f,158},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",390}]}.
    {call,2,{f,614}}. % '-nomatch/1-lbc$^7/2-7-'/2
    {test,is_eq_exact,{f,157},[{x,0},{literal,<<>>}]}.
    {gc_bif,length,{f,149},0,[{atom,ok}],{x,0}}.
    {gc_bif,'*',{f,149},1,[{x,0},{integer,1}],{x,0}}.
    {gc_bif,'*',{f,149},1,[{x,0},{integer,0}],{x,0}}.
    {jump,{f,150}}.
  {label,149}.
    {move,{integer,256},{x,0}}.
  {label,150}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {call,2,{f,606}}. % '-nomatch/1-lbc$^8/2-8-'/2
    {call,1,{f,321}}. % id/1
    {test,is_eq_exact,{f,156},[{x,0},{literal,<<>>}]}.
    {gc_bif,length,{f,151},0,[{atom,ok}],{x,0}}.
    {gc_bif,'*',{f,151},1,[{x,0},{integer,0}],{x,0}}.
    {gc_bif,'*',{f,151},1,[{x,0},{integer,0}],{x,0}}.
    {jump,{f,152}}.
  {label,151}.
    {move,{integer,256},{x,0}}.
  {label,152}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {call,2,{f,598}}. % '-nomatch/1-lbc$^10/2-10-'/2
    {call,1,{f,321}}. % id/1
    {test,is_eq_exact,{f,155},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,153}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {call,2,{f,593}}. % '-nomatch/1-lbc$^12/2-12-'/2
  {label,153}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,154},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,154},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,154},[{x,1}]}.
    {test,test_arity,{f,154},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,154},[{x,1},{literal,{bad_generator,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,154}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",387}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {badmatch,{x,0}}.


{function, nomatch_1, 2, 168}.
  {label,167}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",402}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,nomatch_1},2}.
  {label,168}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,589},2}. % '-nomatch_1/2-lbc$^0/2-0-'/3


{function, sizes, 1, 170}.
  {label,169}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",405}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,sizes},1}.
  {label,170}.
    {test,is_list,{f,169},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",406}]}.
    {call,0,{f,312}}. % cs_init/0
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,581},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",410}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,227},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",411}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,226},[{x,0},{literal,<<1>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",412}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,225},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",413}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,224},[{x,0},{literal,<<1,2,3>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,573},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",418}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,223},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",419}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,222},[{x,0},{literal,<<0,1>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",420}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,221},[{x,0},{literal,<<0,1,0,2>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",421}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,220},[{x,0},{literal,<<0,1,0,2,0,3>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,565},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",426}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,219},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",427}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,218},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,218},[{x,1},4,{string,<<16>>}]}.
    {test,bs_test_tail2,{f,218},[{x,1},0]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,13]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",428}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,217},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,217},[{x,1},8,{string,<<29>>}]}.
    {test,bs_test_tail2,{f,217},[{x,1},0]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,13,7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",429}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,216},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,216},[{x,1},12,{string,<<29,112>>}]}.
    {test,bs_test_tail2,{f,216},[{x,1},0]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2000},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",430}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call_fun,1}.
    {test,bs_start_match3,{f,215},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,215},
          2,
          [{x,1},
           {integer,1000},
           8,
           {field_flags,[{anno,[430,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,215},[{x,2},{integer,0}]}.
    {test,bs_test_tail2,{f,215},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,557},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",435}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,214},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,2,1,3,0,7,5]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",436}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,213},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,213},[{x,1},21,{string,<<"(±è">>}]}.
    {test,bs_test_tail2,{f,213},[{x,1},0]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,512},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",437}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call_fun,1}.
    {test,bs_start_match3,{f,212},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,212},
          2,
          [{x,1},
           {integer,512},
           3,
           {field_flags,[{anno,[437,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,212},[{x,2},{integer,0}]}.
    {test,bs_test_tail2,{f,212},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,549},0,0,{y,1},{list,[]}}.
    {move,{integer,8},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",442}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,211},[{x,0},{literal,<<>>}]}.
    {move,{integer,6},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",443}]}.
    {call_fun,2}.
    {test,bs_start_match3,{f,210},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,210},[{x,1},6,{string,<<"¨">>}]}.
    {test,bs_test_tail2,{f,210},[{x,1},0]}.
    {move,{integer,16},{x,1}}.
    {move,{y,1},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",444}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,209},[{x,0},{literal,<<0,42>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,541},0,0,{y,1},{list,[]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",449}]}.
    {call_fun,4}.
    {test,is_eq_exact,{f,208},[{x,0},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,7},{x,3}}.
    {move,{integer,3},{x,1}}.
    {move,{y,1},{x,4}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",450}]}.
    {call_fun,4}.
    {test,bs_start_match3,{f,207},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,207},
          [{x,1},99,{string,<<224,0,0,0,1,0,0,0,0,0,0,1,32>>}]}.
    {test,bs_test_tail2,{f,207},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,533},0,0,{y,1},{list,[]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",456}]}.
    {call_fun,4}.
    {test,is_eq_exact,{f,206},[{x,0},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,7},{x,3}}.
    {move,{integer,3},{x,1}}.
    {move,{y,1},{x,4}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",457}]}.
    {call_fun,4}.
    {test,bs_start_match3,{f,205},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,205},
          [{x,1},
           171,
           {string,<<97,98,99,224,0,0,0,1,14,46,46,32,0,0,0,0,0,1,47,15,47,
                     64>>}]}.
    {test,bs_test_tail2,{f,205},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,525},0,0,{y,1},{list,[]}}.
    {move,{integer,42},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",462}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,204},[{x,0},{literal,<<>>}]}.
    {move,{integer,20},{x,1}}.
    {move,{y,1},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",463}]}.
    {call_fun,2}.
    {test,bs_start_match3,{f,203},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,203},[{x,1},28,{string,<<42,0,2,176>>}]}.
    {test,bs_test_tail2,{f,203},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,519},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,"Foundation"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",468}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,202},[{x,0},{literal,<<"Foundation">>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[1054,1089,1085,1086,1074,1072,1085,1080,1077]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",469}]}.
    {call_fun,1}.
    {test,is_eq_exact,
          {f,201},
          [{x,0},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,513},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",476}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,200},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",477}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,199},[{x,0},{literal,<<0,1>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",478}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,198},[{x,0},{literal,<<0,1,0,2>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,507},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",483}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,197},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",484}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,196},[{x,0},{literal,<<1>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",485}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,195},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",486}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,194},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,0:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",487}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,193},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",488}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,192},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,21,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",489}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,191},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<0,1,0,2,1,127:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",490}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,190},[{x,0},{literal,<<1,2>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,501},0,0,{y,1},{list,[]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",495}]}.
    {call_fun,3}.
    {test,is_eq_exact,{f,189},[{x,0},{literal,<<>>}]}.
    {move,{integer,255},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",496}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,2}}.
    {move,{y,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",497}]}.
    {call_fun,3}.
    {test,is_eq_exact,{f,188},[{x,0},{y,0}]}.
    {move,{integer,4},{x,2}}.
    {move,{integer,4},{x,1}}.
    {move,{y,1},{x,3}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",498}]}.
    {call_fun,3}.
    {test,is_eq_exact,{f,187},[{x,0},{y,0}]}.
    {move,{integer,8},{x,2}}.
    {move,{integer,8},{x,1}}.
    {move,{y,1},{x,3}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",499}]}.
    {call_fun,3}.
    {test,is_eq_exact,{f,186},[{x,0},{y,0}]}.
    {move,{integer,6},{x,2}}.
    {move,{integer,9},{x,1}}.
    {move,{y,1},{x,3}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<69,3:4>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",500}]}.
    {call_fun,3}.
    {test,bs_start_match3,{f,185},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,185},[{x,1},18,{string,<<8,132,192>>}]}.
    {test,bs_test_tail2,{f,185},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,495},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",505}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,184},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",506}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,183},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",507}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,182},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,6},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",508}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,181},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",509}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,180},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",510}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,179},[{x,0},{literal,<<1,2,3,0,0>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",512}]}.
    {call,2,{f,491}}. % '-sizes/1-lbc$^26/2-13-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,bs_start_match3,{f,178},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,178},[{x,1},3,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,178},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {call,2,{f,487}}. % '-sizes/1-lbc$^27/2-14-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,bs_start_match3,{f,177},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,177},[{x,1},3,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,177},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,477},0,0,{y,1},{list,[]}}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",518}]}.
    {call_fun,2}.
    {test,is_eq_exact,
          {f,176},
          [{x,0},{literal,<<0,0,0,97,0,0,0,98,0,0,0,99,0,0,97,98>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{y,1},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[8,bad]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",519}]}.
    {call_fun,2}.
    {test,is_eq_exact,
          {f,175},
          [{x,0},{literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,471},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,0,0,70,0,0,0,111,0,0,0,117,0,0,0,110,0,0,0,100,0,0,0,
                     97,0,0,0,116,0,0,0,105,0,0,0,111,0,0,0,110>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",524}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,174},[{x,0},{literal,<<"Foundation">>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<0,0,4,30,0,0,4,65,0,0,4,61,0,0,4,62,0,0,4,50,0,0,4,48,0,
                     0,4,61,0,0,4,56,0,0,4,53>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",525}]}.
    {call_fun,1}.
    {test,is_eq_exact,
          {f,173},
          [{x,0},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,1},{f,171}}.
    {move,{literal,{1,2,3}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",527}]}.
    {call,2,{f,467}}. % '-sizes/1-lbc$^33/2-18-'/2
  {label,171}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,172},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,172},[{x,1},{atom,'EXIT'}]}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",529}]}.
    {call,0,{f,314}}. % cs_end/0
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,172}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",527}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",525}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",524}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",519}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",518}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",512}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",510}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",509}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",508}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",507}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",506}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",505}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",500}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",499}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",498}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",497}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",495}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",490}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",489}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",488}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",487}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",486}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",485}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",484}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",483}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",478}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",477}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",476}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",469}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",468}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",463}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",462}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",457}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",456}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",450}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",449}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",444}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",437}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,215}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,216}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,217}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,218}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,219}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",426}]}.
    {badmatch,{x,0}}.
  {label,220}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,222}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,224}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",413}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",410}]}.
    {badmatch,{x,0}}.


{function, general_expressions, 1, 229}.
  {label,228}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",535}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,general_expressions},1}.
  {label,229}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",536}]}.
    {call,0,{f,312}}. % cs_init/0
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {call,2,{f,463}}. % '-general_expressions/1-lbc$^0/2-0-'/2
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,253},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {call,2,{f,459}}. % '-general_expressions/1-lbc$^1/2-1-'/2
    {call,1,{f,316}}. % cs/1
    {test,is_eq_exact,{f,252},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {call,2,{f,455}}. % '-general_expressions/1-lbc$^2/2-2-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,251},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<1,2>>,<<3>>]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {call,2,{f,451}}. % '-general_expressions/1-lbc$^3/2-3-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,250},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {call,2,{f,447}}. % '-general_expressions/1-lbc$^4/2-4-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,249},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4,5]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {call,2,{f,439}}. % '-general_expressions/1-lbc$^5/2-5-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,248},[{x,0},{literal,<<2,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {call,2,{f,431}}. % '-general_expressions/1-lbc$^6/2-6-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,247},[{x,0},{literal,<<2,3,4,5,6,7>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {call,2,{f,425}}. % '-general_expressions/1-lbc$^8/2-8-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,246},[{x,0},{literal,<<1,2,2,3,4,4>>}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,<<"*">>},{x,1}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",556}]}.
    send.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",557}]}.
    {call,2,{f,418}}. % '-general_expressions/1-lbc$^9/2-9-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,245},[{x,0},{literal,<<"*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {call,2,{f,412}}. % '-general_expressions/1-lbc$^10/2-10-'/2
    {call,1,{f,318}}. % cs_default/1
    {test,is_eq_exact,{f,244},[{x,0},{literal,<<10,5,3>>}]}.
    {move,{literal,"3A7"},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",564}]}.
    {call,1,{f,255}}. % hstring_to_bitstring/1
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,243},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,243},[{x,1},12,{string,<<":p">>}]}.
    {test,bs_test_tail2,{f,243},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",565}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{literal,{65,8}},{x,0}}.
    {call,1,{f,321}}. % id/1
    {move,{y,5},{x,1}}.
    {move,{x,0},{x,2}}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{literal,"ABCDEFGH"},{x,0}}.
    {call,3,{f,262}}. % encode_chars_compact_map/3
    {call,1,{f,316}}. % cs/1
    {test,bs_start_match3,{f,242},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,242},[{x,1},24,{string,<<5,57,119>>}]}.
    {test,bs_test_tail2,{f,242},[{x,1},0]}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",567}]}.
    {call,0,{f,314}}. % cs_end/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,5},{f,230}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {call,2,{f,408}}. % '-general_expressions/1-lbc$^11/2-11-'/2
  {label,230}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,241},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,241},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,241},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,241},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,4},{f,231}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_r24_SUITE.erl",571}]}.
    {call,2,{f,404}}. % '-general_expressions/1-lbc$^12/2-12-'/2
  {label,231}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,240},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,240},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,240},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,240},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,3},{f,232}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",572}]}.
    {call,2,{f,400}}. % '-general_expressions/1-lbc$^13/2-13-'/2
  {label,232}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,239},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,239},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,239},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,239},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,2},{f,233}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",573}]}.
    {call,2,{f,396}}. % '-general_expressions/1-lbc$^14/2-14-'/2
  {label,233}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,238},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,238},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,238},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,238},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,1},{f,234}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_bincomp_r24_SUITE.erl",574}]}.
    {call,2,{f,392}}. % '-general_expressions/1-lbc$^15/2-15-'/2
  {label,234}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,237},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,237},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,237},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,237},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,235}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {call,2,{f,386}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,235}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,236},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,236},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,236},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,236},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,236}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{scope,[4]},{location,"bs_bincomp_r24_SUITE.erl",573}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,241}.
    {line,[{scope,"\n"},{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,242}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",565}]}.
    {badmatch,{x,0}}.
  {label,243}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",564}]}.
    {badmatch,{x,0}}.
  {label,244}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,245}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,246}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,247}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,248}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {badmatch,{x,0}}.
  {label,249}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {badmatch,{x,0}}.
  {label,250}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {badmatch,{x,0}}.
  {label,251}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {badmatch,{x,0}}.
  {label,252}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {badmatch,{x,0}}.


{function, hstring_to_bitstring, 1, 255}.
  {label,254}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",579}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,hstring_to_bitstring},1}.
  {label,255}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,256},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,256},1,[{x,0},{integer,4}],{x,0}}.
    {gc_bif,'+',{f,256},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,256},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,257}}.
  {label,256}.
    {move,{integer,256},{x,0}}.
  {label,257}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,382},1}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2


{function, hex_to_int, 1, 259}.
  {label,258}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",582}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,hex_to_int},1}.
  {label,259}.
    {test,is_ge,{f,258},[{x,0},{integer,48}]}.
    {test,is_ge,{f,260},[{integer,57},{x,0}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,48}],{x,0}}.
    return.
  {label,260}.
    {test,is_ge,{f,258},[{x,0},{integer,65}]}.
    {test,is_ge,{f,258},[{integer,70},{x,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",583}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,55}],{x,0}}.
    return.


{function, encode_chars_compact_map, 3, 262}.
  {label,261}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",585}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,encode_chars_compact_map},3}.
  {label,262}.
    {test,is_tuple,{f,261},[{x,2}]}.
    {test,test_arity,{f,261},[{x,2},2]}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {gc_bif,length,{f,263},2,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,263},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,263},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,263},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,264}}.
  {label,263}.
    {move,{integer,256},{x,0}}.
  {label,264}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {get_tuple_element,{y,0},0,{x,4}}.
    {get_tuple_element,{y,0},1,{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,5,{f,378},3}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5


{function, enc_char_cm, 3, 266}.
  {label,265}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",588}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,enc_char_cm},3}.
  {label,266}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",589}]}.
    {gc_bif,'-',{f,0},3,[{x,0},{x,1}],{x,0}}.
    {test,is_ge,{f,267},[{x,0},{integer,0}]}.
    {test,is_lt,{f,267},[{x,0},{x,2}]}.
    return.
  {label,267}.
    {move,{atom,illegal},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",594}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, no_generator, 1, 269}.
  {label,268}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",599}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,no_generator},1}.
  {label,269}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",600}]}.
    {call,1,{f,321}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {test,is_eq_exact,{f,273},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test,is_eq_exact,{f,272},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {'catch',{y,0},{f,270}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",604}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{literal,[1]}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{x,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{literal,[1]}}.
    {move,{x,1},{x,0}}.
  {label,270}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,271},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,271},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,271},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,271},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,271}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",604}]}.
    {badmatch,{x,0}}.
  {label,272}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",601}]}.
    {badmatch,{x,0}}.
  {label,273}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",600}]}.
    {badmatch,{x,0}}.


{function, zero_pattern, 1, 275}.
  {label,274}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",608}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,zero_pattern},1}.
  {label,275}.
    {test,is_atom,{f,276},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",613}]}.
    {call,2,{f,375}}. % '-zero_pattern/1-lbc$^0/2-0-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",614}]}.
    {call,2,{f,372}}. % '-zero_pattern/1-lbc$^1/2-1-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {call,2,{f,366}}. % '-zero_pattern/1-lbc$^2/2-2-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,2,{f,358},0}. % '-zero_pattern/1-lbc$^4/2-4-'/2
  {label,276}.
    {move,{atom,ok},{x,0}}.
    return.


{function, multiple_segments, 1, 278}.
  {label,277}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",629}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,multiple_segments},1}.
  {label,278}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",630}]}.
    {call,0,{f,312}}. % cs_init/0
    {move,{literal,<<4,16,66>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",632}]}.
    {call,1,{f,290}}. % matched_out_size/1
    {test,is_eq_exact,{f,288},[{x,0},{literal,[1,2]}]}.
    {move,{literal,<<16,0,42,72>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",633}]}.
    {call,1,{f,290}}. % matched_out_size/1
    {test,is_eq_exact,{f,287},[{x,0},{literal,"*"}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",635}]}.
    {call,1,{f,293}}. % do_multiple_segments_1/1
    {test,is_nil,{f,286},[{x,0}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",636}]}.
    {call,1,{f,293}}. % do_multiple_segments_1/1
    {test,is_nil,{f,285},[{x,0}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",637}]}.
    {call,1,{f,293}}. % do_multiple_segments_1/1
    {test,is_nil,{f,284},[{x,0}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",638}]}.
    {call,1,{f,293}}. % do_multiple_segments_1/1
    {test,is_nil,{f,283},[{x,0}]}.
    {move,{literal,<<99,0,1,1,2,3,4,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",639}]}.
    {call,1,{f,293}}. % do_multiple_segments_1/1
    {test,is_eq_exact,{f,282},[{x,0},{literal,[1,4]}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",641}]}.
    {call,1,{f,296}}. % do_multiple_segments_2/1
    {test,is_nil,{f,281},[{x,0}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",642}]}.
    {call,1,{f,296}}. % do_multiple_segments_2/1
    {test,is_eq_exact,{f,280},[{x,0},{literal,[6]}]}.
    {move,{literal,<<1,2,3,4,5,6,7,8>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",643}]}.
    {call,1,{f,296}}. % do_multiple_segments_2/1
    {test,is_eq_exact,{f,279},[{x,0},{literal,[6,15]}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",645}]}.
    {call,0,{f,314}}. % cs_end/0
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,279}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",643}]}.
    {badmatch,{x,0}}.
  {label,280}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",642}]}.
    {badmatch,{x,0}}.
  {label,281}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",641}]}.
    {badmatch,{x,0}}.
  {label,282}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",639}]}.
    {badmatch,{x,0}}.
  {label,283}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",638}]}.
    {badmatch,{x,0}}.
  {label,284}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",637}]}.
    {badmatch,{x,0}}.
  {label,285}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",636}]}.
    {badmatch,{x,0}}.
  {label,286}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",635}]}.
    {badmatch,{x,0}}.
  {label,287}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",633}]}.
    {badmatch,{x,0}}.
  {label,288}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",632}]}.
    {badmatch,{x,0}}.


{function, matched_out_size, 1, 290}.
  {label,289}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",648}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,matched_out_size},1}.
  {label,290}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",649}]}.
    {call,2,{f,353}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
    {call,1,{f,318}}. % cs_default/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",650}]}.
    {call,1,{f,348}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",651}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,{f,291},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,291}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_1, 1, 293}.
  {label,292}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",654}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,do_multiple_segments_1},1}.
  {label,293}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",655}]}.
    {call,2,{f,343}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
    {call,1,{f,318}}. % cs_default/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",656}]}.
    {call,1,{f,338}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",657}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,{f,294},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,294}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_2, 1, 296}.
  {label,295}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",660}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,do_multiple_segments_2},1}.
  {label,296}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",661}]}.
    {call,2,{f,334}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
    {call,1,{f,316}}. % cs/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",662}]}.
    {call,1,{f,330}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",663}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,{f,297},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,297}.
    {badmatch,{x,0}}.


{function, grab_bag, 1, 299}.
  {label,298}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",666}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,grab_bag},1}.
  {label,299}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {'catch',{y,3},{f,300}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",667}]}.
    {call,1,{f,309}}. % grab_bag_gh_6553/1
  {label,300}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,307},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,307},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,307},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,307},[{x,1},{atom,function_clause}]}.
    {'catch',{y,2},{f,301}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[7]},{location,"bs_bincomp_r24_SUITE.erl",668}]}.
    {call,1,{f,309}}. % grab_bag_gh_6553/1
  {label,301}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,306},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,306},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,306},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,306},[{x,1},{atom,function_clause}]}.
    {'catch',{y,1},{f,302}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[5]},{location,"bs_bincomp_r24_SUITE.erl",669}]}.
    {call,1,{f,309}}. % grab_bag_gh_6553/1
  {label,302}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,305},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,305},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,305},[{x,1}]}.
    {test,test_arity,{f,305},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,305},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,0},{f,303}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[3]},{location,"bs_bincomp_r24_SUITE.erl",672}]}.
    {call,2,{f,327}}. % '-grab_bag/1-lbc$^0/2-0-'/2
    {try_end,{y,0}}.
    {jump,{f,304}}.
  {label,303}.
    {try_case,{y,0}}.
  {label,304}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,305}.
    {line,[{scope,[3]},{location,"bs_bincomp_r24_SUITE.erl",669}]}.
    {badmatch,{x,0}}.
  {label,306}.
    {line,[{scope,[5]},{location,"bs_bincomp_r24_SUITE.erl",668}]}.
    {badmatch,{x,0}}.
  {label,307}.
    {line,[{scope,[7]},{location,"bs_bincomp_r24_SUITE.erl",667}]}.
    {badmatch,{x,0}}.


{function, grab_bag_gh_6553, 1, 309}.
  {label,308}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",676}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,grab_bag_gh_6553},1}.
  {label,309}.
    {test,bs_start_match3,{f,308},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,308},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[676,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,308},[{x,1},0]}.
    {move,{literal,<<>>},{x,0}}.
    {test,bs_start_match3,{f,310},3,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,310},[{x,0},0]}.
    {move,{literal,<<>>},{x,0}}.
    {test,bs_start_match3,{f,310},3,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,310},[{x,0},8]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",678}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{literal,<<>>}}.
    {move,{x,3},{x,0}}.
    return.
  {label,310}.
    {badmatch,{literal,<<>>}}.


{function, cs_init, 0, 312}.
  {label,311}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",680}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_init},0}.
  {label,312}.
    {allocate,0,0}.
    {move,{atom,true},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",681}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs_end, 0, 314}.
  {label,313}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",684}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_end},0}.
  {label,314}.
    {allocate,0,0}.
    {move,{atom,false},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",685}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs, 1, 316}.
  {label,315}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",689}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs},1}.
  {label,316}.
    return.


{function, cs_default, 1, 318}.
  {label,317}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",717}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_default},1}.
  {label,318}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",718}]}.
    {gc_bif,byte_size,{f,0},1,[{x,0}],{x,1}}.
    {allocate_heap,2,3,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {put_tuple2,{x,0},{list,[{atom,binary_info},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",720}]}.
    {call_ext,1,{extfunc,erts_debug,get_internal_state,1}}.
    {test,is_tagged_tuple,{f,319},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,319},[{x,1},{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,319},[{x,1},{literal,{binary,256}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,319},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,319}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",719}]}.
    {badmatch,{x,0}}.


{function, id, 1, 321}.
  {label,320}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",723}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,id},1}.
  {label,321}.
    return.


{function, module_info, 0, 323}.
  {label,322}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,module_info},0}.
  {label,323}.
    {move,{atom,bs_bincomp_r24_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 325}.
  {label,324}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,module_info},1}.
  {label,325}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_bincomp_r24_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-grab_bag/1-lbc$^0/2-0-', 2, 327}.
  {label,326}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",672}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-grab_bag/1-lbc$^0/2-0-'},2}.
  {label,327}.
    {test,bs_start_match3,{f,328},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,328},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[672,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,327}}. % '-grab_bag/1-lbc$^0/2-0-'/2
  {label,328}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lc$^1/1-1-', 1, 330}.
  {label,329}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",662}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_2/1-lc$^1/1-1-'},
               1}.
  {label,330}.
    {test,bs_start_match3,{f,332},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,331},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,331},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,331},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,331},
          5,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {gc_bif,'+',{f,0},6,[{x,2},{x,3}],{x,0}}.
    {gc_bif,'+',{f,0},6,[{x,0},{x,4}],{x,0}}.
    {allocate,1,6}.
    {move,{x,0},{y,0}}.
    {move,{x,5},{x,0}}.
    {call,1,{f,330}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,331}.
    {move,nil,{x,0}}.
    return.
  {label,332}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lbc$^0/2-0-', 2, 334}.
  {label,333}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",661}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_2/1-lbc$^0/2-0-'},
               2}.
  {label,334}.
    {test,bs_start_match3,{f,336},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,335},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,335},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,335},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,335},
          6,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {gc_bif,'+',{f,0},7,[{x,3},{x,4}],{x,0}}.
    {gc_bif,'+',{f,0},7,[{x,0},{x,5}],{x,0}}.
    {move,{integer,0},{x,7}}.
    {bs_add,{f,0},[{x,7},{integer,1},8],{x,7}}.
    {test_heap,0,8}.
    {bs_private_append,{f,0},{x,7},1,{x,1},{field_flags,[]},{x,7}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,7},{x,1}}.
    {move,{x,6},{x,0}}.
    {call_only,2,{f,334}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
  {label,335}.
    {move,{x,1},{x,0}}.
    return.
  {label,336}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_1/1-lc$^1/1-1-', 1, 338}.
  {label,337}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",656}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_1/1-lc$^1/1-1-'},
               1}.
  {label,338}.
    {test,bs_start_match3,{f,341},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,340},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,340},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,340},
          4,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,339},[{x,3},{x,2}]}.
    {allocate,1,5}.
    {move,{x,2},{y,0}}.
    {move,{x,4},{x,0}}.
    {call,1,{f,338}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,339}.
    {move,{x,4},{x,0}}.
    {call_only,1,{f,338}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
  {label,340}.
    {move,nil,{x,0}}.
    return.
  {label,341}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_1/1-lbc$^0/2-0-', 2, 343}.
  {label,342}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",655}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_1/1-lbc$^0/2-0-'},
               2}.
  {label,343}.
    {test,bs_start_match3,{f,346},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,345},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,345},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,345},
          5,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,is_eq_exact,{f,344},[{x,4},{x,3}]}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,1},8],{x,6}}.
    {test_heap,0,7}.
    {bs_private_append,{f,0},{x,6},1,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,343}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,344}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,343}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,345}.
    {move,{x,1},{x,0}}.
    return.
  {label,346}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-matched_out_size/1-lc$^1/1-1-', 1, 348}.
  {label,347}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",650}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-matched_out_size/1-lc$^1/1-1-'},
               1}.
  {label,348}.
    {test,bs_start_match3,{f,349},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,349},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,349},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_start_match3,{f,349},3,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,349},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,349},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,348}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,349}.
    {test,bs_start_match3,{f,350},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,350},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,350},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_start_match3,{f,350},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,350},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,350},
          2,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,348}}. % '-matched_out_size/1-lc$^1/1-1-'/1
  {label,350}.
    {test,bs_start_match3,{f,351},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,351}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-matched_out_size/1-lbc$^0/2-0-', 2, 353}.
  {label,352}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",649}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-matched_out_size/1-lbc$^0/2-0-'},
               2}.
  {label,353}.
    {test,bs_start_match3,{f,354},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,354},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,354},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_start_match3,{f,354},4,[{x,2}],{x,2}}.
    {test,bs_get_integer2,
          {f,354},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,354},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,353}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,354}.
    {test,bs_start_match3,{f,355},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,355},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,355},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_start_match3,{f,355},4,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,355},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,355},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,353}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,355}.
    {test,bs_start_match3,{f,356},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,356}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^4/2-4-', 2, 358}.
  {label,357}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",620}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^4/2-4-'},
               2}.
  {label,358}.
    {test,bs_start_match3,{f,359},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,359},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[620,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {call,2,{f,361}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,358},1}. % '-zero_pattern/1-lbc$^4/2-4-'/2
  {label,359}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",622}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^5/2-5-', 2, 361}.
  {label,360}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",620}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^5/2-5-'},
               2}.
  {label,361}.
    {test,is_nonempty_list,{f,363},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,362},[{x,2},{literal,<<>>}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",621}]}.
    {move,{integer,0},{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,361}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
  {label,362}.
    {call_only,2,{f,361}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
  {label,363}.
    {test,is_nil,{f,364},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,364}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",623}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^2/2-2-', 2, 366}.
  {label,365}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^2/2-2-'},
               2}.
  {label,366}.
    {test,bs_start_match3,{f,367},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,367},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[615,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{literal,<<>>},{x,0}}.
    {call,2,{f,369}}. % '-zero_pattern/1-lbc$^3/2-3-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,366},1}. % '-zero_pattern/1-lbc$^2/2-2-'/2
  {label,367}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",617}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^3/2-3-', 2, 369}.
  {label,368}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^3/2-3-'},
               2}.
  {label,369}.
    {test,bs_start_match3,{f,370},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,370}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",618}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^1/2-1-', 2, 372}.
  {label,371}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",614}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^1/2-1-'},
               2}.
  {label,372}.
    {test,bs_start_match3,{f,373},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,373},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[614,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<"*">>}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,372}}. % '-zero_pattern/1-lbc$^1/2-1-'/2
  {label,373}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^0/2-0-', 2, 375}.
  {label,374}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",613}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^0/2-0-'},
               2}.
  {label,375}.
    {test,bs_start_match3,{f,376},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,376},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[613,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{integer,0},{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,375}}. % '-zero_pattern/1-lbc$^0/2-0-'/2
  {label,376}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-encode_chars_compact_map/3-lbc$^0/2-0-', 5, 378}.
  {label,377}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",586}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-encode_chars_compact_map/3-lbc$^0/2-0-'},
               5}.
  {label,378}.
    {test,is_nonempty_list,{f,379},[{x,0}]}.
    {allocate,5,5}.
    {move,{x,4},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,2},{y,4}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,1}}.
    {call,3,{f,266}}. % enc_char_cm/3
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{y,4},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,3},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{y,4},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,4},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,5,{f,378},5}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5
  {label,379}.
    {test,is_nil,{f,380},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,380}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-hstring_to_bitstring/1-lbc$^0/2-0-', 2, 382}.
  {label,381}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",580}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-hstring_to_bitstring/1-lbc$^0/2-0-'},
               2}.
  {label,382}.
    {test,is_nonempty_list,{f,383},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,259}}. % hex_to_int/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,382},2}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2
  {label,383}.
    {test,is_nil,{f,384},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,384}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^16/2-16-', 2, 386}.
  {label,385}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^16/2-16-'},
               2}.
  {label,386}.
    {test,is_nonempty_list,{f,387},[{x,0}]}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {get_list,{x,0},{x,2},{x,0}}.
    {make_fun3,{f,390},0,0,{x,2},{list,[{x,2}]}}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,386}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,387}.
    {test,is_nil,{f,388},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,388}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-fun-17-', 1, 390}.
  {label,389}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-fun-17-'},
               1}.
  {label,390}.
    return.


{function, '-general_expressions/1-lbc$^15/2-15-', 2, 392}.
  {label,391}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",574}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^15/2-15-'},
               2}.
  {label,392}.
    {test,is_nonempty_list,{f,393},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,393}.
    {test,is_nil,{f,394},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,394}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^14/2-14-', 2, 396}.
  {label,395}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",573}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^14/2-14-'},
               2}.
  {label,396}.
    {test,is_nonempty_list,{f,397},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,397}.
    {test,is_nil,{f,398},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,398}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^13/2-13-', 2, 400}.
  {label,399}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",572}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^13/2-13-'},
               2}.
  {label,400}.
    {test,is_nonempty_list,{f,401},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,401}.
    {test,is_nil,{f,402},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,402}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^12/2-12-', 2, 404}.
  {label,403}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",571}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^12/2-12-'},
               2}.
  {label,404}.
    {test,is_nonempty_list,{f,405},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,405}.
    {test,is_nil,{f,406},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,406}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^11/2-11-', 2, 408}.
  {label,407}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^11/2-11-'},
               2}.
  {label,408}.
    {test,is_nonempty_list,{f,409},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,409}.
    {test,is_nil,{f,410},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,410}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^10/2-10-', 2, 412}.
  {label,411}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^10/2-10-'},
               2}.
  {label,412}.
    {test,is_nonempty_list,{f,415},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'div',{f,413},3,[{integer,10},{x,2}],{x,2}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",559}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,413},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,413},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,413},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
    {jump,{f,414}}.
  {label,413}.
    {move,{literal,<<>>},{x,2}}.
  {label,414}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,412}}. % '-general_expressions/1-lbc$^10/2-10-'/2
  {label,415}.
    {test,is_nil,{f,416},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,416}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",562}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^9/2-9-', 2, 418}.
  {label,417}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",557}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^9/2-9-'},
               2}.
  {label,418}.
    {test,is_nonempty_list,{f,422},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
  {label,419}.
    {loop_rec,{f,420},{x,0}}.
    remove_message.
    {jump,{f,421}}.
  {label,420}.
    {wait,{f,419}}.
  {label,421}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,418},2}. % '-general_expressions/1-lbc$^9/2-9-'/2
  {label,422}.
    {test,is_nil,{f,423},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,423}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^8/2-8-', 2, 425}.
  {label,424}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^8/2-8-'},
               2}.
  {label,425}.
    {test,is_nonempty_list,{f,428},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,426},3,[{x,2},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,426},[{x,3},{integer,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",553}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
    {jump,{f,427}}.
  {label,426}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",554}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
  {label,427}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,425}}. % '-general_expressions/1-lbc$^8/2-8-'/2
  {label,428}.
    {test,is_nil,{f,429},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,429}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",555}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^6/2-6-', 2, 431}.
  {label,430}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^6/2-6-'},
               2}.
  {label,431}.
    {test,is_nonempty_list,{f,432},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'*',{f,0},3,[{x,2},{integer,2}],{x,2}}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,1}],{x,3}}.
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
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {call,2,{f,435}}. % '-general_expressions/1-lbc$^7/2-7-'/2
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,3},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,431},4}. % '-general_expressions/1-lbc$^6/2-6-'/2
  {label,432}.
    {test,is_nil,{f,433},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,433}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",551}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^7/2-7-', 2, 435}.
  {label,434}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^7/2-7-'},
               2}.
  {label,435}.
    {test,is_nonempty_list,{f,436},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,321}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,435},2}. % '-general_expressions/1-lbc$^7/2-7-'/2
  {label,436}.
    {test,is_nil,{f,437},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,437}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^5/2-5-', 2, 439}.
  {label,438}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^5/2-5-'},
               2}.
  {label,439}.
    {test,is_nonempty_list,{f,443},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},3,[{x,2},{integer,2}],{x,3}}.
    {select_val,{x,3},
                {f,445},
                {list,[{integer,0},{f,441},{integer,1},{f,440}]}}.
  {label,440}.
    {move,{literal,<<>>},{x,2}}.
    {jump,{f,442}}.
  {label,441}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",547}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
  {label,442}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,439}}. % '-general_expressions/1-lbc$^5/2-5-'/2
  {label,443}.
    {test,is_nil,{f,444},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,444}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",549}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,445}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {case_end,{x,3}}.


{function, '-general_expressions/1-lbc$^4/2-4-', 2, 447}.
  {label,446}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^4/2-4-'},
               2}.
  {label,447}.
    {test,is_nonempty_list,{f,448},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,321}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,447},2}. % '-general_expressions/1-lbc$^4/2-4-'/2
  {label,448}.
    {test,is_nil,{f,449},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,449}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^3/2-3-', 2, 451}.
  {label,450}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^3/2-3-'},
               2}.
  {label,451}.
    {test,is_nonempty_list,{f,452},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,451}}. % '-general_expressions/1-lbc$^3/2-3-'/2
  {label,452}.
    {test,is_nil,{f,453},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,453}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^2/2-2-', 2, 455}.
  {label,454}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^2/2-2-'},
               2}.
  {label,455}.
    {test,bs_start_match3,{f,457},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,456},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[540,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,456},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[540,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",541}]}.
    {gc_bif,'+',{f,0},5,[{x,3},{integer,1}],{x,0}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {bs_init_bits,{f,0},{x,5},0,6,{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,5},{x,0}}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",542}]}.
    {call,1,{f,321}}. % id/1
    {line,[{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,455},2}. % '-general_expressions/1-lbc$^2/2-2-'/2
  {label,456}.
    {move,{x,1},{x,0}}.
    return.
  {label,457}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",543}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^1/2-1-', 2, 459}.
  {label,458}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^1/2-1-'},
               2}.
  {label,459}.
    {test,is_nonempty_list,{f,460},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,3},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,3,{string,<<"abc">>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,459}}. % '-general_expressions/1-lbc$^1/2-1-'/2
  {label,460}.
    {test,is_nil,{f,461},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,461}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^0/2-0-', 2, 463}.
  {label,462}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^0/2-0-'},
               2}.
  {label,463}.
    {test,is_nonempty_list,{f,464},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,3},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,3,{string,<<1,2,3>>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,463}}. % '-general_expressions/1-lbc$^0/2-0-'/2
  {label,464}.
    {test,is_nil,{f,465},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,465}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^33/2-18-', 2, 467}.
  {label,466}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",527}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^33/2-18-'},2}.
  {label,467}.
    {test,bs_start_match3,{f,469},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,468},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[527,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,468},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[527,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,4},1],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,467}}. % '-sizes/1-lbc$^33/2-18-'/2
  {label,468}.
    {move,{x,1},{x,0}}.
    return.
  {label,469}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-32-', 1, 471}.
  {label,470}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",521}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-32-'},1}.
  {label,471}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",522}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,473}}. % '-sizes/1-lbc$^31/2-17-'/2
    {call_last,1,{f,318},0}. % cs_default/1


{function, '-sizes/1-lbc$^31/2-17-', 2, 473}.
  {label,472}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",522}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^31/2-17-'},2}.
  {label,473}.
    {test,bs_start_match3,{f,475},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,474},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[522,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,474},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[522,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_utf8_size,{f,0},{x,3},{x,6}}.
    {bs_add,{f,0},[{x,5},{x,6},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,473}}. % '-sizes/1-lbc$^31/2-17-'/2
  {label,474}.
    {move,{x,1},{x,0}}.
    return.
  {label,475}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-30-', 2, 477}.
  {label,476}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",515}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-30-'},2}.
  {label,477}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",516}]}.
    {call,3,{f,479}}. % '-sizes/1-lbc$^28/2-15-'/3
    {call_last,1,{f,318},0}. % cs_default/1


{function, '-sizes/1-lbc$^28/2-15-', 3, 479}.
  {label,478}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^28/2-15-'},3}.
  {label,479}.
    {test,is_nonempty_list,{f,480},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,483}}. % '-sizes/1-lbc$^29/2-16-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,479},2}. % '-sizes/1-lbc$^28/2-15-'/3
  {label,480}.
    {test,is_nil,{f,481},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,481}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^29/2-16-', 3, 483}.
  {label,482}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^29/2-16-'},3}.
  {label,483}.
    {test,bs_start_match3,{f,485},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,484},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[516,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,484},
          5,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[516,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,4},8],{x,6}}.
    {test_heap,0,7}.
    {bs_private_append,{f,0},{x,6},1,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,4}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,3,{f,483}}. % '-sizes/1-lbc$^29/2-16-'/3
  {label,484}.
    {move,{x,1},{x,0}}.
    return.
  {label,485}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^27/2-14-', 2, 487}.
  {label,486}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^27/2-14-'},2}.
  {label,487}.
    {test,bs_start_match3,{f,489},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,488},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[513,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,488},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[513,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{x,3},1],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{x,3},1,{field_flags,[]},{integer,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,487}}. % '-sizes/1-lbc$^27/2-14-'/2
  {label,488}.
    {move,{x,1},{x,0}}.
    return.
  {label,489}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^26/2-13-', 2, 491}.
  {label,490}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",512}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^26/2-13-'},2}.
  {label,491}.
    {test,is_nonempty_list,{f,492},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{x,2},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{x,2},1,{field_flags,[]},{integer,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,491}}. % '-sizes/1-lbc$^26/2-13-'/2
  {label,492}.
    {test,is_nil,{f,493},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,493}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-25-', 1, 495}.
  {label,494}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",502}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-25-'},1}.
  {label,495}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",503}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},1],{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {bs_add,{f,0},[{x,1},{x,0},1],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_string,1,{string,<<18>>}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{integer,3}}.
    {bs_put_integer,{f,0},{x,0},1,{field_flags,[]},{integer,0}}.
    {move,{x,1},{x,0}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,497}}. % '-sizes/1-lbc$^24/2-12-'/2
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^24/2-12-', 2, 497}.
  {label,496}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",503}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^24/2-12-'},2}.
  {label,497}.
    {test,bs_start_match3,{f,499},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,498},
          3,
          [{x,2},
           {integer,4},
           1,
           {field_flags,[{anno,[503,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,498},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[503,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,497}}. % '-sizes/1-lbc$^24/2-12-'/2
  {label,498}.
    {move,{x,1},{x,0}}.
    return.
  {label,499}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-23-', 3, 501}.
  {label,500}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",492}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-23-'},3}.
  {label,501}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",493}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,3,0}.
    {call,4,{f,503}}. % '-sizes/1-lbc$^22/2-11-'/4
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^22/2-11-', 4, 503}.
  {label,502}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",493}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^22/2-11-'},4}.
  {label,503}.
    {test,bs_start_match3,{f,505},4,[{x,0}],{x,4}}.
    {test,bs_get_integer2,
          {f,504},
          5,
          [{x,4},
           {x,2},
           1,
           {field_flags,[{anno,[493,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,504},
          6,
          [{x,4},
           {atom,all},
           1,
           {field_flags,[{anno,[493,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {move,{integer,0},{x,7}}.
    {bs_add,{f,0},[{x,7},{x,3},1],{x,7}}.
    {test_heap,0,8}.
    {bs_private_append,{f,0},{x,7},1,{x,1},{field_flags,[]},{x,7}}.
    {bs_put_integer,{f,0},{x,3},1,{field_flags,[]},{x,5}}.
    {move,{x,7},{x,1}}.
    {move,{x,6},{x,0}}.
    {call_only,4,{f,503}}. % '-sizes/1-lbc$^22/2-11-'/4
  {label,504}.
    {move,{x,1},{x,0}}.
    return.
  {label,505}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-21-', 1, 507}.
  {label,506}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",480}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-21-'},1}.
  {label,507}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",481}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,509}}. % '-sizes/1-lbc$^20/2-10-'/2
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^20/2-10-', 2, 509}.
  {label,508}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",481}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^20/2-10-'},2}.
  {label,509}.
    {test,bs_start_match3,{f,511},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,510},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[481,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,510},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[481,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,509}}. % '-sizes/1-lbc$^20/2-10-'/2
  {label,510}.
    {move,{x,1},{x,0}}.
    return.
  {label,511}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-19-', 1, 513}.
  {label,512}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",473}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-19-'},1}.
  {label,513}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",474}]}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,515}}. % '-sizes/1-lbc$^18/2-9-'/2
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^18/2-9-', 2, 515}.
  {label,514}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",474}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^18/2-9-'},2}.
  {label,515}.
    {test,bs_start_match3,{f,517},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,516},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[474,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,516},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[474,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,2},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,515}}. % '-sizes/1-lbc$^18/2-9-'/2
  {label,516}.
    {move,{x,1},{x,0}}.
    return.
  {label,517}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-17-', 1, 519}.
  {label,518}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",465}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-17-'},1}.
  {label,519}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",466}]}.
    {call,2,{f,521}}. % '-sizes/1-lbc$^16/2-8-'/2
    {call_last,1,{f,318},0}. % cs_default/1


{function, '-sizes/1-lbc$^16/2-8-', 2, 521}.
  {label,520}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",466}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^16/2-8-'},2}.
  {label,521}.
    {test,is_nonempty_list,{f,522},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_utf8_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,521}}. % '-sizes/1-lbc$^16/2-8-'/2
  {label,522}.
    {test,is_nil,{f,523},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,523}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-15-', 2, 525}.
  {label,524}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",459}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-15-'},2}.
  {label,525}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,526},2,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,526},2,[{x,1},{integer,8}],{x,1}}.
    {gc_bif,'*',{f,526},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,526},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,526},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,527}}.
  {label,526}.
    {move,{integer,256},{x,0}}.
  {label,527}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",460}]}.
    {call,3,{f,529}}. % '-sizes/1-lbc$^14/2-7-'/3
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^14/2-7-', 3, 529}.
  {label,528}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",460}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^14/2-7-'},3}.
  {label,529}.
    {test,is_nonempty_list,{f,530},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,3},{integer,1}],{x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {bs_add,{f,0},[{x,5},{x,2},1],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{x,2},1,{field_flags,[]},{x,4}}.
    {move,{x,5},{x,1}}.
    {call_only,3,{f,529}}. % '-sizes/1-lbc$^14/2-7-'/3
  {label,530}.
    {test,is_nil,{f,531},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,531}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-13-', 4, 533}.
  {label,532}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",452}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-13-'},4}.
  {label,533}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,534},4,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,534},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,534},4,[{x,2},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,534},4,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'+',{f,534},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,534},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,534},3,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'+',{f,534},2,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,534},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,534},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,534},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,535}}.
  {label,534}.
    {move,{integer,256},{x,0}}.
  {label,535}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",453}]}.
    {call,5,{f,537}}. % '-sizes/1-lbc$^12/2-6-'/5
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^12/2-6-', 5, 537}.
  {label,536}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",453}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^12/2-6-'},5}.
  {label,537}.
    {test,is_nonempty_list,{f,538},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,0}}.
    {gc_bif,'+',{f,0},6,[{x,5},{integer,1}],{x,6}}.
    {gc_bif,'+',{f,0},7,[{x,5},{integer,2}],{x,7}}.
    {move,{integer,0},{x,8}}.
    {bs_add,{f,0},[{x,8},{integer,9},8],{x,8}}.
    {bs_add,{f,0},[{x,8},{x,2},8],{x,8}}.
    {bs_add,{f,0},[{x,8},{x,3},8],{x,8}}.
    {bs_add,{f,0},[{x,8},{x,4},1],{x,8}}.
    {test_heap,0,9}.
    {bs_private_append,{f,0},{x,8},1,{x,1},{field_flags,[]},{x,8}}.
    {bs_put_string,3,{string,<<"abc">>}}.
    {bs_put_integer,{f,0},{x,4},1,{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{x,3},8,{field_flags,[]},{x,6}}.
    {bs_put_string,3,{string,<<"qqq">>}}.
    {bs_put_integer,{f,0},{x,2},8,{field_flags,[]},{x,7}}.
    {bs_put_string,3,{string,<<"xyz">>}}.
    {move,{x,8},{x,1}}.
    {call_only,5,{f,537}}. % '-sizes/1-lbc$^12/2-6-'/5
  {label,538}.
    {test,is_nil,{f,539},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,539}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",454}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-11-', 4, 541}.
  {label,540}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",446}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-11-'},4}.
  {label,541}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,542},4,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,542},4,[{x,2},{integer,8}],{x,1}}.
    {gc_bif,'+',{f,542},4,[{y,1},{x,1}],{x,1}}.
    {gc_bif,'*',{f,542},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,542},3,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'*',{f,542},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,542},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,542},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,543}}.
  {label,542}.
    {move,{integer,256},{x,0}}.
  {label,543}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",447}]}.
    {call,5,{f,545}}. % '-sizes/1-lbc$^10/2-5-'/5
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^10/2-5-', 5, 545}.
  {label,544}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",447}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^10/2-5-'},5}.
  {label,545}.
    {test,is_nonempty_list,{f,546},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,0}}.
    {gc_bif,'+',{f,0},6,[{x,5},{integer,1}],{x,6}}.
    {gc_bif,'+',{f,0},7,[{x,5},{integer,2}],{x,7}}.
    {move,{integer,0},{x,8}}.
    {bs_add,{f,0},[{x,8},{x,2},8],{x,8}}.
    {bs_add,{f,0},[{x,8},{x,3},8],{x,8}}.
    {bs_add,{f,0},[{x,8},{x,4},1],{x,8}}.
    {test_heap,0,9}.
    {bs_private_append,{f,0},{x,8},1,{x,1},{field_flags,[]},{x,8}}.
    {bs_put_integer,{f,0},{x,4},1,{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{x,3},8,{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{x,2},8,{field_flags,[]},{x,7}}.
    {move,{x,8},{x,1}}.
    {call_only,5,{f,545}}. % '-sizes/1-lbc$^10/2-5-'/5
  {label,546}.
    {test,is_nil,{f,547},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,547}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-9-', 2, 549}.
  {label,548}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",439}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-9-'},2}.
  {label,549}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,550},2,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,550},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,550},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,550},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,551}}.
  {label,550}.
    {move,{integer,256},{x,0}}.
  {label,551}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",440}]}.
    {call,3,{f,553}}. % '-sizes/1-lbc$^8/2-4-'/3
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^8/2-4-', 3, 553}.
  {label,552}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",440}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^8/2-4-'},3}.
  {label,553}.
    {test,is_nonempty_list,{f,554},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{x,2},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{x,2},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,553}}. % '-sizes/1-lbc$^8/2-4-'/3
  {label,554}.
    {test,is_nil,{f,555},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,555}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-7-', 1, 557}.
  {label,556}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",432}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-7-'},1}.
  {label,557}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,558},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,558},1,[{x,0},{integer,3}],{x,0}}.
    {gc_bif,'+',{f,558},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,558},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,559}}.
  {label,558}.
    {move,{integer,256},{x,0}}.
  {label,559}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",433}]}.
    {call,2,{f,561}}. % '-sizes/1-lbc$^6/2-3-'/2
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^6/2-3-', 2, 561}.
  {label,560}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",433}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^6/2-3-'},2}.
  {label,561}.
    {test,is_nonempty_list,{f,562},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,561}}. % '-sizes/1-lbc$^6/2-3-'/2
  {label,562}.
    {test,is_nil,{f,563},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,563}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-5-', 1, 565}.
  {label,564}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",423}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-5-'},1}.
  {label,565}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,566},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,566},1,[{x,0},{integer,4}],{x,0}}.
    {gc_bif,'+',{f,566},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,566},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,567}}.
  {label,566}.
    {move,{integer,256},{x,0}}.
  {label,567}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",424}]}.
    {call,2,{f,569}}. % '-sizes/1-lbc$^4/2-2-'/2
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^4/2-2-', 2, 569}.
  {label,568}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",424}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^4/2-2-'},2}.
  {label,569}.
    {test,is_nonempty_list,{f,570},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,569}}. % '-sizes/1-lbc$^4/2-2-'/2
  {label,570}.
    {test,is_nil,{f,571},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,571}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-3-', 1, 573}.
  {label,572}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",415}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-3-'},1}.
  {label,573}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,574},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,574},1,[{x,0},{integer,2}],{x,0}}.
    {jump,{f,575}}.
  {label,574}.
    {move,{integer,256},{x,0}}.
  {label,575}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",416}]}.
    {call,2,{f,577}}. % '-sizes/1-lbc$^2/2-1-'/2
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^2/2-1-', 2, 577}.
  {label,576}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",416}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^2/2-1-'},2}.
  {label,577}.
    {test,is_nonempty_list,{f,578},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,577}}. % '-sizes/1-lbc$^2/2-1-'/2
  {label,578}.
    {test,is_nil,{f,579},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,579}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-1-', 1, 581}.
  {label,580}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",407}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-1-'},1}.
  {label,581}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,582},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,582},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,583}}.
  {label,582}.
    {move,{integer,256},{x,0}}.
  {label,583}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",408}]}.
    {call,2,{f,585}}. % '-sizes/1-lbc$^0/2-0-'/2
    {call_last,1,{f,316},0}. % cs/1


{function, '-sizes/1-lbc$^0/2-0-', 2, 585}.
  {label,584}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",408}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^0/2-0-'},2}.
  {label,585}.
    {test,is_nonempty_list,{f,586},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,585}}. % '-sizes/1-lbc$^0/2-0-'/2
  {label,586}.
    {test,is_nil,{f,587},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,587}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch_1/2-lbc$^0/2-0-', 3, 589}.
  {label,588}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",403}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch_1/2-lbc$^0/2-0-'},
               3}.
  {label,589}.
    {test,bs_start_match3,{f,591},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,590},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[403,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,590},
          5,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[403,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,4},8],{x,6}}.
    {test_heap,0,7}.
    {bs_private_append,{f,0},{x,6},1,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,4}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,3,{f,589}}. % '-nomatch_1/2-lbc$^0/2-0-'/3
  {label,590}.
    {move,{x,1},{x,0}}.
    return.
  {label,591}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^12/2-12-', 2, 593}.
  {label,592}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^12/2-12-'},
               2}.
  {label,593}.
    {test,bs_start_match3,{f,596},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,595},
          3,
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[398,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,594},[{x,3},{integer,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,594}.
    {test,bs_get_binary2,
          {f,595},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[398,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,593}}. % '-nomatch/1-lbc$^12/2-12-'/2
  {label,595}.
    {move,{x,1},{x,0}}.
    return.
  {label,596}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^10/2-10-', 2, 598}.
  {label,597}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^10/2-10-'},
               2}.
  {label,598}.
    {test,is_nonempty_list,{f,599},[{x,0}]}.
    {allocate,1,2}.
    {get_tl,{x,0},{y,0}}.
    {move,{atom,ok},{x,0}}.
    {call,2,{f,602}}. % '-nomatch/1-lbc$^11/2-11-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,598},1}. % '-nomatch/1-lbc$^10/2-10-'/2
  {label,599}.
    {test,is_nil,{f,600},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,600}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^11/2-11-', 2, 602}.
  {label,601}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^11/2-11-'},
               2}.
  {label,602}.
    {test,is_nonempty_list,{f,603},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,602}}. % '-nomatch/1-lbc$^11/2-11-'/2
  {label,603}.
    {test,is_nil,{f,604},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,604}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^8/2-8-', 2, 606}.
  {label,605}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^8/2-8-'},2}.
  {label,606}.
    {test,is_nonempty_list,{f,607},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{atom,ok},{x,0}}.
    {call,3,{f,610}}. % '-nomatch/1-lbc$^9/2-9-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,606},1}. % '-nomatch/1-lbc$^8/2-8-'/2
  {label,607}.
    {test,is_nil,{f,608},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,608}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^9/2-9-', 3, 610}.
  {label,609}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^9/2-9-'},3}.
  {label,610}.
    {test,is_nonempty_list,{f,611},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,3,{f,610}}. % '-nomatch/1-lbc$^9/2-9-'/3
  {label,611}.
    {test,is_nil,{f,612},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,612}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^7/2-7-', 2, 614}.
  {label,613}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",390}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^7/2-7-'},2}.
  {label,614}.
    {test,bs_start_match3,{f,616},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,615},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[390,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,615},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[390,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,614}}. % '-nomatch/1-lbc$^7/2-7-'/2
  {label,615}.
    {move,{x,1},{x,0}}.
    return.
  {label,616}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^6/2-6-', 2, 618}.
  {label,617}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^6/2-6-'},2}.
  {label,618}.
    {test,bs_start_match3,{f,620},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,619},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[385,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,619},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[385,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_string,1,{string,<<"a">>}}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,618}}. % '-nomatch/1-lbc$^6/2-6-'/2
  {label,619}.
    {move,{x,1},{x,0}}.
    return.
  {label,620}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^5/2-5-', 2, 622}.
  {label,621}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^5/2-5-'},2}.
  {label,622}.
    {test,bs_start_match3,{f,624},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,623},
          3,
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[382,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,623},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[382,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_string,1,{string,<<"a">>}}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,622}}. % '-nomatch/1-lbc$^5/2-5-'/2
  {label,623}.
    {move,{x,1},{x,0}}.
    return.
  {label,624}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^4/2-4-', 2, 626}.
  {label,625}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^4/2-4-'},2}.
  {label,626}.
    {test,bs_start_match3,{f,627},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,627}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^3/2-3-', 2, 629}.
  {label,628}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^3/2-3-'},2}.
  {label,629}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lc$^2/1-2-', 1, 631}.
  {label,630}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lc$^2/1-2-'},1}.
  {label,631}.
    {test,bs_start_match3,{f,632},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,632}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lc$^1/1-1-', 1, 634}.
  {label,633}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lc$^1/1-1-'},1}.
  {label,634}.
    {move,nil,{x,0}}.
    return.


{function, '-nomatch/1-lbc$^0/2-0-', 2, 636}.
  {label,635}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^0/2-0-'},2}.
  {label,636}.
    {test,is_nonempty_list,{f,637},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,636}}. % '-nomatch/1-lbc$^0/2-0-'/2
  {label,637}.
    {test,is_nil,{f,638},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,638}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_strange/2-lbc$^0/2-1-', 2, 640}.
  {label,639}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",363}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_strange/2-lbc$^0/2-1-'},
               2}.
  {label,640}.
    {test,bs_start_match3,{f,642},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,641},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[363,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,641},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[363,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,640}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
  {label,641}.
    {move,{x,1},{x,0}}.
    return.
  {label,642}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_strange/2-lbc$^1/2-0-', 2, 644}.
  {label,643}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",362}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_strange/2-lbc$^1/2-0-'},
               2}.
  {label,644}.
    {test,bs_start_match3,{f,646},2,[{x,0}],{x,2}}.
    {test,bs_get_utf8,
          {f,645},
          3,
          [{x,2},
           {field_flags,[{anno,[362,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,645},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[362,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,644}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
  {label,645}.
    {move,{x,1},{x,0}}.
    return.
  {label,646}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_trimmer/1-lbc$^0/2-0-', 2, 648}.
  {label,647}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",354}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_trimmer/1-lbc$^0/2-0-'},
               2}.
  {label,648}.
    {test,is_nonempty_list,{f,649},[{x,0}]}.
    {allocate_heap,4,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {put_tuple2,{x,0},{list,[{y,2},{y,2},{y,2}]}}.
    {call,1,{f,321}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,651},[{x,0}]}.
    {test,test_arity,{f,651},[{x,0},3]}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,321}}. % id/1
    {get_tuple_element,{y,0},0,{x,0}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {get_tuple_element,{y,0},2,{x,3}}.
    {move,{y,2},{x,2}}.
    {init_yregs,{list,[{y,0},{y,2}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",355}]}.
    {call,4,{f,144}}. % coverage_summer/4
    {line,[{location,"bs_bincomp_r24_SUITE.erl",354}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,3},{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,648},4}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2
  {label,649}.
    {test,is_nil,{f,650},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,650}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",356}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,651}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",354}]}.
    {badmatch,{y,0}}.


{function, '-coverage_lightfv/3-lbc$^0/2-0-', 2, 653}.
  {label,652}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",347}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_lightfv/3-lbc$^0/2-0-'},
               2}.
  {label,653}.
    {test,is_nonempty_list,{f,654},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,653}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
  {label,654}.
    {test,is_nil,{f,655},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,655}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_materialiv/3-lbc$^0/2-0-', 2, 657}.
  {label,656}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",342}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_materialiv/3-lbc$^0/2-0-'},
               2}.
  {label,657}.
    {test,is_nonempty_list,{f,658},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,657}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
  {label,658}.
    {test,is_nil,{f,659},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,659}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^8/2-8-', 2, 661}.
  {label,660}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",323}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^8/2-8-'},2}.
  {label,661}.
    {test,is_nonempty_list,{f,663},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,662},[{x,2},{integer,42}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,1},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,1,{string,<<"*">>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,661}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,662}.
    {call_only,2,{f,661}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,663}.
    {test,is_nil,{f,664},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,664}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^7/2-7-', 2, 666}.
  {label,665}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",319}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^7/2-7-'},2}.
  {label,666}.
    {test,bs_start_match3,{f,669},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,668},
          3,
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_position,{x,2},{x,4},4}.
    {test,is_eq_exact,{f,667},[{x,3},{integer,0}]}.
    {test,bs_get_integer2,
          {f,667},
          5,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,667},
          5,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,1},8],{x,6}}.
    {test_heap,0,7}.
    {bs_private_append,{f,0},{x,6},1,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,666}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,667}.
    {bs_set_position,{x,2},{x,4}}.
    {test,bs_skip_bits2,
          {f,668},
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,668},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,666}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,668}.
    {move,{x,1},{x,0}}.
    return.
  {label,669}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",320}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^6/2-6-', 2, 671}.
  {label,670}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",316}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^6/2-6-'},2}.
  {label,671}.
    {test,is_nonempty_list,{f,673},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,bs_start_match3,{f,672},3,[{x,2}],{x,2}}.
    {test,bs_get_integer2,
          {f,672},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[316,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,672},[{x,2},0]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,2,{f,671}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,672}.
    {call_only,2,{f,671}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,673}.
    {test,is_nil,{f,674},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,674}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^5/2-5-', 2, 676}.
  {label,675}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",310}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^5/2-5-'},2}.
  {label,676}.
    {test,is_nonempty_list,{f,679},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nonempty_list,{f,677},[{x,2}]}.
    {gc_bif,length,{f,0},3,[{x,2}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {jump,{f,678}}.
  {label,677}.
    {test,is_nil,{f,681},[{x,2}]}.
  {label,678}.
    {call_only,2,{f,676}}. % '-filters/1-lbc$^5/2-5-'/2
  {label,679}.
    {test,is_nil,{f,680},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,680}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",311}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,681}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",312}]}.
    {case_end,{x,2}}.


{function, '-filters/1-lbc$^4/2-4-', 2, 683}.
  {label,682}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^4/2-4-'},2}.
  {label,683}.
    {test,is_nonempty_list,{f,688},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",308}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,686},
                {list,[{atom,false},{f,684},{atom,true},{f,685}]}}.
  {label,684}.
    {gc_bif,'rem',{f,685},0,[{y,1},{integer,2}],{x,0}}.
    {test,is_eq,{f,685},[{x,0},{integer,1}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,687}}.
  {label,685}.
    {move,{y,2},{x,1}}.
    {jump,{f,687}}.
  {label,686}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",308}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {move,{x,0},{x,1}}.
  {label,687}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,683},3}. % '-filters/1-lbc$^4/2-4-'/2
  {label,688}.
    {test,is_nil,{f,689},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,689}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",307}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^3/2-3-', 2, 691}.
  {label,690}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^3/2-3-'},2}.
  {label,691}.
    {test,is_nonempty_list,{f,696},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",304}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,695},
                {list,[{atom,false},{f,693},{atom,true},{f,692}]}}.
  {label,692}.
    {gc_bif,'rem',{f,693},0,[{y,1},{integer,2}],{x,0}}.
    {test,is_eq,{f,693},[{x,0},{integer,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,694}}.
  {label,693}.
    {move,{y,2},{x,1}}.
  {label,694}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,691},3}. % '-filters/1-lbc$^3/2-3-'/2
  {label,695}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",304}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,696}.
    {test,is_nil,{f,697},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,697}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",303}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^2/2-2-', 2, 699}.
  {label,698}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^2/2-2-'},2}.
  {label,699}.
    {test,is_nonempty_list,{f,704},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",301}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,702},
                {list,[{atom,false},{f,701},{atom,true},{f,700}]}}.
  {label,700}.
    {move,{y,2},{x,1}}.
    {jump,{f,703}}.
  {label,701}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,703}}.
  {label,702}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",301}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {move,{x,0},{x,1}}.
  {label,703}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,699},3}. % '-filters/1-lbc$^2/2-2-'/2
  {label,704}.
    {test,is_nil,{f,705},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,705}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",300}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^1/2-1-', 2, 707}.
  {label,706}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^1/2-1-'},2}.
  {label,707}.
    {test,is_nonempty_list,{f,712},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",298}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,711},
                {list,[{atom,false},{f,709},{atom,true},{f,708}]}}.
  {label,708}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,710}}.
  {label,709}.
    {move,{y,2},{x,1}}.
  {label,710}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,707},3}. % '-filters/1-lbc$^1/2-1-'/2
  {label,711}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",298}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,712}.
    {test,is_nil,{f,713},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,713}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",297}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^0/2-0-', 2, 715}.
  {label,714}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",293}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^0/2-0-'},2}.
  {label,715}.
    {test,bs_start_match3,{f,718},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,717},
          3,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[293,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,717},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[293,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'rem',{f,716},5,[{x,3},{integer,2}],{x,0}}.
    {test,is_eq,{f,716},[{x,0},{integer,0}]}.
    {gc_bif,'-',{f,0},5,[{x,3},{integer,32}],{x,0}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,715}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,716}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,715}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,717}.
    {move,{x,1},{x,0}}.
    return.
  {label,718}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",294}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-inconsistent_types_2/0-lbc$^0/2-0-', 3, 720}.
  {label,719}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",282}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-inconsistent_types_2/0-lbc$^0/2-0-'},
               3}.
  {label,720}.
    {test,is_nonempty_list,{f,724},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bif,'/=',{f,0},[{x,2},nil],{x,3}}.
    {test,is_eq_exact,{f,726},[{x,3},{atom,false}]}.
    {test,is_eq_exact,{f,726},[{x,3},{x,2}]}.
    {test,is_ne_exact,{f,722},[{x,3},{atom,true}]}.
    {select_val,{x,2},
                {f,723},
                {list,[{atom,false},{f,722},{atom,true},{f,721}]}}.
  {label,721}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
  {label,722}.
    {call_only,3,{f,720}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
  {label,723}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,2}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",285}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,724}.
    {test,is_nil,{f,725},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,725}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",284}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,726}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",285}]}.
    {badmatch,{x,3}}.


{function, '-inconsistent_types_1/1-lbc$^0/2-0-', 3, 728}.
  {label,727}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",264}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-inconsistent_types_1/1-lbc$^0/2-0-'},
               3}.
  {label,728}.
    {test,is_nonempty_list,{f,734},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bif,is_pid,{f,0},[{x,2}],{x,3}}.
    {test,is_map,{f,736},[{x,2}]}.
    {test,is_eq_exact,{f,729},[{x,3},{atom,true}]}.
    {move,{atom,false},{x,4}}.
    {jump,{f,730}}.
  {label,729}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",270}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,730}.
    {get_map_elements,{f,736},{x,2},{list,[{x,4},{x,4}]}}.
    {test,is_eq_exact,{f,736},[{x,4},{x,3}]}.
    {select_val,{x,2},
                {f,733},
                {list,[{atom,false},{f,732},{atom,true},{f,731}]}}.
  {label,731}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",264}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
  {label,732}.
    {call_only,3,{f,728}}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3
  {label,733}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,2}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",266}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,734}.
    {test,is_nil,{f,735},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,735}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",265}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,736}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",268}]}.
    {badmatch,{x,2}}.


{function, '-float_segment_size/0-lbc$^0/2-0-', 3, 738}.
  {label,737}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",254}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-float_segment_size/0-lbc$^0/2-0-'},
               3}.
  {label,738}.
    {test,bs_start_match3,{f,741},3,[{x,0}],{x,3}}.
    {test,bs_get_float2,
          {f,740},
          4,
          [{x,3},
           {x,2},
           8,
           {field_flags,[{anno,[254,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,739},[{x,4},{float,5.9}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,739}.
    {test,bs_get_binary2,
          {f,740},
          4,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[254,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,738}}. % '-float_segment_size/0-lbc$^0/2-0-'/3
  {label,740}.
    {move,{x,1},{x,0}}.
    return.
  {label,741}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",255}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^0/2-0-', 2, 743}.
  {label,742}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-over_complex_generator/0-lbc$^0/2-0-'},
               2}.
  {label,743}.
    {test,bs_start_match3,{f,746},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,745},
          3,
          [{x,2},
           {integer,2},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,744},[{x,3},{integer,0}]}.
    {test,bs_get_binary2,
          {f,744},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {call,2,{f,748}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,743},1}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,744}.
    {test,bs_get_binary2,
          {f,745},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,743}}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,745}.
    {move,{x,1},{x,0}}.
    return.
  {label,746}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",235}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^1/2-1-', 2, 748}.
  {label,747}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-over_complex_generator/0-lbc$^1/2-1-'},
               2}.
  {label,748}.
    {test,bs_start_match3,{f,750},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,749},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,749},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",234}]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_string,1,{string,<<"ÿ">>}}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,748}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
  {label,749}.
    {move,{x,1},{x,0}}.
    return.
  {label,750}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",237}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_match_context_2/1-lbc$^0/2-0-', 2, 752}.
  {label,751}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",229}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_match_context_2/1-lbc$^0/2-0-'},
               2}.
  {label,752}.
    {test,bs_start_match3,{f,754},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,753},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[229,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,753},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[229,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,752}}. % '-do_match_context_2/1-lbc$^0/2-0-'/2
  {label,753}.
    {move,{x,1},{x,0}}.
    return.
  {label,754}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-match_context_1/1-lbc$^0/2-0-', 2, 756}.
  {label,755}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",223}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-match_context_1/1-lbc$^0/2-0-'},
               2}.
  {label,756}.
    {test,bs_start_match3,{f,758},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,757},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[223,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,757},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[223,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,756}}. % '-match_context_1/1-lbc$^0/2-0-'/2
  {label,757}.
    {move,{x,1},{x,0}}.
    return.
  {label,758}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^1/2-1-', 2, 760}.
  {label,759}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^1/2-1-'},2}.
  {label,760}.
    {test,is_nonempty_list,{f,761},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
    {move,{integer,255},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",220}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",219}]}.
    {call,2,{f,764}}. % '-gen_data/1-lbc$^2/2-2-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,760},1}. % '-gen_data/1-lbc$^1/2-1-'/2
  {label,761}.
    {test,is_nil,{f,762},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,762}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^2/2-2-', 2, 764}.
  {label,763}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^2/2-2-'},2}.
  {label,764}.
    {test,is_nonempty_list,{f,765},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,764}}. % '-gen_data/1-lbc$^2/2-2-'/2
  {label,765}.
    {test,is_nil,{f,766},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,766}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",220}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^0/2-0-', 2, 768}.
  {label,767}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",218}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^0/2-0-'},2}.
  {label,768}.
    {test,is_nonempty_list,{f,769},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,768}}. % '-gen_data/1-lbc$^0/2-0-'/2
  {label,769}.
    {test,is_nil,{f,770},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,770}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_lc/1-lc$^0/1-0-', 1, 772}.
  {label,771}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",215}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-silly_lc/1-lc$^0/1-0-'},1}.
  {label,772}.
    {test,is_nonempty_list,{f,773},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,772}}. % '-silly_lc/1-lc$^0/1-0-'/1
    {test_heap,6,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,773}.
    {test,is_nil,{f,774},[{x,0}]}.
    return.
  {label,774}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_bc/1-lbc$^0/2-0-', 2, 776}.
  {label,775}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",210}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-silly_bc/1-lbc$^0/2-0-'},2}.
  {label,776}.
    {test,bs_start_match3,{f,778},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,777},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[210,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,777},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[210,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,2},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,776}}. % '-silly_bc/1-lbc$^0/2-0-'/2
  {label,777}.
    {move,{x,1},{x,0}}.
    return.
  {label,778}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^0/2-0-', 3, 780}.
  {label,779}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_size/2-lbc$^0/2-0-'},
               3}.
  {label,780}.
    {test,is_nonempty_list,{f,781},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,784}}. % '-mixed_size/2-lbc$^1/2-1-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,780},2}. % '-mixed_size/2-lbc$^0/2-0-'/3
  {label,781}.
    {test,is_nil,{f,782},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,782}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^1/2-1-', 3, 784}.
  {label,783}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_size/2-lbc$^1/2-1-'},
               3}.
  {label,784}.
    {test,bs_start_match3,{f,786},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,785},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[197,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,785},
          5,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[197,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,4},8],{x,6}}.
    {test_heap,0,7}.
    {bs_private_append,{f,0},{x,6},1,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,4}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,3,{f,784}}. % '-mixed_size/2-lbc$^1/2-1-'/3
  {label,785}.
    {move,{x,1},{x,0}}.
    return.
  {label,786}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_nested/1-lbc$^0/2-0-', 2, 788}.
  {label,787}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",194}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_nested/1-lbc$^0/2-0-'},
               2}.
  {label,788}.
    {test,is_nonempty_list,{f,789},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,788}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
  {label,789}.
    {test,is_nil,{f,790},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,790}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-fun-26-', 1, 792}.
  {label,791}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",186}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-fun-26-'},1}.
  {label,792}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",187}]}.
    {call,2,{f,795}}. % '-mixed/1-lc$^25/1-25-'/2
    {test,is_nil,{f,793},[{x,0}]}.
    {deallocate,0}.
    return.
  {label,793}.
    {badmatch,{x,0}}.


{function, '-mixed/1-lc$^25/1-25-', 2, 795}.
  {label,794}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",187}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^25/1-25-'},2}.
  {label,795}.
    {test,bs_start_match3,{f,798},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,798},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,798},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'bsr',{f,796},4,[{x,3},{integer,1}],{x,3}}.
    {jump,{f,797}}.
  {label,796}.
    {move,{atom,bad_size},{x,3}}.
  {label,797}.
    {test,bs_start_match3,{f,798},4,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,798},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,798},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,2,{f,795}}. % '-mixed/1-lc$^25/1-25-'/2
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,798}.
    {test,bs_start_match3,{f,801},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,801},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,801},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'bsr',{f,799},4,[{x,3},{integer,1}],{x,3}}.
    {jump,{f,800}}.
  {label,799}.
    {move,{atom,bad_size},{x,3}}.
  {label,800}.
    {test,bs_start_match3,{f,801},4,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,801},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,801},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,795}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,801}.
    {test,bs_start_match3,{f,802},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,802}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^23/2-23-', 2, 804}.
  {label,803}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^23/2-23-'},2}.
  {label,804}.
    {test,is_nonempty_list,{f,805},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,808}}. % '-mixed/1-lbc$^24/2-24-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,804},1}. % '-mixed/1-lbc$^23/2-23-'/2
  {label,805}.
    {test,is_nil,{f,806},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,806}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^24/2-24-', 2, 808}.
  {label,807}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^24/2-24-'},2}.
  {label,808}.
    {test,is_nonempty_list,{f,809},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,808}}. % '-mixed/1-lbc$^24/2-24-'/2
  {label,809}.
    {test,is_nil,{f,810},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,810}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^21/1-21-', 1, 812}.
  {label,811}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^21/1-21-'},1}.
  {label,812}.
    {test,bs_start_match3,{f,814},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,813},
          2,
          [{x,1},
           {integer,3},
           1,
           {field_flags,[{anno,[155,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,813},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[155,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{literal,[{a,1},{b,2}]},{x,0}}.
    {call_only,3,{f,816}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,813}.
    {move,nil,{x,0}}.
    return.
  {label,814}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^22/1-22-', 3, 816}.
  {label,815}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^22/1-22-'},3}.
  {label,816}.
    {test,is_nonempty_list,{f,818},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {test,is_tuple,{f,817},[{x,3}]}.
    {test,test_arity,{f,817},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {gc_bif,'+',{f,0},4,[{x,1},{x,3}],{x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,3,{f,816}}. % '-mixed/1-lc$^22/1-22-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,817}.
    {call_only,3,{f,816}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,818}.
    {test,is_nil,{f,819},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,812}}. % '-mixed/1-lc$^21/1-21-'/1
  {label,819}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^19/1-19-', 1, 821}.
  {label,820}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^19/1-19-'},1}.
  {label,821}.
    {test,bs_start_match3,{f,823},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,822},
          2,
          [{x,1},
           {integer,3},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,822},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call_only,3,{f,825}}. % '-mixed/1-lc$^20/1-20-'/3
  {label,822}.
    {move,nil,{x,0}}.
    return.
  {label,823}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^20/1-20-', 3, 825}.
  {label,824}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^20/1-20-'},3}.
  {label,825}.
    {test,bs_start_match3,{f,827},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,826},
          4,
          [{x,3},
           {integer,3},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,826},
          5,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {gc_bif,'+',{f,0},6,[{x,1},{x,4}],{x,0}}.
    {allocate,1,6}.
    {move,{x,0},{y,0}}.
    {move,{x,5},{x,0}}.
    {call,3,{f,825}}. % '-mixed/1-lc$^20/1-20-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,826}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,821}}. % '-mixed/1-lc$^19/1-19-'/1
  {label,827}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^18/2-18-', 2, 829}.
  {label,828}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",150}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^18/2-18-'},2}.
  {label,829}.
    {test,is_nonempty_list,{f,831},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_tuple,{f,830},[{x,2}]}.
    {test,test_arity,{f,830},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'+',{f,0},4,[{x,3},{x,2}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,829}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,830}.
    {call_only,2,{f,829}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,831}.
    {test,is_nil,{f,832},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,832}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^16/2-16-', 2, 834}.
  {label,833}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^16/2-16-'},2}.
  {label,834}.
    {test,is_nonempty_list,{f,835},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,838}}. % '-mixed/1-lbc$^17/2-17-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,834},1}. % '-mixed/1-lbc$^16/2-16-'/2
  {label,835}.
    {test,is_nil,{f,836},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,836}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^17/2-17-', 3, 838}.
  {label,837}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^17/2-17-'},3}.
  {label,838}.
    {test,is_nonempty_list,{f,839},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,838}}. % '-mixed/1-lbc$^17/2-17-'/3
  {label,839}.
    {test,is_nil,{f,840},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,840}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^14/2-14-', 2, 842}.
  {label,841}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^14/2-14-'},2}.
  {label,842}.
    {test,bs_start_match3,{f,844},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,843},
          3,
          [{x,2},
           {integer,3},
           1,
           {field_flags,[{anno,[146,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,843},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[146,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,846}}. % '-mixed/1-lbc$^15/2-15-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,842},1}. % '-mixed/1-lbc$^14/2-14-'/2
  {label,843}.
    {move,{x,1},{x,0}}.
    return.
  {label,844}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^15/2-15-', 3, 846}.
  {label,845}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^15/2-15-'},3}.
  {label,846}.
    {test,is_nonempty_list,{f,847},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,846}}. % '-mixed/1-lbc$^15/2-15-'/3
  {label,847}.
    {test,is_nil,{f,848},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,848}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^12/2-12-', 2, 850}.
  {label,849}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^12/2-12-'},2}.
  {label,850}.
    {test,bs_start_match3,{f,852},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,851},
          3,
          [{x,2},
           {integer,3},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,851},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call,3,{f,854}}. % '-mixed/1-lbc$^13/2-13-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,850},1}. % '-mixed/1-lbc$^12/2-12-'/2
  {label,851}.
    {move,{x,1},{x,0}}.
    return.
  {label,852}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^13/2-13-', 3, 854}.
  {label,853}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^13/2-13-'},3}.
  {label,854}.
    {test,bs_start_match3,{f,856},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,855},
          4,
          [{x,3},
           {integer,3},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,855},
          5,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {gc_bif,'+',{f,0},6,[{x,2},{x,4}],{x,0}}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,3},1],{x,6}}.
    {test_heap,0,7}.
    {bs_private_append,{f,0},{x,6},1,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,0}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,3,{f,854}}. % '-mixed/1-lbc$^13/2-13-'/3
  {label,855}.
    {move,{x,1},{x,0}}.
    return.
  {label,856}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",144}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^10/1-10-', 1, 858}.
  {label,857}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^10/1-10-'},1}.
  {label,858}.
    {test,bs_start_match3,{f,860},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,859},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[141,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,859},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[141,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,3,{f,862}}. % '-mixed/1-lc$^11/1-11-'/3
  {label,859}.
    {move,nil,{x,0}}.
    return.
  {label,860}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^11/1-11-', 3, 862}.
  {label,861}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^11/1-11-'},3}.
  {label,862}.
    {test,is_nonempty_list,{f,863},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,1},{x,3}],{x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,3,{f,862}}. % '-mixed/1-lc$^11/1-11-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,863}.
    {test,is_nil,{f,864},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,858}}. % '-mixed/1-lc$^10/1-10-'/1
  {label,864}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^8/1-8-', 1, 866}.
  {label,865}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^8/1-8-'},1}.
  {label,866}.
    {test,bs_start_match3,{f,868},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,867},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,867},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call_only,3,{f,870}}. % '-mixed/1-lc$^9/1-9-'/3
  {label,867}.
    {move,nil,{x,0}}.
    return.
  {label,868}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^9/1-9-', 3, 870}.
  {label,869}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^9/1-9-'},3}.
  {label,870}.
    {test,bs_start_match3,{f,872},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,871},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,871},
          5,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {gc_bif,'+',{f,0},6,[{x,1},{x,4}],{x,0}}.
    {allocate,1,6}.
    {move,{x,0},{y,0}}.
    {move,{x,5},{x,0}}.
    {call,3,{f,870}}. % '-mixed/1-lc$^9/1-9-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,871}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,866}}. % '-mixed/1-lc$^8/1-8-'/1
  {label,872}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^6/2-6-', 3, 874}.
  {label,873}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^6/2-6-'},3}.
  {label,874}.
    {test,is_nonempty_list,{f,875},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,878}}. % '-mixed/1-lbc$^7/2-7-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,874},2}. % '-mixed/1-lbc$^6/2-6-'/3
  {label,875}.
    {test,is_nil,{f,876},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,876}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^7/2-7-', 3, 878}.
  {label,877}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^7/2-7-'},3}.
  {label,878}.
    {test,is_nonempty_list,{f,879},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,878}}. % '-mixed/1-lbc$^7/2-7-'/3
  {label,879}.
    {test,is_nil,{f,880},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,880}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^4/2-4-', 2, 882}.
  {label,881}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^4/2-4-'},2}.
  {label,882}.
    {test,is_nonempty_list,{f,883},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,886}}. % '-mixed/1-lbc$^5/2-5-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,882},1}. % '-mixed/1-lbc$^4/2-4-'/2
  {label,883}.
    {test,is_nil,{f,884},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,884}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^5/2-5-', 3, 886}.
  {label,885}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^5/2-5-'},3}.
  {label,886}.
    {test,is_nonempty_list,{f,887},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,886}}. % '-mixed/1-lbc$^5/2-5-'/3
  {label,887}.
    {test,is_nil,{f,888},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,888}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^2/2-2-', 2, 890}.
  {label,889}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^2/2-2-'},2}.
  {label,890}.
    {test,bs_start_match3,{f,892},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,891},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[131,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,891},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[131,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,894}}. % '-mixed/1-lbc$^3/2-3-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,890},1}. % '-mixed/1-lbc$^2/2-2-'/2
  {label,891}.
    {move,{x,1},{x,0}}.
    return.
  {label,892}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^3/2-3-', 3, 894}.
  {label,893}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^3/2-3-'},3}.
  {label,894}.
    {test,is_nonempty_list,{f,895},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,894}}. % '-mixed/1-lbc$^3/2-3-'/3
  {label,895}.
    {test,is_nil,{f,896},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,896}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^0/2-0-', 2, 898}.
  {label,897}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,898}.
    {test,bs_start_match3,{f,900},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,899},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,899},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call,3,{f,902}}. % '-mixed/1-lbc$^1/2-1-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,898},1}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,899}.
    {move,{x,1},{x,0}}.
    return.
  {label,900}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^1/2-1-', 3, 902}.
  {label,901}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^1/2-1-'},3}.
  {label,902}.
    {test,bs_start_match3,{f,904},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,903},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,903},
          5,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {gc_bif,'+',{f,0},6,[{x,2},{x,4}],{x,0}}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,1},8],{x,6}}.
    {test_heap,0,7}.
    {bs_private_append,{f,0},{x,6},1,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,3,{f,902}}. % '-mixed/1-lbc$^1/2-1-'/3
  {label,903}.
    {move,{x,1},{x,0}}.
    return.
  {label,904}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lc$^3/1-3-', 1, 906}.
  {label,905}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",123}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^3/1-3-'},
               1}.
  {label,906}.
    {test,bs_start_match3,{f,908},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,907},
          2,
          [{x,1},
           {integer,15},
           1,
           {field_flags,[{anno,[123,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,907},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[123,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{x,0}}.
    {call,1,{f,906}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,907}.
    {move,nil,{x,0}}.
    return.
  {label,908}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lbc$^2/2-2-', 2, 910}.
  {label,909}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",121}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,910}.
    {test,is_nonempty_list,{f,911},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,7},1],{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,31},1,{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,910}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
  {label,911}.
    {test,is_nil,{f,912},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,912}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lc$^1/1-1-', 1, 914}.
  {label,913}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",119}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^1/1-1-'},
               1}.
  {label,914}.
    {test,bs_start_match3,{f,916},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,915},
          2,
          [{x,1},
           {integer,7},
           1,
           {field_flags,[{anno,[119,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,915},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[119,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'-',{f,0},4,[{x,2},{integer,32}],{x,0}}.
    {allocate,1,4}.
    {move,{x,0},{y,0}}.
    {move,{x,3},{x,0}}.
    {call,1,{f,914}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,915}.
    {move,nil,{x,0}}.
    return.
  {label,916}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lbc$^0/2-0-', 2, 918}.
  {label,917}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",118}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,918}.
    {test,is_nonempty_list,{f,919},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,32}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,7},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,918}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
  {label,919}.
    {test,is_nil,{f,920},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,920}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lc$^3/1-3-', 1, 922}.
  {label,921}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",112}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^3/1-3-'},
               1}.
  {label,922}.
    {test,bs_start_match3,{f,924},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,923},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[112,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,923},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[112,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{x,0}}.
    {call,1,{f,922}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,923}.
    {move,nil,{x,0}}.
    return.
  {label,924}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lbc$^2/2-2-', 2, 926}.
  {label,925}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",110}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,926}.
    {test,is_nonempty_list,{f,927},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,926}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
  {label,927}.
    {test,is_nil,{f,928},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,928}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lc$^1/1-1-', 1, 930}.
  {label,929}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",108}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^1/1-1-'},
               1}.
  {label,930}.
    {test,bs_start_match3,{f,932},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,931},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[108,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,931},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[108,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'+',{f,0},4,[{x,2},{integer,32}],{x,0}}.
    {allocate,1,4}.
    {move,{x,0},{y,0}}.
    {move,{x,3},{x,0}}.
    {call,1,{f,930}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,931}.
    {move,nil,{x,0}}.
    return.
  {label,932}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lbc$^0/2-0-', 2, 934}.
  {label,933}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",107}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,934}.
    {test,is_nonempty_list,{f,935},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,32}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,934}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
  {label,935}.
    {test,is_nil,{f,936},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,936}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^3/2-3-', 2, 938}.
  {label,937}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",102}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^3/2-3-'},
               2}.
  {label,938}.
    {test,bs_start_match3,{f,940},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,939},
          3,
          [{x,2},
           {integer,15},
           1,
           {field_flags,[{anno,[102,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,939},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[102,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,7},1],{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,3},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,31},1,{field_flags,[little]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,938}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
  {label,939}.
    {move,{x,1},{x,0}}.
    return.
  {label,940}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^2/2-2-', 2, 942}.
  {label,941}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",100}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,942}.
    {test,bs_start_match3,{f,944},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,943},
          3,
          [{x,2},
           {integer,31},
           1,
           {field_flags,[{anno,[100,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,943},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[100,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,7},1],{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,3},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,31},1,{field_flags,[little]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,942}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
  {label,943}.
    {move,{x,1},{x,0}}.
    return.
  {label,944}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^1/2-1-', 2, 946}.
  {label,945}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",98}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^1/2-1-'},
               2}.
  {label,946}.
    {test,bs_start_match3,{f,948},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,947},
          3,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[98,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,947},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[98,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'-',{f,0},5,[{x,3},{integer,32}],{x,0}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,946}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
  {label,947}.
    {move,{x,1},{x,0}}.
    return.
  {label,948}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^0/2-0-', 2, 950}.
  {label,949}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",97}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,950}.
    {test,bs_start_match3,{f,952},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,951},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[97,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,951},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[97,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'+',{f,0},5,[{x,3},{integer,32}],{x,0}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,7},1],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,950}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
  {label,951}.
    {move,{x,1},{x,0}}.
    return.
  {label,952}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^3/2-3-', 2, 954}.
  {label,953}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",91}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^3/2-3-'},
               2}.
  {label,954}.
    {test,bs_start_match3,{f,956},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,955},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[91,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,955},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[91,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,4},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[little]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,954}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
  {label,955}.
    {move,{x,1},{x,0}}.
    return.
  {label,956}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^2/2-2-', 2, 958}.
  {label,957}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",89}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,958}.
    {test,bs_start_match3,{f,960},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,959},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[89,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,959},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[89,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,4},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[little]},{x,3}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,958}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
  {label,959}.
    {move,{x,1},{x,0}}.
    return.
  {label,960}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^1/2-1-', 2, 962}.
  {label,961}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",87}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^1/2-1-'},
               2}.
  {label,962}.
    {test,bs_start_match3,{f,964},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,963},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[87,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,963},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[87,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,4},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {bs_put_string,3,{string,<<"xyz">>}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,962}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
  {label,963}.
    {move,{x,1},{x,0}}.
    return.
  {label,964}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^0/2-0-', 2, 966}.
  {label,965}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",86}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,966}.
    {test,bs_start_match3,{f,968},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,967},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[86,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,967},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[86,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'+',{f,0},5,[{x,3},{integer,32}],{x,0}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,966}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
  {label,967}.
    {move,{x,1},{x,0}}.
    return.
  {label,968}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
