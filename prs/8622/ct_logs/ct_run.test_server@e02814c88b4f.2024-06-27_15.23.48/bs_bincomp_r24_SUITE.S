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

{labels, 980}.


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
    {call,0,{f,313}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",86}]}.
    {call,2,{f,977}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,317}}. % cs/1
    {test,is_eq_exact,{f,22},[{x,0},{literal,<<"abcdefg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABC">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",87}]}.
    {call,2,{f,973}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
    {call,1,{f,317}}. % cs/1
    {test,is_eq_exact,{f,21},[{x,0},{literal,<<"AxyzBxyzCxyz">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,1,0,0,0,2,0,0,0,3,0,0,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",89}]}.
    {call,2,{f,969}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,317}}. % cs/1
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
    {call,2,{f,965}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
    {test,bs_start_match3,{f,19},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,19},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,19},[{x,1},0]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",90}]}.
    {call,1,{f,317}}. % cs/1
    {call_last,0,{f,315},0}. % cs_end/0
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
    {call,0,{f,313}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",97}]}.
    {call,2,{f,961}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,317}}. % cs/1
    {test,bs_start_match3,{f,28},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,28},
          [{x,1},49,{string,<<195,139,30,76,185,179,128>>}]}.
    {test,bs_test_tail2,{f,28},[{x,1},0]}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",98}]}.
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,957}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
    {call,1,{f,317}}. % cs/1
    {test,is_eq_exact,{f,27},[{x,0},{literal,<<"ABCDEFG">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,2,0,0,0,8,0,0,0,24,0,0,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",100}]}.
    {call,2,{f,953}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,317}}. % cs/1
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
    {call,2,{f,949}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
    {call,1,{f,317}}. % cs/1
    {test,bs_start_match3,{f,25},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,25},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,25},[{x,1},0]}.
    {call_last,0,{f,315},1}. % cs_end/0
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
    {call,0,{f,313}}. % cs_init/0
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",107}]}.
    {call,2,{f,945}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,317}}. % cs/1
    {test,is_eq_exact,{f,34},[{x,0},{literal,<<"abcdefg">>}]}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",108}]}.
    {call,1,{f,941}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {test,is_eq_exact,{f,33},[{x,0},{literal,"abcdefg"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",110}]}.
    {call,2,{f,937}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,317}}. % cs/1
    {test,bs_start_match3,{f,32},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,32},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,32},[{x,1},0]}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",112}]}.
    {call,1,{f,933}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {test,is_eq_exact,{f,31},[{x,0},{literal,[256,512,768,1024]}]}.
    {call_last,0,{f,315},0}. % cs_end/0
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
    {call,0,{f,313}}. % cs_init/0
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",118}]}.
    {call,2,{f,929}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,317}}. % cs/1
    {test,bs_start_match3,{f,40},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,40},
          [{x,1},49,{string,<<195,139,30,76,185,179,128>>}]}.
    {test,bs_test_tail2,{f,40},[{x,1},0]}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",119}]}.
    {call,1,{f,925}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {test,is_eq_exact,{f,39},[{x,0},{literal,"ABCDEFG"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",121}]}.
    {call,2,{f,921}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,317}}. % cs/1
    {test,bs_start_match3,{f,38},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,38},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,38},[{x,1},0]}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",123}]}.
    {call,1,{f,917}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {test,is_eq_exact,{f,37},[{x,0},{literal,[256,512,768,1024]}]}.
    {call_last,0,{f,315},0}. % cs_end/0
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
    {call,0,{f,313}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {call,2,{f,909}}. % '-mixed/1-lbc$^0/2-0-'/2
    {call,1,{f,317}}. % cs/1
    {test,is_eq_exact,{f,72},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {call,2,{f,901}}. % '-mixed/1-lbc$^2/2-2-'/2
    {call,1,{f,317}}. % cs/1
    {test,is_eq_exact,{f,71},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {call,2,{f,893}}. % '-mixed/1-lbc$^4/2-4-'/2
    {call,1,{f,317}}. % cs/1
    {test,is_eq_exact,{f,70},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",134}]}.
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",135}]}.
    {call,1,{f,322}}. % id/1
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
    {call,3,{f,885}}. % '-mixed/1-lbc$^6/2-6-'/3
    {call,1,{f,317}}. % cs/1
    {test,is_eq_exact,{f,69},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {call,1,{f,877}}. % '-mixed/1-lc$^8/1-8-'/1
    {test,is_eq_exact,{f,68},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {call,1,{f,869}}. % '-mixed/1-lc$^10/1-10-'/1
    {test,is_eq_exact,{f,67},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {call,2,{f,861}}. % '-mixed/1-lbc$^12/2-12-'/2
    {call,1,{f,317}}. % cs/1
    {test,bs_start_match3,{f,66},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,66},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,66},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {call,2,{f,853}}. % '-mixed/1-lbc$^14/2-14-'/2
    {call,1,{f,317}}. % cs/1
    {test,bs_start_match3,{f,65},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,65},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,65},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {call,2,{f,845}}. % '-mixed/1-lbc$^16/2-16-'/2
    {call,1,{f,317}}. % cs/1
    {test,bs_start_match3,{f,64},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,64},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,64},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[{1,1},{1,2},{2,1},{2,2},{3,1},{3,2},{4,1},{4,2}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",150}]}.
    {call,2,{f,840}}. % '-mixed/1-lbc$^18/2-18-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,bs_start_match3,{f,63},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,63},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,63},[{x,1},0]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {call,1,{f,832}}. % '-mixed/1-lc$^19/1-19-'/1
    {test,is_eq_exact,{f,62},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {call,1,{f,823}}. % '-mixed/1-lc$^21/1-21-'/1
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
    {call,2,{f,815}}. % '-mixed/1-lbc$^23/2-23-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,59},[{x,0},{literal,<<1>>}]}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",164}]}.
    {call,1,{f,322}}. % id/1
    {move,{literal,<<"*Ký">>},{x,1}}.
    {call,2,{f,78}}. % mixed_size/2
    {call,1,{f,319}}. % cs_default/1
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
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,57},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{literal,<<4,5,6>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",173}]}.
    {call,1,{f,98}}. % match_context_2/1
    {call,1,{f,319}}. % cs_default/1
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
    {make_fun3,{f,803},0,0,{y,3},{list,[]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",188}]}.
    {call,1,{f,322}}. % id/1
    {move,{y,3},{x,1}}.
    {trim,4,0}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",186}]}.
    {call_fun,1}.
    {test,is_nil,{f,49},[{x,0}]}.
    {call_last,0,{f,315},0}. % cs_end/0
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
    {call,2,{f,799}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{y,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,322}}. % id/1
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
    {call_last,3,{f,791},2}. % '-mixed_size/2-lbc$^0/2-0-'/3


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
    {call,1,{f,317}}. % cs/1
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
    {call_last,2,{f,787},1}. % '-silly_bc/1-lbc$^0/2-0-'/2


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
    {call_last,1,{f,783},0}. % '-silly_lc/1-lc$^0/1-0-'/1


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
    {call,2,{f,779}}. % '-gen_data/1-lbc$^0/2-0-'/2
    {call,1,{f,317}}. % cs/1
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
    {call,2,{f,771}}. % '-gen_data/1-lbc$^1/2-1-'/2
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
    {call_last,2,{f,767},1}. % '-match_context_1/1-lbc$^0/2-0-'/2


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
    {call_last,2,{f,763},1}. % '-do_match_context_2/1-lbc$^0/2-0-'/2


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
    {call_last,2,{f,754},0}. % '-over_complex_generator/0-lbc$^0/2-0-'/2


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
    {call_last,3,{f,749},0}. % '-float_segment_size/0-lbc$^0/2-0-'/3


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
    {call_last,3,{f,739},1}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3


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
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",282}]}.
    {call,3,{f,731}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
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
    {call,0,{f,313}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",293}]}.
    {call,2,{f,726}}. % '-filters/1-lbc$^0/2-0-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,122},[{x,0},{literal,<<"BDF">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {call,2,{f,718}}. % '-filters/1-lbc$^1/2-1-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,121},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {call,2,{f,710}}. % '-filters/1-lbc$^2/2-2-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,120},[{x,0},{literal,<<"efg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {call,2,{f,702}}. % '-filters/1-lbc$^3/2-3-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,119},[{x,0},{literal,<<"b">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {call,2,{f,694}}. % '-filters/1-lbc$^4/2-4-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,118},[{x,0},{literal,<<"eg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[],[a],[],[x,y,z]]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",310}]}.
    {call,2,{f,687}}. % '-filters/1-lbc$^5/2-5-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,117},[{x,0},{literal,<<1,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<"M">>,<<1,2>>,<<"*">>]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",316}]}.
    {call,2,{f,682}}. % '-filters/1-lbc$^6/2-6-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,116},[{x,0},{literal,<<"M*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<97,98,227,100,229,0:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",319}]}.
    {call,2,{f,677}}. % '-filters/1-lbc$^7/2-7-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,115},[{x,0},{literal,<<"abd">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,42,43,42]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",323}]}.
    {call,2,{f,672}}. % '-filters/1-lbc$^8/2-8-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,114},[{x,0},{literal,<<"**">>}]}.
    {call_last,0,{f,315},0}. % cs_end/0
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
    {call,1,{f,322}}. % id/1
    {test,is_eq_exact,{f,136},[{x,0},{y,2}]}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",340}]}.
    {call,1,{f,322}}. % id/1
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
    {call,2,{f,668}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
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
    {call,2,{f,664}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
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
    {call_last,1,{f,322},5}. % id/1


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
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",352}]}.
    {call,1,{f,322}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",353}]}.
    {call,1,{f,322}}. % id/1
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,659},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2


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
    {call,2,{f,655}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",363}]}.
    {call,2,{f,651}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
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
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {call,2,{f,647}}. % '-nomatch/1-lbc$^0/2-0-'/2
    {test,is_eq_exact,{f,162},[{x,0},{literal,<<>>}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {call,1,{f,645}}. % '-nomatch/1-lc$^1/1-1-'/1
    {test,is_nil,{f,161},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {call,1,{f,642}}. % '-nomatch/1-lc$^2/1-2-'/1
    {test,is_nil,{f,160},[{x,0}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {call,2,{f,640}}. % '-nomatch/1-lbc$^3/2-3-'/2
    {test,is_eq_exact,{f,159},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {call,2,{f,637}}. % '-nomatch/1-lbc$^4/2-4-'/2
    {test,is_eq_exact,{f,158},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {call,2,{f,633}}. % '-nomatch/1-lbc$^5/2-5-'/2
    {test,is_eq_exact,{f,157},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {call,2,{f,629}}. % '-nomatch/1-lbc$^6/2-6-'/2
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
    {call,2,{f,625}}. % '-nomatch/1-lbc$^7/2-7-'/2
    {test,is_eq_exact,{f,153},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {call,2,{f,617}}. % '-nomatch/1-lbc$^8/2-8-'/2
    {call,1,{f,322}}. % id/1
    {test,is_eq_exact,{f,152},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {call,2,{f,609}}. % '-nomatch/1-lbc$^10/2-10-'/2
    {call,1,{f,322}}. % id/1
    {test,is_eq_exact,{f,151},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,149}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {call,2,{f,604}}. % '-nomatch/1-lbc$^12/2-12-'/2
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
    {call_last,3,{f,600},2}. % '-nomatch_1/2-lbc$^0/2-0-'/3


{function, sizes, 1, 166}.
  {label,165}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",405}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,sizes},1}.
  {label,166}.
    {test,is_list,{f,165},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",406}]}.
    {call,0,{f,313}}. % cs_init/0
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,592},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,584},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,576},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,568},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,560},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,552},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,544},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,536},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,530},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,524},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,518},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,512},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,506},0,0,{y,1},{list,[]}}.
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
    {call,2,{f,502}}. % '-sizes/1-lbc$^26/2-13-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,bs_start_match3,{f,174},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,174},[{x,1},3,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,174},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {call,2,{f,498}}. % '-sizes/1-lbc$^27/2-14-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,bs_start_match3,{f,173},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,173},[{x,1},3,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,173},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,488},0,0,{y,1},{list,[]}}.
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
    {make_fun3,{f,482},0,0,{y,1},{list,[]}}.
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
    {call,2,{f,478}}. % '-sizes/1-lbc$^33/2-18-'/2
  {label,167}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,168},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{atom,'EXIT'}]}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",529}]}.
    {call,0,{f,315}}. % cs_end/0
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
    {call,0,{f,313}}. % cs_init/0
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {call,2,{f,474}}. % '-general_expressions/1-lbc$^0/2-0-'/2
    {call,1,{f,317}}. % cs/1
    {test,is_eq_exact,{f,249},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {call,2,{f,470}}. % '-general_expressions/1-lbc$^1/2-1-'/2
    {call,1,{f,317}}. % cs/1
    {test,is_eq_exact,{f,248},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {call,2,{f,466}}. % '-general_expressions/1-lbc$^2/2-2-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,247},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<1,2>>,<<3>>]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {call,2,{f,462}}. % '-general_expressions/1-lbc$^3/2-3-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,246},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {call,2,{f,458}}. % '-general_expressions/1-lbc$^4/2-4-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,245},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4,5]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {call,2,{f,450}}. % '-general_expressions/1-lbc$^5/2-5-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,244},[{x,0},{literal,<<2,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {call,2,{f,442}}. % '-general_expressions/1-lbc$^6/2-6-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,243},[{x,0},{literal,<<2,3,4,5,6,7>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {call,2,{f,436}}. % '-general_expressions/1-lbc$^8/2-8-'/2
    {call,1,{f,319}}. % cs_default/1
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
    {call,2,{f,429}}. % '-general_expressions/1-lbc$^9/2-9-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,241},[{x,0},{literal,<<"*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {call,2,{f,423}}. % '-general_expressions/1-lbc$^10/2-10-'/2
    {call,1,{f,319}}. % cs_default/1
    {test,is_eq_exact,{f,240},[{x,0},{literal,<<10,5,3>>}]}.
    {move,{literal,"3A7"},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",564}]}.
    {call,1,{f,251}}. % hstring_to_bitstring/1
    {call,1,{f,317}}. % cs/1
    {test,bs_start_match3,{f,239},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,239},[{x,1},12,{string,<<":p">>}]}.
    {test,bs_test_tail2,{f,239},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",565}]}.
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{literal,{65,8}},{x,0}}.
    {call,1,{f,322}}. % id/1
    {move,{y,5},{x,1}}.
    {move,{x,0},{x,2}}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{literal,"ABCDEFGH"},{x,0}}.
    {call,3,{f,258}}. % encode_chars_compact_map/3
    {call,1,{f,317}}. % cs/1
    {test,bs_start_match3,{f,238},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,238},[{x,1},24,{string,<<5,57,119>>}]}.
    {test,bs_test_tail2,{f,238},[{x,1},0]}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",567}]}.
    {call,0,{f,315}}. % cs_end/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,5},{f,226}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {call,2,{f,419}}. % '-general_expressions/1-lbc$^11/2-11-'/2
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
    {call,2,{f,415}}. % '-general_expressions/1-lbc$^12/2-12-'/2
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
    {call,2,{f,411}}. % '-general_expressions/1-lbc$^13/2-13-'/2
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
    {call,2,{f,407}}. % '-general_expressions/1-lbc$^14/2-14-'/2
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
    {call,2,{f,403}}. % '-general_expressions/1-lbc$^15/2-15-'/2
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
    {call,2,{f,397}}. % '-general_expressions/1-lbc$^16/2-16-'/2
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
    {call_last,2,{f,393},1}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2


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
    {call_last,5,{f,389},3}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5


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
    {call,1,{f,322}}. % id/1
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
    {call,2,{f,386}}. % '-zero_pattern/1-lbc$^0/2-0-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",614}]}.
    {call,2,{f,383}}. % '-zero_pattern/1-lbc$^1/2-1-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {call,2,{f,377}}. % '-zero_pattern/1-lbc$^2/2-2-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,2,{f,369},0}. % '-zero_pattern/1-lbc$^4/2-4-'/2
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
    {call,0,{f,313}}. % cs_init/0
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
    {call,0,{f,315}}. % cs_end/0
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
    {call,2,{f,364}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
    {call,1,{f,319}}. % cs_default/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",650}]}.
    {call,1,{f,359}}. % '-matched_out_size/1-lc$^1/1-1-'/1
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
    {call,2,{f,354}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
    {call,1,{f,319}}. % cs_default/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",656}]}.
    {call,1,{f,349}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
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
    {call,2,{f,345}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
    {call,1,{f,317}}. % cs/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",662}]}.
    {call,1,{f,341}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
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
    {call,1,{f,308}}. % grab_bag_gh_6553/1
  {label,296}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,306},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,306},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,306},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,306},[{x,1},{atom,function_clause}]}.
    {'catch',{y,2},{f,297}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[7]},{location,"bs_bincomp_r24_SUITE.erl",668}]}.
    {call,1,{f,308}}. % grab_bag_gh_6553/1
  {label,297}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,305},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,305},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,305},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,305},[{x,1},{atom,function_clause}]}.
    {'catch',{y,1},{f,298}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[5]},{location,"bs_bincomp_r24_SUITE.erl",669}]}.
    {call,1,{f,308}}. % grab_bag_gh_6553/1
  {label,298}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,304},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,304},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,304},[{x,1}]}.
    {test,test_arity,{f,304},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,304},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,0},{f,299}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[3]},{location,"bs_bincomp_r24_SUITE.erl",672}]}.
    {call,2,{f,338}}. % '-grab_bag/1-lbc$^0/2-0-'/2
    {try_end,{y,0}}.
    {jump,{f,300}}.
  {label,299}.
    {try_case,{y,0}}.
  {label,300}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0,1]},{location,"bs_bincomp_r24_SUITE.erl",674}]}.
    {call,1,{f,311}}. % grab_bag_gh_8617/1
    {test,is_nil,{f,303},[{x,0}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",675}]}.
    {call,1,{f,311}}. % grab_bag_gh_8617/1
    {test,is_eq_exact,{f,302},[{x,0},{literal,[0]}]}.
    {move,{literal,<<0:3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",676}]}.
    {call,1,{f,311}}. % grab_bag_gh_8617/1
    {test,is_eq_exact,{f,301},[{x,0},{literal,[0,0,0]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,301}.
    {badmatch,{x,0}}.
  {label,302}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",675}]}.
    {badmatch,{x,0}}.
  {label,303}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",674}]}.
    {badmatch,{x,0}}.
  {label,304}.
    {line,[{scope,[3]},{location,"bs_bincomp_r24_SUITE.erl",669}]}.
    {badmatch,{x,0}}.
  {label,305}.
    {line,[{scope,[5]},{location,"bs_bincomp_r24_SUITE.erl",668}]}.
    {badmatch,{x,0}}.
  {label,306}.
    {line,[{scope,[7]},{location,"bs_bincomp_r24_SUITE.erl",667}]}.
    {badmatch,{x,0}}.


{function, grab_bag_gh_6553, 1, 308}.
  {label,307}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",680}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,grab_bag_gh_6553},1}.
  {label,308}.
    {test,bs_start_match3,{f,307},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,307},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[680,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,307},[{x,1},0]}.
    {move,{literal,<<>>},{x,0}}.
    {test,bs_start_match3,{f,309},3,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,309},[{x,0},0]}.
    {move,{literal,<<>>},{x,0}}.
    {test,bs_start_match3,{f,309},3,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,309},[{x,0},8]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",682}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{literal,<<>>}}.
    {move,{x,3},{x,0}}.
    return.
  {label,309}.
    {badmatch,{literal,<<>>}}.


{function, grab_bag_gh_8617, 1, 311}.
  {label,310}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",684}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,grab_bag_gh_8617},1}.
  {label,311}.
    {call_only,1,{f,328}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1


{function, cs_init, 0, 313}.
  {label,312}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",691}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_init},0}.
  {label,313}.
    {allocate,0,0}.
    {move,{atom,true},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",692}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs_end, 0, 315}.
  {label,314}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",695}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_end},0}.
  {label,315}.
    {allocate,0,0}.
    {move,{atom,false},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",696}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs, 1, 317}.
  {label,316}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",700}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs},1}.
  {label,317}.
    return.


{function, cs_default, 1, 319}.
  {label,318}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",728}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_default},1}.
  {label,319}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",729}]}.
    {gc_bif,byte_size,{f,0},1,[{x,0}],{x,1}}.
    {allocate_heap,2,3,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {put_tuple2,{x,0},{list,[{atom,binary_info},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",731}]}.
    {call_ext,1,{extfunc,erts_debug,get_internal_state,1}}.
    {test,is_tagged_tuple,{f,320},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,320},[{x,1},{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,320},[{x,1},{literal,{binary,256}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,320},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,320}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",730}]}.
    {badmatch,{x,0}}.


{function, id, 1, 322}.
  {label,321}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",734}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,id},1}.
  {label,322}.
    return.


{function, module_info, 0, 324}.
  {label,323}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,module_info},0}.
  {label,324}.
    {move,{atom,bs_bincomp_r24_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 326}.
  {label,325}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,module_info},1}.
  {label,326}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_bincomp_r24_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-grab_bag_gh_8617/1-lc$^0/1-0-', 1, 328}.
  {label,327}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",688}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-grab_bag_gh_8617/1-lc$^0/1-0-'},
               1}.
  {label,328}.
    {test,bs_start_match3,{f,332},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,332},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,332},
          2,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test_heap,2,2}.
    {bif,self,{f,0},[],{x,2}}.
    {put_tuple2,{x,3},{list,[{x,2}]}}.
    {bif,tuple_size,{f,329},[{x,3}],{x,3}}.
    {jump,{f,330}}.
  {label,329}.
    {move,{atom,bad_size},{x,3}}.
  {label,330}.
    {test,bs_start_match3,{f,332},4,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,332},
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,332},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",689}]}.
    {call,1,{f,322}}. % id/1
    {test,is_pid,{f,331},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",688}]}.
    {call,1,{f,328}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,331}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,328},1}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
  {label,332}.
    {test,bs_start_match3,{f,335},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,335},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,335},
          2,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test_heap,2,2}.
    {bif,self,{f,0},[],{x,2}}.
    {put_tuple2,{x,2},{list,[{x,2}]}}.
    {bif,tuple_size,{f,333},[{x,2}],{x,2}}.
    {jump,{f,334}}.
  {label,333}.
    {move,{atom,bad_size},{x,2}}.
  {label,334}.
    {test,bs_start_match3,{f,335},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,335},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,335},
          2,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[688,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,328}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
  {label,335}.
    {test,bs_start_match3,{f,336},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,336}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-grab_bag/1-lbc$^0/2-0-', 2, 338}.
  {label,337}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",672}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-grab_bag/1-lbc$^0/2-0-'},2}.
  {label,338}.
    {test,bs_start_match3,{f,339},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,339},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[672,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,338}}. % '-grab_bag/1-lbc$^0/2-0-'/2
  {label,339}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lc$^1/1-1-', 1, 341}.
  {label,340}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",662}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_2/1-lc$^1/1-1-'},
               1}.
  {label,341}.
    {test,bs_start_match3,{f,343},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,342},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,342},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,342},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,342},
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
    {call,1,{f,341}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,342}.
    {move,nil,{x,0}}.
    return.
  {label,343}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lbc$^0/2-0-', 2, 345}.
  {label,344}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",661}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_2/1-lbc$^0/2-0-'},
               2}.
  {label,345}.
    {test,bs_start_match3,{f,347},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,346},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,346},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,346},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,346},
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
    {call_only,2,{f,345}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
  {label,346}.
    {move,{x,1},{x,0}}.
    return.
  {label,347}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_1/1-lc$^1/1-1-', 1, 349}.
  {label,348}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",656}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_1/1-lc$^1/1-1-'},
               1}.
  {label,349}.
    {test,bs_start_match3,{f,352},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,351},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,351},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,351},
          4,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,350},[{x,3},{x,2}]}.
    {allocate,1,5}.
    {move,{x,2},{y,0}}.
    {move,{x,4},{x,0}}.
    {call,1,{f,349}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,350}.
    {move,{x,4},{x,0}}.
    {call_only,1,{f,349}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
  {label,351}.
    {move,nil,{x,0}}.
    return.
  {label,352}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_1/1-lbc$^0/2-0-', 2, 354}.
  {label,353}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",655}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_1/1-lbc$^0/2-0-'},
               2}.
  {label,354}.
    {test,bs_start_match3,{f,357},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,356},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,356},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,356},
          5,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,is_eq_exact,{f,355},[{x,4},{x,3}]}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{integer,1},8],{x,6}}.
    {test_heap,0,7}.
    {bs_private_append,{f,0},{x,6},1,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,6},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,354}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,355}.
    {move,{x,5},{x,0}}.
    {call_only,2,{f,354}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,356}.
    {move,{x,1},{x,0}}.
    return.
  {label,357}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-matched_out_size/1-lc$^1/1-1-', 1, 359}.
  {label,358}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",650}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-matched_out_size/1-lc$^1/1-1-'},
               1}.
  {label,359}.
    {test,bs_start_match3,{f,360},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,360},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,360},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_start_match3,{f,360},3,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,360},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,360},
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
    {call,1,{f,359}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,360}.
    {test,bs_start_match3,{f,361},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,361},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,361},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_start_match3,{f,361},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,361},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,361},
          2,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,359}}. % '-matched_out_size/1-lc$^1/1-1-'/1
  {label,361}.
    {test,bs_start_match3,{f,362},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,362}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-matched_out_size/1-lbc$^0/2-0-', 2, 364}.
  {label,363}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",649}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-matched_out_size/1-lbc$^0/2-0-'},
               2}.
  {label,364}.
    {test,bs_start_match3,{f,365},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,365},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,365},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_start_match3,{f,365},4,[{x,2}],{x,2}}.
    {test,bs_get_integer2,
          {f,365},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,365},
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
    {call_only,2,{f,364}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,365}.
    {test,bs_start_match3,{f,366},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,366},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,366},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_start_match3,{f,366},4,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,366},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,366},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,364}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,366}.
    {test,bs_start_match3,{f,367},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,367}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^4/2-4-', 2, 369}.
  {label,368}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",620}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^4/2-4-'},
               2}.
  {label,369}.
    {test,bs_start_match3,{f,370},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,370},
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
    {call,2,{f,372}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,369},1}. % '-zero_pattern/1-lbc$^4/2-4-'/2
  {label,370}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",622}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^5/2-5-', 2, 372}.
  {label,371}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",620}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^5/2-5-'},
               2}.
  {label,372}.
    {test,is_nonempty_list,{f,374},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,373},[{x,2},{literal,<<>>}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",621}]}.
    {move,{integer,0},{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,372}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
  {label,373}.
    {call_only,2,{f,372}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
  {label,374}.
    {test,is_nil,{f,375},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,375}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",623}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^2/2-2-', 2, 377}.
  {label,376}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^2/2-2-'},
               2}.
  {label,377}.
    {test,bs_start_match3,{f,378},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,378},
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
    {call,2,{f,380}}. % '-zero_pattern/1-lbc$^3/2-3-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,377},1}. % '-zero_pattern/1-lbc$^2/2-2-'/2
  {label,378}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",617}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^3/2-3-', 2, 380}.
  {label,379}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^3/2-3-'},
               2}.
  {label,380}.
    {test,bs_start_match3,{f,381},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,381}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",618}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^1/2-1-', 2, 383}.
  {label,382}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",614}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^1/2-1-'},
               2}.
  {label,383}.
    {test,bs_start_match3,{f,384},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,384},
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
    {call_only,2,{f,383}}. % '-zero_pattern/1-lbc$^1/2-1-'/2
  {label,384}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^0/2-0-', 2, 386}.
  {label,385}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",613}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^0/2-0-'},
               2}.
  {label,386}.
    {test,bs_start_match3,{f,387},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,387},
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
    {call_only,2,{f,386}}. % '-zero_pattern/1-lbc$^0/2-0-'/2
  {label,387}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-encode_chars_compact_map/3-lbc$^0/2-0-', 5, 389}.
  {label,388}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",586}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-encode_chars_compact_map/3-lbc$^0/2-0-'},
               5}.
  {label,389}.
    {test,is_nonempty_list,{f,390},[{x,0}]}.
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
    {call_last,5,{f,389},5}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5
  {label,390}.
    {test,is_nil,{f,391},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,391}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-hstring_to_bitstring/1-lbc$^0/2-0-', 2, 393}.
  {label,392}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",580}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-hstring_to_bitstring/1-lbc$^0/2-0-'},
               2}.
  {label,393}.
    {test,is_nonempty_list,{f,394},[{x,0}]}.
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
    {call_last,2,{f,393},2}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2
  {label,394}.
    {test,is_nil,{f,395},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,395}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^16/2-16-', 2, 397}.
  {label,396}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^16/2-16-'},
               2}.
  {label,397}.
    {test,is_nonempty_list,{f,398},[{x,0}]}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {get_list,{x,0},{x,2},{x,0}}.
    {make_fun3,{f,401},0,0,{x,2},{list,[{x,2}]}}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,397}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,398}.
    {test,is_nil,{f,399},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,399}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-fun-17-', 1, 401}.
  {label,400}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-fun-17-'},
               1}.
  {label,401}.
    return.


