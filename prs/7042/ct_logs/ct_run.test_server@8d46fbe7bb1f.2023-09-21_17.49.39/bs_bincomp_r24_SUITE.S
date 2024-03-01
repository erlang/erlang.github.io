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

{labels, 1004}.


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
    {call,0,{f,330}}. % cs_init/0
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",86}]}.
    {call,2,{f,1001}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,22},[{x,0},{literal,<<"abcdefg">>}]}.
    {move,{integer,12},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABC">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",87}]}.
    {call,2,{f,997}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,21},[{x,0},{literal,<<"AxyzBxyzCxyz">>}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,1,0,0,0,2,0,0,0,3,0,0,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",89}]}.
    {call,2,{f,993}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,20},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,20},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,20},[{x,1},0]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",91}]}.
    {call,2,{f,989}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
    {test,bs_start_match3,{f,19},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,19},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,19},[{x,1},0]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",90}]}.
    {call,1,{f,334}}. % cs/1
    {call_last,0,{f,332},0}. % cs_end/0
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
    {call,0,{f,330}}. % cs_init/0
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",97}]}.
    {call,2,{f,985}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,30},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,30},
          [{x,1},49,{string,<<195,139,30,76,185,179,128>>}]}.
    {test,bs_test_tail2,{f,30},[{x,1},0]}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",98}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,25},1,[{x,0}],{x,0}}.
    {gc_bif,'div',{f,25},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'*',{f,25},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,26}}.
  {label,25}.
    {move,{integer,256},{x,0}}.
  {label,26}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,981}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,29},[{x,0},{literal,<<"ABCDEFG">>}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,2,0,0,0,8,0,0,0,24,0,0,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",100}]}.
    {call,2,{f,977}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,28},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,28},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,28},[{x,1},0]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",102}]}.
    {call,2,{f,973}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,27},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,27},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,27},[{x,1},0]}.
    {call_last,0,{f,332},1}. % cs_end/0
  {label,27}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",101}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",98}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",96}]}.
    {badmatch,{x,0}}.


{function, extended_byte_aligned, 1, 32}.
  {label,31}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",105}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,extended_byte_aligned},1}.
  {label,32}.
    {test,is_list,{f,31},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",106}]}.
    {call,0,{f,330}}. % cs_init/0
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",107}]}.
    {call,2,{f,969}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,36},[{x,0},{literal,<<"abcdefg">>}]}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",108}]}.
    {call,1,{f,965}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {test,is_eq_exact,{f,35},[{x,0},{literal,"abcdefg"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",110}]}.
    {call,2,{f,961}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,34},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,34},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {test,bs_test_tail2,{f,34},[{x,1},0]}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",112}]}.
    {call,1,{f,957}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {test,is_eq_exact,{f,33},[{x,0},{literal,[256,512,768,1024]}]}.
    {call_last,0,{f,332},0}. % cs_end/0
  {label,33}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",111}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",108}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",107}]}.
    {badmatch,{x,0}}.


{function, extended_bit_aligned, 1, 38}.
  {label,37}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",115}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,extended_bit_aligned},1}.
  {label,38}.
    {test,is_list,{f,37},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",116}]}.
    {call,0,{f,330}}. % cs_init/0
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",118}]}.
    {call,2,{f,953}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,42},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,42},
          [{x,1},49,{string,<<195,139,30,76,185,179,128>>}]}.
    {test,bs_test_tail2,{f,42},[{x,1},0]}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",119}]}.
    {call,1,{f,949}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {test,is_eq_exact,{f,41},[{x,0},{literal,"ABCDEFG"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",121}]}.
    {call,2,{f,945}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,40},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,40},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {test,bs_test_tail2,{f,40},[{x,1},0]}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",123}]}.
    {call,1,{f,941}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {test,is_eq_exact,{f,39},[{x,0},{literal,[256,512,768,1024]}]}.
    {call_last,0,{f,332},0}. % cs_end/0
  {label,39}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",117}]}.
    {badmatch,{x,0}}.


{function, mixed, 1, 44}.
  {label,43}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",126}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,mixed},1}.
  {label,44}.
    {test,is_list,{f,43},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",127}]}.
    {call,0,{f,330}}. % cs_init/0
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {call,2,{f,933}}. % '-mixed/1-lbc$^0/2-0-'/2
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,74},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {call,2,{f,925}}. % '-mixed/1-lbc$^2/2-2-'/2
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,73},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {call,2,{f,917}}. % '-mixed/1-lbc$^4/2-4-'/2
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,72},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",134}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",135}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,2}}.
    {gc_bif,length,{f,45},0,[{y,3}],{x,0}}.
    {gc_bif,length,{f,45},1,[{y,2}],{x,1}}.
    {gc_bif,'*',{f,45},2,[{x,1},{integer,1}],{x,1}}.
    {gc_bif,'*',{f,45},2,[{x,0},{x,1}],{x,0}}.
    {jump,{f,46}}.
  {label,45}.
    {move,{integer,256},{x,0}}.
  {label,46}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",137}]}.
    {call,3,{f,909}}. % '-mixed/1-lbc$^6/2-6-'/3
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,71},[{x,0},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {call,1,{f,901}}. % '-mixed/1-lc$^8/1-8-'/1
    {test,is_eq_exact,{f,70},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {call,1,{f,893}}. % '-mixed/1-lc$^10/1-10-'/1
    {test,is_eq_exact,{f,69},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {call,2,{f,885}}. % '-mixed/1-lbc$^12/2-12-'/2
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,68},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,68},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,68},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {call,2,{f,877}}. % '-mixed/1-lbc$^14/2-14-'/2
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,67},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,67},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,67},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {call,2,{f,869}}. % '-mixed/1-lbc$^16/2-16-'/2
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,66},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,66},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,66},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[{1,1},{1,2},{2,1},{2,2},{3,1},{3,2},{4,1},{4,2}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",150}]}.
    {call,2,{f,864}}. % '-mixed/1-lbc$^18/2-18-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,bs_start_match3,{f,65},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,65},[{x,1},24,{string,<<"MÉn">>}]}.
    {test,bs_test_tail2,{f,65},[{x,1},0]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {call,1,{f,856}}. % '-mixed/1-lc$^19/1-19-'/1
    {test,is_eq_exact,{f,64},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {call,1,{f,847}}. % '-mixed/1-lc$^21/1-21-'/1
    {test,is_eq_exact,{f,63},[{x,0},{literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",158}]}.
    {call,1,{f,76}}. % mixed_nested/1
    {test,is_eq_exact,{f,62},[{x,0},{literal,<<0,1,0,2,0,3,99>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[1]]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {call,2,{f,839}}. % '-mixed/1-lbc$^23/2-23-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,61},[{x,0},{literal,<<1>>}]}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",164}]}.
    {call,1,{f,340}}. % id/1
    {move,{literal,<<"*Ký">>},{x,1}}.
    {call,2,{f,80}}. % mixed_size/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,
          {f,60},
          [{x,0},{literal,<<0,0,0,42,0,0,0,75,0,0,0,253,0,0,42,75>>}]}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",166}]}.
    {call,1,{f,82}}. % silly_lc_bc/1
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",168}]}.
    {call,1,{f,95}}. % gen_data/1
    {move,{integer,256},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",169}]}.
    {call,1,{f,95}}. % gen_data/1
    {move,{integer,512},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",170}]}.
    {call,1,{f,95}}. % gen_data/1
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",172}]}.
    {call,1,{f,100}}. % match_context_1/1
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,59},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{literal,<<4,5,6>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",173}]}.
    {call,1,{f,103}}. % match_context_2/1
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,58},[{x,0},{literal,<<4,5,6>>}]}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",175}]}.
    {call,0,{f,108}}. % over_complex_generator/0
    {test,is_eq_exact,{f,57},[{x,0},{literal,<<"ÿ">>}]}.
    {'catch',{y,3},{f,47}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",176}]}.
    {call,0,{f,110}}. % float_segment_size/0
  {label,47}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,56},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,56},[{x,1},{atom,'EXIT'}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",178}]}.
    {call,1,{f,114}}. % inconsistent_types_1/1
    {test,is_eq_exact,{f,55},[{x,0},{literal,<<>>}]}.
    {'catch',{y,2},{f,48}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",179}]}.
    {call,1,{f,114}}. % inconsistent_types_1/1
  {label,48}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,54},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,54},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,54},[{x,1}]}.
    {test,test_arity,{f,54},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,54},[{x,1},{literal,{bad_generator,42}}]}.
    {bif,self,{f,0},[],{y,3}}.
    {'catch',{y,1},{f,49}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[4]},{location,"bs_bincomp_r24_SUITE.erl",181}]}.
    {call,1,{f,114}}. % inconsistent_types_1/1
  {label,49}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,53},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,53},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,53},[{x,1}]}.
    {test,test_arity,{f,53},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,53},[{x,1},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,53},[{x,2},{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,53},[{x,1},{y,3}]}.
    {'catch',{y,0},{f,50}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",183}]}.
    {call,0,{f,116}}. % inconsistent_types_2/0
  {label,50}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,52},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,52},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,52},[{x,1}]}.
    {test,test_arity,{f,52},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,52},[{x,1},{literal,{bad_filter,<<>>}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,823},0,0,{y,3},{list,[]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",188}]}.
    {call,1,{f,340}}. % id/1
    {move,{y,3},{x,1}}.
    {trim,4,0}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",186}]}.
    {call_fun,1}.
    {test,is_nil,{f,51},[{x,0}]}.
    {call_last,0,{f,332},0}. % cs_end/0
  {label,51}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",183}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,[4]},{location,"bs_bincomp_r24_SUITE.erl",179}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",178}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",176}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",175}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",173}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",172}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",158}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",154}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",152}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",149}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",147}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",145}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",140}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",138}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",136}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",130}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",128}]}.
    {badmatch,{x,0}}.


{function, mixed_nested, 1, 76}.
  {label,75}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",193}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,mixed_nested},1}.
  {label,76}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,77},0,[{y,1}],{x,0}}.
    {gc_bif,'*',{f,77},1,[{x,0},{integer,2}],{x,0}}.
    {jump,{f,78}}.
  {label,77}.
    {move,{integer,256},{x,0}}.
  {label,78}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",194}]}.
    {call,2,{f,819}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{y,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,340}}. % id/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{x,0},1],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,8,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{x,0},1,{field_flags,[]},{integer,99}}.
    {move,{x,1},{x,0}}.
    {deallocate,2}.
    return.


{function, mixed_size, 2, 80}.
  {label,79}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",196}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,mixed_size},2}.
  {label,80}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,811},2}. % '-mixed_size/2-lbc$^0/2-0-'/3


{function, silly_lc_bc, 1, 82}.
  {label,81}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",199}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,silly_lc_bc},1}.
  {label,82}.
    {test,is_lt,{f,83},[{integer,0},{x,0}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",200}]}.
    {call,1,{f,92}}. % silly_lc/1
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",201}]}.
    {call,1,{f,87}}. % silly_bc/1
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,85},[{x,0},{y,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",202}]}.
    {gc_bif,byte_size,{f,0},0,[{y,0}],{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",203}]}.
    {gc_bif,'bsl',{f,0},1,[{integer,5},{y,1}],{x,1}}.
    {test,is_eq_exact,{f,84},[{x,1},{x,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",204}]}.
    {gc_bif,'-',{f,0},0,[{y,1},{integer,1}],{x,0}}.
    {call_last,1,{f,82},2}. % silly_lc_bc/1
  {label,83}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,84}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",203}]}.
    {badmatch,{x,1}}.
  {label,85}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",201}]}.
    {badmatch,{x,0}}.


{function, silly_bc, 1, 87}.
  {label,86}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",207}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,silly_bc},1}.
  {label,87}.
    {test,is_eq_exact,{f,88},[{x,0},{integer,0}]}.
    {move,{literal,<<0,1,2,3,4>>},{x,0}}.
    return.
  {label,88}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",210}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,87}}. % silly_bc/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,89},1,[{x,0}],{x,0}}.
    {gc_bif,'bsr',{f,89},1,[{x,0},{integer,3}],{x,0}}.
    {gc_bif,'*',{f,89},1,[{x,0},{integer,2}],{x,0}}.
    {jump,{f,90}}.
  {label,89}.
    {move,{integer,256},{x,0}}.
  {label,90}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,807},1}. % '-silly_bc/1-lbc$^0/2-0-'/2


{function, silly_lc, 1, 92}.
  {label,91}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",212}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,silly_lc},1}.
  {label,92}.
    {test,is_eq_exact,{f,93},[{x,0},{integer,0}]}.
    {move,{literal,[0,1,2,3,4]},{x,0}}.
    return.
  {label,93}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",215}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {allocate,0,1}.
    {call,1,{f,92}}. % silly_lc/1
    {call_last,1,{f,803},0}. % '-silly_lc/1-lc$^0/1-0-'/1


{function, gen_data, 1, 95}.
  {label,94}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",217}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,gen_data},1}.
  {label,95}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",218}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,1}],{x,1}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,96},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,96},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,97}}.
  {label,96}.
    {move,{integer,256},{x,0}}.
  {label,97}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,799}}. % '-gen_data/1-lbc$^0/2-0-'/2
    {call,1,{f,334}}. % cs/1
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
    {call,2,{f,791}}. % '-gen_data/1-lbc$^1/2-1-'/2
    {test,is_eq_exact,{f,98},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,98}.
    {badmatch,{x,0}}.


{function, match_context_1, 1, 100}.
  {label,99}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",222}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,match_context_1},1}.
  {label,100}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,99},1,[{x,0}],{x,1}}.
    {test,bs_test_unit,{f,101},[{x,1},8]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,787},1}. % '-match_context_1/1-lbc$^0/2-0-'/2
  {label,101}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,99}}.


{function, match_context_2, 1, 103}.
  {label,102}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",225}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,match_context_2},1}.
  {label,103}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,102},1,[{x,0}],{x,1}}.
    {test,bs_test_unit,{f,104},[{x,1},8]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,106}}. % do_match_context_2/1
  {label,104}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,102}}.


{function, do_match_context_2, 1, 106}.
  {label,105}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",228}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,do_match_context_2},1}.
  {label,106}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,783},1}. % '-do_match_context_2/1-lbc$^0/2-0-'/2


