{module, bs_bincomp_SUITE}.  %% version = 0

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
           {strict_generators,1},
           {suite,0},
           {trim_coverage,1},
           {verify_highest_opcode,1},
           {zero_pattern,1}]}.

{attributes, []}.

{labels, 877}.


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
                    strict_generators]},
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
    {line,[{location,"bs_bincomp_SUITE.erl",76}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,byte_aligned},1}.
  {label,18}.
    {test,is_list,{f,17},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",77}]}.
    {call,0,{f,326}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",78}]}.
    {call,2,{f,875}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abcdefg">>}]}.
    {move,{integer,12},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABC">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",79}]}.
    {call,2,{f,872}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,21},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"AxyzBxyzCxyz">>}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,1,0,0,0,2,0,0,0,3,0,0,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",81}]}.
    {call,2,{f,869}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,330}}. % cs/1
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
    {line,[{location,"bs_bincomp_SUITE.erl",83}]}.
    {call,2,{f,866}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,19},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {bs_match,{f,19},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",82}]}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,0,{f,328},0}. % cs_end/0
  {label,19}.
    {badmatch,{x,0}}.
  {label,20}.
    {line,[{location,"bs_bincomp_SUITE.erl",80}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{location,"bs_bincomp_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"bs_bincomp_SUITE.erl",78}]}.
    {badmatch,{x,0}}.


{function, bit_aligned, 1, 24}.
  {label,23}.
    {line,[{location,"bs_bincomp_SUITE.erl",86}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,bit_aligned},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",87}]}.
    {call,0,{f,326}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",89}]}.
    {call,2,{f,863}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,30},
              {x,1},
              {commands,[{ensure_exactly,49},
                         {'=:=',nil,31,1640337190},
                         {'=:=',nil,18,95079}]}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",90}]}.
    {call,1,{f,336}}. % id/1
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
    {line,[{location,"bs_bincomp_SUITE.erl",90}]}.
    {call,2,{f,859}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,29},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"ABCDEFG">>}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,2,0,0,0,8,0,0,0,24,0,0,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",92}]}.
    {call,2,{f,856}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,330}}. % cs/1
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
    {line,[{location,"bs_bincomp_SUITE.erl",94}]}.
    {call,2,{f,853}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,27},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {bs_match,{f,27},{x,1},{commands,[{ensure_exactly,0}]}}.
    {call_last,0,{f,328},1}. % cs_end/0
  {label,27}.
    {line,[{location,"bs_bincomp_SUITE.erl",93}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{location,"bs_bincomp_SUITE.erl",91}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{location,"bs_bincomp_SUITE.erl",90}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{location,"bs_bincomp_SUITE.erl",88}]}.
    {badmatch,{x,0}}.


{function, extended_byte_aligned, 1, 32}.
  {label,31}.
    {line,[{location,"bs_bincomp_SUITE.erl",97}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,extended_byte_aligned},1}.
  {label,32}.
    {test,is_list,{f,31},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",98}]}.
    {call,0,{f,326}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",99}]}.
    {call,2,{f,850}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,36},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abcdefg">>}]}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",100}]}.
    {call,1,{f,847}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{32,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,35},
          [{tr,{x,0},{t_list,{t_integer,{32,'+inf'}},nil}},
           {literal,"abcdefg"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",102}]}.
    {call,2,{f,844}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,34},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {bs_match,{f,34},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",104}]}.
    {call,1,{f,841}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,65535}},nil}}]}}.
    {test,is_eq_exact,
          {f,33},
          [{tr,{x,0},{t_list,{t_integer,{0,65535}},nil}},
           {literal,[256,512,768,1024]}]}.
    {call_last,0,{f,328},0}. % cs_end/0
  {label,33}.
    {line,[{location,"bs_bincomp_SUITE.erl",103}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{location,"bs_bincomp_SUITE.erl",101}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{location,"bs_bincomp_SUITE.erl",100}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{location,"bs_bincomp_SUITE.erl",99}]}.
    {badmatch,{x,0}}.


{function, extended_bit_aligned, 1, 38}.
  {label,37}.
    {line,[{location,"bs_bincomp_SUITE.erl",107}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,extended_bit_aligned},1}.
  {label,38}.
    {test,is_list,{f,37},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",108}]}.
    {call,0,{f,326}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",110}]}.
    {call,2,{f,838}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,42},
              {x,1},
              {commands,[{ensure_exactly,49},
                         {'=:=',nil,31,1640337190},
                         {'=:=',nil,18,95079}]}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",111}]}.
    {call,1,{f,835}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{'-inf',95}},nil}}]}}.
    {test,is_eq_exact,
          {f,41},
          [{tr,{x,0},{t_list,{t_integer,{'-inf',95}},nil}},
           {literal,"ABCDEFG"}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",113}]}.
    {call,2,{f,832}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,40},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {bs_match,{f,40},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",115}]}.
    {call,1,{f,829}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,32767}},nil}}]}}.
    {test,is_eq_exact,
          {f,39},
          [{tr,{x,0},{t_list,{t_integer,{0,32767}},nil}},
           {literal,[256,512,768,1024]}]}.
    {call_last,0,{f,328},0}. % cs_end/0
  {label,39}.
    {line,[{location,"bs_bincomp_SUITE.erl",114}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{location,"bs_bincomp_SUITE.erl",112}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{location,"bs_bincomp_SUITE.erl",111}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{location,"bs_bincomp_SUITE.erl",109}]}.
    {badmatch,{x,0}}.


{function, mixed, 1, 44}.
  {label,43}.
    {line,[{location,"bs_bincomp_SUITE.erl",118}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,mixed},1}.
  {label,44}.
    {test,is_list,{f,43},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",119}]}.
    {call,0,{f,326}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",121}]}.
    {call,2,{f,823}}. % '-mixed/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,73},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",123}]}.
    {call,2,{f,817}}. % '-mixed/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,72},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",125}]}.
    {call,2,{f,811}}. % '-mixed/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",126}]}.
    {call,1,{f,336}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",127}]}.
    {call,1,{f,336}}. % id/1
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
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",129}]}.
    {call,3,{f,803}}. % '-mixed/1-lbc$^6/2-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,70},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",131}]}.
    {call,1,{f,797}}. % '-mixed/1-lc$^8/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,69},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",133}]}.
    {call,1,{f,791}}. % '-mixed/1-lc$^10/1-10-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,68},
          [{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",135}]}.
    {call,2,{f,785}}. % '-mixed/1-lbc$^12/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,67},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,5097838}]}}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",138}]}.
    {call,2,{f,779}}. % '-mixed/1-lbc$^14/2-14-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,66},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,5097838}]}}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",140}]}.
    {call,2,{f,773}}. % '-mixed/1-lbc$^16/2-16-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,65},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,5097838}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[{1,1},{1,2},{2,1},{2,2},{3,1},{3,2},{4,1},{4,2}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",142}]}.
    {call,2,{f,770}}. % '-mixed/1-lbc$^18/2-18-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,64},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,5097838}]}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",145}]}.
    {call,1,{f,764}}. % '-mixed/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,63},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",147}]}.
    {call,1,{f,758}}. % '-mixed/1-lc$^21/1-21-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,62},
          [{tr,{x,0},{t_list,{t_integer,{1,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",150}]}.
    {call,1,{f,75}}. % mixed_nested/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,61},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2,0,3,99>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[1]]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",152}]}.
    {call,2,{f,752}}. % '-mixed/1-lbc$^23/2-23-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,60},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",156}]}.
    {call,1,{f,336}}. % id/1
    {move,{literal,<<"*Ký">>},{x,1}}.
    {call,2,{f,77}}. % mixed_size/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,59},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,42,0,0,0,75,0,0,0,253,0,0,42,75>>}]}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",158}]}.
    {call,1,{f,79}}. % silly_lc_bc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",160}]}.
    {call,1,{f,90}}. % gen_data/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{integer,256},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",161}]}.
    {call,1,{f,90}}. % gen_data/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{integer,512},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",162}]}.
    {call,1,{f,90}}. % gen_data/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",164}]}.
    {call,1,{f,95}}. % match_context_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,58},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{literal,<<4,5,6>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",165}]}.
    {call,1,{f,97}}. % match_context_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,57},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<4,5,6>>}]}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",167}]}.
    {call,0,{f,101}}. % over_complex_generator/0
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,56},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<"ÿ">>}]}.
    {'catch',{y,3},{f,47}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",168}]}.
    {call,0,{f,103}}. % float_segment_size/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,47}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,55},[{x,0},2,{atom,'EXIT'}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_bincomp_SUITE.erl",170}]}.
    {call,1,{f,105}}. % inconsistent_types_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,54},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {'catch',{y,2},{f,48}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",171}]}.
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
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",173}]}.
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
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",175}]}.
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
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",180}]}.
    {call,1,{f,336}}. % id/1
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",178}]}.
    {call,1,{f,742}}. % '-mixed/1-fun-26-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {call_last,0,{f,328},4}. % cs_end/0
  {label,51}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",175}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",173}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",171}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",170}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",168}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",167}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",164}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",155}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",152}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",150}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",146}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",144}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",141}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",139}]}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",137}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",134}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",130}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",128}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",124}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",120}]}.
    {badmatch,{x,0}}.


{function, mixed_nested, 1, 75}.
  {label,74}.
    {line,[{location,"bs_bincomp_SUITE.erl",185}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",186}]}.
    {call,2,{f,739}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
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
    {call,1,{f,336}}. % id/1
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
    {line,[{location,"bs_bincomp_SUITE.erl",188}]}.
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
    {call_last,3,{f,732},2}. % '-mixed_size/2-lbc$^0/2-0-'/3


{function, silly_lc_bc, 1, 79}.
  {label,78}.
    {line,[{location,"bs_bincomp_SUITE.erl",191}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,silly_lc_bc},1}.
  {label,79}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',5}}}]}}.
    {test,is_ge,{f,80},[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,1}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",192}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",193}]}.
    {call,1,{f,84}}. % silly_bc/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,82},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",194}]}.
    {gc_bif,byte_size,{f,0},0,[{tr,{y,0},{t_bitstring,8,false}}],{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",195}]}.
    {gc_bif,'bsl',{f,0},1,[{integer,5},{tr,{y,1},{t_integer,{1,5}}}],{x,1}}.
    {test,is_eq_exact,
          {f,81},
          [{tr,{x,1},{t_integer,{10,160}}},
           {tr,{x,0},{t_integer,{0,288230376151711743}}}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",196}]}.
    {gc_bif,'-',{f,0},0,[{tr,{y,1},{t_integer,{1,5}}},{integer,1}],{x,0}}.
    {call_last,1,{f,79},2}. % silly_lc_bc/1
  {label,80}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,81}.
    {line,[{location,"bs_bincomp_SUITE.erl",195}]}.
    {badmatch,{x,1}}.
  {label,82}.
    {line,[{location,"bs_bincomp_SUITE.erl",193}]}.
    {badmatch,{x,0}}.


{function, silly_bc, 1, 84}.
  {label,83}.
    {line,[{location,"bs_bincomp_SUITE.erl",199}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,silly_bc},1}.
  {label,84}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',5}}}]}}.
    {test,is_eq_exact,{f,85},[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,0}]}.
    {move,{literal,<<0,1,2,3,4>>},{x,0}}.
    return.
  {label,85}.
    {line,[{location,"bs_bincomp_SUITE.erl",202}]}.
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
    {call_last,2,{f,729},1}. % '-silly_bc/1-lbc$^0/2-0-'/2


{function, silly_lc, 1, 87}.
  {label,86}.
    {line,[{location,"bs_bincomp_SUITE.erl",204}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,silly_lc},1}.
  {label,87}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',5}}}]}}.
    {test,is_eq_exact,{f,88},[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,0}]}.
    {move,{literal,[0,1,2,3,4]},{x,0}}.
    return.
  {label,88}.
    {line,[{location,"bs_bincomp_SUITE.erl",207}]}.
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
    {call_last,1,{f,726},0}. % '-silly_lc/1-lc$^0/1-0-'/1


{function, gen_data, 1, 90}.
  {label,89}.
    {line,[{location,"bs_bincomp_SUITE.erl",209}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,gen_data},1}.
  {label,90}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,512}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",210}]}.
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
    {call,2,{f,722}}. % '-gen_data/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",211}]}.
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
    {call,2,{f,714}}. % '-gen_data/1-lbc$^1/2-1-'/2
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
    {line,[{location,"bs_bincomp_SUITE.erl",214}]}.
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
    {call_last,2,{f,711},1}. % '-match_context_1/1-lbc$^0/2-0-'/2


{function, match_context_2, 1, 97}.
  {label,96}.
    {line,[{location,"bs_bincomp_SUITE.erl",217}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,match_context_2},1}.
  {label,97}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {call_only,1,{f,99}}. % do_match_context_2/1


{function, do_match_context_2, 1, 99}.
  {label,98}.
    {line,[{location,"bs_bincomp_SUITE.erl",220}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,do_match_context_2},1}.
  {label,99}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,708},1}. % '-do_match_context_2/1-lbc$^0/2-0-'/2


{function, over_complex_generator, 0, 101}.
  {label,100}.
    {line,[{location,"bs_bincomp_SUITE.erl",224}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,over_complex_generator},0}.
  {label,101}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0:2>>},{x,0}}.
    {call_last,2,{f,701},0}. % '-over_complex_generator/0-lbc$^0/2-0-'/2


{function, float_segment_size, 0, 103}.
  {label,102}.
    {line,[{location,"bs_bincomp_SUITE.erl",239}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,float_segment_size},0}.
  {label,103}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{float,0.79},{x,2}}.
    {move,{integer,42},{x,0}}.
    {call_last,3,{f,699},0}. % '-float_segment_size/0-lbc$^0/2-0-'/3


{function, inconsistent_types_1, 1, 105}.
  {label,104}.
    {line,[{location,"bs_bincomp_SUITE.erl",255}]}.
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
    {call_last,3,{f,696},1}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3


