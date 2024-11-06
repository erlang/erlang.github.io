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
           {strict_generators,1},
           {suite,0},
           {trim_coverage,1},
           {verify_highest_opcode,1},
           {zero_pattern,1}]}.

{attributes, []}.

{labels, 897}.


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
                    strict_generators,float_skip]},
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
    {call,0,{f,324}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",78}]}.
    {call,2,{f,895}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,22},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abcdefg">>}]}.
    {move,{integer,12},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABC">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",79}]}.
    {call,2,{f,892}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,21},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"AxyzBxyzCxyz">>}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,1,0,0,0,2,0,0,0,3,0,0,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",81}]}.
    {call,2,{f,889}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,328}}. % cs/1
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
    {call,2,{f,886}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,19},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {bs_match,{f,19},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",82}]}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,0,{f,326},0}. % cs_end/0
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
    {call,0,{f,324}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",89}]}.
    {call,2,{f,883}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,30},
              {x,1},
              {commands,[{ensure_exactly,49},
                         {'=:=',nil,31,1640337190},
                         {'=:=',nil,18,95079}]}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",90}]}.
    {call,1,{f,339}}. % id/1
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
    {call,2,{f,879}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,29},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"ABCDEFG">>}]}.
    {move,{integer,16},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,0,2,0,0,0,8,0,0,0,24,0,0,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",92}]}.
    {call,2,{f,876}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,328}}. % cs/1
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
    {call,2,{f,873}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,27},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {bs_match,{f,27},{x,1},{commands,[{ensure_exactly,0}]}}.
    {call_last,0,{f,326},1}. % cs_end/0
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
    {call,0,{f,324}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",99}]}.
    {call,2,{f,870}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,36},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abcdefg">>}]}.
    {move,{literal,<<"ABCDEFG">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",100}]}.
    {call,1,{f,867}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
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
    {call,2,{f,864}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,34},
          [{x,1},128,{string,<<1,0,0,0,2,0,0,0,3,0,0,0,4,0,0,0>>}]}.
    {bs_match,{f,34},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<0,1,0,2,0,3,0,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",104}]}.
    {call,1,{f,861}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,65535}},nil}}]}}.
    {test,is_eq_exact,
          {f,33},
          [{tr,{x,0},{t_list,{t_integer,{0,65535}},nil}},
           {literal,[256,512,768,1024]}]}.
    {call_last,0,{f,326},0}. % cs_end/0
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
    {call,0,{f,324}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,7},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",110}]}.
    {call,2,{f,858}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,42},
              {x,1},
              {commands,[{ensure_exactly,49},
                         {'=:=',nil,31,1640337190},
                         {'=:=',nil,18,95079}]}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",111}]}.
    {call,1,{f,855}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
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
    {call,2,{f,852}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,
          {f,40},
          [{x,1},124,{string,<<1,0,0,0,4,0,0,0,12,0,0,0,32,0,0,0>>}]}.
    {bs_match,{f,40},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<0,2,0,8,0,24,0,4:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",115}]}.
    {call,1,{f,849}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,32767}},nil}}]}}.
    {test,is_eq_exact,
          {f,39},
          [{tr,{x,0},{t_list,{t_integer,{0,32767}},nil}},
           {literal,[256,512,768,1024]}]}.
    {call_last,0,{f,326},0}. % cs_end/0
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
    {call,0,{f,324}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",121}]}.
    {call,2,{f,843}}. % '-mixed/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,73},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",123}]}.
    {call,2,{f,837}}. % '-mixed/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,72},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",125}]}.
    {call,2,{f,831}}. % '-mixed/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",126}]}.
    {call,1,{f,339}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",127}]}.
    {call,1,{f,339}}. % id/1
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
    {call,3,{f,823}}. % '-mixed/1-lbc$^6/2-6-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,70},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,3,4,4,5,5,6>>}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",131}]}.
    {call,1,{f,817}}. % '-mixed/1-lc$^8/1-8-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,69},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",133}]}.
    {call,1,{f,811}}. % '-mixed/1-lc$^10/1-10-'/1
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
    {call,2,{f,805}}. % '-mixed/1-lbc$^12/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,328}}. % cs/1
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
    {call,2,{f,799}}. % '-mixed/1-lbc$^14/2-14-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,328}}. % cs/1
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
    {call,2,{f,793}}. % '-mixed/1-lbc$^16/2-16-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,328}}. % cs/1
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
    {call,2,{f,790}}. % '-mixed/1-lbc$^18/2-18-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,64},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,5097838}]}}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",145}]}.
    {call,1,{f,784}}. % '-mixed/1-lc$^19/1-19-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,63},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},
           {literal,[2,3,3,4,4,5,5,6]}]}.
    {move,{literal,<<41,12:4>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",147}]}.
    {call,1,{f,778}}. % '-mixed/1-lc$^21/1-21-'/1
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
    {call,2,{f,772}}. % '-mixed/1-lbc$^23/2-23-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,60},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",156}]}.
    {call,1,{f,339}}. % id/1
    {move,{literal,<<"*Ký">>},{x,1}}.
    {call,2,{f,77}}. % mixed_size/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
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
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,58},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{literal,<<4,5,6>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",165}]}.
    {call,1,{f,97}}. % match_context_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
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
    {call,1,{f,339}}. % id/1
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",178}]}.
    {call,1,{f,762}}. % '-mixed/1-fun-26-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {call_last,0,{f,326},4}. % cs_end/0
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
    {call,2,{f,759}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
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
    {call,1,{f,339}}. % id/1
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
    {call_last,3,{f,752},2}. % '-mixed_size/2-lbc$^0/2-0-'/3


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
    {call,1,{f,328}}. % cs/1
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
    {call_last,2,{f,749},1}. % '-silly_bc/1-lbc$^0/2-0-'/2


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
    {call_last,1,{f,746},0}. % '-silly_lc/1-lc$^0/1-0-'/1


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
    {call,2,{f,742}}. % '-gen_data/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
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
    {call,2,{f,734}}. % '-gen_data/1-lbc$^1/2-1-'/2
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
    {call_last,2,{f,731},1}. % '-match_context_1/1-lbc$^0/2-0-'/2


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
    {call_last,2,{f,728},1}. % '-do_match_context_2/1-lbc$^0/2-0-'/2


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
    {call_last,2,{f,721},0}. % '-over_complex_generator/0-lbc$^0/2-0-'/2


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
    {call_last,3,{f,719},0}. % '-float_segment_size/0-lbc$^0/2-0-'/3


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
    {call_last,3,{f,716},1}. % '-inconsistent_types_1/1-lbc$^0/2-0-'/3


{function, inconsistent_types_2, 0, 107}.
  {label,106}.
    {line,[{location,"bs_bincomp_SUITE.erl",270}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,inconsistent_types_2},0}.
  {label,107}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",272}]}.
    {call,1,{f,339}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",274}]}.
    {call,3,{f,712}}. % '-inconsistent_types_2/0-lbc$^0/2-0-'/3
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
    {call,0,{f,324}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<195,139,30,76,185,179,1:1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",285}]}.
    {call,2,{f,708}}. % '-filters/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,118},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"BDF">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",288}]}.
    {call,2,{f,703}}. % '-filters/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,117},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",291}]}.
    {call,2,{f,698}}. % '-filters/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,116},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"efg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",294}]}.
    {call,2,{f,693}}. % '-filters/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,115},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"b">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,"ABCDEFG"},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",298}]}.
    {call,2,{f,688}}. % '-filters/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,114},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"eg">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[[],[a],[],[x,y,z]]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",302}]}.
    {call,2,{f,684}}. % '-filters/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,113},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<"M">>,<<1,2>>,<<"*">>]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",308}]}.
    {call,2,{f,680}}. % '-filters/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,112},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"M*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<97,98,227,100,229,0:4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",311}]}.
    {call,2,{f,676}}. % '-filters/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,111},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abd">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,42,43,42]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",315}]}.
    {call,2,{f,672}}. % '-filters/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,110},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"**">>}]}.
    {call_last,0,{f,326},0}. % cs_end/0
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
    {call,1,{f,339}}. % id/1
    {test,is_eq_exact,{f,130},[{x,0},{atom,a}]}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",332}]}.
    {call,1,{f,339}}. % id/1
    {test,is_eq_exact,{f,129},[{x,0},{atom,b}]}.
    {move,{integer,8},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1328,777134]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",334}]}.
    {call,2,{f,669}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
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
    {call,2,{f,666}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
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
    {call_last,1,{f,339},0}. % id/1


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
    {call,1,{f,339}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",344}]}.
    {call,1,{f,339}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",345}]}.
    {call,1,{f,339}}. % id/1
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,2,{f,662},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2


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
    {call,2,{f,659}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
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
    {call,2,{f,656}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
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
    {call,1,{f,339}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",368}]}.
    {call,2,{f,653}}. % '-nomatch/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,152},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",369}]}.
    {call,1,{f,651}}. % '-nomatch/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",370}]}.
    {call,1,{f,648}}. % '-nomatch/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",371}]}.
    {call,2,{f,646}}. % '-nomatch/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,151},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",372}]}.
    {call,2,{f,643}}. % '-nomatch/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,150},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",374}]}.
    {call,2,{f,638}}. % '-nomatch/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,149},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",377}]}.
    {call,2,{f,634}}. % '-nomatch/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,148},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",379}]}.
    {call,2,{f,154}}. % nomatch_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,147},
          [{tr,{x,0},{t_bitstring,32,true}},
           {literal,<<0,0,0,1,0,0,0,2,0,0,0,3>>}]}.
    {move,{atom,bad},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",380}]}.
    {call,2,{f,154}}. % nomatch_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {test,is_eq_exact,
          {f,146},
          [{tr,{x,0},{t_bitstring,32,true}},{literal,<<>>}]}.
    {move,{integer,0},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",382}]}.
    {call,2,{f,631}}. % '-nomatch/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,145},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",387}]}.
    {call,2,{f,629}}. % '-nomatch/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,339}}. % id/1
    {test,is_eq_exact,{f,144},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",388}]}.
    {call,2,{f,627}}. % '-nomatch/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,339}}. % id/1
    {test,is_eq_exact,{f,143},[{x,0},{literal,<<>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,0},{f,141}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",390}]}.
    {call,2,{f,625}}. % '-nomatch/1-lbc$^12/2-12-'/2
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
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,143}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",388}]}.
    {badmatch,{x,0}}.
  {label,144}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",387}]}.
    {badmatch,{x,0}}.
  {label,145}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",382}]}.
    {badmatch,{x,0}}.
  {label,146}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",380}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",379}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",377}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",374}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",372}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",371}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",368}]}.
    {badmatch,{x,0}}.


{function, nomatch_1, 2, 154}.
  {label,153}.
    {line,[{location,"bs_bincomp_SUITE.erl",394}]}.
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
    {call_last,3,{f,622},2}. % '-nomatch_1/2-lbc$^0/2-0-'/3


{function, sizes, 1, 156}.
  {label,155}.
    {line,[{location,"bs_bincomp_SUITE.erl",397}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,sizes},1}.
  {label,156}.
    {test,is_list,{f,155},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",398}]}.
    {call,0,{f,324}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",402}]}.
    {call,1,{f,614}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",403}]}.
    {call,1,{f,614}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",404}]}.
    {call,1,{f,614}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,211},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",405}]}.
    {call,1,{f,614}}. % '-sizes/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,210},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",410}]}.
    {call,1,{f,606}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",411}]}.
    {call,1,{f,606}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,208},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1>>}]}.
    {move,{literal,[1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",412}]}.
    {call,1,{f,606}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,207},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2>>}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",413}]}.
    {call,1,{f,606}}. % '-sizes/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2,0,3>>}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",418}]}.
    {call,1,{f,598}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,205},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",419}]}.
    {call,1,{f,598}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,204},{x,1},{commands,[{ensure_exactly,4},{'=:=',nil,4,1}]}}.
    {move,{literal,[1,13]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",420}]}.
    {call,1,{f,598}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,203},{x,1},{commands,[{ensure_exactly,8},{'=:=',nil,8,29}]}}.
    {move,{literal,[1,13,7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",421}]}.
    {call,1,{f,598}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,202},
              {x,1},
              {commands,[{ensure_exactly,12},{'=:=',nil,12,471}]}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2000},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",422}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {call,1,{f,598}}. % '-sizes/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,201},
              {x,1},
              {commands,[{ensure_at_least,8000,1},
                         {integer,2,{literal,[]},1000,8,{x,2}}]}}.
    {test,is_eq_exact,{f,201},[{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {bs_match,{f,201},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",427}]}.
    {call,1,{f,590}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,200},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,[1,2,1,3,0,7,5]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",428}]}.
    {call,1,{f,590}}. % '-sizes/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,199},
              {x,1},
              {commands,[{ensure_exactly,21},{'=:=',nil,21,333373}]}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,512},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",429}]}.
    {call_ext,2,{extfunc,lists,duplicate,2}}.
    {call,1,{f,590}}. % '-sizes/1-fun-7-'/1
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
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",434}]}.
    {call,2,{f,582}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,197},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,6},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",435}]}.
    {call,2,{f,582}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,196},{x,1},{commands,[{ensure_exactly,6},{'=:=',nil,6,42}]}}.
    {move,{integer,16},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",436}]}.
    {call,2,{f,582}}. % '-sizes/1-fun-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,195},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,42>>}]}.
    {move,{integer,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,3}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",441}]}.
    {call,4,{f,574}}. % '-sizes/1-fun-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,194},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,3},{x,1}}.
    {move,{integer,7},{x,3}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",442}]}.
    {call,4,{f,574}}. % '-sizes/1-fun-11-'/4
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
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",448}]}.
    {call,4,{f,566}}. % '-sizes/1-fun-13-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,192},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,5},{x,2}}.
    {move,{integer,3},{x,1}}.
    {move,{integer,7},{x,3}}.
    {move,{literal,[7]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",449}]}.
    {call,4,{f,566}}. % '-sizes/1-fun-13-'/4
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
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",454}]}.
    {call,2,{f,558}}. % '-sizes/1-fun-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,190},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{integer,20},{x,1}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",455}]}.
    {call,2,{f,558}}. % '-sizes/1-fun-15-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,189},
              {x,1},
              {commands,[{ensure_exactly,28},{'=:=',nil,28,44040235}]}}.
    {move,{literal,"Foundation"},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",460}]}.
    {call,1,{f,552}}. % '-sizes/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,188},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"Foundation">>}]}.
    {move,{literal,[1054,1089,1085,1086,1074,1072,1085,1080,1077]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",461}]}.
    {call,1,{f,552}}. % '-sizes/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,187},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<208,158,209,129,208,189,208,190,208,178,208,176,208,
                      189,208,184,208,181>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",468}]}.
    {call,1,{f,544}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,186},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",469}]}.
    {call,1,{f,544}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,185},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1>>}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",470}]}.
    {call,1,{f,544}}. % '-sizes/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,184},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<0,1,0,2>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",475}]}.
    {call,1,{f,536}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,183},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<>>}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",476}]}.
    {call,1,{f,536}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,182},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1>>}]}.
    {move,{literal,<<0,1,0,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",477}]}.
    {call,1,{f,536}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,181},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",478}]}.
    {call,1,{f,536}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,180},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,0:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",479}]}.
    {call,1,{f,536}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,179},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",480}]}.
    {call,1,{f,536}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,178},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,21,0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",481}]}.
    {call,1,{f,536}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,177},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{literal,<<0,1,0,2,1,127:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",482}]}.
    {call,1,{f,536}}. % '-sizes/1-fun-21-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,176},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",487}]}.
    {call,3,{f,528}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,175},
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
    {call,3,{f,528}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,174},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,4},{x,1}}.
    {move,{integer,4},{x,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",490}]}.
    {call,3,{f,528}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,173},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,8},{x,1}}.
    {move,{integer,8},{x,2}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",491}]}.
    {call,3,{f,528}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,172},
          [{tr,{x,0},{t_bitstring,1,true}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{integer,9},{x,1}}.
    {move,{integer,6},{x,2}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<69,3:4>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",492}]}.
    {call,3,{f,528}}. % '-sizes/1-fun-23-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,171},
              {x,1},
              {commands,[{ensure_exactly,18},{'=:=',nil,18,8723}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",497}]}.
    {call,1,{f,523}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,170},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",498}]}.
    {call,1,{f,523}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,169},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",499}]}.
    {call,1,{f,523}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,168},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,6},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",500}]}.
    {call,1,{f,523}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,167},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",501}]}.
    {call,1,{f,523}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,166},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0>>}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",502}]}.
    {call,1,{f,523}}. % '-sizes/1-fun-25-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,165},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3,0,0>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",504}]}.
    {call,2,{f,520}}. % '-sizes/1-lbc$^26/2-13-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,164},{x,1},{commands,[{ensure_exactly,3},{'=:=',nil,3,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",505}]}.
    {call,2,{f,517}}. % '-sizes/1-lbc$^27/2-14-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,163},{x,1},{commands,[{ensure_exactly,3},{'=:=',nil,3,0}]}}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{literal,[8,16]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",510}]}.
    {call,2,{f,507}}. % '-sizes/1-fun-30-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,162},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,97,0,0,0,98,0,0,0,99,0,0,97,98>>}]}.
    {move,{literal,<<"abc">>},{x,1}}.
    {move,{literal,[8,bad]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",511}]}.
    {call,2,{f,507}}. % '-sizes/1-fun-30-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,161},
          [{tr,{x,0},{t_bitstring,1,true}},
           {literal,<<0,0,0,97,0,0,0,98,0,0,0,99>>}]}.
    {move,{literal,<<0,0,0,70,0,0,0,111,0,0,0,117,0,0,0,110,0,0,0,100,0,0,0,
                     97,0,0,0,116,0,0,0,105,0,0,0,111,0,0,0,110>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",516}]}.
    {call,1,{f,501}}. % '-sizes/1-fun-32-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,160},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"Foundation">>}]}.
    {move,{literal,<<0,0,4,30,0,0,4,65,0,0,4,61,0,0,4,62,0,0,4,50,0,0,4,48,0,
                     0,4,61,0,0,4,56,0,0,4,53>>},
          {x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",517}]}.
    {call,1,{f,501}}. % '-sizes/1-fun-32-'/1
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
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",519}]}.
    {call,2,{f,499}}. % '-sizes/1-lbc$^33/2-18-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,157}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,158},[{x,0},2,{atom,'EXIT'}]}.
    {call_last,0,{f,326},1}. % cs_end/0
  {label,158}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",519}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",517}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",516}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",511}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",510}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",505}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",504}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",502}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",501}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",500}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",499}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",498}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",497}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",492}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",491}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",490}]}.
    {badmatch,{x,0}}.
  {label,174}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",489}]}.
    {badmatch,{x,0}}.
  {label,175}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",487}]}.
    {badmatch,{x,0}}.
  {label,176}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",482}]}.
    {badmatch,{x,0}}.
  {label,177}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",481}]}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",480}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",479}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",478}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",477}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",476}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",475}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",470}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",469}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",468}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",461}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",460}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",455}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",454}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",449}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",448}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",441}]}.
    {badmatch,{x,0}}.
  {label,195}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",434}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",422}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",413}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",410}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",405}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",404}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",403}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",402}]}.
    {badmatch,{x,0}}.


{function, general_expressions, 1, 215}.
  {label,214}.
    {line,[{location,"bs_bincomp_SUITE.erl",527}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,general_expressions},1}.
  {label,215}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",528}]}.
    {call,0,{f,324}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",530}]}.
    {call,2,{f,496}}. % '-general_expressions/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,239},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",531}]}.
    {call,2,{f,493}}. % '-general_expressions/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,238},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"abc">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",532}]}.
    {call,2,{f,490}}. % '-general_expressions/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,237},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<1,2>>,<<3>>]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",536}]}.
    {call,2,{f,487}}. % '-general_expressions/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,236},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",537}]}.
    {call,2,{f,484}}. % '-general_expressions/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,235},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<1,2,3>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4,5]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",538}]}.
    {call,2,{f,479}}. % '-general_expressions/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,234},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",542}]}.
    {call,2,{f,473}}. % '-general_expressions/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,233},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<2,3,4,5,6,7>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",544}]}.
    {call,2,{f,468}}. % '-general_expressions/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,232},
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
    {call,2,{f,463}}. % '-general_expressions/1-lbc$^9/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,231},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<"*">>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",550}]}.
    {call,2,{f,458}}. % '-general_expressions/1-lbc$^10/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {test,is_eq_exact,
          {f,230},
          [{tr,{x,0},{t_bitstring,1,true}},{literal,<<10,5,3>>}]}.
    {move,{literal,"3A7"},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",556}]}.
    {call,1,{f,241}}. % hstring_to_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,229},
              {x,1},
              {commands,[{ensure_exactly,12},{'=:=',nil,12,935}]}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",557}]}.
    {call,1,{f,339}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{literal,{65,8}},{x,0}}.
    {call,1,{f,339}}. % id/1
    {move,{y,5},{x,1}}.
    {move,{x,0},{x,2}}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{literal,"ABCDEFGH"},{x,0}}.
    {call,3,{f,248}}. % encode_chars_compact_map/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,228},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,342391}]}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",559}]}.
    {call,0,{f,326}}. % cs_end/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,5},{f,216}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",562}]}.
    {call,2,{f,456}}. % '-general_expressions/1-lbc$^11/2-11-'/2
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
    {line,[{scope,"\v\f"},{location,"bs_bincomp_SUITE.erl",563}]}.
    {call,2,{f,454}}. % '-general_expressions/1-lbc$^12/2-12-'/2
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
    {line,[{scope,"\t\n"},{location,"bs_bincomp_SUITE.erl",564}]}.
    {call,2,{f,452}}. % '-general_expressions/1-lbc$^13/2-13-'/2
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
    {line,[{scope,[7,8]},{location,"bs_bincomp_SUITE.erl",565}]}.
    {call,2,{f,450}}. % '-general_expressions/1-lbc$^14/2-14-'/2
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
    {line,[{scope,[5,6]},{location,"bs_bincomp_SUITE.erl",566}]}.
    {call,2,{f,448}}. % '-general_expressions/1-lbc$^15/2-15-'/2
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
    {line,[{scope,[3,4]},{location,"bs_bincomp_SUITE.erl",567}]}.
    {call,2,{f,443}}. % '-general_expressions/1-lbc$^16/2-16-'/2
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
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",567}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",566}]}.
    {badmatch,{x,0}}.
  {label,224}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",565}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",564}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",563}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",562}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",556}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",549}]}.
    {badmatch,{x,0}}.
  {label,232}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",544}]}.
    {badmatch,{x,0}}.
  {label,233}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",542}]}.
    {badmatch,{x,0}}.
  {label,234}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",538}]}.
    {badmatch,{x,0}}.
  {label,235}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",537}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",536}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",532}]}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",531}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{scope,"\f"},{location,"bs_bincomp_SUITE.erl",530}]}.
    {badmatch,{x,0}}.