{function, over_complex_generator, 0, 108}.
  {label,107}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",232}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,over_complex_generator},0}.
  {label,108}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0:2>>},{x,0}}.
    {call_last,2,{f,774},0}. % '-over_complex_generator/0-lbc$^0/2-0-'/2


{function, float_segment_size, 0, 110}.
  {label,109}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",247}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,float_segment_size},0}.
  {label,110}.
    {allocate,0,0}.
    {gc_bif,bit_size,{f,111},0,[{integer,42}],{x,0}}.
    {gc_bif,'div',{f,111},1,[{x,0},{float,6.32}],{x,0}}.
    {gc_bif,'*',{f,111},1,[{x,0},{integer,0}],{x,0}}.
    {jump,{f,112}}.
  {label,111}.
    {move,{integer,256},{x,0}}.
  {label,112}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{float,0.79},{x,2}}.
    {move,{integer,42},{x,0}}.
    {call_last,3,{f,769},0}. % '-float_segment_size/0-lbc$^0/2-0-'/3


{function, inconsistent_types_1, 1, 114}.
  {label,113}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",263}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,inconsistent_types_1},1}.
  {label,114}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,759},1}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3


{function, inconsistent_types_2, 0, 116}.
  {label,115}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",278}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,inconsistent_types_2},0}.
  {label,116}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",280}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",282}]}.
    {call,3,{f,751}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
    {select_val,{x,0},
                {f,119},
                {list,[{atom,false},{f,118},{atom,true},{f,117}]}}.
  {label,117}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",279}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,118}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,119}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",280}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.


{function, filters, 1, 121}.
  {label,120}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",290}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,filters},1}.
  {label,121}.
    {test,is_list,{f,120},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",291}]}.
    {call,0,{f,330}}. % cs_init/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",293}]}.
    {call,2,{f,746}}. % '-filters/1-lbc$^0/2-0-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,130},[{x,0},{literal,<<"BDF">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {call,2,{f,738}}. % '-filters/1-lbc$^1/2-1-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,129},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {call,2,{f,730}}. % '-filters/1-lbc$^2/2-2-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,128},[{x,0},{literal,<<"efg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {call,2,{f,722}}. % '-filters/1-lbc$^3/2-3-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,127},[{x,0},{literal,<<"b">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {call,2,{f,714}}. % '-filters/1-lbc$^4/2-4-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,126},[{x,0},{literal,<<"eg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[],[a],[],[x,y,z]]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",310}]}.
    {call,2,{f,707}}. % '-filters/1-lbc$^5/2-5-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,125},[{x,0},{literal,<<1,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<"M">>,<<1,2>>,<<"*">>]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",316}]}.
    {call,2,{f,702}}. % '-filters/1-lbc$^6/2-6-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,124},[{x,0},{literal,<<"M*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<97,98,227,100,229,0:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",319}]}.
    {call,2,{f,697}}. % '-filters/1-lbc$^7/2-7-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,123},[{x,0},{literal,<<"abd">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,42,43,42]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",323}]}.
    {call,2,{f,692}}. % '-filters/1-lbc$^8/2-8-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,122},[{x,0},{literal,<<"**">>}]}.
    {call_last,0,{f,332},0}. % cs_end/0
  {label,122}.
    {badmatch,{x,0}}.
  {label,123}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",319}]}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",316}]}.
    {badmatch,{x,0}}.
  {label,125}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,126}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {badmatch,{x,0}}.
  {label,127}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,128}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {badmatch,{x,0}}.
  {label,129}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {badmatch,{x,0}}.
  {label,130}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",292}]}.
    {badmatch,{x,0}}.


{function, is_less_than, 2, 132}.
  {label,131}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",326}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,is_less_than},2}.
  {label,132}.
    {bif,'<',{f,0},[{x,0},{x,1}],{x,0}}.
    return.


{function, trim_coverage, 1, 134}.
  {label,133}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",329}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,trim_coverage},1}.
  {label,134}.
    {test,is_list,{f,133},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,b},{x,1}}.
    {move,{literal,{1328,777134}},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",330}]}.
    {call,3,{f,140}}. % coverage_materialiv/3
    {test,is_eq_exact,
          {f,138},
          [{x,0},{literal,<<0,0,0,2,0,0,5,48,0,11,219,174,0,0,0,0>>}]}.
    {move,{literal,[42,19,777]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",331}]}.
    {call,1,{f,150}}. % coverage_trimmer/1
    {test,is_eq_exact,
          {f,137},
          [{x,0},{literal,<<67,40,0,0,66,152,0,0,69,66,64,0>>}]}.
    {move,{integer,777},{x,1}}.
    {move,{literal,{3.0,40.0,-3555.0}},{x,2}}.
    {move,{integer,555},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",334}]}.
    {call,3,{f,146}}. % coverage_lightfv/3
    {test,is_eq_exact,
          {f,136},
          [{x,0},
           {literal,<<0,0,2,43,0,0,3,9,0,0,0,3,64,8,0,0,0,0,0,0,64,68,0,0,0,
                      0,0,0,192,171,198,0,0,0,0,0>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",335}]}.
    {call,2,{f,154}}. % coverage_strange/2
    {test,is_eq_exact,{f,135},[{x,0},{literal,<<"abcabc">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,135}.
    {badmatch,{x,0}}.
  {label,136}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",332}]}.
    {badmatch,{x,0}}.
  {label,137}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",331}]}.
    {badmatch,{x,0}}.
  {label,138}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",330}]}.
    {badmatch,{x,0}}.


{function, coverage_materialiv, 3, 140}.
  {label,139}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",338}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,coverage_materialiv},3}.
  {label,140}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",339}]}.
    {call,1,{f,340}}. % id/1
    {test,is_eq_exact,{f,144},[{x,0},{y,2}]}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",340}]}.
    {call,1,{f,340}}. % id/1
    {test,is_eq_exact,{f,143},[{x,0},{y,1}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",341}]}.
    {bif,tuple_size,{f,0},[{y,0}],{y,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",342}]}.
    {call_ext,1,{extfunc,erlang,tuple_to_list,1}}.
    {move,{x,0},{y,1}}.
    {gc_bif,length,{f,141},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,141},1,[{x,0},{integer,4}],{x,0}}.
    {jump,{f,142}}.
  {label,141}.
    {move,{integer,256},{x,0}}.
  {label,142}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,688}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
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
  {label,143}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,144}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",339}]}.
    {badmatch,{x,0}}.


{function, coverage_lightfv, 3, 146}.
  {label,145}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",345}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,coverage_lightfv},3}.
  {label,146}.
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
    {gc_bif,length,{f,147},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,147},1,[{x,0},{integer,8}],{x,0}}.
    {jump,{f,148}}.
  {label,147}.
    {move,{integer,256},{x,0}}.
  {label,148}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,684}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
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
    {call_last,1,{f,340},5}. % id/1


{function, coverage_trimmer, 1, 150}.
  {label,149}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",350}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,coverage_trimmer},1}.
  {label,150}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",351}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",352}]}.
    {call,1,{f,340}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",353}]}.
    {call,1,{f,340}}. % id/1
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,679},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2


{function, coverage_summer, 4, 152}.
  {label,151}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",358}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,coverage_summer},4}.
  {label,152}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,2}],{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,3}],{x,0}}.
    return.


{function, coverage_strange, 2, 154}.
  {label,153}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",360}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,coverage_strange},2}.
  {label,154}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",362}]}.
    {call,2,{f,675}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,155},0,[{y,1}],{x,0}}.
    {gc_bif,'bsr',{f,155},1,[{x,0},{integer,3}],{x,0}}.
    {gc_bif,'*',{f,155},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,156}}.
  {label,155}.
    {move,{integer,256},{x,0}}.
  {label,156}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",363}]}.
    {call,2,{f,671}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
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


{function, nomatch, 1, 158}.
  {label,157}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",374}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,nomatch},1}.
  {label,158}.
    {test,is_list,{f,157},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",375}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {call,2,{f,667}}. % '-nomatch/1-lbc$^0/2-0-'/2
    {test,is_eq_exact,{f,180},[{x,0},{literal,<<>>}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {call,1,{f,665}}. % '-nomatch/1-lc$^1/1-1-'/1
    {test,is_nil,{f,179},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {call,1,{f,662}}. % '-nomatch/1-lc$^2/1-2-'/1
    {test,is_nil,{f,178},[{x,0}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {call,2,{f,660}}. % '-nomatch/1-lbc$^3/2-3-'/2
    {test,is_eq_exact,{f,177},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {call,2,{f,657}}. % '-nomatch/1-lbc$^4/2-4-'/2
    {test,is_eq_exact,{f,176},[{x,0},{literal,<<>>}]}.
    {gc_bif,bit_size,{f,159},0,[{y,0}],{x,0}}.
    {gc_bif,'*',{f,159},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,160}}.
  {label,159}.
    {move,{integer,256},{x,0}}.
  {label,160}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {call,2,{f,653}}. % '-nomatch/1-lbc$^5/2-5-'/2
    {test,is_eq_exact,{f,175},[{x,0},{literal,<<>>}]}.
    {move,{integer,1},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {call,2,{f,649}}. % '-nomatch/1-lbc$^6/2-6-'/2
    {test,is_eq_exact,{f,174},[{x,0},{literal,<<>>}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",387}]}.
    {call,2,{f,182}}. % nomatch_1/2
    {test,is_eq_exact,{f,173},[{x,0},{literal,<<0,0,0,1,0,0,0,2,0,0,0,3>>}]}.
    {move,{atom,bad},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",388}]}.
    {call,2,{f,182}}. % nomatch_1/2
    {test,is_eq_exact,{f,172},[{x,0},{literal,<<>>}]}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",390}]}.
    {call,2,{f,645}}. % '-nomatch/1-lbc$^7/2-7-'/2
    {test,is_eq_exact,{f,171},[{x,0},{literal,<<>>}]}.
    {gc_bif,length,{f,161},0,[{atom,ok}],{x,0}}.
    {gc_bif,'*',{f,161},1,[{x,0},{integer,1}],{x,0}}.
    {gc_bif,'*',{f,161},1,[{x,0},{integer,0}],{x,0}}.
    {jump,{f,162}}.
  {label,161}.
    {move,{integer,256},{x,0}}.
  {label,162}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {call,2,{f,637}}. % '-nomatch/1-lbc$^8/2-8-'/2
    {call,1,{f,340}}. % id/1
    {test,is_eq_exact,{f,170},[{x,0},{literal,<<>>}]}.
    {gc_bif,length,{f,163},0,[{atom,ok}],{x,0}}.
    {gc_bif,'*',{f,163},1,[{x,0},{integer,0}],{x,0}}.
    {gc_bif,'*',{f,163},1,[{x,0},{integer,0}],{x,0}}.
    {jump,{f,164}}.
  {label,163}.
    {move,{integer,256},{x,0}}.
  {label,164}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {call,2,{f,629}}. % '-nomatch/1-lbc$^10/2-10-'/2
    {call,1,{f,340}}. % id/1
    {test,is_eq_exact,{f,169},[{x,0},{literal,<<>>}]}.
    {'catch',{y,0},{f,167}}.
    {gc_bif,bit_size,{f,165},0,[{atom,false}],{x,0}}.
    {gc_bif,'div',{f,165},1,[{x,0},{integer,0}],{x,0}}.
    {gc_bif,'*',{f,165},1,[{x,0},{integer,0}],{x,0}}.
    {jump,{f,166}}.
  {label,165}.
    {move,{integer,256},{x,0}}.
  {label,166}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[1]},{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {call,2,{f,624}}. % '-nomatch/1-lbc$^12/2-12-'/2
  {label,167}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,168},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,168},[{x,1}]}.
    {test,test_arity,{f,168},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,168},[{x,1},{literal,{bad_generator,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,168}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",387}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {badmatch,{x,0}}.


{function, nomatch_1, 2, 182}.
  {label,181}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",402}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,nomatch_1},2}.
  {label,182}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,620},2}. % '-nomatch_1/2-lbc$^0/2-0-'/3


{function, sizes, 1, 184}.
  {label,183}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",405}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,sizes},1}.
  {label,184}.
    {test,is_list,{f,183},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",406}]}.
    {call,0,{f,330}}. % cs_init/0
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,612},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",410}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,243},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",411}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,242},[{x,0},{literal,<<1>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",412}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,241},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",413}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,240},[{x,0},{literal,<<1,2,3>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,604},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",418}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,239},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",419}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,238},[{x,0},{literal,<<0,1>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",420}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,237},[{x,0},{literal,<<0,1,0,2>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",421}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,236},[{x,0},{literal,<<0,1,0,2,0,3>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,596},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",426}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,235},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",427}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,234},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,234},[{x,1},4,{string,<<16>>}]}.
    {test,bs_test_tail2,{f,234},[{x,1},0]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,13]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",428}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,233},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,233},[{x,1},8,{string,<<29>>}]}.
    {test,bs_test_tail2,{f,233},[{x,1},0]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,13,7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",429}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,232},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,232},[{x,1},12,{string,<<29,112>>}]}.
    {test,bs_test_tail2,{f,232},[{x,1},0]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2000},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",430}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call_fun,1}.
    {test,bs_start_match3,{f,231},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,231},
          2,
          [{x,1},
           {integer,1000},
           8,
           {field_flags,[{anno,[430,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,231},[{x,2},{integer,0}]}.
    {test,bs_test_tail2,{f,231},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,588},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",435}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,230},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1,2,1,3,0,7,5]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",436}]}.
    {call_fun,1}.
    {test,bs_start_match3,{f,229},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,229},[{x,1},21,{string,<<"(±è">>}]}.
    {test,bs_test_tail2,{f,229},[{x,1},0]}.
    {move,{integer,0},{x,1}}.
    {move,{integer,512},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",437}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call_fun,1}.
    {test,bs_start_match3,{f,228},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,228},
          2,
          [{x,1},
           {integer,512},
           3,
           {field_flags,[{anno,[437,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,228},[{x,2},{integer,0}]}.
    {test,bs_test_tail2,{f,228},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,580},0,0,{y,1},{list,[]}}.
    {move,{integer,8},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",442}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,227},[{x,0},{literal,<<>>}]}.
    {move,{integer,6},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",443}]}.
    {call_fun,2}.
    {test,bs_start_match3,{f,226},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,226},[{x,1},6,{string,<<"¨">>}]}.
    {test,bs_test_tail2,{f,226},[{x,1},0]}.
    {move,{integer,16},{x,1}}.
    {move,{y,1},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",444}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,225},[{x,0},{literal,<<0,42>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,572},0,0,{y,1},{list,[]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",449}]}.
    {call_fun,4}.
    {test,is_eq_exact,{f,224},[{x,0},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,7},{x,3}}.
    {move,{integer,3},{x,1}}.
    {move,{y,1},{x,4}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",450}]}.
    {call_fun,4}.
    {test,bs_start_match3,{f,223},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,223},
          [{x,1},99,{string,<<224,0,0,0,1,0,0,0,0,0,0,1,32>>}]}.
    {test,bs_test_tail2,{f,223},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,564},0,0,{y,1},{list,[]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,3}}.
    {move,{integer,1},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",456}]}.
    {call_fun,4}.
    {test,is_eq_exact,{f,222},[{x,0},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,7},{x,3}}.
    {move,{integer,3},{x,1}}.
    {move,{y,1},{x,4}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",457}]}.
    {call_fun,4}.
    {test,bs_start_match3,{f,221},1,[{x,0}],{x,1}}.
    {test,bs_match_string,
          {f,221},
          [{x,1},
           171,
           {string,<<97,98,99,224,0,0,0,1,14,46,46,32,0,0,0,0,0,1,47,15,47,
                     64>>}]}.
    {test,bs_test_tail2,{f,221},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,556},0,0,{y,1},{list,[]}}.
    {move,{integer,42},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",462}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,220},[{x,0},{literal,<<>>}]}.
    {move,{integer,20},{x,1}}.
    {move,{y,1},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",463}]}.
    {call_fun,2}.
    {test,bs_start_match3,{f,219},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,219},[{x,1},28,{string,<<42,0,2,176>>}]}.
    {test,bs_test_tail2,{f,219},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,550},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,"Foundation"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",468}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,218},[{x,0},{literal,<<"Foundation">>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[1054,1089,1085,1086,1074,1072,1085,1080,1077]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",469}]}.
    {call_fun,1}.
    {test,is_eq_exact,
          {f,217},
          [{x,0},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,542},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",476}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,216},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",477}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,215},[{x,0},{literal,<<0,1>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",478}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,214},[{x,0},{literal,<<0,1,0,2>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,534},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",483}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,213},[{x,0},{literal,<<>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",484}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,212},[{x,0},{literal,<<1>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",485}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,211},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",486}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,210},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,0:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",487}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,209},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",488}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,208},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,1,0,2,21,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",489}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,207},[{x,0},{literal,<<1,2>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<0,1,0,2,1,127:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",490}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,206},[{x,0},{literal,<<1,2>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,526},0,0,{y,1},{list,[]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",495}]}.
    {call_fun,3}.
    {test,is_eq_exact,{f,205},[{x,0},{literal,<<>>}]}.
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
    {test,is_eq_exact,{f,204},[{x,0},{y,0}]}.
    {move,{integer,4},{x,2}}.
    {move,{integer,4},{x,1}}.
    {move,{y,1},{x,3}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",498}]}.
    {call_fun,3}.
    {test,is_eq_exact,{f,203},[{x,0},{y,0}]}.
    {move,{integer,8},{x,2}}.
    {move,{integer,8},{x,1}}.
    {move,{y,1},{x,3}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",499}]}.
    {call_fun,3}.
    {test,is_eq_exact,{f,202},[{x,0},{y,0}]}.
    {move,{integer,6},{x,2}}.
    {move,{integer,9},{x,1}}.
    {move,{y,1},{x,3}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<69,3:4>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",500}]}.
    {call_fun,3}.
    {test,bs_start_match3,{f,201},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,201},[{x,1},18,{string,<<8,132,192>>}]}.
    {test,bs_test_tail2,{f,201},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,518},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",505}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,200},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",506}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,199},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",507}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,198},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,6},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",508}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,197},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",509}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,196},[{x,0},{literal,<<1,2,3,0>>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",510}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,195},[{x,0},{literal,<<1,2,3,0,0>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",512}]}.
    {call,2,{f,514}}. % '-sizes/1-lbc$^26/2-13-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,bs_start_match3,{f,194},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,194},[{x,1},3,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,194},[{x,1},0]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {call,2,{f,510}}. % '-sizes/1-lbc$^27/2-14-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,bs_start_match3,{f,193},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,193},[{x,1},3,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,193},[{x,1},0]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,500},0,0,{y,1},{list,[]}}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",518}]}.
    {call_fun,2}.
    {test,is_eq_exact,
          {f,192},
          [{x,0},{literal,<<0,0,0,97,0,0,0,98,0,0,0,99,0,0,97,98>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{y,1},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,[8,bad]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",519}]}.
    {call_fun,2}.
    {test,is_eq_exact,
          {f,191},
          [{x,0},{literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,494},0,0,{y,1},{list,[]}}.
    {move,{y,1},{x,1}}.
    {move,{literal,<<0,0,0,70,0,0,0,111,0,0,0,117,0,0,0,110,0,0,0,100,0,0,0,
                     97,0,0,0,116,0,0,0,105,0,0,0,111,0,0,0,110>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",524}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,190},[{x,0},{literal,<<"Foundation">>}]}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<0,0,4,30,0,0,4,65,0,0,4,61,0,0,4,62,0,0,4,50,0,0,4,48,0,
                     0,4,61,0,0,4,56,0,0,4,53>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",525}]}.
    {call_fun,1}.
    {test,is_eq_exact,
          {f,189},
          [{x,0},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {'catch',{y,1},{f,187}}.
    {gc_bif,bit_size,{f,185},0,[{literal,{1,2,3}}],{x,0}}.
    {gc_bif,'bsr',{f,185},1,[{x,0},{integer,3}],{x,0}}.
    {gc_bif,'*',{f,185},1,[{x,0},{integer,4}],{x,0}}.
    {gc_bif,'+',{f,185},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,185},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,186}}.
  {label,185}.
    {move,{integer,256},{x,0}}.
  {label,186}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,{1,2,3}},{x,0}}.
    {line,[{scope,[1]},{location,"bs_bincomp_r24_SUITE.erl",527}]}.
    {call,2,{f,490}}. % '-sizes/1-lbc$^33/2-18-'/2
  {label,187}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,188},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,188},[{x,1},{atom,'EXIT'}]}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",529}]}.
    {call,0,{f,332}}. % cs_end/0
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,188}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",527}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",525}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",524}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",519}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",518}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",512}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",510}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",509}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",508}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",507}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",506}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",505}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",500}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",499}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",498}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",497}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",495}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",490}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",489}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",488}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",487}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",486}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",485}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",484}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",483}]}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",478}]}.
    {badmatch,{x,0}}.
  {label,215}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",477}]}.
    {badmatch,{x,0}}.
  {label,216}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",476}]}.
    {badmatch,{x,0}}.
  {label,217}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",469}]}.
    {badmatch,{x,0}}.
  {label,218}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",468}]}.
    {badmatch,{x,0}}.
  {label,219}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",463}]}.
    {badmatch,{x,0}}.
  {label,220}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",462}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",457}]}.
    {badmatch,{x,0}}.
  {label,222}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",456}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",450}]}.
    {badmatch,{x,0}}.
  {label,224}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",449}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",444}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",437}]}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",426}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",413}]}.
    {badmatch,{x,0}}.
  {label,241}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,242}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,243}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",410}]}.
    {badmatch,{x,0}}.