{function, inconsistent_types_2, 0, 107}.
  {label,106}.
    {line,[{location,"bs_bincomp_SUITE.erl",270}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,inconsistent_types_2},0}.
  {label,107}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",272}]}.
    {call,1,{f,336}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",274}]}.
    {call,3,{f,692}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",272}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.


{function, filters, 1, 109}.
  {label,108}.
    {line,[{location,"bs_bincomp_SUITE.erl",282}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,filters},1}.
  {label,109}.
    {test,is_list,{f,108},[{x,0}]}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",283}]}.
    {call,0,{f,326}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",285}]}.
    {call,2,{f,688}}. % '-filters/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,118},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"BDF">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",288}]}.
    {call,2,{f,683}}. % '-filters/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,117},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",291}]}.
    {call,2,{f,678}}. % '-filters/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,116},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"efg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",294}]}.
    {call,2,{f,673}}. % '-filters/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,115},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"b">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",298}]}.
    {call,2,{f,668}}. % '-filters/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,114},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"eg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[],[a],[],[x,y,z]]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",302}]}.
    {call,2,{f,664}}. % '-filters/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,113},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<"M">>,<<1,2>>,<<"*">>]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",308}]}.
    {call,2,{f,660}}. % '-filters/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,112},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"M*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<97,98,227,100,229,0:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",311}]}.
    {call,2,{f,656}}. % '-filters/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,111},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abd">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,42,43,42]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",315}]}.
    {call,2,{f,652}}. % '-filters/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,110},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"**">>}]}.
    {call_last,0,{f,328},0}. % cs_end/0
  {label,110}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{location,"bs_bincomp_SUITE.erl",311}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{location,"bs_bincomp_SUITE.erl",308}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{location,"bs_bincomp_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{location,"bs_bincomp_SUITE.erl",298}]}.
    {badmatch,{x,0}}.
  {label,115}.
    {line,[{location,"bs_bincomp_SUITE.erl",294}]}.
    {badmatch,{x,0}}.
  {label,116}.
    {line,[{location,"bs_bincomp_SUITE.erl",291}]}.
    {badmatch,{x,0}}.
  {label,117}.
    {line,[{location,"bs_bincomp_SUITE.erl",288}]}.
    {badmatch,{x,0}}.
  {label,118}.
    {line,[{location,"bs_bincomp_SUITE.erl",284}]}.
    {badmatch,{x,0}}.


{function, is_less_than, 2, 120}.
  {label,119}.
    {line,[{location,"bs_bincomp_SUITE.erl",318}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",321}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,trim_coverage},1}.
  {label,122}.
    {test,is_list,{f,121},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,b},{x,1}}.
    {move,{literal,{1328,777134}},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",322}]}.
    {call,3,{f,128}}. % coverage_materialiv/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,126},
          [{tr,{x,0},{t_bitstring,32,false}},
           {literal,<<0,0,0,2,0,0,5,48,0,11,219,174,0,0,0,0>>}]}.
    {move,{literal,[42,19,777]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",323}]}.
    {call,1,{f,134}}. % coverage_trimmer/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,125},
          [{tr,{x,0},{t_bitstring,32,true}},
           {literal,<<67,40,0,0,66,152,0,0,69,66,64,0>>}]}.
    {move,{integer,777},{x,1}}.
    {move,{literal,{3.0,40.0,-3555.0}},{x,2}}.
    {move,{integer,555},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",326}]}.
    {call,3,{f,132}}. % coverage_lightfv/3
    {test,is_eq_exact,
          {f,124},
          [{x,0},
           {literal,<<0,0,2,43,0,0,3,9,0,0,0,3,64,8,0,0,0,0,0,0,64,68,0,0,0,
                      0,0,0,192,171,198,0,0,0,0,0>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",327}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",324}]}.
    {badmatch,{x,0}}.
  {label,125}.
    {line,[{location,"bs_bincomp_SUITE.erl",323}]}.
    {badmatch,{x,0}}.
  {label,126}.
    {line,[{location,"bs_bincomp_SUITE.erl",322}]}.
    {badmatch,{x,0}}.


{function, coverage_materialiv, 3, 128}.
  {label,127}.
    {line,[{location,"bs_bincomp_SUITE.erl",330}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,coverage_materialiv},3}.
  {label,128}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[b]}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1328,1328}},
                                     2 => {t_integer,{777134,777134}}}}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_bincomp_SUITE.erl",331}]}.
    {call,1,{f,336}}. % id/1
    {test,is_eq_exact,{f,130},[{x,0},{atom,a}]}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",332}]}.
    {call,1,{f,336}}. % id/1
    {test,is_eq_exact,{f,129},[{x,0},{atom,b}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1328,777134]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",334}]}.
    {call,2,{f,649}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",333}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",332}]}.
    {badmatch,{x,0}}.
  {label,130}.
    {line,[{location,"bs_bincomp_SUITE.erl",331}]}.
    {badmatch,{x,0}}.


{function, coverage_lightfv, 3, 132}.
  {label,131}.
    {line,[{location,"bs_bincomp_SUITE.erl",337}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",339}]}.
    {call,2,{f,646}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,true}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",338}]}.
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
    {call_last,1,{f,336},0}. % id/1


{function, coverage_trimmer, 1, 134}.
  {label,133}.
    {line,[{location,"bs_bincomp_SUITE.erl",342}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,coverage_trimmer},1}.
  {label,134}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{19,777}},nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",343}]}.
    {call,1,{f,336}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",344}]}.
    {call,1,{f,336}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",345}]}.
    {call,1,{f,336}}. % id/1
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,642},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2


{function, coverage_summer, 4, 136}.
  {label,135}.
    {line,[{location,"bs_bincomp_SUITE.erl",350}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",352}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",354}]}.
    {call,2,{f,639}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
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
    {line,[{location,"bs_bincomp_SUITE.erl",355}]}.
    {call,2,{f,636}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",353}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",366}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,nomatch},1}.
  {label,140}.
    {test,is_list,{f,139},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",367}]}.
    {call,1,{f,336}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",368}]}.
    {call,2,{f,633}}. % '-nomatch/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,154},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",369}]}.
    {call,1,{f,631}}. % '-nomatch/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",370}]}.
    {call,1,{f,628}}. % '-nomatch/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",371}]}.
    {call,2,{f,626}}. % '-nomatch/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,153},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",372}]}.
    {call,2,{f,623}}. % '-nomatch/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,152},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {gc_bif,bit_size,{f,141},0,[{y,0}],{x,0}}.
    {jump,{f,142}}.
  {label,141}.
    {move,{integer,256},{x,0}}.
  {label,142}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",374}]}.
    {call,2,{f,619}}. % '-nomatch/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,151},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{integer,1},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",377}]}.
    {call,2,{f,616}}. % '-nomatch/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,150},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",379}]}.
    {call,2,{f,156}}. % nomatch_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,149},
          [{tr,{x,0},{t_bitstring,32,true}},
           {literal,<<0,0,0,1,0,0,0,2,0,0,0,3>>}]}.
    {move,{atom,bad},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",380}]}.
    {call,2,{f,156}}. % nomatch_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,148},
          [{tr,{x,0},{t_bitstring,32,true}},{literal,<<>>}]}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",382}]}.
    {call,2,{f,613}}. % '-nomatch/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,147},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",387}]}.
    {call,2,{f,611}}. % '-nomatch/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,336}}. % id/1
    {test,is_eq_exact,{f,146},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",388}]}.
    {call,2,{f,609}}. % '-nomatch/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,336}}. % id/1
    {test,is_eq_exact,{f,145},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,143}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",390}]}.
    {call,2,{f,607}}. % '-nomatch/1-lbc$^12/2-12-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,143}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,144},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,144},[{x,1}]}.
    {test,test_arity,{f,144},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,144},[{x,1},{literal,{bad_generator,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,144}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,145}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,146}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",387}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",382}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",380}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",379}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",377}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",374}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",372}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",371}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",368}]}.
    {badmatch,{x,0}}.


{function, nomatch_1, 2, 156}.
  {label,155}.
    {line,[{location,"bs_bincomp_SUITE.erl",394}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,nomatch_1},2}.
  {label,156}.
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
    {call_last,3,{f,604},2}. % '-nomatch_1/2-lbc$^0/2-0-'/3


{function, sizes, 1, 158}.
  {label,157}.
    {line,[{location,"bs_bincomp_SUITE.erl",397}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,sizes},1}.
  {label,158}.
    {test,is_list,{f,157},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",398}]}.
    {call,0,{f,326}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",402}]}.
    {call,1,{f,596}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,215},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",403}]}.
    {call,1,{f,596}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,214},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",404}]}.
    {call,1,{f,596}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",405}]}.
    {call,1,{f,596}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",410}]}.
    {call,1,{f,588}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,211},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",411}]}.
    {call,1,{f,588}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,210},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1>>}]}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",412}]}.
    {call,1,{f,588}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2>>}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",413}]}.
    {call,1,{f,588}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,208},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2,0,3>>}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",418}]}.
    {call,1,{f,580}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,207},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",419}]}.
    {call,1,{f,580}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,206},{x,1},{commands,[{ensure_exactly,4},{'=:=',nil,4,1}]}}.
    {move,{literal,[1,13]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",420}]}.
    {call,1,{f,580}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,205},{x,1},{commands,[{ensure_exactly,8},{'=:=',nil,8,29}]}}.
    {move,{literal,[1,13,7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",421}]}.
    {call,1,{f,580}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,204},
              {x,1},
              {commands,[{ensure_exactly,12},{'=:=',nil,12,471}]}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2000},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",422}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {call,1,{f,580}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,203},
              {x,1},
              {commands,[{ensure_at_least,8000,1},
                         {integer,2,{literal,[]},1000,8,{x,2}}]}}.
    {test,is_eq_exact,{f,203},[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {bs_match,{f,203},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",427}]}.
    {call,1,{f,572}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,202},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1,2,1,3,0,7,5]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",428}]}.
    {call,1,{f,572}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,201},
              {x,1},
              {commands,[{ensure_exactly,21},{'=:=',nil,21,333373}]}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,512},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",429}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {call,1,{f,572}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,200},
              {x,1},
              {commands,[{ensure_at_least,1536,1},
                         {integer,2,{literal,[]},512,3,{x,2}}]}}.
    {test,is_eq_exact,{f,200},[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {bs_match,{f,200},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,8},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",434}]}.
    {call,2,{f,564}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,199},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,6},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",435}]}.
    {call,2,{f,564}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,198},{x,1},{commands,[{ensure_exactly,6},{'=:=',nil,6,42}]}}.
    {move,{integer,16},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",436}]}.
    {call,2,{f,564}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,197},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,42>>}]}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,3}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",441}]}.
    {call,4,{f,556}}. % '-sizes/1-fun-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,196},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,3},{x,1}}.
    {move,{integer,7},{x,3}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",442}]}.
    {call,4,{f,556}}. % '-sizes/1-fun-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,195},
          [{x,1},99,{string,<<224,0,0,0,1,0,0,0,0,0,0,1,32>>}]}.
    {bs_match,{f,195},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,3}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",448}]}.
    {call,4,{f,548}}. % '-sizes/1-fun-13-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,194},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,3},{x,1}}.
    {move,{integer,7},{x,3}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",449}]}.
    {call,4,{f,548}}. % '-sizes/1-fun-13-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,193},
          [{x,1},
           171,
           {string,<<97,98,99,224,0,0,0,1,14,46,46,32,0,0,0,0,0,1,47,15,47,
                     64>>}]}.
    {bs_match,{f,193},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,42},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",454}]}.
    {call,2,{f,540}}. % '-sizes/1-fun-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,192},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,20},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",455}]}.
    {call,2,{f,540}}. % '-sizes/1-fun-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,191},
              {x,1},
              {commands,[{ensure_exactly,28},{'=:=',nil,28,44040235}]}}.
    {move,{literal,"Foundation"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",460}]}.
    {call,1,{f,534}}. % '-sizes/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,190},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"Foundation">>}]}.
    {move,{literal,[1054,1089,1085,1086,1074,1072,1085,1080,1077]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",461}]}.
    {call,1,{f,534}}. % '-sizes/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,189},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",468}]}.
    {call,1,{f,526}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,188},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",469}]}.
    {call,1,{f,526}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,187},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1>>}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",470}]}.
    {call,1,{f,526}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,186},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",475}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,185},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",476}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,184},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,<<0,1,0,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",477}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,183},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",478}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,182},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,0:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",479}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,181},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",480}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,180},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,21,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",481}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,179},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,1,127:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",482}]}.
    {call,1,{f,518}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,178},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",487}]}.
    {call,3,{f,510}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,177},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,255},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",488}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",489}]}.
    {call,3,{f,510}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,176},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,4},{x,1}}.
    {move,{integer,4},{x,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",490}]}.
    {call,3,{f,510}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,175},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,8},{x,1}}.
    {move,{integer,8},{x,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",491}]}.
    {call,3,{f,510}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,174},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,9},{x,1}}.
    {move,{integer,6},{x,2}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<69,3:4>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",492}]}.
    {call,3,{f,510}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,173},
              {x,1},
              {commands,[{ensure_exactly,18},{'=:=',nil,18,8723}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",497}]}.
    {call,1,{f,505}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,172},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",498}]}.
    {call,1,{f,505}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,171},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",499}]}.
    {call,1,{f,505}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,170},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,6},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",500}]}.
    {call,1,{f,505}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,169},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",501}]}.
    {call,1,{f,505}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,168},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",502}]}.
    {call,1,{f,505}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,167},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0,0>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",504}]}.
    {call,2,{f,502}}. % '-sizes/1-lbc$^26/2-13-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,166},{x,1},{commands,[{ensure_exactly,3},{'=:=',nil,3,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",505}]}.
    {call,2,{f,499}}. % '-sizes/1-lbc$^27/2-14-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,165},{x,1},{commands,[{ensure_exactly,3},{'=:=',nil,3,0}]}}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",510}]}.
    {call,2,{f,489}}. % '-sizes/1-fun-30-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,164},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,97,0,0,0,98,0,0,0,99,0,0,97,98>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{literal,[8,bad]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",511}]}.
    {call,2,{f,489}}. % '-sizes/1-fun-30-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,163},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>}]}.
    {move,{literal,<<0,0,0,70,0,0,0,111,0,0,0,117,0,0,0,110,0,0,0,100,0,0,0,
                     97,0,0,0,116,0,0,0,105,0,0,0,111,0,0,0,110>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",516}]}.
    {call,1,{f,483}}. % '-sizes/1-fun-32-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,162},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"Foundation">>}]}.
    {move,{literal,<<0,0,4,30,0,0,4,65,0,0,4,61,0,0,4,62,0,0,4,50,0,0,4,48,0,
                     0,4,61,0,0,4,56,0,0,4,53>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",517}]}.
    {call,1,{f,483}}. % '-sizes/1-fun-32-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,161},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,159}}.
    {move,{literal,{1,2,3}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",519}]}.
    {call,2,{f,481}}. % '-sizes/1-lbc$^33/2-18-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,159}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,160},[{x,0},2,{atom,'EXIT'}]}.
    {call_last,0,{f,328},1}. % cs_end/0
  {label,160}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",519}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",517}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",516}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",511}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",510}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",505}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",504}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",502}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",501}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",500}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",499}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",498}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",497}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",492}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",491}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",490}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",489}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",487}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",482}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",481}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",480}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",479}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",478}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",477}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",476}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",475}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",470}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",469}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",468}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",461}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",460}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",455}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",454}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",449}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",448}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",441}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",434}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",422}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",413}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",410}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",405}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",404}]}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",403}]}.
    {badmatch,{x,0}}.
  {label,215}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",402}]}.
    {badmatch,{x,0}}.