{function, '-general_expressions/1-lbc$^15/2-15-', 2, 403}.
  {label,402}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",574}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^15/2-15-'},
               2}.
  {label,403}.
    {test,is_nonempty_list,{f,404},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,404}.
    {test,is_nil,{f,405},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,405}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^14/2-14-', 2, 407}.
  {label,406}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",573}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^14/2-14-'},
               2}.
  {label,407}.
    {test,is_nonempty_list,{f,408},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,408}.
    {test,is_nil,{f,409},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,409}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^13/2-13-', 2, 411}.
  {label,410}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",572}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^13/2-13-'},
               2}.
  {label,411}.
    {test,is_nonempty_list,{f,412},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,412}.
    {test,is_nil,{f,413},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,413}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^12/2-12-', 2, 415}.
  {label,414}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",571}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^12/2-12-'},
               2}.
  {label,415}.
    {test,is_nonempty_list,{f,416},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,416}.
    {test,is_nil,{f,417},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,417}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^11/2-11-', 2, 419}.
  {label,418}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^11/2-11-'},
               2}.
  {label,419}.
    {test,is_nonempty_list,{f,420},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,420}.
    {test,is_nil,{f,421},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,421}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^10/2-10-', 2, 423}.
  {label,422}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^10/2-10-'},
               2}.
  {label,423}.
    {test,is_nonempty_list,{f,426},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'div',{f,424},3,[{integer,10},{x,2}],{x,2}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",559}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,424},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,424},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,424},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
    {jump,{f,425}}.
  {label,424}.
    {move,{literal,<<>>},{x,2}}.
  {label,425}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,423}}. % '-general_expressions/1-lbc$^10/2-10-'/2
  {label,426}.
    {test,is_nil,{f,427},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,427}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",562}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^9/2-9-', 2, 429}.
  {label,428}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",557}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^9/2-9-'},
               2}.
  {label,429}.
    {test,is_nonempty_list,{f,433},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
  {label,430}.
    {loop_rec,{f,431},{x,0}}.
    remove_message.
    {jump,{f,432}}.
  {label,431}.
    {wait,{f,430}}.
  {label,432}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,429},2}. % '-general_expressions/1-lbc$^9/2-9-'/2
  {label,433}.
    {test,is_nil,{f,434},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,434}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^8/2-8-', 2, 436}.
  {label,435}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^8/2-8-'},
               2}.
  {label,436}.
    {test,is_nonempty_list,{f,439},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,437},3,[{x,2},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,437},[{x,3},{integer,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",553}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
    {jump,{f,438}}.
  {label,437}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",554}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
  {label,438}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,436}}. % '-general_expressions/1-lbc$^8/2-8-'/2
  {label,439}.
    {test,is_nil,{f,440},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,440}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",555}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^6/2-6-', 2, 442}.
  {label,441}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^6/2-6-'},
               2}.
  {label,442}.
    {test,is_nonempty_list,{f,443},[{x,0}]}.
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
    {call,2,{f,446}}. % '-general_expressions/1-lbc$^7/2-7-'/2
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,3},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,442},4}. % '-general_expressions/1-lbc$^6/2-6-'/2
  {label,443}.
    {test,is_nil,{f,444},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,444}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",551}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^7/2-7-', 2, 446}.
  {label,445}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^7/2-7-'},
               2}.
  {label,446}.
    {test,is_nonempty_list,{f,447},[{x,0}]}.
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
    {call,1,{f,322}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,446},2}. % '-general_expressions/1-lbc$^7/2-7-'/2
  {label,447}.
    {test,is_nil,{f,448},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,448}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^5/2-5-', 2, 450}.
  {label,449}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^5/2-5-'},
               2}.
  {label,450}.
    {test,is_nonempty_list,{f,454},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},3,[{x,2},{integer,2}],{x,3}}.
    {select_val,{x,3},
                {f,456},
                {list,[{integer,0},{f,452},{integer,1},{f,451}]}}.
  {label,451}.
    {move,{literal,<<>>},{x,2}}.
    {jump,{f,453}}.
  {label,452}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",547}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
  {label,453}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,450}}. % '-general_expressions/1-lbc$^5/2-5-'/2
  {label,454}.
    {test,is_nil,{f,455},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,455}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",549}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,456}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {case_end,{x,3}}.