{function, general_expressions, 1, 245}.
  {label,244}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",535}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,general_expressions},1}.
  {label,245}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",536}]}.
    {call,0,{f,330}}. % cs_init/0
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {call,2,{f,486}}. % '-general_expressions/1-lbc$^0/2-0-'/2
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,269},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {call,2,{f,482}}. % '-general_expressions/1-lbc$^1/2-1-'/2
    {call,1,{f,334}}. % cs/1
    {test,is_eq_exact,{f,268},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {call,2,{f,478}}. % '-general_expressions/1-lbc$^2/2-2-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,267},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<1,2>>,<<3>>]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {call,2,{f,474}}. % '-general_expressions/1-lbc$^3/2-3-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,266},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {call,2,{f,470}}. % '-general_expressions/1-lbc$^4/2-4-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,265},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4,5]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {call,2,{f,462}}. % '-general_expressions/1-lbc$^5/2-5-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,264},[{x,0},{literal,<<2,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {call,2,{f,454}}. % '-general_expressions/1-lbc$^6/2-6-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,263},[{x,0},{literal,<<2,3,4,5,6,7>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {call,2,{f,448}}. % '-general_expressions/1-lbc$^8/2-8-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,262},[{x,0},{literal,<<1,2,2,3,4,4>>}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,<<"*">>},{x,1}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",556}]}.
    send.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",557}]}.
    {call,2,{f,441}}. % '-general_expressions/1-lbc$^9/2-9-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,261},[{x,0},{literal,<<"*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {call,2,{f,435}}. % '-general_expressions/1-lbc$^10/2-10-'/2
    {call,1,{f,337}}. % cs_default/1
    {test,is_eq_exact,{f,260},[{x,0},{literal,<<10,5,3>>}]}.
    {move,{literal,"3A7"},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",564}]}.
    {call,1,{f,271}}. % hstring_to_bitstring/1
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,259},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,259},[{x,1},12,{string,<<":p">>}]}.
    {test,bs_test_tail2,{f,259},[{x,1},0]}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",565}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{literal,{65,8}},{x,0}}.
    {call,1,{f,340}}. % id/1
    {move,{y,5},{x,1}}.
    {move,{x,0},{x,2}}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{literal,"ABCDEFGH"},{x,0}}.
    {call,3,{f,278}}. % encode_chars_compact_map/3
    {call,1,{f,334}}. % cs/1
    {test,bs_start_match3,{f,258},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,258},[{x,1},24,{string,<<5,57,119>>}]}.
    {test,bs_test_tail2,{f,258},[{x,1},0]}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",567}]}.
    {call,0,{f,332}}. % cs_end/0
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,5},{f,246}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {call,2,{f,431}}. % '-general_expressions/1-lbc$^11/2-11-'/2
  {label,246}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,257},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,257},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,257},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,257},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,4},{f,247}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_r24_SUITE.erl",571}]}.
    {call,2,{f,427}}. % '-general_expressions/1-lbc$^12/2-12-'/2
  {label,247}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,256},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,256},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,256},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,256},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,3},{f,248}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",572}]}.
    {call,2,{f,423}}. % '-general_expressions/1-lbc$^13/2-13-'/2
  {label,248}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,255},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,255},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,255},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,255},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,2},{f,249}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",573}]}.
    {call,2,{f,419}}. % '-general_expressions/1-lbc$^14/2-14-'/2
  {label,249}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,254},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,254},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,254},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,254},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,1},{f,250}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_bincomp_r24_SUITE.erl",574}]}.
    {call,2,{f,415}}. % '-general_expressions/1-lbc$^15/2-15-'/2
  {label,250}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,253},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,253},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,253},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,253},[{x,1},{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,251}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {call,2,{f,409}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,251}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,252},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,252},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,252},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,252},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,252}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{scope,[4]},{location,"bs_bincomp_r24_SUITE.erl",573}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{scope,[6]},{location,"bs_bincomp_r24_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,256}.
    {line,[{scope,"\b"},{location,"bs_bincomp_r24_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,257}.
    {line,[{scope,"\n"},{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",565}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",564}]}.
    {badmatch,{x,0}}.
  {label,260}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,261}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,262}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,263}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,264}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {badmatch,{x,0}}.
  {label,265}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{scope,"\f"},{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {badmatch,{x,0}}.


{function, hstring_to_bitstring, 1, 271}.
  {label,270}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",579}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,hstring_to_bitstring},1}.
  {label,271}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,272},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,272},1,[{x,0},{integer,4}],{x,0}}.
    {gc_bif,'+',{f,272},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,272},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,273}}.
  {label,272}.
    {move,{integer,256},{x,0}}.
  {label,273}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,405},1}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2