{function, general_expressions, 1, 217}.
  {label,216}.
    {line,[{location,"bs_bincomp_SUITE.erl",527}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,general_expressions},1}.
  {label,217}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",528}]}.
    {call,0,{f,326}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",530}]}.
    {call,2,{f,478}}. % '-general_expressions/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,241},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",531}]}.
    {call,2,{f,475}}. % '-general_expressions/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,240},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",532}]}.
    {call,2,{f,472}}. % '-general_expressions/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,239},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<1,2>>,<<3>>]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",536}]}.
    {call,2,{f,469}}. % '-general_expressions/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,238},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",537}]}.
    {call,2,{f,466}}. % '-general_expressions/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,237},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4,5]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",538}]}.
    {call,2,{f,461}}. % '-general_expressions/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,236},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",542}]}.
    {call,2,{f,455}}. % '-general_expressions/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,235},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,4,5,6,7>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",544}]}.
    {call,2,{f,450}}. % '-general_expressions/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,234},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,2,3,4,4>>}]}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,<<"*">>},{x,1}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",548}]}.
    send.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",549}]}.
    {call,2,{f,445}}. % '-general_expressions/1-lbc$^9/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,233},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",550}]}.
    {call,2,{f,440}}. % '-general_expressions/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,232},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<10,5,3>>}]}.
    {move,{literal,"3A7"},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",556}]}.
    {call,1,{f,243}}. % hstring_to_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,231},
              {x,1},
              {commands,[{ensure_exactly,12},{'=:=',nil,12,935}]}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",557}]}.
    {call,1,{f,336}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{literal,{65,8}},{x,0}}.
    {call,1,{f,336}}. % id/1
    {move,{y,5},{x,1}}.
    {move,{x,0},{x,2}}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{literal,"ABCDEFGH"},{x,0}}.
    {call,3,{f,250}}. % encode_chars_compact_map/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,230},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,342391}]}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",559}]}.
    {call,0,{f,328}}. % cs_end/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,5},{f,218}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",562}]}.
    {call,2,{f,438}}. % '-general_expressions/1-lbc$^11/2-11-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,218}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,229},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,229},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,4},{f,219}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_bincomp_SUITE.erl",563}]}.
    {call,2,{f,436}}. % '-general_expressions/1-lbc$^12/2-12-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,219}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,228},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,228},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,3},{f,220}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_bincomp_SUITE.erl",564}]}.
    {call,2,{f,434}}. % '-general_expressions/1-lbc$^13/2-13-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,220}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,227},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,227},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,2},{f,221}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_bincomp_SUITE.erl",565}]}.
    {call,2,{f,432}}. % '-general_expressions/1-lbc$^14/2-14-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,221}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,226},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,226},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,1},{f,222}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_bincomp_SUITE.erl",566}]}.
    {call,2,{f,430}}. % '-general_expressions/1-lbc$^15/2-15-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,222}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,225},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,225},[{x,1},2,{atom,badarg}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,223}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_bincomp_SUITE.erl",567}]}.
    {call,2,{f,425}}. % '-general_expressions/1-lbc$^16/2-16-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
  {label,223}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,224},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,224},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,224}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",567}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",566}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",565}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",564}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",563}]}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",562}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",556}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",549}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",544}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",542}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",538}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",537}]}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",536}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",532}]}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",531}]}.
    {badmatch,{x,0}}.
  {label,241}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",530}]}.
    {badmatch,{x,0}}.


{function, hstring_to_bitstring, 1, 243}.
  {label,242}.
    {line,[{location,"bs_bincomp_SUITE.erl",571}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,hstring_to_bitstring},1}.
  {label,243}.
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
            {f,244},
            1,
            [{tr,{x,0},{t_integer,{4,1152921504606846972}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{11,1152921504606846979}}},{integer,3}],
            {x,0}}.
    {jump,{f,245}}.
  {label,244}.
    {move,{integer,256},{x,0}}.
  {label,245}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,422},1}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2


{function, hex_to_int, 1, 247}.
  {label,246}.
    {line,[{location,"bs_bincomp_SUITE.erl",574}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,hex_to_int},1}.
  {label,247}.
    {'%',{var_info,{x,0},[{type,{t_integer,{51,65}}}]}}.
    {test,is_ge,{f,248},[{integer,57},{tr,{x,0},{t_integer,{51,65}}}]}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{51,57}}},{integer,48}],{x,0}}.
    return.
  {label,248}.
    {test,is_ge,{f,246},[{tr,{x,0},{t_integer,{58,65}}},{integer,65}]}.
    {move,{integer,10},{x,0}}.
    return.


{function, encode_chars_compact_map, 3, 250}.
  {label,249}.
    {line,[{location,"bs_bincomp_SUITE.erl",577}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,encode_chars_compact_map},3}.
  {label,250}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{65,72}},nil}}]}}.
    {test,is_tuple,{f,249},[{x,2}]}.
    {test,test_arity,{f,249},[{x,2},2]}.
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
            {f,251},
            2,
            [{tr,{x,0},{t_integer,{1,288230376151711743}}},{x,1}],
            {x,0}}.
    {gc_bif,'+',{f,251},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,251},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,252}}.
  {label,251}.
    {move,{integer,256},{x,0}}.
  {label,252}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {get_tuple_element,{y,0},0,{x,4}}.
    {get_tuple_element,{y,0},1,{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,5,{f,419},3}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5


{function, enc_char_cm, 3, 254}.
  {label,253}.
    {line,[{location,"bs_bincomp_SUITE.erl",580}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,enc_char_cm},3}.
  {label,254}.
    {'%',{var_info,{x,0},[{type,{t_integer,{65,72}}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",581}]}.
    {gc_bif,'-',{f,0},3,[{tr,{x,0},{t_integer,{65,72}}},{x,1}],{x,0}}.
    {test,is_ge,{f,255},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {test,is_lt,{f,255},[{tr,{x,0},{t_number,{0,'+inf'}}},{x,2}]}.
    return.
  {label,255}.
    {move,{atom,illegal},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",586}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, no_generator, 1, 257}.
  {label,256}.
    {line,[{location,"bs_bincomp_SUITE.erl",591}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,no_generator},1}.
  {label,257}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",592}]}.
    {call,1,{f,336}}. % id/1
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
          {f,261},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test,is_eq_exact,
          {f,260},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {'catch',{y,0},{f,258}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",596}]}.
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
  {label,258}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,259},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,259},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,259}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",596}]}.
    {badmatch,{x,0}}.
  {label,260}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",593}]}.
    {badmatch,{x,0}}.
  {label,261}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",592}]}.
    {badmatch,{x,0}}.


{function, zero_pattern, 1, 263}.
  {label,262}.
    {line,[{location,"bs_bincomp_SUITE.erl",600}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,zero_pattern},1}.
  {label,263}.
    {test,is_atom,{f,264},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,2,{f,417},0}. % '-zero_pattern/1-lbc$^0/2-0-'/2
  {label,264}.
    {move,{atom,ok},{x,0}}.
    return.


{function, multiple_segments, 1, 266}.
  {label,265}.
    {line,[{location,"bs_bincomp_SUITE.erl",621}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,multiple_segments},1}.
  {label,266}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",622}]}.
    {call,0,{f,326}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<4,16,66>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",624}]}.
    {call,1,{f,278}}. % matched_out_size/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,276},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[1,2]}]}.
    {move,{literal,<<16,0,42,72>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",625}]}.
    {call,1,{f,278}}. % matched_out_size/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,275},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,"*"}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",627}]}.
    {call,1,{f,281}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,274},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",628}]}.
    {call,1,{f,281}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,273},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",629}]}.
    {call,1,{f,281}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,272},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",630}]}.
    {call,1,{f,281}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,271},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<99,0,1,1,2,3,4,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",631}]}.
    {call,1,{f,281}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_eq_exact,
          {f,270},
          [{tr,{x,0},{t_list,{t_integer,{0,255}},nil}},{literal,[1,4]}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",633}]}.
    {call,1,{f,284}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_nil,{f,269},[{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",634}]}.
    {call,1,{f,284}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,268},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[6]}]}.
    {move,{literal,<<1,2,3,4,5,6,7,8>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",635}]}.
    {call,1,{f,284}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,267},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[6,15]}]}.
    {call_last,0,{f,328},0}. % cs_end/0
  {label,267}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{location,"bs_bincomp_SUITE.erl",634}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{location,"bs_bincomp_SUITE.erl",633}]}.
    {badmatch,{x,0}}.
  {label,270}.
    {line,[{location,"bs_bincomp_SUITE.erl",631}]}.
    {badmatch,{x,0}}.
  {label,271}.
    {line,[{location,"bs_bincomp_SUITE.erl",630}]}.
    {badmatch,{x,0}}.
  {label,272}.
    {line,[{location,"bs_bincomp_SUITE.erl",629}]}.
    {badmatch,{x,0}}.
  {label,273}.
    {line,[{location,"bs_bincomp_SUITE.erl",628}]}.
    {badmatch,{x,0}}.
  {label,274}.
    {line,[{location,"bs_bincomp_SUITE.erl",627}]}.
    {badmatch,{x,0}}.
  {label,275}.
    {line,[{location,"bs_bincomp_SUITE.erl",625}]}.
    {badmatch,{x,0}}.
  {label,276}.
    {line,[{location,"bs_bincomp_SUITE.erl",624}]}.
    {badmatch,{x,0}}.


{function, matched_out_size, 1, 278}.
  {label,277}.
    {line,[{location,"bs_bincomp_SUITE.erl",640}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,matched_out_size},1}.
  {label,278}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",641}]}.
    {call,2,{f,413}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",642}]}.
    {call,1,{f,409}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",643}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,
          {f,279},
          [{tr,{x,0},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,1,true}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,279}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_1, 1, 281}.
  {label,280}.
    {line,[{location,"bs_bincomp_SUITE.erl",646}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,do_multiple_segments_1},1}.
  {label,281}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",647}]}.
    {call,2,{f,405}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,333}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",648}]}.
    {call,1,{f,401}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",649}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,
          {f,282},
          [{tr,{x,0},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,1,true}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,282}.
    {badmatch,{x,0}}.


{function, do_multiple_segments_2, 1, 284}.
  {label,283}.
    {line,[{location,"bs_bincomp_SUITE.erl",652}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,do_multiple_segments_2},1}.
  {label,284}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",653}]}.
    {call,2,{f,398}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,330}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",654}]}.
    {call,1,{f,395}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",655}]}.
    {call_ext,1,{extfunc,erlang,list_to_binary,1}}.
    {test,is_eq_exact,
          {f,285},
          [{tr,{x,0},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,1,true}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,285}.
    {badmatch,{x,0}}.


{function, grab_bag, 1, 287}.
  {label,286}.
    {line,[{location,"bs_bincomp_SUITE.erl",658}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,grab_bag},1}.
  {label,287}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {'catch',{y,3},{f,288}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",659}]}.
    {call,1,{f,299}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,288}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,297},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,297},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,289}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_bincomp_SUITE.erl",660}]}.
    {call,1,{f,299}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,289}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,296},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,296},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,290}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_bincomp_SUITE.erl",661}]}.
    {call,1,{f,299}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,290}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,295},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,295},[{x,1}]}.
    {test,test_arity,{f,295},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,295},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,0},{f,291}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",664}]}.
    {call,2,{f,393}}. % '-grab_bag/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,291}.
    {try_case,{y,0}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_bincomp_SUITE.erl",666}]}.
    {call,1,{f,303}}. % grab_bag_gh_8617/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_nil,{f,294},[{tr,{x,0},{t_list,{t_integer,{0,0}},nil}}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",667}]}.
    {call,1,{f,303}}. % grab_bag_gh_8617/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_eq_exact,
          {f,293},
          [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{literal,[0]}]}.
    {move,{literal,<<0:3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",668}]}.
    {call,1,{f,303}}. % grab_bag_gh_8617/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_eq_exact,
          {f,292},
          [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{literal,[0,0,0]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,292}.
    {badmatch,{x,0}}.
  {label,293}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",667}]}.
    {badmatch,{x,0}}.
  {label,294}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",666}]}.
    {badmatch,{x,0}}.
  {label,295}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",661}]}.
    {badmatch,{x,0}}.
  {label,296}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",660}]}.
    {badmatch,{x,0}}.
  {label,297}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",659}]}.
    {badmatch,{x,0}}.


{function, grab_bag_gh_6553, 1, 299}.
  {label,298}.
    {line,[{location,"bs_bincomp_SUITE.erl",672}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,grab_bag_gh_6553},1}.
  {label,299}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,none,none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,301},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,300},{x,0},{commands,[{ensure_at_least,8,1}]}}.
    {test,bs_get_integer2,
          {f,300},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[672,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,300},{x,0},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",674}]}.
    {badmatch,{literal,<<>>}}.
  {label,300}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,298}}.
  {label,301}.
    {move,{atom,a},{x,0}}.
    {jump,{f,298}}.


