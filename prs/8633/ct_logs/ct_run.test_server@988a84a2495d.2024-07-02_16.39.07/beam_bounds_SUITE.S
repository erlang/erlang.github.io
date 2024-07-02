{module, beam_bounds_SUITE}.  %% version = 0

{exports, [{abs_bounds,1},
           {addition_bounds,1},
           {all,0},
           {band_bounds,1},
           {bnot_bounds,1},
           {bor_bounds,1},
           {bsl_bounds,1},
           {bsr_bounds,1},
           {bxor_bounds,1},
           {division_bounds,1},
           {end_per_group,2},
           {end_per_suite,1},
           {ge_bounds,1},
           {groups,0},
           {gt_bounds,1},
           {infer_lt_gt_bounds,1},
           {init_per_group,2},
           {init_per_suite,1},
           {le_bounds,1},
           {lt_bounds,1},
           {max_bounds,1},
           {min_bounds,1},
           {module_info,0},
           {module_info,1},
           {multiplication_bounds,1},
           {redundant_masking,1},
           {rem_bounds,1},
           {subtraction_bounds,1},
           {suite,0}]}.

{attributes, []}.

{labels, 371}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_bounds_SUITE.erl",35}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_bounds_SUITE.erl",37}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_bounds_SUITE.erl",40}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [addition_bounds,subtraction_bounds,
                        multiplication_bounds,division_bounds,rem_bounds,
                        band_bounds,bor_bounds,bxor_bounds,bnot_bounds,
                        bsr_bounds,bsl_bounds,lt_bounds,le_bounds,gt_bounds,
                        ge_bounds,min_bounds,max_bounds,abs_bounds,
                        infer_lt_gt_bounds,redundant_masking]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_bounds_SUITE.erl",63}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_bounds_SUITE},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",64}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_bounds_SUITE.erl",67}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_bounds_SUITE.erl",70}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_bounds_SUITE.erl",73}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, addition_bounds, 1, 16}.
  {label,15}.
    {line,[{location,"beam_bounds_SUITE.erl",76}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,addition_bounds},1}.
  {label,16}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{atom,'+'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",77}]}.
    {call,2,{f,196}}. % test_commutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{'-inf',-20}},{x,1}}.
    {move,{literal,{2,5}},{x,2}}.
    {move,{atom,'+'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",79}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,23},[{x,0},{literal,{'-inf',-15}}]}.
    {move,{literal,{'-inf',50}},{x,1}}.
    {move,{literal,{'-inf',5}},{x,2}}.
    {move,{atom,'+'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",80}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,22},[{x,0},{literal,{'-inf',55}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{'-inf',100}},{x,2}}.
    {move,{atom,'+'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",81}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,21},[{x,0},{literal,{'-inf',110}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',100}},{x,2}}.
    {move,{atom,'+'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",82}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,20},[{x,0},{atom,any}]}.
    {move,{literal,{2,'+inf'}},{x,1}}.
    {move,{literal,{-10,20}},{x,2}}.
    {move,{atom,'+'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",84}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,19},[{x,0},{literal,{-8,'+inf'}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{5,'+inf'}},{x,2}}.
    {move,{atom,'+'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",85}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,18},[{x,0},{literal,{6,'+inf'}}]}.
    {move,{literal,{2,'+inf'}},{x,1}}.
    {move,{literal,{7,'+inf'}},{x,2}}.
    {move,{atom,'+'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",86}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,17},[{x,0},{literal,{9,'+inf'}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {badmatch,{x,0}}.
  {label,18}.
    {line,[{location,"beam_bounds_SUITE.erl",85}]}.
    {badmatch,{x,0}}.
  {label,19}.
    {line,[{location,"beam_bounds_SUITE.erl",84}]}.
    {badmatch,{x,0}}.
  {label,20}.
    {line,[{location,"beam_bounds_SUITE.erl",82}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{location,"beam_bounds_SUITE.erl",81}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"beam_bounds_SUITE.erl",80}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{location,"beam_bounds_SUITE.erl",79}]}.
    {badmatch,{x,0}}.


{function, subtraction_bounds, 1, 25}.
  {label,24}.
    {line,[{location,"beam_bounds_SUITE.erl",90}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,subtraction_bounds},1}.
  {label,25}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{atom,'-'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",91}]}.
    {call,2,{f,203}}. % test_noncommutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{'-inf',20}},{x,1}}.
    {move,{literal,{2,9}},{x,2}}.
    {move,{atom,'-'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",93}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,32},[{x,0},{literal,{'-inf',18}}]}.
    {move,{literal,{'-inf',20}},{x,1}}.
    {move,{literal,{'-inf',17}},{x,2}}.
    {move,{atom,'-'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",94}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,31},[{x,0},{atom,any}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{'-inf',100}},{x,2}}.
    {move,{atom,'-'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",95}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,30},[{x,0},{literal,{-99,'+inf'}}]}.
    {move,{literal,{7,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',100}},{x,2}}.
    {move,{atom,'-'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",96}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,29},[{x,0},{literal,{-93,'+inf'}}]}.
    {move,{literal,{2,'+inf'}},{x,1}}.
    {move,{literal,{-10,20}},{x,2}}.
    {move,{atom,'-'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",98}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,28},[{x,0},{literal,{-18,'+inf'}}]}.
    {move,{literal,{1,11}},{x,1}}.
    {move,{literal,{5,'+inf'}},{x,2}}.
    {move,{atom,'-'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",99}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,27},[{x,0},{literal,{'-inf',6}}]}.
    {move,{literal,{2,'+inf'}},{x,1}}.
    {move,{literal,{7,'+inf'}},{x,2}}.
    {move,{atom,'-'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",100}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,26},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,26}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{location,"beam_bounds_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{location,"beam_bounds_SUITE.erl",98}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{location,"beam_bounds_SUITE.erl",96}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{location,"beam_bounds_SUITE.erl",95}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{location,"beam_bounds_SUITE.erl",94}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{location,"beam_bounds_SUITE.erl",93}]}.
    {badmatch,{x,0}}.


{function, multiplication_bounds, 1, 34}.
  {label,33}.
    {line,[{location,"beam_bounds_SUITE.erl",104}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,multiplication_bounds},1}.
  {label,34}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{atom,'*'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",105}]}.
    {call,2,{f,196}}. % test_commutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{'-inf',-20}},{x,1}}.
    {move,{literal,{2,5}},{x,2}}.
    {move,{atom,'*'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",107}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,42},[{x,0},{literal,{'-inf',-40}}]}.
    {move,{literal,{'-inf',100}},{x,1}}.
    {move,{literal,{1,10}},{x,2}}.
    {move,{atom,'*'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",108}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,41},[{x,0},{literal,{'-inf',1000}}]}.
    {move,{literal,{'-inf',100}},{x,1}}.
    {move,{literal,{-10,10}},{x,2}}.
    {move,{atom,'*'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",109}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,40},[{x,0},{atom,any}]}.
    {move,{literal,{-10,'+inf'}},{x,1}}.
    {move,{literal,{1,10}},{x,2}}.
    {move,{atom,'*'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",111}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,39},[{x,0},{literal,{-100,'+inf'}}]}.
    {move,{literal,{7,'+inf'}},{x,1}}.
    {move,{literal,{1,10}},{x,2}}.
    {move,{atom,'*'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",112}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,38},[{x,0},{literal,{7,'+inf'}}]}.
    {move,{literal,{-10,'+inf'}},{x,1}}.
    {move,{literal,{-5,5}},{x,2}}.
    {move,{atom,'*'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",113}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,37},[{x,0},{atom,any}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{'-inf',100}},{x,2}}.
    {move,{atom,'*'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",115}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,36},[{x,0},{literal,{'-inf',1000}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{-10,'+inf'}},{x,2}}.
    {move,{atom,'*'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",116}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,35},[{x,0},{literal,{-100,'+inf'}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,35}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{location,"beam_bounds_SUITE.erl",115}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{location,"beam_bounds_SUITE.erl",113}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{location,"beam_bounds_SUITE.erl",112}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{location,"beam_bounds_SUITE.erl",111}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{location,"beam_bounds_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{location,"beam_bounds_SUITE.erl",108}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{location,"beam_bounds_SUITE.erl",107}]}.
    {badmatch,{x,0}}.


{function, division_bounds, 1, 44}.
  {label,43}.
    {line,[{location,"beam_bounds_SUITE.erl",120}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,division_bounds},1}.
  {label,44}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",121}]}.
    {call,2,{f,203}}. % test_noncommutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{'-inf',-20}},{x,1}}.
    {move,{literal,{2,4}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",123}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,51},[{x,0},{literal,{'-inf',-5}}]}.
    {move,{literal,{'-inf',100}},{x,1}}.
    {move,{literal,{2,4}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",124}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,50},[{x,0},{literal,{'-inf',50}}]}.
    {move,{literal,{-10,'+inf'}},{x,1}}.
    {move,{literal,{2,4}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",126}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,49},[{x,0},{literal,{-5,'+inf'}}]}.
    {move,{literal,{10,'+inf'}},{x,1}}.
    {move,{literal,{2,4}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",127}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,48},[{x,0},{literal,{2,'+inf'}}]}.
    {move,{literal,{10,'+inf'}},{x,1}}.
    {move,{literal,{0,0}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",129}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,47},[{x,0},{atom,any}]}.
    {'catch',{y,0},{f,45}}.
    {move,{atom,ok},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",130}]}.
    {call,2,{f,53}}. % division_bounds_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
  {label,45}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,46},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,46},[{x,1},2,{atom,badarith}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,46}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",130}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",129}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",127}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",126}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",124}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",123}]}.
    {badmatch,{x,0}}.


{function, division_bounds_1, 2, 53}.
  {label,52}.
    {line,[{location,"beam_bounds_SUITE.erl",136}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,division_bounds_1},2}.
  {label,53}.
    {'%',{var_info,{x,0},[{type,{t_union,{t_atom,[ok]},nil,none,none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ok]}}]}}.
    {test,is_nil,
          {f,54},
          [{tr,{x,0},{t_union,{t_atom,[ok]},nil,none,none,none}}]}.
    {allocate,0,2}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",137}]}.
    {call,2,{f,53}}. % division_bounds_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {gc_bif,'div',{f,0},0,[{integer,-1},{integer,0}],{x,0}}.
    {deallocate,0}.
    return.
  {label,54}.
    {move,{integer,0},{x,0}}.
    return.


{function, rem_bounds, 1, 56}.
  {label,55}.
    {line,[{location,"beam_bounds_SUITE.erl",141}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,rem_bounds},1}.
  {label,56}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",142}]}.
    {call,2,{f,203}}. % test_noncommutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{1,8}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",144}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,64},[{x,0},{literal,{-7,7}}]}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{-12,8}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",145}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,63},[{x,0},{literal,{-11,11}}]}.
    {move,{literal,{'-inf',10}},{x,1}}.
    {move,{literal,{1,8}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",147}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,62},[{x,0},{literal,{-7,7}}]}.
    {move,{literal,{10,'+inf'}},{x,1}}.
    {move,{literal,{1,8}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",148}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,61},[{x,0},{literal,{0,7}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{'-inf',10}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",150}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,60},[{x,0},{atom,any}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{10,'+inf'}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",151}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,59},[{x,0},{atom,any}]}.
    {move,{literal,{-10,10}},{x,1}}.
    {move,{literal,{'-inf',10}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",153}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,58},[{x,0},{atom,any}]}.
    {move,{literal,{-10,10}},{x,1}}.
    {move,{literal,{10,'+inf'}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",154}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,57},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,57}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{location,"beam_bounds_SUITE.erl",153}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{location,"beam_bounds_SUITE.erl",151}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{location,"beam_bounds_SUITE.erl",150}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"beam_bounds_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"beam_bounds_SUITE.erl",147}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{location,"beam_bounds_SUITE.erl",145}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"beam_bounds_SUITE.erl",144}]}.
    {badmatch,{x,0}}.


{function, band_bounds, 1, 66}.
  {label,65}.
    {line,[{location,"beam_bounds_SUITE.erl",158}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,band_bounds},1}.
  {label,66}.
    {allocate,0,0}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",159}]}.
    {call,1,{f,194}}. % test_commutative/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{7,17}},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",162}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,72},[{x,0},{literal,{0,17}}]}.
    {move,{literal,{0,42}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",163}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,71},[{x,0},{literal,{0,42}}]}.
    {move,{literal,{-1,1}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",164}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,70},[{x,0},{atom,any}]}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{-10,0}},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",165}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,69},[{x,0},{atom,any}]}.
    {move,{literal,{-10,0}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",166}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,68},[{x,0},{atom,any}]}.
    {move,{literal,{-20,-10}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",167}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,67},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,67}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{location,"beam_bounds_SUITE.erl",166}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{location,"beam_bounds_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{location,"beam_bounds_SUITE.erl",164}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{location,"beam_bounds_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"beam_bounds_SUITE.erl",162}]}.
    {badmatch,{x,0}}.


{function, bor_bounds, 1, 74}.
  {label,73}.
    {line,[{location,"beam_bounds_SUITE.erl",171}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bor_bounds},1}.
  {label,74}.
    {allocate,0,0}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",172}]}.
    {call,1,{f,194}}. % test_commutative/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{-10,0}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",174}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,76},[{x,0},{atom,any}]}.
    {move,{literal,{-20,-10}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",175}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,75},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,75}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{location,"beam_bounds_SUITE.erl",174}]}.
    {badmatch,{x,0}}.


{function, bxor_bounds, 1, 78}.
  {label,77}.
    {line,[{location,"beam_bounds_SUITE.erl",179}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bxor_bounds},1}.
  {label,78}.
    {allocate,0,0}.
    {move,{atom,'bxor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",180}]}.
    {call,1,{f,194}}. % test_commutative/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{-10,0}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'bxor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",182}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,80},[{x,0},{atom,any}]}.
    {move,{literal,{-20,-10}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'bxor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",183}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,79},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,79}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"beam_bounds_SUITE.erl",182}]}.
    {badmatch,{x,0}}.


{function, bnot_bounds, 1, 82}.
  {label,81}.
    {line,[{location,"beam_bounds_SUITE.erl",187}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds},1}.
  {label,82}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{integer,7},{x,1}}.
    {move,{integer,-7},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",190}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"beam_bounds_SUITE.erl",192}]}.
    {call,2,{f,364}}. % '-bnot_bounds/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,{'-inf',42}},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",195}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_eq_exact,{f,95},[{x,0},{literal,{-43,'+inf'}}]}.
    {move,{literal,{'-inf',-100}},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",196}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_eq_exact,{f,94},[{x,0},{literal,{99,'+inf'}}]}.
    {move,{literal,{7,'+inf'}},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",197}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_eq_exact,{f,93},[{x,0},{literal,{'-inf',-8}}]}.
    {move,{literal,{-10,'+inf'}},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",198}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_eq_exact,{f,92},[{x,0},{literal,{'-inf',9}}]}.
    {move,{literal,{'-inf',1114110}},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",199}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_eq_exact,{f,91},[{x,0},{literal,{-1114111,'+inf'}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",201}]}.
    {call,1,{f,101}}. % bnot_bounds_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{-1,-1}}}]}}.
    {'catch',{y,3},{f,83}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",203}]}.
    {call,1,{f,273}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false,true]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {call,1,{f,103}}. % bnot_bounds_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,83}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,90},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,90},[{x,1}]}.
    {test,test_arity,{f,90},[{x,1},2]}.
    {'catch',{y,2},{f,84}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_bounds_SUITE.erl",204}]}.
    {call,1,{f,273}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false,true]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {call,1,{f,103}}. % bnot_bounds_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,84}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,89},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,89},[{x,1}]}.
    {test,test_arity,{f,89},[{x,1},2]}.
    {'catch',{y,1},{f,85}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_bounds_SUITE.erl",205}]}.
    {call,1,{f,273}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false,true]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {call,1,{f,103}}. % bnot_bounds_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,85}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,88},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,88},[{x,1}]}.
    {test,test_arity,{f,88},[{x,1},2]}.
    {'catch',{y,0},{f,86}}.
    {line,[{scope,[3,4]},{location,"beam_bounds_SUITE.erl",207}]}.
    {call,0,{f,107}}. % bnot_bounds_4/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,86}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,87},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,87},[{x,1}]}.
    {test,test_arity,{f,87},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,87},[{x,1},{literal,{bad_generator,-3}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,87}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",207}]}.
    {badmatch,{x,0}}.
  {label,88}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",205}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{scope,[4]},{location,"beam_bounds_SUITE.erl",204}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{scope,[6]},{location,"beam_bounds_SUITE.erl",203}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",199}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",198}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",197}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",196}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",195}]}.
    {badmatch,{x,0}}.


{function, bnot_bounds_1, 1, 97}.
  {label,96}.
    {line,[{location,"beam_bounds_SUITE.erl",211}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds_1},1}.
  {label,97}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",212}]}.
    {call,2,{f,226}}. % min_max_unary_op/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",213}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_tuple,{f,99},[{x,0}]}.
    {test,test_arity,{f,99},[{x,0},2]}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_ge,{f,98},[{x,1},{x,2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_ge,{f,98},[{x,1},{x,2}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,98}.
    {test_heap,6,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {trim,2,0}.
    {move,{literal,"bnot(~p) evaluates to ~p; should be ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",218}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_min_or_max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",220}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,99}.
    {line,[{location,"beam_bounds_SUITE.erl",213}]}.
    {badmatch,{x,0}}.


{function, bnot_bounds_2, 1, 101}.
  {label,100}.
    {line,[{location,"beam_bounds_SUITE.erl",224}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds_2},1}.
  {label,101}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {move,{integer,-1},{x,0}}.
    return.


{function, bnot_bounds_3, 1, 103}.
  {label,102}.
    {line,[{location,"beam_bounds_SUITE.erl",228}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds_3},1}.
  {label,103}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false,true]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",229}]}.
    {bif,'xor',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[false,true]},
                       none,
                       {t_integer,{0,0}},
                       none,none}},
          {atom,false}],
         {x,0}}.
    {test,is_eq_exact,{f,104},[{x,0},{atom,true}]}.
    {move,{integer,1},{x,0}}.
    {jump,{f,105}}.
  {label,104}.
    {move,{atom,false},{x,0}}.
  {label,105}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{x,0},
                 {t_union,{t_atom,[false]},none,{t_integer,{1,1}},none,none}},
             {integer,2}],
            {x,0}}.
    {gc_bif,'bnot',{f,0},1,[{tr,{x,0},{t_integer,{3,3}}}],{x,0}}.
    {gc_bif,'bsr',{f,0},1,[{tr,{x,0},{t_integer,{-4,-4}}},{atom,ok}],{x,0}}.
    return.


{function, bnot_bounds_4, 0, 107}.
  {label,106}.
    {line,[{location,"beam_bounds_SUITE.erl",232}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds_4},0}.
  {label,107}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_last,2,{f,360},0}. % '-bnot_bounds_4/0-lbc$^0/2-0-'/2


{function, bsr_bounds, 1, 109}.
  {label,108}.
    {line,[{location,"beam_bounds_SUITE.erl",235}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bsr_bounds},1}.
  {label,109}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{literal,{0,7}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",236}]}.
    {call,3,{f,205}}. % test_noncommutative/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{0,10}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",238}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,116},[{x,0},{literal,{0,10}}]}.
    {move,{literal,{0,10}},{x,1}}.
    {move,{literal,{2,'+inf'}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",239}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,115},[{x,0},{literal,{0,2}}]}.
    {move,{literal,{-1,10}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",241}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,114},[{x,0},{literal,{-1,10}}]}.
    {move,{literal,{-100,900}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",242}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,113},[{x,0},{literal,{-100,900}}]}.
    {move,{literal,{-100,900}},{x,1}}.
    {move,{literal,{1,'+inf'}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",243}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,112},[{x,0},{literal,{-50,450}}]}.
    {move,{literal,{'-inf',32}},{x,1}}.
    {move,{literal,{1,10}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",245}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,111},[{x,0},{literal,{'-inf',16}}]}.
    {move,{literal,{-10,'+inf'}},{x,1}}.
    {move,{literal,{1,10}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",246}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,110},[{x,0},{literal,{-5,'+inf'}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,110}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{location,"beam_bounds_SUITE.erl",245}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{location,"beam_bounds_SUITE.erl",243}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{location,"beam_bounds_SUITE.erl",242}]}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{location,"beam_bounds_SUITE.erl",241}]}.
    {badmatch,{x,0}}.
  {label,115}.
    {line,[{location,"beam_bounds_SUITE.erl",239}]}.
    {badmatch,{x,0}}.
  {label,116}.
    {line,[{location,"beam_bounds_SUITE.erl",238}]}.
    {badmatch,{x,0}}.


{function, bsl_bounds, 1, 118}.
  {label,117}.
    {line,[{location,"beam_bounds_SUITE.erl",250}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bsl_bounds},1}.
  {label,118}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{literal,{-7,7}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",251}]}.
    {call,3,{f,205}}. % test_noncommutative/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{1,10000}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",253}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,130},[{x,0},{literal,{2,'+inf'}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{-10,10000}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",254}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,129},[{x,0},{literal,{0,'+inf'}}]}.
    {move,{literal,{-7,10}},{x,1}}.
    {move,{literal,{1,10000}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",255}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,128},[{x,0},{atom,any}]}.
    {move,{literal,{-10,100}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",257}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,127},[{x,0},{atom,any}]}.
    {move,{literal,{-10,100}},{x,1}}.
    {move,{literal,{1,'+inf'}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",258}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,126},[{x,0},{atom,any}]}.
    {move,{literal,{-10,100}},{x,1}}.
    {move,{literal,{-1,'+inf'}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",259}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,125},[{x,0},{atom,any}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{'-inf',0}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",261}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,124},[{x,0},{literal,{0,10}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",262}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,123},[{x,0},{literal,{0,20}}]}.
    {move,{literal,{-7,10}},{x,1}}.
    {move,{literal,{'-inf',0}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",263}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,122},[{x,0},{literal,{-7,10}}]}.
    {move,{literal,{-7,10}},{x,1}}.
    {move,{literal,{'-inf',2}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",264}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,121},[{x,0},{literal,{-28,40}}]}.
    {move,{literal,{-10,-1}},{x,1}}.
    {move,{literal,{500,1024}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",266}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,120},[{x,0},{literal,{'-inf',-1}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{500,1024}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",267}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,119},[{x,0},{literal,{0,'+inf'}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,119}.
    {badmatch,{x,0}}.
  {label,120}.
    {line,[{location,"beam_bounds_SUITE.erl",266}]}.
    {badmatch,{x,0}}.
  {label,121}.
    {line,[{location,"beam_bounds_SUITE.erl",264}]}.
    {badmatch,{x,0}}.
  {label,122}.
    {line,[{location,"beam_bounds_SUITE.erl",263}]}.
    {badmatch,{x,0}}.
  {label,123}.
    {line,[{location,"beam_bounds_SUITE.erl",262}]}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{location,"beam_bounds_SUITE.erl",261}]}.
    {badmatch,{x,0}}.
  {label,125}.
    {line,[{location,"beam_bounds_SUITE.erl",259}]}.
    {badmatch,{x,0}}.
  {label,126}.
    {line,[{location,"beam_bounds_SUITE.erl",258}]}.
    {badmatch,{x,0}}.
  {label,127}.
    {line,[{location,"beam_bounds_SUITE.erl",257}]}.
    {badmatch,{x,0}}.
  {label,128}.
    {line,[{location,"beam_bounds_SUITE.erl",255}]}.
    {badmatch,{x,0}}.
  {label,129}.
    {line,[{location,"beam_bounds_SUITE.erl",254}]}.
    {badmatch,{x,0}}.
  {label,130}.
    {line,[{location,"beam_bounds_SUITE.erl",253}]}.
    {badmatch,{x,0}}.


{function, lt_bounds, 1, 132}.
  {label,131}.
    {line,[{location,"beam_bounds_SUITE.erl",271}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,lt_bounds},1}.
  {label,132}.
    {move,{atom,'<'},{x,0}}.
    {call_only,1,{f,232}}. % test_relop/1


{function, le_bounds, 1, 134}.
  {label,133}.
    {line,[{location,"beam_bounds_SUITE.erl",274}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,le_bounds},1}.
  {label,134}.
    {move,{atom,'=<'},{x,0}}.
    {call_only,1,{f,232}}. % test_relop/1


{function, gt_bounds, 1, 136}.
  {label,135}.
    {line,[{location,"beam_bounds_SUITE.erl",277}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,gt_bounds},1}.
  {label,136}.
    {move,{atom,'>'},{x,0}}.
    {call_only,1,{f,232}}. % test_relop/1


{function, ge_bounds, 1, 138}.
  {label,137}.
    {line,[{location,"beam_bounds_SUITE.erl",280}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,ge_bounds},1}.
  {label,138}.
    {move,{atom,'>='},{x,0}}.
    {call_only,1,{f,232}}. % test_relop/1


{function, min_bounds, 1, 140}.
  {label,139}.
    {line,[{location,"beam_bounds_SUITE.erl",283}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_bounds},1}.
  {label,140}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{atom,min},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",284}]}.
    {call,2,{f,196}}. % test_commutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',-10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",286}]}.
    {call,2,{f,152}}. % min_bounds/2
    {test,is_eq_exact,{f,150},[{x,0},{literal,{'-inf',-10}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",287}]}.
    {call,2,{f,152}}. % min_bounds/2
    {test,is_eq_exact,{f,149},[{x,0},{literal,{'-inf',1}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',50}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",288}]}.
    {call,2,{f,152}}. % min_bounds/2
    {test,is_eq_exact,{f,148},[{x,0},{literal,{'-inf',50}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',500}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",289}]}.
    {call,2,{f,152}}. % min_bounds/2
    {test,is_eq_exact,{f,147},[{x,0},{literal,{'-inf',100}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',-10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",291}]}.
    {call,2,{f,152}}. % min_bounds/2
    {test,is_eq_exact,{f,146},[{x,0},{literal,{'-inf',-10}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",292}]}.
    {call,2,{f,152}}. % min_bounds/2
    {test,is_eq_exact,{f,145},[{x,0},{literal,{'-inf',1}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',700}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",293}]}.
    {call,2,{f,152}}. % min_bounds/2
    {test,is_eq_exact,{f,144},[{x,0},{literal,{'-inf',700}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{1,99}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",295}]}.
    {call,2,{f,152}}. % min_bounds/2
    {test,is_eq_exact,{f,143},[{x,0},{literal,{1,99}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{1,100}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",296}]}.
    {call,2,{f,152}}. % min_bounds/2
    {test,is_eq_exact,{f,142},[{x,0},{literal,{1,100}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{150,200}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",297}]}.
    {call,2,{f,152}}. % min_bounds/2
    {test,is_eq_exact,{f,141},[{x,0},{literal,{100,200}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,141}.
    {badmatch,{x,0}}.
  {label,142}.
    {line,[{location,"beam_bounds_SUITE.erl",296}]}.
    {badmatch,{x,0}}.
  {label,143}.
    {line,[{location,"beam_bounds_SUITE.erl",295}]}.
    {badmatch,{x,0}}.
  {label,144}.
    {line,[{location,"beam_bounds_SUITE.erl",293}]}.
    {badmatch,{x,0}}.
  {label,145}.
    {line,[{location,"beam_bounds_SUITE.erl",292}]}.
    {badmatch,{x,0}}.
  {label,146}.
    {line,[{location,"beam_bounds_SUITE.erl",291}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{location,"beam_bounds_SUITE.erl",289}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{location,"beam_bounds_SUITE.erl",288}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{location,"beam_bounds_SUITE.erl",287}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{location,"beam_bounds_SUITE.erl",286}]}.
    {badmatch,{x,0}}.


{function, min_bounds, 2, 152}.
  {label,151}.
    {line,[{location,"beam_bounds_SUITE.erl",301}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_bounds},2}.
  {label,152}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,['-inf']}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,['-inf']},
                             2 => {t_integer,{-10,700}}}}},
                      {{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{99,100}}}}},
                      {{2,{t_integer,{150,150}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{150,150}},
                             2 => {t_integer,{200,200}}}}}],
                     none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},
                             2 =>
                                 {t_union,
                                     {t_atom,['+inf']},
                                     none,
                                     {t_integer,{100,100}},
                                     none,none}}}},
                      {{2,{t_integer,{100,100}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{100,100}},
                             2 => {t_atom,['+inf']}}}}],
                     none}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,min},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",302}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{atom,min},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",303}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,153},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,153}.
    {badmatch,{x,0}}.


{function, max_bounds, 1, 155}.
  {label,154}.
    {line,[{location,"beam_bounds_SUITE.erl",305}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,max_bounds},1}.
  {label,155}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{atom,max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",306}]}.
    {call,2,{f,196}}. % test_commutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',-10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",308}]}.
    {call,2,{f,167}}. % max_bounds/2
    {test,is_eq_exact,{f,165},[{x,0},{literal,{1,100}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",309}]}.
    {call,2,{f,167}}. % max_bounds/2
    {test,is_eq_exact,{f,164},[{x,0},{literal,{1,100}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',50}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",310}]}.
    {call,2,{f,167}}. % max_bounds/2
    {test,is_eq_exact,{f,163},[{x,0},{literal,{1,100}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',500}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",311}]}.
    {call,2,{f,167}}. % max_bounds/2
    {test,is_eq_exact,{f,162},[{x,0},{literal,{1,500}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',-10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",313}]}.
    {call,2,{f,167}}. % max_bounds/2
    {test,is_eq_exact,{f,161},[{x,0},{literal,{1,'+inf'}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",314}]}.
    {call,2,{f,167}}. % max_bounds/2
    {test,is_eq_exact,{f,160},[{x,0},{literal,{1,'+inf'}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',700}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",315}]}.
    {call,2,{f,167}}. % max_bounds/2
    {test,is_eq_exact,{f,159},[{x,0},{literal,{1,'+inf'}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{1,99}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",317}]}.
    {call,2,{f,167}}. % max_bounds/2
    {test,is_eq_exact,{f,158},[{x,0},{literal,{100,'+inf'}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{1,100}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",318}]}.
    {call,2,{f,167}}. % max_bounds/2
    {test,is_eq_exact,{f,157},[{x,0},{literal,{100,'+inf'}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{150,200}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",319}]}.
    {call,2,{f,167}}. % max_bounds/2
    {test,is_eq_exact,{f,156},[{x,0},{literal,{150,'+inf'}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,156}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"beam_bounds_SUITE.erl",318}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"beam_bounds_SUITE.erl",317}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"beam_bounds_SUITE.erl",315}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"beam_bounds_SUITE.erl",314}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"beam_bounds_SUITE.erl",313}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"beam_bounds_SUITE.erl",311}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"beam_bounds_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"beam_bounds_SUITE.erl",309}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"beam_bounds_SUITE.erl",308}]}.
    {badmatch,{x,0}}.


{function, max_bounds, 2, 167}.
  {label,166}.
    {line,[{location,"beam_bounds_SUITE.erl",323}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,max_bounds},2}.
  {label,167}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,['-inf']}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,['-inf']},
                             2 => {t_integer,{-10,700}}}}},
                      {{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{99,100}}}}},
                      {{2,{t_integer,{150,150}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{150,150}},
                             2 => {t_integer,{200,200}}}}}],
                     none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},
                             2 =>
                                 {t_union,
                                     {t_atom,['+inf']},
                                     none,
                                     {t_integer,{100,100}},
                                     none,none}}}},
                      {{2,{t_integer,{100,100}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{100,100}},
                             2 => {t_atom,['+inf']}}}}],
                     none}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",324}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{atom,max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",325}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,168},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,168}.
    {badmatch,{x,0}}.


{function, abs_bounds, 1, 170}.
  {label,169}.
    {line,[{location,"beam_bounds_SUITE.erl",327}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,abs_bounds},1}.
  {label,170}.
    {allocate,0,0}.
    {move,{integer,7},{x,1}}.
    {move,{integer,-7},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",330}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"beam_bounds_SUITE.erl",332}]}.
    {call,2,{f,352}}. % '-abs_bounds/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, abs_bounds_1, 1, 172}.
  {label,171}.
    {line,[{location,"beam_bounds_SUITE.erl",336}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,abs_bounds_1},1}.
  {label,172}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,abs},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",337}]}.
    {call,2,{f,226}}. % min_max_unary_op/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{atom,abs},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",338}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_tuple,{f,174},[{x,0}]}.
    {test,test_arity,{f,174},[{x,0},2]}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_ge,{f,173},[{x,1},{x,2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_ge,{f,173},[{x,1},{x,2}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,173}.
    {test_heap,8,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{atom,bif_abs},{x,0},{x,1}}.
    {trim,2,0}.
    {move,{literal,"~p(~p) evaluates to ~p; should be ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",343}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_min_or_max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",345}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,174}.
    {line,[{location,"beam_bounds_SUITE.erl",338}]}.
    {badmatch,{x,0}}.


{function, infer_lt_gt_bounds, 1, 176}.
  {label,175}.
    {line,[{location,"beam_bounds_SUITE.erl",348}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,infer_lt_gt_bounds},1}.
  {label,176}.
    {allocate,0,0}.
    {move,{literal,{'-inf',0}},{x,1}}.
    {move,{literal,{'-inf',0}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",349}]}.
    {call,2,{f,188}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,186},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{'-inf',-1},{'-inf',0}}}]}.
    {move,{literal,{'-inf',2}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",350}]}.
    {call,2,{f,188}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,185},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{'-inf',1},{'-inf',2}}}]}.
    {move,{literal,{'-inf',-1}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",351}]}.
    {call,2,{f,188}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,184},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{'-inf',-2},{'-inf',-1}}}]}.
    {move,{literal,{1,3}},{x,1}}.
    {move,{literal,{'-inf',2}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",352}]}.
    {call,2,{f,188}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,183},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{'-inf',2},{1,3}}}]}.
    {move,{literal,{3,10}},{x,1}}.
    {move,{literal,{'-inf',2}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",354}]}.
    {call,2,{f,188}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,182},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {atom,any}]}.
    {move,{literal,{3,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',2}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",355}]}.
    {call,2,{f,188}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,181},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {atom,any}]}.
    {move,{literal,{'-inf',84}},{x,1}}.
    {move,{literal,{0,10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",357}]}.
    {call,2,{f,188}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,180},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{0,10},{1,84}}}]}.
    {move,{literal,{'-inf',84}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",358}]}.
    {call,2,{f,188}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,179},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{0,83},{1,84}}}]}.
    {move,{literal,{42,'+inf'}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",360}]}.
    {call,2,{f,188}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,178},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{0,'+inf'},{42,'+inf'}}}]}.
    {move,{literal,{42,'+inf'}},{x,1}}.
    {move,{literal,{100,'+inf'}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",361}]}.
    {call,2,{f,188}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,177},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{100,'+inf'},{101,'+inf'}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,177}.
    {badmatch,{x,0}}.
  {label,178}.
    {line,[{location,"beam_bounds_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,179}.
    {line,[{location,"beam_bounds_SUITE.erl",358}]}.
    {badmatch,{x,0}}.
  {label,180}.
    {line,[{location,"beam_bounds_SUITE.erl",357}]}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{location,"beam_bounds_SUITE.erl",355}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{location,"beam_bounds_SUITE.erl",354}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{location,"beam_bounds_SUITE.erl",352}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{location,"beam_bounds_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{location,"beam_bounds_SUITE.erl",350}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{location,"beam_bounds_SUITE.erl",349}]}.
    {badmatch,{x,0}}.


{function, infer_lt_gt, 2, 188}.
  {label,187}.
    {line,[{location,"beam_bounds_SUITE.erl",367}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,infer_lt_gt},2}.
  {label,188}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,['-inf']}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,['-inf']},2 => {t_integer,{0,2}}}}},
                      {{2,{t_integer,{0,0}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{0,0}},
                             2 =>
                                 {t_union,
                                     {t_atom,['+inf']},
                                     none,
                                     {t_integer,{10,10}},
                                     none,none}}}},
                      {{2,{t_integer,{100,100}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{100,100}},
                             2 => {t_atom,['+inf']}}}}],
                     none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,['-inf']}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,['-inf']},
                             2 => {t_integer,{-1,84}}}}},
                      {{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_integer,{3,3}}}}},
                      {{2,{t_integer,{3,3}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{3,3}},
                             2 =>
                                 {t_union,
                                     {t_atom,['+inf']},
                                     none,
                                     {t_integer,{10,10}},
                                     none,none}}}},
                      {{2,{t_integer,{42,42}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{42,42}},
                             2 => {t_atom,['+inf']}}}}],
                     none}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{atom,'>'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",368}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,189},[{x,0}]}.
    {test,test_arity,{f,192},[{x,0},2]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {move,{atom,'<'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",370}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {test,is_tuple,{f,190},[{x,0}]}.
    {test,test_arity,{f,190},[{x,0},2]}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,190},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},0,{x,2}}.
    {test,is_eq_exact,{f,190},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,189}.
    {test,is_eq_exact,{f,192},[{x,0},{atom,any}]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {trim,3,0}.
    {move,{atom,'<'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",372}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {test,is_eq_exact,{f,191},[{x,0},{atom,any}]}.
    {deallocate,0}.
    return.
  {label,190}.
    {line,[{location,"beam_bounds_SUITE.erl",370}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{location,"beam_bounds_SUITE.erl",372}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{location,"beam_bounds_SUITE.erl",368}]}.
    {case_end,{y,0}}.


{function, test_commutative, 1, 194}.
  {label,193}.
    {line,[{location,"beam_bounds_SUITE.erl",375}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_commutative},1}.
  {label,194}.
    {'%',{var_info,{x,0},[{type,{t_atom,['band','bor','bxor']}}]}}.
    {move,{literal,{0,32}},{x,1}}.
    {call_only,2,{f,196}}. % test_commutative/2


{function, test_commutative, 2, 196}.
  {label,195}.
    {line,[{location,"beam_bounds_SUITE.erl",378}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_commutative},2}.
  {label,196}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{-12,-12}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{-12,-12}},
                             2 => {t_integer,{12,12}}}}},
                      {{2,{t_integer,{0,0}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{0,0}},
                             2 => {t_integer,{32,32}}}}}],
                     none}}]}}.
    {allocate,2,2}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,1},0,{y,0}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",379}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,0},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{y,1},{x,1}}.
    {trim,2,0}.
    {line,[{location,"beam_bounds_SUITE.erl",381}]}.
    {call,4,{f,335}}. % '-test_commutative/2-lc$^0/1-0-'/4
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, test_commutative_1, 3, 198}.
  {label,197}.
    {line,[{location,"beam_bounds_SUITE.erl",388}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_commutative_1},3}.
  {label,198}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {allocate,5,3}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {line,[{location,"beam_bounds_SUITE.erl",389}]}.
    {call,3,{f,215}}. % min_max_op/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,3}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,2}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",390}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,201},[{x,0}]}.
    {test,test_arity,{f,201},[{x,0},2]}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,2}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",391}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_tuple,{f,200},[{x,0}]}.
    {test,test_arity,{f,200},[{x,0},2]}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,200},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{y,0},1,{x,3}}.
    {test,is_eq_exact,{f,200},[{x,2},{x,3}]}.
    {get_tuple_element,{y,1},0,{x,0}}.
    {test,is_ge,{f,199},[{x,0},{x,1}]}.
    {get_tuple_element,{y,1},1,{x,0}}.
    {test,is_ge,{f,199},[{x,3},{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,199}.
    {test_heap,10,0}.
    {put_list,{y,1},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,4},{x,0},{x,1}}.
    {trim,5,0}.
    {move,{literal,"~p(~p, ~p) evaluates to ~p; should be ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",396}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_min_or_max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",398}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,200}.
    {line,[{location,"beam_bounds_SUITE.erl",391}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{location,"beam_bounds_SUITE.erl",390}]}.
    {badmatch,{y,0}}.


{function, test_noncommutative, 2, 203}.
  {label,202}.
    {line,[{location,"beam_bounds_SUITE.erl",401}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_noncommutative},2}.
  {label,203}.
    {'%',{var_info,{x,0},[{type,{t_atom,['-','div','rem']}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{-12,-12}},
                                     2 => {t_integer,{12,12}}}}}]}}.
    {move,{literal,{-12,12}},{x,2}}.
    {call_only,3,{f,205}}. % test_noncommutative/3


{function, test_noncommutative, 3, 205}.
  {label,204}.
    {line,[{location,"beam_bounds_SUITE.erl",404}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_noncommutative},3}.
  {label,205}.
    {'%',{var_info,{x,0},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{-12,-12}},
                                     2 => {t_integer,{12,12}}}}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{-12,-12}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{-12,-12}},
                             2 => {t_integer,{12,12}}}}},
                      {{2,{t_integer,{-7,-7}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{-7,-7}},
                             2 => {t_integer,{7,7}}}}},
                      {{2,{t_integer,{0,0}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{0,0}},2 => {t_integer,{7,7}}}}}],
                     none}}]}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{integer,12},{x,1}}.
    {move,{integer,-12},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",405}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {get_tuple_element,{y,1},0,{y,0}}.
    {get_tuple_element,{y,1},1,{x,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",406}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,0},{x,3}}.
    {move,{integer,-12},{x,2}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,1}}.
    {move,{x,0},{x,5}}.
    {move,{y,1},{x,0}}.
    {trim,3,0}.
    {line,[{location,"beam_bounds_SUITE.erl",408}]}.
    {call,6,{f,319}}. % '-test_noncommutative/3-lc$^0/1-0-'/6
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, test_noncommutative_1, 3, 207}.
  {label,206}.
    {line,[{location,"beam_bounds_SUITE.erl",414}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_noncommutative_1},3}.
  {label,207}.
    {'%',{var_info,{x,0},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {allocate,4,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"beam_bounds_SUITE.erl",415}]}.
    {call,3,{f,215}}. % min_max_op/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,3}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",416}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_tuple,{f,209},[{x,0}]}.
    {test,test_arity,{f,213},[{x,0},2]}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_ge,{f,208},[{x,1},{x,2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_lt,{f,211},[{x,1},{x,2}]}.
  {label,208}.
    {test_heap,10,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,1}}.
    {trim,4,0}.
    {move,{literal,"~p(~p, ~p) evaluates to ~p; should be ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",425}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_min_or_max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",427}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,209}.
    {test,is_eq_exact,{f,213},[{x,0},{atom,any}]}.
    {select_val,{tr,{y,3},{t_atom,['-','bsl','bsr','div','rem']}},
                {f,212},
                {list,[{atom,'div'},{f,210},{atom,'rem'},{f,210}]}}.
  {label,210}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{y,1},{t_tuple,2,true,#{1 => {t_number,any}}}},
           {literal,{0,0}}]}.
  {label,211}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,212}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,1}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",418}]}.
    {case_end,{x,0}}.
  {label,213}.
    {line,[{location,"beam_bounds_SUITE.erl",416}]}.
    {case_end,{x,0}}.


{function, min_max_op, 3, 215}.
  {label,214}.
    {line,[{location,"beam_bounds_SUITE.erl",430}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_max_op},3}.
  {label,215}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,4}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{literal,{infinity,-16777216}},{x,5}}.
    {swap,{x,1},{x,2}}.
    {call_only,6,{f,217}}. % min_max_op_1/6


{function, min_max_op_1, 6, 217}.
  {label,216}.
    {line,[{location,"beam_bounds_SUITE.erl",433}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_max_op_1},6}.
  {label,217}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,5},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_ge,{f,218},[{x,2},{tr,{x,1},{t_number,any}}]}.
    {allocate,5,6}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,3}}.
    {move,{x,5},{x,4}}.
    {line,[{location,"beam_bounds_SUITE.erl",434}]}.
    {call,5,{f,220}}. % min_max_op_2/5
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",435}]}.
    {gc_bif,'+',{f,0},1,[{tr,{y,3},{t_number,any}},{integer,1}],{x,1}}.
    {move,{y,0},{x,4}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{x,0},{x,5}}.
    {move,{y,4},{x,0}}.
    {call_last,6,{f,217},5}. % min_max_op_1/6
  {label,218}.
    {move,{x,5},{x,0}}.
    return.


{function, min_max_op_2, 5, 220}.
  {label,219}.
    {line,[{location,"beam_bounds_SUITE.erl",439}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_max_op_2},5}.
  {label,220}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,4},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,{f,222},[{tr,{x,2},{t_number,any}},{integer,0}]}.
    {select_val,{tr,{x,0},{t_atom,any}},
                {f,222},
                {list,[{atom,'div'},{f,221},{atom,'rem'},{f,221}]}}.
  {label,221}.
    {move,{integer,1},{x,2}}.
    {call_only,5,{f,220}}. % min_max_op_2/5
  {label,222}.
    {test,is_ge,{f,224},[{x,3},{tr,{x,2},{t_number,any}}]}.
    {allocate,5,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,0},{x,3}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{atom,erlang},{x,2}}.
    {line,[{location,"beam_bounds_SUITE.erl",442}]}.
    {apply,2}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_ge,{f,223},[{x,0},{x,1}]}.
    {test,is_ge,{f,223},[{x,2},{x,0}]}.
    {line,[{location,"beam_bounds_SUITE.erl",445}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,2},{t_number,any}},{integer,1}],{x,2}}.
    {move,{y,0},{x,4}}.
    {move,{y,1},{x,3}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,0}}.
    {call_last,5,{f,220},5}. % min_max_op_2/5
  {label,223}.
    {line,[{location,"beam_bounds_SUITE.erl",447}]}.
    {gc_bif,'+',{f,0},3,[{tr,{y,2},{t_number,any}},{integer,1}],{x,3}}.
    {test_heap,3,4}.
    {bif,min,{f,0},[{x,1},{x,0}],{x,1}}.
    {bif,max,{f,0},[{x,2},{x,0}],{x,0}}.
    {put_tuple2,{x,4},{list,[{x,1},{x,0}]}}.
    {move,{x,3},{x,2}}.
    {move,{y,1},{x,3}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,0}}.
    {call_last,5,{f,220},5}. % min_max_op_2/5
  {label,224}.
    {move,{x,4},{x,0}}.
    return.