{function, hstring_to_bitstring, 1, 241}.
  {label,240}.
    {line,[{location,"bs_bincomp_SUITE.erl",571}]}.
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
    {call_last,2,{f,440},1}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2


{function, hex_to_int, 1, 245}.
  {label,244}.
    {line,[{location,"bs_bincomp_SUITE.erl",574}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",577}]}.
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
    {call_last,5,{f,437},3}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5


{function, enc_char_cm, 3, 252}.
  {label,251}.
    {line,[{location,"bs_bincomp_SUITE.erl",580}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,enc_char_cm},3}.
  {label,252}.
    {'%',{var_info,{x,0},[{type,{t_integer,{65,72}}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",581}]}.
    {gc_bif,'-',{f,0},3,[{tr,{x,0},{t_integer,{65,72}}},{x,1}],{x,0}}.
    {test,is_ge,{f,253},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {test,is_lt,{f,253},[{tr,{x,0},{t_number,{0,'+inf'}}},{x,2}]}.
    return.
  {label,253}.
    {move,{atom,illegal},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",586}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, no_generator, 1, 255}.
  {label,254}.
    {line,[{location,"bs_bincomp_SUITE.erl",591}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,no_generator},1}.
  {label,255}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{y,0}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",592}]}.
    {call,1,{f,339}}. % id/1
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
  {label,256}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,257},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,257},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,257}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",596}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",593}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",592}]}.
    {badmatch,{x,0}}.


{function, zero_pattern, 1, 261}.
  {label,260}.
    {line,[{location,"bs_bincomp_SUITE.erl",600}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,zero_pattern},1}.
  {label,261}.
    {test,is_atom,{f,262},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,2,{f,435},0}. % '-zero_pattern/1-lbc$^0/2-0-'/2
  {label,262}.
    {move,{atom,ok},{x,0}}.
    return.


{function, multiple_segments, 1, 264}.
  {label,263}.
    {line,[{location,"bs_bincomp_SUITE.erl",621}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,multiple_segments},1}.
  {label,264}.
    {allocate,0,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",622}]}.
    {call,0,{f,324}}. % cs_init/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<4,16,66>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",624}]}.
    {call,1,{f,276}}. % matched_out_size/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,274},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[1,2]}]}.
    {move,{literal,<<16,0,42,72>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",625}]}.
    {call,1,{f,276}}. % matched_out_size/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,273},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,"*"}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",627}]}.
    {call,1,{f,279}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,272},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",628}]}.
    {call,1,{f,279}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,271},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",629}]}.
    {call,1,{f,279}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,270},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",630}]}.
    {call,1,{f,279}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_nil,{f,269},[{tr,{x,0},{t_list,{t_integer,{0,255}},nil}}]}.
    {move,{literal,<<99,0,1,1,2,3,4,4>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",631}]}.
    {call,1,{f,279}}. % do_multiple_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_eq_exact,
          {f,268},
          [{tr,{x,0},{t_list,{t_integer,{0,255}},nil}},{literal,[1,4]}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",633}]}.
    {call,1,{f,282}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_nil,{f,267},[{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",634}]}.
    {call,1,{f,282}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,266},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[6]}]}.
    {move,{literal,<<1,2,3,4,5,6,7,8>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",635}]}.
    {call,1,{f,282}}. % do_multiple_segments_2/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test,is_eq_exact,
          {f,265},
          [{tr,{x,0},{t_list,{t_integer,{0,'+inf'}},nil}},{literal,[6,15]}]}.
    {call_last,0,{f,326},0}. % cs_end/0
  {label,265}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{location,"bs_bincomp_SUITE.erl",634}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{location,"bs_bincomp_SUITE.erl",633}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{location,"bs_bincomp_SUITE.erl",631}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{location,"bs_bincomp_SUITE.erl",630}]}.
    {badmatch,{x,0}}.
  {label,270}.
    {line,[{location,"bs_bincomp_SUITE.erl",629}]}.
    {badmatch,{x,0}}.
  {label,271}.
    {line,[{location,"bs_bincomp_SUITE.erl",628}]}.
    {badmatch,{x,0}}.
  {label,272}.
    {line,[{location,"bs_bincomp_SUITE.erl",627}]}.
    {badmatch,{x,0}}.
  {label,273}.
    {line,[{location,"bs_bincomp_SUITE.erl",625}]}.
    {badmatch,{x,0}}.
  {label,274}.
    {line,[{location,"bs_bincomp_SUITE.erl",624}]}.
    {badmatch,{x,0}}.


{function, matched_out_size, 1, 276}.
  {label,275}.
    {line,[{location,"bs_bincomp_SUITE.erl",640}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",641}]}.
    {call,2,{f,431}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",642}]}.
    {call,1,{f,427}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",643}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",646}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",647}]}.
    {call,2,{f,423}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,331}}. % cs_default/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",648}]}.
    {call,1,{f,419}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",649}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",652}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",653}]}.
    {call,2,{f,416}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,328}}. % cs/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",654}]}.
    {call,1,{f,413}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",655}]}.
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
    {line,[{location,"bs_bincomp_SUITE.erl",658}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,grab_bag},1}.
  {label,285}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {'catch',{y,3},{f,286}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",659}]}.
    {call,1,{f,297}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,286}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,295},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,295},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,2},{f,287}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_bincomp_SUITE.erl",660}]}.
    {call,1,{f,297}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,287}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,294},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,294},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,288}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_bincomp_SUITE.erl",661}]}.
    {call,1,{f,297}}. % grab_bag_gh_6553/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,288}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,293},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,293},[{x,1}]}.
    {test,test_arity,{f,293},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,293},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,0},{f,289}}.
    {move,{atom,ok},{x,0}}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",664}]}.
    {call,2,{f,411}}. % '-grab_bag/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,289}.
    {try_case,{y,0}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_bincomp_SUITE.erl",666}]}.
    {call,1,{f,301}}. % grab_bag_gh_8617/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_nil,{f,292},[{tr,{x,0},{t_list,{t_integer,{0,0}},nil}}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",667}]}.
    {call,1,{f,301}}. % grab_bag_gh_8617/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_eq_exact,
          {f,291},
          [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{literal,[0]}]}.
    {move,{literal,<<0:3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",668}]}.
    {call,1,{f,301}}. % grab_bag_gh_8617/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test,is_eq_exact,
          {f,290},
          [{tr,{x,0},{t_list,{t_integer,{0,0}},nil}},{literal,[0,0,0]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,290}.
    {badmatch,{x,0}}.
  {label,291}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",667}]}.
    {badmatch,{x,0}}.
  {label,292}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",666}]}.
    {badmatch,{x,0}}.
  {label,293}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",661}]}.
    {badmatch,{x,0}}.
  {label,294}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",660}]}.
    {badmatch,{x,0}}.
  {label,295}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",659}]}.
    {badmatch,{x,0}}.


{function, grab_bag_gh_6553, 1, 297}.
  {label,296}.
    {line,[{location,"bs_bincomp_SUITE.erl",672}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,grab_bag_gh_6553},1}.
  {label,297}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,none,none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,299},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,298},{x,0},{commands,[{ensure_at_least,8,1}]}}.
    {test,bs_get_integer2,
          {f,298},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[672,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,298},{x,0},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",674}]}.
    {badmatch,{literal,<<>>}}.
  {label,298}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,296}}.
  {label,299}.
    {move,{atom,a},{x,0}}.
    {jump,{f,296}}.