{function, grab_bag_gh_8617, 1, 303}.
  {label,302}.
    {line,[{location,"bs_bincomp_SUITE.erl",676}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,grab_bag_gh_8617},1}.
  {label,303}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {call_only,1,{f,388}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1


{function, strict_generators, 1, 305}.
  {label,304}.
    {line,[{location,"bs_bincomp_SUITE.erl",683}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,strict_generators},1}.
  {label,305}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",685}]}.
    {call,2,{f,385}}. % '-strict_generators/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,324},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<2,3,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",686}]}.
    {call,2,{f,381}}. % '-strict_generators/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,323},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<2,3,4>>}]}.
    {move,{literal,#{1 => 2,3 => 4}},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",687}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,4}}.
    {test,is_nil,{f,306},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => 2,3 => 4}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,306}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call,2,{f,377}}. % '-strict_generators/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,322},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<2,12>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",690}]}.
    {call,2,{f,373}}. % '-strict_generators/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,321},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<3,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",691}]}.
    {call,2,{f,368}}. % '-strict_generators/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,320},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<3,4>>}]}.
    {move,{literal,#{1 => 2,3 => 4}},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",692}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,4}}.
    {test,is_nil,{f,307},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => 2,3 => 4}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,307}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call,2,{f,363}}. % '-strict_generators/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,319},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<"\f">>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,4},{f,308}}.
    {move,{literal,[{ok,1},2,{ok,3}]},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",695}]}.
    {call,2,{f,359}}. % '-strict_generators/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
  {label,308}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,318},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,318},[{x,1}]}.
    {test,test_arity,{f,318},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,318},[{x,1},{literal,{badmatch,2}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,3},{f,309}}.
    {move,{literal,<<1,128,2>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",696}]}.
    {call,2,{f,355}}. % '-strict_generators/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
  {label,309}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,317},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,317},[{x,1}]}.
    {test,test_arity,{f,317},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,317},[{x,1},{literal,{badmatch,<<128,2>>}}]}.
    {'catch',{y,2},{f,311}}.
    {move,{literal,#{1 => ok,2 => error,3 => ok}},{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",697}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,4}}.
    {test,is_nil,{f,310},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => ok,2 => error,3 => ok}}},{x,0}}.
    {line,[{scope,[5]},{location,"bs_bincomp_SUITE.erl",697}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {jump,{f,311}}.
  {label,310}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call,2,{f,350}}. % '-strict_generators/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
  {label,311}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,316},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,316},[{x,1}]}.
    {test,test_arity,{f,316},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,316},[{x,1},{literal,{badmatch,{2,error}}}]}.
    {'catch',{y,1},{f,312}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",700}]}.
    {call,1,{f,346}}. % '-strict_generators/1-lc$^9/1-9-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,7}},nil}}]}}.
  {label,312}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,315},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,315},[{x,1}]}.
    {test,test_arity,{f,315},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,315},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,315},2,[{x,1}],{x,1}}.
    {bs_match,{f,315},{x,1},{commands,[{ensure_exactly,2},{'=:=',nil,2,0}]}}.
    {'catch',{y,0},{f,313}}.
    {move,{literal,<<8,1,9,2>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_bincomp_SUITE.erl",701}]}.
    {call,1,{f,342}}. % '-strict_generators/1-lc$^10/1-10-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
  {label,313}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,314},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,314},[{x,1}]}.
    {test,test_arity,{f,314},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,314},[{x,1},{literal,{badmatch,<<9,2>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,314}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",701}]}.
    {badmatch,{x,0}}.
  {label,315}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",700}]}.
    {badmatch,{x,0}}.
  {label,316}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",697}]}.
    {badmatch,{x,0}}.
  {label,317}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",696}]}.
    {badmatch,{x,0}}.
  {label,318}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",695}]}.
    {badmatch,{x,0}}.
  {label,319}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",692}]}.
    {badmatch,{x,0}}.
  {label,320}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",691}]}.
    {badmatch,{x,0}}.
  {label,321}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",690}]}.
    {badmatch,{x,0}}.
  {label,322}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",687}]}.
    {badmatch,{x,0}}.
  {label,323}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",686}]}.
    {badmatch,{x,0}}.
  {label,324}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",685}]}.
    {badmatch,{x,0}}.


{function, cs_init, 0, 326}.
  {label,325}.
    {line,[{location,"bs_bincomp_SUITE.erl",705}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs_init},0}.
  {label,326}.
    {allocate,0,0}.
    {move,{atom,true},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",706}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs_end, 0, 328}.
  {label,327}.
    {line,[{location,"bs_bincomp_SUITE.erl",709}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs_end},0}.
  {label,328}.
    {allocate,0,0}.
    {move,{atom,false},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",710}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs, 1, 330}.
  {label,329}.
    {line,[{location,"bs_bincomp_SUITE.erl",714}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs},1}.
  {label,330}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",733}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,true}}],{y,0}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,binary_info},{y,1}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",735}]}.
    {call_ext,1,{extfunc,erts_debug,get_internal_state,1}}.
    {test,is_tagged_tuple,{f,331},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tagged_tuple,{f,331},[{x,1},2,{atom,binary}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,
          {f,331},
          [{x,2},{tr,{y,0},{t_integer,{0,288230376151711743}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,331},
          [{x,1},{tr,{y,0},{t_integer,{0,288230376151711743}}}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,331}.
    {line,[{location,"bs_bincomp_SUITE.erl",734}]}.
    {badmatch,{x,0}}.


{function, cs_default, 1, 333}.
  {label,332}.
    {line,[{location,"bs_bincomp_SUITE.erl",740}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs_default},1}.
  {label,333}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",741}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,true}}],{y,0}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,binary_info},{y,1}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",743}]}.
    {call_ext,1,{extfunc,erts_debug,get_internal_state,1}}.
    {test,is_tagged_tuple,{f,334},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,334},[{x,1},{literal,{binary,256}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,334},
          [{x,1},{tr,{y,0},{t_integer,{0,288230376151711743}}}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,334}.
    {line,[{location,"bs_bincomp_SUITE.erl",742}]}.
    {badmatch,{x,0}}.


{function, id, 1, 336}.
  {label,335}.
    {line,[{location,"bs_bincomp_SUITE.erl",746}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,id},1}.
  {label,336}.
    return.


{function, module_info, 0, 338}.
  {label,337}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,module_info},0}.
  {label,338}.
    {move,{atom,bs_bincomp_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 340}.
  {label,339}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,module_info},1}.
  {label,340}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_bincomp_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-strict_generators/1-lc$^10/1-10-', 1, 342}.
  {label,341}.
    {line,[{location,"bs_bincomp_SUITE.erl",701}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lc$^10/1-10-'},
               1}.
  {label,342}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,343},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,343},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[701,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,342}}. % '-strict_generators/1-lc$^10/1-10-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,343}.
    {bs_set_position,{x,0},{x,1}}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bs_context,1}}],{x,1}}.
    {test,is_ge,
          {f,344},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,344}.
    {move,nil,{x,0}}.
    return.


{function, '-strict_generators/1-lc$^9/1-9-', 1, 346}.
  {label,345}.
    {line,[{location,"bs_bincomp_SUITE.erl",700}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lc$^9/1-9-'},
               1}.
  {label,346}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,347},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,1,{literal,[]},3,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,346}}. % '-strict_generators/1-lc$^9/1-9-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,7}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,347}.
    {bs_set_position,{x,0},{x,1}}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bs_context,1}}],{x,1}}.
    {test,is_ge,
          {f,348},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,348}.
    {move,nil,{x,0}}.
    return.


{function, '-strict_generators/1-lbc$^8/2-8-', 2, 350}.
  {label,349}.
    {line,[{location,"bs_bincomp_SUITE.erl",697}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^8/2-8-'},
               2}.
  {label,350}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_tuple,{f,352},[{x,0}]}.
    {test,test_arity,{f,353},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {test,is_eq_exact,{f,351},[{x,3},{atom,ok}]}.
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
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,2,{f,350}}. % '-strict_generators/1-lbc$^8/2-8-'/2
  {label,351}.
    {test_heap,6,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,352}.
    {test,is_eq_exact,{f,353},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,353}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,350},1}. % '-strict_generators/1-lbc$^8/2-8-'/2


{function, '-strict_generators/1-lbc$^7/2-7-', 2, 355}.
  {label,354}.
    {line,[{location,"bs_bincomp_SUITE.erl",696}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^7/2-7-'},
               2}.
  {label,355}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,356},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,1,0},
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
    {call_only,2,{f,355}}. % '-strict_generators/1-lbc$^7/2-7-'/2
  {label,356}.
    {bs_set_position,{x,0},{x,2}}.
    {gc_bif,bit_size,{f,0},2,[{tr,{x,0},{t_bs_context,1}}],{x,2}}.
    {test,is_ge,
          {f,357},
          [{tr,{x,2},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,357}.
    {move,{x,1},{x,0}}.
    return.


{function, '-strict_generators/1-lbc$^6/2-6-', 2, 359}.
  {label,358}.
    {line,[{location,"bs_bincomp_SUITE.erl",695}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^6/2-6-'},
               2}.
  {label,359}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,
                         {t_integer,{2,2}},
                         [{{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => {t_integer,{1,3}}}}}],
                         none},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,361},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_tuple,
          {f,360},
          [{tr,{x,2},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{1,3}}}}}],
                        none}}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{1,3}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,359}}. % '-strict_generators/1-lbc$^6/2-6-'/2
  {label,360}.
    {move,{literal,{badmatch,2}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,361}.
    {move,{x,1},{x,0}}.
    return.


{function, '-strict_generators/1-lbc$^5/2-5-', 2, 363}.
  {label,362}.
    {line,[{location,"bs_bincomp_SUITE.erl",692}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^5/2-5-'},
               2}.
  {label,363}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_tuple,{f,365},[{x,0}]}.
    {test,test_arity,{f,366},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_lt,{f,364},[{integer,1},{x,2}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {gc_bif,'*',
            {f,0},
            4,
            [{tr,{x,2},
                 {t_union,{t_atom,any},
                          {t_list,any,any},
                          {t_number,{1,'+inf'}},
                          {t_tuple,0,false,#{}},
                          other}},
             {x,0}],
            {x,0}}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_number,any}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,363}}. % '-strict_generators/1-lbc$^5/2-5-'/2
  {label,364}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,363}}. % '-strict_generators/1-lbc$^5/2-5-'/2
  {label,365}.
    {test,is_eq_exact,{f,366},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,366}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,363},1}. % '-strict_generators/1-lbc$^5/2-5-'/2


{function, '-strict_generators/1-lbc$^4/2-4-', 2, 368}.
  {label,367}.
    {line,[{location,"bs_bincomp_SUITE.erl",691}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^4/2-4-'},
               2}.
  {label,368}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,370},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_ge,{f,369},[{tr,{x,2},{t_integer,{0,255}}},{integer,2}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{2,255}}},{integer,1}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{3,256}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,368}}. % '-strict_generators/1-lbc$^4/2-4-'/2
  {label,369}.
    {call_only,2,{f,368}}. % '-strict_generators/1-lbc$^4/2-4-'/2
  {label,370}.
    {bs_set_position,{x,0},{x,2}}.
    {gc_bif,bit_size,{f,0},2,[{tr,{x,0},{t_bs_context,8}}],{x,2}}.
    {test,is_ge,
          {f,371},
          [{tr,{x,2},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,371}.
    {move,{x,1},{x,0}}.
    return.


{function, '-strict_generators/1-lbc$^3/2-3-', 2, 373}.
  {label,372}.
    {line,[{location,"bs_bincomp_SUITE.erl",690}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^3/2-3-'},
               2}.
  {label,373}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,375},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_ge,{f,374},[{tr,{x,2},{t_integer,{1,3}}},{integer,2}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{2,3}}},{integer,1}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{3,4}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,373}}. % '-strict_generators/1-lbc$^3/2-3-'/2
  {label,374}.
    {call_only,2,{f,373}}. % '-strict_generators/1-lbc$^3/2-3-'/2
  {label,375}.
    {move,{x,1},{x,0}}.
    return.


{function, '-strict_generators/1-lbc$^2/2-2-', 2, 377}.
  {label,376}.
    {line,[{location,"bs_bincomp_SUITE.erl",687}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^2/2-2-'},
               2}.
  {label,377}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_tuple,{f,378},[{x,0}]}.
    {test,test_arity,{f,379},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {gc_bif,'*',{f,0},4,[{x,2},{x,3}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_number,any}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {call_only,2,{f,377}}. % '-strict_generators/1-lbc$^2/2-2-'/2
  {label,378}.
    {test,is_eq_exact,{f,379},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,379}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,377},1}. % '-strict_generators/1-lbc$^2/2-2-'/2


{function, '-strict_generators/1-lbc$^1/2-1-', 2, 381}.
  {label,380}.
    {line,[{location,"bs_bincomp_SUITE.erl",686}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^1/2-1-'},
               2}.
  {label,381}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,382},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{0,255}}},{integer,1}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{1,256}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,381}}. % '-strict_generators/1-lbc$^1/2-1-'/2
  {label,382}.
    {bs_set_position,{x,0},{x,2}}.
    {gc_bif,bit_size,{f,0},2,[{tr,{x,0},{t_bs_context,8}}],{x,2}}.
    {test,is_ge,
          {f,383},
          [{tr,{x,2},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,383}.
    {move,{x,1},{x,0}}.
    return.


{function, '-strict_generators/1-lbc$^0/2-0-', 2, 385}.
  {label,384}.
    {line,[{location,"bs_bincomp_SUITE.erl",685}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^0/2-0-'},
               2}.
  {label,385}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,386},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,2},{t_integer,{1,3}}},{integer,1}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{2,4}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,385}}. % '-strict_generators/1-lbc$^0/2-0-'/2
  {label,386}.
    {move,{x,1},{x,0}}.
    return.


