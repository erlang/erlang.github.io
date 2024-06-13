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

{labels, 965}.


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
    {call,0,{f,308}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",86}]}.
    {call,2,{f,962}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,312}}. % cs/1
    {test,is_eq_exact,{f,22},[{x,0},{literal,<<"abcdefg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABC">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",87}]}.
    {call,2,{f,958}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
    {call,1,{f,312}}. % cs/1
    {test,is_eq_exact,{f,21},[{x,0},{literal,<<"AxyzBxyzCxyz">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,1,0,0,0,2,0,0,0,3,0,0,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",89}]}.
    {call,2,{f,954}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,312}}. % cs/1
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
    {call,2,{f,950}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
    {test,bs_start_match3,{f,19},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,19},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,19},[{x,1},0]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",90}]}.
    {call,1,{f,312}}. % cs/1
    {call_last,0,{f,310},0}. % cs_end/0
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
    {call,0,{f,308}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",97}]}.
    {call,2,{f,946}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,312}}. % cs/1
    {test,bs_start_match3,{f,28},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,28},
          [{x,1},49,{string,<<195,139,30,76,185,179,128>>}]}.
    {test,bs_test_tail2,{f,28},[{x,1},0]}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",98}]}.
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,942}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
    {call,1,{f,312}}. % cs/1
    {test,is_eq_exact,{f,27},[{x,0},{literal,<<"ABCDEFG">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,2,0,0,0,8,0,0,0,24,0,0,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",100}]}.
    {call,2,{f,938}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,312}}. % cs/1
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
    {call,2,{f,934}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
    {call,1,{f,312}}. % cs/1
    {test,bs_start_match3,{f,25},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,25},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,25},[{x,1},0]}.
    {call_last,0,{f,310},1}. % cs_end/0
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
    {call,0,{f,308}}. % cs_init/0
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",107}]}.
    {call,2,{f,930}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,312}}. % cs/1
    {test,is_eq_exact,{f,34},[{x,0},{literal,<<"abcdefg">>}]}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",108}]}.
    {call,1,{f,926}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {test,is_eq_exact,{f,33},[{x,0},{literal,"abcdefg"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",110}]}.
    {call,2,{f,922}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,312}}. % cs/1
    {test,bs_start_match3,{f,32},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,32},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,32},[{x,1},0]}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",112}]}.
    {call,1,{f,918}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {test,is_eq_exact,{f,31},[{x,0},{literal,[256,512,768,1024]}]}.
    {call_last,0,{f,310},0}. % cs_end/0
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
    {call,0,{f,308}}. % cs_init/0
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",118}]}.
    {call,2,{f,914}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,312}}. % cs/1
    {test,bs_start_match3,{f,40},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,40},
          [{x,1},49,{string,<<195,139,30,76,185,179,128>>}]}.
    {test,bs_test_tail2,{f,40},[{x,1},0]}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",119}]}.
    {call,1,{f,910}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {test,is_eq_exact,{f,39},[{x,0},{literal,"ABCDEFG"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",121}]}.
    {call,2,{f,906}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,312}}. % cs/1
    {test,bs_start_match3,{f,38},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,38},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,38},[{x,1},0]}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",123}]}.
    {call,1,{f,902}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {test,is_eq_exact,{f,37},[{x,0},{literal,[256,512,768,1024]}]}.
    {call_last,0,{f,310},0}. % cs_end/0
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
    {call,0,{f,308}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {call,2,{f,894}}. % '-mixed/1-lbc$^0/2-0-'/2
    {call,1,{f,312}}. % cs/1
    {test,is_eq_exact,{f,72},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {call,2,{f,886}}. % '-mixed/1-lbc$^2/2-2-'/2
    {call,1,{f,312}}. % cs/1
    {test,is_eq_exact,{f,71},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {call,2,{f,878}}. % '-mixed/1-lbc$^4/2-4-'/2
    {call,1,{f,312}}. % cs/1
    {test,is_eq_exact,{f,70},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",134}]}.
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",135}]}.
    {call,1,{f,317}}. % id/1
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
    {call,3,{f,870}}. % '-mixed/1-lbc$^6/2-6-'/3
    {call,1,{f,312}}. % cs/1
    {test,is_eq_exact,{f,69},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {call,1,{f,862}}. % '-mixed/1-lc$^8/1-8-'/1
    {test,is_eq_exact,{f,68},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {call,1,{f,854}}. % '-mixed/1-lc$^10/1-10-'/1
    {test,is_eq_exact,{f,67},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {call,2,{f,846}}. % '-mixed/1-lbc$^12/2-12-'/2
    {call,1,{f,312}}. % cs/1
    {test,bs_start_match3,{f,66},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,66},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,66},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {call,2,{f,838}}. % '-mixed/1-lbc$^14/2-14-'/2
    {call,1,{f,312}}. % cs/1
    {test,bs_start_match3,{f,65},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,65},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,65},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {call,2,{f,830}}. % '-mixed/1-lbc$^16/2-16-'/2
    {call,1,{f,312}}. % cs/1
    {test,bs_start_match3,{f,64},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,64},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,64},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[{1,1},{1,2},{2,1},{2,2},{3,1},{3,2},{4,1},{4,2}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",150}]}.
    {call,2,{f,825}}. % '-mixed/1-lbc$^18/2-18-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,bs_start_match3,{f,63},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,63},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,63},[{x,1},0]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {call,1,{f,817}}. % '-mixed/1-lc$^19/1-19-'/1
    {test,is_eq_exact,{f,62},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {call,1,{f,808}}. % '-mixed/1-lc$^21/1-21-'/1
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
    {call,2,{f,800}}. % '-mixed/1-lbc$^23/2-23-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,59},[{x,0},{literal,<<1>>}]}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",164}]}.
    {call,1,{f,317}}. % id/1
    {move,{literal,<<"*Ký">>},{x,1}}.
    {call,2,{f,78}}. % mixed_size/2
    {call,1,{f,314}}. % cs_default/1
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
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,57},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{literal,<<4,5,6>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",173}]}.
    {call,1,{f,98}}. % match_context_2/1
    {call,1,{f,314}}. % cs_default/1
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
    {make_fun3,{f,788},0,0,{y,3},{list,[]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",188}]}.
    {call,1,{f,317}}. % id/1
    {move,{y,3},{x,1}}.
    {trim,4,0}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",186}]}.
    {call_fun,1}.
    {test,is_nil,{f,49},[{x,0}]}.
    {call_last,0,{f,310},0}. % cs_end/0
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
    {call,2,{f,784}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{y,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,317}}. % id/1
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
    {call_last,3,{f,776},2}. % '-mixed_size/2-lbc$^0/2-0-'/3


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
    {call,1,{f,312}}. % cs/1
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
    {call_last,2,{f,772},1}. % '-silly_bc/1-lbc$^0/2-0-'/2


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
    {call_last,1,{f,768},0}. % '-silly_lc/1-lc$^0/1-0-'/1


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
    {call,2,{f,764}}. % '-gen_data/1-lbc$^0/2-0-'/2
    {call,1,{f,312}}. % cs/1
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
    {call,2,{f,756}}. % '-gen_data/1-lbc$^1/2-1-'/2
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
    {call_last,2,{f,752},1}. % '-match_context_1/1-lbc$^0/2-0-'/2


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
    {call_last,2,{f,748},1}. % '-do_match_context_2/1-lbc$^0/2-0-'/2


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
    {call_last,2,{f,739},0}. % '-over_complex_generator/0-lbc$^0/2-0-'/2


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
    {call_last,3,{f,734},0}. % '-float_segment_size/0-lbc$^0/2-0-'/3


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
    {call_last,3,{f,724},1}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3


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
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",282}]}.
    {call,3,{f,716}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
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
    {call,0,{f,308}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",293}]}.
    {call,2,{f,711}}. % '-filters/1-lbc$^0/2-0-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,122},[{x,0},{literal,<<"BDF">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {call,2,{f,703}}. % '-filters/1-lbc$^1/2-1-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,121},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {call,2,{f,695}}. % '-filters/1-lbc$^2/2-2-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,120},[{x,0},{literal,<<"efg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {call,2,{f,687}}. % '-filters/1-lbc$^3/2-3-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,119},[{x,0},{literal,<<"b">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {call,2,{f,679}}. % '-filters/1-lbc$^4/2-4-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,118},[{x,0},{literal,<<"eg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[],[a],[],[x,y,z]]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",310}]}.
    {call,2,{f,672}}. % '-filters/1-lbc$^5/2-5-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,117},[{x,0},{literal,<<1,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<"M">>,<<1,2>>,<<"*">>]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",316}]}.
    {call,2,{f,667}}. % '-filters/1-lbc$^6/2-6-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,116},[{x,0},{literal,<<"M*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<97,98,227,100,229,0:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",319}]}.
    {call,2,{f,662}}. % '-filters/1-lbc$^7/2-7-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,115},[{x,0},{literal,<<"abd">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,42,43,42]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",323}]}.
    {call,2,{f,657}}. % '-filters/1-lbc$^8/2-8-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,114},[{x,0},{literal,<<"**">>}]}.
    {call_last,0,{f,310},0}. % cs_end/0
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
    {call,1,{f,317}}. % id/1
    {test,is_eq_exact,{f,136},[{x,0},{y,2}]}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",340}]}.
    {call,1,{f,317}}. % id/1
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
    {call,2,{f,653}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
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
    {call,2,{f,649}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
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
    {call_last,1,{f,317},5}. % id/1


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
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",352}]}.
    {call,1,{f,317}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",353}]}.
    {call,1,{f,317}}. % id/1
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,644},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2


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
    {call,2,{f,640}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",363}]}.
    {call,2,{f,636}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
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
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {call,2,{f,632}}. % '-nomatch/1-lbc$^0/2-0-'/2
    {test,is_eq_exact,{f,162},[{x,0},{literal,<<>>}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {call,1,{f,630}}. % '-nomatch/1-lc$^1/1-1-'/1
    {test,is_nil,{f,161},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {call,1,{f,627}}. % '-nomatch/1-lc$^2/1-2-'/1
    {test,is_nil,{f,160},[{x,0}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {call,2,{f,625}}. % '-nomatch/1-lbc$^3/2-3-'/2
    {test,is_eq_exact,{f,159},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {call,2,{f,622}}. % '-nomatch/1-lbc$^4/2-4-'/2
    {test,is_eq_exact,{f,158},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {call,2,{f,618}}. % '-nomatch/1-lbc$^5/2-5-'/2
    {test,is_eq_exact,{f,157},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {call,2,{f,614}}. % '-nomatch/1-lbc$^6/2-6-'/2
    {test,is_eq_exact,{f,156},[{x,0},{literal,<<>>}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",387}]}.
    {call,2,{f,164}}. % nomatch_1/2
    {test,is_eq_exact,{f,155},[{x,0},{literal,<<0,0,0,1,0,0,0,2,0,0,0,3>>}]}.
    {move,{atom,bad},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",388}]}.
    {call,2,{f,164}}. % nomatch_1/2
    {test,is_eq_exact,{f,154},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",390}]}.
    {call,2,{f,610}}. % '-nomatch/1-lbc$^7/2-7-'/2
    {test,is_eq_exact,{f,153},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {call,2,{f,602}}. % '-nomatch/1-lbc$^8/2-8-'/2
    {call,1,{f,317}}. % id/1
    {test,is_eq_exact,{f,152},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {call,2,{f,594}}. % '-nomatch/1-lbc$^10/2-10-'/2
    {call,1,{f,317}}. % id/1
    {test,is_eq_exact,{f,151},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,149}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {call,2,{f,589}}. % '-nomatch/1-lbc$^12/2-12-'/2
  {label,149}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,150},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,150},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,150},[{x,1}]}.
    {test,test_arity,{f,150},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,150},[{x,1},{literal,{bad_generator,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,150}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",387}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {badmatch,{x,0}}.


{function, nomatch_1, 2, 164}.
  {label,163}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",402}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,nomatch_1},2}.
  {label,164}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,585},2}. % '-nomatch_1/2-lbc$^0/2-0-'/3


{function, sizes, 1, 166}.
  {label,165}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",405}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,sizes},1}.
  {label,166}.
    {test,is_list,{f,165},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",406}]}.
    {call,0,{f,308}}. % cs_init/0
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,577},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",410}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,223},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",411}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,222},[{x,0},{literal,<<1>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",412}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,221},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",413}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,220},[{x,0},{literal,<<1,2,3>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,569},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",418}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,219},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",419}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,218},[{x,0},{literal,<<0,1>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",420}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,217},[{x,0},{literal,<<0,1,0,2>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",421}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,216},[{x,0},{literal,<<0,1,0,2,0,3>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,561},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",426}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,215},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",427}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,214},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,214},[{x,1},4,{string,<<16>>}]}.
    {test,bs_test_tail2,{f,214},[{x,1},0]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,13]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",428}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,213},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,213},[{x,1},8,{string,<<29>>}]}.
    {test,bs_test_tail2,{f,213},[{x,1},0]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,13,7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",429}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,212},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,212},[{x,1},12,{string,<<29,112>>}]}.
    {test,bs_test_tail2,{f,212},[{x,1},0]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2000},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",430}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call_fun,1}.
    {test,bs_start_match3,{f,211},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,211},
          2,
          [{x,1},
           {integer,1000},
           8,
           {field_flags,[{anno,[430,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,211},[{x,2},{integer,0}]}.
    {test,bs_test_tail2,{f,211},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,553},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",435}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,210},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,2,1,3,0,7,5]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",436}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,209},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,209},[{x,1},21,{string,<<"(±è">>}]}.
    {test,bs_test_tail2,{f,209},[{x,1},0]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,512},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",437}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call_fun,1}.
    {test,bs_start_match3,{f,208},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,208},
          2,
          [{x,1},
           {integer,512},
           3,
           {field_flags,[{anno,[437,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,208},[{x,2},{integer,0}]}.
    {test,bs_test_tail2,{f,208},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,545},0,0,{y,1},{list,[]}}.
    {move,{integer,8},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",442}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,207},[{x,0},{literal,<<>>}]}.
    {move,{integer,6},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",443}]}.
    {call_fun,2}.
    {test,bs_start_match3,{f,206},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,206},[{x,1},6,{string,<<"¨">>}]}.
    {test,bs_test_tail2,{f,206},[{x,1},0]}.
    {move,{integer,16},{x,1}}.
    {move,{y,1},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",444}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,205},[{x,0},{literal,<<0,42>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,537},0,0,{y,1},{list,[]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",449}]}.
    {call_fun,4}.
    {test,is_eq_exact,{f,204},[{x,0},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,7},{x,3}}.
    {move,{integer,3},{x,1}}.
    {move,{y,1},{x,4}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",450}]}.
    {call_fun,4}.
    {test,bs_start_match3,{f,203},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,203},
          [{x,1},99,{string,<<224,0,0,0,1,0,0,0,0,0,0,1,32>>}]}.
    {test,bs_test_tail2,{f,203},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,529},0,0,{y,1},{list,[]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",456}]}.
    {call_fun,4}.
    {test,is_eq_exact,{f,202},[{x,0},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,7},{x,3}}.
    {move,{integer,3},{x,1}}.
    {move,{y,1},{x,4}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",457}]}.
    {call_fun,4}.
    {test,bs_start_match3,{f,201},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,201},
          [{x,1},
           171,
           {string,<<97,98,99,224,0,0,0,1,14,46,46,32,0,0,0,0,0,1,47,15,47,
                     64>>}]}.
    {test,bs_test_tail2,{f,201},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,521},0,0,{y,1},{list,[]}}.
    {move,{integer,42},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",462}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,200},[{x,0},{literal,<<>>}]}.
    {move,{integer,20},{x,1}}.
    {move,{y,1},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",463}]}.
    {call_fun,2}.
    {test,bs_start_match3,{f,199},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,199},[{x,1},28,{string,<<42,0,2,176>>}]}.
    {test,bs_test_tail2,{f,199},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,515},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,"Foundation"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",468}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,198},[{x,0},{literal,<<"Foundation">>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[1054,1089,1085,1086,1074,1072,1085,1080,1077]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",469}]}.
    {call_fun,1}.
    {test,is_eq_exact,
          {f,197},
          [{x,0},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,509},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",476}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,196},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",477}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,195},[{x,0},{literal,<<0,1>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",478}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,194},[{x,0},{literal,<<0,1,0,2>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,503},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",483}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,193},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",484}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,192},[{x,0},{literal,<<1>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",485}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,191},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",486}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,190},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,0:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",487}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,189},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",488}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,188},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,21,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",489}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,187},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<0,1,0,2,1,127:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",490}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,186},[{x,0},{literal,<<1,2>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,497},0,0,{y,1},{list,[]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",495}]}.
    {call_fun,3}.
    {test,is_eq_exact,{f,185},[{x,0},{literal,<<>>}]}.
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
    {test,is_eq_exact,{f,184},[{x,0},{y,0}]}.
    {move,{integer,4},{x,2}}.
    {move,{integer,4},{x,1}}.
    {move,{y,1},{x,3}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",498}]}.
    {call_fun,3}.
    {test,is_eq_exact,{f,183},[{x,0},{y,0}]}.
    {move,{integer,8},{x,2}}.
    {move,{integer,8},{x,1}}.
    {move,{y,1},{x,3}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",499}]}.
    {call_fun,3}.
    {test,is_eq_exact,{f,182},[{x,0},{y,0}]}.
    {move,{integer,6},{x,2}}.
    {move,{integer,9},{x,1}}.
    {move,{y,1},{x,3}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<69,3:4>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",500}]}.
    {call_fun,3}.
    {test,bs_start_match3,{f,181},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,181},[{x,1},18,{string,<<8,132,192>>}]}.
    {test,bs_test_tail2,{f,181},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,491},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",505}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,180},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",506}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,179},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",507}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,178},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,6},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",508}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,177},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",509}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,176},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",510}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,175},[{x,0},{literal,<<1,2,3,0,0>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",512}]}.
    {call,2,{f,487}}. % '-sizes/1-lbc$^26/2-13-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,bs_start_match3,{f,174},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,174},[{x,1},3,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,174},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {call,2,{f,483}}. % '-sizes/1-lbc$^27/2-14-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,bs_start_match3,{f,173},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,173},[{x,1},3,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,173},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,473},0,0,{y,1},{list,[]}}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",518}]}.
    {call_fun,2}.
    {test,is_eq_exact,
          {f,172},
          [{x,0},{literal,<<0,0,0,97,0,0,0,98,0,0,0,99,0,0,97,98>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{y,1},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[8,bad]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",519}]}.
    {call_fun,2}.
    {test,is_eq_exact,
          {f,171},
          [{x,0},{literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,467},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,0,0,70,0,0,0,111,0,0,0,117,0,0,0,110,0,0,0,100,0,0,0,
                     97,0,0,0,116,0,0,0,105,0,0,0,111,0,0,0,110>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",524}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,170},[{x,0},{literal,<<"Foundation">>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<0,0,4,30,0,0,4,65,0,0,4,61,0,0,4,62,0,0,4,50,0,0,4,48,0,
                     0,4,61,0,0,4,56,0,0,4,53>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",525}]}.
    {call_fun,1}.
    {test,is_eq_exact,
          {f,169},
          [{x,0},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,1},{f,167}}.
    {move,{literal,{1,2,3}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",527}]}.
    {call,2,{f,463}}. % '-sizes/1-lbc$^33/2-18-'/2
  {label,167}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,168},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{atom,'EXIT'}]}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",529}]}.
    {call,0,{f,310}}. % cs_end/0
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,168}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",527}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",525}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",524}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",519}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",518}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",512}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",510}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",509}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",508}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",507}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",506}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",505}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",500}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",499}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",498}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",497}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",495}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",490}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",489}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",488}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",487}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",486}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",485}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",484}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",483}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",478}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",477}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",476}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",469}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",468}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",463}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",462}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",457}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",456}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",450}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",449}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",444}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",437}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,215}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",426}]}.
    {badmatch,{x,0}}.
  {label,216}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,217}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,218}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,219}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,220}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",413}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,222}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",410}]}.
    {badmatch,{x,0}}.