{function, grab_bag_gh_8617, 1, 301}.
  {label,300}.
    {line,[{location,"bs_bincomp_SUITE.erl",676}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,grab_bag_gh_8617},1}.
  {label,301}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {call_only,1,{f,406}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1


{function, strict_generators, 1, 303}.
  {label,302}.
    {line,[{location,"bs_bincomp_SUITE.erl",683}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,strict_generators},1}.
  {label,303}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",685}]}.
    {call,2,{f,403}}. % '-strict_generators/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,322},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<2,3,4>>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",686}]}.
    {call,2,{f,399}}. % '-strict_generators/1-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,321},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<2,3,4>>}]}.
    {move,{literal,#{1 => 2,3 => 4}},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",687}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,4}}.
    {test,is_nil,{f,304},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => 2,3 => 4}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,304}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call,2,{f,394}}. % '-strict_generators/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,320},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<2,12>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",690}]}.
    {call,2,{f,390}}. % '-strict_generators/1-lbc$^3/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,319},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<3,4>>}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",691}]}.
    {call,2,{f,385}}. % '-strict_generators/1-lbc$^4/2-4-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,318},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<3,4>>}]}.
    {move,{literal,#{1 => 2,3 => 4}},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",692}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,4}}.
    {test,is_nil,{f,305},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => 2,3 => 4}}},{x,0}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,305}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call,2,{f,379}}. % '-strict_generators/1-lbc$^5/2-5-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,317},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<"\f">>}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,4},{f,306}}.
    {move,{literal,[{ok,1},2,{ok,3}]},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",695}]}.
    {call,2,{f,375}}. % '-strict_generators/1-lbc$^6/2-6-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
  {label,306}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,316},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,316},[{x,1}]}.
    {test,test_arity,{f,316},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,316},[{x,1},{literal,{badmatch,2}}]}.
    {move,{integer,3},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'catch',{y,3},{f,307}}.
    {move,{literal,<<1,128,2>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",696}]}.
    {call,2,{f,371}}. % '-strict_generators/1-lbc$^7/2-7-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
  {label,307}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,315},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,315},[{x,1}]}.
    {test,test_arity,{f,315},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,315},[{x,1},{literal,{badmatch,<<128,2>>}}]}.
    {'catch',{y,2},{f,309}}.
    {move,{literal,#{1 => ok,2 => error,3 => ok}},{x,0}}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",697}]}.
    {call_ext,1,{extfunc,erts_internal,mc_iterator,1}}.
    {move,{x,0},{y,4}}.
    {test,is_nil,{f,308},[{x,0}]}.
    {move,{literal,{bad_generator,#{1 => ok,2 => error,3 => ok}}},{x,0}}.
    {line,[{scope,[5]},{location,"bs_bincomp_SUITE.erl",697}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
    {jump,{f,309}}.
  {label,308}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call,2,{f,365}}. % '-strict_generators/1-lbc$^8/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
  {label,309}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,314},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,314},[{x,1}]}.
    {test,test_arity,{f,314},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,314},[{x,1},{literal,{badmatch,{2,error}}}]}.
    {'catch',{y,1},{f,310}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",700}]}.
    {call,1,{f,361}}. % '-strict_generators/1-lc$^9/1-9-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,7}},nil}}]}}.
  {label,310}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,313},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,313},[{x,1}]}.
    {test,test_arity,{f,313},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,313},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,313},2,[{x,1}],{x,1}}.
    {bs_match,{f,313},{x,1},{commands,[{ensure_exactly,2},{'=:=',nil,2,0}]}}.
    {'catch',{y,0},{f,311}}.
    {move,{literal,<<8,1,9,2>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_bincomp_SUITE.erl",701}]}.
    {call,1,{f,357}}. % '-strict_generators/1-lc$^10/1-10-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
  {label,311}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,312},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,312},[{x,1}]}.
    {test,test_arity,{f,312},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,312},[{x,1},{literal,{badmatch,<<9,2>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,312}.
    {line,[{scope,[0]},{location,"bs_bincomp_SUITE.erl",701}]}.
    {badmatch,{x,0}}.
  {label,313}.
    {line,[{scope,[2]},{location,"bs_bincomp_SUITE.erl",700}]}.
    {badmatch,{x,0}}.
  {label,314}.
    {line,[{scope,[4]},{location,"bs_bincomp_SUITE.erl",697}]}.
    {badmatch,{x,0}}.
  {label,315}.
    {line,[{scope,[6]},{location,"bs_bincomp_SUITE.erl",696}]}.
    {badmatch,{x,0}}.
  {label,316}.
    {line,[{scope,"\b"},{location,"bs_bincomp_SUITE.erl",695}]}.
    {badmatch,{x,0}}.
  {label,317}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",692}]}.
    {badmatch,{x,0}}.
  {label,318}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",691}]}.
    {badmatch,{x,0}}.
  {label,319}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",690}]}.
    {badmatch,{x,0}}.
  {label,320}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",687}]}.
    {badmatch,{x,0}}.
  {label,321}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",686}]}.
    {badmatch,{x,0}}.
  {label,322}.
    {line,[{scope,"\n"},{location,"bs_bincomp_SUITE.erl",685}]}.
    {badmatch,{x,0}}.


{function, cs_init, 0, 324}.
  {label,323}.
    {line,[{location,"bs_bincomp_SUITE.erl",705}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs_init},0}.
  {label,324}.
    {allocate,0,0}.
    {move,{atom,true},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",706}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs_end, 0, 326}.
  {label,325}.
    {line,[{location,"bs_bincomp_SUITE.erl",709}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs_end},0}.
  {label,326}.
    {allocate,0,0}.
    {move,{atom,false},{x,1}}.
    {move,{atom,available_internal_state},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",710}]}.
    {call_ext,2,{extfunc,erts_debug,set_internal_state,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, cs, 1, 328}.
  {label,327}.
    {line,[{location,"bs_bincomp_SUITE.erl",714}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs},1}.
  {label,328}.
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
    {test,is_tagged_tuple,{f,329},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tagged_tuple,{f,329},[{x,1},2,{atom,binary}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,
          {f,329},
          [{x,2},{tr,{y,0},{t_integer,{0,288230376151711743}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,
          {f,329},
          [{x,1},{tr,{y,0},{t_integer,{0,288230376151711743}}}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,329}.
    {line,[{location,"bs_bincomp_SUITE.erl",734}]}.
    {badmatch,{x,0}}.


{function, cs_default, 1, 331}.
  {label,330}.
    {line,[{location,"bs_bincomp_SUITE.erl",740}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,cs_default},1}.
  {label,331}.
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
    {test,is_tagged_tuple,{f,332},[{x,0},4,{atom,refc_binary}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,332},[{x,1},{literal,{binary,256}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,332},
          [{x,1},{tr,{y,0},{t_integer,{0,288230376151711743}}}]}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,332}.
    {line,[{location,"bs_bincomp_SUITE.erl",742}]}.
    {badmatch,{x,0}}.


{function, float_skip, 1, 334}.
  {label,333}.
    {line,[{location,"bs_bincomp_SUITE.erl",746}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,float_skip},1}.
  {label,334}.
    {test,is_list,{f,333},[{x,0}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",748}]}.
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
    {call,1,{f,353}}. % '-float_skip/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,337},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[1.0,1.5,200.0]}]}.
    {move,{literal,<<64,56,0,0,0,0,0,0,255,255,255,255,255,255,255,255,64,72,
                     64,0,0,0,0,0,64,53,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",750}]}.
    {call,1,{f,349}}. % '-float_skip/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,336},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[24.0,48.5,21.0]}]}.
    {move,{literal,<<0,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255,0,0,0,0,
                     0,0,0,0,63,240,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",752}]}.
    {call,1,{f,345}}. % '-float_skip/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a]},nil}}]}}.
    {test,is_eq_exact,
          {f,335},
          [{tr,{x,0},{t_list,{t_atom,[a]},nil}},{literal,[a,a]}]}.
    {deallocate,0}.
    return.
  {label,335}.
    {badmatch,{x,0}}.
  {label,336}.
    {line,[{location,"bs_bincomp_SUITE.erl",750}]}.
    {badmatch,{x,0}}.
  {label,337}.
    {line,[{location,"bs_bincomp_SUITE.erl",748}]}.
    {badmatch,{x,0}}.


{function, id, 1, 339}.
  {label,338}.
    {line,[{location,"bs_bincomp_SUITE.erl",755}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,id},1}.
  {label,339}.
    return.


{function, module_info, 0, 341}.
  {label,340}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,module_info},0}.
  {label,341}.
    {move,{atom,bs_bincomp_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 343}.
  {label,342}.
    {line,[]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,module_info},1}.
  {label,343}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_bincomp_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-float_skip/1-lc$^2/1-2-', 1, 345}.
  {label,344}.
    {line,[{location,"bs_bincomp_SUITE.erl",752}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-float_skip/1-lc$^2/1-2-'},1}.
  {label,345}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_float2,
          {f,346},
          2,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[752,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,346},[{tr,{x,2},{t_float,any}},{float,0.0}]}.
    {allocate,0,1}.
    {call,1,{f,345}}. % '-float_skip/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[a]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,a},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,346}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,347},{x,0},{commands,[{ensure_at_least,64,1},{skip,64}]}}.
    {call_only,1,{f,345}}. % '-float_skip/1-lc$^2/1-2-'/1
  {label,347}.
    {move,nil,{x,0}}.
    return.


{function, '-float_skip/1-lc$^1/1-1-', 1, 349}.
  {label,348}.
    {line,[{location,"bs_bincomp_SUITE.erl",750}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-float_skip/1-lc$^1/1-1-'},1}.
  {label,349}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,350},
          1,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[750,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,349}}. % '-float_skip/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,350}.
    {bs_match,{f,351},{x,0},{commands,[{ensure_at_least,64,1},{skip,64}]}}.
    {call_only,1,{f,349}}. % '-float_skip/1-lc$^1/1-1-'/1
  {label,351}.
    {move,nil,{x,0}}.
    return.


{function, '-float_skip/1-lc$^0/1-0-', 1, 353}.
  {label,352}.
    {line,[{location,"bs_bincomp_SUITE.erl",748}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-float_skip/1-lc$^0/1-0-'},1}.
  {label,353}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,354},
          1,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[748,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,353}}. % '-float_skip/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,354}.
    {bs_match,{f,355},{x,0},{commands,[{ensure_at_least,64,1},{skip,64}]}}.
    {call_only,1,{f,353}}. % '-float_skip/1-lc$^0/1-0-'/1
  {label,355}.
    {move,nil,{x,0}}.
    return.


{function, '-strict_generators/1-lc$^10/1-10-', 1, 357}.
  {label,356}.
    {line,[{location,"bs_bincomp_SUITE.erl",701}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lc$^10/1-10-'},
               1}.
  {label,357}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,358},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,358},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[701,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,357}}. % '-strict_generators/1-lc$^10/1-10-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,358}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test,is_eq_exact,
          {f,359},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.
  {label,359}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_generators/1-lc$^9/1-9-', 1, 361}.
  {label,360}.
    {line,[{location,"bs_bincomp_SUITE.erl",700}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lc$^9/1-9-'},
               1}.
  {label,361}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,362},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,1,{literal,[]},3,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,361}}. % '-strict_generators/1-lc$^9/1-9-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,7}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,362}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test,is_eq_exact,
          {f,363},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.
  {label,363}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_generators/1-lbc$^8/2-8-', 2, 365}.
  {label,364}.
    {line,[{location,"bs_bincomp_SUITE.erl",697}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^8/2-8-'},
               2}.
  {label,365}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,366},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,365},1}. % '-strict_generators/1-lbc$^8/2-8-'/2
  {label,366}.
    {test,is_tuple,{f,368},[{x,0}]}.
    {test,test_arity,{f,369},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {test,is_eq_exact,{f,367},[{x,3},{atom,ok}]}.
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
    {call_only,2,{f,365}}. % '-strict_generators/1-lbc$^8/2-8-'/2
  {label,367}.
    {test_heap,6,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,368}.
    {test,is_eq_exact,{f,369},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,369}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_generators/1-lbc$^7/2-7-', 2, 371}.
  {label,370}.
    {line,[{location,"bs_bincomp_SUITE.erl",696}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^7/2-7-'},
               2}.
  {label,371}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,372},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,3,{literal,[]},1,1,{x,3}}]}}.
    {test,is_eq_exact,{f,372},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
    {bs_match,{f,372},
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
    {call_only,2,{f,371}}. % '-strict_generators/1-lbc$^7/2-7-'/2
  {label,372}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test,is_eq_exact,
          {f,373},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,373}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_generators/1-lbc$^6/2-6-', 2, 375}.
  {label,374}.
    {line,[{location,"bs_bincomp_SUITE.erl",695}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^6/2-6-'},
               2}.
  {label,375}.
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
    {test,is_nonempty_list,{f,377},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_tuple,
          {f,376},
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
    {call_only,2,{f,375}}. % '-strict_generators/1-lbc$^6/2-6-'/2
  {label,376}.
    {move,{literal,{badmatch,2}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,377}.
    {move,{x,1},{x,0}}.
    return.


{function, '-strict_generators/1-lbc$^5/2-5-', 2, 379}.
  {label,378}.
    {line,[{location,"bs_bincomp_SUITE.erl",692}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^5/2-5-'},
               2}.
  {label,379}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,380},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,379},1}. % '-strict_generators/1-lbc$^5/2-5-'/2
  {label,380}.
    {test,is_tuple,{f,382},[{x,0}]}.
    {test,test_arity,{f,383},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_lt,{f,381},[{integer,1},{x,2}]}.
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
    {call_only,2,{f,379}}. % '-strict_generators/1-lbc$^5/2-5-'/2
  {label,381}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,379}}. % '-strict_generators/1-lbc$^5/2-5-'/2
  {label,382}.
    {test,is_eq_exact,{f,383},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,383}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_generators/1-lbc$^4/2-4-', 2, 385}.
  {label,384}.
    {line,[{location,"bs_bincomp_SUITE.erl",691}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^4/2-4-'},
               2}.
  {label,385}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,387},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_ge,{f,386},[{tr,{x,2},{t_integer,{0,255}}},{integer,2}]}.
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
    {call_only,2,{f,385}}. % '-strict_generators/1-lbc$^4/2-4-'/2
  {label,386}.
    {call_only,2,{f,385}}. % '-strict_generators/1-lbc$^4/2-4-'/2
  {label,387}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test,is_eq_exact,
          {f,388},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,388}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_generators/1-lbc$^3/2-3-', 2, 390}.
  {label,389}.
    {line,[{location,"bs_bincomp_SUITE.erl",690}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^3/2-3-'},
               2}.
  {label,390}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,392},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_ge,{f,391},[{tr,{x,2},{t_integer,{1,3}}},{integer,2}]}.
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
    {call_only,2,{f,390}}. % '-strict_generators/1-lbc$^3/2-3-'/2
  {label,391}.
    {call_only,2,{f,390}}. % '-strict_generators/1-lbc$^3/2-3-'/2
  {label,392}.
    {move,{x,1},{x,0}}.
    return.


{function, '-strict_generators/1-lbc$^2/2-2-', 2, 394}.
  {label,393}.
    {line,[{location,"bs_bincomp_SUITE.erl",687}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^2/2-2-'},
               2}.
  {label,394}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,395},[{x,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call_ext,1,{extfunc,erts_internal,mc_refill,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,394},1}. % '-strict_generators/1-lbc$^2/2-2-'/2
  {label,395}.
    {test,is_tuple,{f,396},[{x,0}]}.
    {test,test_arity,{f,397},[{x,0},3]}.
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
    {call_only,2,{f,394}}. % '-strict_generators/1-lbc$^2/2-2-'/2
  {label,396}.
    {test,is_eq_exact,{f,397},[{x,0},{atom,none}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,397}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_generators/1-lbc$^1/2-1-', 2, 399}.
  {label,398}.
    {line,[{location,"bs_bincomp_SUITE.erl",686}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^1/2-1-'},
               2}.
  {label,399}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,400},
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
    {call_only,2,{f,399}}. % '-strict_generators/1-lbc$^1/2-1-'/2
  {label,400}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test,is_eq_exact,
          {f,401},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,401}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmatch},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-strict_generators/1-lbc$^0/2-0-', 2, 403}.
  {label,402}.
    {line,[{location,"bs_bincomp_SUITE.erl",685}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-strict_generators/1-lbc$^0/2-0-'},
               2}.
  {label,403}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,404},[{x,0}]}.
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
    {call_only,2,{f,403}}. % '-strict_generators/1-lbc$^0/2-0-'/2
  {label,404}.
    {move,{x,1},{x,0}}.
    return.


{function, '-grab_bag_gh_8617/1-lc$^0/1-0-', 1, 406}.
  {label,405}.
    {line,[{location,"bs_bincomp_SUITE.erl",680}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-grab_bag_gh_8617/1-lc$^0/1-0-'},
               1}.
  {label,406}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,408},{x,0},{commands,[{ensure_at_least,0,1},{skip,0}]}}.
    {bif,self,{f,0},[],{x,2}}.
    {test,bs_skip_bits2,
          {f,408},
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[680,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",681}]}.
    {call,1,{f,339}}. % id/1
    {test,is_pid,{f,407},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",680}]}.
    {call,1,{f,406}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,0}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,407}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,406},1}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
  {label,408}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,409},{x,0},{commands,[{ensure_at_least,1,1},{skip,1}]}}.
    {call_only,1,{f,406}}. % '-grab_bag_gh_8617/1-lc$^0/1-0-'/1
  {label,409}.
    {move,nil,{x,0}}.
    return.