{function, hex_to_int, 1, 275}.
  {label,274}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",582}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,hex_to_int},1}.
  {label,275}.
    {test,is_ge,{f,274},[{x,0},{integer,48}]}.
    {test,is_ge,{f,276},[{integer,57},{x,0}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,48}],{x,0}}.
    return.
  {label,276}.
    {test,is_ge,{f,274},[{x,0},{integer,65}]}.
    {test,is_ge,{f,274},[{integer,70},{x,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",583}]}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,55}],{x,0}}.
    return.


{function, encode_chars_compact_map, 3, 278}.
  {label,277}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",585}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,encode_chars_compact_map},3}.
  {label,278}.
    {test,is_tuple,{f,277},[{x,2}]}.
    {test,test_arity,{f,277},[{x,2},2]}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {gc_bif,length,{f,279},2,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,279},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,279},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,279},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,280}}.
  {label,279}.
    {move,{integer,256},{x,0}}.
  {label,280}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {get_tuple_element,{y,0},0,{x,4}}.
    {get_tuple_element,{y,0},1,{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,5,{f,401},3}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5


{function, enc_char_cm, 3, 282}.
  {label,281}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",588}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,enc_char_cm},3}.
  {label,282}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",589}]}.
    {gc_bif,'-',{f,0},3,[{x,0},{x,1}],{x,0}}.
    {test,is_ge,{f,283},[{x,0},{integer,0}]}.
    {test,is_lt,{f,283},[{x,0},{x,2}]}.
    return.
  {label,283}.
    {move,{atom,illegal},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",594}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, no_generator, 1, 285}.
  {label,284}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",599}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,no_generator},1}.
  {label,285}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",600}]}.
    {call,1,{f,340}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {test,is_eq_exact,{f,289},[{x,0},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test,is_eq_exact,{f,288},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {'catch',{y,0},{f,286}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",604}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{literal,[1]}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{x,0},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{literal,[1]}}.
    {move,{x,1},{x,0}}.
  {label,286}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,287},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,287},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,287},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,287},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,287}.
    {line,[{scope,[0]},{location,"bs_bincomp_r24_SUITE.erl",604}]}.
    {badmatch,{x,0}}.
  {label,288}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",601}]}.
    {badmatch,{x,0}}.
  {label,289}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_r24_SUITE.erl",600}]}.
    {badmatch,{x,0}}.


{function, zero_pattern, 1, 291}.
  {label,290}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",608}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,zero_pattern},1}.
  {label,291}.
    {test,is_atom,{f,292},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",613}]}.
    {call,2,{f,398}}. % '-zero_pattern/1-lbc$^0/2-0-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",614}]}.
    {call,2,{f,395}}. % '-zero_pattern/1-lbc$^1/2-1-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {call,2,{f,389}}. % '-zero_pattern/1-lbc$^2/2-2-'/2
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,2,{f,381},0}. % '-zero_pattern/1-lbc$^4/2-4-'/2
  {label,292}.
    {move,{atom,ok},{x,0}}.
    return.


{function, multiple_segments, 1, 294}.
  {label,293}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",629}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,multiple_segments},1}.
  {label,294}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",630}]}.
    {call,0,{f,330}}. % cs_init/0
    {move,{literal,<<4,16,66>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",632}]}.
    {call,1,{f,306}}. % matched_out_size/1
    {test,is_eq_exact,{f,304},[{x,0},{literal,[1,2]}]}.
    {move,{literal,<<16,0,42,72>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",633}]}.
    {call,1,{f,306}}. % matched_out_size/1
    {test,is_eq_exact,{f,303},[{x,0},{literal,"*"}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",635}]}.
    {call,1,{f,309}}. % do_multiple_segments_1/1
    {test,is_nil,{f,302},[{x,0}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",636}]}.
    {call,1,{f,309}}. % do_multiple_segments_1/1
    {test,is_nil,{f,301},[{x,0}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",637}]}.
    {call,1,{f,309}}. % do_multiple_segments_1/1
    {test,is_nil,{f,300},[{x,0}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",638}]}.
    {call,1,{f,309}}. % do_multiple_segments_1/1
    {test,is_nil,{f,299},[{x,0}]}.
    {move,{literal,<<99,0,1,1,2,3,4,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",639}]}.
    {call,1,{f,309}}. % do_multiple_segments_1/1
    {test,is_eq_exact,{f,298},[{x,0},{literal,[1,4]}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",641}]}.
    {call,1,{f,312}}. % do_multiple_segments_2/1
    {test,is_nil,{f,297},[{x,0}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",642}]}.
    {call,1,{f,312}}. % do_multiple_segments_2/1
    {test,is_eq_exact,{f,296},[{x,0},{literal,[6]}]}.
    {move,{literal,<<1,2,3,4,5,6,7,8>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",643}]}.
    {call,1,{f,312}}. % do_multiple_segments_2/1
    {test,is_eq_exact,{f,295},[{x,0},{literal,[6,15]}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",645}]}.
    {call,0,{f,332}}. % cs_end/0
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,295}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",643}]}.
    {badmatch,{x,0}}.
  {label,296}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",642}]}.
    {badmatch,{x,0}}.
  {label,297}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",641}]}.
    {badmatch,{x,0}}.
  {label,298}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",639}]}.
    {badmatch,{x,0}}.
  {label,299}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",638}]}.
    {badmatch,{x,0}}.
  {label,300}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",637}]}.
    {badmatch,{x,0}}.
  {label,301}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",636}]}.
    {badmatch,{x,0}}.
  {label,302}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",635}]}.
    {badmatch,{x,0}}.
  {label,303}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",633}]}.
    {badmatch,{x,0}}.
  {label,304}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",632}]}.
    {badmatch,{x,0}}.


{function, matched_out_size, 1, 306}.
  {label,305}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",648}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,matched_out_size},1}.
  {label,306}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",649}]}.
    {call,2,{f,374}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
    {call,1,{f,337}}. % cs_default/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",650}]}.
    {call,1,{f,367}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",651}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,{f,307},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,307}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_1, 1, 309}.
  {label,308}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",654}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,do_multiple_segments_1},1}.
  {label,309}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",655}]}.
    {call,2,{f,362}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
    {call,1,{f,337}}. % cs_default/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",656}]}.
    {call,1,{f,357}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",657}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,{f,310},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,310}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_2, 1, 312}.
  {label,311}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",660}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,do_multiple_segments_2},1}.
  {label,312}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {gc_bif,bit_size,{f,313},1,[{x,0}],{x,0}}.
    {gc_bif,'div',{f,313},1,[{x,0},{integer,24}],{x,0}}.
    {gc_bif,'*',{f,313},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,314}}.
  {label,313}.
    {move,{integer,256},{x,0}}.
  {label,314}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",661}]}.
    {call,2,{f,353}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
    {call,1,{f,334}}. % cs/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",662}]}.
    {call,1,{f,349}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",663}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,{f,315},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,315}.
    {badmatch,{x,0}}.


{function, grab_bag, 1, 317}.
  {label,316}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",666}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,grab_bag},1}.
  {label,317}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {'catch',{y,3},{f,318}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",667}]}.
    {call,1,{f,327}}. % grab_bag_gh_6553/1
  {label,318}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,325},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,325},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,325},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,325},[{x,1},{atom,function_clause}]}.
    {'catch',{y,2},{f,319}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[7]},{location,"bs_bincomp_r24_SUITE.erl",668}]}.
    {call,1,{f,327}}. % grab_bag_gh_6553/1
  {label,319}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,324},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,324},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,324},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,324},[{x,1},{atom,function_clause}]}.
    {'catch',{y,1},{f,320}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[5]},{location,"bs_bincomp_r24_SUITE.erl",669}]}.
    {call,1,{f,327}}. % grab_bag_gh_6553/1
  {label,320}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,323},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,323},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,323},[{x,1}]}.
    {test,test_arity,{f,323},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,323},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,0},{f,321}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[3]},{location,"bs_bincomp_r24_SUITE.erl",672}]}.
    {call,2,{f,346}}. % '-grab_bag/1-lbc$^0/2-0-'/2
    {try_end,{y,0}}.
    {jump,{f,322}}.
  {label,321}.
    {try_case,{y,0}}.
  {label,322}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,323}.
    {line,[{scope,[3]},{location,"bs_bincomp_r24_SUITE.erl",669}]}.
    {badmatch,{x,0}}.
  {label,324}.
    {line,[{scope,[5]},{location,"bs_bincomp_r24_SUITE.erl",668}]}.
    {badmatch,{x,0}}.
  {label,325}.
    {line,[{scope,[7]},{location,"bs_bincomp_r24_SUITE.erl",667}]}.
    {badmatch,{x,0}}.


{function, grab_bag_gh_6553, 1, 327}.
  {label,326}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",676}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,grab_bag_gh_6553},1}.
  {label,327}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,326},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,328},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[676,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,328},[{x,1},0]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",678}]}.
    {badmatch,{literal,<<>>}}.
  {label,328}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,326}}.


{function, cs_init, 0, 330}.
  {label,329}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",680}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_init},0}.
  {label,330}.
    {allocate,0,0}.
    {move,{atom,true},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",681}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs_end, 0, 332}.
  {label,331}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",684}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_end},0}.
  {label,332}.
    {allocate,0,0}.
    {move,{atom,false},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",685}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs, 1, 334}.
  {label,333}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",689}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs},1}.
  {label,334}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",702}]}.
    {gc_bif,byte_size,{f,0},1,[{x,0}],{x,1}}.
    {allocate_heap,2,3,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {put_tuple2,{x,0},{list,[{atom,binary_info},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",704}]}.
    {call_ext,1,{extfunc,erts_debug,get_internal_state,1}}.
    {test,is_tagged_tuple,{f,335},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,335},[{x,1},{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tagged_tuple,{f,335},[{x,1},2,{atom,binary}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,335},[{x,2},{atom,binary}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,335},[{x,2},{y,0}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,335},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,335}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",703}]}.
    {badmatch,{x,0}}.


{function, cs_default, 1, 337}.
  {label,336}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",709}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,cs_default},1}.
  {label,337}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",710}]}.
    {gc_bif,byte_size,{f,0},1,[{x,0}],{x,1}}.
    {allocate_heap,2,3,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {put_tuple2,{x,0},{list,[{atom,binary_info},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",712}]}.
    {call_ext,1,{extfunc,erts_debug,get_internal_state,1}}.
    {test,is_tagged_tuple,{f,338},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,338},[{x,1},{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,338},[{x,1},{literal,{binary,256}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,338},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,338}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",711}]}.
    {badmatch,{x,0}}.


{function, id, 1, 340}.
  {label,339}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",715}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,id},1}.
  {label,340}.
    return.


{function, module_info, 0, 342}.
  {label,341}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,module_info},0}.
  {label,342}.
    {move,{atom,bs_bincomp_r24_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 344}.
  {label,343}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,module_info},1}.
  {label,344}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_bincomp_r24_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-grab_bag/1-lbc$^0/2-0-', 2, 346}.
  {label,345}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",672}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-grab_bag/1-lbc$^0/2-0-'},2}.
  {label,346}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,347},2,[{x,0}],{x,2}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,346}}. % '-grab_bag/1-lbc$^0/2-0-'/2
  {label,347}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lc$^1/1-1-', 1, 349}.
  {label,348}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",662}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_2/1-lc$^1/1-1-'},
               1}.
  {label,349}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,351},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,350},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,350},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,350},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[662,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'+',{f,0},5,[{x,2},{x,3}],{x,0}}.
    {gc_bif,'+',{f,0},5,[{x,0},{x,4}],{x,0}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,349}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,350}.
    {move,nil,{x,0}}.
    return.
  {label,351}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lbc$^0/2-0-', 2, 353}.
  {label,352}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",661}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_2/1-lbc$^0/2-0-'},
               2}.
  {label,353}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,355},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,354},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,354},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,354},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[661,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {gc_bif,'+',{f,0},6,[{x,3},{x,4}],{x,0}}.
    {gc_bif,'+',{f,0},6,[{x,0},{x,5}],{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,353}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
  {label,354}.
    {move,{x,1},{x,0}}.
    return.
  {label,355}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_1/1-lc$^1/1-1-', 1, 357}.
  {label,356}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",656}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_1/1-lc$^1/1-1-'},
               1}.
  {label,357}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,360},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,359},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,359},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,358},[{x,3},{x,2}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,357}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,358}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,357}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
  {label,359}.
    {move,nil,{x,0}}.
    return.
  {label,360}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_1/1-lbc$^0/2-0-', 2, 362}.
  {label,361}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",655}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_multiple_segments_1/1-lbc$^0/2-0-'},
               2}.
  {label,362}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,365},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,364},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,364},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[655,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,363},[{x,4},{x,3}]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,362}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,363}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,362}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,364}.
    {move,{x,1},{x,0}}.
    return.
  {label,365}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-matched_out_size/1-lc$^1/1-1-', 1, 367}.
  {label,366}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",650}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-matched_out_size/1-lc$^1/1-1-'},
               1}.
  {label,367}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,370},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,368},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,368},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,367}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,368}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,369},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_skip_bits2,
          {f,369},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,367}}. % '-matched_out_size/1-lc$^1/1-1-'/1
  {label,369}.
    {move,nil,{x,0}}.
    return.
  {label,370}.
    {test,bs_start_match3,{f,371},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,371},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_skip_bits2,
          {f,371},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,367}}. % '-matched_out_size/1-lc$^1/1-1-'/1
  {label,371}.
    {test,bs_start_match3,{f,372},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,372}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-matched_out_size/1-lbc$^0/2-0-', 2, 374}.
  {label,373}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",649}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-matched_out_size/1-lbc$^0/2-0-'},
               2}.
  {label,374}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,377},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,375},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,375},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,374}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,375}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,376},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_skip_bits2,
          {f,376},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,374}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,376}.
    {move,{x,1},{x,0}}.
    return.
  {label,377}.
    {test,bs_start_match3,{f,378},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,378},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_skip_bits2,
          {f,378},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,374}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,378}.
    {test,bs_start_match3,{f,379},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,379}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^4/2-4-', 2, 381}.
  {label,380}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",620}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^4/2-4-'},
               2}.
  {label,381}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,382},2,[{x,0}],{x,2}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {call,2,{f,384}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,381},1}. % '-zero_pattern/1-lbc$^4/2-4-'/2
  {label,382}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",622}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^5/2-5-', 2, 384}.
  {label,383}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",620}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^5/2-5-'},
               2}.
  {label,384}.
    {test,is_nonempty_list,{f,386},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,385},[{x,2},{literal,<<>>}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",621}]}.
    {move,{integer,0},{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,384}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
  {label,385}.
    {call_only,2,{f,384}}. % '-zero_pattern/1-lbc$^5/2-5-'/2
  {label,386}.
    {test,is_nil,{f,387},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,387}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",623}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^2/2-2-', 2, 389}.
  {label,388}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^2/2-2-'},
               2}.
  {label,389}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,390},2,[{x,0}],{x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{literal,<<>>},{x,0}}.
    {call,2,{f,392}}. % '-zero_pattern/1-lbc$^3/2-3-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,389},1}. % '-zero_pattern/1-lbc$^2/2-2-'/2
  {label,390}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",617}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^3/2-3-', 2, 392}.
  {label,391}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",615}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^3/2-3-'},
               2}.
  {label,392}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,393},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,393}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",618}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^1/2-1-', 2, 395}.
  {label,394}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",614}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^1/2-1-'},
               2}.
  {label,395}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,396},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<"*">>}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,395}}. % '-zero_pattern/1-lbc$^1/2-1-'/2
  {label,396}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_pattern/1-lbc$^0/2-0-', 2, 398}.
  {label,397}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",613}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-zero_pattern/1-lbc$^0/2-0-'},
               2}.
  {label,398}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,399},2,[{x,0}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,398}}. % '-zero_pattern/1-lbc$^0/2-0-'/2
  {label,399}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-encode_chars_compact_map/3-lbc$^0/2-0-', 5, 401}.
  {label,400}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",586}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-encode_chars_compact_map/3-lbc$^0/2-0-'},
               5}.
  {label,401}.
    {test,is_nonempty_list,{f,402},[{x,0}]}.
    {allocate,5,5}.
    {move,{x,4},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,2},{y,4}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,1}}.
    {call,3,{f,282}}. % enc_char_cm/3
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
    {call_last,5,{f,401},5}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5
  {label,402}.
    {test,is_nil,{f,403},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,403}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-hstring_to_bitstring/1-lbc$^0/2-0-', 2, 405}.
  {label,404}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",580}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-hstring_to_bitstring/1-lbc$^0/2-0-'},
               2}.
  {label,405}.
    {test,is_nonempty_list,{f,406},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,275}}. % hex_to_int/1
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,405},2}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2
  {label,406}.
    {test,is_nil,{f,407},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,407}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^16/2-16-', 2, 409}.
  {label,408}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^16/2-16-'},
               2}.
  {label,409}.
    {test,is_nonempty_list,{f,410},[{x,0}]}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {get_list,{x,0},{x,2},{x,0}}.
    {make_fun3,{f,413},0,0,{x,2},{list,[{x,2}]}}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,409}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,410}.
    {test,is_nil,{f,411},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,411}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-fun-17-', 1, 413}.
  {label,412}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-fun-17-'},
               1}.
  {label,413}.
    return.