{function, general_expressions, 1, 225}.
  {label,224}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",535}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,general_expressions},1}.
  {label,225}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",536}]}.
    {call,0,{f,308}}. % cs_init/0
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {call,2,{f,459}}. % '-general_expressions/1-lbc$^0/2-0-'/2
    {call,1,{f,312}}. % cs/1
    {test,is_eq_exact,{f,249},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {call,2,{f,455}}. % '-general_expressions/1-lbc$^1/2-1-'/2
    {call,1,{f,312}}. % cs/1
    {test,is_eq_exact,{f,248},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {call,2,{f,451}}. % '-general_expressions/1-lbc$^2/2-2-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,247},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<1,2>>,<<3>>]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {call,2,{f,447}}. % '-general_expressions/1-lbc$^3/2-3-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,246},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {call,2,{f,443}}. % '-general_expressions/1-lbc$^4/2-4-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,245},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4,5]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {call,2,{f,435}}. % '-general_expressions/1-lbc$^5/2-5-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,244},[{x,0},{literal,<<2,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {call,2,{f,427}}. % '-general_expressions/1-lbc$^6/2-6-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,243},[{x,0},{literal,<<2,3,4,5,6,7>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {call,2,{f,421}}. % '-general_expressions/1-lbc$^8/2-8-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,242},[{x,0},{literal,<<1,2,2,3,4,4>>}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,<<"*">>},{x,1}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",556}]}.
    send.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",557}]}.
    {call,2,{f,414}}. % '-general_expressions/1-lbc$^9/2-9-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,241},[{x,0},{literal,<<"*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {call,2,{f,408}}. % '-general_expressions/1-lbc$^10/2-10-'/2
    {call,1,{f,314}}. % cs_default/1
    {test,is_eq_exact,{f,240},[{x,0},{literal,<<10,5,3>>}]}.
    {move,{literal,"3A7"},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",564}]}.
    {call,1,{f,251}}. % hstring_to_bitstring/1
    {call,1,{f,312}}. % cs/1
    {test,bs_start_match3,{f,239},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,239},[{x,1},12,{string,<<":p">>}]}.
    {test,bs_test_tail2,{f,239},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",565}]}.
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{literal,{65,8}},{x,0}}.
    {call,1,{f,317}}. % id/1
    {move,{y,5},{x,1}}.
    {move,{x,0},{x,2}}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{literal,"ABCDEFGH"},{x,0}}.
    {call,3,{f,258}}. % encode_chars_compact_map/3
    {call,1,{f,312}}. % cs/1
    {test,bs_start_match3,{f,238},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,238},[{x,1},24,{string,<<5,57,119>>}]}.
    {test,bs_test_tail2,{f,238},[{x,1},0]}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",567}]}.
    {call,0,{f,310}}. % cs_end/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,5},{f,226}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {call,2,{f,404}}. % '-general_expressions/1-lbc$^11/2-11-'/2
  {label,226}.
    {catch_end,{y,5}}.
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
    {'catch',{y,4},{f,227}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_r24_SUITE.erl",571}]}.
    {call,2,{f,400}}. % '-general_expressions/1-lbc$^12/2-12-'/2
  {label,227}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,236},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,236},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,236},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,236},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,3},{f,228}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",572}]}.
    {call,2,{f,396}}. % '-general_expressions/1-lbc$^13/2-13-'/2
  {label,228}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,235},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,235},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,235},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,235},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,2},{f,229}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",573}]}.
    {call,2,{f,392}}. % '-general_expressions/1-lbc$^14/2-14-'/2
  {label,229}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,234},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,234},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,234},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,234},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,1},{f,230}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_bincomp_r24_SUITE.erl",574}]}.
    {call,2,{f,388}}. % '-general_expressions/1-lbc$^15/2-15-'/2
  {label,230}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,233},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,233},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,233},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,233},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,231}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {call,2,{f,382}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,231}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,232},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,232},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,232},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,232},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,232}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,[4]},{location,"bs_bincomp_r24_SUITE.erl",573}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{scope,"\n"},{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",565}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",564}]}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,241}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,242}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,243}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,244}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {badmatch,{x,0}}.
  {label,245}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {badmatch,{x,0}}.
  {label,246}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {badmatch,{x,0}}.
  {label,247}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {badmatch,{x,0}}.
  {label,248}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {badmatch,{x,0}}.
  {label,249}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {badmatch,{x,0}}.