{function, '-general_expressions/1-lbc$^4/2-4-', 2, 458}.
  {label,457}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^4/2-4-'},
               2}.
  {label,458}.
    {test,is_nonempty_list,{f,459},[{x,0}]}.
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
    {call,1,{f,322}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,458},2}. % '-general_expressions/1-lbc$^4/2-4-'/2
  {label,459}.
    {test,is_nil,{f,460},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,460}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^3/2-3-', 2, 462}.
  {label,461}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^3/2-3-'},
               2}.
  {label,462}.
    {test,is_nonempty_list,{f,463},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,462}}. % '-general_expressions/1-lbc$^3/2-3-'/2
  {label,463}.
    {test,is_nil,{f,464},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,464}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^2/2-2-', 2, 466}.
  {label,465}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^2/2-2-'},
               2}.
  {label,466}.
    {test,bs_start_match3,{f,468},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,467},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[540,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,467},
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
    {call,1,{f,322}}. % id/1
    {line,[{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,466},2}. % '-general_expressions/1-lbc$^2/2-2-'/2
  {label,467}.
    {move,{x,1},{x,0}}.
    return.
  {label,468}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",543}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^1/2-1-', 2, 470}.
  {label,469}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^1/2-1-'},
               2}.
  {label,470}.
    {test,is_nonempty_list,{f,471},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,3},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,3,{string,<<"abc">>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,470}}. % '-general_expressions/1-lbc$^1/2-1-'/2
  {label,471}.
    {test,is_nil,{f,472},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,472}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^0/2-0-', 2, 474}.
  {label,473}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^0/2-0-'},
               2}.
  {label,474}.
    {test,is_nonempty_list,{f,475},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,3},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,3,{string,<<1,2,3>>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,474}}. % '-general_expressions/1-lbc$^0/2-0-'/2
  {label,475}.
    {test,is_nil,{f,476},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,476}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^33/2-18-', 2, 478}.
  {label,477}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",527}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^33/2-18-'},2}.
  {label,478}.
    {test,bs_start_match3,{f,480},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,479},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[527,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,479},
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
    {call_only,2,{f,478}}. % '-sizes/1-lbc$^33/2-18-'/2
  {label,479}.
    {move,{x,1},{x,0}}.
    return.
  {label,480}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-32-', 1, 482}.
  {label,481}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",521}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-32-'},1}.
  {label,482}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",522}]}.
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,484}}. % '-sizes/1-lbc$^31/2-17-'/2
    {call_last,1,{f,319},0}. % cs_default/1


