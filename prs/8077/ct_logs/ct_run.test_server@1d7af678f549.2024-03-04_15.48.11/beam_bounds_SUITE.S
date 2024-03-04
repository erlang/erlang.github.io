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

{labels, 416}.


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
    {call,2,{f,241}}. % test_commutative/2
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
    {call,2,{f,248}}. % test_noncommutative/2
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
    {call,2,{f,241}}. % test_commutative/2
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
    {call,2,{f,248}}. % test_noncommutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{'-inf',-20}},{x,1}}.
    {move,{literal,{2,4}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",123}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,59},[{x,0},{literal,{'-inf',-5}}]}.
    {move,{literal,{'-inf',100}},{x,1}}.
    {move,{literal,{2,4}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",124}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,58},[{x,0},{literal,{'-inf',50}}]}.
    {move,{literal,{-10,'+inf'}},{x,1}}.
    {move,{literal,{2,4}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",126}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,57},[{x,0},{literal,{-5,'+inf'}}]}.
    {move,{literal,{10,'+inf'}},{x,1}}.
    {move,{literal,{2,4}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",127}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,56},[{x,0},{literal,{2,'+inf'}}]}.
    {move,{literal,{10,'+inf'}},{x,1}}.
    {move,{literal,{0,0}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",129}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,55},[{x,0},{atom,any}]}.
    {'catch',{y,0},{f,45}}.
    {move,{atom,ok},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",130}]}.
    {call,2,{f,61}}. % division_bounds_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
  {label,45}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,54},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,54},[{x,1},2,{atom,badarith}]}.
    {move,{literal,{0,10}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[1,2]},{location,"beam_bounds_SUITE.erl",132}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,53},[{x,0},{literal,{-10,10}}]}.
    {move,{literal,{-50,-15}},{x,1}}.
    {move,{literal,{-10,'+inf'}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",133}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,52},[{x,0},{literal,{-50,50}}]}.
    {move,{literal,{-20,10}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",134}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,51},[{x,0},{literal,{-20,20}}]}.
    {move,{literal,{-5,7}},{x,1}}.
    {move,{literal,{'-inf',-1}},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",135}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,50},[{x,0},{literal,{-7,7}}]}.
    {move,{literal,{42,42}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",136}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,49},[{x,0},{literal,{-42,42}}]}.
    {move,{literal,{-42,-42}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",137}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,48},[{x,0},{literal,{-42,42}}]}.
    {move,{literal,{'-inf',10}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",139}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,47},[{x,0},{atom,any}]}.
    {move,{literal,{0,'+inf'}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'div'},{x,0}}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",140}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,46},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,46}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",139}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",137}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",136}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",135}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",134}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",133}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",132}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",130}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",129}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",127}]}.
    {badmatch,{x,0}}.
  {label,57}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",126}]}.
    {badmatch,{x,0}}.
  {label,58}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",124}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",123}]}.
    {badmatch,{x,0}}.


{function, division_bounds_1, 2, 61}.
  {label,60}.
    {line,[{location,"beam_bounds_SUITE.erl",146}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,division_bounds_1},2}.
  {label,61}.
    {'%',{var_info,{x,0},[{type,{t_union,{t_atom,[ok]},nil,none,none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ok]}}]}}.
    {test,is_nil,
          {f,62},
          [{tr,{x,0},{t_union,{t_atom,[ok]},nil,none,none,none}}]}.
    {allocate,0,2}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",147}]}.
    {call,2,{f,61}}. % division_bounds_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {gc_bif,'div',{f,0},0,[{integer,-1},{integer,0}],{x,0}}.
    {deallocate,0}.
    return.
  {label,62}.
    {move,{integer,0},{x,0}}.
    return.


{function, rem_bounds, 1, 64}.
  {label,63}.
    {line,[{location,"beam_bounds_SUITE.erl",151}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,rem_bounds},1}.
  {label,64}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",152}]}.
    {call,2,{f,248}}. % test_noncommutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{1,8}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",154}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,84},[{x,0},{literal,{-7,7}}]}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{-12,8}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",155}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,83},[{x,0},{literal,{-11,11}}]}.
    {move,{literal,{'-inf',10}},{x,1}}.
    {move,{literal,{1,8}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",157}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,82},[{x,0},{literal,{-7,7}}]}.
    {move,{literal,{10,'+inf'}},{x,1}}.
    {move,{literal,{1,8}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",158}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,81},[{x,0},{literal,{0,7}}]}.
    {move,{literal,{17,'+inf'}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",159}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,80},[{x,0},{literal,{0,'+inf'}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{'-inf',10}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",161}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,79},[{x,0},{literal,{0,10}}]}.
    {move,{literal,{20,'+inf'}},{x,1}}.
    {move,{literal,{10,'+inf'}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",162}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,78},[{x,0},{literal,{0,'+inf'}}]}.
    {move,{literal,{'-inf',10}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",163}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,77},[{x,0},{literal,{'-inf',10}}]}.
    {move,{literal,{-11,10}},{x,1}}.
    {move,{literal,{'-inf',89}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",165}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,76},[{x,0},{literal,{-11,10}}]}.
    {move,{literal,{-11,10}},{x,1}}.
    {move,{literal,{7,'+inf'}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",166}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,75},[{x,0},{literal,{-11,10}}]}.
    {move,{literal,{-11,10}},{x,1}}.
    {move,{literal,{'-inf',113}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",167}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,74},[{x,0},{literal,{-11,10}}]}.
    {move,{literal,{-11,10}},{x,1}}.
    {move,{literal,{55,'+inf'}},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",168}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,73},[{x,0},{literal,{-11,10}}]}.
    {move,{literal,{-11,10}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",169}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,72},[{x,0},{literal,{-11,10}}]}.
    {move,{literal,{0,0}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",171}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,71},[{x,0},{literal,{0,0}}]}.
    {move,{literal,{1,1}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",172}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,70},[{x,0},{literal,{0,1}}]}.
    {move,{literal,{2,2}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",173}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,69},[{x,0},{literal,{0,2}}]}.
    {move,{literal,{2,3}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",174}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,68},[{x,0},{literal,{0,3}}]}.
    {move,{literal,{-1,-1}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",176}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,67},[{x,0},{literal,{-1,0}}]}.
    {move,{literal,{-7,-7}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",177}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,66},[{x,0},{literal,{-7,0}}]}.
    {move,{literal,{-6,-4}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'rem'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",178}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,65},[{x,0},{literal,{-6,0}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,65}.
    {badmatch,{x,0}}.
  {label,66}.
    {line,[{location,"beam_bounds_SUITE.erl",177}]}.
    {badmatch,{x,0}}.
  {label,67}.
    {line,[{location,"beam_bounds_SUITE.erl",176}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{location,"beam_bounds_SUITE.erl",174}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{location,"beam_bounds_SUITE.erl",173}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{location,"beam_bounds_SUITE.erl",172}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{location,"beam_bounds_SUITE.erl",171}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"beam_bounds_SUITE.erl",169}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{location,"beam_bounds_SUITE.erl",168}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"beam_bounds_SUITE.erl",167}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{location,"beam_bounds_SUITE.erl",166}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{location,"beam_bounds_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,77}.
    {line,[{location,"beam_bounds_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,78}.
    {line,[{location,"beam_bounds_SUITE.erl",162}]}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{location,"beam_bounds_SUITE.erl",161}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{location,"beam_bounds_SUITE.erl",159}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"beam_bounds_SUITE.erl",158}]}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{location,"beam_bounds_SUITE.erl",157}]}.
    {badmatch,{x,0}}.
  {label,83}.
    {line,[{location,"beam_bounds_SUITE.erl",155}]}.
    {badmatch,{x,0}}.
  {label,84}.
    {line,[{location,"beam_bounds_SUITE.erl",154}]}.
    {badmatch,{x,0}}.


{function, band_bounds, 1, 86}.
  {label,85}.
    {line,[{location,"beam_bounds_SUITE.erl",182}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,band_bounds},1}.
  {label,86}.
    {allocate,0,0}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",183}]}.
    {call,1,{f,239}}. % test_commutative/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{7,17}},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",186}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,92},[{x,0},{literal,{0,17}}]}.
    {move,{literal,{0,42}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",187}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,91},[{x,0},{literal,{0,42}}]}.
    {move,{literal,{-1,1}},{x,1}}.
    {move,{atom,any},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",188}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,90},[{x,0},{atom,any}]}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{-10,0}},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",189}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,89},[{x,0},{atom,any}]}.
    {move,{literal,{-10,0}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",190}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,88},[{x,0},{atom,any}]}.
    {move,{literal,{-20,-10}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'band'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",191}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,87},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,87}.
    {badmatch,{x,0}}.
  {label,88}.
    {line,[{location,"beam_bounds_SUITE.erl",190}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{location,"beam_bounds_SUITE.erl",189}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{location,"beam_bounds_SUITE.erl",188}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{location,"beam_bounds_SUITE.erl",187}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{location,"beam_bounds_SUITE.erl",186}]}.
    {badmatch,{x,0}}.


{function, bor_bounds, 1, 94}.
  {label,93}.
    {line,[{location,"beam_bounds_SUITE.erl",195}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bor_bounds},1}.
  {label,94}.
    {allocate,0,0}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",196}]}.
    {call,1,{f,239}}. % test_commutative/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{-10,7}},{x,1}}.
    {move,{literal,{3,10}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",198}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,103},[{x,0},{literal,{'-inf',15}}]}.
    {move,{literal,{-10,1}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",199}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,102},[{x,0},{literal,{'-inf',11}}]}.
    {move,{literal,{-20,-10}},{x,1}}.
    {move,{literal,{-2,10}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",200}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,101},[{x,0},{literal,{'-inf',-1}}]}.
    {move,{literal,{'-inf',10}},{x,1}}.
    {move,{literal,{3,5}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",202}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,100},[{x,0},{literal,{'-inf',15}}]}.
    {move,{literal,{-20,-10}},{x,1}}.
    {move,{literal,{-100,-50}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",203}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,99},[{x,0},{literal,{'-inf',-1}}]}.
    {move,{literal,{-20,-10}},{x,1}}.
    {move,{literal,{-2,'+inf'}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",205}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,98},[{x,0},{atom,any}]}.
    {move,{literal,{-20,'+inf'}},{x,1}}.
    {move,{literal,{-7,-3}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",206}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,97},[{x,0},{atom,any}]}.
    {move,{literal,{0,8}},{x,1}}.
    {move,{literal,{16,'+inf'}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",208}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,96},[{x,0},{literal,{16,'+inf'}}]}.
    {move,{literal,{3,'+inf'}},{x,1}}.
    {move,{literal,{16,'+inf'}},{x,2}}.
    {move,{atom,'bor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",209}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,95},[{x,0},{literal,{16,'+inf'}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,95}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{location,"beam_bounds_SUITE.erl",208}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{location,"beam_bounds_SUITE.erl",206}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{location,"beam_bounds_SUITE.erl",205}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{location,"beam_bounds_SUITE.erl",203}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{location,"beam_bounds_SUITE.erl",202}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{location,"beam_bounds_SUITE.erl",200}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{location,"beam_bounds_SUITE.erl",199}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{location,"beam_bounds_SUITE.erl",198}]}.
    {badmatch,{x,0}}.


{function, bxor_bounds, 1, 105}.
  {label,104}.
    {line,[{location,"beam_bounds_SUITE.erl",213}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bxor_bounds},1}.
  {label,105}.
    {allocate,0,0}.
    {move,{atom,'bxor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",214}]}.
    {call,1,{f,239}}. % test_commutative/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{-10,0}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'bxor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",216}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,107},[{x,0},{atom,any}]}.
    {move,{literal,{-20,-10}},{x,1}}.
    {move,{literal,{-1,10}},{x,2}}.
    {move,{atom,'bxor'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",217}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,106},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,106}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{location,"beam_bounds_SUITE.erl",216}]}.
    {badmatch,{x,0}}.


{function, bnot_bounds, 1, 109}.
  {label,108}.
    {line,[{location,"beam_bounds_SUITE.erl",221}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds},1}.
  {label,109}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,7},{x,1}}.
    {move,{integer,-7},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",224}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"beam_bounds_SUITE.erl",226}]}.
    {call,2,{f,409}}. % '-bnot_bounds/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,{'-inf',42}},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",229}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_eq_exact,{f,125},[{x,0},{literal,{-43,'+inf'}}]}.
    {move,{literal,{'-inf',-100}},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",230}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_eq_exact,{f,124},[{x,0},{literal,{99,'+inf'}}]}.
    {move,{literal,{7,'+inf'}},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",231}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_eq_exact,{f,123},[{x,0},{literal,{'-inf',-8}}]}.
    {move,{literal,{-10,'+inf'}},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",232}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_eq_exact,{f,122},[{x,0},{literal,{'-inf',9}}]}.
    {move,{literal,{'-inf',1114110}},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",233}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_eq_exact,{f,121},[{x,0},{literal,{-1114111,'+inf'}}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",235}]}.
    {call,1,{f,131}}. % bnot_bounds_2/1
    {'%',{var_info,{x,0},[{type,{t_integer,{-1,-1}}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",236}]}.
    {call,1,{f,318}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[bad,false,true]},
                                   none,
                                   {t_integer,{0,42}},
                                   none,none}}]}}.
    {call,1,{f,133}}. % bnot_bounds_2_coverage/1
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,120},[{tr,{x,0},{t_integer,any}},{integer,-43}]}.
    {'catch',{y,4},{f,110}}.
    {move,{atom,bad},{x,0}}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",237}]}.
    {call,1,{f,318}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[bad,false,true]},
                                   none,
                                   {t_integer,{0,42}},
                                   none,none}}]}}.
    {call,1,{f,133}}. % bnot_bounds_2_coverage/1
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
  {label,110}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,119},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,119},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,3},{f,111}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,"\t\n"},{location,"beam_bounds_SUITE.erl",239}]}.
    {call,1,{f,318}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[bad,false,true]},
                                   none,
                                   {t_integer,{0,42}},
                                   none,none}}]}}.
    {call,1,{f,135}}. % bnot_bounds_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,111}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,118},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,118},[{x,1}]}.
    {test,test_arity,{f,118},[{x,1},2]}.
    {'catch',{y,2},{f,112}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[7,8]},{location,"beam_bounds_SUITE.erl",240}]}.
    {call,1,{f,318}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[bad,false,true]},
                                   none,
                                   {t_integer,{0,42}},
                                   none,none}}]}}.
    {call,1,{f,135}}. % bnot_bounds_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,112}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,117},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,117},[{x,1}]}.
    {test,test_arity,{f,117},[{x,1},2]}.
    {'catch',{y,1},{f,113}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"beam_bounds_SUITE.erl",241}]}.
    {call,1,{f,318}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[bad,false,true]},
                                   none,
                                   {t_integer,{0,42}},
                                   none,none}}]}}.
    {call,1,{f,135}}. % bnot_bounds_3/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,113}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,116},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,116},[{x,1}]}.
    {test,test_arity,{f,116},[{x,1},2]}.
    {'catch',{y,0},{f,114}}.
    {line,[{scope,[3,4]},{location,"beam_bounds_SUITE.erl",243}]}.
    {call,0,{f,139}}. % bnot_bounds_4/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,114}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,115},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,115},[{x,1}]}.
    {test,test_arity,{f,115},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,115},[{x,1},{literal,{bad_generator,-3}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,115}.
    {line,[{scope,[0]},{location,"beam_bounds_SUITE.erl",243}]}.
    {badmatch,{x,0}}.
  {label,116}.
    {line,[{scope,[2]},{location,"beam_bounds_SUITE.erl",241}]}.
    {badmatch,{x,0}}.
  {label,117}.
    {line,[{scope,[4]},{location,"beam_bounds_SUITE.erl",240}]}.
    {badmatch,{x,0}}.
  {label,118}.
    {line,[{scope,[6]},{location,"beam_bounds_SUITE.erl",239}]}.
    {badmatch,{x,0}}.
  {label,119}.
    {line,[{scope,"\b"},{location,"beam_bounds_SUITE.erl",237}]}.
    {badmatch,{x,0}}.
  {label,120}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",236}]}.
    {badmatch,{x,0}}.
  {label,121}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",233}]}.
    {badmatch,{x,0}}.
  {label,122}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",232}]}.
    {badmatch,{x,0}}.
  {label,123}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",231}]}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",230}]}.
    {badmatch,{x,0}}.
  {label,125}.
    {line,[{scope,"\n"},{location,"beam_bounds_SUITE.erl",229}]}.
    {badmatch,{x,0}}.


{function, bnot_bounds_1, 1, 127}.
  {label,126}.
    {line,[{location,"beam_bounds_SUITE.erl",247}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds_1},1}.
  {label,127}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",248}]}.
    {call,2,{f,271}}. % min_max_unary_op/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{atom,'bnot'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",249}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_tuple,{f,129},[{x,0}]}.
    {test,test_arity,{f,129},[{x,0},2]}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_ge,{f,128},[{x,1},{x,2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_ge,{f,128},[{x,1},{x,2}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,128}.
    {test_heap,6,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {trim,2,0}.
    {move,{literal,"bnot(~p) evaluates to ~p; should be ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",254}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_min_or_max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",256}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,129}.
    {line,[{location,"beam_bounds_SUITE.erl",249}]}.
    {badmatch,{x,0}}.


{function, bnot_bounds_2, 1, 131}.
  {label,130}.
    {line,[{location,"beam_bounds_SUITE.erl",260}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds_2},1}.
  {label,131}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {move,{integer,-1},{x,0}}.
    return.


{function, bnot_bounds_2_coverage, 1, 133}.
  {label,132}.
    {line,[{location,"beam_bounds_SUITE.erl",263}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds_2_coverage},1}.
  {label,133}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[bad,false,true]},
                                   none,
                                   {t_integer,{0,42}},
                                   none,none}}]}}.
    {gc_bif,'bnot',
            {f,0},
            1,
            [{tr,{x,0},
                 {t_union,{t_atom,[bad,false,true]},
                          none,
                          {t_integer,{0,42}},
                          none,none}}],
            {x,0}}.
    return.


{function, bnot_bounds_3, 1, 135}.
  {label,134}.
    {line,[{location,"beam_bounds_SUITE.erl",266}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds_3},1}.
  {label,135}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[bad,false,true]},
                                   none,
                                   {t_integer,{0,42}},
                                   none,none}}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",267}]}.
    {bif,'xor',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,[bad,false,true]},
                       none,
                       {t_integer,{0,42}},
                       none,none}},
          {atom,false}],
         {x,0}}.
    {test,is_eq_exact,{f,136},[{x,0},{atom,true}]}.
    {move,{integer,1},{x,0}}.
    {jump,{f,137}}.
  {label,136}.
    {move,{atom,false},{x,0}}.
  {label,137}.
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