{function, '-grab_bag_gh_8617/1-lc$^0/1-0-', 1, 388}.
  {label,387}.
    {line,[{location,"bs_bincomp_SUITE.erl",680}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-grab_bag_gh_8617/1-lc$^0/1-0-'},
               1}.
  {label,388}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,390},{x,0},{commands,[{ensure_at_least,0,1},{skip,0}]}}.
    {bif,self,{f,0},[],{x,2}}.
    {test,bs_skip_bits2,
          {f,390},
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[680,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",681}]}.
    {call,1,{f,336}}. % id/1
    {test,is_pid,{f,389},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",680}]}.
    {call,1,{f,388}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,389}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,388},1}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
  {label,390}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,391},{x,0},{commands,[{ensure_at_least,1,1},{skip,1}]}}.
    {call_only,1,{f,388}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
  {label,391}.
    {move,nil,{x,0}}.
    return.


{function, '-grab_bag/1-lbc$^0/2-0-', 2, 393}.
  {label,392}.
    {line,[{location,"bs_bincomp_SUITE.erl",664}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-grab_bag/1-lbc$^0/2-0-'},2}.
  {label,393}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lc$^1/1-1-', 1, 395}.
  {label,394}.
    {line,[{location,"bs_bincomp_SUITE.erl",654}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_2/1-lc$^1/1-1-'},
               1}.
  {label,395}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,396},
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
    {call,1,{f,395}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,396}.
    {move,nil,{x,0}}.
    return.


{function, '-do_multiple_segments_2/1-lbc$^0/2-0-', 2, 398}.
  {label,397}.
    {line,[{location,"bs_bincomp_SUITE.erl",653}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_2/1-lbc$^0/2-0-'},
               2}.
  {label,398}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,399},
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
    {call_only,2,{f,398}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
  {label,399}.
    {move,{x,1},{x,0}}.
    return.


{function, '-do_multiple_segments_1/1-lc$^1/1-1-', 1, 401}.
  {label,400}.
    {line,[{location,"bs_bincomp_SUITE.erl",648}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_1/1-lc$^1/1-1-'},
               1}.
  {label,401}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,403},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,402},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,401}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,402}.
    {call_only,1,{f,401}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
  {label,403}.
    {move,nil,{x,0}}.
    return.


{function, '-do_multiple_segments_1/1-lbc$^0/2-0-', 2, 405}.
  {label,404}.
    {line,[{location,"bs_bincomp_SUITE.erl",647}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_1/1-lbc$^0/2-0-'},
               2}.
  {label,405}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,407},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,
          {f,406},
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
    {call_only,2,{f,405}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,406}.
    {call_only,2,{f,405}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,407}.
    {move,{x,1},{x,0}}.
    return.


{function, '-matched_out_size/1-lc$^1/1-1-', 1, 409}.
  {label,408}.
    {line,[{location,"bs_bincomp_SUITE.erl",642}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-matched_out_size/1-lc$^1/1-1-'},
               1}.
  {label,409}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,410},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,410},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[642,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,409}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,410}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,411},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_skip_bits2,
          {f,411},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[642,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,409}}. % '-matched_out_size/1-lc$^1/1-1-'/1
  {label,411}.
    {move,nil,{x,0}}.
    return.


{function, '-matched_out_size/1-lbc$^0/2-0-', 2, 413}.
  {label,412}.
    {line,[{location,"bs_bincomp_SUITE.erl",641}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-matched_out_size/1-lbc$^0/2-0-'},
               2}.
  {label,413}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,414},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,414},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[641,{file,"bs_bincomp_SUITE.erl"}]},
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
    {call_only,2,{f,413}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,414}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,415},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_skip_bits2,
          {f,415},
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[641,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,2,{f,413}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,415}.
    {move,{x,1},{x,0}}.
    return.


{function, '-zero_pattern/1-lbc$^0/2-0-', 2, 417}.
  {label,416}.
    {line,[{location,"bs_bincomp_SUITE.erl",605}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-zero_pattern/1-lbc$^0/2-0-'},2}.
  {label,417}.
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
    {call_only,2,{f,417}}. % '-zero_pattern/1-lbc$^0/2-0-'/2


{function, '-encode_chars_compact_map/3-lbc$^0/2-0-', 5, 419}.
  {label,418}.
    {line,[{location,"bs_bincomp_SUITE.erl",578}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-encode_chars_compact_map/3-lbc$^0/2-0-'},
               5}.
  {label,419}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,72}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,420},[{x,0}]}.
    {allocate,5,5}.
    {move,{x,4},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,2},{y,4}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,1}}.
    {call,3,{f,254}}. % enc_char_cm/3
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
    {call_last,5,{f,419},5}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5
  {label,420}.
    {move,{x,1},{x,0}}.
    return.


{function, '-hstring_to_bitstring/1-lbc$^0/2-0-', 2, 422}.
  {label,421}.
    {line,[{location,"bs_bincomp_SUITE.erl",572}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-hstring_to_bitstring/1-lbc$^0/2-0-'},
               2}.
  {label,422}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{51,65}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,4,true}}]}}.
    {test,is_nonempty_list,{f,423},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,247}}. % hex_to_int/1
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
    {call_last,2,{f,422},2}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2
  {label,423}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^16/2-16-', 2, 425}.
  {label,424}.
    {line,[{location,"bs_bincomp_SUITE.erl",567}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^16/2-16-'},
               2}.
  {label,425}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,426},[{x,0}]}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {get_list,{x,0},{x,2},{x,0}}.
    {make_fun3,{f,428},0,0,{x,2},{list,[{x,2}]}}.
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
    {call_only,2,{f,425}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,426}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-fun-17-', 1, 428}.
  {label,427}.
    {line,[{location,"bs_bincomp_SUITE.erl",567}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-fun-17-'},
               1}.
  {label,428}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,3}}}]}}.
    return.