{function, '-grab_bag/1-lbc$^0/2-0-', 2, 411}.
  {label,410}.
    {line,[{location,"bs_bincomp_SUITE.erl",664}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-grab_bag/1-lbc$^0/2-0-'},2}.
  {label,411}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_multiple_segments_2/1-lc$^1/1-1-', 1, 413}.
  {label,412}.
    {line,[{location,"bs_bincomp_SUITE.erl",654}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_2/1-lc$^1/1-1-'},
               1}.
  {label,413}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,414},
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
    {call,1,{f,413}}. % '-do_multiple_segments_2/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,414}.
    {move,nil,{x,0}}.
    return.


{function, '-do_multiple_segments_2/1-lbc$^0/2-0-', 2, 416}.
  {label,415}.
    {line,[{location,"bs_bincomp_SUITE.erl",653}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_2/1-lbc$^0/2-0-'},
               2}.
  {label,416}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,417},
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
    {call_only,2,{f,416}}. % '-do_multiple_segments_2/1-lbc$^0/2-0-'/2
  {label,417}.
    {move,{x,1},{x,0}}.
    return.


{function, '-do_multiple_segments_1/1-lc$^1/1-1-', 1, 419}.
  {label,418}.
    {line,[{location,"bs_bincomp_SUITE.erl",648}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_1/1-lc$^1/1-1-'},
               1}.
  {label,419}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,421},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,420},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,419}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,420}.
    {call_only,1,{f,419}}. % '-do_multiple_segments_1/1-lc$^1/1-1-'/1
  {label,421}.
    {move,nil,{x,0}}.
    return.


{function, '-do_multiple_segments_1/1-lbc$^0/2-0-', 2, 423}.
  {label,422}.
    {line,[{location,"bs_bincomp_SUITE.erl",647}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_multiple_segments_1/1-lbc$^0/2-0-'},
               2}.
  {label,423}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,425},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,
          {f,424},
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
    {call_only,2,{f,423}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,424}.
    {call_only,2,{f,423}}. % '-do_multiple_segments_1/1-lbc$^0/2-0-'/2
  {label,425}.
    {move,{x,1},{x,0}}.
    return.


{function, '-matched_out_size/1-lc$^1/1-1-', 1, 427}.
  {label,426}.
    {line,[{location,"bs_bincomp_SUITE.erl",642}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-matched_out_size/1-lc$^1/1-1-'},
               1}.
  {label,427}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,428},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,428},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[642,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,427}}. % '-matched_out_size/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,428}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,429},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_skip_bits2,
          {f,429},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[642,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,427}}. % '-matched_out_size/1-lc$^1/1-1-'/1
  {label,429}.
    {move,nil,{x,0}}.
    return.


{function, '-matched_out_size/1-lbc$^0/2-0-', 2, 431}.
  {label,430}.
    {line,[{location,"bs_bincomp_SUITE.erl",641}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-matched_out_size/1-lbc$^0/2-0-'},
               2}.
  {label,431}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,432},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,432},
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
    {call_only,2,{f,431}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,432}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,433},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_skip_bits2,
          {f,433},
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[641,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,2,{f,431}}. % '-matched_out_size/1-lbc$^0/2-0-'/2
  {label,433}.
    {move,{x,1},{x,0}}.
    return.


{function, '-zero_pattern/1-lbc$^0/2-0-', 2, 435}.
  {label,434}.
    {line,[{location,"bs_bincomp_SUITE.erl",605}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-zero_pattern/1-lbc$^0/2-0-'},2}.
  {label,435}.
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
    {call_only,2,{f,435}}. % '-zero_pattern/1-lbc$^0/2-0-'/2


{function, '-encode_chars_compact_map/3-lbc$^0/2-0-', 5, 437}.
  {label,436}.
    {line,[{location,"bs_bincomp_SUITE.erl",578}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-encode_chars_compact_map/3-lbc$^0/2-0-'},
               5}.
  {label,437}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,72}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,438},[{x,0}]}.
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
    {call_last,5,{f,437},5}. % '-encode_chars_compact_map/3-lbc$^0/2-0-'/5
  {label,438}.
    {move,{x,1},{x,0}}.
    return.


{function, '-hstring_to_bitstring/1-lbc$^0/2-0-', 2, 440}.
  {label,439}.
    {line,[{location,"bs_bincomp_SUITE.erl",572}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-hstring_to_bitstring/1-lbc$^0/2-0-'},
               2}.
  {label,440}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{51,65}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,4,true}}]}}.
    {test,is_nonempty_list,{f,441},[{x,0}]}.
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
    {call_last,2,{f,440},2}. % '-hstring_to_bitstring/1-lbc$^0/2-0-'/2
  {label,441}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^16/2-16-', 2, 443}.
  {label,442}.
    {line,[{location,"bs_bincomp_SUITE.erl",567}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^16/2-16-'},
               2}.
  {label,443}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,444},[{x,0}]}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {get_list,{x,0},{x,2},{x,0}}.
    {make_fun3,{f,446},0,0,{x,2},{list,[{x,2}]}}.
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
    {call_only,2,{f,443}}. % '-general_expressions/1-lbc$^16/2-16-'/2
  {label,444}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-fun-17-', 1, 446}.
  {label,445}.
    {line,[{location,"bs_bincomp_SUITE.erl",567}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-fun-17-'},
               1}.
  {label,446}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,3}}}]}}.
    return.


