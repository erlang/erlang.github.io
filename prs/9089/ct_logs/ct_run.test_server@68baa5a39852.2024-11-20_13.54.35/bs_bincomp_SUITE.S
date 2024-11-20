{module, bs_bincomp_SUITE}.  %% version = 0

{exports, [{all,0},
           {bit_aligned,1},
           {byte_aligned,1},
           {end_per_group,2},
           {end_per_suite,1},
           {extended_bit_aligned,1},
           {extended_byte_aligned,1},
           {filters,1},
           {float_skip,1},
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

{labels, 817}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_bincomp_SUITE.erl",36}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_bincomp_SUITE.erl",38}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[verify_highest_opcode,byte_aligned,bit_aligned,
                    extended_byte_aligned,extended_bit_aligned,mixed,filters,
                    trim_coverage,nomatch,sizes,general_expressions,
                    no_generator,zero_pattern,multiple_segments,grab_bag,
                    float_skip]},
          {x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_bincomp_SUITE.erl",46}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,groups},0}.
  {label,6}.
    {move,nil,{x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_bincomp_SUITE.erl",49}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_bincomp_SUITE},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",50}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_bincomp_SUITE.erl",53}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_bincomp_SUITE.erl",56}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_bincomp_SUITE.erl",59}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 16}.
  {label,15}.
    {line,[{location,"bs_bincomp_SUITE.erl",62}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,verify_highest_opcode},1}.
  {label,16}.
    {move,{atom,ok},{x,0}}.
    return.


{function, byte_aligned, 1, 18}.
  {label,17}.
    {line,[{location,"bs_bincomp_SUITE.erl",84}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,byte_aligned},1}.
  {label,18}.
    {test,is_list,{f,17},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",85}]}.
    {call,0,{f,298}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",86}]}.
    {call,2,{f,815}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abcdefg">>}]}.
    {move,{integer,12},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABC">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",87}]}.
    {call,2,{f,812}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,21},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"AxyzBxyzCxyz">>}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,1,0,0,0,2,0,0,0,3,0,0,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",89}]}.
    {call,2,{f,809}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,20},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {bs_match,{f,20},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",91}]}.
    {call,2,{f,806}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,19},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {bs_match,{f,19},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",90}]}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,0,{f,300},0}. % cs_end/0
  {label,19}.
    {badmatch,{x,0}}.
  {label,20}.
    {line,[{location,"bs_bincomp_SUITE.erl",88}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{location,"bs_bincomp_SUITE.erl",87}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"bs_bincomp_SUITE.erl",86}]}.
    {badmatch,{x,0}}.


{function, bit_aligned, 1, 24}.
  {label,23}.
    {line,[{location,"bs_bincomp_SUITE.erl",94}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,bit_aligned},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",95}]}.
    {call,0,{f,298}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",97}]}.
    {call,2,{f,803}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,30},
              {x,1},
              {commands,[{ensure_exactly,49},
                         {'=:=',nil,31,1640337190},
                         {'=:=',nil,18,95079}]}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",98}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,25},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'div',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,7}],
            {x,0}}.
    {jump,{f,26}}.
  {label,25}.
    {move,{integer,256},{x,0}}.
  {label,26}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",98}]}.
    {call,2,{f,799}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,29},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"ABCDEFG">>}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,2,0,0,0,8,0,0,0,24,0,0,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",100}]}.
    {call,2,{f,796}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,28},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {bs_match,{f,28},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",102}]}.
    {call,2,{f,793}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,27},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {bs_match,{f,27},{x,1},{commands,[{ensure_exactly,0}]}}.
    {call_last,0,{f,300},1}. % cs_end/0
  {label,27}.
    {line,[{location,"bs_bincomp_SUITE.erl",101}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{location,"bs_bincomp_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{location,"bs_bincomp_SUITE.erl",98}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{location,"bs_bincomp_SUITE.erl",96}]}.
    {badmatch,{x,0}}.


{function, extended_byte_aligned, 1, 32}.
  {label,31}.
    {line,[{location,"bs_bincomp_SUITE.erl",105}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,extended_byte_aligned},1}.
  {label,32}.
    {test,is_list,{f,31},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",106}]}.
    {call,0,{f,298}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",107}]}.
    {call,2,{f,790}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,36},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abcdefg">>}]}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",108}]}.
    {call,1,{f,787}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{32,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,35},
          [{tr,{x,0},{t_list,{t_integer,{32,'+inf'}},nil}},
           {literal,"abcdefg"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",110}]}.
    {call,2,{f,784}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,34},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {bs_match,{f,34},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",112}]}.
    {call,1,{f,781}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,65535}},nil}}]}}.
    {test,is_eq_exact,
          {f,33},
          [{tr,{x,0},{t_list,{t_integer,{0,65535}},nil}},
           {literal,[256,512,768,1024]}]}.
    {call_last,0,{f,300},0}. % cs_end/0
  {label,33}.
    {line,[{location,"bs_bincomp_SUITE.erl",111}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{location,"bs_bincomp_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{location,"bs_bincomp_SUITE.erl",108}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{location,"bs_bincomp_SUITE.erl",107}]}.
    {badmatch,{x,0}}.


{function, extended_bit_aligned, 1, 38}.
  {label,37}.
    {line,[{location,"bs_bincomp_SUITE.erl",115}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,extended_bit_aligned},1}.
  {label,38}.
    {test,is_list,{f,37},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",116}]}.
    {call,0,{f,298}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",118}]}.
    {call,2,{f,778}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,42},
              {x,1},
              {commands,[{ensure_exactly,49},
                         {'=:=',nil,31,1640337190},
                         {'=:=',nil,18,95079}]}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",119}]}.
    {call,1,{f,775}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{'-inf',95}},nil}}]}}.
    {test,is_eq_exact,
          {f,41},
          [{tr,{x,0},{t_list,{t_integer,{'-inf',95}},nil}},
           {literal,"ABCDEFG"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",121}]}.
    {call,2,{f,772}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,40},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {bs_match,{f,40},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",123}]}.
    {call,1,{f,769}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,32767}},nil}}]}}.
    {test,is_eq_exact,
          {f,39},
          [{tr,{x,0},{t_list,{t_integer,{0,32767}},nil}},
           {literal,[256,512,768,1024]}]}.
    {call_last,0,{f,300},0}. % cs_end/0
  {label,39}.
    {line,[{location,"bs_bincomp_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{location,"bs_bincomp_SUITE.erl",120}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{location,"bs_bincomp_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{location,"bs_bincomp_SUITE.erl",117}]}.
    {badmatch,{x,0}}.


{function, mixed, 1, 44}.
  {label,43}.
    {line,[{location,"bs_bincomp_SUITE.erl",126}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,mixed},1}.
  {label,44}.
    {test,is_list,{f,43},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",127}]}.
    {call,0,{f,298}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",129}]}.
    {call,2,{f,763}}. % '-mixed/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,73},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",131}]}.
    {call,2,{f,757}}. % '-mixed/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,72},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",133}]}.
    {call,2,{f,751}}. % '-mixed/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",134}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",135}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,2}}.
    {gc_bif,length,{f,45},0,[{y,3}],{x,0}}.
    {gc_bif,length,{f,45},1,[{y,2}],{x,1}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_integer,{0,288230376151711743}}}],
            {x,0}}.
    {jump,{f,46}}.
  {label,45}.
    {move,{integer,256},{x,0}}.
  {label,46}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",137}]}.
    {call,3,{f,743}}. % '-mixed/1-lbc$^6/2-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,70},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",139}]}.
    {call,1,{f,737}}. % '-mixed/1-lc$^8/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,69},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",141}]}.
    {call,1,{f,731}}. % '-mixed/1-lc$^10/1-10-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,68},
          [{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",143}]}.
    {call,2,{f,725}}. % '-mixed/1-lbc$^12/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,67},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,5097838}]}}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",146}]}.
    {call,2,{f,719}}. % '-mixed/1-lbc$^14/2-14-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,66},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,5097838}]}}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",148}]}.
    {call,2,{f,713}}. % '-mixed/1-lbc$^16/2-16-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,65},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,5097838}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[{1,1},{1,2},{2,1},{2,2},{3,1},{3,2},{4,1},{4,2}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",150}]}.
    {call,2,{f,710}}. % '-mixed/1-lbc$^18/2-18-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,64},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,5097838}]}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",153}]}.
    {call,1,{f,704}}. % '-mixed/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,63},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",155}]}.
    {call,1,{f,698}}. % '-mixed/1-lc$^21/1-21-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,62},
          [{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",158}]}.
    {call,1,{f,75}}. % mixed_nested/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,61},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2,0,3,99>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[1]]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",160}]}.
    {call,2,{f,692}}. % '-mixed/1-lbc$^23/2-23-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,60},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",164}]}.
    {call,1,{f,313}}. % id/1
    {move,{literal,<<"*Ký">>},{x,1}}.
    {call,2,{f,77}}. % mixed_size/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,59},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,42,0,0,0,75,0,0,0,253,0,0,42,75>>}]}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",166}]}.
    {call,1,{f,79}}. % silly_lc_bc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",168}]}.
    {call,1,{f,90}}. % gen_data/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{integer,256},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",169}]}.
    {call,1,{f,90}}. % gen_data/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{integer,512},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",170}]}.
    {call,1,{f,90}}. % gen_data/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",172}]}.
    {call,1,{f,95}}. % match_context_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,58},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{literal,<<4,5,6>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",173}]}.
    {call,1,{f,97}}. % match_context_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,57},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<4,5,6>>}]}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",175}]}.
    {call,0,{f,101}}. % over_complex_generator/0
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,56},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<"ÿ">>}]}.
    {'catch',{y,3},{f,47}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",176}]}.
    {call,0,{f,103}}. % float_segment_size/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,47}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,55},[{x,0},2,{atom,'EXIT'}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_bincomp_SUITE.erl",178}]}.
    {call,1,{f,105}}. % inconsistent_types_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,54},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {'catch',{y,2},{f,48}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",179}]}.
    {call,1,{f,105}}. % inconsistent_types_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,48}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,53},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,53},[{x,1}]}.
    {test,test_arity,{f,53},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,53},[{x,1},{literal,{bad_generator,42}}]}.
    {bif,self,{f,0},[],{y,3}}.
    {'catch',{y,1},{f,49}}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",181}]}.
    {call,1,{f,105}}. % inconsistent_types_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,49}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,52},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,52},[{x,1}]}.
    {test,test_arity,{f,52},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,52},[{x,1},2,{atom,bad_generator}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,52},[{x,1},{tr,{y,3},pid}]}.
    {'catch',{y,0},{f,50}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",183}]}.
    {call,0,{f,107}}. % inconsistent_types_2/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,50}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,51},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,51},[{x,1}]}.
    {test,test_arity,{f,51},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,51},[{x,1},{literal,{bad_filter,<<>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",188}]}.
    {call,1,{f,313}}. % id/1
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",186}]}.
    {call,1,{f,682}}. % '-mixed/1-fun-26-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {call_last,0,{f,300},4}. % cs_end/0
  {label,51}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",183}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",179}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",178}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",176}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",175}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",173}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",172}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",160}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",158}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",154}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",152}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",149}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",147}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",145}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",140}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",138}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",136}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",130}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",128}]}.
    {badmatch,{x,0}}.


{function, mixed_nested, 1, 75}.
  {label,74}.
    {line,[{location,"bs_bincomp_SUITE.erl",193}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,mixed_nested},1}.
  {label,75}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",194}]}.
    {call,2,{f,679}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
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
    {call,1,{f,313}}. % id/1
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


{function, mixed_size, 2, 77}.
  {label,76}.
    {line,[{location,"bs_bincomp_SUITE.erl",196}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,mixed_size},2}.
  {label,77}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,672},2}. % '-mixed_size/2-lbc$^0/2-0-'/3


{function, silly_lc_bc, 1, 79}.
  {label,78}.
    {line,[{location,"bs_bincomp_SUITE.erl",199}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,silly_lc_bc},1}.
  {label,79}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',5}}}]}}.
    {test,is_ge,{f,80},[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,1}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",200}]}.
    {call,1,{f,87}}. % silly_lc/1
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
    {line,[{location,"bs_bincomp_SUITE.erl",201}]}.
    {call,1,{f,84}}. % silly_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,82},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",202}]}.
    {gc_bif,byte_size,{f,0},0,[{tr,{y,0},{t_bitstring,8,false}}],{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",203}]}.
    {gc_bif,'bsl',{f,0},1,[{integer,5},{tr,{y,1},{t_integer,{1,5}}}],{x,1}}.
    {test,is_eq_exact,
          {f,81},
          [{tr,{x,1},{t_integer,{10,160}}},
           {tr,{x,0},{t_integer,{0,288230376151711743}}}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",204}]}.
    {gc_bif,'-',{f,0},0,[{tr,{y,1},{t_integer,{1,5}}},{integer,1}],{x,0}}.
    {call_last,1,{f,79},2}. % silly_lc_bc/1
  {label,80}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,81}.
    {line,[{location,"bs_bincomp_SUITE.erl",203}]}.
    {badmatch,{x,1}}.
  {label,82}.
    {line,[{location,"bs_bincomp_SUITE.erl",201}]}.
    {badmatch,{x,0}}.


{function, silly_bc, 1, 84}.
  {label,83}.
    {line,[{location,"bs_bincomp_SUITE.erl",207}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,silly_bc},1}.
  {label,84}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',5}}}]}}.
    {test,is_eq_exact,{f,85},[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,0}]}.
    {move,{literal,<<0,1,2,3,4>>},{x,0}}.
    return.
  {label,85}.
    {line,[{location,"bs_bincomp_SUITE.erl",210}]}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,1}],{x,0}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,84}}. % silly_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {line,[]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,1}}.
    {gc_bif,'bsr',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,3}],
            {x,1}}.
    {gc_bif,'*',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,36028797018963967}}},{integer,2}],
            {x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,669},1}. % '-silly_bc/1-lbc$^0/2-0-'/2