{function, '-general_expressions/1-lbc$^15/2-15-', 2, 430}.
  {label,429}.
    {line,[{location,"bs_bincomp_SUITE.erl",566}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^15/2-15-'},
               2}.
  {label,430}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^14/2-14-', 2, 432}.
  {label,431}.
    {line,[{location,"bs_bincomp_SUITE.erl",565}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^14/2-14-'},
               2}.
  {label,432}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^13/2-13-', 2, 434}.
  {label,433}.
    {line,[{location,"bs_bincomp_SUITE.erl",564}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^13/2-13-'},
               2}.
  {label,434}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^12/2-12-', 2, 436}.
  {label,435}.
    {line,[{location,"bs_bincomp_SUITE.erl",563}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^12/2-12-'},
               2}.
  {label,436}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^11/2-11-', 2, 438}.
  {label,437}.
    {line,[{location,"bs_bincomp_SUITE.erl",562}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^11/2-11-'},
               2}.
  {label,438}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^10/2-10-', 2, 440}.
  {label,439}.
    {line,[{location,"bs_bincomp_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^10/2-10-'},
               2}.
  {label,440}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,443},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'div',{f,441},3,[{integer,10},{tr,{x,2},{t_integer,{0,3}}}],{x,2}}.
    {line,[{location,"bs_bincomp_SUITE.erl",551}]}.
    {bs_create_bin,{f,441},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{3,10}}},
                          {integer,8}]}}.
    {jump,{f,442}}.
  {label,441}.
    {move,{literal,<<>>},{x,2}}.
  {label,442}.
    {line,[{location,"bs_bincomp_SUITE.erl",550}]}.
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
    {call_only,2,{f,440}}. % '-general_expressions/1-lbc$^10/2-10-'/2
  {label,443}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^9/2-9-', 2, 445}.
  {label,444}.
    {line,[{location,"bs_bincomp_SUITE.erl",549}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^9/2-9-'},
               2}.
  {label,445}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,448},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
  {label,446}.
    {loop_rec,{f,447},{x,0}}.
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
    {call_last,2,{f,445},2}. % '-general_expressions/1-lbc$^9/2-9-'/2
  {label,447}.
    {wait,{f,446}}.
  {label,448}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^8/2-8-', 2, 450}.
  {label,449}.
    {line,[{location,"bs_bincomp_SUITE.erl",544}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^8/2-8-'},
               2}.
  {label,450}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,453},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",545}]}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{1,4}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,451},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
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
    {jump,{f,452}}.
  {label,451}.
    {line,[{location,"bs_bincomp_SUITE.erl",546}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,4}}},
                          {integer,8}]}}.
  {label,452}.
    {line,[{location,"bs_bincomp_SUITE.erl",544}]}.
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
    {call_only,2,{f,450}}. % '-general_expressions/1-lbc$^8/2-8-'/2
  {label,453}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^6/2-6-', 2, 455}.
  {label,454}.
    {line,[{location,"bs_bincomp_SUITE.erl",542}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^6/2-6-'},
               2}.
  {label,455}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,456},[{x,0}]}.
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
    {call,2,{f,458}}. % '-general_expressions/1-lbc$^7/2-7-'/2
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
    {call_last,2,{f,455},2}. % '-general_expressions/1-lbc$^6/2-6-'/2
  {label,456}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^7/2-7-', 2, 458}.
  {label,457}.
    {line,[{location,"bs_bincomp_SUITE.erl",542}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^7/2-7-'},
               2}.
  {label,458}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{2,'+inf'}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,459},[{x,0}]}.
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
    {call,1,{f,336}}. % id/1
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
    {call_last,2,{f,458},2}. % '-general_expressions/1-lbc$^7/2-7-'/2
  {label,459}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^5/2-5-', 2, 461}.
  {label,460}.
    {line,[{location,"bs_bincomp_SUITE.erl",538}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^5/2-5-'},
               2}.
  {label,461}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,464},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{1,5}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,462},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",539}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,5}}},
                          {integer,8}]}}.
    {jump,{f,463}}.
  {label,462}.
    {move,{literal,<<>>},{x,2}}.
  {label,463}.
    {line,[{location,"bs_bincomp_SUITE.erl",538}]}.
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
    {call_only,2,{f,461}}. % '-general_expressions/1-lbc$^5/2-5-'/2
  {label,464}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^4/2-4-', 2, 466}.
  {label,465}.
    {line,[{location,"bs_bincomp_SUITE.erl",537}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^4/2-4-'},
               2}.
  {label,466}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,467},[{x,0}]}.
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
    {call,1,{f,336}}. % id/1
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
    {call_last,2,{f,466},2}. % '-general_expressions/1-lbc$^4/2-4-'/2
  {label,467}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^3/2-3-', 2, 469}.
  {label,468}.
    {line,[{location,"bs_bincomp_SUITE.erl",536}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^3/2-3-'},
               2}.
  {label,469}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,470},[{x,0}]}.
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
    {call_only,2,{f,469}}. % '-general_expressions/1-lbc$^3/2-3-'/2
  {label,470}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^2/2-2-', 2, 472}.
  {label,471}.
    {line,[{location,"bs_bincomp_SUITE.erl",532}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^2/2-2-'},
               2}.
  {label,472}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,473},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",533}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",534}]}.
    {call,1,{f,336}}. % id/1
    {line,[{location,"bs_bincomp_SUITE.erl",532}]}.
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
    {call_last,2,{f,472},2}. % '-general_expressions/1-lbc$^2/2-2-'/2
  {label,473}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^1/2-1-', 2, 475}.
  {label,474}.
    {line,[{location,"bs_bincomp_SUITE.erl",531}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^1/2-1-'},
               2}.
  {label,475}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,476},[{x,0}]}.
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
    {call_only,2,{f,475}}. % '-general_expressions/1-lbc$^1/2-1-'/2
  {label,476}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^0/2-0-', 2, 478}.
  {label,477}.
    {line,[{location,"bs_bincomp_SUITE.erl",530}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^0/2-0-'},
               2}.
  {label,478}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,479},[{x,0}]}.
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
    {call_only,2,{f,478}}. % '-general_expressions/1-lbc$^0/2-0-'/2
  {label,479}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-lbc$^33/2-18-', 2, 481}.
  {label,480}.
    {line,[{location,"bs_bincomp_SUITE.erl",519}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^33/2-18-'},2}.
  {label,481}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,{1,2,3}}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-32-', 1, 483}.
  {label,482}.
    {line,[{location,"bs_bincomp_SUITE.erl",513}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-32-'},1}.
  {label,483}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",514}]}.
    {call,1,{f,336}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,485}}. % '-sizes/1-lbc$^31/2-17-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,333},0}. % cs_default/1


{function, '-sizes/1-lbc$^31/2-17-', 2, 485}.
  {label,484}.
    {line,[{location,"bs_bincomp_SUITE.erl",514}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^31/2-17-'},2}.
  {label,485}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,487},2,[{x,0}],{x,2}}.
    {bs_match,{f,486},
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
    {call_only,2,{f,485}}. % '-sizes/1-lbc$^31/2-17-'/2
  {label,486}.
    {move,{x,1},{x,0}}.
    return.
  {label,487}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-30-', 2, 489}.
  {label,488}.
    {line,[{location,"bs_bincomp_SUITE.erl",507}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-30-'},2}.
  {label,489}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",508}]}.
    {call,3,{f,491}}. % '-sizes/1-lbc$^28/2-15-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call_last,1,{f,333},0}. % cs_default/1


{function, '-sizes/1-lbc$^28/2-15-', 3, 491}.
  {label,490}.
    {line,[{location,"bs_bincomp_SUITE.erl",508}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^28/2-15-'},3}.
  {label,491}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,492},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,495}}. % '-sizes/1-lbc$^29/2-16-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,491},2}. % '-sizes/1-lbc$^28/2-15-'/3
  {label,492}.
    {test,is_nil,{f,493},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,493}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^29/2-16-', 3, 495}.
  {label,494}.
    {line,[{location,"bs_bincomp_SUITE.erl",508}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^29/2-16-'},3}.
  {label,495}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,bs_start_match3,{f,497},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,496},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {x,2},
           1,
           {field_flags,[{anno,[508,{file,"bs_bincomp_SUITE.erl"}]},
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
    {call_only,3,{f,495}}. % '-sizes/1-lbc$^29/2-16-'/3
  {label,496}.
    {move,{x,1},{x,0}}.
    return.
  {label,497}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^27/2-14-', 2, 499}.
  {label,498}.
    {line,[{location,"bs_bincomp_SUITE.erl",505}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^27/2-14-'},2}.
  {label,499}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,500},
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
    {call_only,2,{f,499}}. % '-sizes/1-lbc$^27/2-14-'/2
  {label,500}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-lbc$^26/2-13-', 2, 502}.
  {label,501}.
    {line,[{location,"bs_bincomp_SUITE.erl",504}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^26/2-13-'},2}.
  {label,502}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,503},[{x,0}]}.
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
    {call_only,2,{f,502}}. % '-sizes/1-lbc$^26/2-13-'/2
  {label,503}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-fun-25-', 1, 505}.
  {label,504}.
    {line,[{location,"bs_bincomp_SUITE.erl",494}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-25-'},1}.
  {label,505}.
    {line,[{location,"bs_bincomp_SUITE.erl",495}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",495}]}.
    {call,2,{f,507}}. % '-sizes/1-lbc$^24/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^24/2-12-', 2, 507}.
  {label,506}.
    {line,[{location,"bs_bincomp_SUITE.erl",495}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^24/2-12-'},2}.
  {label,507}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,508},
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
    {call_only,2,{f,507}}. % '-sizes/1-lbc$^24/2-12-'/2
  {label,508}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-fun-23-', 3, 510}.
  {label,509}.
    {line,[{location,"bs_bincomp_SUITE.erl",484}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-23-'},3}.
  {label,510}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {line,[{location,"bs_bincomp_SUITE.erl",485}]}.
    {call,1,{f,336}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,511},1,[{x,0}],{x,0}}.
    {gc_bif,'div',
            {f,511},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{y,2}],
            {x,0}}.
    {gc_bif,'*',
            {f,511},
            1,
            [{tr,{x,0},{t_integer,{-288230376151711743,288230376151711743}}},
             {y,1}],
            {x,0}}.
    {gc_bif,'+',{f,511},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,511},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,512}}.
  {label,511}.
    {move,{integer,256},{x,0}}.
  {label,512}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,3,0}.
    {call,4,{f,514}}. % '-sizes/1-lbc$^22/2-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^22/2-11-', 4, 514}.
  {label,513}.
    {line,[{location,"bs_bincomp_SUITE.erl",485}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^22/2-11-'},4}.
  {label,514}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,bs_start_match3,{f,516},4,[{x,0}],{x,4}}.
    {test,bs_get_integer2,
          {f,515},
          5,
          [{tr,{x,4},{t_bs_context,1}},
           {x,2},
           1,
           {field_flags,[{anno,[485,{file,"bs_bincomp_SUITE.erl"}]},
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
    {line,[{location,"bs_bincomp_SUITE.erl",472}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-21-'},1}.
  {label,518}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",473}]}.
    {call,1,{f,336}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,519},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,4}],
            {x,0}}.
    {jump,{f,520}}.
  {label,519}.
    {move,{integer,256},{x,0}}.
  {label,520}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",473}]}.
    {call,2,{f,522}}. % '-sizes/1-lbc$^20/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^20/2-10-', 2, 522}.
  {label,521}.
    {line,[{location,"bs_bincomp_SUITE.erl",473}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^20/2-10-'},2}.
  {label,522}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,524},2,[{x,0}],{x,2}}.
    {bs_match,{f,523},
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
    {call_only,2,{f,522}}. % '-sizes/1-lbc$^20/2-10-'/2
  {label,523}.
    {move,{x,1},{x,0}}.
    return.
  {label,524}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-19-', 1, 526}.
  {label,525}.
    {line,[{location,"bs_bincomp_SUITE.erl",465}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-19-'},1}.
  {label,526}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",466}]}.
    {call,1,{f,336}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,527},1,[{x,0}],{x,0}}.
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
    {jump,{f,528}}.
  {label,527}.
    {move,{integer,256},{x,0}}.
  {label,528}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",466}]}.
    {call,2,{f,530}}. % '-sizes/1-lbc$^18/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^18/2-9-', 2, 530}.
  {label,529}.
    {line,[{location,"bs_bincomp_SUITE.erl",466}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^18/2-9-'},2}.
  {label,530}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,bs_start_match3,{f,532},2,[{x,0}],{x,2}}.
    {bs_match,{f,531},
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
    {call_only,2,{f,530}}. % '-sizes/1-lbc$^18/2-9-'/2
  {label,531}.
    {move,{x,1},{x,0}}.
    return.
  {label,532}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-17-', 1, 534}.
  {label,533}.
    {line,[{location,"bs_bincomp_SUITE.erl",457}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-17-'},1}.
  {label,534}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",458}]}.
    {call,2,{f,536}}. % '-sizes/1-lbc$^16/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,333},0}. % cs_default/1


{function, '-sizes/1-lbc$^16/2-8-', 2, 536}.
  {label,535}.
    {line,[{location,"bs_bincomp_SUITE.erl",458}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^16/2-8-'},2}.
  {label,536}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,537},[{x,0}]}.
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
    {call_only,2,{f,536}}. % '-sizes/1-lbc$^16/2-8-'/2
  {label,537}.
    {test,is_nil,{f,538},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,538}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-15-', 2, 540}.
  {label,539}.
    {line,[{location,"bs_bincomp_SUITE.erl",451}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-15-'},2}.
  {label,540}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,541},2,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,541},2,[{x,1},{integer,8}],{x,1}}.
    {gc_bif,'*',
            {f,541},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,541},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,541},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,542}}.
  {label,541}.
    {move,{integer,256},{x,0}}.
  {label,542}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",452}]}.
    {call,3,{f,544}}. % '-sizes/1-lbc$^14/2-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^14/2-7-', 3, 544}.
  {label,543}.
    {line,[{location,"bs_bincomp_SUITE.erl",452}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^14/2-7-'},3}.
  {label,544}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,545},[{x,0}]}.
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
    {call_only,3,{f,544}}. % '-sizes/1-lbc$^14/2-7-'/3
  {label,545}.
    {test,is_nil,{f,546},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,546}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-13-', 4, 548}.
  {label,547}.
    {line,[{location,"bs_bincomp_SUITE.erl",444}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-13-'},4}.
  {label,548}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,549},4,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,549},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,549},4,[{x,2},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,549},
            4,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'+',{f,549},4,[{tr,{x,1},{t_number,any}},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,549},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,549},
            3,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'+',{f,549},2,[{tr,{x,1},{t_number,any}},{integer,24}],{x,1}}.
    {gc_bif,'*',
            {f,549},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,549},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,549},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,550}}.
  {label,549}.
    {move,{integer,256},{x,0}}.
  {label,550}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",445}]}.
    {call,5,{f,552}}. % '-sizes/1-lbc$^12/2-6-'/5
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^12/2-6-', 5, 552}.
  {label,551}.
    {line,[{location,"bs_bincomp_SUITE.erl",445}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^12/2-6-'},5}.
  {label,552}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,553},[{x,0}]}.
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
    {call_only,5,{f,552}}. % '-sizes/1-lbc$^12/2-6-'/5
  {label,553}.
    {test,is_nil,{f,554},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,554}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",446}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-11-', 4, 556}.
  {label,555}.
    {line,[{location,"bs_bincomp_SUITE.erl",438}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-11-'},4}.
  {label,556}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,557},4,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,557},4,[{x,2},{integer,8}],{x,1}}.
    {gc_bif,'+',{f,557},4,[{y,1},{tr,{x,1},{t_number,any}}],{x,1}}.
    {gc_bif,'*',{f,557},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,557},
            3,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'*',
            {f,557},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,557},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,557},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,558}}.
  {label,557}.
    {move,{integer,256},{x,0}}.
  {label,558}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",439}]}.
    {call,5,{f,560}}. % '-sizes/1-lbc$^10/2-5-'/5
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^10/2-5-', 5, 560}.
  {label,559}.
    {line,[{location,"bs_bincomp_SUITE.erl",439}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^10/2-5-'},5}.
  {label,560}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,561},[{x,0}]}.
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
    {call_only,5,{f,560}}. % '-sizes/1-lbc$^10/2-5-'/5
  {label,561}.
    {test,is_nil,{f,562},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,562}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-9-', 2, 564}.
  {label,563}.
    {line,[{location,"bs_bincomp_SUITE.erl",431}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-9-'},2}.
  {label,564}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,565},2,[{x,0}],{x,0}}.
    {gc_bif,'*',
            {f,565},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{x,1}],
            {x,0}}.
    {gc_bif,'+',{f,565},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,565},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,566}}.
  {label,565}.
    {move,{integer,256},{x,0}}.
  {label,566}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",432}]}.
    {call,3,{f,568}}. % '-sizes/1-lbc$^8/2-4-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^8/2-4-', 3, 568}.
  {label,567}.
    {line,[{location,"bs_bincomp_SUITE.erl",432}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^8/2-4-'},3}.
  {label,568}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,569},[{x,0}]}.
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
    {call_only,3,{f,568}}. % '-sizes/1-lbc$^8/2-4-'/3
  {label,569}.
    {test,is_nil,{f,570},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,570}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-7-', 1, 572}.
  {label,571}.
    {line,[{location,"bs_bincomp_SUITE.erl",424}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-7-'},1}.
  {label,572}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,573},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,3}],
            {x,0}}.
    {gc_bif,'+',
            {f,573},
            1,
            [{tr,{x,0},{t_integer,{0,864691128455135229}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{7,864691128455135236}}},{integer,3}],
            {x,0}}.
    {jump,{f,574}}.
  {label,573}.
    {move,{integer,256},{x,0}}.
  {label,574}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",425}]}.
    {call,2,{f,576}}. % '-sizes/1-lbc$^6/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^6/2-3-', 2, 576}.
  {label,575}.
    {line,[{location,"bs_bincomp_SUITE.erl",425}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^6/2-3-'},2}.
  {label,576}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,577},[{x,0}]}.
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
    {call_only,2,{f,576}}. % '-sizes/1-lbc$^6/2-3-'/2
  {label,577}.
    {test,is_nil,{f,578},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,578}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-5-', 1, 580}.
  {label,579}.
    {line,[{location,"bs_bincomp_SUITE.erl",415}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-5-'},1}.
  {label,580}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,581},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,4}],
            {x,0}}.
    {gc_bif,'+',
            {f,581},
            1,
            [{tr,{x,0},{t_integer,{0,1152921504606846972}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{7,1152921504606846979}}},{integer,3}],
            {x,0}}.
    {jump,{f,582}}.
  {label,581}.
    {move,{integer,256},{x,0}}.
  {label,582}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",416}]}.
    {call,2,{f,584}}. % '-sizes/1-lbc$^4/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^4/2-2-', 2, 584}.
  {label,583}.
    {line,[{location,"bs_bincomp_SUITE.erl",416}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^4/2-2-'},2}.
  {label,584}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,4,true}}]}}.
    {test,is_nonempty_list,{f,585},[{x,0}]}.
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
    {call_only,2,{f,584}}. % '-sizes/1-lbc$^4/2-2-'/2
  {label,585}.
    {test,is_nil,{f,586},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,586}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-3-', 1, 588}.
  {label,587}.
    {line,[{location,"bs_bincomp_SUITE.erl",407}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-3-'},1}.
  {label,588}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,589},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,2}],
            {x,0}}.
    {jump,{f,590}}.
  {label,589}.
    {move,{integer,256},{x,0}}.
  {label,590}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",408}]}.
    {call,2,{f,592}}. % '-sizes/1-lbc$^2/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^2/2-1-', 2, 592}.
  {label,591}.
    {line,[{location,"bs_bincomp_SUITE.erl",408}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^2/2-1-'},2}.
  {label,592}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,593},[{x,0}]}.
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
    {call_only,2,{f,592}}. % '-sizes/1-lbc$^2/2-1-'/2
  {label,593}.
    {test,is_nil,{f,594},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,594}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-1-', 1, 596}.
  {label,595}.
    {line,[{location,"bs_bincomp_SUITE.erl",399}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-1-'},1}.
  {label,596}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,597},1,[{x,0}],{x,0}}.
    {jump,{f,598}}.
  {label,597}.
    {move,{integer,256},{x,0}}.
  {label,598}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",400}]}.
    {call,2,{f,600}}. % '-sizes/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,330},0}. % cs/1