{function, min_max_unary_op, 2, 226}.
  {label,225}.
    {line,[{location,"beam_bounds_SUITE.erl",452}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_max_unary_op},2}.
  {label,226}.
    {'%',{var_info,{x,0},[{type,{t_atom,[abs,'bnot']}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{literal,{infinity,-16777216}},{x,3}}.
    {swap,{x,1},{x,2}}.
    {call_only,4,{f,228}}. % min_max_unary_op_1/4


{function, min_max_unary_op_1, 4, 228}.
  {label,227}.
    {line,[{location,"beam_bounds_SUITE.erl",455}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_max_unary_op_1},4}.
  {label,228}.
    {'%',{var_info,{x,0},[{type,{t_atom,[abs,'bnot']}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_ge,{f,230},[{x,2},{tr,{x,1},{t_number,any}}]}.
    {allocate,4,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{atom,erlang},{x,1}}.
    {line,[{location,"beam_bounds_SUITE.erl",456}]}.
    {apply,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_ge,{f,229},[{x,0},{x,1}]}.
    {test,is_ge,{f,229},[{x,2},{x,0}]}.
    {line,[{location,"beam_bounds_SUITE.erl",459}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,2},{t_number,any}},{integer,1}],{x,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,3},{x,0}}.
    {call_last,4,{f,228},4}. % min_max_unary_op_1/4
  {label,229}.
    {line,[{location,"beam_bounds_SUITE.erl",461}]}.
    {gc_bif,'+',{f,0},3,[{tr,{y,2},{t_number,any}},{integer,1}],{x,3}}.
    {test_heap,3,4}.
    {bif,min,{f,0},[{x,1},{x,0}],{x,1}}.
    {bif,max,{f,0},[{x,2},{x,0}],{x,0}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {move,{y,1},{x,2}}.
    {move,{x,3},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{y,3},{x,0}}.
    {call_last,4,{f,228},4}. % min_max_unary_op_1/4
  {label,230}.
    {move,{x,3},{x,0}}.
    return.


{function, test_relop, 1, 232}.
  {label,231}.
    {line,[{location,"beam_bounds_SUITE.erl",466}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_relop},1}.
  {label,232}.
    {'%',{var_info,{x,0},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,15},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",468}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {line,[{location,"beam_bounds_SUITE.erl",470}]}.
    {call,3,{f,303}}. % '-test_relop/1-lc$^0/1-0-'/3
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, test_relop_1, 3, 234}.
  {label,233}.
    {line,[{location,"beam_bounds_SUITE.erl",476}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_relop_1},3}.
  {label,234}.
    {'%',{var_info,{x,0},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{}}}]}}.
    {allocate,4,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"beam_bounds_SUITE.erl",477}]}.
    {call,3,{f,250}}. % rel_op/3
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,3}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",478}]}.
    {call_ext,3,{extfunc,beam_bounds,relop,3}}.
    {test,is_eq_exact,{f,235},[{x,0},{y,0}]}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {call_last,4,{f,237},4}. % test_infer_relop/4
  {label,235}.
    {test_heap,10,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,1}}.
    {trim,4,0}.
    {move,{literal,"~p(~p, ~p) evaluates to ~p; should be ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",482}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_bool_result},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",484}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.