{function, silly_lc, 1, 87}.
  {label,86}.
    {line,[{location,"bs_bincomp_SUITE.erl",212}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,silly_lc},1}.
  {label,87}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',5}}}]}}.
    {test,is_eq_exact,{f,88},[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,0}]}.
    {move,{literal,[0,1,2,3,4]},{x,0}}.
    return.
  {label,88}.
    {line,[{location,"bs_bincomp_SUITE.erl",215}]}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,1}],{x,0}}.
    {allocate,0,1}.
    {call,1,{f,87}}. % silly_lc/1
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
    {call_last,1,{f,666},0}. % '-silly_lc/1-lc$^0/1-0-'/1


{function, gen_data, 1, 90}.
  {label,89}.
    {line,[{location,"bs_bincomp_SUITE.erl",217}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,gen_data},1}.
  {label,90}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,512}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",218}]}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{0,512}}},{integer,1}],{x,1}}.
    {move,{integer,0},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,91},1,[{x,0}],{x,0}}.
    {jump,{f,92}}.
  {label,91}.
    {move,{integer,256},{x,0}}.
  {label,92}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,662}}. % '-gen_data/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",219}]}.
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
    {call,2,{f,654}}. % '-gen_data/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,93},
          [{tr,{x,0},{t_bitstring,8,true}},{tr,{y,0},{t_bitstring,1,true}}]}.
    {deallocate,1}.
    return.
  {label,93}.
    {badmatch,{x,0}}.


{function, match_context_1, 1, 95}.
  {label,94}.
    {line,[{location,"bs_bincomp_SUITE.erl",222}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,match_context_1},1}.
  {label,95}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,651},1}. % '-match_context_1/1-lbc$^0/2-0-'/2


{function, match_context_2, 1, 97}.
  {label,96}.
    {line,[{location,"bs_bincomp_SUITE.erl",225}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,match_context_2},1}.
  {label,97}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {call_only,1,{f,99}}. % do_match_context_2/1


{function, do_match_context_2, 1, 99}.
  {label,98}.
    {line,[{location,"bs_bincomp_SUITE.erl",228}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,do_match_context_2},1}.
  {label,99}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,648},1}. % '-do_match_context_2/1-lbc$^0/2-0-'/2


{function, over_complex_generator, 0, 101}.
  {label,100}.
    {line,[{location,"bs_bincomp_SUITE.erl",232}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,over_complex_generator},0}.
  {label,101}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0:2>>},{x,0}}.
    {call_last,2,{f,641},0}. % '-over_complex_generator/0-lbc$^0/2-0-'/2


{function, float_segment_size, 0, 103}.
  {label,102}.
    {line,[{location,"bs_bincomp_SUITE.erl",247}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,float_segment_size},0}.
  {label,103}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{float,0.79},{x,2}}.
    {move,{integer,42},{x,0}}.
    {call_last,3,{f,639},0}. % '-float_segment_size/0-lbc$^0/2-0-'/3


{function, inconsistent_types_1, 1, 105}.
  {label,104}.
    {line,[{location,"bs_bincomp_SUITE.erl",263}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,inconsistent_types_1},1}.
  {label,105}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,636},1}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3


{function, inconsistent_types_2, 0, 107}.
  {label,106}.
    {line,[{location,"bs_bincomp_SUITE.erl",278}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,inconsistent_types_2},0}.
  {label,107}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",280}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",282}]}.
    {call,3,{f,632}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",280}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.


{function, filters, 1, 109}.
  {label,108}.
    {line,[{location,"bs_bincomp_SUITE.erl",290}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,filters},1}.
  {label,109}.
    {test,is_list,{f,108},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",291}]}.
    {call,0,{f,298}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",293}]}.
    {call,2,{f,628}}. % '-filters/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,118},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"BDF">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",296}]}.
    {call,2,{f,623}}. % '-filters/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,117},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",299}]}.
    {call,2,{f,618}}. % '-filters/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,116},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"efg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",302}]}.
    {call,2,{f,613}}. % '-filters/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,115},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"b">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",306}]}.
    {call,2,{f,608}}. % '-filters/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,114},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"eg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[],[a],[],[x,y,z]]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",310}]}.
    {call,2,{f,604}}. % '-filters/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,113},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<"M">>,<<1,2>>,<<"*">>]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",316}]}.
    {call,2,{f,600}}. % '-filters/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,112},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"M*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<97,98,227,100,229,0:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",319}]}.
    {call,2,{f,596}}. % '-filters/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,111},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abd">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,42,43,42]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",323}]}.
    {call,2,{f,592}}. % '-filters/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,110},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"**">>}]}.
    {call_last,0,{f,300},0}. % cs_end/0
  {label,110}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{location,"bs_bincomp_SUITE.erl",319}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{location,"bs_bincomp_SUITE.erl",316}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{location,"bs_bincomp_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{location,"bs_bincomp_SUITE.erl",306}]}.
    {badmatch,{x,0}}.
  {label,115}.
    {line,[{location,"bs_bincomp_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,116}.
    {line,[{location,"bs_bincomp_SUITE.erl",299}]}.
    {badmatch,{x,0}}.
  {label,117}.
    {line,[{location,"bs_bincomp_SUITE.erl",296}]}.
    {badmatch,{x,0}}.
  {label,118}.
    {line,[{location,"bs_bincomp_SUITE.erl",292}]}.
    {badmatch,{x,0}}.


{function, is_less_than, 2, 120}.
  {label,119}.
    {line,[{location,"bs_bincomp_SUITE.erl",326}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,is_less_than},2}.
  {label,120}.
    {'%',{var_info,{x,0},[{type,{t_integer,{65,71}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{68,69}}}]}}.
    {bif,'<',
         {f,0},
         [{tr,{x,0},{t_integer,{65,71}}},{tr,{x,1},{t_integer,{68,69}}}],
         {x,0}}.
    return.


{function, trim_coverage, 1, 122}.
  {label,121}.
    {line,[{location,"bs_bincomp_SUITE.erl",329}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,trim_coverage},1}.
  {label,122}.
    {test,is_list,{f,121},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,b},{x,1}}.
    {move,{literal,{1328,777134}},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",330}]}.
    {call,3,{f,128}}. % coverage_materialiv/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,126},
          [{tr,{x,0},{t_bitstring,32,false}},
           {literal,<<0,0,0,2,0,0,5,48,0,11,219,174,0,0,0,0>>}]}.
    {move,{literal,[42,19,777]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",331}]}.
    {call,1,{f,134}}. % coverage_trimmer/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,125},
          [{tr,{x,0},{t_bitstring,32,true}},
           {literal,<<67,40,0,0,66,152,0,0,69,66,64,0>>}]}.
    {move,{integer,777},{x,1}}.
    {move,{literal,{3.0,40.0,-3555.0}},{x,2}}.
    {move,{integer,555},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",334}]}.
    {call,3,{f,132}}. % coverage_lightfv/3
    {test,is_eq_exact,
          {f,124},
          [{x,0},
           {literal,<<0,0,2,43,0,0,3,9,0,0,0,3,64,8,0,0,0,0,0,0,64,68,0,0,0,
                      0,0,0,192,171,198,0,0,0,0,0>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",335}]}.
    {call,2,{f,138}}. % coverage_strange/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,123},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<"abcabc">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,123}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{location,"bs_bincomp_SUITE.erl",332}]}.
    {badmatch,{x,0}}.
  {label,125}.
    {line,[{location,"bs_bincomp_SUITE.erl",331}]}.
    {badmatch,{x,0}}.
  {label,126}.
    {line,[{location,"bs_bincomp_SUITE.erl",330}]}.
    {badmatch,{x,0}}.


{function, coverage_materialiv, 3, 128}.
  {label,127}.
    {line,[{location,"bs_bincomp_SUITE.erl",338}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,coverage_materialiv},3}.
  {label,128}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[b]}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1328,1328}},
                                     2 => {t_integer,{777134,777134}}}}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_bincomp_SUITE.erl",339}]}.
    {call,1,{f,313}}. % id/1
    {test,is_eq_exact,{f,130},[{x,0},{atom,a}]}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",340}]}.
    {call,1,{f,313}}. % id/1
    {test,is_eq_exact,{f,129},[{x,0},{atom,b}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1328,777134]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",342}]}.
    {call,2,{f,589}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",341}]}.
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
  {label,129}.
    {line,[{location,"bs_bincomp_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,130}.
    {line,[{location,"bs_bincomp_SUITE.erl",339}]}.
    {badmatch,{x,0}}.


{function, coverage_lightfv, 3, 132}.
  {label,131}.
    {line,[{location,"bs_bincomp_SUITE.erl",345}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,coverage_lightfv},3}.
  {label,132}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",347}]}.
    {call,2,{f,586}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",346}]}.
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
    {call_last,1,{f,313},0}. % id/1


{function, coverage_trimmer, 1, 134}.
  {label,133}.
    {line,[{location,"bs_bincomp_SUITE.erl",350}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,coverage_trimmer},1}.
  {label,134}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{19,777}},nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",351}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",352}]}.
    {call,1,{f,313}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",353}]}.
    {call,1,{f,313}}. % id/1
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,582},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2


{function, coverage_summer, 4, 136}.
  {label,135}.
    {line,[{location,"bs_bincomp_SUITE.erl",358}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,coverage_summer},4}.
  {label,136}.
    {'%',{var_info,{x,2},[{type,{t_integer,{19,777}}}]}}.
    {gc_bif,'+',{f,0},4,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,0},{t_number,any}},{tr,{x,2},{t_integer,{19,777}}}],
            {x,0}}.
    {gc_bif,'+',{f,0},4,[{tr,{x,0},{t_number,any}},{x,3}],{x,0}}.
    return.


{function, coverage_strange, 2, 138}.
  {label,137}.
    {line,[{location,"bs_bincomp_SUITE.erl",360}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,coverage_strange},2}.
  {label,138}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",362}]}.
    {call,2,{f,579}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {line,[]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{y,1},{t_bitstring,8,false}}],{x,1}}.
    {gc_bif,'bsr',
            {f,0},
            2,
            [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,3}],
            {x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_bincomp_SUITE.erl",363}]}.
    {call,2,{f,576}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",361}]}.
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


{function, nomatch, 1, 140}.
  {label,139}.
    {line,[{location,"bs_bincomp_SUITE.erl",374}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,nomatch},1}.
  {label,140}.
    {test,is_list,{f,139},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",375}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",376}]}.
    {call,2,{f,573}}. % '-nomatch/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,152},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",377}]}.
    {call,1,{f,571}}. % '-nomatch/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",378}]}.
    {call,1,{f,568}}. % '-nomatch/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",379}]}.
    {call,2,{f,566}}. % '-nomatch/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,151},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",380}]}.
    {call,2,{f,563}}. % '-nomatch/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,150},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",382}]}.
    {call,2,{f,558}}. % '-nomatch/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,149},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",385}]}.
    {call,2,{f,554}}. % '-nomatch/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,148},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",387}]}.
    {call,2,{f,154}}. % nomatch_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,147},
          [{tr,{x,0},{t_bitstring,32,true}},
           {literal,<<0,0,0,1,0,0,0,2,0,0,0,3>>}]}.
    {move,{atom,bad},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",388}]}.
    {call,2,{f,154}}. % nomatch_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,146},
          [{tr,{x,0},{t_bitstring,32,true}},{literal,<<>>}]}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",390}]}.
    {call,2,{f,551}}. % '-nomatch/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,145},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",395}]}.
    {call,2,{f,549}}. % '-nomatch/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,313}}. % id/1
    {test,is_eq_exact,{f,144},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",396}]}.
    {call,2,{f,547}}. % '-nomatch/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,313}}. % id/1
    {test,is_eq_exact,{f,143},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,141}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",398}]}.
    {call,2,{f,545}}. % '-nomatch/1-lbc$^12/2-12-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,141}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,142},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,142},[{x,1}]}.
    {test,test_arity,{f,142},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,142},[{x,1},{literal,{bad_generator,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,142}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",398}]}.
    {badmatch,{x,0}}.
  {label,143}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",396}]}.
    {badmatch,{x,0}}.
  {label,144}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",395}]}.
    {badmatch,{x,0}}.
  {label,145}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,146}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",387}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",385}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",382}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",380}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",379}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",376}]}.
    {badmatch,{x,0}}.


{function, nomatch_1, 2, 154}.
  {label,153}.
    {line,[{location,"bs_bincomp_SUITE.erl",402}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,nomatch_1},2}.
  {label,154}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
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
    {call_last,3,{f,542},2}. % '-nomatch_1/2-lbc$^0/2-0-'/3