{function, '-sizes/1-lbc$^0/2-0-', 2, 600}.
  {label,599}.
    {line,[{location,"bs_bincomp_SUITE.erl",400}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^0/2-0-'},2}.
  {label,600}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,601},[{x,0}]}.
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
    {call_only,2,{f,600}}. % '-sizes/1-lbc$^0/2-0-'/2
  {label,601}.
    {test,is_nil,{f,602},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,602}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch_1/2-lbc$^0/2-0-', 3, 604}.
  {label,603}.
    {line,[{location,"bs_bincomp_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch_1/2-lbc$^0/2-0-'},3}.
  {label,604}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[bad]},
                                   none,
                                   {t_integer,{8,8}},
                                   none,none}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,605},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},
               {t_union,{t_atom,[bad]},none,{t_integer,{8,8}},none,none}},
           1,
           {field_flags,[{anno,[395,{file,"bs_bincomp_SUITE.erl"}]},
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
    {call_only,3,{f,604}}. % '-nomatch_1/2-lbc$^0/2-0-'/3
  {label,605}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^12/2-12-', 2, 607}.
  {label,606}.
    {line,[{location,"bs_bincomp_SUITE.erl",390}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^12/2-12-'},2}.
  {label,607}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,false}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^10/2-10-', 2, 609}.
  {label,608}.
    {line,[{location,"bs_bincomp_SUITE.erl",388}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^10/2-10-'},2}.
  {label,609}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^8/2-8-', 2, 611}.
  {label,610}.
    {line,[{location,"bs_bincomp_SUITE.erl",387}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^8/2-8-'},2}.
  {label,611}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^7/2-7-', 2, 613}.
  {label,612}.
    {line,[{location,"bs_bincomp_SUITE.erl",382}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^7/2-7-'},2}.
  {label,613}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,614},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {bs_create_bin,{f,0},
                   0,2,256,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,256,true}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {call_only,2,{f,613}}. % '-nomatch/1-lbc$^7/2-7-'/2
  {label,614}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^6/2-6-', 2, 616}.
  {label,615}.
    {line,[{location,"bs_bincomp_SUITE.erl",377}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^6/2-6-'},2}.
  {label,616}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,617},
          2,
          [{tr,{x,0},{t_bs_context,32}},
           {integer,32},
           1,
           {field_flags,[{anno,[377,{file,"bs_bincomp_SUITE.erl"}]},
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
    {call_only,2,{f,616}}. % '-nomatch/1-lbc$^6/2-6-'/2
  {label,617}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^5/2-5-', 2, 619}.
  {label,618}.
    {line,[{location,"bs_bincomp_SUITE.erl",374}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^5/2-5-'},2}.
  {label,619}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,621},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,620},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[374,{file,"bs_bincomp_SUITE.erl"}]},
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
    {call_only,2,{f,619}}. % '-nomatch/1-lbc$^5/2-5-'/2
  {label,620}.
    {move,{x,1},{x,0}}.
    return.
  {label,621}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^4/2-4-', 2, 623}.
  {label,622}.
    {line,[{location,"bs_bincomp_SUITE.erl",372}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^4/2-4-'},2}.
  {label,623}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_bitstr,{f,624},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,624}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^3/2-3-', 2, 626}.
  {label,625}.
    {line,[{location,"bs_bincomp_SUITE.erl",371}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^3/2-3-'},2}.
  {label,626}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lc$^2/1-2-', 1, 628}.
  {label,627}.
    {line,[{location,"bs_bincomp_SUITE.erl",370}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lc$^2/1-2-'},1}.
  {label,628}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,is_bitstr,{f,629},[{x,0}]}.
    {move,nil,{x,0}}.
    return.
  {label,629}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lc$^1/1-1-', 1, 631}.
  {label,630}.
    {line,[{location,"bs_bincomp_SUITE.erl",369}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lc$^1/1-1-'},1}.
  {label,631}.
    {move,nil,{x,0}}.
    return.


{function, '-nomatch/1-lbc$^0/2-0-', 2, 633}.
  {label,632}.
    {line,[{location,"bs_bincomp_SUITE.erl",368}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^0/2-0-'},2}.
  {label,633}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,634},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,633}}. % '-nomatch/1-lbc$^0/2-0-'/2
  {label,634}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_strange/2-lbc$^0/2-1-', 2, 636}.
  {label,635}.
    {line,[{location,"bs_bincomp_SUITE.erl",355}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_strange/2-lbc$^0/2-1-'},
               2}.
  {label,636}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,637},
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
    {call_only,2,{f,636}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
  {label,637}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_strange/2-lbc$^1/2-0-', 2, 639}.
  {label,638}.
    {line,[{location,"bs_bincomp_SUITE.erl",354}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_strange/2-lbc$^1/2-0-'},
               2}.
  {label,639}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,640},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[354,{file,"bs_bincomp_SUITE.erl"}]},
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
    {call_only,2,{f,639}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
  {label,640}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_trimmer/1-lbc$^0/2-0-', 2, 642}.
  {label,641}.
    {line,[{location,"bs_bincomp_SUITE.erl",346}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_trimmer/1-lbc$^0/2-0-'},
               2}.
  {label,642}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{19,777}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,643},[{x,0}]}.
    {allocate_heap,4,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {put_tuple2,{x,0},{list,[{y,2},{y,2},{y,2}]}}.
    {call,1,{f,336}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,644},[{x,0}]}.
    {test,test_arity,{f,644},[{x,0},3]}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,336}}. % id/1
    {get_tuple_element,{y,0},0,{x,0}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {get_tuple_element,{y,0},2,{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_bincomp_SUITE.erl",347}]}.
    {call,4,{f,136}}. % coverage_summer/4
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",346}]}.
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
    {call_last,2,{f,642},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2
  {label,643}.
    {move,{x,1},{x,0}}.
    return.
  {label,644}.
    {badmatch,{y,0}}.


{function, '-coverage_lightfv/3-lbc$^0/2-0-', 2, 646}.
  {label,645}.
    {line,[{location,"bs_bincomp_SUITE.erl",339}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_lightfv/3-lbc$^0/2-0-'},
               2}.
  {label,646}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,{-3555.0,40.0}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,647},[{x,0}]}.
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
    {call_only,2,{f,646}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
  {label,647}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_materialiv/3-lbc$^0/2-0-', 2, 649}.
  {label,648}.
    {line,[{location,"bs_bincomp_SUITE.erl",334}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_materialiv/3-lbc$^0/2-0-'},
               2}.
  {label,649}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1328,777134}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,650},[{x,0}]}.
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
    {call_only,2,{f,649}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
  {label,650}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^8/2-8-', 2, 652}.
  {label,651}.
    {line,[{location,"bs_bincomp_SUITE.erl",315}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^8/2-8-'},2}.
  {label,652}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,43}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,654},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,653},[{tr,{x,2},{t_integer,{1,43}}},{integer,42}]}.
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
    {call_only,2,{f,652}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,653}.
    {call_only,2,{f,652}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,654}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^7/2-7-', 2, 656}.
  {label,655}.
    {line,[{location,"bs_bincomp_SUITE.erl",311}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^7/2-7-'},2}.
  {label,656}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,658},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}}]}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,is_eq_exact,{f,657},[{tr,{x,2},{t_integer,{0,1}}},{integer,0}]}.
    {bs_match,{f,657},
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
    {call_only,2,{f,656}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,657}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,658},{x,0},{commands,[{ensure_at_least,7,1},{skip,7}]}}.
    {call_only,2,{f,656}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,658}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^6/2-6-', 2, 660}.
  {label,659}.
    {line,[{location,"bs_bincomp_SUITE.erl",308}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^6/2-6-'},2}.
  {label,660}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,662},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {bs_match,{f,661},
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
    {call_only,2,{f,660}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,661}.
    {call_only,2,{f,660}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,662}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^5/2-5-', 2, 664}.
  {label,663}.
    {line,[{location,"bs_bincomp_SUITE.erl",302}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^5/2-5-'},2}.
  {label,664}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_list,{t_atom,[a,x,y,z]},nil},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,666},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nonempty_list,{f,665},[{x,2}]}.
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
  {label,665}.
    {call_only,2,{f,664}}. % '-filters/1-lbc$^5/2-5-'/2
  {label,666}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^4/2-4-', 2, 668}.
  {label,667}.
    {line,[{location,"bs_bincomp_SUITE.erl",298}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^4/2-4-'},2}.
  {label,668}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,671},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",300}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ne_exact,{f,669},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",301}]}.
    {gc_bif,'rem',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,669},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",298}]}.
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
    {jump,{f,670}}.
  {label,669}.
    {move,{y,2},{x,1}}.
  {label,670}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,668},3}. % '-filters/1-lbc$^4/2-4-'/2
  {label,671}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^3/2-3-', 2, 673}.
  {label,672}.
    {line,[{location,"bs_bincomp_SUITE.erl",294}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^3/2-3-'},2}.
  {label,673}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,676},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",296}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,674},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",297}]}.
    {gc_bif,'rem',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,674},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",294}]}.
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
    {jump,{f,675}}.
  {label,674}.
    {move,{y,2},{x,1}}.
  {label,675}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,673},3}. % '-filters/1-lbc$^3/2-3-'/2
  {label,676}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^2/2-2-', 2, 678}.
  {label,677}.
    {line,[{location,"bs_bincomp_SUITE.erl",291}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^2/2-2-'},2}.
  {label,678}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,681},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",293}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,679},[{x,0},{atom,true}]}.
    {move,{y,2},{x,1}}.
    {jump,{f,680}}.
  {label,679}.
    {line,[{location,"bs_bincomp_SUITE.erl",291}]}.
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
  {label,680}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,678},3}. % '-filters/1-lbc$^2/2-2-'/2
  {label,681}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^1/2-1-', 2, 683}.
  {label,682}.
    {line,[{location,"bs_bincomp_SUITE.erl",288}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^1/2-1-'},2}.
  {label,683}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,686},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",290}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,684},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",288}]}.
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
    {jump,{f,685}}.
  {label,684}.
    {move,{y,2},{x,1}}.
  {label,685}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,683},3}. % '-filters/1-lbc$^1/2-1-'/2
  {label,686}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^0/2-0-', 2, 688}.
  {label,687}.
    {line,[{location,"bs_bincomp_SUITE.erl",285}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^0/2-0-'},2}.
  {label,688}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,690},
              {x,0},
              {commands,[{ensure_at_least,7,1},
                         {integer,2,{literal,[]},7,1,{x,2}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",287}]}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{0,127}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,689},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",285}]}.
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
    {call_only,2,{f,688}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,689}.
    {call_only,2,{f,688}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,690}.
    {move,{x,1},{x,0}}.
    return.


{function, '-inconsistent_types_2/0-lbc$^0/2-0-', 3, 692}.
  {label,691}.
    {line,[{location,"bs_bincomp_SUITE.erl",274}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-inconsistent_types_2/0-lbc$^0/2-0-'},
               3}.
  {label,692}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,693},[{x,0}]}.
    {bif,'=/=',{f,0},[{x,2},nil],{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",277}]}.
    {badmatch,{x,0}}.
  {label,693}.
    {test,is_nil,{f,694},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,694}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",276}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-inconsistent_types_1/1-lbc$^0/2-0-', 3, 696}.
  {label,695}.
    {line,[{location,"bs_bincomp_SUITE.erl",256}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-inconsistent_types_1/1-lbc$^0/2-0-'},
               3}.
  {label,696}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}}.
    {test,is_nil,
          {f,697},
          [{tr,{x,0},{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,697}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",257}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-float_segment_size/0-lbc$^0/2-0-', 3, 699}.
  {label,698}.
    {line,[{location,"bs_bincomp_SUITE.erl",246}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-float_segment_size/0-lbc$^0/2-0-'},
               3}.
  {label,699}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_float,{0.79,0.79}}}]}}.
    {move,{literal,{bad_generator,42}},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",247}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^0/2-0-', 2, 701}.
  {label,700}.
    {line,[{location,"bs_bincomp_SUITE.erl",225}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-over_complex_generator/0-lbc$^0/2-0-'},
               2}.
  {label,701}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,2}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,703},
              {x,0},
              {commands,[{ensure_at_least,2,1},
                         {integer,2,{literal,[]},2,1,{x,2}}]}}.
    {test,is_eq_exact,{f,702},[{tr,{x,2},{t_integer,{0,3}}},{integer,0}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {call,2,{f,705}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,701},1}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,702}.
    {call_only,2,{f,701}}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,703}.
    {move,{x,1},{x,0}}.
    return.