{function, '-general_expressions/1-lbc$^15/2-15-', 2, 448}.
  {label,447}.
    {line,[{location,"bs_bincomp_SUITE.erl",566}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^15/2-15-'},
               2}.
  {label,448}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^14/2-14-', 2, 450}.
  {label,449}.
    {line,[{location,"bs_bincomp_SUITE.erl",565}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^14/2-14-'},
               2}.
  {label,450}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^13/2-13-', 2, 452}.
  {label,451}.
    {line,[{location,"bs_bincomp_SUITE.erl",564}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^13/2-13-'},
               2}.
  {label,452}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^12/2-12-', 2, 454}.
  {label,453}.
    {line,[{location,"bs_bincomp_SUITE.erl",563}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^12/2-12-'},
               2}.
  {label,454}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^11/2-11-', 2, 456}.
  {label,455}.
    {line,[{location,"bs_bincomp_SUITE.erl",562}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^11/2-11-'},
               2}.
  {label,456}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{atom,badarg},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-general_expressions/1-lbc$^10/2-10-', 2, 458}.
  {label,457}.
    {line,[{location,"bs_bincomp_SUITE.erl",550}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^10/2-10-'},
               2}.
  {label,458}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,461},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'div',{f,459},3,[{integer,10},{tr,{x,2},{t_integer,{0,3}}}],{x,2}}.
    {line,[{location,"bs_bincomp_SUITE.erl",551}]}.
    {bs_create_bin,{f,459},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{3,10}}},
                          {integer,8}]}}.
    {jump,{f,460}}.
  {label,459}.
    {move,{literal,<<>>},{x,2}}.
  {label,460}.
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
    {call_only,2,{f,458}}. % '-general_expressions/1-lbc$^10/2-10-'/2
  {label,461}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^9/2-9-', 2, 463}.
  {label,462}.
    {line,[{location,"bs_bincomp_SUITE.erl",549}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^9/2-9-'},
               2}.
  {label,463}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,466},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_tl,{x,0},{y,0}}.
  {label,464}.
    {loop_rec,{f,465},{x,0}}.
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
    {call_last,2,{f,463},2}. % '-general_expressions/1-lbc$^9/2-9-'/2
  {label,465}.
    {wait,{f,464}}.
  {label,466}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^8/2-8-', 2, 468}.
  {label,467}.
    {line,[{location,"bs_bincomp_SUITE.erl",544}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^8/2-8-'},
               2}.
  {label,468}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,471},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",545}]}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{1,4}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,469},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
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
    {jump,{f,470}}.
  {label,469}.
    {line,[{location,"bs_bincomp_SUITE.erl",546}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,4}}},
                          {integer,8}]}}.
  {label,470}.
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
    {call_only,2,{f,468}}. % '-general_expressions/1-lbc$^8/2-8-'/2
  {label,471}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^6/2-6-', 2, 473}.
  {label,472}.
    {line,[{location,"bs_bincomp_SUITE.erl",542}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^6/2-6-'},
               2}.
  {label,473}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,474},[{x,0}]}.
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
    {call,2,{f,476}}. % '-general_expressions/1-lbc$^7/2-7-'/2
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
    {call_last,2,{f,473},2}. % '-general_expressions/1-lbc$^6/2-6-'/2
  {label,474}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^7/2-7-', 2, 476}.
  {label,475}.
    {line,[{location,"bs_bincomp_SUITE.erl",542}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^7/2-7-'},
               2}.
  {label,476}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{2,'+inf'}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,477},[{x,0}]}.
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
    {call,1,{f,339}}. % id/1
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
    {call_last,2,{f,476},2}. % '-general_expressions/1-lbc$^7/2-7-'/2
  {label,477}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^5/2-5-', 2, 479}.
  {label,478}.
    {line,[{location,"bs_bincomp_SUITE.erl",538}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^5/2-5-'},
               2}.
  {label,479}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,5}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,482},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{1,5}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,480},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",539}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{1,5}}},
                          {integer,8}]}}.
    {jump,{f,481}}.
  {label,480}.
    {move,{literal,<<>>},{x,2}}.
  {label,481}.
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
    {call_only,2,{f,479}}. % '-general_expressions/1-lbc$^5/2-5-'/2
  {label,482}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^4/2-4-', 2, 484}.
  {label,483}.
    {line,[{location,"bs_bincomp_SUITE.erl",537}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^4/2-4-'},
               2}.
  {label,484}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,485},[{x,0}]}.
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
    {call,1,{f,339}}. % id/1
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
    {call_last,2,{f,484},2}. % '-general_expressions/1-lbc$^4/2-4-'/2
  {label,485}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^3/2-3-', 2, 487}.
  {label,486}.
    {line,[{location,"bs_bincomp_SUITE.erl",536}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^3/2-3-'},
               2}.
  {label,487}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,488},[{x,0}]}.
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
    {call_only,2,{f,487}}. % '-general_expressions/1-lbc$^3/2-3-'/2
  {label,488}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^2/2-2-', 2, 490}.
  {label,489}.
    {line,[{location,"bs_bincomp_SUITE.erl",532}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^2/2-2-'},
               2}.
  {label,490}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,491},
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
    {call,1,{f,339}}. % id/1
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
    {call_last,2,{f,490},2}. % '-general_expressions/1-lbc$^2/2-2-'/2
  {label,491}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^1/2-1-', 2, 493}.
  {label,492}.
    {line,[{location,"bs_bincomp_SUITE.erl",531}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^1/2-1-'},
               2}.
  {label,493}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,494},[{x,0}]}.
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
    {call_only,2,{f,493}}. % '-general_expressions/1-lbc$^1/2-1-'/2
  {label,494}.
    {move,{x,1},{x,0}}.
    return.