{function, sizes, 1, 156}.
  {label,155}.
    {line,[{location,"bs_bincomp_SUITE.erl",405}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,sizes},1}.
  {label,156}.
    {test,is_list,{f,155},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",406}]}.
    {call,0,{f,298}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",410}]}.
    {call,1,{f,534}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",411}]}.
    {call,1,{f,534}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",412}]}.
    {call,1,{f,534}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,211},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",413}]}.
    {call,1,{f,534}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,210},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",418}]}.
    {call,1,{f,526}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",419}]}.
    {call,1,{f,526}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,208},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1>>}]}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",420}]}.
    {call,1,{f,526}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,207},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2>>}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",421}]}.
    {call,1,{f,526}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2,0,3>>}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",426}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,205},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",427}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,204},{x,1},{commands,[{ensure_exactly,4},{'=:=',nil,4,1}]}}.
    {move,{literal,[1,13]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",428}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,203},{x,1},{commands,[{ensure_exactly,8},{'=:=',nil,8,29}]}}.
    {move,{literal,[1,13,7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",429}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,202},
              {x,1},
              {commands,[{ensure_exactly,12},{'=:=',nil,12,471}]}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2000},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",430}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {call,1,{f,518}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,201},
              {x,1},
              {commands,[{ensure_at_least,8000,1},
                         {integer,2,{literal,[]},1000,8,{x,2}}]}}.
    {test,is_eq_exact,{f,201},[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {bs_match,{f,201},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",435}]}.
    {call,1,{f,510}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,200},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1,2,1,3,0,7,5]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",436}]}.
    {call,1,{f,510}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,199},
              {x,1},
              {commands,[{ensure_exactly,21},{'=:=',nil,21,333373}]}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,512},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",437}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {call,1,{f,510}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,198},
              {x,1},
              {commands,[{ensure_at_least,1536,1},
                         {integer,2,{literal,[]},512,3,{x,2}}]}}.
    {test,is_eq_exact,{f,198},[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {bs_match,{f,198},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,8},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",442}]}.
    {call,2,{f,502}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,197},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,6},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",443}]}.
    {call,2,{f,502}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,196},{x,1},{commands,[{ensure_exactly,6},{'=:=',nil,6,42}]}}.
    {move,{integer,16},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",444}]}.
    {call,2,{f,502}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,195},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,42>>}]}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,3}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",449}]}.
    {call,4,{f,494}}. % '-sizes/1-fun-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,194},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,3},{x,1}}.
    {move,{integer,7},{x,3}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",450}]}.
    {call,4,{f,494}}. % '-sizes/1-fun-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,193},
          [{x,1},99,{string,<<224,0,0,0,1,0,0,0,0,0,0,1,32>>}]}.
    {bs_match,{f,193},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,3}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",456}]}.
    {call,4,{f,486}}. % '-sizes/1-fun-13-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,192},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,3},{x,1}}.
    {move,{integer,7},{x,3}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",457}]}.
    {call,4,{f,486}}. % '-sizes/1-fun-13-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,191},
          [{x,1},
           171,
           {string,<<97,98,99,224,0,0,0,1,14,46,46,32,0,0,0,0,0,1,47,15,47,
                     64>>}]}.
    {bs_match,{f,191},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,42},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",462}]}.
    {call,2,{f,478}}. % '-sizes/1-fun-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,190},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,20},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",463}]}.
    {call,2,{f,478}}. % '-sizes/1-fun-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,189},
              {x,1},
              {commands,[{ensure_exactly,28},{'=:=',nil,28,44040235}]}}.
    {move,{literal,"Foundation"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",468}]}.
    {call,1,{f,472}}. % '-sizes/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,188},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"Foundation">>}]}.
    {move,{literal,[1054,1089,1085,1086,1074,1072,1085,1080,1077]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",469}]}.
    {call,1,{f,472}}. % '-sizes/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,187},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",476}]}.
    {call,1,{f,464}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,186},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",477}]}.
    {call,1,{f,464}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,185},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1>>}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",478}]}.
    {call,1,{f,464}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,184},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",483}]}.
    {call,1,{f,456}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,183},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",484}]}.
    {call,1,{f,456}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,182},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,<<0,1,0,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",485}]}.
    {call,1,{f,456}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,181},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",486}]}.
    {call,1,{f,456}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,180},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,0:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",487}]}.
    {call,1,{f,456}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,179},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",488}]}.
    {call,1,{f,456}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,178},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,21,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",489}]}.
    {call,1,{f,456}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,177},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,1,127:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",490}]}.
    {call,1,{f,456}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,176},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",495}]}.
    {call,3,{f,448}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,175},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,255},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",496}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",497}]}.
    {call,3,{f,448}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,174},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,4},{x,1}}.
    {move,{integer,4},{x,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",498}]}.
    {call,3,{f,448}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,173},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,8},{x,1}}.
    {move,{integer,8},{x,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",499}]}.
    {call,3,{f,448}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,172},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,9},{x,1}}.
    {move,{integer,6},{x,2}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<69,3:4>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",500}]}.
    {call,3,{f,448}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,171},
              {x,1},
              {commands,[{ensure_exactly,18},{'=:=',nil,18,8723}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",505}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,170},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",506}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,169},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",507}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,168},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,6},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",508}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,167},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",509}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,166},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",510}]}.
    {call,1,{f,443}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,165},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0,0>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",512}]}.
    {call,2,{f,440}}. % '-sizes/1-lbc$^26/2-13-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,164},{x,1},{commands,[{ensure_exactly,3},{'=:=',nil,3,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",513}]}.
    {call,2,{f,437}}. % '-sizes/1-lbc$^27/2-14-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,163},{x,1},{commands,[{ensure_exactly,3},{'=:=',nil,3,0}]}}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",518}]}.
    {call,2,{f,427}}. % '-sizes/1-fun-30-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,162},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,97,0,0,0,98,0,0,0,99,0,0,97,98>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{literal,[8,bad]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",519}]}.
    {call,2,{f,427}}. % '-sizes/1-fun-30-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,161},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>}]}.
    {move,{literal,<<0,0,0,70,0,0,0,111,0,0,0,117,0,0,0,110,0,0,0,100,0,0,0,
                     97,0,0,0,116,0,0,0,105,0,0,0,111,0,0,0,110>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",524}]}.
    {call,1,{f,421}}. % '-sizes/1-fun-32-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,160},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"Foundation">>}]}.
    {move,{literal,<<0,0,4,30,0,0,4,65,0,0,4,61,0,0,4,62,0,0,4,50,0,0,4,48,0,
                     0,4,61,0,0,4,56,0,0,4,53>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",525}]}.
    {call,1,{f,421}}. % '-sizes/1-fun-32-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,159},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,157}}.
    {move,{literal,{1,2,3}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",527}]}.
    {call,2,{f,419}}. % '-sizes/1-lbc$^33/2-18-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,157}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,158},[{x,0},2,{atom,'EXIT'}]}.
    {call_last,0,{f,300},1}. % cs_end/0
  {label,158}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",527}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",525}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",524}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",519}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",518}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",513}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",512}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",510}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",509}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",508}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",507}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",506}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",505}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",500}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",499}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",498}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",497}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",495}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",490}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",489}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",488}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",487}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",486}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",485}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",484}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",483}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",478}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",477}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",476}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",469}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",468}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",463}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",462}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",457}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",456}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",450}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",449}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",444}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",437}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",426}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",413}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",410}]}.
    {badmatch,{x,0}}.


{function, general_expressions, 1, 215}.
  {label,214}.
    {line,[{location,"bs_bincomp_SUITE.erl",535}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,general_expressions},1}.
  {label,215}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",536}]}.
    {call,0,{f,298}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",538}]}.
    {call,2,{f,416}}. % '-general_expressions/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,239},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",539}]}.
    {call,2,{f,413}}. % '-general_expressions/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,238},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",540}]}.
    {call,2,{f,410}}. % '-general_expressions/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,237},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<1,2>>,<<3>>]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",544}]}.
    {call,2,{f,407}}. % '-general_expressions/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,236},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",545}]}.
    {call,2,{f,404}}. % '-general_expressions/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,235},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4,5]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",546}]}.
    {call,2,{f,399}}. % '-general_expressions/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,234},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",550}]}.
    {call,2,{f,393}}. % '-general_expressions/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,233},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,4,5,6,7>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",552}]}.
    {call,2,{f,388}}. % '-general_expressions/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,232},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,2,3,4,4>>}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,<<"*">>},{x,1}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",556}]}.
    send.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",557}]}.
    {call,2,{f,383}}. % '-general_expressions/1-lbc$^9/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,231},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",558}]}.
    {call,2,{f,378}}. % '-general_expressions/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,230},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<10,5,3>>}]}.
    {move,{literal,"3A7"},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",564}]}.
    {call,1,{f,241}}. % hstring_to_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,229},
              {x,1},
              {commands,[{ensure_exactly,12},{'=:=',nil,12,935}]}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",565}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{literal,{65,8}},{x,0}}.
    {call,1,{f,313}}. % id/1
    {move,{y,5},{x,1}}.
    {move,{x,0},{x,2}}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{literal,"ABCDEFGH"},{x,0}}.
    {call,3,{f,248}}. % encode_chars_compact_map/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,228},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,342391}]}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",567}]}.
    {call,0,{f,300}}. % cs_end/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,5},{f,216}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",570}]}.
    {call,2,{f,376}}. % '-general_expressions/1-lbc$^11/2-11-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,216}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,227},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,227},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,4},{f,217}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_bincomp_SUITE.erl",571}]}.
    {call,2,{f,374}}. % '-general_expressions/1-lbc$^12/2-12-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,217}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,226},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,226},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,3},{f,218}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_bincomp_SUITE.erl",572}]}.
    {call,2,{f,372}}. % '-general_expressions/1-lbc$^13/2-13-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,218}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,225},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,225},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,2},{f,219}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_bincomp_SUITE.erl",573}]}.
    {call,2,{f,370}}. % '-general_expressions/1-lbc$^14/2-14-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,219}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,224},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,224},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,1},{f,220}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_bincomp_SUITE.erl",574}]}.
    {call,2,{f,368}}. % '-general_expressions/1-lbc$^15/2-15-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,220}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,223},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,223},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,221}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_bincomp_SUITE.erl",575}]}.
    {call,2,{f,363}}. % '-general_expressions/1-lbc$^16/2-16-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
  {label,221}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,222},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,222},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,222}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,224}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",573}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",565}]}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",564}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",546}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",545}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",544}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",540}]}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",539}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",538}]}.
    {badmatch,{x,0}}.


{function, hstring_to_bitstring, 1, 241}.
  {label,240}.
    {line,[{location,"bs_bincomp_SUITE.erl",579}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,hstring_to_bitstring},1}.
  {label,241}.
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
            {f,242},
            1,
            [{tr,{x,0},{t_integer,{4,1152921504606846972}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{11,1152921504606846979}}},{integer,3}],
            {x,0}}.
    {jump,{f,243}}.
  {label,242}.
    {move,{integer,256},{x,0}}.
  {label,243}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,360},1}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2


{function, hex_to_int, 1, 245}.
  {label,244}.
    {line,[{location,"bs_bincomp_SUITE.erl",582}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,hex_to_int},1}.
  {label,245}.
    {'%',{var_info,{x,0},[{type,{t_integer,{51,65}}}]}}.
    {test,is_ge,{f,246},[{integer,57},{tr,{x,0},{t_integer,{51,65}}}]}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{51,57}}},{integer,48}],{x,0}}.
    return.
  {label,246}.
    {test,is_ge,{f,244},[{tr,{x,0},{t_integer,{58,65}}},{integer,65}]}.
    {move,{integer,10},{x,0}}.
    return.


{function, encode_chars_compact_map, 3, 248}.
  {label,247}.
    {line,[{location,"bs_bincomp_SUITE.erl",585}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,encode_chars_compact_map},3}.
  {label,248}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{65,72}},nil}}]}}.
    {test,is_tuple,{f,247},[{x,2}]}.
    {test,test_arity,{f,247},[{x,2},2]}.
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
            {f,249},
            2,
            [{tr,{x,0},{t_integer,{1,288230376151711743}}},{x,1}],
            {x,0}}.
    {gc_bif,'+',{f,249},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,249},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,250}}.
  {label,249}.
    {move,{integer,256},{x,0}}.
  {label,250}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {get_tuple_element,{y,0},0,{x,4}}.
    {get_tuple_element,{y,0},1,{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,5,{f,357},3}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5


{function, enc_char_cm, 3, 252}.
  {label,251}.
    {line,[{location,"bs_bincomp_SUITE.erl",588}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,enc_char_cm},3}.
  {label,252}.
    {'%',{var_info,{x,0},[{type,{t_integer,{65,72}}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",589}]}.
    {gc_bif,'-',{f,0},3,[{tr,{x,0},{t_integer,{65,72}}},{x,1}],{x,0}}.
    {test,is_ge,{f,253},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {test,is_lt,{f,253},[{tr,{x,0},{t_number,{0,'+inf'}}},{x,2}]}.
    return.
  {label,253}.
    {move,{atom,illegal},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",594}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, no_generator, 1, 255}.
  {label,254}.
    {line,[{location,"bs_bincomp_SUITE.erl",599}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,no_generator},1}.
  {label,255}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",600}]}.
    {call,1,{f,313}}. % id/1
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
          {f,259},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test,is_eq_exact,
          {f,258},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {'catch',{y,0},{f,256}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",604}]}.
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
  {label,256}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,257},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,257},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,257}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",604}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",601}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",600}]}.
    {badmatch,{x,0}}.


{function, zero_pattern, 1, 261}.
  {label,260}.
    {line,[{location,"bs_bincomp_SUITE.erl",608}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,zero_pattern},1}.
  {label,261}.
    {test,is_atom,{f,262},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,2,{f,355},0}. % '-zero_pattern/1-lbc$^0/2-0-'/2
  {label,262}.
    {move,{atom,ok},{x,0}}.
    return.


{function, multiple_segments, 1, 264}.
  {label,263}.
    {line,[{location,"bs_bincomp_SUITE.erl",629}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,multiple_segments},1}.
  {label,264}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",630}]}.
    {call,0,{f,298}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<4,16,66>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",632}]}.
    {call,1,{f,276}}. % matched_out_size/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,274},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[1,2]}]}.
    {move,{literal,<<16,0,42,72>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",633}]}.
    {call,1,{f,276}}. % matched_out_size/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,273},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,"*"}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",635}]}.
    {call,1,{f,279}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,272},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",636}]}.
    {call,1,{f,279}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,271},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",637}]}.
    {call,1,{f,279}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,270},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",638}]}.
    {call,1,{f,279}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,269},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<99,0,1,1,2,3,4,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",639}]}.
    {call,1,{f,279}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_eq_exact,
          {f,268},
          [{tr,{x,0},{t_list,{t_integer,{0,255}},nil}},{literal,[1,4]}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",641}]}.
    {call,1,{f,282}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_nil,{f,267},[{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",642}]}.
    {call,1,{f,282}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,266},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[6]}]}.
    {move,{literal,<<1,2,3,4,5,6,7,8>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",643}]}.
    {call,1,{f,282}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,265},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[6,15]}]}.
    {call_last,0,{f,300},0}. % cs_end/0
  {label,265}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{location,"bs_bincomp_SUITE.erl",642}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{location,"bs_bincomp_SUITE.erl",641}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{location,"bs_bincomp_SUITE.erl",639}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{location,"bs_bincomp_SUITE.erl",638}]}.
    {badmatch,{x,0}}.
  {label,270}.
    {line,[{location,"bs_bincomp_SUITE.erl",637}]}.
    {badmatch,{x,0}}.
  {label,271}.
    {line,[{location,"bs_bincomp_SUITE.erl",636}]}.
    {badmatch,{x,0}}.
  {label,272}.
    {line,[{location,"bs_bincomp_SUITE.erl",635}]}.
    {badmatch,{x,0}}.
  {label,273}.
    {line,[{location,"bs_bincomp_SUITE.erl",633}]}.
    {badmatch,{x,0}}.
  {label,274}.
    {line,[{location,"bs_bincomp_SUITE.erl",632}]}.
    {badmatch,{x,0}}.