{function, test_infer_relop, 4, 237}.
  {label,236}.
    {line,[{location,"beam_bounds_SUITE.erl",487}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_infer_relop},4}.
  {label,237}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_tuple,2,true,#{}}}]}}.
    {select_val,{x,0},
                {f,236},
                {list,[{atom,false},
                       {f,242},
                       {atom,'maybe'},
                       {f,239},
                       {atom,true},
                       {f,238}]}}.
  {label,238}.
    {allocate,0,4}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {line,[{location,"beam_bounds_SUITE.erl",488}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {test,is_eq_exact,{f,243},[{x,0},{atom,any}]}.
    {deallocate,0}.
    return.
  {label,239}.
    {allocate,9,4}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {move,{x,3},{y,6}}.
    {move,{x,2},{y,7}}.
    {move,{x,1},{y,8}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {line,[{location,"beam_bounds_SUITE.erl",492}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {test,is_tuple,{f,244},[{x,0}]}.
    {test,test_arity,{f,244},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{y,5}}.
    {test,is_tuple,{f,244},[{y,5}]}.
    {test,test_arity,{f,244},[{y,5},2]}.
    {get_tuple_element,{x,0},1,{y,4}}.
    {test,is_tuple,{f,244},[{y,4}]}.
    {test,test_arity,{f,244},[{y,4},2]}.
    {get_tuple_element,{y,5},0,{x,0}}.
    {get_tuple_element,{y,5},1,{x,1}}.
    {get_tuple_element,{y,6},0,{y,3}}.
    {get_tuple_element,{y,6},1,{y,2}}.
    {get_tuple_element,{y,7},0,{y,1}}.
    {get_tuple_element,{y,7},1,{y,0}}.
    {test,is_ge,{f,240},[{x,1},{x,0}]}.
    {get_tuple_element,{y,4},0,{x,2}}.
    {get_tuple_element,{y,4},1,{x,3}}.
    {test,is_ge,{f,240},[{x,3},{x,2}]}.
    {test,is_ge,{f,240},[{x,0},{y,1}]}.
    {test,is_ge,{f,240},[{y,0},{x,1}]}.
    {test,is_ge,{f,240},[{x,2},{y,3}]}.
    {test,is_lt,{f,241},[{y,2},{x,3}]}.
  {label,240}.
    {test_heap,8,0}.
    {put_list,{y,4},nil,{x,0}}.
    {put_list,{y,5},{x,0},{x,0}}.
    {put_list,{y,6},{x,0},{x,0}}.
    {put_list,{y,7},{x,0},{x,1}}.
    {move,{literal,"~p ~p infers as ~p ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",497}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,ranges_grew},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",499}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,241}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {trim,2,7}.
    {line,[{location,"beam_bounds_SUITE.erl",511}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,0},{x,4}}.
    {move,{y,1},{x,5}}.
    {move,{y,2},{x,6}}.
    {move,{y,3},{x,7}}.
    {move,{y,4},{x,3}}.
    {move,{y,5},{x,2}}.
    {move,{y,6},{x,1}}.
    {trim,7,0}.
    {call,8,{f,291}}. % '-test_infer_relop/4-lc$^0/1-0-'/8
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,242}.
    {allocate,0,4}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {line,[{location,"beam_bounds_SUITE.erl",490}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {test,is_eq_exact,{f,245},[{x,0},{atom,none}]}.
    {deallocate,0}.
    return.
  {label,243}.
    {line,[{location,"beam_bounds_SUITE.erl",488}]}.
    {badmatch,{x,0}}.
  {label,244}.
    {line,[{location,"beam_bounds_SUITE.erl",492}]}.
    {badmatch,{x,0}}.
  {label,245}.
    {line,[{location,"beam_bounds_SUITE.erl",490}]}.
    {badmatch,{x,0}}.


{function, in_range, 2, 247}.
  {label,246}.
    {line,[{location,"beam_bounds_SUITE.erl",516}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,in_range},2}.
  {label,247}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_ge,{f,248},[{x,0},{x,2}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {bif,'>=',{f,0},[{x,1},{x,0}],{x,0}}.
    return.
  {label,248}.
    {move,{atom,false},{x,0}}.
    return.


{function, rel_op, 3, 250}.
  {label,249}.
    {line,[{location,"beam_bounds_SUITE.erl",519}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,rel_op},3}.
  {label,250}.
    {'%',{var_info,{x,0},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,4}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{atom,none},{x,5}}.
    {swap,{x,1},{x,2}}.
    {call_only,6,{f,252}}. % rel_op_1/6


{function, rel_op_1, 6, 252}.
  {label,251}.
    {line,[{location,"beam_bounds_SUITE.erl",522}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,rel_op_1},6}.
  {label,252}.
    {'%',{var_info,{x,0},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_ge,{f,253},[{x,2},{x,1}]}.
    {allocate,5,6}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,3}}.
    {move,{x,5},{x,4}}.
    {line,[{location,"beam_bounds_SUITE.erl",523}]}.
    {call,5,{f,255}}. % rel_op_2/5
    {line,[{location,"beam_bounds_SUITE.erl",524}]}.
    {gc_bif,'+',{f,0},1,[{y,3},{integer,1}],{x,1}}.
    {move,{y,0},{x,4}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{x,0},{x,5}}.
    {move,{y,4},{x,0}}.
    {call_last,6,{f,252},5}. % rel_op_1/6
  {label,253}.
    {move,{x,5},{x,0}}.
    return.


{function, rel_op_2, 5, 255}.
  {label,254}.
    {line,[{location,"beam_bounds_SUITE.erl",528}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,rel_op_2},5}.
  {label,255}.
    {'%',{var_info,{x,0},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_ge,{f,258},[{x,3},{x,2}]}.
    {allocate,5,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,0},{x,3}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{atom,erlang},{x,2}}.
    {line,[{location,"beam_bounds_SUITE.erl",529}]}.
    {apply,2}.
    {test,is_ne_exact,{f,257},[{y,0},{atom,none}]}.
    {test,is_eq_exact,{f,256},[{y,0},{x,0}]}.
    {move,{y,0},{x,0}}.
    {jump,{f,257}}.
  {label,256}.
    {move,{atom,'maybe'},{x,0}}.
  {label,257}.
    {line,[{location,"beam_bounds_SUITE.erl",535}]}.
    {gc_bif,'+',{f,0},1,[{y,2},{integer,1}],{x,2}}.
    {move,{y,1},{x,3}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{x,4}}.
    {move,{y,4},{x,0}}.
    {call_last,5,{f,255},5}. % rel_op_2/5
  {label,258}.
    {move,{x,4},{x,0}}.
    return.


{function, redundant_masking, 1, 260}.
  {label,259}.
    {line,[{location,"beam_bounds_SUITE.erl",539}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,redundant_masking},1}.
  {label,260}.
    {allocate,0,0}.
    {move,{integer,15},{x,1}}.
    {move,{integer,-7},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",542}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"beam_bounds_SUITE.erl",544}]}.
    {call,2,{f,279}}. % '-redundant_masking/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{integer,255},{x,1}}.
    {move,{literal,{'-inf',10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",548}]}.
    {call_ext,2,{extfunc,beam_bounds,is_masking_redundant,2}}.
    {test,is_eq_exact,{f,262},[{x,0},{atom,false}]}.
    {move,{integer,255},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",549}]}.
    {call_ext,2,{extfunc,beam_bounds,is_masking_redundant,2}}.
    {test,is_eq_exact,{f,261},[{x,0},{atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,261}.
    {badmatch,{x,0}}.
  {label,262}.
    {line,[{location,"beam_bounds_SUITE.erl",548}]}.
    {badmatch,{x,0}}.


{function, test_redundant_masking, 2, 264}.
  {label,263}.
    {line,[{location,"beam_bounds_SUITE.erl",552}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_redundant_masking},2}.
  {label,264}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {allocate,5,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {get_tuple_element,{x,0},0,{y,2}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {move,{x,1},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",553}]}.
    {call,3,{f,269}}. % test_redundant_masking/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {move,{y,4},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",554}]}.
    {call_ext,2,{extfunc,beam_bounds,is_masking_redundant,2}}.
    {test,is_ne_exact,{f,266},[{x,0},{tr,{y,0},{t_atom,[false,true]}}]}.
    {test,is_eq_exact,{f,267},[{x,0},{atom,false}]}.
    {gc_bif,'+',{f,265},1,[{y,3},{integer,1}],{x,1}}.
    {gc_bif,'band',
            {f,265},
            2,
            [{tr,{y,3},{t_number,any}},{tr,{x,1},{t_number,any}}],
            {x,1}}.
    {test,is_eq_exact,{f,266},[{tr,{x,1},{t_integer,any}},{integer,0}]}.
  {label,265}.
    {test,is_eq_exact,{f,267},[{tr,{y,2},{t_number,any}},{y,1}]}.
  {label,266}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,267}.
    {test_heap,8,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,4},{x,0},{x,1}}.
    {trim,5,0}.
    {move,{literal,"beam_bounds:is_masking_redundant(~p, ~p) evaluates to ~p; should be ~p\n"},
          {x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",563}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_boolean},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",566}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.


{function, test_redundant_masking, 3, 269}.
  {label,268}.
    {line,[{location,"beam_bounds_SUITE.erl",569}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_redundant_masking},3}.
  {label,269}.
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_ge,{f,271},[{x,1},{tr,{x,0},{t_number,any}}]}.
    {line,[{location,"beam_bounds_SUITE.erl",570}]}.
    {gc_bif,'band',{f,0},3,[{tr,{x,0},{t_number,any}},{x,2}],{x,3}}.
    {test,is_eq_exact,
          {f,270},
          [{tr,{x,3},{t_integer,any}},{tr,{x,0},{t_integer,any}}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,0},{t_integer,any}},{integer,1}],{x,0}}.
    {call_only,3,{f,269}}. % test_redundant_masking/3
  {label,270}.
    {move,{atom,false},{x,0}}.
    return.
  {label,271}.
    {move,{atom,true},{x,0}}.
    return.


{function, id, 1, 273}.
  {label,272}.
    {line,[{location,"beam_bounds_SUITE.erl",575}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,id},1}.
  {label,273}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false,true]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    return.


{function, module_info, 0, 275}.
  {label,274}.
    {line,[]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,module_info},0}.
  {label,275}.
    {move,{atom,beam_bounds_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 277}.
  {label,276}.
    {line,[]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,module_info},1}.
  {label,277}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_bounds_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-redundant_masking/1-lc$^0/1-0-', 2, 279}.
  {label,278}.
    {line,[{location,"beam_bounds_SUITE.erl",544}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-redundant_masking/1-lc$^0/1-0-'},
               2}.
  {label,279}.
    {test,is_nonempty_list,{f,280},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",545}]}.
    {gc_bif,'-',{f,0},3,[{x,2},{integer,-7}],{x,3}}.
    {allocate,3,4}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,3},{x,0}}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,283},3}. % '-redundant_masking/1-lc$^1/1-1-'/4
  {label,280}.
    {test,is_nil,{f,281},[{x,0}]}.
    return.
  {label,281}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",544}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-redundant_masking/1-lc$^1/1-1-', 4, 283}.
  {label,282}.
    {line,[{location,"beam_bounds_SUITE.erl",545}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-redundant_masking/1-lc$^1/1-1-'},
               4}.
  {label,283}.
    {'%',{var_info,{x,2},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,284},[{x,0}]}.
    {get_list,{x,0},{x,4},{x,0}}.
    {move,{x,3},{x,5}}.
    {swap,{x,0},{x,3}}.
    {call_only,6,{f,287}}. % '-redundant_masking/1-lc$^2/1-2-'/6
  {label,284}.
    {test,is_nil,{f,285},[{x,0}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,279}}. % '-redundant_masking/1-lc$^0/1-0-'/2
  {label,285}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-redundant_masking/1-lc$^2/1-2-', 6, 287}.
  {label,286}.
    {line,[{location,"beam_bounds_SUITE.erl",546}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-redundant_masking/1-lc$^2/1-2-'},
               6}.
  {label,287}.
    {'%',{var_info,{x,2},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,288},[{x,0}]}.
    {allocate_heap,6,3,6}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{x,2},{y,4}}.
    {move,{x,1},{y,5}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",543}]}.
    {call,2,{f,264}}. % test_redundant_masking/2
    {move,{y,1},{x,5}}.
    {move,{y,2},{x,4}}.
    {move,{y,3},{x,3}}.
    {move,{y,4},{x,2}}.
    {move,{y,5},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,6,{f,287},6}. % '-redundant_masking/1-lc$^2/1-2-'/6
  {label,288}.
    {test,is_nil,{f,289},[{x,0}]}.
    {move,{x,3},{x,0}}.
    {move,{x,5},{x,3}}.
    {call_only,4,{f,283}}. % '-redundant_masking/1-lc$^1/1-1-'/4
  {label,289}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",546}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_infer_relop/4-lc$^0/1-0-', 8, 291}.
  {label,290}.
    {line,[{location,"beam_bounds_SUITE.erl",511}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_infer_relop/4-lc$^0/1-0-'},
               8}.
  {label,291}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,6},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_nonempty_list,{f,292},[{x,0}]}.
    {allocate,9,8}.
    {move,{x,7},{y,2}}.
    {move,{x,6},{y,3}}.
    {move,{x,5},{y,4}}.
    {move,{x,4},{y,5}}.
    {move,{x,3},{y,6}}.
    {move,{x,2},{y,7}}.
    {move,{x,1},{y,8}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{x,4},{x,1}}.
    {move,{x,5},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",512}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,0},{x,8}}.
    {move,{y,1},{x,9}}.
    {move,{y,2},{x,7}}.
    {move,{y,3},{x,6}}.
    {move,{y,4},{x,5}}.
    {move,{y,5},{x,4}}.
    {move,{y,6},{x,3}}.
    {move,{y,7},{x,2}}.
    {move,{y,8},{x,1}}.
    {call_last,10,{f,295},9}. % '-test_infer_relop/4-lc$^1/1-1-'/10
  {label,292}.
    {test,is_nil,{f,293},[{x,0}]}.
    return.
  {label,293}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",511}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_infer_relop/4-lc$^1/1-1-', 10, 295}.
  {label,294}.
    {line,[{location,"beam_bounds_SUITE.erl",512}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_infer_relop/4-lc$^1/1-1-'},
               10}.
  {label,295}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,6},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_nonempty_list,{f,300},[{x,0}]}.
    {allocate,11,10}.
    {move,{x,9},{y,2}}.
    {move,{x,8},{y,3}}.
    {move,{x,7},{y,4}}.
    {move,{x,6},{y,5}}.
    {move,{x,5},{y,6}}.
    {move,{x,4},{y,7}}.
    {move,{x,3},{y,8}}.
    {move,{x,2},{y,9}}.
    {move,{x,1},{y,10}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{atom,erlang},{x,2}}.
    {move,{x,1},{x,3}}.
    {move,{y,1},{x,1}}.
    {move,{x,9},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",513}]}.
    {apply,2}.
    {select_val,{x,0},
                {f,299},
                {list,[{atom,false},{f,298},{atom,true},{f,296}]}}.
  {label,296}.
    {move,{y,4},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",502}]}.
    {call,2,{f,247}}. % in_range/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,297},[{x,0},{atom,true}]}.
    {move,{y,5},{x,1}}.
    {move,{y,1},{x,0}}.
    {call,2,{f,247}}. % in_range/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ne_exact,{f,298},[{x,0},{atom,true}]}.
  {label,297}.
    {test_heap,4,0}.
    {put_list,{y,1},nil,{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,"X = ~p; Y = ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",506}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,8,0}.
    {put_list,{y,5},nil,{x,0}}.
    {put_list,{y,4},{x,0},{x,0}}.
    {put_list,{y,8},{x,0},{x,0}}.
    {put_list,{y,9},{x,0},{x,1}}.
    {move,{literal,"~p ~p infers as ~p ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",507}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_inference},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",509}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,298}.
    {move,{y,2},{x,9}}.
    {move,{y,3},{x,8}}.
    {move,{y,4},{x,7}}.
    {move,{y,5},{x,6}}.
    {move,{y,6},{x,5}}.
    {move,{y,7},{x,4}}.
    {move,{y,8},{x,3}}.
    {move,{y,9},{x,2}}.
    {move,{y,10},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,10,{f,295},11}. % '-test_infer_relop/4-lc$^1/1-1-'/10
  {label,299}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",513}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},11}.
  {label,300}.
    {test,is_nil,{f,301},[{x,0}]}.
    {move,{x,8},{x,0}}.
    {call_only,8,{f,291}}. % '-test_infer_relop/4-lc$^0/1-0-'/8
  {label,301}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",512}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_relop/1-lc$^0/1-0-', 3, 303}.
  {label,302}.
    {line,[{location,"beam_bounds_SUITE.erl",470}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-test_relop/1-lc$^0/1-0-'},3}.
  {label,303}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_nonempty_list,{f,304},[{x,0}]}.
    {allocate,4,3}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",471}]}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,4}}.
    {move,{y,3},{x,1}}.
    {call_last,5,{f,307},4}. % '-test_relop/1-lc$^1/1-1-'/5
  {label,304}.
    {test,is_nil,{f,305},[{x,0}]}.
    return.
  {label,305}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",470}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_relop/1-lc$^1/1-1-', 5, 307}.
  {label,306}.
    {line,[{location,"beam_bounds_SUITE.erl",471}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-test_relop/1-lc$^1/1-1-'},5}.
  {label,307}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_nonempty_list,{f,308},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,0}}.
    {move,{x,4},{x,6}}.
    {swap,{x,0},{x,4}}.
    {call_only,7,{f,311}}. % '-test_relop/1-lc$^2/1-2-'/7
  {label,308}.
    {test,is_nil,{f,309},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {move,{x,4},{x,2}}.
    {call_only,3,{f,303}}. % '-test_relop/1-lc$^0/1-0-'/3
  {label,309}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_relop/1-lc$^2/1-2-', 7, 311}.
  {label,310}.
    {line,[{location,"beam_bounds_SUITE.erl",472}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-test_relop/1-lc$^2/1-2-'},7}.
  {label,311}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_nonempty_list,{f,312},[{x,0}]}.
    {allocate,8,7}.
    {move,{x,6},{y,2}}.
    {move,{x,5},{y,3}}.
    {move,{x,4},{y,4}}.
    {move,{x,3},{y,5}}.
    {move,{x,2},{y,6}}.
    {move,{x,1},{y,7}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{x,6},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",473}]}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,0},{x,6}}.
    {move,{y,1},{x,7}}.
    {move,{y,2},{x,8}}.
    {move,{y,3},{x,5}}.
    {move,{y,4},{x,4}}.
    {move,{y,5},{x,3}}.
    {move,{y,6},{x,2}}.
    {move,{y,7},{x,1}}.
    {call_last,9,{f,315},8}. % '-test_relop/1-lc$^3/1-3-'/9
  {label,312}.
    {test,is_nil,{f,313},[{x,0}]}.
    {move,{x,4},{x,0}}.
    {move,{x,6},{x,4}}.
    {call_only,5,{f,307}}. % '-test_relop/1-lc$^1/1-1-'/5
  {label,313}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",472}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_relop/1-lc$^3/1-3-', 9, 315}.
  {label,314}.
    {line,[{location,"beam_bounds_SUITE.erl",473}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-test_relop/1-lc$^3/1-3-'},9}.
  {label,315}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_nonempty_list,{f,316},[{x,0}]}.
    {allocate_heap,9,6,9}.
    {move,{x,8},{y,1}}.
    {move,{x,7},{y,2}}.
    {move,{x,6},{y,3}}.
    {move,{x,5},{y,4}}.
    {move,{x,4},{y,5}}.
    {move,{x,3},{y,6}}.
    {move,{x,2},{y,7}}.
    {move,{x,1},{y,8}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {put_tuple2,{x,1},{list,[{x,3},{x,5}]}}.
    {put_tuple2,{x,2},{list,[{x,7},{x,0}]}}.
    {move,{y,8},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",469}]}.
    {call,3,{f,234}}. % test_relop_1/3
    {move,{y,1},{x,8}}.
    {move,{y,2},{x,7}}.
    {move,{y,3},{x,6}}.
    {move,{y,4},{x,5}}.
    {move,{y,5},{x,4}}.
    {move,{y,6},{x,3}}.
    {move,{y,7},{x,2}}.
    {move,{y,8},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,9,{f,315},9}. % '-test_relop/1-lc$^3/1-3-'/9
  {label,316}.
    {test,is_nil,{f,317},[{x,0}]}.
    {move,{x,6},{x,0}}.
    {move,{x,8},{x,6}}.
    {call_only,7,{f,311}}. % '-test_relop/1-lc$^2/1-2-'/7
  {label,317}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",473}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_noncommutative/3-lc$^0/1-0-', 6, 319}.
  {label,318}.
    {line,[{location,"beam_bounds_SUITE.erl",408}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_noncommutative/3-lc$^0/1-0-'},
               6}.
  {label,319}.
    {'%',{var_info,{x,1},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,-12}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{-12,0}}}]}}.
    {test,is_nonempty_list,{f,320},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",409}]}.
    {gc_bif,'-',{f,0},6,[{x,2},{integer,-12}],{x,6}}.
    {allocate,6,7}.
    {move,{x,5},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{x,3},{y,4}}.
    {move,{x,1},{y,5}}.
    {move,{x,4},{x,1}}.
    {move,{x,6},{x,0}}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,1},{x,6}}.
    {move,{y,2},{x,5}}.
    {move,{y,3},{x,4}}.
    {move,{y,4},{x,3}}.
    {move,{integer,-12},{x,2}}.
    {move,{y,0},{x,7}}.
    {move,{y,5},{x,1}}.
    {call_last,8,{f,323},6}. % '-test_noncommutative/3-lc$^1/1-1-'/8
  {label,320}.
    {test,is_nil,{f,321},[{x,0}]}.
    return.
  {label,321}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",408}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_noncommutative/3-lc$^1/1-1-', 8, 323}.
  {label,322}.
    {line,[{location,"beam_bounds_SUITE.erl",409}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_noncommutative/3-lc$^1/1-1-'},
               8}.
  {label,323}.
    {'%',{var_info,{x,1},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,-12}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,324},[{x,0}]}.
    {get_list,{x,0},{x,8},{x,0}}.
    {move,{x,7},{x,9}}.
    {swap,{x,8},{x,7}}.
    {swap,{x,6},{x,8}}.
    {swap,{x,0},{x,6}}.
    {call_only,10,{f,327}}. % '-test_noncommutative/3-lc$^2/1-2-'/10
  {label,324}.
    {test,is_nil,{f,325},[{x,0}]}.
    {move,{x,7},{x,5}}.
    {move,{x,4},{x,0}}.
    {move,{x,6},{x,4}}.
    {call_only,6,{f,319}}. % '-test_noncommutative/3-lc$^0/1-0-'/6
  {label,325}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_noncommutative/3-lc$^2/1-2-', 10, 327}.
  {label,326}.
    {line,[{location,"beam_bounds_SUITE.erl",410}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_noncommutative/3-lc$^2/1-2-'},
               10}.
  {label,327}.
    {'%',{var_info,{x,1},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,-12}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,328},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",411}]}.
    {gc_bif,'-',{f,0},10,[{x,2},{tr,{x,3},{t_integer,{-12,0}}}],{x,10}}.
    {allocate,10,11}.
    {move,{x,9},{y,0}}.
    {move,{x,8},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{x,7},{y,4}}.
    {move,{x,6},{y,5}}.
    {move,{x,5},{y,6}}.
    {move,{x,4},{y,7}}.
    {move,{x,3},{y,8}}.
    {move,{x,1},{y,9}}.
    {move,{x,9},{x,1}}.
    {move,{x,10},{x,0}}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,1},{x,10}}.
    {move,{y,2},{x,9}}.
    {move,{y,3},{x,8}}.
    {move,{y,4},{x,7}}.
    {move,{y,5},{x,6}}.
    {move,{y,6},{x,5}}.
    {move,{y,7},{x,4}}.
    {move,{y,8},{x,3}}.
    {move,{integer,-12},{x,2}}.
    {move,{y,0},{x,11}}.
    {move,{y,9},{x,1}}.
    {call_last,12,{f,331},10}. % '-test_noncommutative/3-lc$^3/1-3-'/12
  {label,328}.
    {test,is_nil,{f,329},[{x,0}]}.
    {move,{x,9},{x,7}}.
    {move,{x,6},{x,0}}.
    {move,{x,8},{x,6}}.
    {call_only,8,{f,323}}. % '-test_noncommutative/3-lc$^1/1-1-'/8
  {label,329}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",410}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_noncommutative/3-lc$^3/1-3-', 12, 331}.
  {label,330}.
    {line,[{location,"beam_bounds_SUITE.erl",411}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_noncommutative/3-lc$^3/1-3-'},
               12}.
  {label,331}.
    {'%',{var_info,{x,1},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,-12}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,9},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,332},[{x,0}]}.
    {allocate_heap,11,6,12}.
    {move,{x,11},{y,1}}.
    {move,{x,10},{y,2}}.
    {move,{x,9},{y,3}}.
    {move,{x,8},{y,4}}.
    {move,{x,7},{y,5}}.
    {move,{x,6},{y,6}}.
    {move,{x,5},{y,7}}.
    {move,{x,4},{y,8}}.
    {move,{x,3},{y,9}}.
    {move,{x,1},{y,10}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {put_tuple2,{x,1},{list,[{x,5},{x,7}]}}.
    {put_tuple2,{x,2},{list,[{x,9},{x,0}]}}.
    {move,{y,10},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",407}]}.
    {call,3,{f,207}}. % test_noncommutative_1/3
    {move,{y,3},{x,9}}.
    {move,{y,4},{x,8}}.
    {move,{y,5},{x,7}}.
    {move,{y,6},{x,6}}.
    {move,{y,7},{x,5}}.
    {move,{y,8},{x,4}}.
    {move,{y,9},{x,3}}.
    {move,{integer,-12},{x,2}}.
    {move,{y,1},{x,11}}.
    {move,{y,2},{x,10}}.
    {move,{y,10},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,12,{f,331},11}. % '-test_noncommutative/3-lc$^3/1-3-'/12
  {label,332}.
    {test,is_nil,{f,333},[{x,0}]}.
    {move,{x,11},{x,9}}.
    {move,{x,8},{x,0}}.
    {move,{x,10},{x,8}}.
    {call_only,10,{f,327}}. % '-test_noncommutative/3-lc$^2/1-2-'/10
  {label,333}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",411}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_commutative/2-lc$^0/1-0-', 4, 335}.
  {label,334}.
    {line,[{location,"beam_bounds_SUITE.erl",381}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_commutative/2-lc$^0/1-0-'},
               4}.
  {label,335}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,0}}}]}}.
    {test,is_nonempty_list,{f,336},[{x,0}]}.
    {get_list,{x,0},{x,4},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",382}]}.
    {gc_bif,'-',{f,0},5,[{x,4},{tr,{x,2},{t_integer,{-12,0}}}],{x,5}}.
    {allocate,5,6}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,3},{x,1}}.
    {move,{x,5},{x,0}}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,0},{x,5}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,3}}.
    {move,{y,3},{x,2}}.
    {move,{y,4},{x,1}}.
    {call_last,6,{f,339},5}. % '-test_commutative/2-lc$^1/1-1-'/6
  {label,336}.
    {test,is_nil,{f,337},[{x,0}]}.
    return.
  {label,337}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",381}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_commutative/2-lc$^1/1-1-', 6, 339}.
  {label,338}.
    {line,[{location,"beam_bounds_SUITE.erl",382}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_commutative/2-lc$^1/1-1-'},
               6}.
  {label,339}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,340},[{x,0}]}.
    {get_list,{x,0},{x,6},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",383}]}.
    {gc_bif,'-',
            {f,0},
            7,
            [{tr,{x,4},{t_number,any}},{tr,{x,2},{t_integer,{-12,0}}}],
            {x,7}}.
    {allocate,7,8}.
    {move,{x,5},{y,0}}.
    {move,{x,6},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,4},{y,3}}.
    {move,{x,3},{y,4}}.
    {move,{x,2},{y,5}}.
    {move,{x,1},{y,6}}.
    {move,{x,5},{x,1}}.
    {move,{x,7},{x,0}}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,0},{x,7}}.
    {move,{y,1},{x,6}}.
    {move,{y,2},{x,5}}.
    {move,{y,3},{x,4}}.
    {move,{y,4},{x,3}}.
    {move,{y,5},{x,2}}.
    {move,{y,6},{x,1}}.
    {call_last,8,{f,343},7}. % '-test_commutative/2-lc$^2/1-2-'/8
  {label,340}.
    {test,is_nil,{f,341},[{x,0}]}.
    {move,{x,3},{x,0}}.
    {move,{x,5},{x,3}}.
    {call_only,4,{f,335}}. % '-test_commutative/2-lc$^0/1-0-'/4
  {label,341}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",382}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_commutative/2-lc$^2/1-2-', 8, 343}.
  {label,342}.
    {line,[{location,"beam_bounds_SUITE.erl",383}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_commutative/2-lc$^2/1-2-'},
               8}.
  {label,343}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,344},[{x,0}]}.
    {get_list,{x,0},{x,8},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",384}]}.
    {gc_bif,'-',{f,0},9,[{x,8},{tr,{x,2},{t_integer,{-12,0}}}],{x,9}}.
    {allocate,9,10}.
    {move,{x,7},{y,0}}.
    {move,{x,8},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,6},{y,3}}.
    {move,{x,5},{y,4}}.
    {move,{x,4},{y,5}}.
    {move,{x,3},{y,6}}.
    {move,{x,2},{y,7}}.
    {move,{x,1},{y,8}}.
    {move,{x,7},{x,1}}.
    {move,{x,9},{x,0}}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,0},{x,9}}.
    {move,{y,1},{x,8}}.
    {move,{y,2},{x,7}}.
    {move,{y,3},{x,6}}.
    {move,{y,4},{x,5}}.
    {move,{y,5},{x,4}}.
    {move,{y,6},{x,3}}.
    {move,{y,7},{x,2}}.
    {move,{y,8},{x,1}}.
    {call_last,10,{f,347},9}. % '-test_commutative/2-lc$^3/1-3-'/10
  {label,344}.
    {test,is_nil,{f,345},[{x,0}]}.
    {move,{x,5},{x,0}}.
    {move,{x,7},{x,5}}.
    {call_only,6,{f,339}}. % '-test_commutative/2-lc$^1/1-1-'/6
  {label,345}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",383}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_commutative/2-lc$^3/1-3-', 10, 347}.
  {label,346}.
    {line,[{location,"beam_bounds_SUITE.erl",384}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_commutative/2-lc$^3/1-3-'},
               10}.
  {label,347}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,8},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,349},[{x,0}]}.
    {test_heap,6,10}.
    {get_list,{x,0},{x,10},{x,0}}.
    {put_tuple2,{x,11},{list,[{x,4},{x,6}]}}.
    {put_tuple2,{x,10},{list,[{x,8},{x,10}]}}.
    {test,is_ge,
          {f,348},
          [{tr,{x,10},{t_tuple,2,true,#{1 => {t_number,any}}}},
           {tr,{x,11},{t_tuple,2,true,#{1 => {t_number,any}}}}]}.
    {allocate,10,12}.
    {move,{x,9},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,8},{y,2}}.
    {move,{x,7},{y,3}}.
    {move,{x,6},{y,4}}.
    {move,{x,5},{y,5}}.
    {move,{x,4},{y,6}}.
    {move,{x,3},{y,7}}.
    {move,{x,2},{y,8}}.
    {move,{x,1},{y,9}}.
    {move,{x,10},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,11},{x,1}}.
    {line,[{location,"beam_bounds_SUITE.erl",380}]}.
    {call,3,{f,198}}. % test_commutative_1/3
    {move,{y,0},{x,9}}.
    {move,{y,2},{x,8}}.
    {move,{y,3},{x,7}}.
    {move,{y,4},{x,6}}.
    {move,{y,5},{x,5}}.
    {move,{y,6},{x,4}}.
    {move,{y,7},{x,3}}.
    {move,{y,8},{x,2}}.
    {move,{y,9},{x,1}}.
    {move,{y,1},{x,0}}.
    {call_last,10,{f,347},10}. % '-test_commutative/2-lc$^3/1-3-'/10
  {label,348}.
    {call_only,10,{f,347}}. % '-test_commutative/2-lc$^3/1-3-'/10
  {label,349}.
    {test,is_nil,{f,350},[{x,0}]}.
    {move,{x,7},{x,0}}.
    {move,{x,9},{x,7}}.
    {call_only,8,{f,343}}. % '-test_commutative/2-lc$^2/1-2-'/8
  {label,350}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",384}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-abs_bounds/1-lc$^0/1-0-', 2, 352}.
  {label,351}.
    {line,[{location,"beam_bounds_SUITE.erl",332}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-abs_bounds/1-lc$^0/1-0-'},2}.
  {label,352}.
    {test,is_nonempty_list,{f,353},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",333}]}.
    {gc_bif,'-',{f,0},3,[{x,2},{integer,-7}],{x,3}}.
    {allocate,3,4}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,3},{x,0}}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,356},3}. % '-abs_bounds/1-lc$^1/1-1-'/4
  {label,353}.
    {test,is_nil,{f,354},[{x,0}]}.
    return.
  {label,354}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",332}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-abs_bounds/1-lc$^1/1-1-', 4, 356}.
  {label,355}.
    {line,[{location,"beam_bounds_SUITE.erl",333}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-abs_bounds/1-lc$^1/1-1-'},4}.
  {label,356}.
    {'%',{var_info,{x,2},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,357},[{x,0}]}.
    {allocate_heap,4,3,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",331}]}.
    {call,1,{f,172}}. % abs_bounds_1/1
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,4,{f,356},4}. % '-abs_bounds/1-lc$^1/1-1-'/4
  {label,357}.
    {test,is_nil,{f,358},[{x,0}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,352}}. % '-abs_bounds/1-lc$^0/1-0-'/2
  {label,358}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",333}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bnot_bounds_4/0-lbc$^0/2-0-', 2, 360}.
  {label,359}.
    {line,[{location,"beam_bounds_SUITE.erl",233}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-bnot_bounds_4/0-lbc$^0/2-0-'},
               2}.
  {label,360}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {get_hd,{x,0},{x,0}}.
    {gc_bif,'+',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{1,2}}},{tr,{x,0},{t_integer,{1,2}}}],
            {x,0}}.
    {gc_bif,'bnot',{f,0},2,[{tr,{x,0},{t_integer,{2,4}}}],{x,0}}.
    {call_only,2,{f,362}}. % '-bnot_bounds_4/0-lbc$^1/2-1-'/2


{function, '-bnot_bounds_4/0-lbc$^1/2-1-', 2, 362}.
  {label,361}.
    {line,[{location,"beam_bounds_SUITE.erl",233}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-bnot_bounds_4/0-lbc$^1/2-1-'},
               2}.
  {label,362}.
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bnot_bounds/1-lc$^0/1-0-', 2, 364}.
  {label,363}.
    {line,[{location,"beam_bounds_SUITE.erl",192}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-bnot_bounds/1-lc$^0/1-0-'},2}.
  {label,364}.
    {test,is_nonempty_list,{f,365},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",193}]}.
    {gc_bif,'-',{f,0},3,[{x,2},{integer,-7}],{x,3}}.
    {allocate,3,4}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,3},{x,0}}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {call_last,4,{f,368},3}. % '-bnot_bounds/1-lc$^1/1-1-'/4
  {label,365}.
    {test,is_nil,{f,366},[{x,0}]}.
    return.
  {label,366}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",192}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bnot_bounds/1-lc$^1/1-1-', 4, 368}.
  {label,367}.
    {line,[{location,"beam_bounds_SUITE.erl",193}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-bnot_bounds/1-lc$^1/1-1-'},4}.
  {label,368}.
    {'%',{var_info,{x,2},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,369},[{x,0}]}.
    {allocate_heap,4,3,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",191}]}.
    {call,1,{f,97}}. % bnot_bounds_1/1
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,4,{f,368},4}. % '-bnot_bounds/1-lc$^1/1-1-'/4
  {label,369}.
    {test,is_nil,{f,370},[{x,0}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,364}}. % '-bnot_bounds/1-lc$^0/1-0-'/2
  {label,370}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",193}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