{function, hstring_to_bitstring, 1, 251}.
  {label,250}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",579}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,hstring_to_bitstring},1}.
  {label,251}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,252},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,252},1,[{x,0},{integer,4}],{x,0}}.
    {gc_bif,'+',{f,252},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,252},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,253}}.
  {label,252}.
    {move,{integer,256},{x,0}}.
  {label,253}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,378},1}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2


{function, hex_to_int, 1, 255}.
  {label,254}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",582}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,hex_to_int},1}.
  {label,255}.
    {test,is_ge,{f,254},[{x,0},{integer,48}]}.
    {test,is_ge,{f,256},[{integer,57},{x,0}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,48}],{x,0}}.
    return.
  {label,256}.
    {test,is_ge,{f,254},[{x,0},{integer,65}]}.
    {test,is_ge,{f,254},[{integer,70},{x,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",583}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,55}],{x,0}}.
    return.


{function, encode_chars_compact_map, 3, 258}.
  {label,257}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",585}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,encode_chars_compact_map},3}.
  {label,258}.
    {test,is_tuple,{f,257},[{x,2}]}.
    {test,test_arity,{f,257},[{x,2},2]}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {gc_bif,length,{f,259},2,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,259},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,259},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,259},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,260}}.
  {label,259}.
    {move,{integer,256},{x,0}}.
  {label,260}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {get_tuple_element,{y,0},0,{x,4}}.
    {get_tuple_element,{y,0},1,{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,5,{f,374},3}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5


{function, enc_char_cm, 3, 262}.
  {label,261}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",588}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,enc_char_cm},3}.
  {label,262}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",589}]}.
    {gc_bif,'-',{f,0},3,[{x,0},{x,1}],{x,0}}.
    {test,is_ge,{f,263},[{x,0},{integer,0}]}.
    {test,is_lt,{f,263},[{x,0},{x,2}]}.
    return.
  {label,263}.
    {move,{atom,illegal},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",594}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, no_generator, 1, 265}.
  {label,264}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",599}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,no_generator},1}.
  {label,265}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",600}]}.
    {call,1,{f,317}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {test,is_eq_exact,{f,269},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test,is_eq_exact,{f,268},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {'catch',{y,0},{f,266}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",604}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{literal,[1]}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{x,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{literal,[1]}}.
    {move,{x,1},{x,0}}.
  {label,266}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,267},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,267},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,267},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,267},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,267}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",604}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",601}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",600}]}.
    {badmatch,{x,0}}.


{function, zero_pattern, 1, 271}.
  {label,270}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",608}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,zero_pattern},1}.
  {label,271}.
    {test,is_atom,{f,272},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",613}]}.
    {call,2,{f,371}}. % '-zero_pattern/1-lbc$^0/2-0-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",614}]}.
    {call,2,{f,368}}. % '-zero_pattern/1-lbc$^1/2-1-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {call,2,{f,362}}. % '-zero_pattern/1-lbc$^2/2-2-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,2,{f,354},0}. % '-zero_pattern/1-lbc$^4/2-4-'/2
  {label,272}.
    {move,{atom,ok},{x,0}}.
    return.


{function, multiple_segments, 1, 274}.
  {label,273}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",629}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,multiple_segments},1}.
  {label,274}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",630}]}.
    {call,0,{f,308}}. % cs_init/0
    {move,{literal,<<4,16,66>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",632}]}.
    {call,1,{f,286}}. % matched_out_size/1
    {test,is_eq_exact,{f,284},[{x,0},{literal,[1,2]}]}.
    {move,{literal,<<16,0,42,72>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",633}]}.
    {call,1,{f,286}}. % matched_out_size/1
    {test,is_eq_exact,{f,283},[{x,0},{literal,"*"}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",635}]}.
    {call,1,{f,289}}. % do_multiple_segments_1/1
    {test,is_nil,{f,282},[{x,0}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",636}]}.
    {call,1,{f,289}}. % do_multiple_segments_1/1
    {test,is_nil,{f,281},[{x,0}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",637}]}.
    {call,1,{f,289}}. % do_multiple_segments_1/1
    {test,is_nil,{f,280},[{x,0}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",638}]}.
    {call,1,{f,289}}. % do_multiple_segments_1/1
    {test,is_nil,{f,279},[{x,0}]}.
    {move,{literal,<<99,0,1,1,2,3,4,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",639}]}.
    {call,1,{f,289}}. % do_multiple_segments_1/1
    {test,is_eq_exact,{f,278},[{x,0},{literal,[1,4]}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",641}]}.
    {call,1,{f,292}}. % do_multiple_segments_2/1
    {test,is_nil,{f,277},[{x,0}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",642}]}.
    {call,1,{f,292}}. % do_multiple_segments_2/1
    {test,is_eq_exact,{f,276},[{x,0},{literal,[6]}]}.
    {move,{literal,<<1,2,3,4,5,6,7,8>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",643}]}.
    {call,1,{f,292}}. % do_multiple_segments_2/1
    {test,is_eq_exact,{f,275},[{x,0},{literal,[6,15]}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",645}]}.
    {call,0,{f,310}}. % cs_end/0
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,275}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",643}]}.
    {badmatch,{x,0}}.
  {label,276}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",642}]}.
    {badmatch,{x,0}}.
  {label,277}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",641}]}.
    {badmatch,{x,0}}.
  {label,278}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",639}]}.
    {badmatch,{x,0}}.
  {label,279}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",638}]}.
    {badmatch,{x,0}}.
  {label,280}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",637}]}.
    {badmatch,{x,0}}.
  {label,281}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",636}]}.
    {badmatch,{x,0}}.
  {label,282}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",635}]}.
    {badmatch,{x,0}}.
  {label,283}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",633}]}.
    {badmatch,{x,0}}.
  {label,284}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",632}]}.
    {badmatch,{x,0}}.


{function, matched_out_size, 1, 286}.
  {label,285}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",648}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,matched_out_size},1}.
  {label,286}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",649}]}.
    {call,2,{f,349}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
    {call,1,{f,314}}. % cs_default/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",650}]}.
    {call,1,{f,344}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",651}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,{f,287},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,287}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_1, 1, 289}.
  {label,288}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",654}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,do_multiple_segments_1},1}.
  {label,289}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",655}]}.
    {call,2,{f,339}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
    {call,1,{f,314}}. % cs_default/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",656}]}.
    {call,1,{f,334}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",657}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,{f,290},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,290}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_2, 1, 292}.
  {label,291}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",660}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,do_multiple_segments_2},1}.
  {label,292}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",661}]}.
    {call,2,{f,330}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
    {call,1,{f,312}}. % cs/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",662}]}.
    {call,1,{f,326}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",663}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,{f,293},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,293}.
    {badmatch,{x,0}}.


{function, grab_bag, 1, 295}.
  {label,294}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",666}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,grab_bag},1}.
  {label,295}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {'catch',{y,3},{f,296}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",667}]}.
    {call,1,{f,305}}. % grab_bag_gh_6553/1
  {label,296}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,303},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,303},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,303},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,303},[{x,1},{atom,function_clause}]}.
    {'catch',{y,2},{f,297}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[7]},{location,"bs_bincomp_r24_SUITE.erl",668}]}.
    {call,1,{f,305}}. % grab_bag_gh_6553/1
  {label,297}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,302},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,302},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,302},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,302},[{x,1},{atom,function_clause}]}.
    {'catch',{y,1},{f,298}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[5]},{location,"bs_bincomp_r24_SUITE.erl",669}]}.
    {call,1,{f,305}}. % grab_bag_gh_6553/1
  {label,298}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,301},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,301},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,301},[{x,1}]}.
    {test,test_arity,{f,301},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,301},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,0},{f,299}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[3]},{location,"bs_bincomp_r24_SUITE.erl",672}]}.
    {call,2,{f,323}}. % '-grab_bag/1-lbc$^0/2-0-'/2
    {try_end,{y,0}}.
    {jump,{f,300}}.
  {label,299}.
    {try_case,{y,0}}.
  {label,300}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,301}.
    {line,[{scope,[3]},{location,"bs_bincomp_r24_SUITE.erl",669}]}.
    {badmatch,{x,0}}.
  {label,302}.
    {line,[{scope,[5]},{location,"bs_bincomp_r24_SUITE.erl",668}]}.
    {badmatch,{x,0}}.
  {label,303}.
    {line,[{scope,[7]},{location,"bs_bincomp_r24_SUITE.erl",667}]}.
    {badmatch,{x,0}}.


{function, grab_bag_gh_6553, 1, 305}.
  {label,304}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",676}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,grab_bag_gh_6553},1}.
  {label,305}.
    {test,bs_start_match3,{f,304},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,304},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[676,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,304},[{x,1},0]}.
    {move,{literal,<<>>},{x,0}}.
    {test,bs_start_match3,{f,306},3,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,306},[{x,0},0]}.
    {move,{literal,<<>>},{x,0}}.
    {test,bs_start_match3,{f,306},3,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,306},[{x,0},8]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",678}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{literal,<<>>}}.
    {move,{x,3},{x,0}}.
    return.
  {label,306}.
    {badmatch,{literal,<<>>}}.


{function, cs_init, 0, 308}.
  {label,307}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",680}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_init},0}.
  {label,308}.
    {allocate,0,0}.
    {move,{atom,true},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",681}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs_end, 0, 310}.
  {label,309}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",684}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_end},0}.
  {label,310}.
    {allocate,0,0}.
    {move,{atom,false},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",685}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs, 1, 312}.
  {label,311}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",689}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs},1}.
  {label,312}.
    return.


{function, cs_default, 1, 314}.
  {label,313}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",717}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_default},1}.
  {label,314}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",718}]}.
    {gc_bif,byte_size,{f,0},1,[{x,0}],{x,1}}.
    {allocate_heap,2,3,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {put_tuple2,{x,0},{list,[{atom,binary_info},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",720}]}.
    {call_ext,1,{extfunc,erts_debug,get_internal_state,1}}.
    {test,is_tagged_tuple,{f,315},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,315},[{x,1},{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,315},[{x,1},{literal,{binary,256}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,315},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,315}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",719}]}.
    {badmatch,{x,0}}.


{function, id, 1, 317}.
  {label,316}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",723}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,id},1}.
  {label,317}.
    return.


{function, module_info, 0, 319}.
  {label,318}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,module_info},0}.
  {label,319}.
    {move,{atom,bs_bincomp_r24_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 321}.
  {label,320}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,module_info},1}.
  {label,321}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_bincomp_r24_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-grab_bag/1-lbc$^0/2-0-', 2, 323}.
  {label,322}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",672}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-grab_bag/1-lbc$^0/2-0-'},2}.
  {label,323}.
    {test,bs_start_match3,{f,324},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,324},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[672,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,323}}. % '-grab_bag/1-lbc$^0/2-0-'/2
  {label,324}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lc$^1/1-1-', 1, 326}.
  {label,325}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",662}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_2/1-lc$^1/1-1-'},
               1}.
  {label,326}.
    {test,bs_start_match3,{f,328},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,327},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,327},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,327},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,327},
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
    {call,1,{f,326}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,327}.
    {move,nil,{x,0}}.
    return.
  {label,328}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lbc$^0/2-0-', 2, 330}.
  {label,329}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",661}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_2/1-lbc$^0/2-0-'},
               2}.
  {label,330}.
    {test,bs_start_match3,{f,332},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,331},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,331},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,331},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,331},
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
    {call_only,2,{f,330}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
  {label,331}.
    {move,{x,1},{x,0}}.
    return.
  {label,332}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_1/1-lc$^1/1-1-', 1, 334}.
  {label,333}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",656}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_1/1-lc$^1/1-1-'},
               1}.
  {label,334}.
    {test,bs_start_match3,{f,337},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,336},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,336},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,336},
          4,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,335},[{x,3},{x,2}]}.
    {allocate,1,5}.
    {move,{x,2},{y,0}}.
    {move,{x,4},{x,0}}.
    {call,1,{f,334}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,335}.
    {move,{x,4},{x,0}}.
    {call_only,1,{f,334}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
  {label,336}.
    {move,nil,{x,0}}.
    return.
  {label,337}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_1/1-lbc$^0/2-0-', 2, 339}.
  {label,338}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",655}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_1/1-lbc$^0/2-0-'},
               2}.
  {label,339}.
    {test,bs_start_match3,{f,342},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,341},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,341},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,341},
          5,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,is_eq_exact,{f,340},[{x,4},{x,3}]}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,1},8],{x,6}}.
    {test_heap,0,7}.
    {bs_private_append,{f,0},{x,6},1,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,339}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,340}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,339}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,341}.
    {move,{x,1},{x,0}}.
    return.
  {label,342}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-matched_out_size/1-lc$^1/1-1-', 1, 344}.
  {label,343}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",650}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-matched_out_size/1-lc$^1/1-1-'},
               1}.
  {label,344}.
    {test,bs_start_match3,{f,345},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,345},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,345},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_start_match3,{f,345},3,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,345},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,345},
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
    {call,1,{f,344}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,345}.
    {test,bs_start_match3,{f,346},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,346},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,346},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_start_match3,{f,346},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,346},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,346},
          2,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,344}}. % '-matched_out_size/1-lc$^1/1-1-'/1
  {label,346}.
    {test,bs_start_match3,{f,347},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,347}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-matched_out_size/1-lbc$^0/2-0-', 2, 349}.
  {label,348}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",649}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-matched_out_size/1-lbc$^0/2-0-'},
               2}.
  {label,349}.
    {test,bs_start_match3,{f,350},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,350},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,350},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_start_match3,{f,350},4,[{x,2}],{x,2}}.
    {test,bs_get_integer2,
          {f,350},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,350},
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
    {call_only,2,{f,349}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,350}.
    {test,bs_start_match3,{f,351},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,351},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,351},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_start_match3,{f,351},4,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,351},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,351},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,349}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,351}.
    {test,bs_start_match3,{f,352},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,352}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^4/2-4-', 2, 354}.
  {label,353}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",620}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^4/2-4-'},
               2}.
  {label,354}.
    {test,bs_start_match3,{f,355},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,355},
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
    {call,2,{f,357}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,354},1}. % '-zero_pattern/1-lbc$^4/2-4-'/2
  {label,355}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",622}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^5/2-5-', 2, 357}.
  {label,356}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",620}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^5/2-5-'},
               2}.
  {label,357}.
    {test,is_nonempty_list,{f,359},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,358},[{x,2},{literal,<<>>}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",621}]}.
    {move,{integer,0},{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,357}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
  {label,358}.
    {call_only,2,{f,357}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
  {label,359}.
    {test,is_nil,{f,360},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,360}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",623}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^2/2-2-', 2, 362}.
  {label,361}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^2/2-2-'},
               2}.
  {label,362}.
    {test,bs_start_match3,{f,363},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,363},
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
    {call,2,{f,365}}. % '-zero_pattern/1-lbc$^3/2-3-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,362},1}. % '-zero_pattern/1-lbc$^2/2-2-'/2
  {label,363}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",617}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^3/2-3-', 2, 365}.
  {label,364}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^3/2-3-'},
               2}.
  {label,365}.
    {test,bs_start_match3,{f,366},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,366}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",618}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^1/2-1-', 2, 368}.
  {label,367}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",614}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^1/2-1-'},
               2}.
  {label,368}.
    {test,bs_start_match3,{f,369},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,369},
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
    {call_only,2,{f,368}}. % '-zero_pattern/1-lbc$^1/2-1-'/2
  {label,369}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^0/2-0-', 2, 371}.
  {label,370}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",613}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^0/2-0-'},
               2}.
  {label,371}.
    {test,bs_start_match3,{f,372},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,372},
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
    {call_only,2,{f,371}}. % '-zero_pattern/1-lbc$^0/2-0-'/2
  {label,372}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-encode_chars_compact_map/3-lbc$^0/2-0-', 5, 374}.
  {label,373}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",586}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-encode_chars_compact_map/3-lbc$^0/2-0-'},
               5}.
  {label,374}.
    {test,is_nonempty_list,{f,375},[{x,0}]}.
    {allocate,5,5}.
    {move,{x,4},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,2},{y,4}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,1}}.
    {call,3,{f,262}}. % enc_char_cm/3
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
    {call_last,5,{f,374},5}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5
  {label,375}.
    {test,is_nil,{f,376},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,376}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-hstring_to_bitstring/1-lbc$^0/2-0-', 2, 378}.
  {label,377}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",580}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-hstring_to_bitstring/1-lbc$^0/2-0-'},
               2}.
  {label,378}.
    {test,is_nonempty_list,{f,379},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,255}}. % hex_to_int/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,378},2}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2
  {label,379}.
    {test,is_nil,{f,380},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,380}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^16/2-16-', 2, 382}.
  {label,381}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^16/2-16-'},
               2}.
  {label,382}.
    {test,is_nonempty_list,{f,383},[{x,0}]}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {get_list,{x,0},{x,2},{x,0}}.
    {make_fun3,{f,386},0,0,{x,2},{list,[{x,2}]}}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,382}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,383}.
    {test,is_nil,{f,384},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,384}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-fun-17-', 1, 386}.
  {label,385}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-fun-17-'},
               1}.
  {label,386}.
    return.