{function, '-general_expressions/1-lbc$^0/2-0-', 2, 496}.
  {label,495}.
    {line,[{location,"bs_bincomp_SUITE.erl",530}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-general_expressions/1-lbc$^0/2-0-'},
               2}.
  {label,496}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,497},[{x,0}]}.
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
    {call_only,2,{f,496}}. % '-general_expressions/1-lbc$^0/2-0-'/2
  {label,497}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-lbc$^33/2-18-', 2, 499}.
  {label,498}.
    {line,[{location,"bs_bincomp_SUITE.erl",519}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^33/2-18-'},2}.
  {label,499}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,{1,2,3}}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-32-', 1, 501}.
  {label,500}.
    {line,[{location,"bs_bincomp_SUITE.erl",513}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-32-'},1}.
  {label,501}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",514}]}.
    {call,1,{f,339}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,503}}. % '-sizes/1-lbc$^31/2-17-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,331},0}. % cs_default/1


{function, '-sizes/1-lbc$^31/2-17-', 2, 503}.
  {label,502}.
    {line,[{location,"bs_bincomp_SUITE.erl",514}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^31/2-17-'},2}.
  {label,503}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,505},2,[{x,0}],{x,2}}.
    {bs_match,{f,504},
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
    {call_only,2,{f,503}}. % '-sizes/1-lbc$^31/2-17-'/2
  {label,504}.
    {move,{x,1},{x,0}}.
    return.
  {label,505}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-30-', 2, 507}.
  {label,506}.
    {line,[{location,"bs_bincomp_SUITE.erl",507}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-30-'},2}.
  {label,507}.
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
    {call,3,{f,509}}. % '-sizes/1-lbc$^28/2-15-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {call_last,1,{f,331},0}. % cs_default/1


{function, '-sizes/1-lbc$^28/2-15-', 3, 509}.
  {label,508}.
    {line,[{location,"bs_bincomp_SUITE.erl",508}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^28/2-15-'},3}.
  {label,509}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,510},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,513}}. % '-sizes/1-lbc$^29/2-16-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,509},2}. % '-sizes/1-lbc$^28/2-15-'/3
  {label,510}.
    {test,is_nil,{f,511},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,511}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^29/2-16-', 3, 513}.
  {label,512}.
    {line,[{location,"bs_bincomp_SUITE.erl",508}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^29/2-16-'},3}.
  {label,513}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,bs_start_match3,{f,515},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,514},
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
    {call_only,3,{f,513}}. % '-sizes/1-lbc$^29/2-16-'/3
  {label,514}.
    {move,{x,1},{x,0}}.
    return.
  {label,515}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-lbc$^27/2-14-', 2, 517}.
  {label,516}.
    {line,[{location,"bs_bincomp_SUITE.erl",505}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^27/2-14-'},2}.
  {label,517}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,518},
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
    {call_only,2,{f,517}}. % '-sizes/1-lbc$^27/2-14-'/2
  {label,518}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-lbc$^26/2-13-', 2, 520}.
  {label,519}.
    {line,[{location,"bs_bincomp_SUITE.erl",504}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^26/2-13-'},2}.
  {label,520}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,521},[{x,0}]}.
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
    {call_only,2,{f,520}}. % '-sizes/1-lbc$^26/2-13-'/2
  {label,521}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-fun-25-', 1, 523}.
  {label,522}.
    {line,[{location,"bs_bincomp_SUITE.erl",494}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-25-'},1}.
  {label,523}.
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
    {call,2,{f,525}}. % '-sizes/1-lbc$^24/2-12-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^24/2-12-', 2, 525}.
  {label,524}.
    {line,[{location,"bs_bincomp_SUITE.erl",495}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^24/2-12-'},2}.
  {label,525}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,526},
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
    {call_only,2,{f,525}}. % '-sizes/1-lbc$^24/2-12-'/2
  {label,526}.
    {move,{x,1},{x,0}}.
    return.


{function, '-sizes/1-fun-23-', 3, 528}.
  {label,527}.
    {line,[{location,"bs_bincomp_SUITE.erl",484}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-23-'},3}.
  {label,528}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {line,[{location,"bs_bincomp_SUITE.erl",485}]}.
    {call,1,{f,339}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,529},1,[{x,0}],{x,0}}.
    {gc_bif,'div',
            {f,529},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{y,2}],
            {x,0}}.
    {gc_bif,'*',
            {f,529},
            1,
            [{tr,{x,0},{t_integer,{-288230376151711743,288230376151711743}}},
             {y,1}],
            {x,0}}.
    {gc_bif,'+',{f,529},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,529},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,530}}.
  {label,529}.
    {move,{integer,256},{x,0}}.
  {label,530}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,3,0}.
    {call,4,{f,532}}. % '-sizes/1-lbc$^22/2-11-'/4
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^22/2-11-', 4, 532}.
  {label,531}.
    {line,[{location,"bs_bincomp_SUITE.erl",485}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^22/2-11-'},4}.
  {label,532}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,bs_start_match3,{f,534},4,[{x,0}],{x,4}}.
    {test,bs_get_integer2,
          {f,533},
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
    {call_only,4,{f,532}}. % '-sizes/1-lbc$^22/2-11-'/4
  {label,533}.
    {move,{x,1},{x,0}}.
    return.
  {label,534}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-21-', 1, 536}.
  {label,535}.
    {line,[{location,"bs_bincomp_SUITE.erl",472}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-21-'},1}.
  {label,536}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",473}]}.
    {call,1,{f,339}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,537},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,4}],
            {x,0}}.
    {jump,{f,538}}.
  {label,537}.
    {move,{integer,256},{x,0}}.
  {label,538}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",473}]}.
    {call,2,{f,540}}. % '-sizes/1-lbc$^20/2-10-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^20/2-10-', 2, 540}.
  {label,539}.
    {line,[{location,"bs_bincomp_SUITE.erl",473}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^20/2-10-'},2}.
  {label,540}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,542},2,[{x,0}],{x,2}}.
    {bs_match,{f,541},
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
    {call_only,2,{f,540}}. % '-sizes/1-lbc$^20/2-10-'/2
  {label,541}.
    {move,{x,1},{x,0}}.
    return.
  {label,542}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-19-', 1, 544}.
  {label,543}.
    {line,[{location,"bs_bincomp_SUITE.erl",465}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-19-'},1}.
  {label,544}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",466}]}.
    {call,1,{f,339}}. % id/1
    {move,{x,0},{y,0}}.
    {gc_bif,bit_size,{f,545},1,[{x,0}],{x,0}}.
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
    {jump,{f,546}}.
  {label,545}.
    {move,{integer,256},{x,0}}.
  {label,546}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",466}]}.
    {call,2,{f,548}}. % '-sizes/1-lbc$^18/2-9-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^18/2-9-', 2, 548}.
  {label,547}.
    {line,[{location,"bs_bincomp_SUITE.erl",466}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^18/2-9-'},2}.
  {label,548}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,bs_start_match3,{f,550},2,[{x,0}],{x,2}}.
    {bs_match,{f,549},
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
    {call_only,2,{f,548}}. % '-sizes/1-lbc$^18/2-9-'/2
  {label,549}.
    {move,{x,1},{x,0}}.
    return.
  {label,550}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-17-', 1, 552}.
  {label,551}.
    {line,[{location,"bs_bincomp_SUITE.erl",457}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-17-'},1}.
  {label,552}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",458}]}.
    {call,2,{f,554}}. % '-sizes/1-lbc$^16/2-8-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,331},0}. % cs_default/1


{function, '-sizes/1-lbc$^16/2-8-', 2, 554}.
  {label,553}.
    {line,[{location,"bs_bincomp_SUITE.erl",458}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^16/2-8-'},2}.
  {label,554}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,555},[{x,0}]}.
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
    {call_only,2,{f,554}}. % '-sizes/1-lbc$^16/2-8-'/2
  {label,555}.
    {test,is_nil,{f,556},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,556}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-15-', 2, 558}.
  {label,557}.
    {line,[{location,"bs_bincomp_SUITE.erl",451}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-15-'},2}.
  {label,558}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,559},2,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,559},2,[{x,1},{integer,8}],{x,1}}.
    {gc_bif,'*',
            {f,559},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,559},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,559},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,560}}.
  {label,559}.
    {move,{integer,256},{x,0}}.
  {label,560}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",452}]}.
    {call,3,{f,562}}. % '-sizes/1-lbc$^14/2-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^14/2-7-', 3, 562}.
  {label,561}.
    {line,[{location,"bs_bincomp_SUITE.erl",452}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^14/2-7-'},3}.
  {label,562}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,563},[{x,0}]}.
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
    {call_only,3,{f,562}}. % '-sizes/1-lbc$^14/2-7-'/3
  {label,563}.
    {test,is_nil,{f,564},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,564}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-13-', 4, 566}.
  {label,565}.
    {line,[{location,"bs_bincomp_SUITE.erl",444}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-13-'},4}.
  {label,566}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,567},4,[{x,0}],{x,0}}.
    {gc_bif,'+',{f,567},4,[{x,1},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,567},4,[{x,2},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,567},
            4,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'+',{f,567},4,[{tr,{x,1},{t_number,any}},{integer,24}],{x,1}}.
    {gc_bif,'*',{f,567},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,567},
            3,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'+',{f,567},2,[{tr,{x,1},{t_number,any}},{integer,24}],{x,1}}.
    {gc_bif,'*',
            {f,567},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,567},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,567},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,568}}.
  {label,567}.
    {move,{integer,256},{x,0}}.
  {label,568}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",445}]}.
    {call,5,{f,570}}. % '-sizes/1-lbc$^12/2-6-'/5
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^12/2-6-', 5, 570}.
  {label,569}.
    {line,[{location,"bs_bincomp_SUITE.erl",445}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^12/2-6-'},5}.
  {label,570}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,571},[{x,0}]}.
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
    {call_only,5,{f,570}}. % '-sizes/1-lbc$^12/2-6-'/5
  {label,571}.
    {test,is_nil,{f,572},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,572}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",446}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-11-', 4, 574}.
  {label,573}.
    {line,[{location,"bs_bincomp_SUITE.erl",438}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-11-'},4}.
  {label,574}.
    {allocate,4,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{y,3}}.
    {gc_bif,length,{f,575},4,[{x,0}],{x,0}}.
    {gc_bif,'*',{f,575},4,[{x,2},{integer,8}],{x,1}}.
    {gc_bif,'+',{f,575},4,[{y,1},{tr,{x,1},{t_number,any}}],{x,1}}.
    {gc_bif,'*',{f,575},4,[{x,3},{integer,8}],{x,2}}.
    {gc_bif,'+',
            {f,575},
            3,
            [{tr,{x,1},{t_number,any}},{tr,{x,2},{t_number,any}}],
            {x,1}}.
    {gc_bif,'*',
            {f,575},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},
             {tr,{x,1},{t_number,any}}],
            {x,0}}.
    {gc_bif,'+',{f,575},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,575},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,576}}.
  {label,575}.
    {move,{integer,256},{x,0}}.
  {label,576}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,4,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",439}]}.
    {call,5,{f,578}}. % '-sizes/1-lbc$^10/2-5-'/5
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^10/2-5-', 5, 578}.
  {label,577}.
    {line,[{location,"bs_bincomp_SUITE.erl",439}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^10/2-5-'},5}.
  {label,578}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,579},[{x,0}]}.
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
    {call_only,5,{f,578}}. % '-sizes/1-lbc$^10/2-5-'/5
  {label,579}.
    {test,is_nil,{f,580},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,580}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-9-', 2, 582}.
  {label,581}.
    {line,[{location,"bs_bincomp_SUITE.erl",431}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-9-'},2}.
  {label,582}.
    {allocate,2,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {gc_bif,length,{f,583},2,[{x,0}],{x,0}}.
    {gc_bif,'*',
            {f,583},
            2,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{x,1}],
            {x,0}}.
    {gc_bif,'+',{f,583},1,[{tr,{x,0},{t_number,any}},{integer,7}],{x,0}}.
    {gc_bif,'bsr',{f,583},1,[{tr,{x,0},{t_number,any}},{integer,3}],{x,0}}.
    {jump,{f,584}}.
  {label,583}.
    {move,{integer,256},{x,0}}.
  {label,584}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",432}]}.
    {call,3,{f,586}}. % '-sizes/1-lbc$^8/2-4-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^8/2-4-', 3, 586}.
  {label,585}.
    {line,[{location,"bs_bincomp_SUITE.erl",432}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^8/2-4-'},3}.
  {label,586}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,587},[{x,0}]}.
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
    {call_only,3,{f,586}}. % '-sizes/1-lbc$^8/2-4-'/3
  {label,587}.
    {test,is_nil,{f,588},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,588}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-7-', 1, 590}.
  {label,589}.
    {line,[{location,"bs_bincomp_SUITE.erl",424}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-7-'},1}.
  {label,590}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,591},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,3}],
            {x,0}}.
    {gc_bif,'+',
            {f,591},
            1,
            [{tr,{x,0},{t_integer,{0,864691128455135229}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{7,864691128455135236}}},{integer,3}],
            {x,0}}.
    {jump,{f,592}}.
  {label,591}.
    {move,{integer,256},{x,0}}.
  {label,592}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",425}]}.
    {call,2,{f,594}}. % '-sizes/1-lbc$^6/2-3-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^6/2-3-', 2, 594}.
  {label,593}.
    {line,[{location,"bs_bincomp_SUITE.erl",425}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^6/2-3-'},2}.
  {label,594}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,595},[{x,0}]}.
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
    {call_only,2,{f,594}}. % '-sizes/1-lbc$^6/2-3-'/2
  {label,595}.
    {test,is_nil,{f,596},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,596}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-5-', 1, 598}.
  {label,597}.
    {line,[{location,"bs_bincomp_SUITE.erl",415}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-5-'},1}.
  {label,598}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,599},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,4}],
            {x,0}}.
    {gc_bif,'+',
            {f,599},
            1,
            [{tr,{x,0},{t_integer,{0,1152921504606846972}}},{integer,7}],
            {x,0}}.
    {gc_bif,'bsr',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{7,1152921504606846979}}},{integer,3}],
            {x,0}}.
    {jump,{f,600}}.
  {label,599}.
    {move,{integer,256},{x,0}}.
  {label,600}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",416}]}.
    {call,2,{f,602}}. % '-sizes/1-lbc$^4/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^4/2-2-', 2, 602}.
  {label,601}.
    {line,[{location,"bs_bincomp_SUITE.erl",416}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^4/2-2-'},2}.
  {label,602}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,4,true}}]}}.
    {test,is_nonempty_list,{f,603},[{x,0}]}.
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
    {call_only,2,{f,602}}. % '-sizes/1-lbc$^4/2-2-'/2
  {label,603}.
    {test,is_nil,{f,604},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,604}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-3-', 1, 606}.
  {label,605}.
    {line,[{location,"bs_bincomp_SUITE.erl",407}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-3-'},1}.
  {label,606}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,607},1,[{x,0}],{x,0}}.
    {line,[]}.
    {gc_bif,'*',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,2}],
            {x,0}}.
    {jump,{f,608}}.
  {label,607}.
    {move,{integer,256},{x,0}}.
  {label,608}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",408}]}.
    {call,2,{f,610}}. % '-sizes/1-lbc$^2/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^2/2-1-', 2, 610}.
  {label,609}.
    {line,[{location,"bs_bincomp_SUITE.erl",408}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^2/2-1-'},2}.
  {label,610}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,611},[{x,0}]}.
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
    {call_only,2,{f,610}}. % '-sizes/1-lbc$^2/2-1-'/2
  {label,611}.
    {test,is_nil,{f,612},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,612}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-sizes/1-fun-1-', 1, 614}.
  {label,613}.
    {line,[{location,"bs_bincomp_SUITE.erl",399}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-fun-1-'},1}.
  {label,614}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {gc_bif,length,{f,615},1,[{x,0}],{x,0}}.
    {jump,{f,616}}.
  {label,615}.
    {move,{integer,256},{x,0}}.
  {label,616}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_bincomp_SUITE.erl",400}]}.
    {call,2,{f,618}}. % '-sizes/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call_last,1,{f,328},0}. % cs/1


{function, '-sizes/1-lbc$^0/2-0-', 2, 618}.
  {label,617}.
    {line,[{location,"bs_bincomp_SUITE.erl",400}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-sizes/1-lbc$^0/2-0-'},2}.
  {label,618}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,619},[{x,0}]}.
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
    {call_only,2,{f,618}}. % '-sizes/1-lbc$^0/2-0-'/2
  {label,619}.
    {test,is_nil,{f,620},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,620}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch_1/2-lbc$^0/2-0-', 3, 622}.
  {label,621}.
    {line,[{location,"bs_bincomp_SUITE.erl",395}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch_1/2-lbc$^0/2-0-'},3}.
  {label,622}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[bad]},
                                   none,
                                   {t_integer,{8,8}},
                                   none,none}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,623},
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
    {call_only,3,{f,622}}. % '-nomatch_1/2-lbc$^0/2-0-'/3
  {label,623}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^12/2-12-', 2, 625}.
  {label,624}.
    {line,[{location,"bs_bincomp_SUITE.erl",390}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^12/2-12-'},2}.
  {label,625}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{literal,{bad_generator,false}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^10/2-10-', 2, 627}.
  {label,626}.
    {line,[{location,"bs_bincomp_SUITE.erl",388}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^10/2-10-'},2}.
  {label,627}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^8/2-8-', 2, 629}.
  {label,628}.
    {line,[{location,"bs_bincomp_SUITE.erl",387}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^8/2-8-'},2}.
  {label,629}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^7/2-7-', 2, 631}.
  {label,630}.
    {line,[{location,"bs_bincomp_SUITE.erl",382}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^7/2-7-'},2}.
  {label,631}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,632},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {bs_create_bin,{f,0},
                   0,2,256,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,256,true}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {call_only,2,{f,631}}. % '-nomatch/1-lbc$^7/2-7-'/2
  {label,632}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^6/2-6-', 2, 634}.
  {label,633}.
    {line,[{location,"bs_bincomp_SUITE.erl",377}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^6/2-6-'},2}.
  {label,634}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,635},
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
    {call_only,2,{f,634}}. % '-nomatch/1-lbc$^6/2-6-'/2
  {label,635}.
    {bs_match,{f,636},{x,0},{commands,[{ensure_at_least,32,1},{skip,32}]}}.
    {call_only,2,{f,634}}. % '-nomatch/1-lbc$^6/2-6-'/2
  {label,636}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lbc$^5/2-5-', 2, 638}.
  {label,637}.
    {line,[{location,"bs_bincomp_SUITE.erl",374}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^5/2-5-'},2}.
  {label,638}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,641},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,639},
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
    {call_only,2,{f,638}}. % '-nomatch/1-lbc$^5/2-5-'/2
  {label,639}.
    {bs_match,{f,640},{x,2},{commands,[{ensure_at_least,1,1},{skip,1}]}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,638}}. % '-nomatch/1-lbc$^5/2-5-'/2
  {label,640}.
    {move,{x,1},{x,0}}.
    return.
  {label,641}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^4/2-4-', 2, 643}.
  {label,642}.
    {line,[{location,"bs_bincomp_SUITE.erl",372}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^4/2-4-'},2}.
  {label,643}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_bitstr,{f,644},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,644}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lbc$^3/2-3-', 2, 646}.
  {label,645}.
    {line,[{location,"bs_bincomp_SUITE.erl",371}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^3/2-3-'},2}.
  {label,646}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-nomatch/1-lc$^2/1-2-', 1, 648}.
  {label,647}.
    {line,[{location,"bs_bincomp_SUITE.erl",370}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lc$^2/1-2-'},1}.
  {label,648}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,is_bitstr,{f,649},[{x,0}]}.
    {move,nil,{x,0}}.
    return.
  {label,649}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-nomatch/1-lc$^1/1-1-', 1, 651}.
  {label,650}.
    {line,[{location,"bs_bincomp_SUITE.erl",369}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lc$^1/1-1-'},1}.
  {label,651}.
    {move,nil,{x,0}}.
    return.


{function, '-nomatch/1-lbc$^0/2-0-', 2, 653}.
  {label,652}.
    {line,[{location,"bs_bincomp_SUITE.erl",368}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-nomatch/1-lbc$^0/2-0-'},2}.
  {label,653}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,654},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,2,{f,653}}. % '-nomatch/1-lbc$^0/2-0-'/2
  {label,654}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_strange/2-lbc$^0/2-1-', 2, 656}.
  {label,655}.
    {line,[{location,"bs_bincomp_SUITE.erl",355}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_strange/2-lbc$^0/2-1-'},
               2}.
  {label,656}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,657},
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
    {call_only,2,{f,656}}. % '-coverage_strange/2-lbc$^0/2-1-'/2
  {label,657}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_strange/2-lbc$^1/2-0-', 2, 659}.
  {label,658}.
    {line,[{location,"bs_bincomp_SUITE.erl",354}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_strange/2-lbc$^1/2-0-'},
               2}.
  {label,659}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,660},
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
    {call_only,2,{f,659}}. % '-coverage_strange/2-lbc$^1/2-0-'/2
  {label,660}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_trimmer/1-lbc$^0/2-0-', 2, 662}.
  {label,661}.
    {line,[{location,"bs_bincomp_SUITE.erl",346}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_trimmer/1-lbc$^0/2-0-'},
               2}.
  {label,662}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{19,777}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,663},[{x,0}]}.
    {allocate_heap,4,4,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {put_tuple2,{x,0},{list,[{y,2},{y,2},{y,2}]}}.
    {call,1,{f,339}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,664},[{x,0}]}.
    {test,test_arity,{f,664},[{x,0},3]}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,339}}. % id/1
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
    {call_last,2,{f,662},2}. % '-coverage_trimmer/1-lbc$^0/2-0-'/2
  {label,663}.
    {move,{x,1},{x,0}}.
    return.
  {label,664}.
    {badmatch,{y,0}}.


{function, '-coverage_lightfv/3-lbc$^0/2-0-', 2, 666}.
  {label,665}.
    {line,[{location,"bs_bincomp_SUITE.erl",339}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_lightfv/3-lbc$^0/2-0-'},
               2}.
  {label,666}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,{-3555.0,40.0}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,64,true}}]}}.
    {test,is_nonempty_list,{f,667},[{x,0}]}.
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
    {call_only,2,{f,666}}. % '-coverage_lightfv/3-lbc$^0/2-0-'/2
  {label,667}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_materialiv/3-lbc$^0/2-0-', 2, 669}.
  {label,668}.
    {line,[{location,"bs_bincomp_SUITE.erl",334}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-coverage_materialiv/3-lbc$^0/2-0-'},
               2}.
  {label,669}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1328,777134}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,670},[{x,0}]}.
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
    {call_only,2,{f,669}}. % '-coverage_materialiv/3-lbc$^0/2-0-'/2
  {label,670}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^8/2-8-', 2, 672}.
  {label,671}.
    {line,[{location,"bs_bincomp_SUITE.erl",315}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^8/2-8-'},2}.
  {label,672}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,43}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,674},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_eq_exact,{f,673},[{tr,{x,2},{t_integer,{1,43}}},{integer,42}]}.
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
    {call_only,2,{f,672}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,673}.
    {call_only,2,{f,672}}. % '-filters/1-lbc$^8/2-8-'/2
  {label,674}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^7/2-7-', 2, 676}.
  {label,675}.
    {line,[{location,"bs_bincomp_SUITE.erl",311}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^7/2-7-'},2}.
  {label,676}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,678},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}}]}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,is_eq_exact,{f,677},[{tr,{x,2},{t_integer,{0,1}}},{integer,0}]}.
    {bs_match,{f,677},
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
    {call_only,2,{f,676}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,677}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,678},{x,0},{commands,[{ensure_at_least,7,1},{skip,7}]}}.
    {call_only,2,{f,676}}. % '-filters/1-lbc$^7/2-7-'/2
  {label,678}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^6/2-6-', 2, 680}.
  {label,679}.
    {line,[{location,"bs_bincomp_SUITE.erl",308}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^6/2-6-'},2}.
  {label,680}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,682},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {bs_match,{f,681},
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
    {call_only,2,{f,680}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,681}.
    {call_only,2,{f,680}}. % '-filters/1-lbc$^6/2-6-'/2
  {label,682}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^5/2-5-', 2, 684}.
  {label,683}.
    {line,[{location,"bs_bincomp_SUITE.erl",302}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^5/2-5-'},2}.
  {label,684}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_list,{t_atom,[a,x,y,z]},nil},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,686},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nonempty_list,{f,685},[{x,2}]}.
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
  {label,685}.
    {call_only,2,{f,684}}. % '-filters/1-lbc$^5/2-5-'/2
  {label,686}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^4/2-4-', 2, 688}.
  {label,687}.
    {line,[{location,"bs_bincomp_SUITE.erl",298}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^4/2-4-'},2}.
  {label,688}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,691},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",300}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ne_exact,{f,689},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",301}]}.
    {gc_bif,'rem',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,689},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
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
    {jump,{f,690}}.
  {label,689}.
    {move,{y,2},{x,1}}.
  {label,690}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,688},3}. % '-filters/1-lbc$^4/2-4-'/2
  {label,691}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^3/2-3-', 2, 693}.
  {label,692}.
    {line,[{location,"bs_bincomp_SUITE.erl",294}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^3/2-3-'},2}.
  {label,693}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,696},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",296}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,694},[{x,0},{atom,true}]}.
    {line,[{location,"bs_bincomp_SUITE.erl",297}]}.
    {gc_bif,'rem',{f,0},0,[{tr,{y,1},{t_integer,{65,71}}},{integer,2}],{x,0}}.
    {test,is_eq_exact,{f,694},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
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
    {jump,{f,695}}.
  {label,694}.
    {move,{y,2},{x,1}}.
  {label,695}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,693},3}. % '-filters/1-lbc$^3/2-3-'/2
  {label,696}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^2/2-2-', 2, 698}.
  {label,697}.
    {line,[{location,"bs_bincomp_SUITE.erl",291}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^2/2-2-'},2}.
  {label,698}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,701},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,69},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",293}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,699},[{x,0},{atom,true}]}.
    {move,{y,2},{x,1}}.
    {jump,{f,700}}.
  {label,699}.
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
  {label,700}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,698},3}. % '-filters/1-lbc$^2/2-2-'/2
  {label,701}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^1/2-1-', 2, 703}.
  {label,702}.
    {line,[{location,"bs_bincomp_SUITE.erl",288}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^1/2-1-'},2}.
  {label,703}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,706},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{integer,68},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",290}]}.
    {call,2,{f,120}}. % is_less_than/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,704},[{x,0},{atom,true}]}.
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
    {jump,{f,705}}.
  {label,704}.
    {move,{y,2},{x,1}}.
  {label,705}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,703},3}. % '-filters/1-lbc$^1/2-1-'/2
  {label,706}.
    {move,{x,1},{x,0}}.
    return.