{function, '-general_expressions/1-lbc$^15/2-15-', 2, 415}.
  {label,414}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",574}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^15/2-15-'},
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


{function, '-general_expressions/1-lbc$^14/2-14-', 2, 419}.
  {label,418}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",573}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^14/2-14-'},
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


{function, '-general_expressions/1-lbc$^13/2-13-', 2, 423}.
  {label,422}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",572}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^13/2-13-'},
               2}.
  {label,423}.
    {test,is_nonempty_list,{f,424},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,424}.
    {test,is_nil,{f,425},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,425}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^12/2-12-', 2, 427}.
  {label,426}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",571}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^12/2-12-'},
               2}.
  {label,427}.
    {test,is_nonempty_list,{f,428},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,428}.
    {test,is_nil,{f,429},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,429}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^11/2-11-', 2, 431}.
  {label,430}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",570}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^11/2-11-'},
               2}.
  {label,431}.
    {test,is_nonempty_list,{f,432},[{x,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,432}.
    {test,is_nil,{f,433},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,433}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^10/2-10-', 2, 435}.
  {label,434}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^10/2-10-'},
               2}.
  {label,435}.
    {test,is_nonempty_list,{f,438},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'div',{f,436},3,[{integer,10},{x,2}],{x,2}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",559}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,436},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,436},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,436},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
    {jump,{f,437}}.
  {label,436}.
    {move,{literal,<<>>},{x,2}}.
  {label,437}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",558}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,435}}. % '-general_expressions/1-lbc$^10/2-10-'/2
  {label,438}.
    {test,is_nil,{f,439},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,439}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",562}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^9/2-9-', 2, 441}.
  {label,440}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",557}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^9/2-9-'},
               2}.
  {label,441}.
    {test,is_nonempty_list,{f,445},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
  {label,442}.
    {loop_rec,{f,443},{x,0}}.
    remove_message.
    {jump,{f,444}}.
  {label,443}.
    {wait,{f,442}}.
  {label,444}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,441},2}. % '-general_expressions/1-lbc$^9/2-9-'/2
  {label,445}.
    {test,is_nil,{f,446},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,446}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^8/2-8-', 2, 448}.
  {label,447}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^8/2-8-'},
               2}.
  {label,448}.
    {test,is_nonempty_list,{f,451},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,449},3,[{x,2},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,449},[{x,3},{integer,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",553}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
    {jump,{f,450}}.
  {label,449}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",554}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
  {label,450}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",552}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,448}}. % '-general_expressions/1-lbc$^8/2-8-'/2
  {label,451}.
    {test,is_nil,{f,452},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,452}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",555}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^6/2-6-', 2, 454}.
  {label,453}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^6/2-6-'},
               2}.
  {label,454}.
    {test,is_nonempty_list,{f,455},[{x,0}]}.
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
    {call,2,{f,458}}. % '-general_expressions/1-lbc$^7/2-7-'/2
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,3},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,454},4}. % '-general_expressions/1-lbc$^6/2-6-'/2
  {label,455}.
    {test,is_nil,{f,456},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,456}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",551}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^7/2-7-', 2, 458}.
  {label,457}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^7/2-7-'},
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
    {call,1,{f,340}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,458},2}. % '-general_expressions/1-lbc$^7/2-7-'/2
  {label,459}.
    {test,is_nil,{f,460},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,460}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^5/2-5-', 2, 462}.
  {label,461}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^5/2-5-'},
               2}.
  {label,462}.
    {test,is_nonempty_list,{f,466},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},3,[{x,2},{integer,2}],{x,3}}.
    {select_val,{x,3},
                {f,468},
                {list,[{integer,0},{f,464},{integer,1},{f,463}]}}.
  {label,463}.
    {move,{literal,<<>>},{x,2}}.
    {jump,{f,465}}.
  {label,464}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",547}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,2}}.
  {label,465}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,462}}. % '-general_expressions/1-lbc$^5/2-5-'/2
  {label,466}.
    {test,is_nil,{f,467},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,467}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",549}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,468}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",546}]}.
    {case_end,{x,3}}.


{function, '-general_expressions/1-lbc$^4/2-4-', 2, 470}.
  {label,469}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",545}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^4/2-4-'},
               2}.
  {label,470}.
    {test,is_nonempty_list,{f,471},[{x,0}]}.
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
    {call,1,{f,340}}. % id/1
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,470},2}. % '-general_expressions/1-lbc$^4/2-4-'/2
  {label,471}.
    {test,is_nil,{f,472},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,472}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^3/2-3-', 2, 474}.
  {label,473}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",544}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^3/2-3-'},
               2}.
  {label,474}.
    {test,is_nonempty_list,{f,475},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,474}}. % '-general_expressions/1-lbc$^3/2-3-'/2
  {label,475}.
    {test,is_nil,{f,476},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,476}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^2/2-2-', 2, 478}.
  {label,477}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^2/2-2-'},
               2}.
  {label,478}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,480},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,479},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[540,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",541}]}.
    {gc_bif,'+',{f,0},4,[{x,3},{integer,1}],{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,0}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",542}]}.
    {call,1,{f,340}}. % id/1
    {line,[{location,"bs_bincomp_r24_SUITE.erl",540}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,478},2}. % '-general_expressions/1-lbc$^2/2-2-'/2
  {label,479}.
    {move,{x,1},{x,0}}.
    return.
  {label,480}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",543}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^1/2-1-', 2, 482}.
  {label,481}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",539}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^1/2-1-'},
               2}.
  {label,482}.
    {test,is_nonempty_list,{f,483},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,3},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,3,{string,<<"abc">>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,482}}. % '-general_expressions/1-lbc$^1/2-1-'/2
  {label,483}.
    {test,is_nil,{f,484},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,484}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^0/2-0-', 2, 486}.
  {label,485}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",538}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-general_expressions/1-lbc$^0/2-0-'},
               2}.
  {label,486}.
    {test,is_nonempty_list,{f,487},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,3},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,3,{string,<<1,2,3>>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,486}}. % '-general_expressions/1-lbc$^0/2-0-'/2
  {label,487}.
    {test,is_nil,{f,488},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,488}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^33/2-18-', 2, 490}.
  {label,489}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",527}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^33/2-18-'},2}.
  {label,490}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,492},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,491},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[527,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,4},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,490}}. % '-sizes/1-lbc$^33/2-18-'/2
  {label,491}.
    {move,{x,1},{x,0}}.
    return.
  {label,492}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-32-', 1, 494}.
  {label,493}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",521}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-32-'},1}.
  {label,494}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",522}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,496}}. % '-sizes/1-lbc$^31/2-17-'/2
    {call_last,1,{f,337},0}. % cs_default/1


{function, '-sizes/1-lbc$^31/2-17-', 2, 496}.
  {label,495}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",522}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^31/2-17-'},2}.
  {label,496}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,498},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,497},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[522,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_utf8_size,{f,0},{x,3},{x,5}}.
    {bs_add,{f,0},[{x,4},{x,5},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,496}}. % '-sizes/1-lbc$^31/2-17-'/2
  {label,497}.
    {move,{x,1},{x,0}}.
    return.
  {label,498}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-30-', 2, 500}.
  {label,499}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",515}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-30-'},2}.
  {label,500}.
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
    {call,3,{f,502}}. % '-sizes/1-lbc$^28/2-15-'/3
    {call_last,1,{f,337},0}. % cs_default/1


{function, '-sizes/1-lbc$^28/2-15-', 3, 502}.
  {label,501}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^28/2-15-'},3}.
  {label,502}.
    {test,is_nonempty_list,{f,503},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,506}}. % '-sizes/1-lbc$^29/2-16-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,502},2}. % '-sizes/1-lbc$^28/2-15-'/3
  {label,503}.
    {test,is_nil,{f,504},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,504}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^29/2-16-', 3, 506}.
  {label,505}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^29/2-16-'},3}.
  {label,506}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,508},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_integer2,
          {f,507},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[516,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,4},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,4}}.
    {move,{x,5},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,506}}. % '-sizes/1-lbc$^29/2-16-'/3
  {label,507}.
    {move,{x,1},{x,0}}.
    return.
  {label,508}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^27/2-14-', 2, 510}.
  {label,509}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",513}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^27/2-14-'},2}.
  {label,510}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,512},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,511},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[513,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{x,3},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{x,3},1,{field_flags,[]},{integer,0}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,510}}. % '-sizes/1-lbc$^27/2-14-'/2
  {label,511}.
    {move,{x,1},{x,0}}.
    return.
  {label,512}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^26/2-13-', 2, 514}.
  {label,513}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",512}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^26/2-13-'},2}.
  {label,514}.
    {test,is_nonempty_list,{f,515},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{x,2},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{x,2},1,{field_flags,[]},{integer,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,514}}. % '-sizes/1-lbc$^26/2-13-'/2
  {label,515}.
    {test,is_nil,{f,516},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,516}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-25-', 1, 518}.
  {label,517}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",502}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-25-'},1}.
  {label,518}.
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
    {gc_bif,bit_size,{f,519},1,[{x,0}],{x,0}}.
    {gc_bif,'bsr',{f,519},1,[{x,0},{integer,2}],{x,0}}.
    {gc_bif,'*',{f,519},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,520}}.
  {label,519}.
    {move,{integer,256},{x,0}}.
  {label,520}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,522}}. % '-sizes/1-lbc$^24/2-12-'/2
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^24/2-12-', 2, 522}.
  {label,521}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",503}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^24/2-12-'},2}.
  {label,522}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,524},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,523},
          3,
          [{x,2},
           {integer,4},
           1,
           {field_flags,[{anno,[503,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,522}}. % '-sizes/1-lbc$^24/2-12-'/2
  {label,523}.
    {move,{x,1},{x,0}}.
    return.
  {label,524}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-23-', 3, 526}.
  {label,525}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",492}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-23-'},3}.
  {label,526}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",493}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,527},1,[{x,0}],{x,0}}.
    {gc_bif,'div',{f,527},1,[{x,0},{y,2}],{x,0}}.
    {gc_bif,'*',{f,527},1,[{x,0},{y,1}],{x,0}}.
    {gc_bif,'+',{f,527},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,527},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,528}}.
  {label,527}.
    {move,{integer,256},{x,0}}.
  {label,528}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,3,0}.
    {call,4,{f,530}}. % '-sizes/1-lbc$^22/2-11-'/4
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^22/2-11-', 4, 530}.
  {label,529}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",493}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^22/2-11-'},4}.
  {label,530}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,532},4,[{x,0}],{x,4}}.
    {bs_get_position,{x,4},{x,0},5}.
    {test,bs_get_integer2,
          {f,531},
          5,
          [{x,4},
           {x,2},
           1,
           {field_flags,[{anno,[493,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {move,{integer,0},{x,6}}.
    {bs_add,{f,0},[{x,6},{x,3},1],{x,6}}.
    {test_heap,0,7}.
    {bs_private_append,{f,0},{x,6},1,{x,1},{field_flags,[]},{x,6}}.
    {bs_put_integer,{f,0},{x,3},1,{field_flags,[]},{x,5}}.
    {move,{x,6},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,530}}. % '-sizes/1-lbc$^22/2-11-'/4
  {label,531}.
    {move,{x,1},{x,0}}.
    return.
  {label,532}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-21-', 1, 534}.
  {label,533}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",480}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-21-'},1}.
  {label,534}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",481}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,535},1,[{x,0}],{x,0}}.
    {gc_bif,'bsr',{f,535},1,[{x,0},{integer,4}],{x,0}}.
    {gc_bif,'*',{f,535},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,536}}.
  {label,535}.
    {move,{integer,256},{x,0}}.
  {label,536}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,538}}. % '-sizes/1-lbc$^20/2-10-'/2
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^20/2-10-', 2, 538}.
  {label,537}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",481}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^20/2-10-'},2}.
  {label,538}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,540},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,539},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[481,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,538}}. % '-sizes/1-lbc$^20/2-10-'/2
  {label,539}.
    {move,{x,1},{x,0}}.
    return.
  {label,540}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-19-', 1, 542}.
  {label,541}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",473}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-19-'},1}.
  {label,542}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",474}]}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,543},1,[{x,0}],{x,0}}.
    {gc_bif,'bsr',{f,543},1,[{x,0},{integer,3}],{x,0}}.
    {gc_bif,'*',{f,543},1,[{x,0},{integer,2}],{x,0}}.
    {jump,{f,544}}.
  {label,543}.
    {move,{integer,256},{x,0}}.
  {label,544}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,546}}. % '-sizes/1-lbc$^18/2-9-'/2
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^18/2-9-', 2, 546}.
  {label,545}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",474}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^18/2-9-'},2}.
  {label,546}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,548},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,547},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[474,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,2},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,546}}. % '-sizes/1-lbc$^18/2-9-'/2
  {label,547}.
    {move,{x,1},{x,0}}.
    return.
  {label,548}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-17-', 1, 550}.
  {label,549}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",465}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-17-'},1}.
  {label,550}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",466}]}.
    {call,2,{f,552}}. % '-sizes/1-lbc$^16/2-8-'/2
    {call_last,1,{f,337},0}. % cs_default/1