{function, '-general_expressions/1-lbc$^15/2-15-', 2, 388}.
  {label,387}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",574}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^15/2-15-'},
               2}.
  {label,388}.
    {test,is_nonempty_list,{f,389},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,389}.
    {test,is_nil,{f,390},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,390}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^14/2-14-', 2, 392}.
  {label,391}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",573}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^14/2-14-'},
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


{function, '-general_expressions/1-lbc$^13/2-13-', 2, 396}.
  {label,395}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",572}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^13/2-13-'},
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


{function, '-general_expressions/1-lbc$^12/2-12-', 2, 400}.
  {label,399}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",571}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^12/2-12-'},
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


{function, '-general_expressions/1-lbc$^11/2-11-', 2, 404}.
  {label,403}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^11/2-11-'},
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


{function, '-general_expressions/1-lbc$^10/2-10-', 2, 408}.
  {label,407}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^10/2-10-'},
               2}.
  {label,408}.
    {test,is_nonempty_list,{f,411},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'div',{f,409},3,[{integer,10},{x,2}],{x,2}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",559}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,409},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,409},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,409},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
    {jump,{f,410}}.
  {label,409}.
    {move,{literal,<<>>},{x,2}}.
  {label,410}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,408}}. % '-general_expressions/1-lbc$^10/2-10-'/2
  {label,411}.
    {test,is_nil,{f,412},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,412}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",562}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^9/2-9-', 2, 414}.
  {label,413}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",557}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^9/2-9-'},
               2}.
  {label,414}.
    {test,is_nonempty_list,{f,418},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
  {label,415}.
    {loop_rec,{f,416},{x,0}}.
    remove_message.
    {jump,{f,417}}.
  {label,416}.
    {wait,{f,415}}.
  {label,417}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,414},2}. % '-general_expressions/1-lbc$^9/2-9-'/2
  {label,418}.
    {test,is_nil,{f,419},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,419}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^8/2-8-', 2, 421}.
  {label,420}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^8/2-8-'},
               2}.
  {label,421}.
    {test,is_nonempty_list,{f,424},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,422},3,[{x,2},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,422},[{x,3},{integer,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",553}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
    {jump,{f,423}}.
  {label,422}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",554}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
  {label,423}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,421}}. % '-general_expressions/1-lbc$^8/2-8-'/2
  {label,424}.
    {test,is_nil,{f,425},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,425}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",555}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^6/2-6-', 2, 427}.
  {label,426}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^6/2-6-'},
               2}.
  {label,427}.
    {test,is_nonempty_list,{f,428},[{x,0}]}.
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
    {call,2,{f,431}}. % '-general_expressions/1-lbc$^7/2-7-'/2
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,3},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,427},4}. % '-general_expressions/1-lbc$^6/2-6-'/2
  {label,428}.
    {test,is_nil,{f,429},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,429}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",551}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^7/2-7-', 2, 431}.
  {label,430}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^7/2-7-'},
               2}.
  {label,431}.
    {test,is_nonempty_list,{f,432},[{x,0}]}.
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
    {call,1,{f,317}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,431},2}. % '-general_expressions/1-lbc$^7/2-7-'/2
  {label,432}.
    {test,is_nil,{f,433},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,433}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^5/2-5-', 2, 435}.
  {label,434}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^5/2-5-'},
               2}.
  {label,435}.
    {test,is_nonempty_list,{f,439},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},3,[{x,2},{integer,2}],{x,3}}.
    {select_val,{x,3},
                {f,441},
                {list,[{integer,0},{f,437},{integer,1},{f,436}]}}.
  {label,436}.
    {move,{literal,<<>>},{x,2}}.
    {jump,{f,438}}.
  {label,437}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",547}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
  {label,438}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,435}}. % '-general_expressions/1-lbc$^5/2-5-'/2
  {label,439}.
    {test,is_nil,{f,440},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,440}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",549}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,441}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {case_end,{x,3}}.


{function, '-general_expressions/1-lbc$^4/2-4-', 2, 443}.
  {label,442}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^4/2-4-'},
               2}.
  {label,443}.
    {test,is_nonempty_list,{f,444},[{x,0}]}.
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
    {call,1,{f,317}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,443},2}. % '-general_expressions/1-lbc$^4/2-4-'/2
  {label,444}.
    {test,is_nil,{f,445},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,445}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^3/2-3-', 2, 447}.
  {label,446}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^3/2-3-'},
               2}.
  {label,447}.
    {test,is_nonempty_list,{f,448},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,447}}. % '-general_expressions/1-lbc$^3/2-3-'/2
  {label,448}.
    {test,is_nil,{f,449},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,449}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^2/2-2-', 2, 451}.
  {label,450}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^2/2-2-'},
               2}.
  {label,451}.
    {test,bs_start_match3,{f,453},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,452},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[540,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,452},
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
    {call,1,{f,317}}. % id/1
    {line,[{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,451},2}. % '-general_expressions/1-lbc$^2/2-2-'/2
  {label,452}.
    {move,{x,1},{x,0}}.
    return.
  {label,453}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",543}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^1/2-1-', 2, 455}.
  {label,454}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^1/2-1-'},
               2}.
  {label,455}.
    {test,is_nonempty_list,{f,456},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,3},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,3,{string,<<"abc">>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,455}}. % '-general_expressions/1-lbc$^1/2-1-'/2
  {label,456}.
    {test,is_nil,{f,457},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,457}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^0/2-0-', 2, 459}.
  {label,458}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^0/2-0-'},
               2}.
  {label,459}.
    {test,is_nonempty_list,{f,460},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,3},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,3,{string,<<1,2,3>>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,459}}. % '-general_expressions/1-lbc$^0/2-0-'/2
  {label,460}.
    {test,is_nil,{f,461},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,461}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^33/2-18-', 2, 463}.
  {label,462}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",527}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^33/2-18-'},2}.
  {label,463}.
    {test,bs_start_match3,{f,465},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,464},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[527,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,464},
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
    {call_only,2,{f,463}}. % '-sizes/1-lbc$^33/2-18-'/2
  {label,464}.
    {move,{x,1},{x,0}}.
    return.
  {label,465}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-32-', 1, 467}.
  {label,466}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",521}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-32-'},1}.
  {label,467}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",522}]}.
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,469}}. % '-sizes/1-lbc$^31/2-17-'/2
    {call_last,1,{f,314},0}. % cs_default/1