{function, bnot_bounds_4, 0, 139}.
  {label,138}.
    {line,[{location,"beam_bounds_SUITE.erl",270}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bnot_bounds_4},0}.
  {label,139}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,[1,2]},{x,0}}.
    {call_last,2,{f,405},0}. % '-bnot_bounds_4/0-lbc$^0/2-0-'/2


{function, bsr_bounds, 1, 141}.
  {label,140}.
    {line,[{location,"beam_bounds_SUITE.erl",274}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bsr_bounds},1}.
  {label,141}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{literal,{0,7}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",275}]}.
    {call,3,{f,250}}. % test_noncommutative/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{0,10}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",277}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,148},[{x,0},{literal,{0,10}}]}.
    {move,{literal,{0,10}},{x,1}}.
    {move,{literal,{2,'+inf'}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",278}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,147},[{x,0},{literal,{0,2}}]}.
    {move,{literal,{-1,10}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",280}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,146},[{x,0},{literal,{-1,10}}]}.
    {move,{literal,{-100,900}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",281}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,145},[{x,0},{literal,{-100,900}}]}.
    {move,{literal,{-100,900}},{x,1}}.
    {move,{literal,{1,'+inf'}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",282}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,144},[{x,0},{literal,{-50,450}}]}.
    {move,{literal,{'-inf',32}},{x,1}}.
    {move,{literal,{1,10}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",284}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,143},[{x,0},{literal,{'-inf',16}}]}.
    {move,{literal,{-10,'+inf'}},{x,1}}.
    {move,{literal,{1,10}},{x,2}}.
    {move,{atom,'bsr'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",285}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,142},[{x,0},{literal,{-5,'+inf'}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,142}.
    {badmatch,{x,0}}.
  {label,143}.
    {line,[{location,"beam_bounds_SUITE.erl",284}]}.
    {badmatch,{x,0}}.
  {label,144}.
    {line,[{location,"beam_bounds_SUITE.erl",282}]}.
    {badmatch,{x,0}}.
  {label,145}.
    {line,[{location,"beam_bounds_SUITE.erl",281}]}.
    {badmatch,{x,0}}.
  {label,146}.
    {line,[{location,"beam_bounds_SUITE.erl",280}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{location,"beam_bounds_SUITE.erl",278}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{location,"beam_bounds_SUITE.erl",277}]}.
    {badmatch,{x,0}}.


{function, bsl_bounds, 1, 150}.
  {label,149}.
    {line,[{location,"beam_bounds_SUITE.erl",289}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,bsl_bounds},1}.
  {label,150}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{literal,{-7,7}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",290}]}.
    {call,3,{f,250}}. % test_noncommutative/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{1,10000}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",292}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,169},[{x,0},{literal,{2,'+inf'}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{-10,10000}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",293}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,168},[{x,0},{literal,{0,'+inf'}}]}.
    {move,{literal,{-30,-10}},{x,1}}.
    {move,{literal,{1,10000}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",294}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,167},[{x,0},{literal,{'-inf',-20}}]}.
    {move,{literal,{-9,-1}},{x,1}}.
    {move,{literal,{1,10000}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",295}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,166},[{x,0},{literal,{'-inf',-2}}]}.
    {move,{literal,{-7,10}},{x,1}}.
    {move,{literal,{1,10000}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",296}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,165},[{x,0},{atom,any}]}.
    {move,{literal,{0,'+inf'}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",298}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,164},[{x,0},{literal,{0,'+inf'}}]}.
    {move,{literal,{20,30}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",299}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,163},[{x,0},{literal,{20,'+inf'}}]}.
    {move,{literal,{-10,100}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",301}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,162},[{x,0},{atom,any}]}.
    {move,{literal,{-10,100}},{x,1}}.
    {move,{literal,{1,'+inf'}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",302}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,161},[{x,0},{atom,any}]}.
    {move,{literal,{-10,100}},{x,1}}.
    {move,{literal,{-1,'+inf'}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",303}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,160},[{x,0},{atom,any}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{'-inf',0}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",305}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,159},[{x,0},{literal,{0,10}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",306}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,158},[{x,0},{literal,{0,20}}]}.
    {move,{literal,{-7,10}},{x,1}}.
    {move,{literal,{'-inf',0}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",307}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,157},[{x,0},{literal,{-7,10}}]}.
    {move,{literal,{-7,10}},{x,1}}.
    {move,{literal,{'-inf',2}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",308}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,156},[{x,0},{literal,{-28,40}}]}.
    {move,{literal,{-10,-1}},{x,1}}.
    {move,{literal,{500,1024}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",310}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,155},[{x,0},{literal,{'-inf',-1}}]}.
    {move,{literal,{1,10}},{x,1}}.
    {move,{literal,{500,1024}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",311}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,154},[{x,0},{literal,{0,'+inf'}}]}.
    {move,{literal,{'-inf',-10}},{x,1}}.
    {move,{literal,{2,64}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",313}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,153},[{x,0},{literal,{'-inf',-40}}]}.
    {move,{literal,{'-inf',7}},{x,1}}.
    {move,{literal,{3,5}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",314}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,152},[{x,0},{literal,{'-inf',224}}]}.
    {move,{literal,{'-inf',7}},{x,1}}.
    {move,{literal,{3,'+inf'}},{x,2}}.
    {move,{atom,'bsl'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",316}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,151},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,151}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{location,"beam_bounds_SUITE.erl",314}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{location,"beam_bounds_SUITE.erl",313}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{location,"beam_bounds_SUITE.erl",311}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{location,"beam_bounds_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{location,"beam_bounds_SUITE.erl",308}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"beam_bounds_SUITE.erl",307}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"beam_bounds_SUITE.erl",306}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"beam_bounds_SUITE.erl",305}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"beam_bounds_SUITE.erl",303}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"beam_bounds_SUITE.erl",302}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"beam_bounds_SUITE.erl",301}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"beam_bounds_SUITE.erl",299}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"beam_bounds_SUITE.erl",298}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"beam_bounds_SUITE.erl",296}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{location,"beam_bounds_SUITE.erl",295}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{location,"beam_bounds_SUITE.erl",294}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{location,"beam_bounds_SUITE.erl",293}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{location,"beam_bounds_SUITE.erl",292}]}.
    {badmatch,{x,0}}.


{function, lt_bounds, 1, 171}.
  {label,170}.
    {line,[{location,"beam_bounds_SUITE.erl",320}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,lt_bounds},1}.
  {label,171}.
    {move,{atom,'<'},{x,0}}.
    {call_only,1,{f,277}}. % test_relop/1


{function, le_bounds, 1, 173}.
  {label,172}.
    {line,[{location,"beam_bounds_SUITE.erl",323}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,le_bounds},1}.
  {label,173}.
    {move,{atom,'=<'},{x,0}}.
    {call_only,1,{f,277}}. % test_relop/1


{function, gt_bounds, 1, 175}.
  {label,174}.
    {line,[{location,"beam_bounds_SUITE.erl",326}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,gt_bounds},1}.
  {label,175}.
    {move,{atom,'>'},{x,0}}.
    {call_only,1,{f,277}}. % test_relop/1


{function, ge_bounds, 1, 177}.
  {label,176}.
    {line,[{location,"beam_bounds_SUITE.erl",329}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,ge_bounds},1}.
  {label,177}.
    {move,{atom,'>='},{x,0}}.
    {call_only,1,{f,277}}. % test_relop/1


{function, min_bounds, 1, 179}.
  {label,178}.
    {line,[{location,"beam_bounds_SUITE.erl",332}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_bounds},1}.
  {label,179}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{atom,min},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",333}]}.
    {call,2,{f,241}}. % test_commutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',-10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",335}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,192},[{x,0},{literal,{'-inf',-10}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",336}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,191},[{x,0},{literal,{'-inf',1}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',50}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",337}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,190},[{x,0},{literal,{'-inf',50}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',500}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",338}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,189},[{x,0},{literal,{'-inf',100}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',-10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",340}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,188},[{x,0},{literal,{'-inf',-10}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",341}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,187},[{x,0},{literal,{'-inf',1}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',700}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",342}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,186},[{x,0},{literal,{'-inf',700}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{1,99}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",344}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,185},[{x,0},{literal,{1,99}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{1,100}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",345}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,184},[{x,0},{literal,{1,100}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{150,200}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",346}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,183},[{x,0},{literal,{100,200}}]}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{1,10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",348}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,182},[{x,0},{literal,{'-inf',10}}]}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{1,'+inf'}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",349}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,181},[{x,0},{atom,any}]}.
    {move,{literal,{'-inf',777}},{x,1}}.
    {line,[{location,"beam_bounds_SUITE.erl",350}]}.
    {call,2,{f,194}}. % min_bounds/2
    {test,is_eq_exact,{f,180},[{x,0},{literal,{'-inf',777}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,180}.
    {badmatch,{x,0}}.
  {label,181}.
    {line,[{location,"beam_bounds_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,182}.
    {line,[{location,"beam_bounds_SUITE.erl",348}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{location,"beam_bounds_SUITE.erl",346}]}.
    {badmatch,{x,0}}.
  {label,184}.
    {line,[{location,"beam_bounds_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{location,"beam_bounds_SUITE.erl",344}]}.
    {badmatch,{x,0}}.
  {label,186}.
    {line,[{location,"beam_bounds_SUITE.erl",342}]}.
    {badmatch,{x,0}}.
  {label,187}.
    {line,[{location,"beam_bounds_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,188}.
    {line,[{location,"beam_bounds_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{location,"beam_bounds_SUITE.erl",338}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{location,"beam_bounds_SUITE.erl",337}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{location,"beam_bounds_SUITE.erl",336}]}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{location,"beam_bounds_SUITE.erl",335}]}.
    {badmatch,{x,0}}.


{function, min_bounds, 2, 194}.
  {label,193}.
    {line,[{location,"beam_bounds_SUITE.erl",354}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_bounds},2}.
  {label,194}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[any]},
                     none,none,
                     [{{2,{t_atom,['-inf']}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,['-inf']},
                             2 => {t_integer,{-10,700}}}}},
                      {{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},
                             2 =>
                                 {t_union,
                                     {t_atom,['+inf']},
                                     none,
                                     {t_integer,{10,100}},
                                     none,none}}}},
                      {{2,{t_integer,{150,150}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{150,150}},
                             2 => {t_integer,{200,200}}}}}],
                     none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[any]},
                     none,none,
                     [{{2,{t_atom,['-inf']}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,['-inf']},
                             2 => {t_integer,{777,777}}}}},
                      {{2,{t_integer,{1,1}}},
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
    {line,[{location,"beam_bounds_SUITE.erl",355}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{atom,min},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",356}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,195},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,195}.
    {badmatch,{x,0}}.


{function, max_bounds, 1, 197}.
  {label,196}.
    {line,[{location,"beam_bounds_SUITE.erl",358}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,max_bounds},1}.
  {label,197}.
    {allocate,0,0}.
    {move,{literal,{-12,12}},{x,1}}.
    {move,{atom,max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",359}]}.
    {call,2,{f,241}}. % test_commutative/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',-10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",361}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,210},[{x,0},{literal,{1,100}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",362}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,209},[{x,0},{literal,{1,100}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',50}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",363}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,208},[{x,0},{literal,{1,100}}]}.
    {move,{literal,{1,100}},{x,1}}.
    {move,{literal,{'-inf',500}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",364}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,207},[{x,0},{literal,{1,500}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',-10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",366}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,206},[{x,0},{literal,{1,'+inf'}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",367}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,205},[{x,0},{literal,{1,'+inf'}}]}.
    {move,{literal,{1,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',700}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",368}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,204},[{x,0},{literal,{1,'+inf'}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{1,99}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",370}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,203},[{x,0},{literal,{100,'+inf'}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{1,100}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",371}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,202},[{x,0},{literal,{100,'+inf'}}]}.
    {move,{literal,{100,'+inf'}},{x,1}}.
    {move,{literal,{150,200}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",372}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,201},[{x,0},{literal,{150,'+inf'}}]}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{1,99}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",374}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,200},[{x,0},{literal,{1,'+inf'}}]}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{10,'+inf'}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",375}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,199},[{x,0},{literal,{10,'+inf'}}]}.
    {move,{atom,any},{x,1}}.
    {move,{literal,{'-inf',70}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",376}]}.
    {call,2,{f,212}}. % max_bounds/2
    {test,is_eq_exact,{f,198},[{x,0},{atom,any}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,198}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{location,"beam_bounds_SUITE.erl",375}]}.
    {badmatch,{x,0}}.
  {label,200}.
    {line,[{location,"beam_bounds_SUITE.erl",374}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{location,"beam_bounds_SUITE.erl",372}]}.
    {badmatch,{x,0}}.
  {label,202}.
    {line,[{location,"beam_bounds_SUITE.erl",371}]}.
    {badmatch,{x,0}}.
  {label,203}.
    {line,[{location,"beam_bounds_SUITE.erl",370}]}.
    {badmatch,{x,0}}.
  {label,204}.
    {line,[{location,"beam_bounds_SUITE.erl",368}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{location,"beam_bounds_SUITE.erl",367}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{location,"beam_bounds_SUITE.erl",366}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{location,"beam_bounds_SUITE.erl",364}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{location,"beam_bounds_SUITE.erl",363}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{location,"beam_bounds_SUITE.erl",362}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{location,"beam_bounds_SUITE.erl",361}]}.
    {badmatch,{x,0}}.


{function, max_bounds, 2, 212}.
  {label,211}.
    {line,[{location,"beam_bounds_SUITE.erl",380}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,max_bounds},2}.
  {label,212}.
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
                      {{2,{t_integer,{10,10}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{10,10}},
                             2 => {t_atom,['+inf']}}}},
                      {{2,{t_integer,{150,150}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{150,150}},
                             2 => {t_integer,{200,200}}}}}],
                     none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[any]},
                     none,none,
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
    {line,[{location,"beam_bounds_SUITE.erl",381}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{atom,max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",382}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_eq_exact,{f,213},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,213}.
    {badmatch,{x,0}}.


{function, abs_bounds, 1, 215}.
  {label,214}.
    {line,[{location,"beam_bounds_SUITE.erl",384}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,abs_bounds},1}.
  {label,215}.
    {allocate,0,0}.
    {move,{integer,7},{x,1}}.
    {move,{integer,-7},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",387}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"beam_bounds_SUITE.erl",389}]}.
    {call,2,{f,397}}. % '-abs_bounds/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, abs_bounds_1, 1, 217}.
  {label,216}.
    {line,[{location,"beam_bounds_SUITE.erl",393}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,abs_bounds_1},1}.
  {label,217}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,abs},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",394}]}.
    {call,2,{f,271}}. % min_max_unary_op/2
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{atom,abs},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",395}]}.
    {call_ext,2,{extfunc,beam_bounds,bounds,2}}.
    {test,is_tuple,{f,219},[{x,0}]}.
    {test,test_arity,{f,219},[{x,0},2]}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_ge,{f,218},[{x,1},{x,2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_ge,{f,218},[{x,1},{x,2}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,218}.
    {test_heap,8,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{atom,bif_abs},{x,0},{x,1}}.
    {trim,2,0}.
    {move,{literal,"~p(~p) evaluates to ~p; should be ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",400}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_min_or_max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",402}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,219}.
    {line,[{location,"beam_bounds_SUITE.erl",395}]}.
    {badmatch,{x,0}}.


{function, infer_lt_gt_bounds, 1, 221}.
  {label,220}.
    {line,[{location,"beam_bounds_SUITE.erl",405}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,infer_lt_gt_bounds},1}.
  {label,221}.
    {allocate,0,0}.
    {move,{literal,{'-inf',0}},{x,1}}.
    {move,{literal,{'-inf',0}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",406}]}.
    {call,2,{f,233}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,231},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{'-inf',-1},{'-inf',0}}}]}.
    {move,{literal,{'-inf',2}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",407}]}.
    {call,2,{f,233}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,230},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{'-inf',1},{'-inf',2}}}]}.
    {move,{literal,{'-inf',-1}},{x,1}}.
    {move,{literal,{'-inf',1}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",408}]}.
    {call,2,{f,233}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,229},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{'-inf',-2},{'-inf',-1}}}]}.
    {move,{literal,{1,3}},{x,1}}.
    {move,{literal,{'-inf',2}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",409}]}.
    {call,2,{f,233}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{'-inf',2},{1,3}}}]}.
    {move,{literal,{3,10}},{x,1}}.
    {move,{literal,{'-inf',2}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",411}]}.
    {call,2,{f,233}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,227},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {atom,any}]}.
    {move,{literal,{3,'+inf'}},{x,1}}.
    {move,{literal,{'-inf',2}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",412}]}.
    {call,2,{f,233}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {atom,any}]}.
    {move,{literal,{'-inf',84}},{x,1}}.
    {move,{literal,{0,10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",414}]}.
    {call,2,{f,233}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,225},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{0,10},{1,84}}}]}.
    {move,{literal,{'-inf',84}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",415}]}.
    {call,2,{f,233}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,224},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{0,83},{1,84}}}]}.
    {move,{literal,{42,'+inf'}},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",417}]}.
    {call,2,{f,233}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,223},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{0,'+inf'},{42,'+inf'}}}]}.
    {move,{literal,{42,'+inf'}},{x,1}}.
    {move,{literal,{100,'+inf'}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",418}]}.
    {call,2,{f,233}}. % infer_lt_gt/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,
                                   {t_tuple,2,true,#{}},
                                   none}}]}}.
    {test,is_eq_exact,
          {f,222},
          [{tr,{x,0},
               {t_union,{t_atom,[any]},none,none,{t_tuple,2,true,#{}},none}},
           {literal,{{100,'+inf'},{101,'+inf'}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,222}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{location,"beam_bounds_SUITE.erl",417}]}.
    {badmatch,{x,0}}.
  {label,224}.
    {line,[{location,"beam_bounds_SUITE.erl",415}]}.
    {badmatch,{x,0}}.
  {label,225}.
    {line,[{location,"beam_bounds_SUITE.erl",414}]}.
    {badmatch,{x,0}}.
  {label,226}.
    {line,[{location,"beam_bounds_SUITE.erl",412}]}.
    {badmatch,{x,0}}.
  {label,227}.
    {line,[{location,"beam_bounds_SUITE.erl",411}]}.
    {badmatch,{x,0}}.
  {label,228}.
    {line,[{location,"beam_bounds_SUITE.erl",409}]}.
    {badmatch,{x,0}}.
  {label,229}.
    {line,[{location,"beam_bounds_SUITE.erl",408}]}.
    {badmatch,{x,0}}.
  {label,230}.
    {line,[{location,"beam_bounds_SUITE.erl",407}]}.
    {badmatch,{x,0}}.
  {label,231}.
    {line,[{location,"beam_bounds_SUITE.erl",406}]}.
    {badmatch,{x,0}}.


{function, infer_lt_gt, 2, 233}.
  {label,232}.
    {line,[{location,"beam_bounds_SUITE.erl",424}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,infer_lt_gt},2}.
  {label,233}.
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
    {line,[{location,"beam_bounds_SUITE.erl",425}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,234},[{x,0}]}.
    {test,test_arity,{f,237},[{x,0},2]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {move,{atom,'<'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",427}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {test,is_tuple,{f,235},[{x,0}]}.
    {test,test_arity,{f,235},[{x,0},2]}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,235},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},0,{x,2}}.
    {test,is_eq_exact,{f,235},[{x,1},{x,2}]}.
    {deallocate,1}.
    return.
  {label,234}.
    {test,is_eq_exact,{f,237},[{x,0},{atom,any}]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {trim,3,0}.
    {move,{atom,'<'},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",429}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {test,is_eq_exact,{f,236},[{x,0},{atom,any}]}.
    {deallocate,0}.
    return.
  {label,235}.
    {line,[{location,"beam_bounds_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,236}.
    {line,[{location,"beam_bounds_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,237}.
    {line,[{location,"beam_bounds_SUITE.erl",425}]}.
    {case_end,{y,0}}.


{function, test_commutative, 1, 239}.
  {label,238}.
    {line,[{location,"beam_bounds_SUITE.erl",432}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_commutative},1}.
  {label,239}.
    {'%',{var_info,{x,0},[{type,{t_atom,['band','bor','bxor']}}]}}.
    {move,{literal,{0,32}},{x,1}}.
    {call_only,2,{f,241}}. % test_commutative/2


{function, test_commutative, 2, 241}.
  {label,240}.
    {line,[{location,"beam_bounds_SUITE.erl",435}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_commutative},2}.
  {label,241}.
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
    {line,[{location,"beam_bounds_SUITE.erl",436}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,0},{x,2}}.
    {move,{x,0},{x,3}}.
    {move,{y,1},{x,1}}.
    {trim,2,0}.
    {line,[{location,"beam_bounds_SUITE.erl",438}]}.
    {call,4,{f,380}}. % '-test_commutative/2-lc$^0/1-0-'/4
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, test_commutative_1, 3, 243}.
  {label,242}.
    {line,[{location,"beam_bounds_SUITE.erl",445}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_commutative_1},3}.
  {label,243}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {allocate,5,3}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {line,[{location,"beam_bounds_SUITE.erl",446}]}.
    {call,3,{f,260}}. % min_max_op/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,3}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,2}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",447}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,246},[{x,0}]}.
    {test,test_arity,{f,246},[{x,0},2]}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,2}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",448}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_tuple,{f,245},[{x,0}]}.
    {test,test_arity,{f,245},[{x,0},2]}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,245},[{x,2},{x,1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{y,0},1,{x,3}}.
    {test,is_eq_exact,{f,245},[{x,2},{x,3}]}.
    {get_tuple_element,{y,1},0,{x,0}}.
    {test,is_ge,{f,244},[{x,0},{x,1}]}.
    {get_tuple_element,{y,1},1,{x,0}}.
    {test,is_ge,{f,244},[{x,3},{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,244}.
    {test_heap,10,0}.
    {put_list,{y,1},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,4},{x,0},{x,1}}.
    {trim,5,0}.
    {move,{literal,"~p(~p, ~p) evaluates to ~p; should be ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",453}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_min_or_max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",455}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,245}.
    {line,[{location,"beam_bounds_SUITE.erl",448}]}.
    {badmatch,{x,0}}.
  {label,246}.
    {line,[{location,"beam_bounds_SUITE.erl",447}]}.
    {badmatch,{y,0}}.


{function, test_noncommutative, 2, 248}.
  {label,247}.
    {line,[{location,"beam_bounds_SUITE.erl",458}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_noncommutative},2}.
  {label,248}.
    {'%',{var_info,{x,0},[{type,{t_atom,['-','div','rem']}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{-12,-12}},
                                     2 => {t_integer,{12,12}}}}}]}}.
    {move,{literal,{-12,12}},{x,2}}.
    {call_only,3,{f,250}}. % test_noncommutative/3


{function, test_noncommutative, 3, 250}.
  {label,249}.
    {line,[{location,"beam_bounds_SUITE.erl",461}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_noncommutative},3}.
  {label,250}.
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
    {line,[{location,"beam_bounds_SUITE.erl",462}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {get_tuple_element,{y,1},0,{y,0}}.
    {get_tuple_element,{y,1},1,{x,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",463}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,0},{x,3}}.
    {move,{integer,-12},{x,2}}.
    {move,{y,1},{x,4}}.
    {move,{y,2},{x,1}}.
    {move,{x,0},{x,5}}.
    {move,{y,1},{x,0}}.
    {trim,3,0}.
    {line,[{location,"beam_bounds_SUITE.erl",465}]}.
    {call,6,{f,364}}. % '-test_noncommutative/3-lc$^0/1-0-'/6
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, test_noncommutative_1, 3, 252}.
  {label,251}.
    {line,[{location,"beam_bounds_SUITE.erl",471}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_noncommutative_1},3}.
  {label,252}.
    {'%',{var_info,{x,0},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {allocate,4,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"beam_bounds_SUITE.erl",472}]}.
    {call,3,{f,260}}. % min_max_op/3
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,3}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",473}]}.
    {call_ext,3,{extfunc,beam_bounds,bounds,3}}.
    {test,is_tuple,{f,254},[{x,0}]}.
    {test,test_arity,{f,258},[{x,0},2]}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_ge,{f,253},[{x,1},{x,2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_lt,{f,256},[{x,1},{x,2}]}.
  {label,253}.
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
    {move,{atom,bad_min_or_max},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",484}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,254}.
    {test,is_eq_exact,{f,258},[{x,0},{atom,any}]}.
    {select_val,{tr,{y,3},{t_atom,['-','bsl','bsr','div','rem']}},
                {f,257},
                {list,[{atom,'div'},{f,255},{atom,'rem'},{f,255}]}}.
  {label,255}.
    {test,is_eq_exact,
          {f,257},
          [{tr,{y,1},{t_tuple,2,true,#{1 => {t_number,any}}}},
           {literal,{0,0}}]}.
  {label,256}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,257}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,1}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",475}]}.
    {case_end,{x,0}}.
  {label,258}.
    {line,[{location,"beam_bounds_SUITE.erl",473}]}.
    {case_end,{x,0}}.


{function, min_max_op, 3, 260}.
  {label,259}.
    {line,[{location,"beam_bounds_SUITE.erl",487}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_max_op},3}.
  {label,260}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,4}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{literal,{infinity,-16777216}},{x,5}}.
    {swap,{x,1},{x,2}}.
    {call_only,6,{f,262}}. % min_max_op_1/6


{function, min_max_op_1, 6, 262}.
  {label,261}.
    {line,[{location,"beam_bounds_SUITE.erl",490}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_max_op_1},6}.
  {label,262}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,5},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_ge,{f,263},[{x,2},{tr,{x,1},{t_number,any}}]}.
    {allocate,5,6}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,3}}.
    {move,{x,5},{x,4}}.
    {line,[{location,"beam_bounds_SUITE.erl",491}]}.
    {call,5,{f,265}}. % min_max_op_2/5
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",492}]}.
    {gc_bif,'+',{f,0},1,[{tr,{y,3},{t_number,any}},{integer,1}],{x,1}}.
    {move,{y,0},{x,4}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{x,0},{x,5}}.
    {move,{y,4},{x,0}}.
    {call_last,6,{f,262},5}. % min_max_op_1/6
  {label,263}.
    {move,{x,5},{x,0}}.
    return.


{function, min_max_op_2, 5, 265}.
  {label,264}.
    {line,[{location,"beam_bounds_SUITE.erl",496}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_max_op_2},5}.
  {label,265}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,4},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,{f,267},[{tr,{x,2},{t_number,any}},{integer,0}]}.
    {select_val,{tr,{x,0},{t_atom,any}},
                {f,267},
                {list,[{atom,'div'},{f,266},{atom,'rem'},{f,266}]}}.
  {label,266}.
    {move,{integer,1},{x,2}}.
    {call_only,5,{f,265}}. % min_max_op_2/5
  {label,267}.
    {test,is_ge,{f,269},[{x,3},{tr,{x,2},{t_number,any}}]}.
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
    {line,[{location,"beam_bounds_SUITE.erl",499}]}.
    {apply,2}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_ge,{f,268},[{x,0},{x,1}]}.
    {test,is_ge,{f,268},[{x,2},{x,0}]}.
    {line,[{location,"beam_bounds_SUITE.erl",502}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,2},{t_number,any}},{integer,1}],{x,2}}.
    {move,{y,0},{x,4}}.
    {move,{y,1},{x,3}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,0}}.
    {call_last,5,{f,265},5}. % min_max_op_2/5
  {label,268}.
    {line,[{location,"beam_bounds_SUITE.erl",504}]}.
    {gc_bif,'+',{f,0},3,[{tr,{y,2},{t_number,any}},{integer,1}],{x,3}}.
    {test_heap,3,4}.
    {bif,min,{f,0},[{x,1},{x,0}],{x,1}}.
    {bif,max,{f,0},[{x,2},{x,0}],{x,0}}.
    {put_tuple2,{x,4},{list,[{x,1},{x,0}]}}.
    {move,{x,3},{x,2}}.
    {move,{y,1},{x,3}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,0}}.
    {call_last,5,{f,265},5}. % min_max_op_2/5
  {label,269}.
    {move,{x,4},{x,0}}.
    return.


{function, min_max_unary_op, 2, 271}.
  {label,270}.
    {line,[{location,"beam_bounds_SUITE.erl",509}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_max_unary_op},2}.
  {label,271}.
    {'%',{var_info,{x,0},[{type,{t_atom,[abs,'bnot']}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{1 => {t_number,any}}}}]}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{literal,{infinity,-16777216}},{x,3}}.
    {swap,{x,1},{x,2}}.
    {call_only,4,{f,273}}. % min_max_unary_op_1/4


{function, min_max_unary_op_1, 4, 273}.
  {label,272}.
    {line,[{location,"beam_bounds_SUITE.erl",512}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,min_max_unary_op_1},4}.
  {label,273}.
    {'%',{var_info,{x,0},[{type,{t_atom,[abs,'bnot']}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,3},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_ge,{f,275},[{x,2},{tr,{x,1},{t_number,any}}]}.
    {allocate,4,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{atom,erlang},{x,1}}.
    {line,[{location,"beam_bounds_SUITE.erl",513}]}.
    {apply,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_ge,{f,274},[{x,0},{x,1}]}.
    {test,is_ge,{f,274},[{x,2},{x,0}]}.
    {line,[{location,"beam_bounds_SUITE.erl",516}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,2},{t_number,any}},{integer,1}],{x,1}}.
    {move,{y,0},{x,3}}.
    {move,{y,1},{x,2}}.
    {move,{y,3},{x,0}}.
    {call_last,4,{f,273},4}. % min_max_unary_op_1/4
  {label,274}.
    {line,[{location,"beam_bounds_SUITE.erl",518}]}.
    {gc_bif,'+',{f,0},3,[{tr,{y,2},{t_number,any}},{integer,1}],{x,3}}.
    {test_heap,3,4}.
    {bif,min,{f,0},[{x,1},{x,0}],{x,1}}.
    {bif,max,{f,0},[{x,2},{x,0}],{x,0}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {move,{y,1},{x,2}}.
    {move,{x,3},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{y,3},{x,0}}.
    {call_last,4,{f,273},4}. % min_max_unary_op_1/4
  {label,275}.
    {move,{x,3},{x,0}}.
    return.


{function, test_relop, 1, 277}.
  {label,276}.
    {line,[{location,"beam_bounds_SUITE.erl",523}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_relop},1}.
  {label,277}.
    {'%',{var_info,{x,0},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,15},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",525}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {line,[{location,"beam_bounds_SUITE.erl",527}]}.
    {call,3,{f,348}}. % '-test_relop/1-lc$^0/1-0-'/3
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, test_relop_1, 3, 279}.
  {label,278}.
    {line,[{location,"beam_bounds_SUITE.erl",533}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_relop_1},3}.
  {label,279}.
    {'%',{var_info,{x,0},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{}}}]}}.
    {allocate,4,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"beam_bounds_SUITE.erl",534}]}.
    {call,3,{f,295}}. % rel_op/3
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,3}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",535}]}.
    {call_ext,3,{extfunc,beam_bounds,relop,3}}.
    {test,is_eq_exact,{f,280},[{x,0},{y,0}]}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {call_last,4,{f,282},4}. % test_infer_relop/4
  {label,280}.
    {test_heap,10,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,1}}.
    {trim,4,0}.
    {move,{literal,"~p(~p, ~p) evaluates to ~p; should be ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",539}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_bool_result},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",541}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.


{function, test_infer_relop, 4, 282}.
  {label,281}.
    {line,[{location,"beam_bounds_SUITE.erl",544}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_infer_relop},4}.
  {label,282}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_tuple,2,true,#{}}}]}}.
    {select_val,{x,0},
                {f,281},
                {list,[{atom,false},
                       {f,287},
                       {atom,'maybe'},
                       {f,284},
                       {atom,true},
                       {f,283}]}}.
  {label,283}.
    {allocate,0,4}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {line,[{location,"beam_bounds_SUITE.erl",545}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {test,is_eq_exact,{f,288},[{x,0},{atom,any}]}.
    {deallocate,0}.
    return.
  {label,284}.
    {allocate,9,4}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {move,{x,3},{y,6}}.
    {move,{x,2},{y,7}}.
    {move,{x,1},{y,8}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {line,[{location,"beam_bounds_SUITE.erl",549}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {test,is_tuple,{f,289},[{x,0}]}.
    {test,test_arity,{f,289},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{y,5}}.
    {test,is_tuple,{f,289},[{y,5}]}.
    {test,test_arity,{f,289},[{y,5},2]}.
    {get_tuple_element,{x,0},1,{y,4}}.
    {test,is_tuple,{f,289},[{y,4}]}.
    {test,test_arity,{f,289},[{y,4},2]}.
    {get_tuple_element,{y,5},0,{x,0}}.
    {get_tuple_element,{y,5},1,{x,1}}.
    {get_tuple_element,{y,6},0,{y,3}}.
    {get_tuple_element,{y,6},1,{y,2}}.
    {get_tuple_element,{y,7},0,{y,1}}.
    {get_tuple_element,{y,7},1,{y,0}}.
    {test,is_ge,{f,285},[{x,1},{x,0}]}.
    {get_tuple_element,{y,4},0,{x,2}}.
    {get_tuple_element,{y,4},1,{x,3}}.
    {test,is_ge,{f,285},[{x,3},{x,2}]}.
    {test,is_ge,{f,285},[{x,0},{y,1}]}.
    {test,is_ge,{f,285},[{y,0},{x,1}]}.
    {test,is_ge,{f,285},[{x,2},{y,3}]}.
    {test,is_lt,{f,286},[{y,2},{x,3}]}.
  {label,285}.
    {test_heap,8,0}.
    {put_list,{y,4},nil,{x,0}}.
    {put_list,{y,5},{x,0},{x,0}}.
    {put_list,{y,6},{x,0},{x,0}}.
    {put_list,{y,7},{x,0},{x,1}}.
    {move,{literal,"~p ~p infers as ~p ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",554}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,ranges_grew},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",556}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,286}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {trim,2,7}.
    {line,[{location,"beam_bounds_SUITE.erl",568}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,0},{x,4}}.
    {move,{y,1},{x,5}}.
    {move,{y,2},{x,6}}.
    {move,{y,3},{x,7}}.
    {move,{y,4},{x,3}}.
    {move,{y,5},{x,2}}.
    {move,{y,6},{x,1}}.
    {trim,7,0}.
    {call,8,{f,336}}. % '-test_infer_relop/4-lc$^0/1-0-'/8
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,287}.
    {allocate,0,4}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {line,[{location,"beam_bounds_SUITE.erl",547}]}.
    {call_ext,3,{extfunc,beam_bounds,infer_relop_types,3}}.
    {test,is_eq_exact,{f,290},[{x,0},{atom,none}]}.
    {deallocate,0}.
    return.
  {label,288}.
    {line,[{location,"beam_bounds_SUITE.erl",545}]}.
    {badmatch,{x,0}}.
  {label,289}.
    {line,[{location,"beam_bounds_SUITE.erl",549}]}.
    {badmatch,{x,0}}.
  {label,290}.
    {line,[{location,"beam_bounds_SUITE.erl",547}]}.
    {badmatch,{x,0}}.


{function, in_range, 2, 292}.
  {label,291}.
    {line,[{location,"beam_bounds_SUITE.erl",573}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,in_range},2}.
  {label,292}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_ge,{f,293},[{x,0},{x,2}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {bif,'>=',{f,0},[{x,1},{x,0}],{x,0}}.
    return.
  {label,293}.
    {move,{atom,false},{x,0}}.
    return.


{function, rel_op, 3, 295}.
  {label,294}.
    {line,[{location,"beam_bounds_SUITE.erl",576}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,rel_op},3}.
  {label,295}.
    {'%',{var_info,{x,0},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {'%',{var_info,{x,1},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{}}}]}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,4}}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{atom,none},{x,5}}.
    {swap,{x,1},{x,2}}.
    {call_only,6,{f,297}}. % rel_op_1/6


{function, rel_op_1, 6, 297}.
  {label,296}.
    {line,[{location,"beam_bounds_SUITE.erl",579}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,rel_op_1},6}.
  {label,297}.
    {'%',{var_info,{x,0},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_ge,{f,298},[{x,2},{x,1}]}.
    {allocate,5,6}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,3},{x,2}}.
    {move,{x,4},{x,3}}.
    {move,{x,5},{x,4}}.
    {line,[{location,"beam_bounds_SUITE.erl",580}]}.
    {call,5,{f,300}}. % rel_op_2/5
    {line,[{location,"beam_bounds_SUITE.erl",581}]}.
    {gc_bif,'+',{f,0},1,[{y,3},{integer,1}],{x,1}}.
    {move,{y,0},{x,4}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{x,0},{x,5}}.
    {move,{y,4},{x,0}}.
    {call_last,6,{f,297},5}. % rel_op_1/6
  {label,298}.
    {move,{x,5},{x,0}}.
    return.


{function, rel_op_2, 5, 300}.
  {label,299}.
    {line,[{location,"beam_bounds_SUITE.erl",585}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,rel_op_2},5}.
  {label,300}.
    {'%',{var_info,{x,0},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_ge,{f,303},[{x,3},{x,2}]}.
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
    {line,[{location,"beam_bounds_SUITE.erl",586}]}.
    {apply,2}.
    {test,is_ne_exact,{f,302},[{y,0},{atom,none}]}.
    {test,is_eq_exact,{f,301},[{y,0},{x,0}]}.
    {move,{y,0},{x,0}}.
    {jump,{f,302}}.
  {label,301}.
    {move,{atom,'maybe'},{x,0}}.
  {label,302}.
    {line,[{location,"beam_bounds_SUITE.erl",592}]}.
    {gc_bif,'+',{f,0},1,[{y,2},{integer,1}],{x,2}}.
    {move,{y,1},{x,3}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{x,4}}.
    {move,{y,4},{x,0}}.
    {call_last,5,{f,300},5}. % rel_op_2/5
  {label,303}.
    {move,{x,4},{x,0}}.
    return.


{function, redundant_masking, 1, 305}.
  {label,304}.
    {line,[{location,"beam_bounds_SUITE.erl",596}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,redundant_masking},1}.
  {label,305}.
    {allocate,0,0}.
    {move,{integer,15},{x,1}}.
    {move,{integer,-7},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",599}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"beam_bounds_SUITE.erl",601}]}.
    {call,2,{f,324}}. % '-redundant_masking/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{integer,255},{x,1}}.
    {move,{literal,{'-inf',10}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",605}]}.
    {call_ext,2,{extfunc,beam_bounds,is_masking_redundant,2}}.
    {test,is_eq_exact,{f,307},[{x,0},{atom,false}]}.
    {move,{integer,255},{x,1}}.
    {move,{literal,{0,'+inf'}},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",606}]}.
    {call_ext,2,{extfunc,beam_bounds,is_masking_redundant,2}}.
    {test,is_eq_exact,{f,306},[{x,0},{atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,306}.
    {badmatch,{x,0}}.
  {label,307}.
    {line,[{location,"beam_bounds_SUITE.erl",605}]}.
    {badmatch,{x,0}}.


{function, test_redundant_masking, 2, 309}.
  {label,308}.
    {line,[{location,"beam_bounds_SUITE.erl",609}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_redundant_masking},2}.
  {label,309}.
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
    {line,[{location,"beam_bounds_SUITE.erl",610}]}.
    {call,3,{f,314}}. % test_redundant_masking/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {move,{y,4},{x,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",611}]}.
    {call_ext,2,{extfunc,beam_bounds,is_masking_redundant,2}}.
    {test,is_ne_exact,{f,311},[{x,0},{tr,{y,0},{t_atom,[false,true]}}]}.
    {test,is_eq_exact,{f,312},[{x,0},{atom,false}]}.
    {gc_bif,'+',{f,310},1,[{y,3},{integer,1}],{x,1}}.
    {gc_bif,'band',
            {f,310},
            2,
            [{tr,{y,3},{t_number,any}},{tr,{x,1},{t_number,any}}],
            {x,1}}.
    {test,is_eq_exact,{f,311},[{tr,{x,1},{t_integer,any}},{integer,0}]}.
  {label,310}.
    {test,is_eq_exact,{f,312},[{tr,{y,2},{t_number,any}},{y,1}]}.
  {label,311}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,312}.
    {test_heap,8,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,4},{x,0},{x,1}}.
    {trim,5,0}.
    {move,{literal,"beam_bounds:is_masking_redundant(~p, ~p) evaluates to ~p; should be ~p\n"},
          {x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",620}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_boolean},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",623}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.


{function, test_redundant_masking, 3, 314}.
  {label,313}.
    {line,[{location,"beam_bounds_SUITE.erl",626}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,test_redundant_masking},3}.
  {label,314}.
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_ge,{f,316},[{x,1},{tr,{x,0},{t_number,any}}]}.
    {line,[{location,"beam_bounds_SUITE.erl",627}]}.
    {gc_bif,'band',{f,0},3,[{tr,{x,0},{t_number,any}},{x,2}],{x,3}}.
    {test,is_eq_exact,
          {f,315},
          [{tr,{x,3},{t_integer,any}},{tr,{x,0},{t_integer,any}}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,0},{t_integer,any}},{integer,1}],{x,0}}.
    {call_only,3,{f,314}}. % test_redundant_masking/3
  {label,315}.
    {move,{atom,false},{x,0}}.
    return.
  {label,316}.
    {move,{atom,true},{x,0}}.
    return.


{function, id, 1, 318}.
  {label,317}.
    {line,[{location,"beam_bounds_SUITE.erl",634}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,id},1}.
  {label,318}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[bad,false,true]},
                                   none,
                                   {t_integer,{0,42}},
                                   none,none}}]}}.
    return.


{function, module_info, 0, 320}.
  {label,319}.
    {line,[]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,module_info},0}.
  {label,320}.
    {move,{atom,beam_bounds_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 322}.
  {label,321}.
    {line,[]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,module_info},1}.
  {label,322}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_bounds_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-redundant_masking/1-lc$^0/1-0-', 2, 324}.
  {label,323}.
    {line,[{location,"beam_bounds_SUITE.erl",601}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-redundant_masking/1-lc$^0/1-0-'},
               2}.
  {label,324}.
    {test,is_nonempty_list,{f,325},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",602}]}.
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
    {call_last,4,{f,328},3}. % '-redundant_masking/1-lc$^1/1-1-'/4
  {label,325}.
    {test,is_nil,{f,326},[{x,0}]}.
    return.
  {label,326}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",601}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-redundant_masking/1-lc$^1/1-1-', 4, 328}.
  {label,327}.
    {line,[{location,"beam_bounds_SUITE.erl",602}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-redundant_masking/1-lc$^1/1-1-'},
               4}.
  {label,328}.
    {'%',{var_info,{x,2},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,329},[{x,0}]}.
    {get_list,{x,0},{x,4},{x,0}}.
    {move,{x,3},{x,5}}.
    {swap,{x,0},{x,3}}.
    {call_only,6,{f,332}}. % '-redundant_masking/1-lc$^2/1-2-'/6
  {label,329}.
    {test,is_nil,{f,330},[{x,0}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,324}}. % '-redundant_masking/1-lc$^0/1-0-'/2
  {label,330}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-redundant_masking/1-lc$^2/1-2-', 6, 332}.
  {label,331}.
    {line,[{location,"beam_bounds_SUITE.erl",603}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-redundant_masking/1-lc$^2/1-2-'},
               6}.
  {label,332}.
    {'%',{var_info,{x,2},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,333},[{x,0}]}.
    {allocate_heap,6,3,6}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{x,2},{y,4}}.
    {move,{x,1},{y,5}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",600}]}.
    {call,2,{f,309}}. % test_redundant_masking/2
    {move,{y,1},{x,5}}.
    {move,{y,2},{x,4}}.
    {move,{y,3},{x,3}}.
    {move,{y,4},{x,2}}.
    {move,{y,5},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,6,{f,332},6}. % '-redundant_masking/1-lc$^2/1-2-'/6
  {label,333}.
    {test,is_nil,{f,334},[{x,0}]}.
    {move,{x,3},{x,0}}.
    {move,{x,5},{x,3}}.
    {call_only,4,{f,328}}. % '-redundant_masking/1-lc$^1/1-1-'/4
  {label,334}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",603}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_infer_relop/4-lc$^0/1-0-', 8, 336}.
  {label,335}.
    {line,[{location,"beam_bounds_SUITE.erl",568}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_infer_relop/4-lc$^0/1-0-'},
               8}.
  {label,336}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,6},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_nonempty_list,{f,337},[{x,0}]}.
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
    {line,[{location,"beam_bounds_SUITE.erl",569}]}.
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
    {call_last,10,{f,340},9}. % '-test_infer_relop/4-lc$^1/1-1-'/10
  {label,337}.
    {test,is_nil,{f,338},[{x,0}]}.
    return.
  {label,338}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",568}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_infer_relop/4-lc$^1/1-1-', 10, 340}.
  {label,339}.
    {line,[{location,"beam_bounds_SUITE.erl",569}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_infer_relop/4-lc$^1/1-1-'},
               10}.
  {label,340}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,6},[{type,{t_tuple,2,true,#{}}}]}}.
    {'%',{var_info,{x,7},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_nonempty_list,{f,345},[{x,0}]}.
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
    {line,[{location,"beam_bounds_SUITE.erl",570}]}.
    {apply,2}.
    {select_val,{x,0},
                {f,344},
                {list,[{atom,false},{f,343},{atom,true},{f,341}]}}.
  {label,341}.
    {move,{y,4},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",559}]}.
    {call,2,{f,292}}. % in_range/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,342},[{x,0},{atom,true}]}.
    {move,{y,5},{x,1}}.
    {move,{y,1},{x,0}}.
    {call,2,{f,292}}. % in_range/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_ne_exact,{f,343},[{x,0},{atom,true}]}.
  {label,342}.
    {test_heap,4,0}.
    {put_list,{y,1},nil,{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,"X = ~p; Y = ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",563}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,8,0}.
    {put_list,{y,5},nil,{x,0}}.
    {put_list,{y,4},{x,0},{x,0}}.
    {put_list,{y,8},{x,0},{x,0}}.
    {put_list,{y,9},{x,0},{x,1}}.
    {move,{literal,"~p ~p infers as ~p ~p\n"},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",564}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,bad_inference},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",566}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,343}.
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
    {call_last,10,{f,340},11}. % '-test_infer_relop/4-lc$^1/1-1-'/10
  {label,344}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_filter},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",570}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},11}.
  {label,345}.
    {test,is_nil,{f,346},[{x,0}]}.
    {move,{x,8},{x,0}}.
    {call_only,8,{f,336}}. % '-test_infer_relop/4-lc$^0/1-0-'/8
  {label,346}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",569}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_relop/1-lc$^0/1-0-', 3, 348}.
  {label,347}.
    {line,[{location,"beam_bounds_SUITE.erl",527}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-test_relop/1-lc$^0/1-0-'},3}.
  {label,348}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_nonempty_list,{f,349},[{x,0}]}.
    {allocate,4,3}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",528}]}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,4}}.
    {move,{y,3},{x,1}}.
    {call_last,5,{f,352},4}. % '-test_relop/1-lc$^1/1-1-'/5
  {label,349}.
    {test,is_nil,{f,350},[{x,0}]}.
    return.
  {label,350}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",527}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_relop/1-lc$^1/1-1-', 5, 352}.
  {label,351}.
    {line,[{location,"beam_bounds_SUITE.erl",528}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-test_relop/1-lc$^1/1-1-'},5}.
  {label,352}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_nonempty_list,{f,353},[{x,0}]}.
    {get_list,{x,0},{x,5},{x,0}}.
    {move,{x,4},{x,6}}.
    {swap,{x,0},{x,4}}.
    {call_only,7,{f,356}}. % '-test_relop/1-lc$^2/1-2-'/7
  {label,353}.
    {test,is_nil,{f,354},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {move,{x,4},{x,2}}.
    {call_only,3,{f,348}}. % '-test_relop/1-lc$^0/1-0-'/3
  {label,354}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_relop/1-lc$^2/1-2-', 7, 356}.
  {label,355}.
    {line,[{location,"beam_bounds_SUITE.erl",529}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-test_relop/1-lc$^2/1-2-'},7}.
  {label,356}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_nonempty_list,{f,357},[{x,0}]}.
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
    {line,[{location,"beam_bounds_SUITE.erl",530}]}.
    {call_ext,2,{extfunc,lists,nthtail,2}}.
    {move,{y,0},{x,6}}.
    {move,{y,1},{x,7}}.
    {move,{y,2},{x,8}}.
    {move,{y,3},{x,5}}.
    {move,{y,4},{x,4}}.
    {move,{y,5},{x,3}}.
    {move,{y,6},{x,2}}.
    {move,{y,7},{x,1}}.
    {call_last,9,{f,360},8}. % '-test_relop/1-lc$^3/1-3-'/9
  {label,357}.
    {test,is_nil,{f,358},[{x,0}]}.
    {move,{x,4},{x,0}}.
    {move,{x,6},{x,4}}.
    {call_only,5,{f,352}}. % '-test_relop/1-lc$^1/1-1-'/5
  {label,358}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",529}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_relop/1-lc$^3/1-3-', 9, 360}.
  {label,359}.
    {line,[{location,"beam_bounds_SUITE.erl",530}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-test_relop/1-lc$^3/1-3-'},9}.
  {label,360}.
    {'%',{var_info,{x,1},[{type,{t_atom,['<','=<','>','>=']}}]}}.
    {test,is_nonempty_list,{f,361},[{x,0}]}.
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
    {line,[{location,"beam_bounds_SUITE.erl",526}]}.
    {call,3,{f,279}}. % test_relop_1/3
    {move,{y,1},{x,8}}.
    {move,{y,2},{x,7}}.
    {move,{y,3},{x,6}}.
    {move,{y,4},{x,5}}.
    {move,{y,5},{x,4}}.
    {move,{y,6},{x,3}}.
    {move,{y,7},{x,2}}.
    {move,{y,8},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,9,{f,360},9}. % '-test_relop/1-lc$^3/1-3-'/9
  {label,361}.
    {test,is_nil,{f,362},[{x,0}]}.
    {move,{x,6},{x,0}}.
    {move,{x,8},{x,6}}.
    {call_only,7,{f,356}}. % '-test_relop/1-lc$^2/1-2-'/7
  {label,362}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",530}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_noncommutative/3-lc$^0/1-0-', 6, 364}.
  {label,363}.
    {line,[{location,"beam_bounds_SUITE.erl",465}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_noncommutative/3-lc$^0/1-0-'},
               6}.
  {label,364}.
    {'%',{var_info,{x,1},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,-12}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{-12,0}}}]}}.
    {test,is_nonempty_list,{f,365},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",466}]}.
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
    {call_last,8,{f,368},6}. % '-test_noncommutative/3-lc$^1/1-1-'/8
  {label,365}.
    {test,is_nil,{f,366},[{x,0}]}.
    return.
  {label,366}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",465}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_noncommutative/3-lc$^1/1-1-', 8, 368}.
  {label,367}.
    {line,[{location,"beam_bounds_SUITE.erl",466}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_noncommutative/3-lc$^1/1-1-'},
               8}.
  {label,368}.
    {'%',{var_info,{x,1},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,-12}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,369},[{x,0}]}.
    {get_list,{x,0},{x,8},{x,0}}.
    {move,{x,7},{x,9}}.
    {swap,{x,8},{x,7}}.
    {swap,{x,6},{x,8}}.
    {swap,{x,0},{x,6}}.
    {call_only,10,{f,372}}. % '-test_noncommutative/3-lc$^2/1-2-'/10
  {label,369}.
    {test,is_nil,{f,370},[{x,0}]}.
    {move,{x,7},{x,5}}.
    {move,{x,4},{x,0}}.
    {move,{x,6},{x,4}}.
    {call_only,6,{f,364}}. % '-test_noncommutative/3-lc$^0/1-0-'/6
  {label,370}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_noncommutative/3-lc$^2/1-2-', 10, 372}.
  {label,371}.
    {line,[{location,"beam_bounds_SUITE.erl",467}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_noncommutative/3-lc$^2/1-2-'},
               10}.
  {label,372}.
    {'%',{var_info,{x,1},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,-12}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,373},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",468}]}.
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
    {call_last,12,{f,376},10}. % '-test_noncommutative/3-lc$^3/1-3-'/12
  {label,373}.
    {test,is_nil,{f,374},[{x,0}]}.
    {move,{x,9},{x,7}}.
    {move,{x,6},{x,0}}.
    {move,{x,8},{x,6}}.
    {call_only,8,{f,368}}. % '-test_noncommutative/3-lc$^1/1-1-'/8
  {label,374}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",467}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_noncommutative/3-lc$^3/1-3-', 12, 376}.
  {label,375}.
    {line,[{location,"beam_bounds_SUITE.erl",468}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_noncommutative/3-lc$^3/1-3-'},
               12}.
  {label,376}.
    {'%',{var_info,{x,1},[{type,{t_atom,['-','bsl','bsr','div','rem']}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,-12}}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,5},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,9},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,377},[{x,0}]}.
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
    {line,[{location,"beam_bounds_SUITE.erl",464}]}.
    {call,3,{f,252}}. % test_noncommutative_1/3
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
    {call_last,12,{f,376},11}. % '-test_noncommutative/3-lc$^3/1-3-'/12
  {label,377}.
    {test,is_nil,{f,378},[{x,0}]}.
    {move,{x,11},{x,9}}.
    {move,{x,8},{x,0}}.
    {move,{x,10},{x,8}}.
    {call_only,10,{f,372}}. % '-test_noncommutative/3-lc$^2/1-2-'/10
  {label,378}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",468}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_commutative/2-lc$^0/1-0-', 4, 380}.
  {label,379}.
    {line,[{location,"beam_bounds_SUITE.erl",438}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_commutative/2-lc$^0/1-0-'},
               4}.
  {label,380}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,0}}}]}}.
    {test,is_nonempty_list,{f,381},[{x,0}]}.
    {get_list,{x,0},{x,4},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",439}]}.
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
    {call_last,6,{f,384},5}. % '-test_commutative/2-lc$^1/1-1-'/6
  {label,381}.
    {test,is_nil,{f,382},[{x,0}]}.
    return.
  {label,382}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",438}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_commutative/2-lc$^1/1-1-', 6, 384}.
  {label,383}.
    {line,[{location,"beam_bounds_SUITE.erl",439}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_commutative/2-lc$^1/1-1-'},
               6}.
  {label,384}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,385},[{x,0}]}.
    {get_list,{x,0},{x,6},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",440}]}.
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
    {call_last,8,{f,388},7}. % '-test_commutative/2-lc$^2/1-2-'/8
  {label,385}.
    {test,is_nil,{f,386},[{x,0}]}.
    {move,{x,3},{x,0}}.
    {move,{x,5},{x,3}}.
    {call_only,4,{f,380}}. % '-test_commutative/2-lc$^0/1-0-'/4
  {label,386}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",439}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_commutative/2-lc$^2/1-2-', 8, 388}.
  {label,387}.
    {line,[{location,"beam_bounds_SUITE.erl",440}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_commutative/2-lc$^2/1-2-'},
               8}.
  {label,388}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,389},[{x,0}]}.
    {get_list,{x,0},{x,8},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",441}]}.
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
    {call_last,10,{f,392},9}. % '-test_commutative/2-lc$^3/1-3-'/10
  {label,389}.
    {test,is_nil,{f,390},[{x,0}]}.
    {move,{x,5},{x,0}}.
    {move,{x,7},{x,5}}.
    {call_only,6,{f,384}}. % '-test_commutative/2-lc$^1/1-1-'/6
  {label,390}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",440}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-test_commutative/2-lc$^3/1-3-', 10, 392}.
  {label,391}.
    {line,[{location,"beam_bounds_SUITE.erl",441}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-test_commutative/2-lc$^3/1-3-'},
               10}.
  {label,392}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{-12,0}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,8},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,394},[{x,0}]}.
    {test_heap,6,10}.
    {get_list,{x,0},{x,10},{x,0}}.
    {put_tuple2,{x,11},{list,[{x,4},{x,6}]}}.
    {put_tuple2,{x,10},{list,[{x,8},{x,10}]}}.
    {test,is_ge,
          {f,393},
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
    {line,[{location,"beam_bounds_SUITE.erl",437}]}.
    {call,3,{f,243}}. % test_commutative_1/3
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
    {call_last,10,{f,392},10}. % '-test_commutative/2-lc$^3/1-3-'/10
  {label,393}.
    {call_only,10,{f,392}}. % '-test_commutative/2-lc$^3/1-3-'/10
  {label,394}.
    {test,is_nil,{f,395},[{x,0}]}.
    {move,{x,7},{x,0}}.
    {move,{x,9},{x,7}}.
    {call_only,8,{f,388}}. % '-test_commutative/2-lc$^2/1-2-'/8
  {label,395}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",441}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-abs_bounds/1-lc$^0/1-0-', 2, 397}.
  {label,396}.
    {line,[{location,"beam_bounds_SUITE.erl",389}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-abs_bounds/1-lc$^0/1-0-'},2}.
  {label,397}.
    {test,is_nonempty_list,{f,398},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",390}]}.
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
    {call_last,4,{f,401},3}. % '-abs_bounds/1-lc$^1/1-1-'/4
  {label,398}.
    {test,is_nil,{f,399},[{x,0}]}.
    return.
  {label,399}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",389}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-abs_bounds/1-lc$^1/1-1-', 4, 401}.
  {label,400}.
    {line,[{location,"beam_bounds_SUITE.erl",390}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-abs_bounds/1-lc$^1/1-1-'},4}.
  {label,401}.
    {'%',{var_info,{x,2},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,402},[{x,0}]}.
    {allocate_heap,4,3,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",388}]}.
    {call,1,{f,217}}. % abs_bounds_1/1
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,4,{f,401},4}. % '-abs_bounds/1-lc$^1/1-1-'/4
  {label,402}.
    {test,is_nil,{f,403},[{x,0}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,397}}. % '-abs_bounds/1-lc$^0/1-0-'/2
  {label,403}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",390}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bnot_bounds_4/0-lbc$^0/2-0-', 2, 405}.
  {label,404}.
    {line,[{location,"beam_bounds_SUITE.erl",271}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-bnot_bounds_4/0-lbc$^0/2-0-'},
               2}.
  {label,405}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {get_hd,{x,0},{x,0}}.
    {gc_bif,'+',
            {f,0},
            2,
            [{tr,{x,0},{t_integer,{1,2}}},{tr,{x,0},{t_integer,{1,2}}}],
            {x,0}}.
    {gc_bif,'bnot',{f,0},2,[{tr,{x,0},{t_integer,{2,4}}}],{x,0}}.
    {call_only,2,{f,407}}. % '-bnot_bounds_4/0-lbc$^1/2-1-'/2


{function, '-bnot_bounds_4/0-lbc$^1/2-1-', 2, 407}.
  {label,406}.
    {line,[{location,"beam_bounds_SUITE.erl",271}]}.
    {func_info,{atom,beam_bounds_SUITE},
               {atom,'-bnot_bounds_4/0-lbc$^1/2-1-'},
               2}.
  {label,407}.
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bnot_bounds/1-lc$^0/1-0-', 2, 409}.
  {label,408}.
    {line,[{location,"beam_bounds_SUITE.erl",226}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-bnot_bounds/1-lc$^0/1-0-'},2}.
  {label,409}.
    {test,is_nonempty_list,{f,410},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {line,[{location,"beam_bounds_SUITE.erl",227}]}.
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
    {call_last,4,{f,413},3}. % '-bnot_bounds/1-lc$^1/1-1-'/4
  {label,410}.
    {test,is_nil,{f,411},[{x,0}]}.
    return.
  {label,411}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",226}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bnot_bounds/1-lc$^1/1-1-', 4, 413}.
  {label,412}.
    {line,[{location,"beam_bounds_SUITE.erl",227}]}.
    {func_info,{atom,beam_bounds_SUITE},{atom,'-bnot_bounds/1-lc$^1/1-1-'},4}.
  {label,413}.
    {'%',{var_info,{x,2},[{type,{t_number,any}}]}}.
    {test,is_nonempty_list,{f,414},[{x,0}]}.
    {allocate_heap,4,3,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",225}]}.
    {call,1,{f,127}}. % bnot_bounds_1/1
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,4,{f,413},4}. % '-bnot_bounds/1-lc$^1/1-1-'/4
  {label,414}.
    {test,is_nil,{f,415},[{x,0}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,409}}. % '-bnot_bounds/1-lc$^0/1-0-'/2
  {label,415}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"beam_bounds_SUITE.erl",227}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