{function, '-sizes/1-lbc$^16/2-8-', 2, 552}.
  {label,551}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",466}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^16/2-8-'},2}.
  {label,552}.
    {test,is_nonempty_list,{f,553},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_utf8_size,{f,0},{x,2},{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,552}}. % '-sizes/1-lbc$^16/2-8-'/2
  {label,553}.
    {test,is_nil,{f,554},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,554}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-15-', 2, 556}.
  {label,555}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",459}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-15-'},2}.
  {label,556}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,557},2,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,557},2,[{x,1},{integer,8}],{x,1}}.
    {gc_bif,'*',{f,557},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,557},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,557},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,558}}.
  {label,557}.
    {move,{integer,256},{x,0}}.
  {label,558}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",460}]}.
    {call,3,{f,560}}. % '-sizes/1-lbc$^14/2-7-'/3
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^14/2-7-', 3, 560}.
  {label,559}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",460}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^14/2-7-'},3}.
  {label,560}.
    {test,is_nonempty_list,{f,561},[{x,0}]}.
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
    {call_only,3,{f,560}}. % '-sizes/1-lbc$^14/2-7-'/3
  {label,561}.
    {test,is_nil,{f,562},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,562}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-13-', 4, 564}.
  {label,563}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",452}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-13-'},4}.
  {label,564}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,565},4,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,565},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,565},4,[{x,2},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,565},4,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'+',{f,565},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,565},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,565},3,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'+',{f,565},2,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,565},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,565},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,565},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,566}}.
  {label,565}.
    {move,{integer,256},{x,0}}.
  {label,566}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",453}]}.
    {call,5,{f,568}}. % '-sizes/1-lbc$^12/2-6-'/5
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^12/2-6-', 5, 568}.
  {label,567}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",453}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^12/2-6-'},5}.
  {label,568}.
    {test,is_nonempty_list,{f,569},[{x,0}]}.
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
    {call_only,5,{f,568}}. % '-sizes/1-lbc$^12/2-6-'/5
  {label,569}.
    {test,is_nil,{f,570},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,570}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",454}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-11-', 4, 572}.
  {label,571}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",446}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-11-'},4}.
  {label,572}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,573},4,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,573},4,[{x,2},{integer,8}],{x,1}}.
    {gc_bif,'+',{f,573},4,[{y,1},{x,1}],{x,1}}.
    {gc_bif,'*',{f,573},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',{f,573},3,[{x,1},{x,2}],{x,1}}.
    {gc_bif,'*',{f,573},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,573},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,573},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,574}}.
  {label,573}.
    {move,{integer,256},{x,0}}.
  {label,574}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",447}]}.
    {call,5,{f,576}}. % '-sizes/1-lbc$^10/2-5-'/5
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^10/2-5-', 5, 576}.
  {label,575}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",447}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^10/2-5-'},5}.
  {label,576}.
    {test,is_nonempty_list,{f,577},[{x,0}]}.
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
    {call_only,5,{f,576}}. % '-sizes/1-lbc$^10/2-5-'/5
  {label,577}.
    {test,is_nil,{f,578},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,578}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-9-', 2, 580}.
  {label,579}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",439}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-9-'},2}.
  {label,580}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,581},2,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,581},2,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,581},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,581},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,582}}.
  {label,581}.
    {move,{integer,256},{x,0}}.
  {label,582}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",440}]}.
    {call,3,{f,584}}. % '-sizes/1-lbc$^8/2-4-'/3
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^8/2-4-', 3, 584}.
  {label,583}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",440}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^8/2-4-'},3}.
  {label,584}.
    {test,is_nonempty_list,{f,585},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{x,2},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{x,2},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,584}}. % '-sizes/1-lbc$^8/2-4-'/3
  {label,585}.
    {test,is_nil,{f,586},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,586}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-7-', 1, 588}.
  {label,587}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",432}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-7-'},1}.
  {label,588}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,589},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,589},1,[{x,0},{integer,3}],{x,0}}.
    {gc_bif,'+',{f,589},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,589},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,590}}.
  {label,589}.
    {move,{integer,256},{x,0}}.
  {label,590}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",433}]}.
    {call,2,{f,592}}. % '-sizes/1-lbc$^6/2-3-'/2
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^6/2-3-', 2, 592}.
  {label,591}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",433}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^6/2-3-'},2}.
  {label,592}.
    {test,is_nonempty_list,{f,593},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,592}}. % '-sizes/1-lbc$^6/2-3-'/2
  {label,593}.
    {test,is_nil,{f,594},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,594}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-5-', 1, 596}.
  {label,595}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",423}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-5-'},1}.
  {label,596}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,597},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,597},1,[{x,0},{integer,4}],{x,0}}.
    {gc_bif,'+',{f,597},1,[{x,0},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,597},1,[{x,0},{integer,3}],{x,0}}.
    {jump,{f,598}}.
  {label,597}.
    {move,{integer,256},{x,0}}.
  {label,598}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",424}]}.
    {call,2,{f,600}}. % '-sizes/1-lbc$^4/2-2-'/2
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^4/2-2-', 2, 600}.
  {label,599}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",424}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^4/2-2-'},2}.
  {label,600}.
    {test,is_nonempty_list,{f,601},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,600}}. % '-sizes/1-lbc$^4/2-2-'/2
  {label,601}.
    {test,is_nil,{f,602},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,602}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-3-', 1, 604}.
  {label,603}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",415}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-3-'},1}.
  {label,604}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,605},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,605},1,[{x,0},{integer,2}],{x,0}}.
    {jump,{f,606}}.
  {label,605}.
    {move,{integer,256},{x,0}}.
  {label,606}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",416}]}.
    {call,2,{f,608}}. % '-sizes/1-lbc$^2/2-1-'/2
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^2/2-1-', 2, 608}.
  {label,607}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",416}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^2/2-1-'},2}.
  {label,608}.
    {test,is_nonempty_list,{f,609},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,608}}. % '-sizes/1-lbc$^2/2-1-'/2
  {label,609}.
    {test,is_nil,{f,610},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,610}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-1-', 1, 612}.
  {label,611}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",407}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-fun-1-'},1}.
  {label,612}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,613},1,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,613},1,[{x,0},{integer,1}],{x,0}}.
    {jump,{f,614}}.
  {label,613}.
    {move,{integer,256},{x,0}}.
  {label,614}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",408}]}.
    {call,2,{f,616}}. % '-sizes/1-lbc$^0/2-0-'/2
    {call_last,1,{f,334},0}. % cs/1


{function, '-sizes/1-lbc$^0/2-0-', 2, 616}.
  {label,615}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",408}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-sizes/1-lbc$^0/2-0-'},2}.
  {label,616}.
    {test,is_nonempty_list,{f,617},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,616}}. % '-sizes/1-lbc$^0/2-0-'/2
  {label,617}.
    {test,is_nil,{f,618},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,618}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch_1/2-lbc$^0/2-0-', 3, 620}.
  {label,619}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",403}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch_1/2-lbc$^0/2-0-'},
               3}.
  {label,620}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,622},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_integer2,
          {f,621},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[403,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,4},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,4}}.
    {move,{x,5},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,620}}. % '-nomatch_1/2-lbc$^0/2-0-'/3
  {label,621}.
    {move,{x,1},{x,0}}.
    return.
  {label,622}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^12/2-12-', 2, 624}.
  {label,623}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",398}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^12/2-12-'},
               2}.
  {label,624}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,627},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,626},
          3,
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[398,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,625},[{x,3},{integer,0}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,625}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,624}}. % '-nomatch/1-lbc$^12/2-12-'/2
  {label,626}.
    {move,{x,1},{x,0}}.
    return.
  {label,627}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^10/2-10-', 2, 629}.
  {label,628}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^10/2-10-'},
               2}.
  {label,629}.
    {test,is_nonempty_list,{f,630},[{x,0}]}.
    {allocate,1,2}.
    {get_tl,{x,0},{y,0}}.
    {move,{atom,ok},{x,0}}.
    {call,2,{f,633}}. % '-nomatch/1-lbc$^11/2-11-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,629},1}. % '-nomatch/1-lbc$^10/2-10-'/2
  {label,630}.
    {test,is_nil,{f,631},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,631}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^11/2-11-', 2, 633}.
  {label,632}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",396}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-nomatch/1-lbc$^11/2-11-'},
               2}.
  {label,633}.
    {test,is_nonempty_list,{f,634},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,633}}. % '-nomatch/1-lbc$^11/2-11-'/2
  {label,634}.
    {test,is_nil,{f,635},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,635}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^8/2-8-', 2, 637}.
  {label,636}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^8/2-8-'},2}.
  {label,637}.
    {test,is_nonempty_list,{f,638},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{atom,ok},{x,0}}.
    {call,3,{f,641}}. % '-nomatch/1-lbc$^9/2-9-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,637},1}. % '-nomatch/1-lbc$^8/2-8-'/2
  {label,638}.
    {test,is_nil,{f,639},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,639}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^9/2-9-', 3, 641}.
  {label,640}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^9/2-9-'},3}.
  {label,641}.
    {test,is_nonempty_list,{f,642},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,3,{f,641}}. % '-nomatch/1-lbc$^9/2-9-'/3
  {label,642}.
    {test,is_nil,{f,643},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,643}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^7/2-7-', 2, 645}.
  {label,644}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",390}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^7/2-7-'},2}.
  {label,645}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,647},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_bits2,
          {f,646},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[390,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{integer,0},{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,645}}. % '-nomatch/1-lbc$^7/2-7-'/2
  {label,646}.
    {move,{x,1},{x,0}}.
    return.
  {label,647}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^6/2-6-', 2, 649}.
  {label,648}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",385}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^6/2-6-'},2}.
  {label,649}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,651},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_float2,
          {f,650},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[385,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<"a">>}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,649}}. % '-nomatch/1-lbc$^6/2-6-'/2
  {label,650}.
    {move,{x,1},{x,0}}.
    return.
  {label,651}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^5/2-5-', 2, 653}.
  {label,652}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",382}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^5/2-5-'},2}.
  {label,653}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,655},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_float2,
          {f,654},
          3,
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[382,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<"a">>}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,653}}. % '-nomatch/1-lbc$^5/2-5-'/2
  {label,654}.
    {move,{x,1},{x,0}}.
    return.
  {label,655}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^4/2-4-', 2, 657}.
  {label,656}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",380}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^4/2-4-'},2}.
  {label,657}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,658},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,658}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^3/2-3-', 2, 660}.
  {label,659}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",379}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^3/2-3-'},2}.
  {label,660}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lc$^2/1-2-', 1, 662}.
  {label,661}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",378}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lc$^2/1-2-'},1}.
  {label,662}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,663},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,663}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lc$^1/1-1-', 1, 665}.
  {label,664}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",377}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lc$^1/1-1-'},1}.
  {label,665}.
    {move,nil,{x,0}}.
    return.


{function, '-nomatch/1-lbc$^0/2-0-', 2, 667}.
  {label,666}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",376}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-nomatch/1-lbc$^0/2-0-'},2}.
  {label,667}.
    {test,is_nonempty_list,{f,668},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,667}}. % '-nomatch/1-lbc$^0/2-0-'/2
  {label,668}.
    {test,is_nil,{f,669},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,669}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_strange/2-lbc$^0/2-1-', 2, 671}.
  {label,670}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",363}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_strange/2-lbc$^0/2-1-'},
               2}.
  {label,671}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,673},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,672},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[363,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,671}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
  {label,672}.
    {move,{x,1},{x,0}}.
    return.
  {label,673}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_strange/2-lbc$^1/2-0-', 2, 675}.
  {label,674}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",362}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_strange/2-lbc$^1/2-0-'},
               2}.
  {label,675}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,677},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_utf8,
          {f,676},
          3,
          [{x,2},
           {field_flags,[{anno,[362,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,675}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
  {label,676}.
    {move,{x,1},{x,0}}.
    return.
  {label,677}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_trimmer/1-lbc$^0/2-0-', 2, 679}.
  {label,678}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",354}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_trimmer/1-lbc$^0/2-0-'},
               2}.
  {label,679}.
    {test,is_nonempty_list,{f,680},[{x,0}]}.
    {allocate_heap,4,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {put_tuple2,{x,0},{list,[{y,2},{y,2},{y,2}]}}.
    {call,1,{f,340}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,682},[{x,0}]}.
    {test,test_arity,{f,682},[{x,0},3]}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,340}}. % id/1
    {get_tuple_element,{y,0},0,{x,0}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {get_tuple_element,{y,0},2,{x,3}}.
    {move,{y,2},{x,2}}.
    {init_yregs,{list,[{y,0},{y,2}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",355}]}.
    {call,4,{f,152}}. % coverage_summer/4
    {line,[{location,"bs_bincomp_r24_SUITE.erl",354}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,4},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,3},{field_flags,[]},{x,1}}.
    {bs_put_float,{f,0},{integer,32},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,679},4}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2
  {label,680}.
    {test,is_nil,{f,681},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,681}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",356}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,682}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",354}]}.
    {badmatch,{y,0}}.


{function, '-coverage_lightfv/3-lbc$^0/2-0-', 2, 684}.
  {label,683}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",347}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_lightfv/3-lbc$^0/2-0-'},
               2}.
  {label,684}.
    {test,is_nonempty_list,{f,685},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,8},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,684}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
  {label,685}.
    {test,is_nil,{f,686},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,686}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_materialiv/3-lbc$^0/2-0-', 2, 688}.
  {label,687}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",342}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-coverage_materialiv/3-lbc$^0/2-0-'},
               2}.
  {label,688}.
    {test,is_nonempty_list,{f,689},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,688}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
  {label,689}.
    {test,is_nil,{f,690},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,690}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^8/2-8-', 2, 692}.
  {label,691}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",323}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^8/2-8-'},2}.
  {label,692}.
    {test,is_nonempty_list,{f,694},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,693},[{x,2},{integer,42}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,1},8],{x,2}}.
    {test_heap,0,3}.
    {bs_private_append,{f,0},{x,2},1,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_string,1,{string,<<"*">>}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,692}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,693}.
    {call_only,2,{f,692}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,694}.
    {test,is_nil,{f,695},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,695}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^7/2-7-', 2, 697}.
  {label,696}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",319}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^7/2-7-'},2}.
  {label,697}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,700},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,699},
          3,
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_position,{x,2},{x,4},4}.
    {test,is_eq_exact,{f,698},[{x,3},{integer,0}]}.
    {test,bs_get_integer2,
          {f,698},
          5,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,697}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,698}.
    {bs_set_position,{x,2},{x,4}}.
    {test,bs_skip_bits2,
          {f,699},
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[319,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,697}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,699}.
    {move,{x,1},{x,0}}.
    return.
  {label,700}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",320}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^6/2-6-', 2, 702}.
  {label,701}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",316}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^6/2-6-'},2}.
  {label,702}.
    {test,is_nonempty_list,{f,704},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,bs_start_match3,{f,703},3,[{x,2}],{x,2}}.
    {test,bs_get_integer2,
          {f,703},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[316,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,703},[{x,2},0]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,2,{f,702}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,703}.
    {call_only,2,{f,702}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,704}.
    {test,is_nil,{f,705},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,705}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^5/2-5-', 2, 707}.
  {label,706}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",310}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^5/2-5-'},2}.
  {label,707}.
    {test,is_nonempty_list,{f,710},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nonempty_list,{f,708},[{x,2}]}.
    {gc_bif,length,{f,0},3,[{x,2}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {jump,{f,709}}.
  {label,708}.
    {test,is_nil,{f,712},[{x,2}]}.
  {label,709}.
    {call_only,2,{f,707}}. % '-filters/1-lbc$^5/2-5-'/2
  {label,710}.
    {test,is_nil,{f,711},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,711}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",311}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,712}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",312}]}.
    {case_end,{x,2}}.