{function, '-sizes/1-lbc$^31/2-17-', 2, 469}.
  {label,468}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",522}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^31/2-17-'},2}.
  {label,469}.
    {test,bs_start_match3,{f,471},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,470},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[522,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,470},
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
    {call_only,2,{f,469}}. % '-sizes/1-lbc$^31/2-17-'/2
  {label,470}.
    {move,{x,1},{x,0}}.
    return.
  {label,471}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-30-', 2, 473}.
  {label,472}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",515}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-30-'},2}.
  {label,473}.
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
    {call,3,{f,475}}. % '-sizes/1-lbc$^28/2-15-'/3
    {call_last,1,{f,314},0}. % cs_default/1


{function, '-sizes/1-lbc$^28/2-15-', 3, 475}.
  {label,474}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^28/2-15-'},3}.
  {label,475}.
    {test,is_nonempty_list,{f,476},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,479}}. % '-sizes/1-lbc$^29/2-16-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,475},2}. % '-sizes/1-lbc$^28/2-15-'/3
  {label,476}.
    {test,is_nil,{f,477},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,477}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^29/2-16-', 3, 479}.
  {label,478}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^29/2-16-'},3}.
  {label,479}.
    {test,bs_start_match3,{f,481},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,480},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[516,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,480},
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
    {call_only,3,{f,479}}. % '-sizes/1-lbc$^29/2-16-'/3
  {label,480}.
    {move,{x,1},{x,0}}.
    return.
  {label,481}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^27/2-14-', 2, 483}.
  {label,482}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^27/2-14-'},2}.
  {label,483}.
    {test,bs_start_match3,{f,485},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,484},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[513,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,484},
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
    {call_only,2,{f,483}}. % '-sizes/1-lbc$^27/2-14-'/2
  {label,484}.
    {move,{x,1},{x,0}}.
    return.
  {label,485}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^26/2-13-', 2, 487}.
  {label,486}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",512}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^26/2-13-'},2}.
  {label,487}.
    {test,is_nonempty_list,{f,488},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{x,2},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{x,2},1,{field_flags,[]},{integer,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,487}}. % '-sizes/1-lbc$^26/2-13-'/2
  {label,488}.
    {test,is_nil,{f,489},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,489}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-25-', 1, 491}.
  {label,490}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",502}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-25-'},1}.
  {label,491}.
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
    {call,2,{f,493}}. % '-sizes/1-lbc$^24/2-12-'/2
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^24/2-12-', 2, 493}.
  {label,492}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",503}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^24/2-12-'},2}.
  {label,493}.
    {test,bs_start_match3,{f,495},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,494},
          3,
          [{x,2},
           {integer,4},
           1,
           {field_flags,[{anno,[503,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,494},
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
    {call_only,2,{f,493}}. % '-sizes/1-lbc$^24/2-12-'/2
  {label,494}.
    {move,{x,1},{x,0}}.
    return.
  {label,495}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-23-', 3, 497}.
  {label,496}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",492}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-23-'},3}.
  {label,497}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",493}]}.
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,3,0}.
    {call,4,{f,499}}. % '-sizes/1-lbc$^22/2-11-'/4
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^22/2-11-', 4, 499}.
  {label,498}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",493}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^22/2-11-'},4}.
  {label,499}.
    {test,bs_start_match3,{f,501},4,[{x,0}],{x,4}}.
    {test,bs_get_integer2,
          {f,500},
          5,
          [{x,4},
           {x,2},
           1,
           {field_flags,[{anno,[493,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,500},
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
    {call_only,4,{f,499}}. % '-sizes/1-lbc$^22/2-11-'/4
  {label,500}.
    {move,{x,1},{x,0}}.
    return.
  {label,501}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-21-', 1, 503}.
  {label,502}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",480}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-21-'},1}.
  {label,503}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",481}]}.
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,505}}. % '-sizes/1-lbc$^20/2-10-'/2
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^20/2-10-', 2, 505}.
  {label,504}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",481}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^20/2-10-'},2}.
  {label,505}.
    {test,bs_start_match3,{f,507},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,506},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[481,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,506},
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
    {call_only,2,{f,505}}. % '-sizes/1-lbc$^20/2-10-'/2
  {label,506}.
    {move,{x,1},{x,0}}.
    return.
  {label,507}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-19-', 1, 509}.
  {label,508}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",473}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-19-'},1}.
  {label,509}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",474}]}.
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,511}}. % '-sizes/1-lbc$^18/2-9-'/2
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^18/2-9-', 2, 511}.
  {label,510}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",474}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^18/2-9-'},2}.
  {label,511}.
    {test,bs_start_match3,{f,513},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,512},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[474,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,512},
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
    {call_only,2,{f,511}}. % '-sizes/1-lbc$^18/2-9-'/2
  {label,512}.
    {move,{x,1},{x,0}}.
    return.
  {label,513}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-17-', 1, 515}.
  {label,514}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",465}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-17-'},1}.
  {label,515}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",466}]}.
    {call,2,{f,517}}. % '-sizes/1-lbc$^16/2-8-'/2
    {call_last,1,{f,314},0}. % cs_default/1


{function, '-sizes/1-lbc$^16/2-8-', 2, 517}.
  {label,516}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",466}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^16/2-8-'},2}.
  {label,517}.
    {test,is_nonempty_list,{f,518},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_utf8_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,517}}. % '-sizes/1-lbc$^16/2-8-'/2
  {label,518}.
    {test,is_nil,{f,519},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,519}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-15-', 2, 521}.
  {label,520}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",459}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-15-'},2}.
  {label,521}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,522},2,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,522},2,[{x,1},{integer,8}],{x,1}}.
    {gc_bif,'*',{f,522},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,522},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,522},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,523}}.
  {label,522}.
    {move,{integer,256},{x,0}}.
  {label,523}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",460}]}.
    {call,3,{f,525}}. % '-sizes/1-lbc$^14/2-7-'/3
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^14/2-7-', 3, 525}.
  {label,524}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",460}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^14/2-7-'},3}.
  {label,525}.
    {test,is_nonempty_list,{f,526},[{x,0}]}.
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
    {call_only,3,{f,525}}. % '-sizes/1-lbc$^14/2-7-'/3
  {label,526}.
    {test,is_nil,{f,527},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,527}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-13-', 4, 529}.
  {label,528}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",452}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-13-'},4}.
  {label,529}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,530},4,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,530},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,530},4,[{x,2},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,530},4,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'+',{f,530},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,530},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,530},3,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'+',{f,530},2,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,530},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,530},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,530},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,531}}.
  {label,530}.
    {move,{integer,256},{x,0}}.
  {label,531}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",453}]}.
    {call,5,{f,533}}. % '-sizes/1-lbc$^12/2-6-'/5
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^12/2-6-', 5, 533}.
  {label,532}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",453}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^12/2-6-'},5}.
  {label,533}.
    {test,is_nonempty_list,{f,534},[{x,0}]}.
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
    {call_only,5,{f,533}}. % '-sizes/1-lbc$^12/2-6-'/5
  {label,534}.
    {test,is_nil,{f,535},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,535}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",454}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-11-', 4, 537}.
  {label,536}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",446}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-11-'},4}.
  {label,537}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,538},4,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,538},4,[{x,2},{integer,8}],{x,1}}.
    {gc_bif,'+',{f,538},4,[{y,1},{x,1}],{x,1}}.
    {gc_bif,'*',{f,538},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,538},3,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'*',{f,538},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,538},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,538},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,539}}.
  {label,538}.
    {move,{integer,256},{x,0}}.
  {label,539}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",447}]}.
    {call,5,{f,541}}. % '-sizes/1-lbc$^10/2-5-'/5
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^10/2-5-', 5, 541}.
  {label,540}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",447}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^10/2-5-'},5}.
  {label,541}.
    {test,is_nonempty_list,{f,542},[{x,0}]}.
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
    {call_only,5,{f,541}}. % '-sizes/1-lbc$^10/2-5-'/5
  {label,542}.
    {test,is_nil,{f,543},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,543}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-9-', 2, 545}.
  {label,544}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",439}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-9-'},2}.
  {label,545}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,546},2,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,546},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,546},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,546},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,547}}.
  {label,546}.
    {move,{integer,256},{x,0}}.
  {label,547}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",440}]}.
    {call,3,{f,549}}. % '-sizes/1-lbc$^8/2-4-'/3
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^8/2-4-', 3, 549}.
  {label,548}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",440}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^8/2-4-'},3}.
  {label,549}.
    {test,is_nonempty_list,{f,550},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{x,2},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{x,2},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,549}}. % '-sizes/1-lbc$^8/2-4-'/3
  {label,550}.
    {test,is_nil,{f,551},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,551}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-7-', 1, 553}.
  {label,552}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",432}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-7-'},1}.
  {label,553}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,554},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,554},1,[{x,0},{integer,3}],{x,0}}.
    {gc_bif,'+',{f,554},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,554},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,555}}.
  {label,554}.
    {move,{integer,256},{x,0}}.
  {label,555}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",433}]}.
    {call,2,{f,557}}. % '-sizes/1-lbc$^6/2-3-'/2
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^6/2-3-', 2, 557}.
  {label,556}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",433}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^6/2-3-'},2}.
  {label,557}.
    {test,is_nonempty_list,{f,558},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,557}}. % '-sizes/1-lbc$^6/2-3-'/2
  {label,558}.
    {test,is_nil,{f,559},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,559}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-5-', 1, 561}.
  {label,560}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",423}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-5-'},1}.
  {label,561}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,562},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,562},1,[{x,0},{integer,4}],{x,0}}.
    {gc_bif,'+',{f,562},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,562},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,563}}.
  {label,562}.
    {move,{integer,256},{x,0}}.
  {label,563}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",424}]}.
    {call,2,{f,565}}. % '-sizes/1-lbc$^4/2-2-'/2
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^4/2-2-', 2, 565}.
  {label,564}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",424}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^4/2-2-'},2}.
  {label,565}.
    {test,is_nonempty_list,{f,566},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,565}}. % '-sizes/1-lbc$^4/2-2-'/2
  {label,566}.
    {test,is_nil,{f,567},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,567}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-3-', 1, 569}.
  {label,568}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",415}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-3-'},1}.
  {label,569}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,570},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,570},1,[{x,0},{integer,2}],{x,0}}.
    {jump,{f,571}}.
  {label,570}.
    {move,{integer,256},{x,0}}.
  {label,571}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",416}]}.
    {call,2,{f,573}}. % '-sizes/1-lbc$^2/2-1-'/2
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^2/2-1-', 2, 573}.
  {label,572}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",416}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^2/2-1-'},2}.
  {label,573}.
    {test,is_nonempty_list,{f,574},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,573}}. % '-sizes/1-lbc$^2/2-1-'/2
  {label,574}.
    {test,is_nil,{f,575},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,575}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-1-', 1, 577}.
  {label,576}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",407}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-1-'},1}.
  {label,577}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,578},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,578},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,579}}.
  {label,578}.
    {move,{integer,256},{x,0}}.
  {label,579}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",408}]}.
    {call,2,{f,581}}. % '-sizes/1-lbc$^0/2-0-'/2
    {call_last,1,{f,312},0}. % cs/1