{function, '-sizes/1-lbc$^31/2-17-', 2, 484}.
  {label,483}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",522}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^31/2-17-'},2}.
  {label,484}.
    {test,bs_start_match3,{f,486},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,485},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[522,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,485},
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
    {call_only,2,{f,484}}. % '-sizes/1-lbc$^31/2-17-'/2
  {label,485}.
    {move,{x,1},{x,0}}.
    return.
  {label,486}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-30-', 2, 488}.
  {label,487}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",515}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-30-'},2}.
  {label,488}.
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
    {call,3,{f,490}}. % '-sizes/1-lbc$^28/2-15-'/3
    {call_last,1,{f,319},0}. % cs_default/1


{function, '-sizes/1-lbc$^28/2-15-', 3, 490}.
  {label,489}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^28/2-15-'},3}.
  {label,490}.
    {test,is_nonempty_list,{f,491},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,494}}. % '-sizes/1-lbc$^29/2-16-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,490},2}. % '-sizes/1-lbc$^28/2-15-'/3
  {label,491}.
    {test,is_nil,{f,492},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,492}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^29/2-16-', 3, 494}.
  {label,493}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^29/2-16-'},3}.
  {label,494}.
    {test,bs_start_match3,{f,496},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,495},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[516,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,495},
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
    {call_only,3,{f,494}}. % '-sizes/1-lbc$^29/2-16-'/3
  {label,495}.
    {move,{x,1},{x,0}}.
    return.
  {label,496}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^27/2-14-', 2, 498}.
  {label,497}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^27/2-14-'},2}.
  {label,498}.
    {test,bs_start_match3,{f,500},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,499},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[513,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,499},
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
    {call_only,2,{f,498}}. % '-sizes/1-lbc$^27/2-14-'/2
  {label,499}.
    {move,{x,1},{x,0}}.
    return.
  {label,500}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^26/2-13-', 2, 502}.
  {label,501}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",512}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^26/2-13-'},2}.
  {label,502}.
    {test,is_nonempty_list,{f,503},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{x,2},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{x,2},1,{field_flags,[]},{integer,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,502}}. % '-sizes/1-lbc$^26/2-13-'/2
  {label,503}.
    {test,is_nil,{f,504},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,504}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-25-', 1, 506}.
  {label,505}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",502}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-25-'},1}.
  {label,506}.
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
    {call,2,{f,508}}. % '-sizes/1-lbc$^24/2-12-'/2
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^24/2-12-', 2, 508}.
  {label,507}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",503}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^24/2-12-'},2}.
  {label,508}.
    {test,bs_start_match3,{f,510},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,509},
          3,
          [{x,2},
           {integer,4},
           1,
           {field_flags,[{anno,[503,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,509},
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
    {call_only,2,{f,508}}. % '-sizes/1-lbc$^24/2-12-'/2
  {label,509}.
    {move,{x,1},{x,0}}.
    return.
  {label,510}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-23-', 3, 512}.
  {label,511}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",492}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-23-'},3}.
  {label,512}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",493}]}.
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,3,0}.
    {call,4,{f,514}}. % '-sizes/1-lbc$^22/2-11-'/4
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^22/2-11-', 4, 514}.
  {label,513}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",493}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^22/2-11-'},4}.
  {label,514}.
    {test,bs_start_match3,{f,516},4,[{x,0}],{x,4}}.
    {test,bs_get_integer2,
          {f,515},
          5,
          [{x,4},
           {x,2},
           1,
           {field_flags,[{anno,[493,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,515},
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
    {call_only,4,{f,514}}. % '-sizes/1-lbc$^22/2-11-'/4
  {label,515}.
    {move,{x,1},{x,0}}.
    return.
  {label,516}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-21-', 1, 518}.
  {label,517}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",480}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-21-'},1}.
  {label,518}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",481}]}.
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,520}}. % '-sizes/1-lbc$^20/2-10-'/2
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^20/2-10-', 2, 520}.
  {label,519}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",481}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^20/2-10-'},2}.
  {label,520}.
    {test,bs_start_match3,{f,522},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,521},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[481,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,521},
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
    {call_only,2,{f,520}}. % '-sizes/1-lbc$^20/2-10-'/2
  {label,521}.
    {move,{x,1},{x,0}}.
    return.
  {label,522}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-19-', 1, 524}.
  {label,523}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",473}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-19-'},1}.
  {label,524}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",474}]}.
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,526}}. % '-sizes/1-lbc$^18/2-9-'/2
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^18/2-9-', 2, 526}.
  {label,525}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",474}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^18/2-9-'},2}.
  {label,526}.
    {test,bs_start_match3,{f,528},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,527},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[474,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,527},
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
    {call_only,2,{f,526}}. % '-sizes/1-lbc$^18/2-9-'/2
  {label,527}.
    {move,{x,1},{x,0}}.
    return.
  {label,528}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-17-', 1, 530}.
  {label,529}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",465}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-17-'},1}.
  {label,530}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",466}]}.
    {call,2,{f,532}}. % '-sizes/1-lbc$^16/2-8-'/2
    {call_last,1,{f,319},0}. % cs_default/1


{function, '-sizes/1-lbc$^16/2-8-', 2, 532}.
  {label,531}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",466}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^16/2-8-'},2}.
  {label,532}.
    {test,is_nonempty_list,{f,533},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_utf8_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,532}}. % '-sizes/1-lbc$^16/2-8-'/2
  {label,533}.
    {test,is_nil,{f,534},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,534}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-15-', 2, 536}.
  {label,535}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",459}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-15-'},2}.
  {label,536}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,537},2,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,537},2,[{x,1},{integer,8}],{x,1}}.
    {gc_bif,'*',{f,537},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,537},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,537},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,538}}.
  {label,537}.
    {move,{integer,256},{x,0}}.
  {label,538}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",460}]}.
    {call,3,{f,540}}. % '-sizes/1-lbc$^14/2-7-'/3
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^14/2-7-', 3, 540}.
  {label,539}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",460}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^14/2-7-'},3}.
  {label,540}.
    {test,is_nonempty_list,{f,541},[{x,0}]}.
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
    {call_only,3,{f,540}}. % '-sizes/1-lbc$^14/2-7-'/3
  {label,541}.
    {test,is_nil,{f,542},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,542}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-13-', 4, 544}.
  {label,543}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",452}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-13-'},4}.
  {label,544}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,545},4,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,545},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,545},4,[{x,2},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,545},4,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'+',{f,545},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,545},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,545},3,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'+',{f,545},2,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,545},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,545},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,545},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,546}}.
  {label,545}.
    {move,{integer,256},{x,0}}.
  {label,546}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",453}]}.
    {call,5,{f,548}}. % '-sizes/1-lbc$^12/2-6-'/5
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^12/2-6-', 5, 548}.
  {label,547}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",453}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^12/2-6-'},5}.
  {label,548}.
    {test,is_nonempty_list,{f,549},[{x,0}]}.
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
    {call_only,5,{f,548}}. % '-sizes/1-lbc$^12/2-6-'/5
  {label,549}.
    {test,is_nil,{f,550},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,550}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",454}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-11-', 4, 552}.
  {label,551}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",446}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-11-'},4}.
  {label,552}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,553},4,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,553},4,[{x,2},{integer,8}],{x,1}}.
    {gc_bif,'+',{f,553},4,[{y,1},{x,1}],{x,1}}.
    {gc_bif,'*',{f,553},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,553},3,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'*',{f,553},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,553},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,553},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,554}}.
  {label,553}.
    {move,{integer,256},{x,0}}.
  {label,554}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",447}]}.
    {call,5,{f,556}}. % '-sizes/1-lbc$^10/2-5-'/5
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^10/2-5-', 5, 556}.
  {label,555}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",447}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^10/2-5-'},5}.
  {label,556}.
    {test,is_nonempty_list,{f,557},[{x,0}]}.
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
    {call_only,5,{f,556}}. % '-sizes/1-lbc$^10/2-5-'/5
  {label,557}.
    {test,is_nil,{f,558},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,558}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-9-', 2, 560}.
  {label,559}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",439}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-9-'},2}.
  {label,560}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,561},2,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,561},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,561},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,561},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,562}}.
  {label,561}.
    {move,{integer,256},{x,0}}.
  {label,562}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",440}]}.
    {call,3,{f,564}}. % '-sizes/1-lbc$^8/2-4-'/3
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^8/2-4-', 3, 564}.
  {label,563}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",440}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^8/2-4-'},3}.
  {label,564}.
    {test,is_nonempty_list,{f,565},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{x,2},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{x,2},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,564}}. % '-sizes/1-lbc$^8/2-4-'/3
  {label,565}.
    {test,is_nil,{f,566},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,566}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-7-', 1, 568}.
  {label,567}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",432}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-7-'},1}.
  {label,568}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,569},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,569},1,[{x,0},{integer,3}],{x,0}}.
    {gc_bif,'+',{f,569},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,569},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,570}}.
  {label,569}.
    {move,{integer,256},{x,0}}.
  {label,570}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",433}]}.
    {call,2,{f,572}}. % '-sizes/1-lbc$^6/2-3-'/2
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^6/2-3-', 2, 572}.
  {label,571}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",433}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^6/2-3-'},2}.
  {label,572}.
    {test,is_nonempty_list,{f,573},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,572}}. % '-sizes/1-lbc$^6/2-3-'/2
  {label,573}.
    {test,is_nil,{f,574},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,574}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-5-', 1, 576}.
  {label,575}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",423}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-5-'},1}.
  {label,576}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,577},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,577},1,[{x,0},{integer,4}],{x,0}}.
    {gc_bif,'+',{f,577},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,577},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,578}}.
  {label,577}.
    {move,{integer,256},{x,0}}.
  {label,578}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",424}]}.
    {call,2,{f,580}}. % '-sizes/1-lbc$^4/2-2-'/2
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^4/2-2-', 2, 580}.
  {label,579}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",424}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^4/2-2-'},2}.
  {label,580}.
    {test,is_nonempty_list,{f,581},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,580}}. % '-sizes/1-lbc$^4/2-2-'/2
  {label,581}.
    {test,is_nil,{f,582},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,582}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-3-', 1, 584}.
  {label,583}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",415}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-3-'},1}.
  {label,584}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,585},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,585},1,[{x,0},{integer,2}],{x,0}}.
    {jump,{f,586}}.
  {label,585}.
    {move,{integer,256},{x,0}}.
  {label,586}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",416}]}.
    {call,2,{f,588}}. % '-sizes/1-lbc$^2/2-1-'/2
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^2/2-1-', 2, 588}.
  {label,587}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",416}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^2/2-1-'},2}.
  {label,588}.
    {test,is_nonempty_list,{f,589},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,588}}. % '-sizes/1-lbc$^2/2-1-'/2
  {label,589}.
    {test,is_nil,{f,590},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,590}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-1-', 1, 592}.
  {label,591}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",407}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-1-'},1}.
  {label,592}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,593},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,593},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,594}}.
  {label,593}.
    {move,{integer,256},{x,0}}.
  {label,594}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",408}]}.
    {call,2,{f,596}}. % '-sizes/1-lbc$^0/2-0-'/2
    {call_last,1,{f,317},0}. % cs/1