{function, '-filters/1-lbc$^0/2-0-', 2, 708}.
  {label,707}.
    {line,[{location,"bs_bincomp_SUITE.erl",285}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-filters/1-lbc$^0/2-0-'},2}.
  {label,708}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,710},
              {x,0},
              {commands,[{ensure_at_least,7,1},
                         {integer,2,{literal,[]},7,1,{x,2}}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",287}]}.
    {gc_bif,'rem',{f,0},3,[{tr,{x,2},{t_integer,{0,127}}},{integer,2}],{x,3}}.
    {test,is_eq_exact,{f,709},[{tr,{x,3},{t_integer,{0,1}}},{integer,0}]}.
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
    {call_only,2,{f,708}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,709}.
    {call_only,2,{f,708}}. % '-filters/1-lbc$^0/2-0-'/2
  {label,710}.
    {move,{x,1},{x,0}}.
    return.


{function, '-inconsistent_types_2/0-lbc$^0/2-0-', 3, 712}.
  {label,711}.
    {line,[{location,"bs_bincomp_SUITE.erl",274}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-inconsistent_types_2/0-lbc$^0/2-0-'},
               3}.
  {label,712}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_nonempty_list,{f,713},[{x,0}]}.
    {bif,'=/=',{f,0},[{x,2},nil],{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",277}]}.
    {badmatch,{x,0}}.
  {label,713}.
    {test,is_nil,{f,714},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,714}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",276}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-inconsistent_types_1/1-lbc$^0/2-0-', 3, 716}.
  {label,715}.
    {line,[{location,"bs_bincomp_SUITE.erl",256}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-inconsistent_types_1/1-lbc$^0/2-0-'},
               3}.
  {label,716}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}}.
    {test,is_nil,
          {f,717},
          [{tr,{x,0},{t_union,none,nil,{t_integer,{42,42}},none,pid}}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,717}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",257}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-float_segment_size/0-lbc$^0/2-0-', 3, 719}.
  {label,718}.
    {line,[{location,"bs_bincomp_SUITE.erl",246}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-float_segment_size/0-lbc$^0/2-0-'},
               3}.
  {label,719}.
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_float,{0.79,0.79}}}]}}.
    {move,{literal,{bad_generator,42}},{x,0}}.
    {line,[{location,"bs_bincomp_SUITE.erl",247}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-over_complex_generator/0-lbc$^0/2-0-', 2, 721}.
  {label,720}.
    {line,[{location,"bs_bincomp_SUITE.erl",225}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-over_complex_generator/0-lbc$^0/2-0-'},
               2}.
  {label,721}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,2}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,723},
              {x,0},
              {commands,[{ensure_at_least,2,1},
                         {integer,2,{literal,[]},2,1,{x,2}}]}}.
    {test,is_eq_exact,{f,722},[{tr,{x,2},{t_integer,{0,3}}},{integer,0}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {call,2,{f,725}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,721},1}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,722}.
    {call_only,2,{f,721}}. % '-over_complex_generator/0-lbc$^0/2-0-'/2
  {label,723}.
    {move,{x,1},{x,0}}.
    return.


{function, '-over_complex_generator/0-lbc$^1/2-1-', 2, 725}.
  {label,724}.
    {line,[{location,"bs_bincomp_SUITE.erl",225}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-over_complex_generator/0-lbc$^1/2-1-'},
               2}.
  {label,725}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,726},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
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
    {call_only,2,{f,725}}. % '-over_complex_generator/0-lbc$^1/2-1-'/2
  {label,726}.
    {move,{x,1},{x,0}}.
    return.


{function, '-do_match_context_2/1-lbc$^0/2-0-', 2, 728}.
  {label,727}.
    {line,[{location,"bs_bincomp_SUITE.erl",221}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-do_match_context_2/1-lbc$^0/2-0-'},
               2}.
  {label,728}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,resume},2,{x,0},{x,0}}.
    {bs_match,{f,729},
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
    {call_only,2,{f,728}}. % '-do_match_context_2/1-lbc$^0/2-0-'/2
  {label,729}.
    {move,{x,1},{x,0}}.
    return.


{function, '-match_context_1/1-lbc$^0/2-0-', 2, 731}.
  {label,730}.
    {line,[{location,"bs_bincomp_SUITE.erl",215}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-match_context_1/1-lbc$^0/2-0-'},
               2}.
  {label,731}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,resume},2,{x,0},{x,0}}.
    {bs_match,{f,732},
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
    {call_only,2,{f,731}}. % '-match_context_1/1-lbc$^0/2-0-'/2
  {label,732}.
    {move,{x,1},{x,0}}.
    return.


{function, '-gen_data/1-lbc$^1/2-1-', 2, 734}.
  {label,733}.
    {line,[{location,"bs_bincomp_SUITE.erl",211}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-gen_data/1-lbc$^1/2-1-'},2}.
  {label,734}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,735},[{x,0}]}.
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
    {call,2,{f,738}}. % '-gen_data/1-lbc$^2/2-2-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,734},1}. % '-gen_data/1-lbc$^1/2-1-'/2
  {label,735}.
    {test,is_nil,{f,736},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,736}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^2/2-2-', 2, 738}.
  {label,737}.
    {line,[{location,"bs_bincomp_SUITE.erl",211}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-gen_data/1-lbc$^2/2-2-'},2}.
  {label,738}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,739},[{x,0}]}.
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
    {call_only,2,{f,738}}. % '-gen_data/1-lbc$^2/2-2-'/2
  {label,739}.
    {test,is_nil,{f,740},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,740}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_bincomp_SUITE.erl",212}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gen_data/1-lbc$^0/2-0-', 2, 742}.
  {label,741}.
    {line,[{location,"bs_bincomp_SUITE.erl",210}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-gen_data/1-lbc$^0/2-0-'},2}.
  {label,742}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,743},[{x,0}]}.
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
    {call_only,2,{f,742}}. % '-gen_data/1-lbc$^0/2-0-'/2
  {label,743}.
    {test,is_nil,{f,744},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,744}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_lc/1-lc$^0/1-0-', 1, 746}.
  {label,745}.
    {line,[{location,"bs_bincomp_SUITE.erl",207}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-silly_lc/1-lc$^0/1-0-'},1}.
  {label,746}.
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
    {test,is_nonempty_list,{f,747},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,746}}. % '-silly_lc/1-lc$^0/1-0-'/1
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
  {label,747}.
    return.


{function, '-silly_bc/1-lbc$^0/2-0-', 2, 749}.
  {label,748}.
    {line,[{location,"bs_bincomp_SUITE.erl",202}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-silly_bc/1-lbc$^0/2-0-'},2}.
  {label,749}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,750},
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
    {call_only,2,{f,749}}. % '-silly_bc/1-lbc$^0/2-0-'/2
  {label,750}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed_size/2-lbc$^0/2-0-', 3, 752}.
  {label,751}.
    {line,[{location,"bs_bincomp_SUITE.erl",189}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed_size/2-lbc$^0/2-0-'},3}.
  {label,752}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,is_nonempty_list,{f,753},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,756}}. % '-mixed_size/2-lbc$^1/2-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,752},2}. % '-mixed_size/2-lbc$^0/2-0-'/3
  {label,753}.
    {test,is_nil,{f,754},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,754}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed_size/2-lbc$^1/2-1-', 3, 756}.
  {label,755}.
    {line,[{location,"bs_bincomp_SUITE.erl",189}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed_size/2-lbc$^1/2-1-'},3}.
  {label,756}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,757},
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
    {call_only,3,{f,756}}. % '-mixed_size/2-lbc$^1/2-1-'/3
  {label,757}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed_nested/1-lbc$^0/2-0-', 2, 759}.
  {label,758}.
    {line,[{location,"bs_bincomp_SUITE.erl",186}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed_nested/1-lbc$^0/2-0-'},2}.
  {label,759}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,is_nonempty_list,{f,760},[{x,0}]}.
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
    {call_only,2,{f,759}}. % '-mixed_nested/1-lbc$^0/2-0-'/2
  {label,760}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-fun-26-', 1, 762}.
  {label,761}.
    {line,[{location,"bs_bincomp_SUITE.erl",178}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-fun-26-'},1}.
  {label,762}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {line,[{location,"bs_bincomp_SUITE.erl",179}]}.
    {call,2,{f,765}}. % '-mixed/1-lc$^25/1-25-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test,is_nil,{f,763},[{tr,{x,0},{t_list,{t_atom,[ok]},nil}}]}.
    {deallocate,0}.
    return.
  {label,763}.
    {badmatch,{x,0}}.


{function, '-mixed/1-lc$^25/1-25-', 2, 765}.
  {label,764}.
    {line,[{location,"bs_bincomp_SUITE.erl",179}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^25/1-25-'},2}.
  {label,765}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,768},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,766},
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
          {f,766},
          [{x,2},
           {tr,{x,3},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[179,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {call,2,{f,765}}. % '-mixed/1-lc$^25/1-25-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[ok]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,766}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,767},
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
          {f,767},
          [{x,2},
           {tr,{x,0},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[179,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,765}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,767}.
    {move,nil,{x,0}}.
    return.
  {label,768}.
    {test,bs_start_match3,{f,769},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,769},
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
          {f,769},
          [{x,2},
           {tr,{x,3},{t_integer,{0,'+inf'}}},
           1,
           {field_flags,[{anno,[179,{file,"bs_bincomp_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,765}}. % '-mixed/1-lc$^25/1-25-'/2
  {label,769}.
    {test,is_bitstr,{f,770},[{x,0}]}.
    {move,nil,{x,0}}.
    return.
  {label,770}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^23/2-23-', 2, 772}.
  {label,771}.
    {line,[{location,"bs_bincomp_SUITE.erl",152}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^23/2-23-'},2}.
  {label,772}.
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_cons,{t_integer,{1,1}},nil},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,773},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,775}}. % '-mixed/1-lbc$^24/2-24-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,772},1}. % '-mixed/1-lbc$^23/2-23-'/2
  {label,773}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^24/2-24-', 2, 775}.
  {label,774}.
    {line,[{location,"bs_bincomp_SUITE.erl",152}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^24/2-24-'},2}.
  {label,775}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,1}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,776},[{x,0}]}.
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
    {call_only,2,{f,775}}. % '-mixed/1-lbc$^24/2-24-'/2
  {label,776}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lc$^21/1-21-', 1, 778}.
  {label,777}.
    {line,[{location,"bs_bincomp_SUITE.erl",147}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^21/1-21-'},1}.
  {label,778}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,779},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,1,{literal,[]},3,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,[{a,1},{b,2}]},{x,0}}.
    {call_only,3,{f,781}}. % '-mixed/1-lc$^22/1-22-'/3
  {label,779}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^22/1-22-', 3, 781}.
  {label,780}.
    {line,[{location,"bs_bincomp_SUITE.erl",147}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^22/1-22-'},3}.
  {label,781}.
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
    {test,is_nonempty_list,{f,782},[{x,0}]}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,3},{x,0}}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,7}}},{tr,{x,3},{t_integer,{1,2}}}],
            {y,0}}.
    {call,3,{f,781}}. % '-mixed/1-lc$^22/1-22-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,782}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,778}}. % '-mixed/1-lc$^21/1-21-'/1


{function, '-mixed/1-lc$^19/1-19-', 1, 784}.
  {label,783}.
    {line,[{location,"bs_bincomp_SUITE.erl",145}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^19/1-19-'},1}.
  {label,784}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,785},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,1,{literal,[]},3,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call_only,3,{f,787}}. % '-mixed/1-lc$^20/1-20-'/3
  {label,785}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^20/1-20-', 3, 787}.
  {label,786}.
    {line,[{location,"bs_bincomp_SUITE.erl",145}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^20/1-20-'},3}.
  {label,787}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,7}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,788},
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
    {call,3,{f,787}}. % '-mixed/1-lc$^20/1-20-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,788}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,784}}. % '-mixed/1-lc$^19/1-19-'/1


{function, '-mixed/1-lbc$^18/2-18-', 2, 790}.
  {label,789}.
    {line,[{location,"bs_bincomp_SUITE.erl",142}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^18/2-18-'},2}.
  {label,790}.
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
    {test,is_nonempty_list,{f,791},[{x,0}]}.
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
    {call_only,2,{f,790}}. % '-mixed/1-lbc$^18/2-18-'/2
  {label,791}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^16/2-16-', 2, 793}.
  {label,792}.
    {line,[{location,"bs_bincomp_SUITE.erl",140}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^16/2-16-'},2}.
  {label,793}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,794},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,796}}. % '-mixed/1-lbc$^17/2-17-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,793},1}. % '-mixed/1-lbc$^16/2-16-'/2
  {label,794}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^17/2-17-', 3, 796}.
  {label,795}.
    {line,[{location,"bs_bincomp_SUITE.erl",140}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^17/2-17-'},3}.
  {label,796}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,4}}}]}}.
    {test,is_nonempty_list,{f,797},[{x,0}]}.
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
    {call_only,3,{f,796}}. % '-mixed/1-lbc$^17/2-17-'/3
  {label,797}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^14/2-14-', 2, 799}.
  {label,798}.
    {line,[{location,"bs_bincomp_SUITE.erl",138}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^14/2-14-'},2}.
  {label,799}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,800},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,2,{literal,[]},3,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,802}}. % '-mixed/1-lbc$^15/2-15-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,799},1}. % '-mixed/1-lbc$^14/2-14-'/2
  {label,800}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^15/2-15-', 3, 802}.
  {label,801}.
    {line,[{location,"bs_bincomp_SUITE.erl",138}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^15/2-15-'},3}.
  {label,802}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,7}}}]}}.
    {test,is_nonempty_list,{f,803},[{x,0}]}.
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
    {call_only,3,{f,802}}. % '-mixed/1-lbc$^15/2-15-'/3
  {label,803}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^12/2-12-', 2, 805}.
  {label,804}.
    {line,[{location,"bs_bincomp_SUITE.erl",135}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^12/2-12-'},2}.
  {label,805}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,806},
              {x,0},
              {commands,[{ensure_at_least,3,1},
                         {integer,2,{literal,[]},3,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,<<10:6>>},{x,0}}.
    {call,3,{f,808}}. % '-mixed/1-lbc$^13/2-13-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,805},1}. % '-mixed/1-lbc$^12/2-12-'/2
  {label,806}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^13/2-13-', 3, 808}.
  {label,807}.
    {line,[{location,"bs_bincomp_SUITE.erl",135}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^13/2-13-'},3}.
  {label,808}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,7}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,809},
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
    {call_only,3,{f,808}}. % '-mixed/1-lbc$^13/2-13-'/3
  {label,809}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lc$^10/1-10-', 1, 811}.
  {label,810}.
    {line,[{location,"bs_bincomp_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^10/1-10-'},1}.
  {label,811}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,812},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_only,3,{f,814}}. % '-mixed/1-lc$^11/1-11-'/3
  {label,812}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^11/1-11-', 3, 814}.
  {label,813}.
    {line,[{location,"bs_bincomp_SUITE.erl",133}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^11/1-11-'},3}.
  {label,814}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,is_nonempty_list,{f,815},[{x,0}]}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,3},{x,0}}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,1},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{1,2}}}],
            {y,0}}.
    {call,3,{f,814}}. % '-mixed/1-lc$^11/1-11-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,815}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,811}}. % '-mixed/1-lc$^10/1-10-'/1