{function, '-sizes/1-lbc$^0/2-0-', 2, 581}.
  {label,580}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",408}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^0/2-0-'},2}.
  {label,581}.
    {test,is_nonempty_list,{f,582},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,581}}. % '-sizes/1-lbc$^0/2-0-'/2
  {label,582}.
    {test,is_nil,{f,583},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,583}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch_1/2-lbc$^0/2-0-', 3, 585}.
  {label,584}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",403}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch_1/2-lbc$^0/2-0-'},
               3}.
  {label,585}.
    {test,bs_start_match3,{f,587},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,586},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[403,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,586},
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
    {call_only,3,{f,585}}. % '-nomatch_1/2-lbc$^0/2-0-'/3
  {label,586}.
    {move,{x,1},{x,0}}.
    return.
  {label,587}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^12/2-12-', 2, 589}.
  {label,588}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^12/2-12-'},
               2}.
  {label,589}.
    {test,bs_start_match3,{f,592},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,591},
          3,
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[398,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,590},[{x,3},{integer,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,590}.
    {test,bs_get_binary2,
          {f,591},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[398,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,589}}. % '-nomatch/1-lbc$^12/2-12-'/2
  {label,591}.
    {move,{x,1},{x,0}}.
    return.
  {label,592}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^10/2-10-', 2, 594}.
  {label,593}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^10/2-10-'},
               2}.
  {label,594}.
    {test,is_nonempty_list,{f,595},[{x,0}]}.
    {allocate,1,2}.
    {get_tl,{x,0},{y,0}}.
    {move,{atom,ok},{x,0}}.
    {call,2,{f,598}}. % '-nomatch/1-lbc$^11/2-11-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,594},1}. % '-nomatch/1-lbc$^10/2-10-'/2
  {label,595}.
    {test,is_nil,{f,596},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,596}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^11/2-11-', 2, 598}.
  {label,597}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^11/2-11-'},
               2}.
  {label,598}.
    {test,is_nonempty_list,{f,599},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,598}}. % '-nomatch/1-lbc$^11/2-11-'/2
  {label,599}.
    {test,is_nil,{f,600},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,600}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^8/2-8-', 2, 602}.
  {label,601}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^8/2-8-'},2}.
  {label,602}.
    {test,is_nonempty_list,{f,603},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{atom,ok},{x,0}}.
    {call,3,{f,606}}. % '-nomatch/1-lbc$^9/2-9-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,602},1}. % '-nomatch/1-lbc$^8/2-8-'/2
  {label,603}.
    {test,is_nil,{f,604},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,604}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^9/2-9-', 3, 606}.
  {label,605}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^9/2-9-'},3}.
  {label,606}.
    {test,is_nonempty_list,{f,607},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,3,{f,606}}. % '-nomatch/1-lbc$^9/2-9-'/3
  {label,607}.
    {test,is_nil,{f,608},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,608}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^7/2-7-', 2, 610}.
  {label,609}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",390}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^7/2-7-'},2}.
  {label,610}.
    {test,bs_start_match3,{f,612},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,611},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[390,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,611},
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
    {call_only,2,{f,610}}. % '-nomatch/1-lbc$^7/2-7-'/2
  {label,611}.
    {move,{x,1},{x,0}}.
    return.
  {label,612}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^6/2-6-', 2, 614}.
  {label,613}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^6/2-6-'},2}.
  {label,614}.
    {test,bs_start_match3,{f,616},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,615},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[385,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,615},
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
    {call_only,2,{f,614}}. % '-nomatch/1-lbc$^6/2-6-'/2
  {label,615}.
    {move,{x,1},{x,0}}.
    return.
  {label,616}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^5/2-5-', 2, 618}.
  {label,617}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^5/2-5-'},2}.
  {label,618}.
    {test,bs_start_match3,{f,620},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,619},
          3,
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[382,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,619},
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
    {call_only,2,{f,618}}. % '-nomatch/1-lbc$^5/2-5-'/2
  {label,619}.
    {move,{x,1},{x,0}}.
    return.
  {label,620}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^4/2-4-', 2, 622}.
  {label,621}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^4/2-4-'},2}.
  {label,622}.
    {test,bs_start_match3,{f,623},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,623}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^3/2-3-', 2, 625}.
  {label,624}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^3/2-3-'},2}.
  {label,625}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lc$^2/1-2-', 1, 627}.
  {label,626}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lc$^2/1-2-'},1}.
  {label,627}.
    {test,bs_start_match3,{f,628},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,628}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lc$^1/1-1-', 1, 630}.
  {label,629}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lc$^1/1-1-'},1}.
  {label,630}.
    {move,nil,{x,0}}.
    return.


{function, '-nomatch/1-lbc$^0/2-0-', 2, 632}.
  {label,631}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^0/2-0-'},2}.
  {label,632}.
    {test,is_nonempty_list,{f,633},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,632}}. % '-nomatch/1-lbc$^0/2-0-'/2
  {label,633}.
    {test,is_nil,{f,634},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,634}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_strange/2-lbc$^0/2-1-', 2, 636}.
  {label,635}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",363}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_strange/2-lbc$^0/2-1-'},
               2}.
  {label,636}.
    {test,bs_start_match3,{f,638},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,637},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[363,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,637},
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
    {call_only,2,{f,636}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
  {label,637}.
    {move,{x,1},{x,0}}.
    return.
  {label,638}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_strange/2-lbc$^1/2-0-', 2, 640}.
  {label,639}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",362}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_strange/2-lbc$^1/2-0-'},
               2}.
  {label,640}.
    {test,bs_start_match3,{f,642},2,[{x,0}],{x,2}}.
    {test,bs_get_utf8,
          {f,641},
          3,
          [{x,2},
           {field_flags,[{anno,[362,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,641},
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
    {call_only,2,{f,640}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
  {label,641}.
    {move,{x,1},{x,0}}.
    return.
  {label,642}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_trimmer/1-lbc$^0/2-0-', 2, 644}.
  {label,643}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",354}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_trimmer/1-lbc$^0/2-0-'},
               2}.
  {label,644}.
    {test,is_nonempty_list,{f,645},[{x,0}]}.
    {allocate_heap,4,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {put_tuple2,{x,0},{list,[{y,2},{y,2},{y,2}]}}.
    {call,1,{f,317}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,647},[{x,0}]}.
    {test,test_arity,{f,647},[{x,0},3]}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,317}}. % id/1
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
    {call_last,2,{f,644},4}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2
  {label,645}.
    {test,is_nil,{f,646},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,646}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",356}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,647}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",354}]}.
    {badmatch,{y,0}}.


{function, '-coverage_lightfv/3-lbc$^0/2-0-', 2, 649}.
  {label,648}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",347}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_lightfv/3-lbc$^0/2-0-'},
               2}.
  {label,649}.
    {test,is_nonempty_list,{f,650},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,649}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
  {label,650}.
    {test,is_nil,{f,651},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,651}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_materialiv/3-lbc$^0/2-0-', 2, 653}.
  {label,652}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",342}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_materialiv/3-lbc$^0/2-0-'},
               2}.
  {label,653}.
    {test,is_nonempty_list,{f,654},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,653}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
  {label,654}.
    {test,is_nil,{f,655},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,655}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^8/2-8-', 2, 657}.
  {label,656}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",323}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^8/2-8-'},2}.
  {label,657}.
    {test,is_nonempty_list,{f,659},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,658},[{x,2},{integer,42}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,1},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,1,{string,<<"*">>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,657}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,658}.
    {call_only,2,{f,657}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,659}.
    {test,is_nil,{f,660},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,660}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^7/2-7-', 2, 662}.
  {label,661}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",319}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^7/2-7-'},2}.
  {label,662}.
    {test,bs_start_match3,{f,665},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,664},
          3,
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_position,{x,2},{x,4},4}.
    {test,is_eq_exact,{f,663},[{x,3},{integer,0}]}.
    {test,bs_get_integer2,
          {f,663},
          5,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,663},
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
    {call_only,2,{f,662}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,663}.
    {bs_set_position,{x,2},{x,4}}.
    {test,bs_skip_bits2,
          {f,664},
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,664},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,662}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,664}.
    {move,{x,1},{x,0}}.
    return.
  {label,665}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",320}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^6/2-6-', 2, 667}.
  {label,666}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",316}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^6/2-6-'},2}.
  {label,667}.
    {test,is_nonempty_list,{f,669},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,bs_start_match3,{f,668},3,[{x,2}],{x,2}}.
    {test,bs_get_integer2,
          {f,668},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[316,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,668},[{x,2},0]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,2,{f,667}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,668}.
    {call_only,2,{f,667}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,669}.
    {test,is_nil,{f,670},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,670}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^5/2-5-', 2, 672}.
  {label,671}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",310}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^5/2-5-'},2}.
  {label,672}.
    {test,is_nonempty_list,{f,675},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nonempty_list,{f,673},[{x,2}]}.
    {gc_bif,length,{f,0},3,[{x,2}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {jump,{f,674}}.
  {label,673}.
    {test,is_nil,{f,677},[{x,2}]}.
  {label,674}.
    {call_only,2,{f,672}}. % '-filters/1-lbc$^5/2-5-'/2
  {label,675}.
    {test,is_nil,{f,676},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,676}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",311}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,677}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",312}]}.
    {case_end,{x,2}}.


{function, '-filters/1-lbc$^4/2-4-', 2, 679}.
  {label,678}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^4/2-4-'},2}.
  {label,679}.
    {test,is_nonempty_list,{f,684},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",308}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,682},
                {list,[{atom,false},{f,680},{atom,true},{f,681}]}}.
  {label,680}.
    {gc_bif,'rem',{f,681},0,[{y,1},{integer,2}],{x,0}}.
    {test,is_eq,{f,681},[{x,0},{integer,1}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,683}}.
  {label,681}.
    {move,{y,2},{x,1}}.
    {jump,{f,683}}.
  {label,682}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",308}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {move,{x,0},{x,1}}.
  {label,683}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,679},3}. % '-filters/1-lbc$^4/2-4-'/2
  {label,684}.
    {test,is_nil,{f,685},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,685}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",307}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^3/2-3-', 2, 687}.
  {label,686}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^3/2-3-'},2}.
  {label,687}.
    {test,is_nonempty_list,{f,692},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",304}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,691},
                {list,[{atom,false},{f,689},{atom,true},{f,688}]}}.
  {label,688}.
    {gc_bif,'rem',{f,689},0,[{y,1},{integer,2}],{x,0}}.
    {test,is_eq,{f,689},[{x,0},{integer,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,690}}.
  {label,689}.
    {move,{y,2},{x,1}}.
  {label,690}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,687},3}. % '-filters/1-lbc$^3/2-3-'/2
  {label,691}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",304}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,692}.
    {test,is_nil,{f,693},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,693}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",303}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^2/2-2-', 2, 695}.
  {label,694}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^2/2-2-'},2}.
  {label,695}.
    {test,is_nonempty_list,{f,700},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",301}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,698},
                {list,[{atom,false},{f,697},{atom,true},{f,696}]}}.
  {label,696}.
    {move,{y,2},{x,1}}.
    {jump,{f,699}}.
  {label,697}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,699}}.
  {label,698}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",301}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {move,{x,0},{x,1}}.
  {label,699}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,695},3}. % '-filters/1-lbc$^2/2-2-'/2
  {label,700}.
    {test,is_nil,{f,701},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,701}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",300}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^1/2-1-', 2, 703}.
  {label,702}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^1/2-1-'},2}.
  {label,703}.
    {test,is_nonempty_list,{f,708},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",298}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,707},
                {list,[{atom,false},{f,705},{atom,true},{f,704}]}}.
  {label,704}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,706}}.
  {label,705}.
    {move,{y,2},{x,1}}.
  {label,706}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,703},3}. % '-filters/1-lbc$^1/2-1-'/2
  {label,707}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",298}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,708}.
    {test,is_nil,{f,709},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,709}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",297}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^0/2-0-', 2, 711}.
  {label,710}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",293}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^0/2-0-'},2}.
  {label,711}.
    {test,bs_start_match3,{f,714},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,713},
          3,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[293,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,713},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[293,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'rem',{f,712},5,[{x,3},{integer,2}],{x,0}}.
    {test,is_eq,{f,712},[{x,0},{integer,0}]}.
    {gc_bif,'-',{f,0},5,[{x,3},{integer,32}],{x,0}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,711}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,712}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,711}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,713}.
    {move,{x,1},{x,0}}.
    return.
  {label,714}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",294}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-inconsistent_types_2/0-lbc$^0/2-0-', 3, 716}.
  {label,715}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",282}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-inconsistent_types_2/0-lbc$^0/2-0-'},
               3}.
  {label,716}.
    {test,is_nonempty_list,{f,720},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bif,'/=',{f,0},[{x,2},nil],{x,3}}.
    {test,is_eq_exact,{f,722},[{x,3},{atom,false}]}.
    {test,is_eq_exact,{f,722},[{x,3},{x,2}]}.
    {test,is_ne_exact,{f,718},[{x,3},{atom,true}]}.
    {select_val,{x,2},
                {f,719},
                {list,[{atom,false},{f,718},{atom,true},{f,717}]}}.
  {label,717}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
  {label,718}.
    {call_only,3,{f,716}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
  {label,719}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,2}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",285}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,720}.
    {test,is_nil,{f,721},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,721}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",284}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,722}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",285}]}.
    {badmatch,{x,3}}.