{function, matched_out_size, 1, 276}.
  {label,275}.
    {line,[{location,"bs_bincomp_SUITE.erl",648}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,matched_out_size},1}.
  {label,276}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",649}]}.
    {call,2,{f,351}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",650}]}.
    {call,1,{f,347}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",651}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,
          {f,277},
          [{tr,{x,0},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,1,true}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,277}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_1, 1, 279}.
  {label,278}.
    {line,[{location,"bs_bincomp_SUITE.erl",654}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,do_multiple_segments_1},1}.
  {label,279}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",655}]}.
    {call,2,{f,343}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,305}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",656}]}.
    {call,1,{f,339}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",657}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,
          {f,280},
          [{tr,{x,0},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,1,true}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,280}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_2, 1, 282}.
  {label,281}.
    {line,[{location,"bs_bincomp_SUITE.erl",660}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,do_multiple_segments_2},1}.
  {label,282}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {gc_bif,'div',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,24}],
            {x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",661}]}.
    {call,2,{f,336}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,302}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",662}]}.
    {call,1,{f,333}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",663}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,
          {f,283},
          [{tr,{x,0},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,1,true}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,283}.
    {badmatch,{x,0}}.


{function, grab_bag, 1, 285}.
  {label,284}.
    {line,[{location,"bs_bincomp_SUITE.erl",666}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,grab_bag},1}.
  {label,285}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {'catch',{y,3},{f,286}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",667}]}.
    {call,1,{f,294}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,286}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,292},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,292},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,287}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_bincomp_SUITE.erl",668}]}.
    {call,1,{f,294}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,287}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,291},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,291},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,288}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_bincomp_SUITE.erl",669}]}.
    {call,1,{f,294}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,288}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,290},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,290},[{x,1}]}.
    {test,test_arity,{f,290},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,290},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,0},{f,289}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",672}]}.
    {call,2,{f,331}}. % '-grab_bag/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,289}.
    {try_case,{y,0}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,290}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",669}]}.
    {badmatch,{x,0}}.
  {label,291}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",668}]}.
    {badmatch,{x,0}}.
  {label,292}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",667}]}.
    {badmatch,{x,0}}.


{function, grab_bag_gh_6553, 1, 294}.
  {label,293}.
    {line,[{location,"bs_bincomp_SUITE.erl",676}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,grab_bag_gh_6553},1}.
  {label,294}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,none,none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,296},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,295},{x,0},{commands,[{ensure_at_least,8,1}]}}.
    {test,bs_get_integer2,
          {f,295},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[676,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,295},{x,0},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",678}]}.
    {badmatch,{literal,<<>>}}.
  {label,295}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,293}}.
  {label,296}.
    {move,{atom,a},{x,0}}.
    {jump,{f,293}}.


{function, cs_init, 0, 298}.
  {label,297}.
    {line,[{location,"bs_bincomp_SUITE.erl",680}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs_init},0}.
  {label,298}.
    {allocate,0,0}.
    {move,{atom,true},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",681}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs_end, 0, 300}.
  {label,299}.
    {line,[{location,"bs_bincomp_SUITE.erl",684}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs_end},0}.
  {label,300}.
    {allocate,0,0}.
    {move,{atom,false},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",685}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs, 1, 302}.
  {label,301}.
    {line,[{location,"bs_bincomp_SUITE.erl",689}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs},1}.
  {label,302}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",710}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,true}}],{y,0}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,binary_info},{y,1}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",712}]}.
    {call_ext,1,{extfunc,erts_debug,get_internal_state,1}}.
    {test,is_tagged_tuple,{f,303},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tagged_tuple,{f,303},[{x,1},2,{atom,binary}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,
          {f,303},
          [{x,2},{tr,{y,0},{t_integer,{0,288230376151711743}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,303},
          [{x,1},{tr,{y,0},{t_integer,{0,288230376151711743}}}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,303}.
    {line,[{location,"bs_bincomp_SUITE.erl",711}]}.
    {badmatch,{x,0}}.


{function, cs_default, 1, 305}.
  {label,304}.
    {line,[{location,"bs_bincomp_SUITE.erl",717}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs_default},1}.
  {label,305}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",718}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,true}}],{y,0}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,binary_info},{y,1}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",720}]}.
    {call_ext,1,{extfunc,erts_debug,get_internal_state,1}}.
    {test,is_tagged_tuple,{f,306},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,306},[{x,1},{literal,{binary,256}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,306},
          [{x,1},{tr,{y,0},{t_integer,{0,288230376151711743}}}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,306}.
    {line,[{location,"bs_bincomp_SUITE.erl",719}]}.
    {badmatch,{x,0}}.


{function, float_skip, 1, 308}.
  {label,307}.
    {line,[{location,"bs_bincomp_SUITE.erl",723}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,float_skip},1}.
  {label,308}.
    {test,is_list,{f,307},[{x,0}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",725}]}.
    {bs_create_bin,{f,0},
                   0,0,256,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {literal,<<"ÿÿÿÿÿÿÿÿ">>},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<63,240,0,0,0,0,0,0,63,248,0,0,0,0,0,0,64,
                                    105,0,0,0,0,0,0>>},
                          {integer,24}]}}.
    {allocate,0,1}.
    {call,1,{f,327}}. % '-float_skip/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,311},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[1.0,1.5,200.0]}]}.
    {move,{literal,<<64,56,0,0,0,0,0,0,255,255,255,255,255,255,255,255,64,72,
                     64,0,0,0,0,0,64,53,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",727}]}.
    {call,1,{f,323}}. % '-float_skip/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,310},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[24.0,48.5,21.0]}]}.
    {move,{literal,<<0,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255,0,0,0,0,
                     0,0,0,0,63,240,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",729}]}.
    {call,1,{f,319}}. % '-float_skip/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a]},nil}}]}}.
    {test,is_eq_exact,
          {f,309},
          [{tr,{x,0},{t_list,{t_atom,[a]},nil}},{literal,[a,a]}]}.
    {deallocate,0}.
    return.
  {label,309}.
    {badmatch,{x,0}}.
  {label,310}.
    {line,[{location,"bs_bincomp_SUITE.erl",727}]}.
    {badmatch,{x,0}}.
  {label,311}.
    {line,[{location,"bs_bincomp_SUITE.erl",725}]}.
    {badmatch,{x,0}}.


{function, id, 1, 313}.
  {label,312}.
    {line,[{location,"bs_bincomp_SUITE.erl",732}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,id},1}.
  {label,313}.
    return.


{function, module_info, 0, 315}.
  {label,314}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,module_info},0}.
  {label,315}.
    {move,{atom,bs_bincomp_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 317}.
  {label,316}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,module_info},1}.
  {label,317}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_bincomp_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-float_skip/1-lc$^2/1-2-', 1, 319}.
  {label,318}.
    {line,[{location,"bs_bincomp_SUITE.erl",729}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-float_skip/1-lc$^2/1-2-'},1}.
  {label,319}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_float2,
          {f,320},
          2,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[729,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,320},[{tr,{x,2},{t_float,any}},{float,0.0}]}.
    {allocate,0,1}.
    {call,1,{f,319}}. % '-float_skip/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,a},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,320}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,321},{x,0},{commands,[{ensure_at_least,64,1},{skip,64}]}}.
    {call_only,1,{f,319}}. % '-float_skip/1-lc$^2/1-2-'/1
  {label,321}.
    {move,nil,{x,0}}.
    return.


{function, '-float_skip/1-lc$^1/1-1-', 1, 323}.
  {label,322}.
    {line,[{location,"bs_bincomp_SUITE.erl",727}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-float_skip/1-lc$^1/1-1-'},1}.
  {label,323}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,324},
          1,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[727,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,323}}. % '-float_skip/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,324}.
    {bs_match,{f,325},{x,0},{commands,[{ensure_at_least,64,1},{skip,64}]}}.
    {call_only,1,{f,323}}. % '-float_skip/1-lc$^1/1-1-'/1
  {label,325}.
    {move,nil,{x,0}}.
    return.


{function, '-float_skip/1-lc$^0/1-0-', 1, 327}.
  {label,326}.
    {line,[{location,"bs_bincomp_SUITE.erl",725}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-float_skip/1-lc$^0/1-0-'},1}.
  {label,327}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,328},
          1,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[725,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,327}}. % '-float_skip/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,328}.
    {bs_match,{f,329},{x,0},{commands,[{ensure_at_least,64,1},{skip,64}]}}.
    {call_only,1,{f,327}}. % '-float_skip/1-lc$^0/1-0-'/1
  {label,329}.
    {move,nil,{x,0}}.
    return.


{function, '-grab_bag/1-lbc$^0/2-0-', 2, 331}.
  {label,330}.
    {line,[{location,"bs_bincomp_SUITE.erl",672}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-grab_bag/1-lbc$^0/2-0-'},2}.
  {label,331}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lc$^1/1-1-', 1, 333}.
  {label,332}.
    {line,[{location,"bs_bincomp_SUITE.erl",662}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_2/1-lc$^1/1-1-'},
               1}.
  {label,333}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,334},
              {x,0},
              {commands,[{ensure_at_least,24,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
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
    {call,1,{f,333}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,334}.
    {move,nil,{x,0}}.
    return.


{function, '-do_multiple_segments_2/1-lbc$^0/2-0-', 2, 336}.
  {label,335}.
    {line,[{location,"bs_bincomp_SUITE.erl",661}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_2/1-lbc$^0/2-0-'},
               2}.
  {label,336}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,337},
              {x,0},
              {commands,[{ensure_at_least,24,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
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
    {call_only,2,{f,336}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
  {label,337}.
    {move,{x,1},{x,0}}.
    return.


{function, '-do_multiple_segments_1/1-lc$^1/1-1-', 1, 339}.
  {label,338}.
    {line,[{location,"bs_bincomp_SUITE.erl",656}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_1/1-lc$^1/1-1-'},
               1}.
  {label,339}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,341},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,340},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,339}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,340}.
    {call_only,1,{f,339}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
  {label,341}.
    {move,nil,{x,0}}.
    return.


{function, '-do_multiple_segments_1/1-lbc$^0/2-0-', 2, 343}.
  {label,342}.
    {line,[{location,"bs_bincomp_SUITE.erl",655}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_1/1-lbc$^0/2-0-'},
               2}.
  {label,343}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,345},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,
          {f,344},
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
    {call_only,2,{f,343}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,344}.
    {call_only,2,{f,343}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,345}.
    {move,{x,1},{x,0}}.
    return.


{function, '-matched_out_size/1-lc$^1/1-1-', 1, 347}.
  {label,346}.
    {line,[{location,"bs_bincomp_SUITE.erl",650}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-matched_out_size/1-lc$^1/1-1-'},
               1}.
  {label,347}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,348},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,348},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,347}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,348}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,349},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_skip_bits2,
          {f,349},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[650,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,347}}. % '-matched_out_size/1-lc$^1/1-1-'/1
  {label,349}.
    {move,nil,{x,0}}.
    return.


{function, '-matched_out_size/1-lbc$^0/2-0-', 2, 351}.
  {label,350}.
    {line,[{location,"bs_bincomp_SUITE.erl",649}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-matched_out_size/1-lbc$^0/2-0-'},
               2}.
  {label,351}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,352},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,352},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
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
                          {tr,{x,3},{t_integer,{0,'+inf'}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,351}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,352}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,353},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_skip_bits2,
          {f,353},
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[649,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,2,{f,351}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,353}.
    {move,{x,1},{x,0}}.
    return.


{function, '-zero_pattern/1-lbc$^0/2-0-', 2, 355}.
  {label,354}.
    {line,[{location,"bs_bincomp_SUITE.erl",613}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-zero_pattern/1-lbc$^0/2-0-'},2}.
  {label,355}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,256}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_create_bin,{f,0},
                   0,2,256,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,256,true}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {call_only,2,{f,355}}. % '-zero_pattern/1-lbc$^0/2-0-'/2


{function, '-encode_chars_compact_map/3-lbc$^0/2-0-', 5, 357}.
  {label,356}.
    {line,[{location,"bs_bincomp_SUITE.erl",586}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-encode_chars_compact_map/3-lbc$^0/2-0-'},
               5}.
  {label,357}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,72}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,358},[{x,0}]}.
    {allocate,5,5}.
    {move,{x,4},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,2},{y,4}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,1}}.
    {call,3,{f,252}}. % enc_char_cm/3
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
    {call_last,5,{f,357},5}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5
  {label,358}.
    {move,{x,1},{x,0}}.
    return.