{function, '-filters/1-lbc$^4/2-4-', 2, 714}.
  {label,713}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^4/2-4-'},2}.
  {label,714}.
    {test,is_nonempty_list,{f,719},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",308}]}.
    {call,2,{f,132}}. % is_less_than/2
    {select_val,{x,0},
                {f,717},
                {list,[{atom,false},{f,715},{atom,true},{f,716}]}}.
  {label,715}.
    {gc_bif,'rem',{f,716},0,[{y,1},{integer,2}],{x,0}}.
    {test,is_eq,{f,716},[{x,0},{integer,1}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",306}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,718}}.
  {label,716}.
    {move,{y,2},{x,1}}.
    {jump,{f,718}}.
  {label,717}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",308}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {move,{x,0},{x,1}}.
  {label,718}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,714},3}. % '-filters/1-lbc$^4/2-4-'/2
  {label,719}.
    {test,is_nil,{f,720},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,720}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",307}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^3/2-3-', 2, 722}.
  {label,721}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^3/2-3-'},2}.
  {label,722}.
    {test,is_nonempty_list,{f,727},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",304}]}.
    {call,2,{f,132}}. % is_less_than/2
    {select_val,{x,0},
                {f,726},
                {list,[{atom,false},{f,724},{atom,true},{f,723}]}}.
  {label,723}.
    {gc_bif,'rem',{f,724},0,[{y,1},{integer,2}],{x,0}}.
    {test,is_eq,{f,724},[{x,0},{integer,0}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",302}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,725}}.
  {label,724}.
    {move,{y,2},{x,1}}.
  {label,725}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,722},3}. % '-filters/1-lbc$^3/2-3-'/2
  {label,726}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",304}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,727}.
    {test,is_nil,{f,728},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,728}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",303}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^2/2-2-', 2, 730}.
  {label,729}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^2/2-2-'},2}.
  {label,730}.
    {test,is_nonempty_list,{f,735},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",301}]}.
    {call,2,{f,132}}. % is_less_than/2
    {select_val,{x,0},
                {f,733},
                {list,[{atom,false},{f,732},{atom,true},{f,731}]}}.
  {label,731}.
    {move,{y,2},{x,1}}.
    {jump,{f,734}}.
  {label,732}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",299}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,734}}.
  {label,733}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",301}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {move,{x,0},{x,1}}.
  {label,734}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,730},3}. % '-filters/1-lbc$^2/2-2-'/2
  {label,735}.
    {test,is_nil,{f,736},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,736}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",300}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^1/2-1-', 2, 738}.
  {label,737}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^1/2-1-'},2}.
  {label,738}.
    {test,is_nonempty_list,{f,743},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",298}]}.
    {call,2,{f,132}}. % is_less_than/2
    {select_val,{x,0},
                {f,742},
                {list,[{atom,false},{f,740},{atom,true},{f,739}]}}.
  {label,739}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",296}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,32}],{x,0}}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,2},{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {jump,{f,741}}.
  {label,740}.
    {move,{y,2},{x,1}}.
  {label,741}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,738},3}. % '-filters/1-lbc$^1/2-1-'/2
  {label,742}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",298}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,743}.
    {test,is_nil,{f,744},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,744}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",297}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-filters/1-lbc$^0/2-0-', 2, 746}.
  {label,745}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",293}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-filters/1-lbc$^0/2-0-'},2}.
  {label,746}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,749},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,748},
          3,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[293,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'rem',{f,747},4,[{x,3},{integer,2}],{x,0}}.
    {test,is_eq,{f,747},[{x,0},{integer,0}]}.
    {gc_bif,'-',{f,0},4,[{x,3},{integer,32}],{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,746}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,747}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,746}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,748}.
    {move,{x,1},{x,0}}.
    return.
  {label,749}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",294}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-inconsistent_types_2/0-lbc$^0/2-0-', 3, 751}.
  {label,750}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",282}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-inconsistent_types_2/0-lbc$^0/2-0-'},
               3}.
  {label,751}.
    {test,is_nonempty_list,{f,755},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bif,'/=',{f,0},[{x,2},nil],{x,3}}.
    {test,is_eq_exact,{f,757},[{x,3},{atom,false}]}.
    {test,is_eq_exact,{f,757},[{x,3},{x,2}]}.
    {test,is_ne_exact,{f,753},[{x,3},{atom,true}]}.
    {select_val,{x,2},
                {f,754},
                {list,[{atom,false},{f,753},{atom,true},{f,752}]}}.
  {label,752}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
  {label,753}.
    {call_only,3,{f,751}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
  {label,754}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,2}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",285}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,755}.
    {test,is_nil,{f,756},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,756}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",284}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,757}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",285}]}.
    {badmatch,{x,3}}.


{function, '-inconsistent_types_1/1-lbc$^0/2-0-', 3, 759}.
  {label,758}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",264}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-inconsistent_types_1/1-lbc$^0/2-0-'},
               3}.
  {label,759}.
    {test,is_nonempty_list,{f,765},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bif,is_pid,{f,0},[{x,2}],{x,3}}.
    {test,is_map,{f,767},[{x,2}]}.
    {test,is_eq_exact,{f,760},[{x,3},{atom,true}]}.
    {move,{atom,false},{x,4}}.
    {jump,{f,761}}.
  {label,760}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",270}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,761}.
    {get_map_elements,{f,767},{x,2},{list,[{x,4},{x,4}]}}.
    {test,is_eq_exact,{f,767},[{x,4},{x,3}]}.
    {select_val,{x,2},
                {f,764},
                {list,[{atom,false},{f,763},{atom,true},{f,762}]}}.
  {label,762}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",264}]}.
    {move,{integer,0},{x,3}}.
    {gc_bif,bit_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
  {label,763}.
    {call_only,3,{f,759}}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3
  {label,764}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,2}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",266}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,765}.
    {test,is_nil,{f,766},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,766}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",265}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,767}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",268}]}.
    {badmatch,{x,2}}.


{function, '-float_segment_size/0-lbc$^0/2-0-', 3, 769}.
  {label,768}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",254}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-float_segment_size/0-lbc$^0/2-0-'},
               3}.
  {label,769}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,772},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_float2,
          {f,771},
          4,
          [{x,3},
           {x,2},
           8,
           {field_flags,[{anno,[254,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,770},[{x,4},{float,5.9}]}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,770}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,769}}. % '-float_segment_size/0-lbc$^0/2-0-'/3
  {label,771}.
    {move,{x,1},{x,0}}.
    return.
  {label,772}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",255}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^0/2-0-', 2, 774}.
  {label,773}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-over_complex_generator/0-lbc$^0/2-0-'},
               2}.
  {label,774}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,777},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,776},
          3,
          [{x,2},
           {integer,2},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,775},[{x,3},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {call,2,{f,779}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,774},1}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,775}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,774}}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,776}.
    {move,{x,1},{x,0}}.
    return.
  {label,777}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",235}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^1/2-1-', 2, 779}.
  {label,778}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-over_complex_generator/0-lbc$^1/2-1-'},
               2}.
  {label,779}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,781},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_bits2,
          {f,780},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[233,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",234}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<"ÿ">>}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,779}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
  {label,780}.
    {move,{x,1},{x,0}}.
    return.
  {label,781}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",237}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_match_context_2/1-lbc$^0/2-0-', 2, 783}.
  {label,782}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",229}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-do_match_context_2/1-lbc$^0/2-0-'},
               2}.
  {label,783}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,785},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,784},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[229,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,783}}. % '-do_match_context_2/1-lbc$^0/2-0-'/2
  {label,784}.
    {move,{x,1},{x,0}}.
    return.
  {label,785}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-match_context_1/1-lbc$^0/2-0-', 2, 787}.
  {label,786}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",223}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-match_context_1/1-lbc$^0/2-0-'},
               2}.
  {label,787}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,789},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,788},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[223,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,787}}. % '-match_context_1/1-lbc$^0/2-0-'/2
  {label,788}.
    {move,{x,1},{x,0}}.
    return.
  {label,789}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^1/2-1-', 2, 791}.
  {label,790}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^1/2-1-'},2}.
  {label,791}.
    {test,is_nonempty_list,{f,792},[{x,0}]}.
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
    {call,2,{f,795}}. % '-gen_data/1-lbc$^2/2-2-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,791},1}. % '-gen_data/1-lbc$^1/2-1-'/2
  {label,792}.
    {test,is_nil,{f,793},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,793}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^2/2-2-', 2, 795}.
  {label,794}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^2/2-2-'},2}.
  {label,795}.
    {test,is_nonempty_list,{f,796},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,795}}. % '-gen_data/1-lbc$^2/2-2-'/2
  {label,796}.
    {test,is_nil,{f,797},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,797}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",220}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^0/2-0-', 2, 799}.
  {label,798}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",218}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-gen_data/1-lbc$^0/2-0-'},2}.
  {label,799}.
    {test,is_nonempty_list,{f,800},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,799}}. % '-gen_data/1-lbc$^0/2-0-'/2
  {label,800}.
    {test,is_nil,{f,801},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,801}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_lc/1-lc$^0/1-0-', 1, 803}.
  {label,802}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",215}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-silly_lc/1-lc$^0/1-0-'},1}.
  {label,803}.
    {test,is_nonempty_list,{f,804},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,803}}. % '-silly_lc/1-lc$^0/1-0-'/1
    {test_heap,6,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,804}.
    {test,is_nil,{f,805},[{x,0}]}.
    return.
  {label,805}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_bc/1-lbc$^0/2-0-', 2, 807}.
  {label,806}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",210}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-silly_bc/1-lbc$^0/2-0-'},2}.
  {label,807}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,809},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,808},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[210,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,2},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,807}}. % '-silly_bc/1-lbc$^0/2-0-'/2
  {label,808}.
    {move,{x,1},{x,0}}.
    return.
  {label,809}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^0/2-0-', 3, 811}.
  {label,810}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_size/2-lbc$^0/2-0-'},
               3}.
  {label,811}.
    {test,is_nonempty_list,{f,812},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,815}}. % '-mixed_size/2-lbc$^1/2-1-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,811},2}. % '-mixed_size/2-lbc$^0/2-0-'/3
  {label,812}.
    {test,is_nil,{f,813},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,813}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^1/2-1-', 3, 815}.
  {label,814}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_size/2-lbc$^1/2-1-'},
               3}.
  {label,815}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,817},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_integer2,
          {f,816},
          4,
          [{x,3},
           {x,2},
           1,
           {field_flags,[{anno,[197,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,4},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,4}}.
    {move,{x,5},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,815}}. % '-mixed_size/2-lbc$^1/2-1-'/3
  {label,816}.
    {move,{x,1},{x,0}}.
    return.
  {label,817}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_nested/1-lbc$^0/2-0-', 2, 819}.
  {label,818}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",194}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-mixed_nested/1-lbc$^0/2-0-'},
               2}.
  {label,819}.
    {test,is_nonempty_list,{f,820},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,819}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
  {label,820}.
    {test,is_nil,{f,821},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,821}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-fun-26-', 1, 823}.
  {label,822}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",186}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-fun-26-'},1}.
  {label,823}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",187}]}.
    {call,2,{f,826}}. % '-mixed/1-lc$^25/1-25-'/2
    {test,is_nil,{f,824},[{x,0}]}.
    {deallocate,0}.
    return.
  {label,824}.
    {badmatch,{x,0}}.