{function, '-sizes/1-lbc$^0/2-0-', 2, 596}.
  {label,595}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",408}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^0/2-0-'},2}.
  {label,596}.
    {test,is_nonempty_list,{f,597},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,596}}. % '-sizes/1-lbc$^0/2-0-'/2
  {label,597}.
    {test,is_nil,{f,598},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,598}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch_1/2-lbc$^0/2-0-', 3, 600}.
  {label,599}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",403}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch_1/2-lbc$^0/2-0-'},
               3}.
  {label,600}.
    {test,bs_start_match3,{f,602},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,601},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[403,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,601},
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
    {call_only,3,{f,600}}. % '-nomatch_1/2-lbc$^0/2-0-'/3
  {label,601}.
    {move,{x,1},{x,0}}.
    return.
  {label,602}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^12/2-12-', 2, 604}.
  {label,603}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^12/2-12-'},
               2}.
  {label,604}.
    {test,bs_start_match3,{f,607},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,606},
          3,
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[398,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,605},[{x,3},{integer,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,605}.
    {test,bs_get_binary2,
          {f,606},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[398,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,604}}. % '-nomatch/1-lbc$^12/2-12-'/2
  {label,606}.
    {move,{x,1},{x,0}}.
    return.
  {label,607}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^10/2-10-', 2, 609}.
  {label,608}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^10/2-10-'},
               2}.
  {label,609}.
    {test,is_nonempty_list,{f,610},[{x,0}]}.
    {allocate,1,2}.
    {get_tl,{x,0},{y,0}}.
    {move,{atom,ok},{x,0}}.
    {call,2,{f,613}}. % '-nomatch/1-lbc$^11/2-11-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,609},1}. % '-nomatch/1-lbc$^10/2-10-'/2
  {label,610}.
    {test,is_nil,{f,611},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,611}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^11/2-11-', 2, 613}.
  {label,612}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^11/2-11-'},
               2}.
  {label,613}.
    {test,is_nonempty_list,{f,614},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,613}}. % '-nomatch/1-lbc$^11/2-11-'/2
  {label,614}.
    {test,is_nil,{f,615},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,615}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^8/2-8-', 2, 617}.
  {label,616}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^8/2-8-'},2}.
  {label,617}.
    {test,is_nonempty_list,{f,618},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{atom,ok},{x,0}}.
    {call,3,{f,621}}. % '-nomatch/1-lbc$^9/2-9-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,617},1}. % '-nomatch/1-lbc$^8/2-8-'/2
  {label,618}.
    {test,is_nil,{f,619},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,619}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^9/2-9-', 3, 621}.
  {label,620}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^9/2-9-'},3}.
  {label,621}.
    {test,is_nonempty_list,{f,622},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,3,{f,621}}. % '-nomatch/1-lbc$^9/2-9-'/3
  {label,622}.
    {test,is_nil,{f,623},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,623}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^7/2-7-', 2, 625}.
  {label,624}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",390}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^7/2-7-'},2}.
  {label,625}.
    {test,bs_start_match3,{f,627},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,626},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[390,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,626},
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
    {call_only,2,{f,625}}. % '-nomatch/1-lbc$^7/2-7-'/2
  {label,626}.
    {move,{x,1},{x,0}}.
    return.
  {label,627}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^6/2-6-', 2, 629}.
  {label,628}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^6/2-6-'},2}.
  {label,629}.
    {test,bs_start_match3,{f,631},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,630},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[385,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,630},
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
    {call_only,2,{f,629}}. % '-nomatch/1-lbc$^6/2-6-'/2
  {label,630}.
    {move,{x,1},{x,0}}.
    return.
  {label,631}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^5/2-5-', 2, 633}.
  {label,632}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^5/2-5-'},2}.
  {label,633}.
    {test,bs_start_match3,{f,635},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,634},
          3,
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[382,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,634},
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
    {call_only,2,{f,633}}. % '-nomatch/1-lbc$^5/2-5-'/2
  {label,634}.
    {move,{x,1},{x,0}}.
    return.
  {label,635}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^4/2-4-', 2, 637}.
  {label,636}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^4/2-4-'},2}.
  {label,637}.
    {test,bs_start_match3,{f,638},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,638}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^3/2-3-', 2, 640}.
  {label,639}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^3/2-3-'},2}.
  {label,640}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lc$^2/1-2-', 1, 642}.
  {label,641}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lc$^2/1-2-'},1}.
  {label,642}.
    {test,bs_start_match3,{f,643},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,643}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lc$^1/1-1-', 1, 645}.
  {label,644}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lc$^1/1-1-'},1}.
  {label,645}.
    {move,nil,{x,0}}.
    return.