{function, '-inconsistent_types_1/1-lbc$^0/2-0-', 3, 724}.
  {label,723}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",264}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-inconsistent_types_1/1-lbc$^0/2-0-'},
               3}.
  {label,724}.
    {test,is_nonempty_list,{f,730},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bif,is_pid,{f,0},[{x,2}],{x,3}}.
    {test,is_map,{f,732},[{x,2}]}.
    {test,is_eq_exact,{f,725},[{x,3},{atom,true}]}.
    {move,{atom,false},{x,4}}.
    {jump,{f,726}}.
  {label,725}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",270}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,726}.
    {get_map_elements,{f,732},{x,2},{list,[{x,4},{x,4}]}}.
    {test,is_eq_exact,{f,732},[{x,4},{x,3}]}.
    {select_val,{x,2},
                {f,729},
                {list,[{atom,false},{f,728},{atom,true},{f,727}]}}.
  {label,727}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",264}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
  {label,728}.
    {call_only,3,{f,724}}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3
  {label,729}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,2}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",266}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,730}.
    {test,is_nil,{f,731},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,731}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",265}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,732}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",268}]}.
    {badmatch,{x,2}}.


{function, '-float_segment_size/0-lbc$^0/2-0-', 3, 734}.
  {label,733}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",254}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-float_segment_size/0-lbc$^0/2-0-'},
               3}.
  {label,734}.
    {test,bs_start_match3,{f,737},3,[{x,0}],{x,3}}.
    {test,bs_get_float2,
          {f,736},
          4,
          [{x,3},
           {x,2},
           8,
           {field_flags,[{anno,[254,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,735},[{x,4},{float,5.9}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,735}.
    {test,bs_get_binary2,
          {f,736},
          4,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[254,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,734}}. % '-float_segment_size/0-lbc$^0/2-0-'/3
  {label,736}.
    {move,{x,1},{x,0}}.
    return.
  {label,737}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",255}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^0/2-0-', 2, 739}.
  {label,738}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-over_complex_generator/0-lbc$^0/2-0-'},
               2}.
  {label,739}.
    {test,bs_start_match3,{f,742},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,741},
          3,
          [{x,2},
           {integer,2},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,740},[{x,3},{integer,0}]}.
    {test,bs_get_binary2,
          {f,740},
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
    {call,2,{f,744}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,739},1}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,740}.
    {test,bs_get_binary2,
          {f,741},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,739}}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,741}.
    {move,{x,1},{x,0}}.
    return.
  {label,742}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",235}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^1/2-1-', 2, 744}.
  {label,743}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-over_complex_generator/0-lbc$^1/2-1-'},
               2}.
  {label,744}.
    {test,bs_start_match3,{f,746},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,745},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,745},
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
    {call_only,2,{f,744}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
  {label,745}.
    {move,{x,1},{x,0}}.
    return.
  {label,746}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",237}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_match_context_2/1-lbc$^0/2-0-', 2, 748}.
  {label,747}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",229}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_match_context_2/1-lbc$^0/2-0-'},
               2}.
  {label,748}.
    {test,bs_start_match3,{f,750},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,749},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[229,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,749},
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
    {call_only,2,{f,748}}. % '-do_match_context_2/1-lbc$^0/2-0-'/2
  {label,749}.
    {move,{x,1},{x,0}}.
    return.
  {label,750}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-match_context_1/1-lbc$^0/2-0-', 2, 752}.
  {label,751}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",223}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-match_context_1/1-lbc$^0/2-0-'},
               2}.
  {label,752}.
    {test,bs_start_match3,{f,754},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,753},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[223,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,753},
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
    {call_only,2,{f,752}}. % '-match_context_1/1-lbc$^0/2-0-'/2
  {label,753}.
    {move,{x,1},{x,0}}.
    return.
  {label,754}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^1/2-1-', 2, 756}.
  {label,755}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^1/2-1-'},2}.
  {label,756}.
    {test,is_nonempty_list,{f,757},[{x,0}]}.
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
    {call,2,{f,760}}. % '-gen_data/1-lbc$^2/2-2-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,756},1}. % '-gen_data/1-lbc$^1/2-1-'/2
  {label,757}.
    {test,is_nil,{f,758},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,758}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^2/2-2-', 2, 760}.
  {label,759}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^2/2-2-'},2}.
  {label,760}.
    {test,is_nonempty_list,{f,761},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,760}}. % '-gen_data/1-lbc$^2/2-2-'/2
  {label,761}.
    {test,is_nil,{f,762},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,762}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",220}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^0/2-0-', 2, 764}.
  {label,763}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",218}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^0/2-0-'},2}.
  {label,764}.
    {test,is_nonempty_list,{f,765},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,764}}. % '-gen_data/1-lbc$^0/2-0-'/2
  {label,765}.
    {test,is_nil,{f,766},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,766}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_lc/1-lc$^0/1-0-', 1, 768}.
  {label,767}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",215}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-silly_lc/1-lc$^0/1-0-'},1}.
  {label,768}.
    {test,is_nonempty_list,{f,769},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,768}}. % '-silly_lc/1-lc$^0/1-0-'/1
    {test_heap,6,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,769}.
    {test,is_nil,{f,770},[{x,0}]}.
    return.
  {label,770}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_bc/1-lbc$^0/2-0-', 2, 772}.
  {label,771}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",210}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-silly_bc/1-lbc$^0/2-0-'},2}.
  {label,772}.
    {test,bs_start_match3,{f,774},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,773},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[210,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,773},
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
    {call_only,2,{f,772}}. % '-silly_bc/1-lbc$^0/2-0-'/2
  {label,773}.
    {move,{x,1},{x,0}}.
    return.
  {label,774}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^0/2-0-', 3, 776}.
  {label,775}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_size/2-lbc$^0/2-0-'},
               3}.
  {label,776}.
    {test,is_nonempty_list,{f,777},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,780}}. % '-mixed_size/2-lbc$^1/2-1-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,776},2}. % '-mixed_size/2-lbc$^0/2-0-'/3
  {label,777}.
    {test,is_nil,{f,778},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,778}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^1/2-1-', 3, 780}.
  {label,779}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_size/2-lbc$^1/2-1-'},
               3}.
  {label,780}.
    {test,bs_start_match3,{f,782},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,781},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[197,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,781},
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
    {call_only,3,{f,780}}. % '-mixed_size/2-lbc$^1/2-1-'/3
  {label,781}.
    {move,{x,1},{x,0}}.
    return.
  {label,782}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_nested/1-lbc$^0/2-0-', 2, 784}.
  {label,783}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",194}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_nested/1-lbc$^0/2-0-'},
               2}.
  {label,784}.
    {test,is_nonempty_list,{f,785},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,784}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
  {label,785}.
    {test,is_nil,{f,786},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,786}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-fun-26-', 1, 788}.
  {label,787}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",186}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-fun-26-'},1}.
  {label,788}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",187}]}.
    {call,2,{f,791}}. % '-mixed/1-lc$^25/1-25-'/2
    {test,is_nil,{f,789},[{x,0}]}.
    {deallocate,0}.
    return.
  {label,789}.
    {badmatch,{x,0}}.