{function, '-mixed/1-lc$^25/1-25-', 2, 826}.
  {label,825}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",187}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^25/1-25-'},2}.
  {label,826}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,833},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,829},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'bsr',{f,827},4,[{x,3},{integer,1}],{x,3}}.
    {jump,{f,828}}.
  {label,827}.
    {move,{atom,bad_size},{x,3}}.
  {label,828}.
    {test,bs_skip_bits2,
          {f,829},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,2,{f,826}}. % '-mixed/1-lc$^25/1-25-'/2
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,829}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,832},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'bsr',{f,830},4,[{x,3},{integer,1}],{x,3}}.
    {jump,{f,831}}.
  {label,830}.
    {move,{atom,bad_size},{x,3}}.
  {label,831}.
    {test,bs_skip_bits2,
          {f,832},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,826}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,832}.
    {move,nil,{x,0}}.
    return.
  {label,833}.
    {test,bs_start_match3,{f,836},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,836},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'bsr',{f,834},4,[{x,3},{integer,1}],{x,3}}.
    {jump,{f,835}}.
  {label,834}.
    {move,{atom,bad_size},{x,3}}.
  {label,835}.
    {test,bs_skip_bits2,
          {f,836},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,826}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,836}.
    {test,bs_start_match3,{f,837},1,[{x,0}],{x,1}}.
    {move,nil,{x,0}}.
    return.
  {label,837}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^23/2-23-', 2, 839}.
  {label,838}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^23/2-23-'},2}.
  {label,839}.
    {test,is_nonempty_list,{f,840},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,843}}. % '-mixed/1-lbc$^24/2-24-'/2
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,839},1}. % '-mixed/1-lbc$^23/2-23-'/2
  {label,840}.
    {test,is_nil,{f,841},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,841}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^24/2-24-', 2, 843}.
  {label,842}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^24/2-24-'},2}.
  {label,843}.
    {test,is_nonempty_list,{f,844},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,843}}. % '-mixed/1-lbc$^24/2-24-'/2
  {label,844}.
    {test,is_nil,{f,845},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,845}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^21/1-21-', 1, 847}.
  {label,846}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^21/1-21-'},1}.
  {label,847}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,849},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,848},
          2,
          [{x,1},
           {integer,3},
           1,
           {field_flags,[{anno,[155,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,848},
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
    {call_only,3,{f,851}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,848}.
    {move,nil,{x,0}}.
    return.
  {label,849}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^22/1-22-', 3, 851}.
  {label,850}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^22/1-22-'},3}.
  {label,851}.
    {test,is_nonempty_list,{f,853},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {test,is_tuple,{f,852},[{x,3}]}.
    {test,test_arity,{f,852},[{x,3},2]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {gc_bif,'+',{f,0},4,[{x,1},{x,3}],{x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,3,{f,851}}. % '-mixed/1-lc$^22/1-22-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,852}.
    {call_only,3,{f,851}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,853}.
    {test,is_nil,{f,854},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,847}}. % '-mixed/1-lc$^21/1-21-'/1
  {label,854}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^19/1-19-', 1, 856}.
  {label,855}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^19/1-19-'},1}.
  {label,856}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,858},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,857},
          2,
          [{x,1},
           {integer,3},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,857},
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
    {call_only,3,{f,860}}. % '-mixed/1-lc$^20/1-20-'/3
  {label,857}.
    {move,nil,{x,0}}.
    return.
  {label,858}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^20/1-20-', 3, 860}.
  {label,859}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^20/1-20-'},3}.
  {label,860}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,862},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_integer2,
          {f,861},
          4,
          [{x,3},
           {integer,3},
           1,
           {field_flags,[{anno,[153,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'+',{f,0},5,[{x,1},{x,4}],{x,0}}.
    {allocate,1,4}.
    {move,{x,0},{y,0}}.
    {move,{x,3},{x,0}}.
    {call,3,{f,860}}. % '-mixed/1-lc$^20/1-20-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,861}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,856}}. % '-mixed/1-lc$^19/1-19-'/1
  {label,862}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^18/2-18-', 2, 864}.
  {label,863}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",150}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^18/2-18-'},2}.
  {label,864}.
    {test,is_nonempty_list,{f,866},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_tuple,{f,865},[{x,2}]}.
    {test,test_arity,{f,865},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {gc_bif,'+',{f,0},4,[{x,3},{x,2}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,864}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,865}.
    {call_only,2,{f,864}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,866}.
    {test,is_nil,{f,867},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,867}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^16/2-16-', 2, 869}.
  {label,868}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^16/2-16-'},2}.
  {label,869}.
    {test,is_nonempty_list,{f,870},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,873}}. % '-mixed/1-lbc$^17/2-17-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,869},1}. % '-mixed/1-lbc$^16/2-16-'/2
  {label,870}.
    {test,is_nil,{f,871},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,871}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^17/2-17-', 3, 873}.
  {label,872}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^17/2-17-'},3}.
  {label,873}.
    {test,is_nonempty_list,{f,874},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,873}}. % '-mixed/1-lbc$^17/2-17-'/3
  {label,874}.
    {test,is_nil,{f,875},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,875}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^14/2-14-', 2, 877}.
  {label,876}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^14/2-14-'},2}.
  {label,877}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,879},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,878},
          3,
          [{x,2},
           {integer,3},
           1,
           {field_flags,[{anno,[146,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,881}}. % '-mixed/1-lbc$^15/2-15-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,877},1}. % '-mixed/1-lbc$^14/2-14-'/2
  {label,878}.
    {move,{x,1},{x,0}}.
    return.
  {label,879}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^15/2-15-', 3, 881}.
  {label,880}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^15/2-15-'},3}.
  {label,881}.
    {test,is_nonempty_list,{f,882},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,881}}. % '-mixed/1-lbc$^15/2-15-'/3
  {label,882}.
    {test,is_nil,{f,883},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,883}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^12/2-12-', 2, 885}.
  {label,884}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^12/2-12-'},2}.
  {label,885}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,887},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,886},
          3,
          [{x,2},
           {integer,3},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call,3,{f,889}}. % '-mixed/1-lbc$^13/2-13-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,885},1}. % '-mixed/1-lbc$^12/2-12-'/2
  {label,886}.
    {move,{x,1},{x,0}}.
    return.
  {label,887}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^13/2-13-', 3, 889}.
  {label,888}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^13/2-13-'},3}.
  {label,889}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,891},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_integer2,
          {f,890},
          4,
          [{x,3},
           {integer,3},
           1,
           {field_flags,[{anno,[143,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'+',{f,0},5,[{x,2},{x,4}],{x,0}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,3},1,{field_flags,[]},{x,0}}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,889}}. % '-mixed/1-lbc$^13/2-13-'/3
  {label,890}.
    {move,{x,1},{x,0}}.
    return.
  {label,891}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",144}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^10/1-10-', 1, 893}.
  {label,892}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^10/1-10-'},1}.
  {label,893}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,895},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,894},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[141,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,894},
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
    {call_only,3,{f,897}}. % '-mixed/1-lc$^11/1-11-'/3
  {label,894}.
    {move,nil,{x,0}}.
    return.
  {label,895}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^11/1-11-', 3, 897}.
  {label,896}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^11/1-11-'},3}.
  {label,897}.
    {test,is_nonempty_list,{f,898},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,1},{x,3}],{x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,3,{f,897}}. % '-mixed/1-lc$^11/1-11-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,898}.
    {test,is_nil,{f,899},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,893}}. % '-mixed/1-lc$^10/1-10-'/1
  {label,899}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^8/1-8-', 1, 901}.
  {label,900}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^8/1-8-'},1}.
  {label,901}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,903},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,902},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,902},
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
    {call_only,3,{f,905}}. % '-mixed/1-lc$^9/1-9-'/3
  {label,902}.
    {move,nil,{x,0}}.
    return.
  {label,903}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lc$^9/1-9-', 3, 905}.
  {label,904}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lc$^9/1-9-'},3}.
  {label,905}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,907},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_integer2,
          {f,906},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[139,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'+',{f,0},5,[{x,1},{x,4}],{x,0}}.
    {allocate,1,4}.
    {move,{x,0},{y,0}}.
    {move,{x,3},{x,0}}.
    {call,3,{f,905}}. % '-mixed/1-lc$^9/1-9-'/3
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,906}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,901}}. % '-mixed/1-lc$^8/1-8-'/1
  {label,907}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^6/2-6-', 3, 909}.
  {label,908}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^6/2-6-'},3}.
  {label,909}.
    {test,is_nonempty_list,{f,910},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,913}}. % '-mixed/1-lbc$^7/2-7-'/3
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,909},2}. % '-mixed/1-lbc$^6/2-6-'/3
  {label,910}.
    {test,is_nil,{f,911},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,911}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^7/2-7-', 3, 913}.
  {label,912}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^7/2-7-'},3}.
  {label,913}.
    {test,is_nonempty_list,{f,914},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,913}}. % '-mixed/1-lbc$^7/2-7-'/3
  {label,914}.
    {test,is_nil,{f,915},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,915}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^4/2-4-', 2, 917}.
  {label,916}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^4/2-4-'},2}.
  {label,917}.
    {test,is_nonempty_list,{f,918},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,921}}. % '-mixed/1-lbc$^5/2-5-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,917},1}. % '-mixed/1-lbc$^4/2-4-'/2
  {label,918}.
    {test,is_nil,{f,919},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,919}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^5/2-5-', 3, 921}.
  {label,920}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^5/2-5-'},3}.
  {label,921}.
    {test,is_nonempty_list,{f,922},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,921}}. % '-mixed/1-lbc$^5/2-5-'/3
  {label,922}.
    {test,is_nil,{f,923},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,923}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^2/2-2-', 2, 925}.
  {label,924}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^2/2-2-'},2}.
  {label,925}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,927},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,926},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[131,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,929}}. % '-mixed/1-lbc$^3/2-3-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,925},1}. % '-mixed/1-lbc$^2/2-2-'/2
  {label,926}.
    {move,{x,1},{x,0}}.
    return.
  {label,927}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^3/2-3-', 3, 929}.
  {label,928}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^3/2-3-'},3}.
  {label,929}.
    {test,is_nonempty_list,{f,930},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',{f,0},4,[{x,2},{x,3}],{x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {call_only,3,{f,929}}. % '-mixed/1-lbc$^3/2-3-'/3
  {label,930}.
    {test,is_nil,{f,931},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,931}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^0/2-0-', 2, 933}.
  {label,932}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,933}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,935},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,934},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call,3,{f,937}}. % '-mixed/1-lbc$^1/2-1-'/3
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,933},1}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,934}.
    {move,{x,1},{x,0}}.
    return.
  {label,935}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^1/2-1-', 3, 937}.
  {label,936}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},{atom,'-mixed/1-lbc$^1/2-1-'},3}.
  {label,937}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,939},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_integer2,
          {f,938},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[129,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {gc_bif,'+',{f,0},5,[{x,2},{x,4}],{x,0}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,937}}. % '-mixed/1-lbc$^1/2-1-'/3
  {label,938}.
    {move,{x,1},{x,0}}.
    return.
  {label,939}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lc$^3/1-3-', 1, 941}.
  {label,940}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",123}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^3/1-3-'},
               1}.
  {label,941}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,943},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,942},
          2,
          [{x,1},
           {integer,15},
           1,
           {field_flags,[{anno,[123,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,941}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
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


{function, '-extended_bit_aligned/1-lbc$^2/2-2-', 2, 945}.
  {label,944}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",121}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,945}.
    {test,is_nonempty_list,{f,946},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,7},1],{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,31},1,{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,945}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
  {label,946}.
    {test,is_nil,{f,947},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,947}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lc$^1/1-1-', 1, 949}.
  {label,948}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",119}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^1/1-1-'},
               1}.
  {label,949}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,951},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,950},
          2,
          [{x,1},
           {integer,7},
           1,
           {field_flags,[{anno,[119,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'-',{f,0},3,[{x,2},{integer,32}],{x,0}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,949}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,950}.
    {move,nil,{x,0}}.
    return.
  {label,951}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_bit_aligned/1-lbc$^0/2-0-', 2, 953}.
  {label,952}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",118}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,953}.
    {test,is_nonempty_list,{f,954},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,32}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,7},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,953}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
  {label,954}.
    {test,is_nil,{f,955},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,955}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lc$^3/1-3-', 1, 957}.
  {label,956}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",112}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^3/1-3-'},
               1}.
  {label,957}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,959},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,958},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[112,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,957}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,958}.
    {move,nil,{x,0}}.
    return.
  {label,959}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lbc$^2/2-2-', 2, 961}.
  {label,960}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",110}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,961}.
    {test,is_nonempty_list,{f,962},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,4},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[little]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,961}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
  {label,962}.
    {test,is_nil,{f,963},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,963}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lc$^1/1-1-', 1, 965}.
  {label,964}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",108}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^1/1-1-'},
               1}.
  {label,965}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,967},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,966},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[108,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,32}],{x,0}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,965}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,966}.
    {move,nil,{x,0}}.
    return.
  {label,967}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-extended_byte_aligned/1-lbc$^0/2-0-', 2, 969}.
  {label,968}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",107}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,969}.
    {test,is_nonempty_list,{f,970},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,32}],{x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,969}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
  {label,970}.
    {test,is_nil,{f,971},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,971}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^3/2-3-', 2, 973}.
  {label,972}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",102}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^3/2-3-'},
               2}.
  {label,973}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,975},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,974},
          3,
          [{x,2},
           {integer,15},
           1,
           {field_flags,[{anno,[102,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,7},1],{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,31},1,{field_flags,[little]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,973}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
  {label,974}.
    {move,{x,1},{x,0}}.
    return.
  {label,975}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^2/2-2-', 2, 977}.
  {label,976}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",100}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,977}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,979},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,978},
          3,
          [{x,2},
           {integer,31},
           1,
           {field_flags,[{anno,[100,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,7},1],{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,3},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,31},1,{field_flags,[little]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,977}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
  {label,978}.
    {move,{x,1},{x,0}}.
    return.
  {label,979}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^1/2-1-', 2, 981}.
  {label,980}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",98}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^1/2-1-'},
               2}.
  {label,981}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,983},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,982},
          3,
          [{x,2},
           {integer,7},
           1,
           {field_flags,[{anno,[98,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'-',{f,0},4,[{x,3},{integer,32}],{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,981}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
  {label,982}.
    {move,{x,1},{x,0}}.
    return.
  {label,983}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^0/2-0-', 2, 985}.
  {label,984}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",97}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,985}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,987},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,986},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[97,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'+',{f,0},4,[{x,3},{integer,32}],{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,7},1],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,985}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
  {label,986}.
    {move,{x,1},{x,0}}.
    return.
  {label,987}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^3/2-3-', 2, 989}.
  {label,988}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",91}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^3/2-3-'},
               2}.
  {label,989}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,991},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,990},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[91,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,4},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[little]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,989}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
  {label,990}.
    {move,{x,1},{x,0}}.
    return.
  {label,991}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^2/2-2-', 2, 993}.
  {label,992}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",89}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,993}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,995},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,994},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[89,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,4},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[little]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,993}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
  {label,994}.
    {move,{x,1},{x,0}}.
    return.
  {label,995}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^1/2-1-', 2, 997}.
  {label,996}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",87}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^1/2-1-'},
               2}.
  {label,997}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,999},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,998},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[87,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,4},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {bs_put_string,3,{string,<<"xyz">>}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,997}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
  {label,998}.
    {move,{x,1},{x,0}}.
    return.
  {label,999}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-byte_aligned/1-lbc$^0/2-0-', 2, 1001}.
  {label,1000}.
    {line,[{location,"bs_bincomp_r24_SUITE.erl",86}]}.
    {func_info,{atom,bs_bincomp_r24_SUITE},
               {atom,'-byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,1001}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1003},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,1002},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[86,{file,"bs_bincomp_r24_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'+',{f,0},4,[{x,3},{integer,32}],{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1001}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
  {label,1002}.
    {move,{x,1},{x,0}}.
    return.
  {label,1003}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