{function, '-nomatch/1-lbc$^0/2-0-', 2, 647}.
  {label,646}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^0/2-0-'},2}.
  {label,647}.
    {test,is_nonempty_list,{f,648},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,647}}. % '-nomatch/1-lbc$^0/2-0-'/2
  {label,648}.
    {test,is_nil,{f,649},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,649}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_strange/2-lbc$^0/2-1-', 2, 651}.
  {label,650}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",363}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_strange/2-lbc$^0/2-1-'},
               2}.
  {label,651}.
    {test,bs_start_match3,{f,653},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,652},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[363,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,652},
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
    {call_only,2,{f,651}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
  {label,652}.
    {move,{x,1},{x,0}}.
    return.
  {label,653}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_strange/2-lbc$^1/2-0-', 2, 655}.
  {label,654}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",362}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_strange/2-lbc$^1/2-0-'},
               2}.
  {label,655}.
    {test,bs_start_match3,{f,657},2,[{x,0}],{x,2}}.
    {test,bs_get_utf8,
          {f,656},
          3,
          [{x,2},
           {field_flags,[{anno,[362,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,656},
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
    {call_only,2,{f,655}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
  {label,656}.
    {move,{x,1},{x,0}}.
    return.
  {label,657}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_trimmer/1-lbc$^0/2-0-', 2, 659}.
  {label,658}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",354}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_trimmer/1-lbc$^0/2-0-'},
               2}.
  {label,659}.
    {test,is_nonempty_list,{f,660},[{x,0}]}.
    {allocate_heap,4,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {put_tuple2,{x,0},{list,[{y,2},{y,2},{y,2}]}}.
    {call,1,{f,322}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,662},[{x,0}]}.
    {test,test_arity,{f,662},[{x,0},3]}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,322}}. % id/1
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
    {call_last,2,{f,659},4}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2
  {label,660}.
    {test,is_nil,{f,661},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,661}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",356}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,662}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",354}]}.
    {badmatch,{y,0}}.


{function, '-coverage_lightfv/3-lbc$^0/2-0-', 2, 664}.
  {label,663}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",347}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_lightfv/3-lbc$^0/2-0-'},
               2}.
  {label,664}.
    {test,is_nonempty_list,{f,665},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,664}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
  {label,665}.
    {test,is_nil,{f,666},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,666}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_materialiv/3-lbc$^0/2-0-', 2, 668}.
  {label,667}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",342}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_materialiv/3-lbc$^0/2-0-'},
               2}.
  {label,668}.
    {test,is_nonempty_list,{f,669},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,668}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
  {label,669}.
    {test,is_nil,{f,670},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,670}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^8/2-8-', 2, 672}.
  {label,671}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",323}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^8/2-8-'},2}.
  {label,672}.
    {test,is_nonempty_list,{f,674},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,673},[{x,2},{integer,42}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,1},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,1,{string,<<"*">>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,672}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,673}.
    {call_only,2,{f,672}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,674}.
    {test,is_nil,{f,675},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,675}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^7/2-7-', 2, 677}.
  {label,676}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",319}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^7/2-7-'},2}.
  {label,677}.
    {test,bs_start_match3,{f,680},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,679},
          3,
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_position,{x,2},{x,4},4}.
    {test,is_eq_exact,{f,678},[{x,3},{integer,0}]}.
    {test,bs_get_integer2,
          {f,678},
          5,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,678},
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
    {call_only,2,{f,677}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,678}.
    {bs_set_position,{x,2},{x,4}}.
    {test,bs_skip_bits2,
          {f,679},
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,679},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,677}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,679}.
    {move,{x,1},{x,0}}.
    return.
  {label,680}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",320}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^6/2-6-', 2, 682}.
  {label,681}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",316}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^6/2-6-'},2}.
  {label,682}.
    {test,is_nonempty_list,{f,684},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,bs_start_match3,{f,683},3,[{x,2}],{x,2}}.
    {test,bs_get_integer2,
          {f,683},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[316,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,683},[{x,2},0]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,2,{f,682}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,683}.
    {call_only,2,{f,682}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,684}.
    {test,is_nil,{f,685},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,685}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^5/2-5-', 2, 687}.
  {label,686}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",310}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^5/2-5-'},2}.
  {label,687}.
    {test,is_nonempty_list,{f,690},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nonempty_list,{f,688},[{x,2}]}.
    {gc_bif,length,{f,0},3,[{x,2}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {jump,{f,689}}.
  {label,688}.
    {test,is_nil,{f,692},[{x,2}]}.
  {label,689}.
    {call_only,2,{f,687}}. % '-filters/1-lbc$^5/2-5-'/2
  {label,690}.
    {test,is_nil,{f,691},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,691}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",311}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,692}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",312}]}.
    {case_end,{x,2}}.


{function, '-filters/1-lbc$^4/2-4-', 2, 694}.
  {label,693}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^4/2-4-'},2}.
  {label,694}.
    {test,is_nonempty_list,{f,699},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",308}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,697},
                {list,[{atom,false},{f,695},{atom,true},{f,696}]}}.
  {label,695}.
    {gc_bif,'rem',{f,696},0,[{y,1},{integer,2}],{x,0}}.
    {test,is_eq,{f,696},[{x,0},{integer,1}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,698}}.
  {label,696}.
    {move,{y,2},{x,1}}.
    {jump,{f,698}}.
  {label,697}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",308}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {move,{x,0},{x,1}}.
  {label,698}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,694},3}. % '-filters/1-lbc$^4/2-4-'/2
  {label,699}.
    {test,is_nil,{f,700},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,700}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",307}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^3/2-3-', 2, 702}.
  {label,701}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^3/2-3-'},2}.
  {label,702}.
    {test,is_nonempty_list,{f,707},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",304}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,706},
                {list,[{atom,false},{f,704},{atom,true},{f,703}]}}.
  {label,703}.
    {gc_bif,'rem',{f,704},0,[{y,1},{integer,2}],{x,0}}.
    {test,is_eq,{f,704},[{x,0},{integer,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,705}}.
  {label,704}.
    {move,{y,2},{x,1}}.
  {label,705}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,702},3}. % '-filters/1-lbc$^3/2-3-'/2
  {label,706}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",304}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,707}.
    {test,is_nil,{f,708},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,708}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",303}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^2/2-2-', 2, 710}.
  {label,709}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^2/2-2-'},2}.
  {label,710}.
    {test,is_nonempty_list,{f,715},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",301}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,713},
                {list,[{atom,false},{f,712},{atom,true},{f,711}]}}.
  {label,711}.
    {move,{y,2},{x,1}}.
    {jump,{f,714}}.
  {label,712}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,714}}.
  {label,713}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",301}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {move,{x,0},{x,1}}.
  {label,714}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,710},3}. % '-filters/1-lbc$^2/2-2-'/2
  {label,715}.
    {test,is_nil,{f,716},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,716}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",300}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^1/2-1-', 2, 718}.
  {label,717}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^1/2-1-'},2}.
  {label,718}.
    {test,is_nonempty_list,{f,723},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",298}]}.
    {call,2,{f,124}}. % is_less_than/2
    {select_val,{x,0},
                {f,722},
                {list,[{atom,false},{f,720},{atom,true},{f,719}]}}.
  {label,719}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,721}}.
  {label,720}.
    {move,{y,2},{x,1}}.
  {label,721}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,718},3}. % '-filters/1-lbc$^1/2-1-'/2
  {label,722}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",298}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,723}.
    {test,is_nil,{f,724},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,724}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",297}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^0/2-0-', 2, 726}.
  {label,725}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",293}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^0/2-0-'},2}.
  {label,726}.
    {test,bs_start_match3,{f,729},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,728},
          3,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[293,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,728},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[293,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'rem',{f,727},5,[{x,3},{integer,2}],{x,0}}.
    {test,is_eq,{f,727},[{x,0},{integer,0}]}.
    {gc_bif,'-',{f,0},5,[{x,3},{integer,32}],{x,0}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,5},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,726}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,727}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,726}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,728}.
    {move,{x,1},{x,0}}.
    return.
  {label,729}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",294}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-inconsistent_types_2/0-lbc$^0/2-0-', 3, 731}.
  {label,730}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",282}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-inconsistent_types_2/0-lbc$^0/2-0-'},
               3}.
  {label,731}.
    {test,is_nonempty_list,{f,735},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bif,'/=',{f,0},[{x,2},nil],{x,3}}.
    {test,is_eq_exact,{f,737},[{x,3},{atom,false}]}.
    {test,is_eq_exact,{f,737},[{x,3},{x,2}]}.
    {test,is_ne_exact,{f,733},[{x,3},{atom,true}]}.
    {select_val,{x,2},
                {f,734},
                {list,[{atom,false},{f,733},{atom,true},{f,732}]}}.
  {label,732}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
  {label,733}.
    {call_only,3,{f,731}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
  {label,734}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,2}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",285}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,735}.
    {test,is_nil,{f,736},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,736}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",284}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,737}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",285}]}.
    {badmatch,{x,3}}.


{function, '-inconsistent_types_1/1-lbc$^0/2-0-', 3, 739}.
  {label,738}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",264}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-inconsistent_types_1/1-lbc$^0/2-0-'},
               3}.
  {label,739}.
    {test,is_nonempty_list,{f,745},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bif,is_pid,{f,0},[{x,2}],{x,3}}.
    {test,is_map,{f,747},[{x,2}]}.
    {test,is_eq_exact,{f,740},[{x,3},{atom,true}]}.
    {move,{atom,false},{x,4}}.
    {jump,{f,741}}.
  {label,740}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",270}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,741}.
    {get_map_elements,{f,747},{x,2},{list,[{x,4},{x,4}]}}.
    {test,is_eq_exact,{f,747},[{x,4},{x,3}]}.
    {select_val,{x,2},
                {f,744},
                {list,[{atom,false},{f,743},{atom,true},{f,742}]}}.
  {label,742}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",264}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
  {label,743}.
    {call_only,3,{f,739}}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3
  {label,744}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,2}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",266}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,745}.
    {test,is_nil,{f,746},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,746}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",265}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,747}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",268}]}.
    {badmatch,{x,2}}.