{function, '-hstring_to_bitstring/1-lbc$^0/2-0-', 2, 360}.
  {label,359}.
    {line,[{location,"bs_bincomp_SUITE.erl",580}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-hstring_to_bitstring/1-lbc$^0/2-0-'},
               2}.
  {label,360}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{51,65}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,4,true}}]}}.
    {test,is_nonempty_list,{f,361},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,245}}. % hex_to_int/1
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
    {call_last,2,{f,360},2}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2
  {label,361}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^16/2-16-', 2, 363}.
  {label,362}.
    {line,[{location,"bs_bincomp_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^16/2-16-'},
               2}.
  {label,363}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,364},[{x,0}]}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {get_list,{x,0},{x,2},{x,0}}.
    {make_fun3,{f,366},0,0,{x,2},{list,[{x,2}]}}.
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
    {call_only,2,{f,363}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,364}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-fun-17-', 1, 366}.
  {label,365}.
    {line,[{location,"bs_bincomp_SUITE.erl",575}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-fun-17-'},
               1}.
  {label,366}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,3}}}]}}.
    return.


{function, '-general_expressions/1-lbc$^15/2-15-', 2, 368}.
  {label,367}.
    {line,[{location,"bs_bincomp_SUITE.erl",574}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^15/2-15-'},
               2}.
  {label,368}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^14/2-14-', 2, 370}.
  {label,369}.
    {line,[{location,"bs_bincomp_SUITE.erl",573}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^14/2-14-'},
               2}.
  {label,370}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^13/2-13-', 2, 372}.
  {label,371}.
    {line,[{location,"bs_bincomp_SUITE.erl",572}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^13/2-13-'},
               2}.
  {label,372}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^12/2-12-', 2, 374}.
  {label,373}.
    {line,[{location,"bs_bincomp_SUITE.erl",571}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^12/2-12-'},
               2}.
  {label,374}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^11/2-11-', 2, 376}.
  {label,375}.
    {line,[{location,"bs_bincomp_SUITE.erl",570}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^11/2-11-'},
               2}.
  {label,376}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^10/2-10-', 2, 378}.
  {label,377}.
    {line,[{location,"bs_bincomp_SUITE.erl",558}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^10/2-10-'},
               2}.
  {label,378}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,381},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'div',{f,379},3,[{integer,10},{tr,{x,2},{t_integer,{0,3}}}],{x,2}}.
    {line,[{location,"bs_bincomp_SUITE.erl",559}]}.
    {bs_create_bin,{f,379},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{3,10}}},
                          {integer,8}]}}.
    {jump,{f,380}}.
  {label,379}.
    {move,{literal,<<>>},{x,2}}.
  {label,380}.
    {line,[{location,"bs_bincomp_SUITE.erl",558}]}.
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
    {call_only,2,{f,378}}. % '-general_expressions/1-lbc$^10/2-10-'/2
  {label,381}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^9/2-9-', 2, 383}.
  {label,382}.
    {line,[{location,"bs_bincomp_SUITE.erl",557}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^9/2-9-'},
               2}.
  {label,383}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,386},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
  {label,384}.
    {loop_rec,{f,385},{x,0}}.
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
    {call_last,2,{f,383},2}. % '-general_expressions/1-lbc$^9/2-9-'/2
  {label,385}.
    {wait,{f,384}}.
  {label,386}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^8/2-8-', 2, 388}.
  {label,387}.
    {line,[{location,"bs_bincomp_SUITE.erl",552}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^8/2-8-'},
               2}.
  {label,388}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,391},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",553}]}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{1,4}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,389},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
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
    {jump,{f,390}}.
  {label,389}.
    {line,[{location,"bs_bincomp_SUITE.erl",554}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,4}}},
                          {integer,8}]}}.
  {label,390}.
    {line,[{location,"bs_bincomp_SUITE.erl",552}]}.
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
    {call_only,2,{f,388}}. % '-general_expressions/1-lbc$^8/2-8-'/2
  {label,391}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^6/2-6-', 2, 393}.
  {label,392}.
    {line,[{location,"bs_bincomp_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^6/2-6-'},
               2}.
  {label,393}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,394},[{x,0}]}.
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
    {call,2,{f,396}}. % '-general_expressions/1-lbc$^7/2-7-'/2
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
    {call_last,2,{f,393},2}. % '-general_expressions/1-lbc$^6/2-6-'/2
  {label,394}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^7/2-7-', 2, 396}.
  {label,395}.
    {line,[{location,"bs_bincomp_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^7/2-7-'},
               2}.
  {label,396}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{2,'+inf'}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,397},[{x,0}]}.
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
    {call,1,{f,313}}. % id/1
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
    {call_last,2,{f,396},2}. % '-general_expressions/1-lbc$^7/2-7-'/2
  {label,397}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^5/2-5-', 2, 399}.
  {label,398}.
    {line,[{location,"bs_bincomp_SUITE.erl",546}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^5/2-5-'},
               2}.
  {label,399}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,402},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{1,5}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,400},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",547}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,5}}},
                          {integer,8}]}}.
    {jump,{f,401}}.
  {label,400}.
    {move,{literal,<<>>},{x,2}}.
  {label,401}.
    {line,[{location,"bs_bincomp_SUITE.erl",546}]}.
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
    {call_only,2,{f,399}}. % '-general_expressions/1-lbc$^5/2-5-'/2
  {label,402}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^4/2-4-', 2, 404}.
  {label,403}.
    {line,[{location,"bs_bincomp_SUITE.erl",545}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^4/2-4-'},
               2}.
  {label,404}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,405},[{x,0}]}.
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
    {call,1,{f,313}}. % id/1
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
    {call_last,2,{f,404},2}. % '-general_expressions/1-lbc$^4/2-4-'/2
  {label,405}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^3/2-3-', 2, 407}.
  {label,406}.
    {line,[{location,"bs_bincomp_SUITE.erl",544}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^3/2-3-'},
               2}.
  {label,407}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,408},[{x,0}]}.
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
    {call_only,2,{f,407}}. % '-general_expressions/1-lbc$^3/2-3-'/2
  {label,408}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^2/2-2-', 2, 410}.
  {label,409}.
    {line,[{location,"bs_bincomp_SUITE.erl",540}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^2/2-2-'},
               2}.
  {label,410}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,411},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",541}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",542}]}.
    {call,1,{f,313}}. % id/1
    {line,[{location,"bs_bincomp_SUITE.erl",540}]}.
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
    {call_last,2,{f,410},2}. % '-general_expressions/1-lbc$^2/2-2-'/2
  {label,411}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^1/2-1-', 2, 413}.
  {label,412}.
    {line,[{location,"bs_bincomp_SUITE.erl",539}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^1/2-1-'},
               2}.
  {label,413}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,414},[{x,0}]}.
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
    {call_only,2,{f,413}}. % '-general_expressions/1-lbc$^1/2-1-'/2
  {label,414}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^0/2-0-', 2, 416}.
  {label,415}.
    {line,[{location,"bs_bincomp_SUITE.erl",538}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^0/2-0-'},
               2}.
  {label,416}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,417},[{x,0}]}.
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
    {call_only,2,{f,416}}. % '-general_expressions/1-lbc$^0/2-0-'/2
  {label,417}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-lbc$^33/2-18-', 2, 419}.
  {label,418}.
    {line,[{location,"bs_bincomp_SUITE.erl",527}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^33/2-18-'},2}.
  {label,419}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,{1,2,3}}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-32-', 1, 421}.
  {label,420}.
    {line,[{location,"bs_bincomp_SUITE.erl",521}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-32-'},1}.
  {label,421}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",522}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,423}}. % '-sizes/1-lbc$^31/2-17-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,305},0}. % cs_default/1


{function, '-sizes/1-lbc$^31/2-17-', 2, 423}.
  {label,422}.
    {line,[{location,"bs_bincomp_SUITE.erl",522}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^31/2-17-'},2}.
  {label,423}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,425},2,[{x,0}],{x,2}}.
    {bs_match,{f,424},
              {x,2},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[]},32,1,{x,0}}]}}.
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
    {call_only,2,{f,423}}. % '-sizes/1-lbc$^31/2-17-'/2
  {label,424}.
    {move,{x,1},{x,0}}.
    return.
  {label,425}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-30-', 2, 427}.
  {label,426}.
    {line,[{location,"bs_bincomp_SUITE.erl",515}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-30-'},2}.
  {label,427}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",516}]}.
    {call,3,{f,429}}. % '-sizes/1-lbc$^28/2-15-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call_last,1,{f,305},0}. % cs_default/1


{function, '-sizes/1-lbc$^28/2-15-', 3, 429}.
  {label,428}.
    {line,[{location,"bs_bincomp_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^28/2-15-'},3}.
  {label,429}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,430},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,433}}. % '-sizes/1-lbc$^29/2-16-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,429},2}. % '-sizes/1-lbc$^28/2-15-'/3
  {label,430}.
    {test,is_nil,{f,431},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,431}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^29/2-16-', 3, 433}.
  {label,432}.
    {line,[{location,"bs_bincomp_SUITE.erl",516}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^29/2-16-'},3}.
  {label,433}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,bs_start_match3,{f,435},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,434},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {x,2},
           1,
           {field_flags,[{anno,[516,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
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
    {call_only,3,{f,433}}. % '-sizes/1-lbc$^29/2-16-'/3
  {label,434}.
    {move,{x,1},{x,0}}.
    return.
  {label,435}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^27/2-14-', 2, 437}.
  {label,436}.
    {line,[{location,"bs_bincomp_SUITE.erl",513}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^27/2-14-'},2}.
  {label,437}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,438},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
    {call_only,2,{f,437}}. % '-sizes/1-lbc$^27/2-14-'/2
  {label,438}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-lbc$^26/2-13-', 2, 440}.
  {label,439}.
    {line,[{location,"bs_bincomp_SUITE.erl",512}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^26/2-13-'},2}.
  {label,440}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,441},[{x,0}]}.
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
    {call_only,2,{f,440}}. % '-sizes/1-lbc$^26/2-13-'/2
  {label,441}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-fun-25-', 1, 443}.
  {label,442}.
    {line,[{location,"bs_bincomp_SUITE.erl",502}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-25-'},1}.
  {label,443}.
    {line,[{location,"bs_bincomp_SUITE.erl",503}]}.
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
    {line,[]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,false}}],{x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,2}],
            {x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",503}]}.
    {call,2,{f,445}}. % '-sizes/1-lbc$^24/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^24/2-12-', 2, 445}.
  {label,444}.
    {line,[{location,"bs_bincomp_SUITE.erl",503}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^24/2-12-'},2}.
  {label,445}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,446},
              {x,0},
              {commands,[{ensure_at_least,4,1},
                         {integer,2,{literal,[]},4,1,{x,2}}]}}.
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
    {call_only,2,{f,445}}. % '-sizes/1-lbc$^24/2-12-'/2
  {label,446}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-fun-23-', 3, 448}.
  {label,447}.
    {line,[{location,"bs_bincomp_SUITE.erl",492}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-23-'},3}.
  {label,448}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {line,[{location,"bs_bincomp_SUITE.erl",493}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,449},1,[{x,0}],{x,0}}.
    {gc_bif,'div',
            {f,449},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{y,2}],
            {x,0}}.
    {gc_bif,'*',
            {f,449},
            1,
            [{tr,{x,0},{t_integer,{-288230376151711743,288230376151711743}}},
             {y,1}],
            {x,0}}.
    {gc_bif,'+',{f,449},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,449},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,450}}.
  {label,449}.
    {move,{integer,256},{x,0}}.
  {label,450}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,3,0}.
    {call,4,{f,452}}. % '-sizes/1-lbc$^22/2-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^22/2-11-', 4, 452}.
  {label,451}.
    {line,[{location,"bs_bincomp_SUITE.erl",493}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^22/2-11-'},4}.
  {label,452}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,bs_start_match3,{f,454},4,[{x,0}],{x,4}}.
    {test,bs_get_integer2,
          {f,453},
          5,
          [{tr,{x,4},{t_bs_context,1}},
           {x,2},
           1,
           {field_flags,[{anno,[493,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
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
    {call_only,4,{f,452}}. % '-sizes/1-lbc$^22/2-11-'/4
  {label,453}.
    {move,{x,1},{x,0}}.
    return.
  {label,454}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-21-', 1, 456}.
  {label,455}.
    {line,[{location,"bs_bincomp_SUITE.erl",480}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-21-'},1}.
  {label,456}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",481}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,457},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,4}],
            {x,0}}.
    {jump,{f,458}}.
  {label,457}.
    {move,{integer,256},{x,0}}.
  {label,458}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",481}]}.
    {call,2,{f,460}}. % '-sizes/1-lbc$^20/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^20/2-10-', 2, 460}.
  {label,459}.
    {line,[{location,"bs_bincomp_SUITE.erl",481}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^20/2-10-'},2}.
  {label,460}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,462},2,[{x,0}],{x,2}}.
    {bs_match,{f,461},
              {x,2},
              {commands,[{ensure_at_least,16,1},
                         {integer,3,{literal,[]},16,1,{x,0}}]}}.
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
    {call_only,2,{f,460}}. % '-sizes/1-lbc$^20/2-10-'/2
  {label,461}.
    {move,{x,1},{x,0}}.
    return.
  {label,462}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-19-', 1, 464}.
  {label,463}.
    {line,[{location,"bs_bincomp_SUITE.erl",473}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-19-'},1}.
  {label,464}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",474}]}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,465},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,3}],
            {x,0}}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,36028797018963967}}},{integer,2}],
            {x,0}}.
    {jump,{f,466}}.
  {label,465}.
    {move,{integer,256},{x,0}}.
  {label,466}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",474}]}.
    {call,2,{f,468}}. % '-sizes/1-lbc$^18/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^18/2-9-', 2, 468}.
  {label,467}.
    {line,[{location,"bs_bincomp_SUITE.erl",474}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^18/2-9-'},2}.
  {label,468}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,bs_start_match3,{f,470},2,[{x,0}],{x,2}}.
    {bs_match,{f,469},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,0}}]}}.
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
    {call_only,2,{f,468}}. % '-sizes/1-lbc$^18/2-9-'/2
  {label,469}.
    {move,{x,1},{x,0}}.
    return.
  {label,470}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-17-', 1, 472}.
  {label,471}.
    {line,[{location,"bs_bincomp_SUITE.erl",465}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-17-'},1}.
  {label,472}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",466}]}.
    {call,2,{f,474}}. % '-sizes/1-lbc$^16/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,305},0}. % cs_default/1


{function, '-sizes/1-lbc$^16/2-8-', 2, 474}.
  {label,473}.
    {line,[{location,"bs_bincomp_SUITE.erl",466}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^16/2-8-'},2}.
  {label,474}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,475},[{x,0}]}.
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
    {call_only,2,{f,474}}. % '-sizes/1-lbc$^16/2-8-'/2
  {label,475}.
    {test,is_nil,{f,476},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,476}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-15-', 2, 478}.
  {label,477}.
    {line,[{location,"bs_bincomp_SUITE.erl",459}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-15-'},2}.
  {label,478}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,479},2,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,479},2,[{x,1},{integer,8}],{x,1}}.
    {gc_bif,'*',
            {f,479},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,479},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,479},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,480}}.
  {label,479}.
    {move,{integer,256},{x,0}}.
  {label,480}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",460}]}.
    {call,3,{f,482}}. % '-sizes/1-lbc$^14/2-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^14/2-7-', 3, 482}.
  {label,481}.
    {line,[{location,"bs_bincomp_SUITE.erl",460}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^14/2-7-'},3}.
  {label,482}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,483},[{x,0}]}.
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
    {call_only,3,{f,482}}. % '-sizes/1-lbc$^14/2-7-'/3
  {label,483}.
    {test,is_nil,{f,484},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,484}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-13-', 4, 486}.
  {label,485}.
    {line,[{location,"bs_bincomp_SUITE.erl",452}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-13-'},4}.
  {label,486}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,487},4,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,487},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,487},4,[{x,2},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,487},
            4,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'+',{f,487},4,[{tr,{x,1},{t_number,any}},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,487},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,487},
            3,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'+',{f,487},2,[{tr,{x,1},{t_number,any}},{integer,24}],{x,1}}.
    {gc_bif,'*',
            {f,487},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,487},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,487},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,488}}.
  {label,487}.
    {move,{integer,256},{x,0}}.
  {label,488}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",453}]}.
    {call,5,{f,490}}. % '-sizes/1-lbc$^12/2-6-'/5
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^12/2-6-', 5, 490}.
  {label,489}.
    {line,[{location,"bs_bincomp_SUITE.erl",453}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^12/2-6-'},5}.
  {label,490}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,491},[{x,0}]}.
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
    {call_only,5,{f,490}}. % '-sizes/1-lbc$^12/2-6-'/5
  {label,491}.
    {test,is_nil,{f,492},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,492}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",454}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-11-', 4, 494}.
  {label,493}.
    {line,[{location,"bs_bincomp_SUITE.erl",446}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-11-'},4}.
  {label,494}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,495},4,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,495},4,[{x,2},{integer,8}],{x,1}}.
    {gc_bif,'+',{f,495},4,[{y,1},{tr,{x,1},{t_number,any}}],{x,1}}.
    {gc_bif,'*',{f,495},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,495},
            3,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'*',
            {f,495},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,495},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,495},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,496}}.
  {label,495}.
    {move,{integer,256},{x,0}}.
  {label,496}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",447}]}.
    {call,5,{f,498}}. % '-sizes/1-lbc$^10/2-5-'/5
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^10/2-5-', 5, 498}.
  {label,497}.
    {line,[{location,"bs_bincomp_SUITE.erl",447}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^10/2-5-'},5}.
  {label,498}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,499},[{x,0}]}.
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
    {call_only,5,{f,498}}. % '-sizes/1-lbc$^10/2-5-'/5
  {label,499}.
    {test,is_nil,{f,500},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,500}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-9-', 2, 502}.
  {label,501}.
    {line,[{location,"bs_bincomp_SUITE.erl",439}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-9-'},2}.
  {label,502}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,503},2,[{x,0}],{x,0}}.
    {gc_bif,'*',
            {f,503},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{x,1}],
            {x,0}}.
    {gc_bif,'+',{f,503},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,503},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,504}}.
  {label,503}.
    {move,{integer,256},{x,0}}.
  {label,504}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",440}]}.
    {call,3,{f,506}}. % '-sizes/1-lbc$^8/2-4-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^8/2-4-', 3, 506}.
  {label,505}.
    {line,[{location,"bs_bincomp_SUITE.erl",440}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^8/2-4-'},3}.
  {label,506}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,507},[{x,0}]}.
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
    {call_only,3,{f,506}}. % '-sizes/1-lbc$^8/2-4-'/3
  {label,507}.
    {test,is_nil,{f,508},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,508}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-7-', 1, 510}.
  {label,509}.
    {line,[{location,"bs_bincomp_SUITE.erl",432}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-7-'},1}.
  {label,510}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,511},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,3}],
            {x,0}}.
    {gc_bif,'+',
            {f,511},
            1,
            [{tr,{x,0},{t_integer,{0,864691128455135229}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{7,864691128455135236}}},{integer,3}],
            {x,0}}.
    {jump,{f,512}}.
  {label,511}.
    {move,{integer,256},{x,0}}.
  {label,512}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",433}]}.
    {call,2,{f,514}}. % '-sizes/1-lbc$^6/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^6/2-3-', 2, 514}.
  {label,513}.
    {line,[{location,"bs_bincomp_SUITE.erl",433}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^6/2-3-'},2}.
  {label,514}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,515},[{x,0}]}.
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
    {call_only,2,{f,514}}. % '-sizes/1-lbc$^6/2-3-'/2
  {label,515}.
    {test,is_nil,{f,516},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,516}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-5-', 1, 518}.
  {label,517}.
    {line,[{location,"bs_bincomp_SUITE.erl",423}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-5-'},1}.
  {label,518}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,519},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,4}],
            {x,0}}.
    {gc_bif,'+',
            {f,519},
            1,
            [{tr,{x,0},{t_integer,{0,1152921504606846972}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{7,1152921504606846979}}},{integer,3}],
            {x,0}}.
    {jump,{f,520}}.
  {label,519}.
    {move,{integer,256},{x,0}}.
  {label,520}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",424}]}.
    {call,2,{f,522}}. % '-sizes/1-lbc$^4/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^4/2-2-', 2, 522}.
  {label,521}.
    {line,[{location,"bs_bincomp_SUITE.erl",424}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^4/2-2-'},2}.
  {label,522}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,4,true}}]}}.
    {test,is_nonempty_list,{f,523},[{x,0}]}.
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
    {call_only,2,{f,522}}. % '-sizes/1-lbc$^4/2-2-'/2
  {label,523}.
    {test,is_nil,{f,524},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,524}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-3-', 1, 526}.
  {label,525}.
    {line,[{location,"bs_bincomp_SUITE.erl",415}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-3-'},1}.
  {label,526}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,527},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,2}],
            {x,0}}.
    {jump,{f,528}}.
  {label,527}.
    {move,{integer,256},{x,0}}.
  {label,528}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",416}]}.
    {call,2,{f,530}}. % '-sizes/1-lbc$^2/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^2/2-1-', 2, 530}.
  {label,529}.
    {line,[{location,"bs_bincomp_SUITE.erl",416}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^2/2-1-'},2}.
  {label,530}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,531},[{x,0}]}.
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
    {call_only,2,{f,530}}. % '-sizes/1-lbc$^2/2-1-'/2
  {label,531}.
    {test,is_nil,{f,532},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,532}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-1-', 1, 534}.
  {label,533}.
    {line,[{location,"bs_bincomp_SUITE.erl",407}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-1-'},1}.
  {label,534}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,535},1,[{x,0}],{x,0}}.
    {jump,{f,536}}.
  {label,535}.
    {move,{integer,256},{x,0}}.
  {label,536}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",408}]}.
    {call,2,{f,538}}. % '-sizes/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,302},0}. % cs/1