{function, '-over_complex_generator/0-lbc$^1/2-1-', 2, 705}.
  {label,704}.
    {line,[{location,"bs_bincomp_SUITE.erl",225}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-over_complex_generator/0-lbc$^1/2-1-'},
               2}.
  {label,705}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,706},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",226}]}.
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
    {call_only,2,{f,705}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
  {label,706}.
    {move,{x,1},{x,0}}.
    return.


{function, '-do_match_context_2/1-lbc$^0/2-0-', 2, 708}.
  {label,707}.
    {line,[{location,"bs_bincomp_SUITE.erl",221}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_match_context_2/1-lbc$^0/2-0-'},
               2}.
  {label,708}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,resume},2,{x,0},{x,0}}.
    {bs_match,{f,709},
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
    {call_only,2,{f,708}}. % '-do_match_context_2/1-lbc$^0/2-0-'/2
  {label,709}.
    {move,{x,1},{x,0}}.
    return.


{function, '-match_context_1/1-lbc$^0/2-0-', 2, 711}.
  {label,710}.
    {line,[{location,"bs_bincomp_SUITE.erl",215}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-match_context_1/1-lbc$^0/2-0-'},
               2}.
  {label,711}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,resume},2,{x,0},{x,0}}.
    {bs_match,{f,712},
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
    {call_only,2,{f,711}}. % '-match_context_1/1-lbc$^0/2-0-'/2
  {label,712}.
    {move,{x,1},{x,0}}.
    return.


{function, '-gen_data/1-lbc$^1/2-1-', 2, 714}.
  {label,713}.
    {line,[{location,"bs_bincomp_SUITE.erl",211}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-gen_data/1-lbc$^1/2-1-'},2}.
  {label,714}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,715},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
    {move,{integer,255},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",212}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_bincomp_SUITE.erl",211}]}.
    {call,2,{f,718}}. % '-gen_data/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,714},1}. % '-gen_data/1-lbc$^1/2-1-'/2
  {label,715}.
    {test,is_nil,{f,716},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,716}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^2/2-2-', 2, 718}.
  {label,717}.
    {line,[{location,"bs_bincomp_SUITE.erl",211}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-gen_data/1-lbc$^2/2-2-'},2}.
  {label,718}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,719},[{x,0}]}.
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
    {call_only,2,{f,718}}. % '-gen_data/1-lbc$^2/2-2-'/2
  {label,719}.
    {test,is_nil,{f,720},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,720}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",212}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^0/2-0-', 2, 722}.
  {label,721}.
    {line,[{location,"bs_bincomp_SUITE.erl",210}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-gen_data/1-lbc$^0/2-0-'},2}.
  {label,722}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,723},[{x,0}]}.
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
    {call_only,2,{f,722}}. % '-gen_data/1-lbc$^0/2-0-'/2
  {label,723}.
    {test,is_nil,{f,724},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,724}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_lc/1-lc$^0/1-0-', 1, 726}.
  {label,725}.
    {line,[{location,"bs_bincomp_SUITE.erl",207}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-silly_lc/1-lc$^0/1-0-'},1}.
  {label,726}.
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
    {test,is_nonempty_list,{f,727},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,726}}. % '-silly_lc/1-lc$^0/1-0-'/1
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
  {label,727}.
    return.


{function, '-silly_bc/1-lbc$^0/2-0-', 2, 729}.
  {label,728}.
    {line,[{location,"bs_bincomp_SUITE.erl",202}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-silly_bc/1-lbc$^0/2-0-'},2}.
  {label,729}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,730},
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
    {call_only,2,{f,729}}. % '-silly_bc/1-lbc$^0/2-0-'/2
  {label,730}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed_size/2-lbc$^0/2-0-', 3, 732}.
  {label,731}.
    {line,[{location,"bs_bincomp_SUITE.erl",189}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed_size/2-lbc$^0/2-0-'},3}.
  {label,732}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,is_nonempty_list,{f,733},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,736}}. % '-mixed_size/2-lbc$^1/2-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,732},2}. % '-mixed_size/2-lbc$^0/2-0-'/3
  {label,733}.
    {test,is_nil,{f,734},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,734}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^1/2-1-', 3, 736}.
  {label,735}.
    {line,[{location,"bs_bincomp_SUITE.erl",189}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed_size/2-lbc$^1/2-1-'},3}.
  {label,736}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,737},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {x,2},
           1,
           {field_flags,[{anno,[189,{file,"bs_bincomp_SUITE.erl"}]},
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
    {call_only,3,{f,736}}. % '-mixed_size/2-lbc$^1/2-1-'/3
  {label,737}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed_nested/1-lbc$^0/2-0-', 2, 739}.
  {label,738}.
    {line,[{location,"bs_bincomp_SUITE.erl",186}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed_nested/1-lbc$^0/2-0-'},2}.
  {label,739}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,740},[{x,0}]}.
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
    {call_only,2,{f,739}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
  {label,740}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-fun-26-', 1, 742}.
  {label,741}.
    {line,[{location,"bs_bincomp_SUITE.erl",178}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-fun-26-'},1}.
  {label,742}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",179}]}.
    {call,2,{f,745}}. % '-mixed/1-lc$^25/1-25-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test,is_nil,{f,743},[{tr,{x,0},{t_list,{t_atom,[ok]},nil}}]}.
    {deallocate,0}.
    return.
  {label,743}.
    {badmatch,{x,0}}.


{function, '-mixed/1-lc$^25/1-25-', 2, 745}.
  {label,744}.
    {line,[{location,"bs_bincomp_SUITE.erl",179}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^25/1-25-'},2}.
  {label,745}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,748},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,746},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {x,1},
           1,
           {field_flags,[{anno,[179,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'bsr',
            {f,0},
            4,
            [{tr,{x,3},{t_integer,{0,'+inf'}}},{integer,1}],
            {x,3}}.
    {test,bs_skip_bits2,
          {f,746},
          [{x,2},
           {tr,{x,3},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[179,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,2,{f,745}}. % '-mixed/1-lc$^25/1-25-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,746}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,747},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {x,1},
           1,
           {field_flags,[{anno,[179,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            3,
            [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}],
            {x,0}}.
    {test,bs_skip_bits2,
          {f,747},
          [{x,2},
           {tr,{x,0},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[179,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,745}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,747}.
    {move,nil,{x,0}}.
    return.
  {label,748}.
    {test,bs_start_match3,{f,749},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,749},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {x,1},
           1,
           {field_flags,[{anno,[179,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'bsr',
            {f,0},
            4,
            [{tr,{x,3},{t_integer,{0,'+inf'}}},{integer,1}],
            {x,3}}.
    {test,bs_skip_bits2,
          {f,749},
          [{x,2},
           {tr,{x,3},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[179,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,745}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,749}.
    {test,is_bitstr,{f,750},[{x,0}]}.
    {move,nil,{x,0}}.
    return.
  {label,750}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^23/2-23-', 2, 752}.
  {label,751}.
    {line,[{location,"bs_bincomp_SUITE.erl",152}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^23/2-23-'},2}.
  {label,752}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{1,1}},nil},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,753},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,755}}. % '-mixed/1-lbc$^24/2-24-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,752},1}. % '-mixed/1-lbc$^23/2-23-'/2
  {label,753}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^24/2-24-', 2, 755}.
  {label,754}.
    {line,[{location,"bs_bincomp_SUITE.erl",152}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^24/2-24-'},2}.
  {label,755}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,756},[{x,0}]}.
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
    {call_only,2,{f,755}}. % '-mixed/1-lbc$^24/2-24-'/2
  {label,756}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lc$^21/1-21-', 1, 758}.
  {label,757}.
    {line,[{location,"bs_bincomp_SUITE.erl",147}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^21/1-21-'},1}.
  {label,758}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,759},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,1,{literal,[]},3,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,[{a,1},{b,2}]},{x,0}}.
    {call_only,3,{f,761}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,759}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^22/1-22-', 3, 761}.
  {label,760}.
    {line,[{location,"bs_bincomp_SUITE.erl",147}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^22/1-22-'},3}.
  {label,761}.
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
    {test,is_nonempty_list,{f,762},[{x,0}]}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,3},{x,0}}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,7}}},{tr,{x,3},{t_integer,{1,2}}}],
            {y,0}}.
    {call,3,{f,761}}. % '-mixed/1-lc$^22/1-22-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,762}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,758}}. % '-mixed/1-lc$^21/1-21-'/1


{function, '-mixed/1-lc$^19/1-19-', 1, 764}.
  {label,763}.
    {line,[{location,"bs_bincomp_SUITE.erl",145}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^19/1-19-'},1}.
  {label,764}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,765},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,1,{literal,[]},3,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call_only,3,{f,767}}. % '-mixed/1-lc$^20/1-20-'/3
  {label,765}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^20/1-20-', 3, 767}.
  {label,766}.
    {line,[{location,"bs_bincomp_SUITE.erl",145}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^20/1-20-'},3}.
  {label,767}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,7}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,768},
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
    {call,3,{f,767}}. % '-mixed/1-lc$^20/1-20-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,768}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,764}}. % '-mixed/1-lc$^19/1-19-'/1


{function, '-mixed/1-lbc$^18/2-18-', 2, 770}.
  {label,769}.
    {line,[{location,"bs_bincomp_SUITE.erl",142}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^18/2-18-'},2}.
  {label,770}.
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
    {test,is_nonempty_list,{f,771},[{x,0}]}.
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
    {call_only,2,{f,770}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,771}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^16/2-16-', 2, 773}.
  {label,772}.
    {line,[{location,"bs_bincomp_SUITE.erl",140}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^16/2-16-'},2}.
  {label,773}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,774},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,776}}. % '-mixed/1-lbc$^17/2-17-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,773},1}. % '-mixed/1-lbc$^16/2-16-'/2
  {label,774}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^17/2-17-', 3, 776}.
  {label,775}.
    {line,[{location,"bs_bincomp_SUITE.erl",140}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^17/2-17-'},3}.
  {label,776}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,4}}}]}}.
    {test,is_nonempty_list,{f,777},[{x,0}]}.
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
    {call_only,3,{f,776}}. % '-mixed/1-lbc$^17/2-17-'/3
  {label,777}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^14/2-14-', 2, 779}.
  {label,778}.
    {line,[{location,"bs_bincomp_SUITE.erl",138}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^14/2-14-'},2}.
  {label,779}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,780},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,2,{literal,[]},3,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,782}}. % '-mixed/1-lbc$^15/2-15-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,779},1}. % '-mixed/1-lbc$^14/2-14-'/2
  {label,780}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^15/2-15-', 3, 782}.
  {label,781}.
    {line,[{location,"bs_bincomp_SUITE.erl",138}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^15/2-15-'},3}.
  {label,782}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,7}}}]}}.
    {test,is_nonempty_list,{f,783},[{x,0}]}.
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
    {call_only,3,{f,782}}. % '-mixed/1-lbc$^15/2-15-'/3
  {label,783}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^12/2-12-', 2, 785}.
  {label,784}.
    {line,[{location,"bs_bincomp_SUITE.erl",135}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^12/2-12-'},2}.
  {label,785}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,786},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,2,{literal,[]},3,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call,3,{f,788}}. % '-mixed/1-lbc$^13/2-13-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,785},1}. % '-mixed/1-lbc$^12/2-12-'/2
  {label,786}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^13/2-13-', 3, 788}.
  {label,787}.
    {line,[{location,"bs_bincomp_SUITE.erl",135}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^13/2-13-'},3}.
  {label,788}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,7}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,789},
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
    {call_only,3,{f,788}}. % '-mixed/1-lbc$^13/2-13-'/3
  {label,789}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lc$^10/1-10-', 1, 791}.
  {label,790}.
    {line,[{location,"bs_bincomp_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^10/1-10-'},1}.
  {label,791}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,792},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,3,{f,794}}. % '-mixed/1-lc$^11/1-11-'/3
  {label,792}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^11/1-11-', 3, 794}.
  {label,793}.
    {line,[{location,"bs_bincomp_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^11/1-11-'},3}.
  {label,794}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,is_nonempty_list,{f,795},[{x,0}]}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{1,2}}}],
            {y,0}}.
    {call,3,{f,794}}. % '-mixed/1-lc$^11/1-11-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,795}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,791}}. % '-mixed/1-lc$^10/1-10-'/1


{function, '-mixed/1-lc$^8/1-8-', 1, 797}.
  {label,796}.
    {line,[{location,"bs_bincomp_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^8/1-8-'},1}.
  {label,797}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,798},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call_only,3,{f,800}}. % '-mixed/1-lc$^9/1-9-'/3
  {label,798}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^9/1-9-', 3, 800}.
  {label,799}.
    {line,[{location,"bs_bincomp_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^9/1-9-'},3}.
  {label,800}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,801},
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
    {call,3,{f,800}}. % '-mixed/1-lc$^9/1-9-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,801}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,797}}. % '-mixed/1-lc$^8/1-8-'/1


{function, '-mixed/1-lbc$^6/2-6-', 3, 803}.
  {label,802}.
    {line,[{location,"bs_bincomp_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^6/2-6-'},3}.
  {label,803}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,804},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,807}}. % '-mixed/1-lbc$^7/2-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,803},2}. % '-mixed/1-lbc$^6/2-6-'/3
  {label,804}.
    {test,is_nil,{f,805},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,805}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^7/2-7-', 3, 807}.
  {label,806}.
    {line,[{location,"bs_bincomp_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^7/2-7-'},3}.
  {label,807}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,808},[{x,0}]}.
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
    {call_only,3,{f,807}}. % '-mixed/1-lbc$^7/2-7-'/3
  {label,808}.
    {test,is_nil,{f,809},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,809}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^4/2-4-', 2, 811}.
  {label,810}.
    {line,[{location,"bs_bincomp_SUITE.erl",125}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^4/2-4-'},2}.
  {label,811}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,812},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,814}}. % '-mixed/1-lbc$^5/2-5-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,811},1}. % '-mixed/1-lbc$^4/2-4-'/2
  {label,812}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^5/2-5-', 3, 814}.
  {label,813}.
    {line,[{location,"bs_bincomp_SUITE.erl",125}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^5/2-5-'},3}.
  {label,814}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,4}}}]}}.
    {test,is_nonempty_list,{f,815},[{x,0}]}.
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
    {call_only,3,{f,814}}. % '-mixed/1-lbc$^5/2-5-'/3
  {label,815}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^2/2-2-', 2, 817}.
  {label,816}.
    {line,[{location,"bs_bincomp_SUITE.erl",123}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^2/2-2-'},2}.
  {label,817}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,818},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,820}}. % '-mixed/1-lbc$^3/2-3-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,817},1}. % '-mixed/1-lbc$^2/2-2-'/2
  {label,818}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^3/2-3-', 3, 820}.
  {label,819}.
    {line,[{location,"bs_bincomp_SUITE.erl",123}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^3/2-3-'},3}.
  {label,820}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,255}}}]}}.
    {test,is_nonempty_list,{f,821},[{x,0}]}.
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
    {call_only,3,{f,820}}. % '-mixed/1-lbc$^3/2-3-'/3
  {label,821}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^0/2-0-', 2, 823}.
  {label,822}.
    {line,[{location,"bs_bincomp_SUITE.erl",121}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,823}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,824},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call,3,{f,826}}. % '-mixed/1-lbc$^1/2-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,823},1}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,824}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^1/2-1-', 3, 826}.
  {label,825}.
    {line,[{location,"bs_bincomp_SUITE.erl",121}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^1/2-1-'},3}.
  {label,826}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,827},
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
    {call_only,3,{f,826}}. % '-mixed/1-lbc$^1/2-1-'/3
  {label,827}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lc$^3/1-3-', 1, 829}.
  {label,828}.
    {line,[{location,"bs_bincomp_SUITE.erl",115}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^3/1-3-'},
               1}.
  {label,829}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,830},
              {x,0},
              {commands,[{ensure_at_least,15,1},
                         {integer,1,{literal,[little]},15,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,829}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,32767}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,830}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lbc$^2/2-2-', 2, 832}.
  {label,831}.
    {line,[{location,"bs_bincomp_SUITE.erl",113}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,832}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,833},[{x,0}]}.
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
    {call_only,2,{f,832}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
  {label,833}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lc$^1/1-1-', 1, 835}.
  {label,834}.
    {line,[{location,"bs_bincomp_SUITE.erl",111}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^1/1-1-'},
               1}.
  {label,835}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,836},
              {x,0},
              {commands,[{ensure_at_least,7,1},
                         {integer,1,{literal,[]},7,1,{x,1}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'-',{f,0},2,[{tr,{x,1},{t_integer,{0,127}}},{integer,32}],{y,0}}.
    {call,1,{f,835}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{'-inf',95}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,836}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lbc$^0/2-0-', 2, 838}.
  {label,837}.
    {line,[{location,"bs_bincomp_SUITE.erl",110}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,838}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,839},[{x,0}]}.
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
    {call_only,2,{f,838}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
  {label,839}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lc$^3/1-3-', 1, 841}.
  {label,840}.
    {line,[{location,"bs_bincomp_SUITE.erl",104}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^3/1-3-'},
               1}.
  {label,841}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,842},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,1,{literal,[little]},16,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,841}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,65535}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,842}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lbc$^2/2-2-', 2, 844}.
  {label,843}.
    {line,[{location,"bs_bincomp_SUITE.erl",102}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,844}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,845},[{x,0}]}.
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
    {call_only,2,{f,844}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
  {label,845}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lc$^1/1-1-', 1, 847}.
  {label,846}.
    {line,[{location,"bs_bincomp_SUITE.erl",100}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^1/1-1-'},
               1}.
  {label,847}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,848},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,255}}},{integer,32}],{y,0}}.
    {call,1,{f,847}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{32,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,848}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lbc$^0/2-0-', 2, 850}.
  {label,849}.
    {line,[{location,"bs_bincomp_SUITE.erl",99}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,850}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,851},[{x,0}]}.
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
    {call_only,2,{f,850}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
  {label,851}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^3/2-3-', 2, 853}.
  {label,852}.
    {line,[{location,"bs_bincomp_SUITE.erl",94}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^3/2-3-'},2}.
  {label,853}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,854},
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
    {call_only,2,{f,853}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
  {label,854}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^2/2-2-', 2, 856}.
  {label,855}.
    {line,[{location,"bs_bincomp_SUITE.erl",92}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^2/2-2-'},2}.
  {label,856}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,857},
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
    {call_only,2,{f,856}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
  {label,857}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^1/2-1-', 2, 859}.
  {label,858}.
    {line,[{location,"bs_bincomp_SUITE.erl",90}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^1/2-1-'},2}.
  {label,859}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,861},2,[{x,0}],{x,2}}.
    {bs_match,{f,860},
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
    {call_only,2,{f,859}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
  {label,860}.
    {move,{x,1},{x,0}}.
    return.
  {label,861}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^0/2-0-', 2, 863}.
  {label,862}.
    {line,[{location,"bs_bincomp_SUITE.erl",89}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^0/2-0-'},2}.
  {label,863}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,864},
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
    {call_only,2,{f,863}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
  {label,864}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^3/2-3-', 2, 866}.
  {label,865}.
    {line,[{location,"bs_bincomp_SUITE.erl",83}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^3/2-3-'},2}.
  {label,866}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,867},
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
    {call_only,2,{f,866}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
  {label,867}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^2/2-2-', 2, 869}.
  {label,868}.
    {line,[{location,"bs_bincomp_SUITE.erl",81}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^2/2-2-'},2}.
  {label,869}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,870},
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
    {call_only,2,{f,869}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
  {label,870}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^1/2-1-', 2, 872}.
  {label,871}.
    {line,[{location,"bs_bincomp_SUITE.erl",79}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^1/2-1-'},2}.
  {label,872}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,873},
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
    {call_only,2,{f,872}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
  {label,873}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^0/2-0-', 2, 875}.
  {label,874}.
    {line,[{location,"bs_bincomp_SUITE.erl",78}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^0/2-0-'},2}.
  {label,875}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,876},
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
    {call_only,2,{f,875}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
  {label,876}.
    {move,{x,1},{x,0}}.
    return.