{function, '-float_segment_size/0-lbc$^0/2-0-', 3, 749}.
  {label,748}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",254}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-float_segment_size/0-lbc$^0/2-0-'},
               3}.
  {label,749}.
    {test,bs_start_match3,{f,752},3,[{x,0}],{x,3}}.
    {test,bs_get_float2,
          {f,751},
          4,
          [{x,3},
           {x,2},
           8,
           {field_flags,[{anno,[254,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,750},[{x,4},{float,5.9}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,750}.
    {test,bs_get_binary2,
          {f,751},
          4,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[254,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{x,4},{x,0}}.
    {call_only,3,{f,749}}. % '-float_segment_size/0-lbc$^0/2-0-'/3
  {label,751}.
    {move,{x,1},{x,0}}.
    return.
  {label,752}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",255}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^0/2-0-', 2, 754}.
  {label,753}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-over_complex_generator/0-lbc$^0/2-0-'},
               2}.
  {label,754}.
    {test,bs_start_match3,{f,757},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,756},
          3,
          [{x,2},
           {integer,2},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,755},[{x,3},{integer,0}]}.
    {test,bs_get_binary2,
          {f,755},
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
    {call,2,{f,759}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,754},1}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,755}.
    {test,bs_get_binary2,
          {f,756},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,754}}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,756}.
    {move,{x,1},{x,0}}.
    return.
  {label,757}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",235}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^1/2-1-', 2, 759}.
  {label,758}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-over_complex_generator/0-lbc$^1/2-1-'},
               2}.
  {label,759}.
    {test,bs_start_match3,{f,761},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,760},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,760},
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
    {call_only,2,{f,759}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
  {label,760}.
    {move,{x,1},{x,0}}.
    return.
  {label,761}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",237}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_match_context_2/1-lbc$^0/2-0-', 2, 763}.
  {label,762}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",229}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_match_context_2/1-lbc$^0/2-0-'},
               2}.
  {label,763}.
    {test,bs_start_match3,{f,765},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,764},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[229,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,764},
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
    {call_only,2,{f,763}}. % '-do_match_context_2/1-lbc$^0/2-0-'/2
  {label,764}.
    {move,{x,1},{x,0}}.
    return.
  {label,765}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-match_context_1/1-lbc$^0/2-0-', 2, 767}.
  {label,766}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",223}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-match_context_1/1-lbc$^0/2-0-'},
               2}.
  {label,767}.
    {test,bs_start_match3,{f,769},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,768},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[223,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,768},
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
    {call_only,2,{f,767}}. % '-match_context_1/1-lbc$^0/2-0-'/2
  {label,768}.
    {move,{x,1},{x,0}}.
    return.
  {label,769}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^1/2-1-', 2, 771}.
  {label,770}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^1/2-1-'},2}.
  {label,771}.
    {test,is_nonempty_list,{f,772},[{x,0}]}.
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
    {call,2,{f,775}}. % '-gen_data/1-lbc$^2/2-2-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,771},1}. % '-gen_data/1-lbc$^1/2-1-'/2
  {label,772}.
    {test,is_nil,{f,773},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,773}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^2/2-2-', 2, 775}.
  {label,774}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^2/2-2-'},2}.
  {label,775}.
    {test,is_nonempty_list,{f,776},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,775}}. % '-gen_data/1-lbc$^2/2-2-'/2
  {label,776}.
    {test,is_nil,{f,777},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,777}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",220}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^0/2-0-', 2, 779}.
  {label,778}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",218}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^0/2-0-'},2}.
  {label,779}.
    {test,is_nonempty_list,{f,780},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,779}}. % '-gen_data/1-lbc$^0/2-0-'/2
  {label,780}.
    {test,is_nil,{f,781},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,781}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_lc/1-lc$^0/1-0-', 1, 783}.
  {label,782}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",215}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-silly_lc/1-lc$^0/1-0-'},1}.
  {label,783}.
    {test,is_nonempty_list,{f,784},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,783}}. % '-silly_lc/1-lc$^0/1-0-'/1
    {test_heap,6,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,784}.
    {test,is_nil,{f,785},[{x,0}]}.
    return.
  {label,785}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_bc/1-lbc$^0/2-0-', 2, 787}.
  {label,786}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",210}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-silly_bc/1-lbc$^0/2-0-'},2}.
  {label,787}.
    {test,bs_start_match3,{f,789},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,788},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[210,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,788},
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
    {call_only,2,{f,787}}. % '-silly_bc/1-lbc$^0/2-0-'/2
  {label,788}.
    {move,{x,1},{x,0}}.
    return.
  {label,789}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^0/2-0-', 3, 791}.
  {label,790}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_size/2-lbc$^0/2-0-'},
               3}.
  {label,791}.
    {test,is_nonempty_list,{f,792},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,795}}. % '-mixed_size/2-lbc$^1/2-1-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,791},2}. % '-mixed_size/2-lbc$^0/2-0-'/3
  {label,792}.
    {test,is_nil,{f,793},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,793}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^1/2-1-', 3, 795}.
  {label,794}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_size/2-lbc$^1/2-1-'},
               3}.
  {label,795}.
    {test,bs_start_match3,{f,797},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,796},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[197,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,796},
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
    {call_only,3,{f,795}}. % '-mixed_size/2-lbc$^1/2-1-'/3
  {label,796}.
    {move,{x,1},{x,0}}.
    return.
  {label,797}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_nested/1-lbc$^0/2-0-', 2, 799}.
  {label,798}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",194}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_nested/1-lbc$^0/2-0-'},
               2}.
  {label,799}.
    {test,is_nonempty_list,{f,800},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,799}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
  {label,800}.
    {test,is_nil,{f,801},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,801}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-fun-26-', 1, 803}.
  {label,802}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",186}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-fun-26-'},1}.
  {label,803}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",187}]}.
    {call,2,{f,806}}. % '-mixed/1-lc$^25/1-25-'/2
    {test,is_nil,{f,804},[{x,0}]}.
    {deallocate,0}.
    return.
  {label,804}.
    {badmatch,{x,0}}.