{function, '-mixed/1-lc$^25/1-25-', 2, 791}.
  {label,790}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",187}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^25/1-25-'},2}.
  {label,791}.
    {test,bs_start_match3,{f,794},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,794},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,794},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'bsr',{f,792},4,[{x,3},{integer,1}],{x,3}}.
    {jump,{f,793}}.
  {label,792}.
    {move,{atom,bad_size},{x,3}}.
  {label,793}.
    {test,bs_start_match3,{f,794},4,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,794},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,794},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,2,{f,791}}. % '-mixed/1-lc$^25/1-25-'/2
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,794}.
    {test,bs_start_match3,{f,797},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,797},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,797},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'bsr',{f,795},4,[{x,3},{integer,1}],{x,3}}.
    {jump,{f,796}}.
  {label,795}.
    {move,{atom,bad_size},{x,3}}.
  {label,796}.
    {test,bs_start_match3,{f,797},4,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,797},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,797},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,791}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,797}.
    {test,bs_start_match3,{f,798},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,798}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^23/2-23-', 2, 800}.
  {label,799}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^23/2-23-'},2}.
  {label,800}.
    {test,is_nonempty_list,{f,801},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,804}}. % '-mixed/1-lbc$^24/2-24-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,800},1}. % '-mixed/1-lbc$^23/2-23-'/2
  {label,801}.
    {test,is_nil,{f,802},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,802}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^24/2-24-', 2, 804}.
  {label,803}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^24/2-24-'},2}.
  {label,804}.
    {test,is_nonempty_list,{f,805},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,804}}. % '-mixed/1-lbc$^24/2-24-'/2
  {label,805}.
    {test,is_nil,{f,806},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,806}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^21/1-21-', 1, 808}.
  {label,807}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^21/1-21-'},1}.
  {label,808}.
    {test,bs_start_match3,{f,810},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,809},
          2,
          [{x,1},
           {integer,3},
           1,
           {field_flags,[{anno,[155,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,809},
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
    {call_only,3,{f,812}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,809}.
    {move,nil,{x,0}}.
    return.
  {label,810}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^22/1-22-', 3, 812}.
  {label,811}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^22/1-22-'},3}.
  {label,812}.
    {test,is_nonempty_list,{f,814},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {test,is_tuple,{f,813},[{x,3}]}.
    {test,test_arity,{f,813},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {gc_bif,'+',{f,0},4,[{x,1},{x,3}],{x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,3,{f,812}}. % '-mixed/1-lc$^22/1-22-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,813}.
    {call_only,3,{f,812}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,814}.
    {test,is_nil,{f,815},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,808}}. % '-mixed/1-lc$^21/1-21-'/1
  {label,815}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^19/1-19-', 1, 817}.
  {label,816}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^19/1-19-'},1}.
  {label,817}.
    {test,bs_start_match3,{f,819},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,818},
          2,
          [{x,1},
           {integer,3},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,818},
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
    {call_only,3,{f,821}}. % '-mixed/1-lc$^20/1-20-'/3
  {label,818}.
    {move,nil,{x,0}}.
    return.
  {label,819}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^20/1-20-', 3, 821}.
  {label,820}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^20/1-20-'},3}.
  {label,821}.
    {test,bs_start_match3,{f,823},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,822},
          4,
          [{x,3},
           {integer,3},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,822},
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
    {call,3,{f,821}}. % '-mixed/1-lc$^20/1-20-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,822}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,817}}. % '-mixed/1-lc$^19/1-19-'/1
  {label,823}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^18/2-18-', 2, 825}.
  {label,824}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",150}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^18/2-18-'},2}.
  {label,825}.
    {test,is_nonempty_list,{f,827},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_tuple,{f,826},[{x,2}]}.
    {test,test_arity,{f,826},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'+',{f,0},4,[{x,3},{x,2}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,825}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,826}.
    {call_only,2,{f,825}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,827}.
    {test,is_nil,{f,828},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,828}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^16/2-16-', 2, 830}.
  {label,829}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^16/2-16-'},2}.
  {label,830}.
    {test,is_nonempty_list,{f,831},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,834}}. % '-mixed/1-lbc$^17/2-17-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,830},1}. % '-mixed/1-lbc$^16/2-16-'/2
  {label,831}.
    {test,is_nil,{f,832},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,832}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^17/2-17-', 3, 834}.
  {label,833}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^17/2-17-'},3}.
  {label,834}.
    {test,is_nonempty_list,{f,835},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,834}}. % '-mixed/1-lbc$^17/2-17-'/3
  {label,835}.
    {test,is_nil,{f,836},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,836}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^14/2-14-', 2, 838}.
  {label,837}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^14/2-14-'},2}.
  {label,838}.
    {test,bs_start_match3,{f,840},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,839},
          3,
          [{x,2},
           {integer,3},
           1,
           {field_flags,[{anno,[146,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,839},
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
    {call,3,{f,842}}. % '-mixed/1-lbc$^15/2-15-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,838},1}. % '-mixed/1-lbc$^14/2-14-'/2
  {label,839}.
    {move,{x,1},{x,0}}.
    return.
  {label,840}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^15/2-15-', 3, 842}.
  {label,841}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^15/2-15-'},3}.
  {label,842}.
    {test,is_nonempty_list,{f,843},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,842}}. % '-mixed/1-lbc$^15/2-15-'/3
  {label,843}.
    {test,is_nil,{f,844},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,844}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^12/2-12-', 2, 846}.
  {label,845}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^12/2-12-'},2}.
  {label,846}.
    {test,bs_start_match3,{f,848},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,847},
          3,
          [{x,2},
           {integer,3},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,847},
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
    {call,3,{f,850}}. % '-mixed/1-lbc$^13/2-13-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,846},1}. % '-mixed/1-lbc$^12/2-12-'/2
  {label,847}.
    {move,{x,1},{x,0}}.
    return.
  {label,848}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^13/2-13-', 3, 850}.
  {label,849}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^13/2-13-'},3}.
  {label,850}.
    {test,bs_start_match3,{f,852},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,851},
          4,
          [{x,3},
           {integer,3},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,851},
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
    {call_only,3,{f,850}}. % '-mixed/1-lbc$^13/2-13-'/3
  {label,851}.
    {move,{x,1},{x,0}}.
    return.
  {label,852}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",144}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^10/1-10-', 1, 854}.
  {label,853}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^10/1-10-'},1}.
  {label,854}.
    {test,bs_start_match3,{f,856},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,855},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[141,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,855},
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
    {call_only,3,{f,858}}. % '-mixed/1-lc$^11/1-11-'/3
  {label,855}.
    {move,nil,{x,0}}.
    return.
  {label,856}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^11/1-11-', 3, 858}.
  {label,857}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^11/1-11-'},3}.
  {label,858}.
    {test,is_nonempty_list,{f,859},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,1},{x,3}],{x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,3,{f,858}}. % '-mixed/1-lc$^11/1-11-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,859}.
    {test,is_nil,{f,860},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,854}}. % '-mixed/1-lc$^10/1-10-'/1
  {label,860}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^8/1-8-', 1, 862}.
  {label,861}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^8/1-8-'},1}.
  {label,862}.
    {test,bs_start_match3,{f,864},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,863},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,863},
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
    {call_only,3,{f,866}}. % '-mixed/1-lc$^9/1-9-'/3
  {label,863}.
    {move,nil,{x,0}}.
    return.
  {label,864}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^9/1-9-', 3, 866}.
  {label,865}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^9/1-9-'},3}.
  {label,866}.
    {test,bs_start_match3,{f,868},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,867},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,867},
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
    {call,3,{f,866}}. % '-mixed/1-lc$^9/1-9-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,867}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,862}}. % '-mixed/1-lc$^8/1-8-'/1
  {label,868}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^6/2-6-', 3, 870}.
  {label,869}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^6/2-6-'},3}.
  {label,870}.
    {test,is_nonempty_list,{f,871},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,874}}. % '-mixed/1-lbc$^7/2-7-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,870},2}. % '-mixed/1-lbc$^6/2-6-'/3
  {label,871}.
    {test,is_nil,{f,872},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,872}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^7/2-7-', 3, 874}.
  {label,873}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^7/2-7-'},3}.
  {label,874}.
    {test,is_nonempty_list,{f,875},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,874}}. % '-mixed/1-lbc$^7/2-7-'/3
  {label,875}.
    {test,is_nil,{f,876},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,876}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^4/2-4-', 2, 878}.
  {label,877}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^4/2-4-'},2}.
  {label,878}.
    {test,is_nonempty_list,{f,879},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,882}}. % '-mixed/1-lbc$^5/2-5-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,878},1}. % '-mixed/1-lbc$^4/2-4-'/2
  {label,879}.
    {test,is_nil,{f,880},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,880}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^5/2-5-', 3, 882}.
  {label,881}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^5/2-5-'},3}.
  {label,882}.
    {test,is_nonempty_list,{f,883},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,882}}. % '-mixed/1-lbc$^5/2-5-'/3
  {label,883}.
    {test,is_nil,{f,884},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,884}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^2/2-2-', 2, 886}.
  {label,885}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^2/2-2-'},2}.
  {label,886}.
    {test,bs_start_match3,{f,888},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,887},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[131,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,887},
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
    {call,3,{f,890}}. % '-mixed/1-lbc$^3/2-3-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,886},1}. % '-mixed/1-lbc$^2/2-2-'/2
  {label,887}.
    {move,{x,1},{x,0}}.
    return.
  {label,888}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^3/2-3-', 3, 890}.
  {label,889}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^3/2-3-'},3}.
  {label,890}.
    {test,is_nonempty_list,{f,891},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,890}}. % '-mixed/1-lbc$^3/2-3-'/3
  {label,891}.
    {test,is_nil,{f,892},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,892}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^0/2-0-', 2, 894}.
  {label,893}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,894}.
    {test,bs_start_match3,{f,896},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,895},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,895},
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
    {call,3,{f,898}}. % '-mixed/1-lbc$^1/2-1-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,894},1}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,895}.
    {move,{x,1},{x,0}}.
    return.
  {label,896}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^1/2-1-', 3, 898}.
  {label,897}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^1/2-1-'},3}.
  {label,898}.
    {test,bs_start_match3,{f,900},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,899},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,899},
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
    {call_only,3,{f,898}}. % '-mixed/1-lbc$^1/2-1-'/3
  {label,899}.
    {move,{x,1},{x,0}}.
    return.
  {label,900}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lc$^3/1-3-', 1, 902}.
  {label,901}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",123}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^3/1-3-'},
               1}.
  {label,902}.
    {test,bs_start_match3,{f,904},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,903},
          2,
          [{x,1},
           {integer,15},
           1,
           {field_flags,[{anno,[123,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,903},
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
    {call,1,{f,902}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,903}.
    {move,nil,{x,0}}.
    return.
  {label,904}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lbc$^2/2-2-', 2, 906}.
  {label,905}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",121}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,906}.
    {test,is_nonempty_list,{f,907},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,7},1],{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,31},1,{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,906}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
  {label,907}.
    {test,is_nil,{f,908},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,908}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lc$^1/1-1-', 1, 910}.
  {label,909}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",119}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^1/1-1-'},
               1}.
  {label,910}.
    {test,bs_start_match3,{f,912},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,911},
          2,
          [{x,1},
           {integer,7},
           1,
           {field_flags,[{anno,[119,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,911},
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
    {call,1,{f,910}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,911}.
    {move,nil,{x,0}}.
    return.
  {label,912}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lbc$^0/2-0-', 2, 914}.
  {label,913}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",118}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,914}.
    {test,is_nonempty_list,{f,915},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,32}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,7},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,914}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
  {label,915}.
    {test,is_nil,{f,916},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,916}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lc$^3/1-3-', 1, 918}.
  {label,917}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",112}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^3/1-3-'},
               1}.
  {label,918}.
    {test,bs_start_match3,{f,920},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,919},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[112,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,919},
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
    {call,1,{f,918}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,919}.
    {move,nil,{x,0}}.
    return.
  {label,920}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lbc$^2/2-2-', 2, 922}.
  {label,921}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",110}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,922}.
    {test,is_nonempty_list,{f,923},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,922}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
  {label,923}.
    {test,is_nil,{f,924},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,924}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lc$^1/1-1-', 1, 926}.
  {label,925}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",108}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^1/1-1-'},
               1}.
  {label,926}.
    {test,bs_start_match3,{f,928},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,927},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[108,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,927},
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
    {call,1,{f,926}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,927}.
    {move,nil,{x,0}}.
    return.
  {label,928}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lbc$^0/2-0-', 2, 930}.
  {label,929}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",107}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,930}.
    {test,is_nonempty_list,{f,931},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,32}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,930}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
  {label,931}.
    {test,is_nil,{f,932},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,932}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^3/2-3-', 2, 934}.
  {label,933}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",102}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^3/2-3-'},
               2}.
  {label,934}.
    {test,bs_start_match3,{f,936},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,935},
          3,
          [{x,2},
           {integer,15},
           1,
           {field_flags,[{anno,[102,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,935},
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
    {call_only,2,{f,934}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
  {label,935}.
    {move,{x,1},{x,0}}.
    return.
  {label,936}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^2/2-2-', 2, 938}.
  {label,937}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",100}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,938}.
    {test,bs_start_match3,{f,940},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,939},
          3,
          [{x,2},
           {integer,31},
           1,
           {field_flags,[{anno,[100,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,939},
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
    {call_only,2,{f,938}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
  {label,939}.
    {move,{x,1},{x,0}}.
    return.
  {label,940}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^1/2-1-', 2, 942}.
  {label,941}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",98}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^1/2-1-'},
               2}.
  {label,942}.
    {test,bs_start_match3,{f,944},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,943},
          3,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[98,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,943},
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
    {call_only,2,{f,942}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
  {label,943}.
    {move,{x,1},{x,0}}.
    return.
  {label,944}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^0/2-0-', 2, 946}.
  {label,945}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",97}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,946}.
    {test,bs_start_match3,{f,948},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,947},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[97,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,947},
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
    {call_only,2,{f,946}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
  {label,947}.
    {move,{x,1},{x,0}}.
    return.
  {label,948}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^3/2-3-', 2, 950}.
  {label,949}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",91}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^3/2-3-'},
               2}.
  {label,950}.
    {test,bs_start_match3,{f,952},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,951},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[91,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,951},
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
    {call_only,2,{f,950}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
  {label,951}.
    {move,{x,1},{x,0}}.
    return.
  {label,952}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^2/2-2-', 2, 954}.
  {label,953}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",89}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,954}.
    {test,bs_start_match3,{f,956},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,955},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[89,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,955},
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
    {call_only,2,{f,954}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
  {label,955}.
    {move,{x,1},{x,0}}.
    return.
  {label,956}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^1/2-1-', 2, 958}.
  {label,957}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",87}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^1/2-1-'},
               2}.
  {label,958}.
    {test,bs_start_match3,{f,960},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,959},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[87,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,959},
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
    {call_only,2,{f,958}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
  {label,959}.
    {move,{x,1},{x,0}}.
    return.
  {label,960}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^0/2-0-', 2, 962}.
  {label,961}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",86}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,962}.
    {test,bs_start_match3,{f,964},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,963},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[86,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,963},
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
    {call_only,2,{f,962}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
  {label,963}.
    {move,{x,1},{x,0}}.
    return.
  {label,964}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