{function, '-sizes/1-lbc$^0/2-0-', 2, 538}.
  {label,537}.
    {line,[{location,"bs_bincomp_SUITE.erl",408}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^0/2-0-'},2}.
  {label,538}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,539},[{x,0}]}.
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
    {call_only,2,{f,538}}. % '-sizes/1-lbc$^0/2-0-'/2
  {label,539}.
    {test,is_nil,{f,540},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,540}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch_1/2-lbc$^0/2-0-', 3, 542}.
  {label,541}.
    {line,[{location,"bs_bincomp_SUITE.erl",403}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch_1/2-lbc$^0/2-0-'},3}.
  {label,542}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[bad]},
                                   none,
                                   {t_integer,{8,8}},
                                   none,none}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,543},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},
               {t_union,{t_atom,[bad]},none,{t_integer,{8,8}},none,none}},
           1,
           {field_flags,[{anno,[403,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
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
    {call_only,3,{f,542}}. % '-nomatch_1/2-lbc$^0/2-0-'/3
  {label,543}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^12/2-12-', 2, 545}.
  {label,544}.
    {line,[{location,"bs_bincomp_SUITE.erl",398}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^12/2-12-'},2}.
  {label,545}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,false}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^10/2-10-', 2, 547}.
  {label,546}.
    {line,[{location,"bs_bincomp_SUITE.erl",396}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^10/2-10-'},2}.
  {label,547}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^8/2-8-', 2, 549}.
  {label,548}.
    {line,[{location,"bs_bincomp_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^8/2-8-'},2}.
  {label,549}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^7/2-7-', 2, 551}.
  {label,550}.
    {line,[{location,"bs_bincomp_SUITE.erl",390}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^7/2-7-'},2}.
  {label,551}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,552},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {bs_create_bin,{f,0},
                   0,2,256,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,256,true}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {call_only,2,{f,551}}. % '-nomatch/1-lbc$^7/2-7-'/2
  {label,552}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^6/2-6-', 2, 554}.
  {label,553}.
    {line,[{location,"bs_bincomp_SUITE.erl",385}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^6/2-6-'},2}.
  {label,554}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,555},
          2,
          [{tr,{x,0},{t_bs_context,32}},
           {integer,32},
           1,
           {field_flags,[{anno,[385,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
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
    {call_only,2,{f,554}}. % '-nomatch/1-lbc$^6/2-6-'/2
  {label,555}.
    {bs_match,{f,556},{x,0},{commands,[{ensure_at_least,32,1},{skip,32}]}}.
    {call_only,2,{f,554}}. % '-nomatch/1-lbc$^6/2-6-'/2
  {label,556}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^5/2-5-', 2, 558}.
  {label,557}.
    {line,[{location,"bs_bincomp_SUITE.erl",382}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^5/2-5-'},2}.
  {label,558}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,561},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,559},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[382,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_create_bin,{f,0},
                   0,3,8,
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
    {move,{x,2},{x,0}}.
    {call_only,2,{f,558}}. % '-nomatch/1-lbc$^5/2-5-'/2
  {label,559}.
    {bs_match,{f,560},{x,2},{commands,[{ensure_at_least,1,1},{skip,1}]}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,558}}. % '-nomatch/1-lbc$^5/2-5-'/2
  {label,560}.
    {move,{x,1},{x,0}}.
    return.
  {label,561}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^4/2-4-', 2, 563}.
  {label,562}.
    {line,[{location,"bs_bincomp_SUITE.erl",380}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^4/2-4-'},2}.
  {label,563}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_bitstr,{f,564},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,564}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^3/2-3-', 2, 566}.
  {label,565}.
    {line,[{location,"bs_bincomp_SUITE.erl",379}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^3/2-3-'},2}.
  {label,566}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lc$^2/1-2-', 1, 568}.
  {label,567}.
    {line,[{location,"bs_bincomp_SUITE.erl",378}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lc$^2/1-2-'},1}.
  {label,568}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,is_bitstr,{f,569},[{x,0}]}.
    {move,nil,{x,0}}.
    return.
  {label,569}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lc$^1/1-1-', 1, 571}.
  {label,570}.
    {line,[{location,"bs_bincomp_SUITE.erl",377}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lc$^1/1-1-'},1}.
  {label,571}.
    {move,nil,{x,0}}.
    return.


{function, '-nomatch/1-lbc$^0/2-0-', 2, 573}.
  {label,572}.
    {line,[{location,"bs_bincomp_SUITE.erl",376}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^0/2-0-'},2}.
  {label,573}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,574},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,573}}. % '-nomatch/1-lbc$^0/2-0-'/2
  {label,574}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_strange/2-lbc$^0/2-1-', 2, 576}.
  {label,575}.
    {line,[{location,"bs_bincomp_SUITE.erl",363}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_strange/2-lbc$^0/2-1-'},
               2}.
  {label,576}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,577},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
    {call_only,2,{f,576}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
  {label,577}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_strange/2-lbc$^1/2-0-', 2, 579}.
  {label,578}.
    {line,[{location,"bs_bincomp_SUITE.erl",362}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_strange/2-lbc$^1/2-0-'},
               2}.
  {label,579}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,580},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[362,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
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
                          {tr,{x,2},{t_integer,{0,1114111}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,579}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
  {label,580}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_trimmer/1-lbc$^0/2-0-', 2, 582}.
  {label,581}.
    {line,[{location,"bs_bincomp_SUITE.erl",354}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_trimmer/1-lbc$^0/2-0-'},
               2}.
  {label,582}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{19,777}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,583},[{x,0}]}.
    {allocate_heap,4,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {put_tuple2,{x,0},{list,[{y,2},{y,2},{y,2}]}}.
    {call,1,{f,313}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,584},[{x,0}]}.
    {test,test_arity,{f,584},[{x,0},3]}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,313}}. % id/1
    {get_tuple_element,{y,0},0,{x,0}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {get_tuple_element,{y,0},2,{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_bincomp_SUITE.erl",355}]}.
    {call,4,{f,136}}. % coverage_summer/4
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",354}]}.
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
    {call_last,2,{f,582},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2
  {label,583}.
    {move,{x,1},{x,0}}.
    return.
  {label,584}.
    {badmatch,{y,0}}.


{function, '-coverage_lightfv/3-lbc$^0/2-0-', 2, 586}.
  {label,585}.
    {line,[{location,"bs_bincomp_SUITE.erl",347}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_lightfv/3-lbc$^0/2-0-'},
               2}.
  {label,586}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,{-3555.0,40.0}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,587},[{x,0}]}.
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
    {call_only,2,{f,586}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
  {label,587}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_materialiv/3-lbc$^0/2-0-', 2, 589}.
  {label,588}.
    {line,[{location,"bs_bincomp_SUITE.erl",342}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_materialiv/3-lbc$^0/2-0-'},
               2}.
  {label,589}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1328,777134}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,590},[{x,0}]}.
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
    {call_only,2,{f,589}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
  {label,590}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^8/2-8-', 2, 592}.
  {label,591}.
    {line,[{location,"bs_bincomp_SUITE.erl",323}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^8/2-8-'},2}.
  {label,592}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,43}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,594},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,593},[{tr,{x,2},{t_integer,{1,43}}},{integer,42}]}.
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
    {call_only,2,{f,592}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,593}.
    {call_only,2,{f,592}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,594}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^7/2-7-', 2, 596}.
  {label,595}.
    {line,[{location,"bs_bincomp_SUITE.erl",319}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^7/2-7-'},2}.
  {label,596}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,598},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}}]}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,is_eq_exact,{f,597},[{tr,{x,2},{t_integer,{0,1}}},{integer,0}]}.
    {bs_match,{f,597},
              {x,0},
              {commands,[{ensure_at_least,7,1},
                         {integer,2,{literal,[]},7,1,{x,2}}]}}.
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
    {call_only,2,{f,596}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,597}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,598},{x,0},{commands,[{ensure_at_least,7,1},{skip,7}]}}.
    {call_only,2,{f,596}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,598}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^6/2-6-', 2, 600}.
  {label,599}.
    {line,[{location,"bs_bincomp_SUITE.erl",316}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^6/2-6-'},2}.
  {label,600}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,602},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {bs_match,{f,601},
              {x,2},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
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
    {call_only,2,{f,600}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,601}.
    {call_only,2,{f,600}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,602}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^5/2-5-', 2, 604}.
  {label,603}.
    {line,[{location,"bs_bincomp_SUITE.erl",310}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^5/2-5-'},2}.
  {label,604}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_list,{t_atom,[a,x,y,z]},nil},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,606},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nonempty_list,{f,605},[{x,2}]}.
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
  {label,605}.
    {call_only,2,{f,604}}. % '-filters/1-lbc$^5/2-5-'/2
  {label,606}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^4/2-4-', 2, 608}.
  {label,607}.
    {line,[{location,"bs_bincomp_SUITE.erl",306}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^4/2-4-'},2}.
  {label,608}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,611},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",308}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ne_exact,{f,609},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",309}]}.
    {gc_bif,'rem',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,609},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",306}]}.
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
    {jump,{f,610}}.
  {label,609}.
    {move,{y,2},{x,1}}.
  {label,610}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,608},3}. % '-filters/1-lbc$^4/2-4-'/2
  {label,611}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^3/2-3-', 2, 613}.
  {label,612}.
    {line,[{location,"bs_bincomp_SUITE.erl",302}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^3/2-3-'},2}.
  {label,613}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,616},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",304}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,614},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",305}]}.
    {gc_bif,'rem',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,614},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",302}]}.
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
    {jump,{f,615}}.
  {label,614}.
    {move,{y,2},{x,1}}.
  {label,615}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,613},3}. % '-filters/1-lbc$^3/2-3-'/2
  {label,616}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^2/2-2-', 2, 618}.
  {label,617}.
    {line,[{location,"bs_bincomp_SUITE.erl",299}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^2/2-2-'},2}.
  {label,618}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,621},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",301}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,619},[{x,0},{atom,true}]}.
    {move,{y,2},{x,1}}.
    {jump,{f,620}}.
  {label,619}.
    {line,[{location,"bs_bincomp_SUITE.erl",299}]}.
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
  {label,620}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,618},3}. % '-filters/1-lbc$^2/2-2-'/2
  {label,621}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^1/2-1-', 2, 623}.
  {label,622}.
    {line,[{location,"bs_bincomp_SUITE.erl",296}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^1/2-1-'},2}.
  {label,623}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,626},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",298}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,624},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",296}]}.
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
    {jump,{f,625}}.
  {label,624}.
    {move,{y,2},{x,1}}.
  {label,625}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,623},3}. % '-filters/1-lbc$^1/2-1-'/2
  {label,626}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^0/2-0-', 2, 628}.
  {label,627}.
    {line,[{location,"bs_bincomp_SUITE.erl",293}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^0/2-0-'},2}.
  {label,628}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,630},
              {x,0},
              {commands,[{ensure_at_least,7,1},
                         {integer,2,{literal,[]},7,1,{x,2}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",295}]}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{0,127}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,629},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",293}]}.
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
    {call_only,2,{f,628}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,629}.
    {call_only,2,{f,628}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,630}.
    {move,{x,1},{x,0}}.
    return.


{function, '-inconsistent_types_2/0-lbc$^0/2-0-', 3, 632}.
  {label,631}.
    {line,[{location,"bs_bincomp_SUITE.erl",282}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-inconsistent_types_2/0-lbc$^0/2-0-'},
               3}.
  {label,632}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,633},[{x,0}]}.
    {bif,'=/=',{f,0},[{x,2},nil],{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",285}]}.
    {badmatch,{x,0}}.
  {label,633}.
    {test,is_nil,{f,634},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,634}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",284}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-inconsistent_types_1/1-lbc$^0/2-0-', 3, 636}.
  {label,635}.
    {line,[{location,"bs_bincomp_SUITE.erl",264}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-inconsistent_types_1/1-lbc$^0/2-0-'},
               3}.
  {label,636}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}}.
    {test,is_nil,
          {f,637},
          [{tr,{x,0},{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,637}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",265}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-float_segment_size/0-lbc$^0/2-0-', 3, 639}.
  {label,638}.
    {line,[{location,"bs_bincomp_SUITE.erl",254}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-float_segment_size/0-lbc$^0/2-0-'},
               3}.
  {label,639}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_float,{0.79,0.79}}}]}}.
    {move,{literal,{bad_generator,42}},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",255}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^0/2-0-', 2, 641}.
  {label,640}.
    {line,[{location,"bs_bincomp_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-over_complex_generator/0-lbc$^0/2-0-'},
               2}.
  {label,641}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,2}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,643},
              {x,0},
              {commands,[{ensure_at_least,2,1},
                         {integer,2,{literal,[]},2,1,{x,2}}]}}.
    {test,is_eq_exact,{f,642},[{tr,{x,2},{t_integer,{0,3}}},{integer,0}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {call,2,{f,645}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,641},1}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,642}.
    {call_only,2,{f,641}}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,643}.
    {move,{x,1},{x,0}}.
    return.


{function, '-over_complex_generator/0-lbc$^1/2-1-', 2, 645}.
  {label,644}.
    {line,[{location,"bs_bincomp_SUITE.erl",233}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-over_complex_generator/0-lbc$^1/2-1-'},
               2}.
  {label,645}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,646},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",234}]}.
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
    {call_only,2,{f,645}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
  {label,646}.
    {move,{x,1},{x,0}}.
    return.


{function, '-do_match_context_2/1-lbc$^0/2-0-', 2, 648}.
  {label,647}.
    {line,[{location,"bs_bincomp_SUITE.erl",229}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_match_context_2/1-lbc$^0/2-0-'},
               2}.
  {label,648}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,resume},2,{x,0},{x,0}}.
    {bs_match,{f,649},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
    {call_only,2,{f,648}}. % '-do_match_context_2/1-lbc$^0/2-0-'/2
  {label,649}.
    {move,{x,1},{x,0}}.
    return.


{function, '-match_context_1/1-lbc$^0/2-0-', 2, 651}.
  {label,650}.
    {line,[{location,"bs_bincomp_SUITE.erl",223}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-match_context_1/1-lbc$^0/2-0-'},
               2}.
  {label,651}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,resume},2,{x,0},{x,0}}.
    {bs_match,{f,652},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
    {call_only,2,{f,651}}. % '-match_context_1/1-lbc$^0/2-0-'/2
  {label,652}.
    {move,{x,1},{x,0}}.
    return.


{function, '-gen_data/1-lbc$^1/2-1-', 2, 654}.
  {label,653}.
    {line,[{location,"bs_bincomp_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-gen_data/1-lbc$^1/2-1-'},2}.
  {label,654}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,655},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
    {move,{integer,255},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",220}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_bincomp_SUITE.erl",219}]}.
    {call,2,{f,658}}. % '-gen_data/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,654},1}. % '-gen_data/1-lbc$^1/2-1-'/2
  {label,655}.
    {test,is_nil,{f,656},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,656}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^2/2-2-', 2, 658}.
  {label,657}.
    {line,[{location,"bs_bincomp_SUITE.erl",219}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-gen_data/1-lbc$^2/2-2-'},2}.
  {label,658}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,659},[{x,0}]}.
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
    {call_only,2,{f,658}}. % '-gen_data/1-lbc$^2/2-2-'/2
  {label,659}.
    {test,is_nil,{f,660},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,660}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",220}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^0/2-0-', 2, 662}.
  {label,661}.
    {line,[{location,"bs_bincomp_SUITE.erl",218}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-gen_data/1-lbc$^0/2-0-'},2}.
  {label,662}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,663},[{x,0}]}.
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
    {call_only,2,{f,662}}. % '-gen_data/1-lbc$^0/2-0-'/2
  {label,663}.
    {test,is_nil,{f,664},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,664}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_lc/1-lc$^0/1-0-', 1, 666}.
  {label,665}.
    {line,[{location,"bs_bincomp_SUITE.erl",215}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-silly_lc/1-lc$^0/1-0-'},1}.
  {label,666}.
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
    {test,is_nonempty_list,{f,667},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,666}}. % '-silly_lc/1-lc$^0/1-0-'/1
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
  {label,667}.
    return.


{function, '-silly_bc/1-lbc$^0/2-0-', 2, 669}.
  {label,668}.
    {line,[{location,"bs_bincomp_SUITE.erl",210}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-silly_bc/1-lbc$^0/2-0-'},2}.
  {label,669}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,670},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
    {call_only,2,{f,669}}. % '-silly_bc/1-lbc$^0/2-0-'/2
  {label,670}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed_size/2-lbc$^0/2-0-', 3, 672}.
  {label,671}.
    {line,[{location,"bs_bincomp_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed_size/2-lbc$^0/2-0-'},3}.
  {label,672}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,is_nonempty_list,{f,673},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,676}}. % '-mixed_size/2-lbc$^1/2-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,672},2}. % '-mixed_size/2-lbc$^0/2-0-'/3
  {label,673}.
    {test,is_nil,{f,674},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,674}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^1/2-1-', 3, 676}.
  {label,675}.
    {line,[{location,"bs_bincomp_SUITE.erl",197}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed_size/2-lbc$^1/2-1-'},3}.
  {label,676}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,677},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {x,2},
           1,
           {field_flags,[{anno,[197,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
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
    {call_only,3,{f,676}}. % '-mixed_size/2-lbc$^1/2-1-'/3
  {label,677}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed_nested/1-lbc$^0/2-0-', 2, 679}.
  {label,678}.
    {line,[{location,"bs_bincomp_SUITE.erl",194}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed_nested/1-lbc$^0/2-0-'},2}.
  {label,679}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,680},[{x,0}]}.
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
    {call_only,2,{f,679}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
  {label,680}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-fun-26-', 1, 682}.
  {label,681}.
    {line,[{location,"bs_bincomp_SUITE.erl",186}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-fun-26-'},1}.
  {label,682}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",187}]}.
    {call,2,{f,685}}. % '-mixed/1-lc$^25/1-25-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test,is_nil,{f,683},[{tr,{x,0},{t_list,{t_atom,[ok]},nil}}]}.
    {deallocate,0}.
    return.
  {label,683}.
    {badmatch,{x,0}}.


{function, '-mixed/1-lc$^25/1-25-', 2, 685}.
  {label,684}.
    {line,[{location,"bs_bincomp_SUITE.erl",187}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^25/1-25-'},2}.
  {label,685}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,688},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,686},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'bsr',
            {f,0},
            4,
            [{tr,{x,3},{t_integer,{0,'+inf'}}},{integer,1}],
            {x,3}}.
    {test,bs_skip_bits2,
          {f,686},
          [{x,2},
           {tr,{x,3},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,2,{f,685}}. % '-mixed/1-lc$^25/1-25-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,686}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,687},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            3,
            [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}],
            {x,0}}.
    {test,bs_skip_bits2,
          {f,687},
          [{x,2},
           {tr,{x,0},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,685}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,687}.
    {move,nil,{x,0}}.
    return.
  {label,688}.
    {test,bs_start_match3,{f,689},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,689},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {x,1},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'bsr',
            {f,0},
            4,
            [{tr,{x,3},{t_integer,{0,'+inf'}}},{integer,1}],
            {x,3}}.
    {test,bs_skip_bits2,
          {f,689},
          [{x,2},
           {tr,{x,3},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[187,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,685}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,689}.
    {test,is_bitstr,{f,690},[{x,0}]}.
    {move,nil,{x,0}}.
    return.
  {label,690}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^23/2-23-', 2, 692}.
  {label,691}.
    {line,[{location,"bs_bincomp_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^23/2-23-'},2}.
  {label,692}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{1,1}},nil},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,693},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,695}}. % '-mixed/1-lbc$^24/2-24-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,692},1}. % '-mixed/1-lbc$^23/2-23-'/2
  {label,693}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^24/2-24-', 2, 695}.
  {label,694}.
    {line,[{location,"bs_bincomp_SUITE.erl",160}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^24/2-24-'},2}.
  {label,695}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,696},[{x,0}]}.
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
    {call_only,2,{f,695}}. % '-mixed/1-lbc$^24/2-24-'/2
  {label,696}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lc$^21/1-21-', 1, 698}.
  {label,697}.
    {line,[{location,"bs_bincomp_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^21/1-21-'},1}.
  {label,698}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,699},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,1,{literal,[]},3,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,[{a,1},{b,2}]},{x,0}}.
    {call_only,3,{f,701}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,699}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^22/1-22-', 3, 701}.
  {label,700}.
    {line,[{location,"bs_bincomp_SUITE.erl",155}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^22/1-22-'},3}.
  {label,701}.
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
    {test,is_nonempty_list,{f,702},[{x,0}]}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,3},{x,0}}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,7}}},{tr,{x,3},{t_integer,{1,2}}}],
            {y,0}}.
    {call,3,{f,701}}. % '-mixed/1-lc$^22/1-22-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,702}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,698}}. % '-mixed/1-lc$^21/1-21-'/1


{function, '-mixed/1-lc$^19/1-19-', 1, 704}.
  {label,703}.
    {line,[{location,"bs_bincomp_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^19/1-19-'},1}.
  {label,704}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,705},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,1,{literal,[]},3,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call_only,3,{f,707}}. % '-mixed/1-lc$^20/1-20-'/3
  {label,705}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^20/1-20-', 3, 707}.
  {label,706}.
    {line,[{location,"bs_bincomp_SUITE.erl",153}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^20/1-20-'},3}.
  {label,707}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,7}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,708},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,3,{literal,[]},3,1,{x,3}}]}}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,7}}},{tr,{x,3},{t_integer,{0,7}}}],
            {y,0}}.
    {call,3,{f,707}}. % '-mixed/1-lc$^20/1-20-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,708}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,704}}. % '-mixed/1-lc$^19/1-19-'/1


{function, '-mixed/1-lbc$^18/2-18-', 2, 710}.
  {label,709}.
    {line,[{location,"bs_bincomp_SUITE.erl",150}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^18/2-18-'},2}.
  {label,710}.
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
    {test,is_nonempty_list,{f,711},[{x,0}]}.
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
    {call_only,2,{f,710}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,711}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^16/2-16-', 2, 713}.
  {label,712}.
    {line,[{location,"bs_bincomp_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^16/2-16-'},2}.
  {label,713}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,714},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,716}}. % '-mixed/1-lbc$^17/2-17-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,713},1}. % '-mixed/1-lbc$^16/2-16-'/2
  {label,714}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^17/2-17-', 3, 716}.
  {label,715}.
    {line,[{location,"bs_bincomp_SUITE.erl",148}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^17/2-17-'},3}.
  {label,716}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,4}}}]}}.
    {test,is_nonempty_list,{f,717},[{x,0}]}.
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
    {call_only,3,{f,716}}. % '-mixed/1-lbc$^17/2-17-'/3
  {label,717}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^14/2-14-', 2, 719}.
  {label,718}.
    {line,[{location,"bs_bincomp_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^14/2-14-'},2}.
  {label,719}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,720},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,2,{literal,[]},3,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,722}}. % '-mixed/1-lbc$^15/2-15-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,719},1}. % '-mixed/1-lbc$^14/2-14-'/2
  {label,720}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^15/2-15-', 3, 722}.
  {label,721}.
    {line,[{location,"bs_bincomp_SUITE.erl",146}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^15/2-15-'},3}.
  {label,722}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,7}}}]}}.
    {test,is_nonempty_list,{f,723},[{x,0}]}.
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
    {call_only,3,{f,722}}. % '-mixed/1-lbc$^15/2-15-'/3
  {label,723}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^12/2-12-', 2, 725}.
  {label,724}.
    {line,[{location,"bs_bincomp_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^12/2-12-'},2}.
  {label,725}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,726},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,2,{literal,[]},3,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call,3,{f,728}}. % '-mixed/1-lbc$^13/2-13-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,725},1}. % '-mixed/1-lbc$^12/2-12-'/2
  {label,726}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^13/2-13-', 3, 728}.
  {label,727}.
    {line,[{location,"bs_bincomp_SUITE.erl",143}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^13/2-13-'},3}.
  {label,728}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,7}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,729},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,3,{literal,[]},3,1,{x,3}}]}}.
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
    {call_only,3,{f,728}}. % '-mixed/1-lbc$^13/2-13-'/3
  {label,729}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lc$^10/1-10-', 1, 731}.
  {label,730}.
    {line,[{location,"bs_bincomp_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^10/1-10-'},1}.
  {label,731}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,732},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,3,{f,734}}. % '-mixed/1-lc$^11/1-11-'/3
  {label,732}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^11/1-11-', 3, 734}.
  {label,733}.
    {line,[{location,"bs_bincomp_SUITE.erl",141}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^11/1-11-'},3}.
  {label,734}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,is_nonempty_list,{f,735},[{x,0}]}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{1,2}}}],
            {y,0}}.
    {call,3,{f,734}}. % '-mixed/1-lc$^11/1-11-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,735}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,731}}. % '-mixed/1-lc$^10/1-10-'/1