{function, '-mixed/1-lc$^25/1-25-', 2, 806}.
  {label,805}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",187}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^25/1-25-'},2}.
  {label,806}.
    {test,bs_start_match3,{f,809},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,809},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,809},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'bsr',{f,807},4,[{x,3},{integer,1}],{x,3}}.
    {jump,{f,808}}.
  {label,807}.
    {move,{atom,bad_size},{x,3}}.
  {label,808}.
    {test,bs_start_match3,{f,809},4,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,809},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,809},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,2,{f,806}}. % '-mixed/1-lc$^25/1-25-'/2
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,809}.
    {test,bs_start_match3,{f,812},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,812},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,812},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'bsr',{f,810},4,[{x,3},{integer,1}],{x,3}}.
    {jump,{f,811}}.
  {label,810}.
    {move,{atom,bad_size},{x,3}}.
  {label,811}.
    {test,bs_start_match3,{f,812},4,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,812},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,812},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,806}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,812}.
    {test,bs_start_match3,{f,813},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,813}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^23/2-23-', 2, 815}.
  {label,814}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^23/2-23-'},2}.
  {label,815}.
    {test,is_nonempty_list,{f,816},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,819}}. % '-mixed/1-lbc$^24/2-24-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,815},1}. % '-mixed/1-lbc$^23/2-23-'/2
  {label,816}.
    {test,is_nil,{f,817},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,817}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^24/2-24-', 2, 819}.
  {label,818}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^24/2-24-'},2}.
  {label,819}.
    {test,is_nonempty_list,{f,820},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,819}}. % '-mixed/1-lbc$^24/2-24-'/2
  {label,820}.
    {test,is_nil,{f,821},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,821}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^21/1-21-', 1, 823}.
  {label,822}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^21/1-21-'},1}.
  {label,823}.
    {test,bs_start_match3,{f,825},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,824},
          2,
          [{x,1},
           {integer,3},
           1,
           {field_flags,[{anno,[155,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,824},
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
    {call_only,3,{f,827}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,824}.
    {move,nil,{x,0}}.
    return.
  {label,825}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^22/1-22-', 3, 827}.
  {label,826}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^22/1-22-'},3}.
  {label,827}.
    {test,is_nonempty_list,{f,829},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {test,is_tuple,{f,828},[{x,3}]}.
    {test,test_arity,{f,828},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {gc_bif,'+',{f,0},4,[{x,1},{x,3}],{x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,3,{f,827}}. % '-mixed/1-lc$^22/1-22-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,828}.
    {call_only,3,{f,827}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,829}.
    {test,is_nil,{f,830},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,823}}. % '-mixed/1-lc$^21/1-21-'/1
  {label,830}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^19/1-19-', 1, 832}.
  {label,831}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^19/1-19-'},1}.
  {label,832}.
    {test,bs_start_match3,{f,834},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,833},
          2,
          [{x,1},
           {integer,3},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,833},
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
    {call_only,3,{f,836}}. % '-mixed/1-lc$^20/1-20-'/3
  {label,833}.
    {move,nil,{x,0}}.
    return.
  {label,834}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^20/1-20-', 3, 836}.
  {label,835}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^20/1-20-'},3}.
  {label,836}.
    {test,bs_start_match3,{f,838},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,837},
          4,
          [{x,3},
           {integer,3},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,837},
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
    {call,3,{f,836}}. % '-mixed/1-lc$^20/1-20-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,837}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,832}}. % '-mixed/1-lc$^19/1-19-'/1
  {label,838}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^18/2-18-', 2, 840}.
  {label,839}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",150}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^18/2-18-'},2}.
  {label,840}.
    {test,is_nonempty_list,{f,842},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_tuple,{f,841},[{x,2}]}.
    {test,test_arity,{f,841},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'+',{f,0},4,[{x,3},{x,2}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,840}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,841}.
    {call_only,2,{f,840}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,842}.
    {test,is_nil,{f,843},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,843}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^16/2-16-', 2, 845}.
  {label,844}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^16/2-16-'},2}.
  {label,845}.
    {test,is_nonempty_list,{f,846},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,849}}. % '-mixed/1-lbc$^17/2-17-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,845},1}. % '-mixed/1-lbc$^16/2-16-'/2
  {label,846}.
    {test,is_nil,{f,847},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,847}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^17/2-17-', 3, 849}.
  {label,848}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^17/2-17-'},3}.
  {label,849}.
    {test,is_nonempty_list,{f,850},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,849}}. % '-mixed/1-lbc$^17/2-17-'/3
  {label,850}.
    {test,is_nil,{f,851},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,851}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^14/2-14-', 2, 853}.
  {label,852}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^14/2-14-'},2}.
  {label,853}.
    {test,bs_start_match3,{f,855},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,854},
          3,
          [{x,2},
           {integer,3},
           1,
           {field_flags,[{anno,[146,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,854},
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
    {call,3,{f,857}}. % '-mixed/1-lbc$^15/2-15-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,853},1}. % '-mixed/1-lbc$^14/2-14-'/2
  {label,854}.
    {move,{x,1},{x,0}}.
    return.
  {label,855}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^15/2-15-', 3, 857}.
  {label,856}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^15/2-15-'},3}.
  {label,857}.
    {test,is_nonempty_list,{f,858},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,857}}. % '-mixed/1-lbc$^15/2-15-'/3
  {label,858}.
    {test,is_nil,{f,859},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,859}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^12/2-12-', 2, 861}.
  {label,860}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^12/2-12-'},2}.
  {label,861}.
    {test,bs_start_match3,{f,863},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,862},
          3,
          [{x,2},
           {integer,3},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,862},
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
    {call,3,{f,865}}. % '-mixed/1-lbc$^13/2-13-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,861},1}. % '-mixed/1-lbc$^12/2-12-'/2
  {label,862}.
    {move,{x,1},{x,0}}.
    return.
  {label,863}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^13/2-13-', 3, 865}.
  {label,864}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^13/2-13-'},3}.
  {label,865}.
    {test,bs_start_match3,{f,867},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,866},
          4,
          [{x,3},
           {integer,3},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,866},
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
    {call_only,3,{f,865}}. % '-mixed/1-lbc$^13/2-13-'/3
  {label,866}.
    {move,{x,1},{x,0}}.
    return.
  {label,867}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",144}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^10/1-10-', 1, 869}.
  {label,868}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^10/1-10-'},1}.
  {label,869}.
    {test,bs_start_match3,{f,871},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,870},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[141,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,870},
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
    {call_only,3,{f,873}}. % '-mixed/1-lc$^11/1-11-'/3
  {label,870}.
    {move,nil,{x,0}}.
    return.
  {label,871}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^11/1-11-', 3, 873}.
  {label,872}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^11/1-11-'},3}.
  {label,873}.
    {test,is_nonempty_list,{f,874},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,1},{x,3}],{x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,3,{f,873}}. % '-mixed/1-lc$^11/1-11-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,874}.
    {test,is_nil,{f,875},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,869}}. % '-mixed/1-lc$^10/1-10-'/1
  {label,875}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^8/1-8-', 1, 877}.
  {label,876}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^8/1-8-'},1}.
  {label,877}.
    {test,bs_start_match3,{f,879},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,878},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,878},
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
    {call_only,3,{f,881}}. % '-mixed/1-lc$^9/1-9-'/3
  {label,878}.
    {move,nil,{x,0}}.
    return.
  {label,879}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^9/1-9-', 3, 881}.
  {label,880}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^9/1-9-'},3}.
  {label,881}.
    {test,bs_start_match3,{f,883},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,882},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,882},
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
    {call,3,{f,881}}. % '-mixed/1-lc$^9/1-9-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,882}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,877}}. % '-mixed/1-lc$^8/1-8-'/1
  {label,883}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^6/2-6-', 3, 885}.
  {label,884}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^6/2-6-'},3}.
  {label,885}.
    {test,is_nonempty_list,{f,886},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,889}}. % '-mixed/1-lbc$^7/2-7-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,885},2}. % '-mixed/1-lbc$^6/2-6-'/3
  {label,886}.
    {test,is_nil,{f,887},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,887}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^7/2-7-', 3, 889}.
  {label,888}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^7/2-7-'},3}.
  {label,889}.
    {test,is_nonempty_list,{f,890},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,889}}. % '-mixed/1-lbc$^7/2-7-'/3
  {label,890}.
    {test,is_nil,{f,891},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,891}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^4/2-4-', 2, 893}.
  {label,892}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^4/2-4-'},2}.
  {label,893}.
    {test,is_nonempty_list,{f,894},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,897}}. % '-mixed/1-lbc$^5/2-5-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,893},1}. % '-mixed/1-lbc$^4/2-4-'/2
  {label,894}.
    {test,is_nil,{f,895},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,895}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^5/2-5-', 3, 897}.
  {label,896}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^5/2-5-'},3}.
  {label,897}.
    {test,is_nonempty_list,{f,898},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,897}}. % '-mixed/1-lbc$^5/2-5-'/3
  {label,898}.
    {test,is_nil,{f,899},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,899}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^2/2-2-', 2, 901}.
  {label,900}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^2/2-2-'},2}.
  {label,901}.
    {test,bs_start_match3,{f,903},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,902},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[131,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,902},
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
    {call,3,{f,905}}. % '-mixed/1-lbc$^3/2-3-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,901},1}. % '-mixed/1-lbc$^2/2-2-'/2
  {label,902}.
    {move,{x,1},{x,0}}.
    return.
  {label,903}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^3/2-3-', 3, 905}.
  {label,904}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^3/2-3-'},3}.
  {label,905}.
    {test,is_nonempty_list,{f,906},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,905}}. % '-mixed/1-lbc$^3/2-3-'/3
  {label,906}.
    {test,is_nil,{f,907},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,907}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^0/2-0-', 2, 909}.
  {label,908}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,909}.
    {test,bs_start_match3,{f,911},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,910},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,910},
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
    {call,3,{f,913}}. % '-mixed/1-lbc$^1/2-1-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,909},1}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,910}.
    {move,{x,1},{x,0}}.
    return.
  {label,911}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^1/2-1-', 3, 913}.
  {label,912}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^1/2-1-'},3}.
  {label,913}.
    {test,bs_start_match3,{f,915},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,914},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,914},
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
    {call_only,3,{f,913}}. % '-mixed/1-lbc$^1/2-1-'/3
  {label,914}.
    {move,{x,1},{x,0}}.
    return.
  {label,915}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lc$^3/1-3-', 1, 917}.
  {label,916}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",123}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^3/1-3-'},
               1}.
  {label,917}.
    {test,bs_start_match3,{f,919},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,918},
          2,
          [{x,1},
           {integer,15},
           1,
           {field_flags,[{anno,[123,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,918},
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
    {call,1,{f,917}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,918}.
    {move,nil,{x,0}}.
    return.
  {label,919}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lbc$^2/2-2-', 2, 921}.
  {label,920}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",121}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,921}.
    {test,is_nonempty_list,{f,922},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,7},1],{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,31},1,{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,921}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
  {label,922}.
    {test,is_nil,{f,923},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,923}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lc$^1/1-1-', 1, 925}.
  {label,924}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",119}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^1/1-1-'},
               1}.
  {label,925}.
    {test,bs_start_match3,{f,927},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,926},
          2,
          [{x,1},
           {integer,7},
           1,
           {field_flags,[{anno,[119,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,926},
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
    {call,1,{f,925}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,926}.
    {move,nil,{x,0}}.
    return.
  {label,927}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lbc$^0/2-0-', 2, 929}.
  {label,928}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",118}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,929}.
    {test,is_nonempty_list,{f,930},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,32}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,7},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,929}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
  {label,930}.
    {test,is_nil,{f,931},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,931}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lc$^3/1-3-', 1, 933}.
  {label,932}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",112}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^3/1-3-'},
               1}.
  {label,933}.
    {test,bs_start_match3,{f,935},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,934},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[112,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,934},
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
    {call,1,{f,933}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,934}.
    {move,nil,{x,0}}.
    return.
  {label,935}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lbc$^2/2-2-', 2, 937}.
  {label,936}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",110}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,937}.
    {test,is_nonempty_list,{f,938},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,937}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
  {label,938}.
    {test,is_nil,{f,939},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,939}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lc$^1/1-1-', 1, 941}.
  {label,940}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",108}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^1/1-1-'},
               1}.
  {label,941}.
    {test,bs_start_match3,{f,943},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,942},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[108,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,942},
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
    {call,1,{f,941}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,942}.
    {move,nil,{x,0}}.
    return.
  {label,943}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lbc$^0/2-0-', 2, 945}.
  {label,944}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",107}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,945}.
    {test,is_nonempty_list,{f,946},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,32}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,945}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
  {label,946}.
    {test,is_nil,{f,947},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,947}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^3/2-3-', 2, 949}.
  {label,948}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",102}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^3/2-3-'},
               2}.
  {label,949}.
    {test,bs_start_match3,{f,951},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,950},
          3,
          [{x,2},
           {integer,15},
           1,
           {field_flags,[{anno,[102,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,950},
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
    {call_only,2,{f,949}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
  {label,950}.
    {move,{x,1},{x,0}}.
    return.
  {label,951}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^2/2-2-', 2, 953}.
  {label,952}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",100}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,953}.
    {test,bs_start_match3,{f,955},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,954},
          3,
          [{x,2},
           {integer,31},
           1,
           {field_flags,[{anno,[100,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,954},
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
    {call_only,2,{f,953}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
  {label,954}.
    {move,{x,1},{x,0}}.
    return.
  {label,955}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^1/2-1-', 2, 957}.
  {label,956}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",98}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^1/2-1-'},
               2}.
  {label,957}.
    {test,bs_start_match3,{f,959},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,958},
          3,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[98,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,958},
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
    {call_only,2,{f,957}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
  {label,958}.
    {move,{x,1},{x,0}}.
    return.
  {label,959}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^0/2-0-', 2, 961}.
  {label,960}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",97}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,961}.
    {test,bs_start_match3,{f,963},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,962},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[97,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,962},
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
    {call_only,2,{f,961}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
  {label,962}.
    {move,{x,1},{x,0}}.
    return.
  {label,963}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^3/2-3-', 2, 965}.
  {label,964}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",91}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^3/2-3-'},
               2}.
  {label,965}.
    {test,bs_start_match3,{f,967},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,966},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[91,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,966},
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
    {call_only,2,{f,965}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
  {label,966}.
    {move,{x,1},{x,0}}.
    return.
  {label,967}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^2/2-2-', 2, 969}.
  {label,968}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",89}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,969}.
    {test,bs_start_match3,{f,971},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,970},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[89,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,970},
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
    {call_only,2,{f,969}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
  {label,970}.
    {move,{x,1},{x,0}}.
    return.
  {label,971}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^1/2-1-', 2, 973}.
  {label,972}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",87}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^1/2-1-'},
               2}.
  {label,973}.
    {test,bs_start_match3,{f,975},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,974},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[87,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,974},
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
    {call_only,2,{f,973}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
  {label,974}.
    {move,{x,1},{x,0}}.
    return.
  {label,975}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^0/2-0-', 2, 977}.
  {label,976}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",86}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,977}.
    {test,bs_start_match3,{f,979},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,978},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[86,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,978},
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
    {call_only,2,{f,977}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
  {label,978}.
    {move,{x,1},{x,0}}.
    return.
  {label,979}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