{function, '-mixed/1-lc$^8/1-8-', 1, 817}.
  {label,816}.
    {line,[{location,"bs_bincomp_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^8/1-8-'},1}.
  {label,817}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,818},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,2}}]}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call_only,3,{f,820}}. % '-mixed/1-lc$^9/1-9-'/3
  {label,818}.
    {move,nil,{x,0}}.
    return.


{function, '-mixed/1-lc$^9/1-9-', 3, 820}.
  {label,819}.
    {line,[{location,"bs_bincomp_SUITE.erl",131}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lc$^9/1-9-'},3}.
  {label,820}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,255}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,821},
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
    {call,3,{f,820}}. % '-mixed/1-lc$^9/1-9-'/3
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,821}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,817}}. % '-mixed/1-lc$^8/1-8-'/1


{function, '-mixed/1-lbc$^6/2-6-', 3, 823}.
  {label,822}.
    {line,[{location,"bs_bincomp_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^6/2-6-'},3}.
  {label,823}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,824},[{x,0}]}.
    {allocate,2,3}.
    {move,{x,2},{y,1}}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,3,{f,827}}. % '-mixed/1-lbc$^7/2-7-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,823},2}. % '-mixed/1-lbc$^6/2-6-'/3
  {label,824}.
    {test,is_nil,{f,825},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,825}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^7/2-7-', 3, 827}.
  {label,826}.
    {line,[{location,"bs_bincomp_SUITE.erl",129}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^7/2-7-'},3}.
  {label,827}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,828},[{x,0}]}.
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
    {call_only,3,{f,827}}. % '-mixed/1-lbc$^7/2-7-'/3
  {label,828}.
    {test,is_nil,{f,829},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,829}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-mixed/1-lbc$^4/2-4-', 2, 831}.
  {label,830}.
    {line,[{location,"bs_bincomp_SUITE.erl",125}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^4/2-4-'},2}.
  {label,831}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,832},[{x,0}]}.
    {allocate,1,2}.
    {get_list,{x,0},{x,2},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,834}}. % '-mixed/1-lbc$^5/2-5-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,831},1}. % '-mixed/1-lbc$^4/2-4-'/2
  {label,832}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^5/2-5-', 3, 834}.
  {label,833}.
    {line,[{location,"bs_bincomp_SUITE.erl",125}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^5/2-5-'},3}.
  {label,834}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,4}}}]}}.
    {test,is_nonempty_list,{f,835},[{x,0}]}.
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
    {call_only,3,{f,834}}. % '-mixed/1-lbc$^5/2-5-'/3
  {label,835}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^2/2-2-', 2, 837}.
  {label,836}.
    {line,[{location,"bs_bincomp_SUITE.erl",123}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^2/2-2-'},2}.
  {label,837}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,838},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,[1,2]},{x,0}}.
    {call,3,{f,840}}. % '-mixed/1-lbc$^3/2-3-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,837},1}. % '-mixed/1-lbc$^2/2-2-'/2
  {label,838}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^3/2-3-', 3, 840}.
  {label,839}.
    {line,[{location,"bs_bincomp_SUITE.erl",123}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^3/2-3-'},3}.
  {label,840}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,255}}}]}}.
    {test,is_nonempty_list,{f,841},[{x,0}]}.
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
    {call_only,3,{f,840}}. % '-mixed/1-lbc$^3/2-3-'/3
  {label,841}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^0/2-0-', 2, 843}.
  {label,842}.
    {line,[{location,"bs_bincomp_SUITE.erl",121}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^0/2-0-'},2}.
  {label,843}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,844},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {call,3,{f,846}}. % '-mixed/1-lbc$^1/2-1-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,843},1}. % '-mixed/1-lbc$^0/2-0-'/2
  {label,844}.
    {move,{x,1},{x,0}}.
    return.


{function, '-mixed/1-lbc$^1/2-1-', 3, 846}.
  {label,845}.
    {line,[{location,"bs_bincomp_SUITE.erl",121}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-mixed/1-lbc$^1/2-1-'},3}.
  {label,846}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,847},
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
    {call_only,3,{f,846}}. % '-mixed/1-lbc$^1/2-1-'/3
  {label,847}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lc$^3/1-3-', 1, 849}.
  {label,848}.
    {line,[{location,"bs_bincomp_SUITE.erl",115}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^3/1-3-'},
               1}.
  {label,849}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,850},
              {x,0},
              {commands,[{ensure_at_least,15,1},
                         {integer,1,{literal,[little]},15,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,849}}. % '-extended_bit_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,32767}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,850}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lbc$^2/2-2-', 2, 852}.
  {label,851}.
    {line,[{location,"bs_bincomp_SUITE.erl",113}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,852}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,853},[{x,0}]}.
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
    {call_only,2,{f,852}}. % '-extended_bit_aligned/1-lbc$^2/2-2-'/2
  {label,853}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lc$^1/1-1-', 1, 855}.
  {label,854}.
    {line,[{location,"bs_bincomp_SUITE.erl",111}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lc$^1/1-1-'},
               1}.
  {label,855}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,856},
              {x,0},
              {commands,[{ensure_at_least,7,1},
                         {integer,1,{literal,[]},7,1,{x,1}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'-',{f,0},2,[{tr,{x,1},{t_integer,{0,127}}},{integer,32}],{y,0}}.
    {call,1,{f,855}}. % '-extended_bit_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{'-inf',95}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,856}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_bit_aligned/1-lbc$^0/2-0-', 2, 858}.
  {label,857}.
    {line,[{location,"bs_bincomp_SUITE.erl",110}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_bit_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,858}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {test,is_nonempty_list,{f,859},[{x,0}]}.
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
    {call_only,2,{f,858}}. % '-extended_bit_aligned/1-lbc$^0/2-0-'/2
  {label,859}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lc$^3/1-3-', 1, 861}.
  {label,860}.
    {line,[{location,"bs_bincomp_SUITE.erl",104}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^3/1-3-'},
               1}.
  {label,861}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,862},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,1,{literal,[little]},16,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,861}}. % '-extended_byte_aligned/1-lc$^3/1-3-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,65535}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,862}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lbc$^2/2-2-', 2, 864}.
  {label,863}.
    {line,[{location,"bs_bincomp_SUITE.erl",102}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^2/2-2-'},
               2}.
  {label,864}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,4}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {test,is_nonempty_list,{f,865},[{x,0}]}.
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
    {call_only,2,{f,864}}. % '-extended_byte_aligned/1-lbc$^2/2-2-'/2
  {label,865}.
    {move,{x,1},{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lc$^1/1-1-', 1, 867}.
  {label,866}.
    {line,[{location,"bs_bincomp_SUITE.erl",100}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lc$^1/1-1-'},
               1}.
  {label,867}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,868},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,255}}},{integer,32}],{y,0}}.
    {call,1,{f,867}}. % '-extended_byte_aligned/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{32,'+inf'}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,868}.
    {move,nil,{x,0}}.
    return.


{function, '-extended_byte_aligned/1-lbc$^0/2-0-', 2, 870}.
  {label,869}.
    {line,[{location,"bs_bincomp_SUITE.erl",99}]}.
    {func_info,{atom,bs_bincomp_SUITE},
               {atom,'-extended_byte_aligned/1-lbc$^0/2-0-'},
               2}.
  {label,870}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{65,71}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,871},[{x,0}]}.
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
    {call_only,2,{f,870}}. % '-extended_byte_aligned/1-lbc$^0/2-0-'/2
  {label,871}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^3/2-3-', 2, 873}.
  {label,872}.
    {line,[{location,"bs_bincomp_SUITE.erl",94}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^3/2-3-'},2}.
  {label,873}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,874},
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
    {call_only,2,{f,873}}. % '-bit_aligned/1-lbc$^3/2-3-'/2
  {label,874}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^2/2-2-', 2, 876}.
  {label,875}.
    {line,[{location,"bs_bincomp_SUITE.erl",92}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^2/2-2-'},2}.
  {label,876}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,877},
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
    {call_only,2,{f,876}}. % '-bit_aligned/1-lbc$^2/2-2-'/2
  {label,877}.
    {move,{x,1},{x,0}}.
    return.


{function, '-bit_aligned/1-lbc$^1/2-1-', 2, 879}.
  {label,878}.
    {line,[{location,"bs_bincomp_SUITE.erl",90}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^1/2-1-'},2}.
  {label,879}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,bs_start_match3,{f,881},2,[{x,0}],{x,2}}.
    {bs_match,{f,880},
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
    {call_only,2,{f,879}}. % '-bit_aligned/1-lbc$^1/2-1-'/2
  {label,880}.
    {move,{x,1},{x,0}}.
    return.
  {label,881}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bit_aligned/1-lbc$^0/2-0-', 2, 883}.
  {label,882}.
    {line,[{location,"bs_bincomp_SUITE.erl",89}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-bit_aligned/1-lbc$^0/2-0-'},2}.
  {label,883}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,884},
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
    {call_only,2,{f,883}}. % '-bit_aligned/1-lbc$^0/2-0-'/2
  {label,884}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^3/2-3-', 2, 886}.
  {label,885}.
    {line,[{location,"bs_bincomp_SUITE.erl",83}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^3/2-3-'},2}.
  {label,886}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,16}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,887},
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
    {call_only,2,{f,886}}. % '-byte_aligned/1-lbc$^3/2-3-'/2
  {label,887}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^2/2-2-', 2, 889}.
  {label,888}.
    {line,[{location,"bs_bincomp_SUITE.erl",81}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^2/2-2-'},2}.
  {label,889}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,32}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,890},
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
    {call_only,2,{f,889}}. % '-byte_aligned/1-lbc$^2/2-2-'/2
  {label,890}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^1/2-1-', 2, 892}.
  {label,891}.
    {line,[{location,"bs_bincomp_SUITE.erl",79}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^1/2-1-'},2}.
  {label,892}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,32,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,893},
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
    {call_only,2,{f,892}}. % '-byte_aligned/1-lbc$^1/2-1-'/2
  {label,893}.
    {move,{x,1},{x,0}}.
    return.


{function, '-byte_aligned/1-lbc$^0/2-0-', 2, 895}.
  {label,894}.
    {line,[{location,"bs_bincomp_SUITE.erl",78}]}.
    {func_info,{atom,bs_bincomp_SUITE},{atom,'-byte_aligned/1-lbc$^0/2-0-'},2}.
  {label,895}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,896},
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
    {call_only,2,{f,895}}. % '-byte_aligned/1-lbc$^0/2-0-'/2
  {label,896}.
    {move,{x,1},{x,0}}.
    return.