{function, '-mixed/1-lc$^8/1-8-', 1, 737}.
  {label,736}.
    {line,[{location,"bs_bincomp_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^8/1-8-'},1}.
  {label,737}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,738},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call_only,3,{f,740}}. % '-mixed/1-lc$^9/1-9-'/3
  {label,738}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^9/1-9-', 3, 740}.
  {label,739}.
    {line,[{location,"bs_bincomp_SUITE.erl",139}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^9/1-9-'},3}.
  {label,740}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,741},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {allocate,1,4}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}],
            {y,0}}.
    {call,3,{f,740}}. % '-mixed/1-lc$^9/1-9-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,741}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,737}}. % '-mixed/1-lc$^8/1-8-'/1


{function, '-mixed/1-lbc$^6/2-6-', 3, 743}.
  {label,742}.
    {line,[{location,"bs_bincomp_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^6/2-6-'},3}.
  {label,743}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,744},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,747}}. % '-mixed/1-lbc$^7/2-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,743},2}. % '-mixed/1-lbc$^6/2-6-'/3
  {label,744}.
    {test,is_nil,{f,745},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,745}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^7/2-7-', 3, 747}.
  {label,746}.
    {line,[{location,"bs_bincomp_SUITE.erl",137}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^7/2-7-'},3}.
  {label,747}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,748},[{x,0}]}.
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
    {call_only,3,{f,747}}. % '-mixed/1-lbc$^7/2-7-'/3
  {label,748}.
    {test,is_nil,{f,749},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,749}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^4/2-4-', 2, 751}.
  {label,750}.
    {line,[{location,"bs_bincomp_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^4/2-4-'},2}.
  {label,751}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,752},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,754}}. % '-mixed/1-lbc$^5/2-5-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,751},1}. % '-mixed/1-lbc$^4/2-4-'/2
  {label,752}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^5/2-5-', 3, 754}.
  {label,753}.
    {line,[{location,"bs_bincomp_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^5/2-5-'},3}.
  {label,754}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,4}}}]}}.
    {test,is_nonempty_list,{f,755},[{x,0}]}.
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
    {call_only,3,{f,754}}. % '-mixed/1-lbc$^5/2-5-'/3
  {label,755}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^2/2-2-', 2, 757}.
  {label,756}.
    {line,[{location,"bs_bincomp_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^2/2-2-'},2}.
  {label,757}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,758},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,760}}. % '-mixed/1-lbc$^3/2-3-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,757},1}. % '-mixed/1-lbc$^2/2-2-'/2
  {label,758}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^3/2-3-', 3, 760}.
  {label,759}.
    {line,[{location,"bs_bincomp_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^3/2-3-'},3}.
  {label,760}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,255}}}]}}.
    {test,is_nonempty_list,{f,761},[{x,0}]}.
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
    {call_only,3,{f,760}}. % '-mixed/1-lbc$^3/2-3-'/3
  {label,761}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^0/2-0-', 2, 763}.
  {label,762}.
    {line,[{location,"bs_bincomp_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,763}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,764},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call,3,{f,766}}. % '-mixed/1-lbc$^1/2-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,763},1}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,764}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^1/2-1-', 3, 766}.
  {label,765}.
    {line,[{location,"bs_bincomp_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^1/2-1-'},3}.
  {label,766}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,767},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
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
    {call_only,3,{f,766}}. % '-mixed/1-lbc$^1/2-1-'/3
  {label,767}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lc$^3/1-3-', 1, 769}.
  {label,768}.
    {line,[{location,"bs_bincomp_SUITE.erl",123}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^3/1-3-'},
               1}.
  {label,769}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,770},
              {x,0},
              {commands,[{ensure_at_least,15,1},
                         {integer,1,{literal,[little]},15,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,769}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,32767}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,770}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lbc$^2/2-2-', 2, 772}.
  {label,771}.
    {line,[{location,"bs_bincomp_SUITE.erl",121}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,772}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,773},[{x,0}]}.
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
    {call_only,2,{f,772}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
  {label,773}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lc$^1/1-1-', 1, 775}.
  {label,774}.
    {line,[{location,"bs_bincomp_SUITE.erl",119}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^1/1-1-'},
               1}.
  {label,775}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,776},
              {x,0},
              {commands,[{ensure_at_least,7,1},
                         {integer,1,{literal,[]},7,1,{x,1}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'-',{f,0},2,[{tr,{x,1},{t_integer,{0,127}}},{integer,32}],{y,0}}.
    {call,1,{f,775}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{'-inf',95}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,776}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lbc$^0/2-0-', 2, 778}.
  {label,777}.
    {line,[{location,"bs_bincomp_SUITE.erl",118}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,778}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,779},[{x,0}]}.
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
    {call_only,2,{f,778}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
  {label,779}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lc$^3/1-3-', 1, 781}.
  {label,780}.
    {line,[{location,"bs_bincomp_SUITE.erl",112}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^3/1-3-'},
               1}.
  {label,781}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,782},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,1,{literal,[little]},16,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,781}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,65535}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,782}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lbc$^2/2-2-', 2, 784}.
  {label,783}.
    {line,[{location,"bs_bincomp_SUITE.erl",110}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,784}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,785},[{x,0}]}.
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
    {call_only,2,{f,784}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
  {label,785}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lc$^1/1-1-', 1, 787}.
  {label,786}.
    {line,[{location,"bs_bincomp_SUITE.erl",108}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^1/1-1-'},
               1}.
  {label,787}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,788},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,255}}},{integer,32}],{y,0}}.
    {call,1,{f,787}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{32,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,788}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lbc$^0/2-0-', 2, 790}.
  {label,789}.
    {line,[{location,"bs_bincomp_SUITE.erl",107}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,790}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,791},[{x,0}]}.
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
    {call_only,2,{f,790}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
  {label,791}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^3/2-3-', 2, 793}.
  {label,792}.
    {line,[{location,"bs_bincomp_SUITE.erl",102}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^3/2-3-'},2}.
  {label,793}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,794},
              {x,0},
              {commands,[{ensure_at_least,15,1},
                         {integer,2,{literal,[]},15,1,{x,2}}]}}.
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
    {call_only,2,{f,793}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
  {label,794}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^2/2-2-', 2, 796}.
  {label,795}.
    {line,[{location,"bs_bincomp_SUITE.erl",100}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^2/2-2-'},2}.
  {label,796}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,797},
              {x,0},
              {commands,[{ensure_at_least,31,1},
                         {integer,2,{literal,[]},31,1,{x,2}}]}}.
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
    {call_only,2,{f,796}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
  {label,797}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^1/2-1-', 2, 799}.
  {label,798}.
    {line,[{location,"bs_bincomp_SUITE.erl",98}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^1/2-1-'},2}.
  {label,799}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,801},2,[{x,0}],{x,2}}.
    {bs_match,{f,800},
              {x,2},
              {commands,[{ensure_at_least,7,1},
                         {integer,3,{literal,[]},7,1,{x,0}}]}}.
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
    {call_only,2,{f,799}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
  {label,800}.
    {move,{x,1},{x,0}}.
    return.
  {label,801}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^0/2-0-', 2, 803}.
  {label,802}.
    {line,[{location,"bs_bincomp_SUITE.erl",97}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^0/2-0-'},2}.
  {label,803}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,804},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
    {call_only,2,{f,803}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
  {label,804}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^3/2-3-', 2, 806}.
  {label,805}.
    {line,[{location,"bs_bincomp_SUITE.erl",91}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^3/2-3-'},2}.
  {label,806}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,807},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[]},16,1,{x,2}}]}}.
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
    {call_only,2,{f,806}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
  {label,807}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^2/2-2-', 2, 809}.
  {label,808}.
    {line,[{location,"bs_bincomp_SUITE.erl",89}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^2/2-2-'},2}.
  {label,809}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,810},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
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
    {call_only,2,{f,809}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
  {label,810}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^1/2-1-', 2, 812}.
  {label,811}.
    {line,[{location,"bs_bincomp_SUITE.erl",87}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^1/2-1-'},2}.
  {label,812}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,813},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
    {call_only,2,{f,812}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
  {label,813}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^0/2-0-', 2, 815}.
  {label,814}.
    {line,[{location,"bs_bincomp_SUITE.erl",86}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^0/2-0-'},2}.
  {label,815}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,816},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
    {call_only,2,{f,815}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
  {label,816}.
    {move,{x,1},{x,0}}.
    return.
