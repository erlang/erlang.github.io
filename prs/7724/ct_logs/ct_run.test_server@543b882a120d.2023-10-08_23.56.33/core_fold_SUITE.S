{module, core_fold_SUITE}.  %% version = 0

{exports, [{all,0},
           {append,1},
           {bifs,1},
           {configuration,1},
           {cover_letrec_effect,1},
           {coverage,1},
           {empty_values,1},
           {end_per_group,2},
           {end_per_suite,1},
           {eq,1},
           {export_from_case,1},
           {foo,0},
           {foo,1},
           {foo,2},
           {foo,3},
           {groups,0},
           {guard_try_catch,1},
           {init_per_group,2},
           {init_per_suite,1},
           {map_effect,1},
           {mixed_matching_clauses,1},
           {module_info,0},
           {module_info,1},
           {multiple_aliases,1},
           {nested_call_in_case,1},
           {nested_lets,1},
           {no_no_file,1},
           {receive_effect,1},
           {redundant_boolean_clauses,1},
           {redundant_stack_frame,1},
           {setelement,1},
           {suite,0},
           {supplies,1},
           {t_apply,1},
           {t_element,1},
           {t_length,1},
           {unnecessary_building,1},
           {unused_multiple_values,1},
           {unused_multiple_values_error,1}]}.

{attributes, []}.

{labels, 423}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"core_fold_SUITE.erl",40}]}.
    {func_info,{atom,core_fold_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"core_fold_SUITE.erl",42}]}.
    {func_info,{atom,core_fold_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"core_fold_SUITE.erl",45}]}.
    {func_info,{atom,core_fold_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{p,[parallel],
                       [t_element,setelement,t_length,append,t_apply,bifs,eq,
                        nested_call_in_case,guard_try_catch,coverage,
                        unused_multiple_values_error,unused_multiple_values,
                        multiple_aliases,redundant_boolean_clauses,
                        mixed_matching_clauses,unnecessary_building,
                        no_no_file,configuration,supplies,
                        redundant_stack_frame,export_from_case,empty_values,
                        cover_letrec_effect,receive_effect,nested_lets,
                        map_effect]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"core_fold_SUITE.erl",58}]}.
    {func_info,{atom,core_fold_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,core_fold_SUITE},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",59}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"core_fold_SUITE.erl",62}]}.
    {func_info,{atom,core_fold_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"core_fold_SUITE.erl",65}]}.
    {func_info,{atom,core_fold_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"core_fold_SUITE.erl",68}]}.
    {func_info,{atom,core_fold_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, t_element, 1, 16}.
  {label,15}.
    {line,[{location,"core_fold_SUITE.erl",72}]}.
    {func_info,{atom,core_fold_SUITE},{atom,t_element},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {allocate,8,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {move,{x,0},{y,5}}.
    {line,[{location,"core_fold_SUITE.erl",74}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,40},[{x,0},{tr,{y,5},reference}]}.
    {move,{atom,b},{x,0}}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",75}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,39},[{x,0},{atom,b}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{atom,k},{y,5}]}}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",79}]}.
    {call,1,{f,348}}. % id/1
    {test,is_map,{f,38},[{x,0}]}.
    {get_map_elements,{f,38},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,k},{x,1}]}}.
    {test,is_eq_exact,{f,38},[{x,1},{tr,{y,5},reference}]}.
    {move,{literal,{x,y,z}},{x,0}}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",84}]}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",85}]}.
    {call,1,{f,348}}. % id/1
    {line,[{location,"core_fold_SUITE.erl",86}]}.
    {bif,element,{f,0},[{integer,1},{y,0}],{x,1}}.
    {move,{x,0},{y,7}}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",86}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,37},[{x,0},{atom,x}]}.
    {line,[{location,"core_fold_SUITE.erl",87}]}.
    {bif,element,{f,0},[{y,7},{literal,{a,b,c,d}}],{x,0}}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",87}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,36},[{x,0},{atom,c}]}.
    {test_heap,5,0}.
    {put_tuple2,{x,0},{list,[{atom,a},{atom,b},{y,5},{atom,d}]}}.
    {line,[{location,"core_fold_SUITE.erl",88}]}.
    {bif,element,
         {f,0},
         [{tr,{y,7},{t_integer,{1,16777215}}},
          {tr,{x,0},
              {t_tuple,4,true,
                       #{1 => {t_atom,[a]},
                         2 => {t_atom,[b]},
                         3 => reference,
                         4 => {t_atom,[d]}}}}],
         {x,0}}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",88}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,35},[{x,0},{tr,{y,5},reference}]}.
    {line,[{location,"core_fold_SUITE.erl",89}]}.
    {bif,element,
         {f,0},
         [{tr,{y,7},{t_integer,{1,16777215}}},
          {tr,{y,0},{t_tuple,1,false,#{}}}],
         {x,0}}.
    {init_yregs,{list,[{y,7}]}}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",89}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,34},[{x,0},{atom,z}]}.
    {'catch',{y,7},{f,17}}.
    {bif,element,{f,0},[{integer,5},{literal,{a,b,c,d}}],{x,0}}.
  {label,17}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,33},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,33},[{x,1},2,{atom,badarg}]}.
    {test_heap,5,0}.
    {put_tuple2,{x,0},{list,[{atom,a},{atom,b},{y,5},{atom,d}]}}.
    {'catch',{y,6},{f,18}}.
    {bif,element,
         {f,0},
         [{integer,5},
          {tr,{x,0},
              {t_tuple,4,true,
                       #{1 => {t_atom,[a]},
                         2 => {t_atom,[b]},
                         3 => reference,
                         4 => {t_atom,[d]}}}}],
         {x,0}}.
  {label,18}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,32},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,32},[{x,1},2,{atom,badarg}]}.
    {test_heap,5,0}.
    {put_tuple2,{x,0},{list,[{atom,a},{atom,b},{y,5},{atom,d}]}}.
    {'catch',{y,5},{f,19}}.
    {bif,element,
         {f,0},
         [{float,5.0},
          {tr,{x,0},
              {t_tuple,4,true,
                       #{1 => {t_atom,[a]},
                         2 => {t_atom,[b]},
                         3 => reference,
                         4 => {t_atom,[d]}}}}],
         {x,0}}.
  {label,19}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,31},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,31},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,4},{f,20}}.
    {bif,element,{f,0},[{integer,2},{atom,not_a_tuple}],{x,0}}.
  {label,20}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,30},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,30},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,3},{f,21}}.
    {bif,element,{f,0},[{integer,2},nil],{x,0}}.
  {label,21}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,29},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,29},[{x,1},2,{atom,badarg}]}.
    {bif,'==',{f,0},[{tr,{y,0},{t_tuple,1,false,#{}}},{integer,3}],{x,0}}.
    {'catch',{y,2},{f,22}}.
    {bif,element,{f,0},[{integer,2},{tr,{x,0},{t_atom,[false,true]}}],{x,0}}.
  {label,22}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,28},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,28},[{x,1},2,{atom,badarg}]}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{scope,[5,6]},{location,"core_fold_SUITE.erl",98}]}.
    {call,1,{f,348}}. % id/1
    {test,is_tuple,{f,27},[{x,0}]}.
    {test,test_arity,{f,27},[{x,0},3]}.
    {'catch',{y,1},{f,23}}.
    {bif,element,{f,0},[{integer,4},{tr,{x,0},{t_tuple,3,true,#{}}}],{x,0}}.
  {label,23}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,26},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,26},[{x,1},2,{atom,badarg}]}.
    {bif,tuple_size,{f,0},[{tr,{y,0},{t_tuple,1,false,#{}}}],{x,0}}.
    {'catch',{y,0},{f,24}}.
    {bif,element,
         {f,0},
         [{integer,1},{tr,{x,0},{t_integer,{1,16777215}}}],
         {x,0}}.
  {label,24}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,25},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,25},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,8}.
    return.
  {label,25}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",102}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",100}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",98}]}.
    {case_end,{x,0}}.
  {label,28}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",97}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",96}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,"\b"},{location,"core_fold_SUITE.erl",95}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,"\n"},{location,"core_fold_SUITE.erl",94}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,"\f"},{location,"core_fold_SUITE.erl",93}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",92}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",89}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",88}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",87}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",86}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",75}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{scope,[16]},{location,"core_fold_SUITE.erl",74}]}.
    {badmatch,{x,0}}.


{function, setelement, 1, 42}.
  {label,41}.
    {line,[{location,"core_fold_SUITE.erl",106}]}.
    {func_info,{atom,core_fold_SUITE},{atom,setelement},1}.
  {label,42}.
    {test,is_list,{f,41},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",107}]}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",108}]}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{y,b,c}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",109}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,56},[{x,0},{literal,{y,b,c}}]}.
    {test_heap,8,0}.
    {put_tuple2,{x,0},{list,[{atom,a},{y,3},{atom,c}]}}.
    {update_record,{atom,copy},3,{x,0},{x,0},{list,[1,{atom,y}]}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",110}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,55},[{x,0},{literal,{y,b,c}}]}.
    {move,{literal,{a,y,c}},{x,0}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",111}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,54},[{x,0},{literal,{a,y,c}}]}.
    {test_heap,4,0}.
    {update_record,{atom,reuse},3,{literal,{a,b,c}},{x,0},{list,[2,{y,0}]}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",112}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,53},[{x,0},{literal,{a,[1,2,3],c}}]}.
    {test_heap,8,0}.
    {put_tuple2,{x,0},{list,[{atom,a},{y,3},{atom,c}]}}.
    {update_record,{atom,reuse},3,{x,0},{x,0},{list,[2,{y,0}]}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",113}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,52},[{x,0},{literal,{a,[1,2,3],c}}]}.
    {test_heap,4,0}.
    {update_record,{atom,reuse},3,{literal,{a,b,c}},{x,0},{list,[3,{y,0}]}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",114}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,51},[{x,0},{literal,{a,b,[1,2,3]}}]}.
    {test_heap,8,0}.
    {put_tuple2,{x,0},{list,[{atom,a},{y,3},{atom,c}]}}.
    {update_record,{atom,reuse},3,{x,0},{x,0},{list,[3,{y,0}]}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",115}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,50},[{x,0},{literal,{a,b,[1,2,3]}}]}.
    {move,{atom,x},{x,1}}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",117}]}.
    {call_ext,2,{extfunc,erlang,make_tuple,2}}.
    {call,1,{f,58}}. % setelement_cover/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,4,false,
                               #{1 => {t_atom,[d]},
                                 2 => {t_atom,[c]},
                                 3 => {t_atom,[b]},
                                 4 => {t_atom,[a]}}},
                       2 =>
                           {t_tuple,4,false,
                               #{1 => {t_atom,[z]},
                                 2 => {t_atom,[c]},
                                 3 => {t_atom,[b]},
                                 4 => {t_atom,[a]}}}}}}]}}.
    {test,is_eq_exact,
        {f,49},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,4,false,
                           #{1 => {t_atom,[d]},
                             2 => {t_atom,[c]},
                             3 => {t_atom,[b]},
                             4 => {t_atom,[a]}}},
                   2 =>
                       {t_tuple,4,false,
                           #{1 => {t_atom,[z]},
                             2 => {t_atom,[c]},
                             3 => {t_atom,[b]},
                             4 => {t_atom,[a]}}}}}},
         {literal,{{d,c,b,a,x},{z,c,b,a,x}}}]}.
    {'catch',{y,3},{f,43}}.
    {move,{literal,{a,b,c,d,e,f}},{x,0}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",119}]}.
    {call,1,{f,60}}. % setelement_crash/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,6,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[new]},
                                 4 => {t_atom,[d]},
                                 5 => {t_atom,[new]},
                                 6 => {t_atom,[f]}}},
                       2 => {t_bitstring,8,false}}}}]}}.
  {label,43}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,48},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,48},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,{a,b,c,d,e,f}},{x,0}}.
    {line,[{scope,[5,6]},{location,"core_fold_SUITE.erl",120}]}.
    {call,2,{f,62}}. % setelement_crash_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,2},{f,44}}.
    {move,{atom,not_a_tuple},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"core_fold_SUITE.erl",122}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,44}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,47},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,47},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,1},{f,45}}.
    {move,{literal,{a,b}},{x,1}}.
    {move,{y,0},{x,2}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,[3,4]},{location,"core_fold_SUITE.erl",123}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,45}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,46},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,46},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,46}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",123}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",119}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",117}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",115}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",114}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",113}]}.
    {badmatch,{x,0}}.
  {label,53}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",112}]}.
    {badmatch,{x,0}}.
  {label,54}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",111}]}.
    {badmatch,{x,0}}.
  {label,55}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",110}]}.
    {badmatch,{x,0}}.
  {label,56}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",109}]}.
    {badmatch,{x,0}}.


{function, setelement_cover, 1, 58}.
  {label,57}.
    {line,[{location,"core_fold_SUITE.erl",127}]}.
    {func_info,{atom,core_fold_SUITE},{atom,setelement_cover},1}.
  {label,58}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,a},{x,2}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",128}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {move,{y,1},{x,1}}.
    {move,{atom,a},{x,2}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",129}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {set_tuple_element,{atom,b},{x,0},2}.
    {move,{y,1},{x,1}}.
    {move,{atom,a},{x,2}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",130}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {set_tuple_element,{atom,b},{x,0},2}.
    {set_tuple_element,{atom,c},{x,0},1}.
    {move,{y,1},{x,1}}.
    {move,{atom,a},{x,2}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",131}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {set_tuple_element,{atom,b},{x,0},2}.
    {set_tuple_element,{atom,c},{x,0},1}.
    {move,{x,0},{y,0}}.
    {set_tuple_element,{atom,d},{x,0},0}.
    {move,{y,1},{x,1}}.
    {move,{atom,a},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",132}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {set_tuple_element,{atom,b},{x,0},2}.
    {set_tuple_element,{atom,c},{x,0},1}.
    {set_tuple_element,{atom,z},{x,0},0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,2}.
    return.


{function, setelement_crash, 1, 60}.
  {label,59}.
    {line,[{location,"core_fold_SUITE.erl",135}]}.
    {func_info,{atom,core_fold_SUITE},{atom,setelement_crash},1}.
  {label,60}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]},
                                     4 => {t_atom,[d]},
                                     5 => {t_atom,[e]},
                                     6 => {t_atom,[f]}}}}]}}.
    {line,[{location,"core_fold_SUITE.erl",140}]}.
    {bs_create_bin,{f,0},
                   3,0,8,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {literal,{a,b,c,d,new,f}},
                          {integer,8}]}}.
    {put_tuple2,{x,0},{list,[{literal,{a,b,new,d,new,f}},{x,0}]}}.
    return.


{function, setelement_crash_2, 2, 62}.
  {label,61}.
    {line,[{location,"core_fold_SUITE.erl",142}]}.
    {func_info,{atom,core_fold_SUITE},{atom,setelement_crash_2},2}.
  {label,62}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]},
                                     4 => {t_atom,[d]},
                                     5 => {t_atom,[e]},
                                     6 => {t_atom,[f]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, t_length, 1, 64}.
  {label,63}.
    {line,[{location,"core_fold_SUITE.erl",152}]}.
    {func_info,{atom,core_fold_SUITE},{atom,t_length},1}.
  {label,64}.
    {test,is_list,{f,63},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,{blurf,a,b}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",153}]}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{literal,"*+,-"},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",154}]}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",155}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,76},[{x,0},{integer,0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",156}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,75},[{x,0},{integer,1}]}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",157}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,74},[{x,0},{integer,2}]}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",158}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,73},[{x,0},{integer,4}]}.
    {line,[{location,"core_fold_SUITE.erl",161}]}.
    {gc_bif,length,{f,0},0,[{y,2}],{x,0}}.
    {test,is_eq_exact,
          {f,72},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,4}]}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{integer,5},{x,0}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",162}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,71},[{x,0},{integer,5}]}.
    {'catch',{y,2},{f,65}}.
    {line,[{location,"core_fold_SUITE.erl",165}]}.
    {gc_bif,length,{f,0},0,[{literal,[a,b|c]}],{x,0}}.
  {label,65}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,70},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,70},[{x,1},2,{atom,badarg}]}.
    {test_heap,4,0}.
    {put_list,{y,1},{atom,c},{x,0}}.
    {put_list,{atom,a},{x,0},{x,0}}.
    {'catch',{y,1},{f,66}}.
    {line,[{location,"core_fold_SUITE.erl",166}]}.
    {gc_bif,length,{f,0},1,[{tr,{x,0},{t_cons,any,{t_atom,[c]}}}],{x,0}}.
  {label,66}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,69},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,69},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,67}}.
    {line,[{location,"core_fold_SUITE.erl",167}]}.
    {gc_bif,length,{f,0},0,[{atom,atom}],{x,0}}.
  {label,67}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,68},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,68},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,68}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",167}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",166}]}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",162}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",161}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",158}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",157}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",156}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",155}]}.
    {badmatch,{x,0}}.


{function, append, 1, 78}.
  {label,77}.
    {line,[{location,"core_fold_SUITE.erl",177}]}.
    {func_info,{atom,core_fold_SUITE},{atom,append},1}.
  {label,78}.
    {test,is_list,{f,77},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",178}]}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,[g,h,i,j,k]},{x,1}}.
    {move,{literal,[a,b,c,d,e,f]},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",179}]}.
    {call_ext,2,{extfunc,erlang,append,2}}.
    {test,is_eq_exact,{f,84},[{x,0},{literal,[a,b,c,d,e,f,g,h,i,j,k]}]}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",179}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,83},[{x,0},{literal,[a,b,c,d,e,f,g,h,i,j,k]}]}.
    {move,{literal,[d,e]},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",180}]}.
    {call,1,{f,348}}. % id/1
    {test_heap,6,1}.
    {put_list,{atom,c},{x,0},{x,0}}.
    {put_list,{atom,b},{x,0},{x,0}}.
    {put_list,{atom,a},{x,0},{x,0}}.
    {call,1,{f,421}}. % '-append/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,82},[{x,0},{literal,[a,b,c,d,e]}]}.
    {test_heap,2,0}.
    {put_list,{y,0},{literal,[1,2,3,4,5,6]},{x,0}}.
    {move,{y,0},{x,1}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",181}]}.
    {call,2,{f,417}}. % '-append/1-fun-2-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,81},[{x,0},{literal,[0,1,2,3,4,5,6]}]}.
    {test_heap,2,0}.
    {put_list,{y,0},{atom,blurf},{x,0}}.
    {'catch',{y,0},{f,79}}.
    {move,{literal,[4,5,6]},{x,1}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",182}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
  {label,79}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,80},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,80},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,80}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",182}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",180}]}.
    {badmatch,{x,0}}.
  {label,83}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",179}]}.
    {badmatch,{x,0}}.
  {label,84}.
    {badmatch,{x,0}}.


{function, t_apply, 1, 86}.
  {label,85}.
    {line,[{location,"core_fold_SUITE.erl",185}]}.
    {func_info,{atom,core_fold_SUITE},{atom,t_apply},1}.
  {label,86}.
    {test,is_list,{f,85},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {line,[{location,"core_fold_SUITE.erl",186}]}.
    {call_ext,0,{extfunc,core_fold_SUITE,foo,0}}.
    {test,is_eq_exact,{f,110},[{x,0},{atom,ok}]}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",187}]}.
    {call_ext,1,{extfunc,core_fold_SUITE,foo,1}}.
    {test,is_eq_exact,{f,109},[{x,0},{integer,4}]}.
    {move,{integer,4},{x,1}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",188}]}.
    {call_ext,2,{extfunc,core_fold_SUITE,foo,2}}.
    {test,is_eq_exact,{f,108},[{x,0},{integer,7}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",189}]}.
    {call,1,{f,348}}. % id/1
    {move,{integer,4},{x,1}}.
    {call_ext,2,{extfunc,core_fold_SUITE,foo,2}}.
    {test,is_eq_exact,{f,107},[{x,0},{integer,12}]}.
    {move,{integer,9},{x,0}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",190}]}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{integer,4},{x,2}}.
    {move,{integer,8},{x,0}}.
    {call_ext,3,{extfunc,core_fold_SUITE,foo,3}}.
    {test,is_eq_exact,{f,106},[{x,0},{integer,21}]}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",191}]}.
    {call,1,{f,348}}. % id/1
    {move,{integer,8},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{integer,8},{x,0}}.
    {call_ext,3,{extfunc,core_fold_SUITE,foo,3}}.
    {test,is_eq_exact,{f,105},[{x,0},{integer,20}]}.
    {move,{integer,10},{x,0}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",192}]}.
    {call,1,{f,348}}. % id/1
    {move,{integer,4},{x,2}}.
    {move,{integer,10},{x,1}}.
    {call_ext,3,{extfunc,core_fold_SUITE,foo,3}}.
    {test,is_eq_exact,{f,104},[{x,0},{integer,24}]}.
    {move,{atom,core_fold_SUITE},{x,0}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",194}]}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,foo},{x,1}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",195}]}.
    {apply,0}.
    {test,is_eq_exact,{f,103},[{x,0},{atom,ok}]}.
    {move,{y,1},{x,1}}.
    {move,{atom,foo},{x,2}}.
    {move,{integer,3},{x,0}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",196}]}.
    {apply,1}.
    {test,is_eq_exact,{f,102},[{x,0},{integer,4}]}.
    {move,{y,1},{x,2}}.
    {move,{integer,4},{x,1}}.
    {move,{atom,foo},{x,3}}.
    {move,{float,12.0},{x,0}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",197}]}.
    {apply,2}.
    {test,is_eq_exact,{f,101},[{x,0},{float,16.0}]}.
    {'catch',{y,6},{f,87}}.
    {move,{atom,foo},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",200}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
  {label,87}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,100},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,100},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,5},{f,88}}.
    {move,{atom,foo},{x,1}}.
    {move,nil,{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[13,14]},{location,"core_fold_SUITE.erl",201}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
  {label,88}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,99},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,4},{f,89}}.
    {move,{integer,45},{x,1}}.
    {move,{literal,[xx]},{x,2}}.
    {move,{atom,core_fold_SUITE},{x,0}}.
    {line,[{scope,"\v\f"},{location,"core_fold_SUITE.erl",202}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
  {label,89}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,98},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,98},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,3},{f,90}}.
    {move,{atom,foo},{x,1}}.
    {move,{literal,{a,b}},{x,2}}.
    {move,{atom,core_fold_SUITE},{x,0}}.
    {line,[{scope,"\t\n"},{location,"core_fold_SUITE.erl",203}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
  {label,90}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,97},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,97},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,2},{f,91}}.
    {move,{y,1},{x,1}}.
    {move,{literal,[1009|10010]},{x,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[7,8]},{location,"core_fold_SUITE.erl",204}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
  {label,91}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,96},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,96},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,1},{f,92}}.
    {move,{atom,foo},{x,1}}.
    {move,{literal,[10000|9999]},{x,2}}.
    {move,{atom,core_fold_SUITE},{x,0}}.
    {line,[{scope,[5,6]},{location,"core_fold_SUITE.erl",205}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
  {label,92}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,95},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,95},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,93}}.
    {move,{atom,foo},{x,1}}.
    {move,{atom,a},{x,2}}.
    {move,{atom,core_fold_SUITE},{x,0}}.
    {line,[{scope,[3,4]},{location,"core_fold_SUITE.erl",206}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
  {label,93}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,94},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,94},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,7}.
    return.
  {label,94}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",206}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",205}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",204}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",203}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,"\b"},{location,"core_fold_SUITE.erl",202}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,"\n"},{location,"core_fold_SUITE.erl",201}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,"\f"},{location,"core_fold_SUITE.erl",200}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",197}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",196}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",195}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",192}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",191}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",190}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",189}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",188}]}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",187}]}.
    {badmatch,{x,0}}.
  {label,110}.
    {line,[{scope,[14]},{location,"core_fold_SUITE.erl",186}]}.
    {badmatch,{x,0}}.


{function, foo, 0, 112}.
  {label,111}.
    {line,[{location,"core_fold_SUITE.erl",210}]}.
    {func_info,{atom,core_fold_SUITE},{atom,foo},0}.
  {label,112}.
    {move,{atom,ok},{x,0}}.
    return.


{function, foo, 1, 114}.
  {label,113}.
    {line,[{location,"core_fold_SUITE.erl",213}]}.
    {func_info,{atom,core_fold_SUITE},{atom,foo},1}.
  {label,114}.
    {line,[{location,"core_fold_SUITE.erl",214}]}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    return.


{function, foo, 2, 116}.
  {label,115}.
    {line,[{location,"core_fold_SUITE.erl",216}]}.
    {func_info,{atom,core_fold_SUITE},{atom,foo},2}.
  {label,116}.
    {line,[{location,"core_fold_SUITE.erl",217}]}.
    {gc_bif,'+',{f,0},2,[{x,0},{x,1}],{x,0}}.
    return.


{function, foo, 3, 118}.
  {label,117}.
    {line,[{location,"core_fold_SUITE.erl",219}]}.
    {func_info,{atom,core_fold_SUITE},{atom,foo},3}.
  {label,118}.
    {line,[{location,"core_fold_SUITE.erl",220}]}.
    {gc_bif,'+',{f,0},3,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,0},{t_number,any}},{x,2}],{x,0}}.
    return.


{function, bifs, 1, 120}.
  {label,119}.
    {line,[{location,"core_fold_SUITE.erl",222}]}.
    {func_info,{atom,core_fold_SUITE},{atom,bifs},1}.
  {label,120}.
    {test,is_list,{f,119},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",223}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq_exact,{f,122},[{x,0},{literal,<<1,2,3,4>>}]}.
    {move,{literal,{ok,#{{a,key} => {a,value}}}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",226}]}.
    {call,1,{f,348}}. % id/1
    {test,is_tagged_tuple,{f,121},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_map,{f,121},[{x,1}]}.
    {get_map_elements,{f,121},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{literal,{a,key}},{x,1}]}}.
    {test,is_eq_exact,{f,121},[{x,1},{literal,{a,value}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,121}.
    {badmatch,{x,0}}.
  {label,122}.
    {line,[{location,"core_fold_SUITE.erl",223}]}.
    {badmatch,{x,0}}.


{function, eq, 1, 124}.
  {label,123}.
    {line,[{location,"core_fold_SUITE.erl",237}]}.
    {func_info,{atom,core_fold_SUITE},{atom,eq},1}.
  {label,124}.
    {test,is_list,{f,123},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",238}]}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,414}}. % '-eq/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,411}}. % '-eq/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,[42.0]},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",239}]}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,408}}. % '-eq/1-fun-3-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,[42.0]},{x,0}}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,405}}. % '-eq/1-fun-2-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,"*"},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",240}]}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,402}}. % '-eq/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,"*"},{x,0}}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,399}}. % '-eq/1-fun-4-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,[42.0]},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",241}]}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,396}}. % '-eq/1-fun-7-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,[42.0]},{x,0}}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,393}}. % '-eq/1-fun-6-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",243}]}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,390}}. % '-eq/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{atom,a},{x,0}}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,387}}. % '-eq/1-fun-8-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",244}]}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,384}}. % '-eq/1-fun-11-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{atom,a},{x,0}}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,381}}. % '-eq/1-fun-10-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,#{a => 1.0,b => 2}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",246}]}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,378}}. % '-eq/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,#{a => 1.0,b => 2}},{x,0}}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,375}}. % '-eq/1-fun-12-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,#{a => [1.0],b => [2]}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",247}]}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,372}}. % '-eq/1-fun-15-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,#{a => [1.0],b => [2]}},{x,0}}.
    {call,1,{f,348}}. % id/1
    {call,1,{f,369}}. % '-eq/1-fun-14-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,#{1 => a}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",251}]}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{1.0 => a}},{x,0}}.
    {call,1,{f,348}}. % id/1
    {bif,'==',{f,0},[{y,0},{x,0}],{y,0}}.
    {move,{literal,#{1 => a}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",252}]}.
    {call,1,{f,348}}. % id/1
    {bif,'==',{f,0},[{x,0},{literal,#{1.0 => a}}],{x,0}}.
    {test,is_eq_exact,
          {f,126},
          [{tr,{x,0},{t_atom,[false,true]}},{tr,{y,0},{t_atom,[false,true]}}]}.
    {test,is_eq_exact,{f,125},[{y,0},{atom,true}]}.
    {line,[{location,"core_fold_SUITE.erl",253}]}.
    {badmatch,{atom,false}}.
  {label,125}.
    {move,{literal,[false]},{x,1}}.
    {trim,1,0}.
    {move,{literal,"Bool = ~p\n"},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",254}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,126}.
    {line,[{location,"core_fold_SUITE.erl",252}]}.
    {badmatch,{x,0}}.


{function, nested_call_in_case, 1, 128}.
  {label,127}.
    {line,[{location,"core_fold_SUITE.erl",259}]}.
    {func_info,{atom,core_fold_SUITE},{atom,nested_call_in_case},1}.
  {label,128}.
    {test,is_list,{f,127},[{x,0}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",260}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",261}]}.
    {call_ext,1,{extfunc,test_lib,get_data_dir,1}}.
    {move,{literal,"nested_call_in_case"},{x,1}}.
    {line,[{location,"core_fold_SUITE.erl",262}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,0}}.
    {move,{atom,core_fold_SUITE},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",263}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {test_heap,9,1}.
    {put_tuple2,{x,1},{list,[{atom,outdir},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{atom,from_core},{x,0},{y,1}}.
    {put_list,{y,1},nil,{x,1}}.
    {move,{literal,"~p"},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",264}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"core_fold_SUITE.erl",265}]}.
    {call_ext,2,{extfunc,c,c,2}}.
    {test,is_tagged_tuple,{f,133},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {move,{y,0},{x,2}}.
    {move,{integer,2},{x,1}}.
    {move,{atom,a},{x,3}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",266}]}.
    {apply,2}.
    {test,is_eq_exact,{f,132},[{x,0},{atom,yes}]}.
    {move,{y,0},{x,2}}.
    {move,{integer,4},{x,1}}.
    {move,{atom,a},{x,3}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",267}]}.
    {apply,2}.
    {test,is_eq_exact,{f,131},[{x,0},{atom,no}]}.
    {'catch',{y,1},{f,129}}.
    {move,{y,0},{x,2}}.
    {move,{integer,42},{x,1}}.
    {move,{atom,a},{x,3}}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",268}]}.
    {apply,2}.
  {label,129}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,130},[{x,0},2,{atom,'EXIT'}]}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[1,2]},{location,"core_fold_SUITE.erl",269}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{scope,[1,2]},{location,"core_fold_SUITE.erl",270}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,130}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",268}]}.
    {badmatch,{x,0}}.
  {label,131}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",267}]}.
    {badmatch,{x,0}}.
  {label,132}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",266}]}.
    {badmatch,{x,0}}.
  {label,133}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",265}]}.
    {badmatch,{x,0}}.


{function, guard_try_catch, 1, 135}.
  {label,134}.
    {line,[{location,"core_fold_SUITE.erl",273}]}.
    {func_info,{atom,core_fold_SUITE},{atom,guard_try_catch},1}.
  {label,135}.
    {allocate,0,0}.
    {move,{atom,value},{x,1}}.
    {move,{atom,key},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",274}]}.
    {call,2,{f,138}}. % do_guard_try_catch/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {bif,get,{f,0},[{atom,key}],{x,0}}.
    {test,is_eq_exact,{f,136},[{x,0},{atom,value}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,136}.
    {line,[{location,"core_fold_SUITE.erl",275}]}.
    {badmatch,{x,0}}.


{function, do_guard_try_catch, 2, 138}.
  {label,137}.
    {line,[{location,"core_fold_SUITE.erl",278}]}.
    {func_info,{atom,core_fold_SUITE},{atom,do_guard_try_catch},2}.
  {label,138}.
    {'%',{var_info,{x,0},[{type,{t_atom,[key]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[value]}}]}}.
    {allocate,1,2}.
    {'try',{y,0},{f,139}}.
    {line,[{location,"core_fold_SUITE.erl",283}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {try_end,{y,0}}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,139}.
    {try_case,{y,0}}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.


{function, coverage, 1, 141}.
  {label,140}.
    {line,[{location,"core_fold_SUITE.erl",292}]}.
    {func_info,{atom,core_fold_SUITE},{atom,coverage},1}.
  {label,141}.
    {test,is_list,{f,140},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,2},{f,142}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",294}]}.
    {call,1,{f,156}}. % cover_will_match_list_type/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,142}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,154},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,154},[{x,1}]}.
    {test,test_arity,{f,154},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,154},[{x,1},{literal,{case_clause,{a,b,c}}}]}.
    {'catch',{y,1},{f,143}}.
    {move,{literal,{a,b,c,d}},{x,0}}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",296}]}.
    {call,1,{f,156}}. % cover_will_match_list_type/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,143}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,153},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,153},[{x,1}]}.
    {test,test_arity,{f,153},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,153},[{x,1},{literal,{case_clause,{a,b,c,d}}}]}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",297}]}.
    {call,1,{f,159}}. % cover_remove_non_vars_alias/1
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",298}]}.
    {call,0,{f,161}}. % cover_will_match_lit_list/0
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",299}]}.
    {call,1,{f,163}}. % cover_is_safe_bool_expr/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_cons,{t_atom,[a]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,152},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[ok]},2 => {t_cons,{t_atom,[a]},nil}}}},
           {literal,{ok,[a]}}]}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",300}]}.
    {call,1,{f,165}}. % cover_is_safe_bool_expr2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,348},0,0,{x,0},{list,[]}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",301}]}.
    {call,1,{f,170}}. % cover_eval_is_function/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{cover_opt_guard_try,[a]}},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",303}]}.
    {call,1,{f,167}}. % cover_opt_guard_try/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,151},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,{cover_opt_guard_try,[]}},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",304}]}.
    {call,1,{f,167}}. % cover_opt_guard_try/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,150},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,"<0.42.0>"},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",309}]}.
    {call_ext,1,{extfunc,erlang,list_to_pid,1}}.
    {test,is_pid,{f,149},[{x,0}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",314}]}.
    {call,2,{f,172}}. % bsm_an_inlined/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,148},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",315}]}.
    {call,2,{f,172}}. % bsm_an_inlined/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,147},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",316}]}.
    {call,2,{f,172}}. % bsm_an_inlined/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",319}]}.
    {call,1,{f,348}}. % id/1
    {test,is_tuple,{f,146},[{x,0}]}.
    {test,test_arity,{f,146},[{x,0},2]}.
    {'catch',{y,0},{f,144}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",326}]}.
    {call,0,{f,175}}. % cover_is_literal_fun/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,144}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,145},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,145},[{x,1}]}.
    {test,test_arity,{f,145},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,145},[{x,1},{literal,{case_clause,42}}]}.
    {move,{literal,[ok,nok]},{x,0}}.
    {call_last,1,{f,178},3}. % cover_core_lib/1
  {label,145}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",326}]}.
    {badmatch,{x,0}}.
  {label,146}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",320}]}.
    {case_end,{x,0}}.
  {label,147}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",315}]}.
    {badmatch,{atom,ok}}.
  {label,148}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",314}]}.
    {badmatch,{atom,error}}.
  {label,149}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",309}]}.
    {case_end,{x,0}}.
  {label,150}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",304}]}.
    {badmatch,{atom,ok}}.
  {label,151}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",303}]}.
    {badmatch,{atom,error}}.
  {label,152}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",299}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",295}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",293}]}.
    {badmatch,{x,0}}.


{function, cover_will_match_list_type, 1, 156}.
  {label,155}.
    {line,[{location,"core_fold_SUITE.erl",333}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_will_match_list_type},1}.
  {label,156}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}},
                      {{4,{t_atom,[a]}},
                       {t_tuple,4,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]},
                             4 => {t_atom,[d]}}}}],
                     none}}]}}.
    {test,test_arity,{f,157},[{x,0},3]}.
    {line,[{location,"core_fold_SUITE.erl",336}]}.
    {case_end,{literal,{a,b,c}}}.
  {label,157}.
    {line,[{location,"core_fold_SUITE.erl",334}]}.
    {case_end,{literal,{a,b,c,d}}}.


{function, cover_remove_non_vars_alias, 1, 159}.
  {label,158}.
    {line,[{location,"core_fold_SUITE.erl",342}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_remove_non_vars_alias},1}.
  {label,159}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}]}}.
    {move,{atom,a},{x,0}}.
    return.


{function, cover_will_match_lit_list, 0, 161}.
  {label,160}.
    {line,[{location,"core_fold_SUITE.erl",351}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_will_match_lit_list},0}.
  {label,161}.
    {move,{atom,error},{x,0}}.
    return.


{function, cover_is_safe_bool_expr, 1, 163}.
  {label,162}.
    {line,[{location,"core_fold_SUITE.erl",359}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_is_safe_bool_expr},1}.
  {label,163}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{ok,[a]}},{x,0}}.
    return.


{function, cover_is_safe_bool_expr2, 1, 165}.
  {label,164}.
    {line,[{location,"core_fold_SUITE.erl",372}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_is_safe_bool_expr2},1}.
  {label,165}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{atom,false},{x,0}}.
    return.


{function, cover_opt_guard_try, 1, 167}.
  {label,166}.
    {line,[{location,"core_fold_SUITE.erl",381}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_opt_guard_try},1}.
  {label,167}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[cover_opt_guard_try]},
                                     2 => {t_list,{t_atom,[a]},nil}}}}]}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",383}]}.
    {gc_bif,length,{f,0},1,[{tr,{x,0},{t_list,{t_atom,[a]},nil}}],{x,0}}.
    {test,is_eq_exact,
          {f,168},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,168}.
    {move,{atom,error},{x,0}}.
    return.


{function, cover_eval_is_function, 1, 170}.
  {label,169}.
    {line,[{location,"core_fold_SUITE.erl",389}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_eval_is_function},1}.
  {label,170}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,{id,1},any}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bsm_an_inlined, 2, 172}.
  {label,171}.
    {line,[{location,"core_fold_SUITE.erl",395}]}.
    {func_info,{atom,core_fold_SUITE},{atom,bsm_an_inlined},2}.
  {label,172}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,none,{t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,any}}]}}.
    {test,bs_start_match3,{f,173},1,[{x,0}],{x,0}}.
    {bs_match,{f,173},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,173}.
    {move,{atom,error},{x,0}}.
    return.


{function, cover_is_literal_fun, 0, 175}.
  {label,174}.
    {line,[{location,"core_fold_SUITE.erl",398}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_is_literal_fun},0}.
  {label,175}.
    {allocate,0,0}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",399}]}.
    {call,1,{f,348}}. % id/1
    {test,is_nil,{f,176},[{x,0}]}.
    {line,[{scope,[1]},{location,"core_fold_SUITE.erl",401}]}.
    {try_case_end,{atom,right}}.
  {label,176}.
    {line,[{scope,[1]},{location,"core_fold_SUITE.erl",399}]}.
    {case_end,{x,0}}.


{function, cover_core_lib, 1, 178}.
  {label,177}.
    {line,[{location,"core_fold_SUITE.erl",408}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_core_lib},1}.
  {label,178}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[nok,ok]},nil}}]}}.
    {allocate,0,1}.
    {line,[{location,"core_fold_SUITE.erl",409}]}.
    {call,1,{f,348}}. % id/1
    {line,[{location,"core_fold_SUITE.erl",410}]}.
    {call,1,{f,364}}. % '-cover_core_lib/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, unused_multiple_values_error, 1, 180}.
  {label,179}.
    {line,[{location,"core_fold_SUITE.erl",413}]}.
    {func_info,{atom,core_fold_SUITE},{atom,unused_multiple_values_error},1}.
  {label,180}.
    {test,is_list,{f,179},[{x,0}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",414}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",415}]}.
    {call_ext,1,{extfunc,test_lib,get_data_dir,1}}.
    {move,{literal,"unused_multiple_values_error"},{x,1}}.
    {line,[{location,"core_fold_SUITE.erl",416}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,0}}.
    {move,{atom,core_fold_SUITE},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",418}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {test_heap,15,1}.
    {put_tuple2,{x,1},{list,[{atom,outdir},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{atom,from_core},{x,0},{x,0}}.
    {put_list,{atom,return},{x,0},{x,0}}.
    {put_list,{atom,ssalint},{x,0},{x,0}}.
    {put_list,{atom,clint},{x,0},{x,0}}.
    {put_list,{atom,no_copt},{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"core_fold_SUITE.erl",421}]}.
    {call_ext,2,{extfunc,c,c,2}}.
    {test,is_eq_exact,
          {f,181},
          [{x,0},
           {literal,{error,[{"unused_multiple_values_error",
                             [{none,core_lint,{return_mismatch,{hello,1}}}]}],
                           []}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,181}.
    {line,[{location,"core_fold_SUITE.erl",419}]}.
    {badmatch,{x,0}}.


{function, unused_multiple_values, 1, 183}.
  {label,182}.
    {line,[{location,"core_fold_SUITE.erl",424}]}.
    {func_info,{atom,core_fold_SUITE},{atom,unused_multiple_values},1}.
  {label,183}.
    {test,is_list,{f,182},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{atom,unused_multiple_values},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",425}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",426}]}.
    {call,1,{f,187}}. % test_unused_multiple_values/1
    {test,is_eq_exact,{f,185},[{x,0},{literal,[false]}]}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",427}]}.
    {call,1,{f,187}}. % test_unused_multiple_values/1
    {test,is_eq_exact,{f,184},[{x,0},{literal,[b,a,{a,b},false]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,184}.
    {badmatch,{x,0}}.
  {label,185}.
    {line,[{location,"core_fold_SUITE.erl",426}]}.
    {badmatch,{x,0}}.


{function, test_unused_multiple_values, 1, 187}.
  {label,186}.
    {line,[{location,"core_fold_SUITE.erl",430}]}.
    {func_info,{atom,core_fold_SUITE},{atom,test_unused_multiple_values},1}.
  {label,187}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {allocate,0,1}.
    {line,[{location,"core_fold_SUITE.erl",431}]}.
    {call,1,{f,189}}. % do_unused_multiple_values/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {bif,get,{f,0},[{atom,unused_multiple_values}],{x,0}}.
    {deallocate,0}.
    return.


{function, do_unused_multiple_values, 1, 189}.
  {label,188}.
    {line,[{location,"core_fold_SUITE.erl",434}]}.
    {func_info,{atom,core_fold_SUITE},{atom,do_unused_multiple_values},1}.
  {label,189}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {allocate,0,1}.
    {line,[{location,"core_fold_SUITE.erl",435}]}.
    {call,1,{f,193}}. % do_something/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a,b,false]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {test,is_ne_exact,
          {f,190},
          [{tr,{x,0},
               {t_union,{t_atom,[a,b,false]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}},
           {atom,false}]}.
    {test,is_tuple,
          {f,191},
          [{tr,{x,0},
               {t_union,{t_atom,[a,b]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        none}}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",440}]}.
    {call,1,{f,193}}. % do_something/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a,b,false]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",441}]}.
    {call,1,{f,193}}. % do_something/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a,b,false]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
  {label,190}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,191}.
    {line,[{location,"core_fold_SUITE.erl",439}]}.
    {badmatch,{x,0}}.


{function, do_something, 1, 193}.
  {label,192}.
    {line,[{location,"core_fold_SUITE.erl",446}]}.
    {func_info,{atom,core_fold_SUITE},{atom,do_something},1}.
  {label,193}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a,b,false]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     none}}]}}.
    {allocate_heap,1,2,1}.
    {move,{x,0},{y,0}}.
    {bif,get,{f,0},[{atom,unused_multiple_values}],{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {move,{atom,unused_multiple_values},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",447}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, multiple_aliases, 1, 195}.
  {label,194}.
    {line,[{location,"core_fold_SUITE.erl",454}]}.
    {func_info,{atom,core_fold_SUITE},{atom,multiple_aliases},1}.
  {label,195}.
    {test,is_list,{f,194},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,362},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,2,true,#{1 => {t_atom,[ok]},2 => {t_atom,[ok]}}}}]}}.
    {move,{literal,{ok,ok}},{x,1}}.
    {line,[{location,"core_fold_SUITE.erl",455}]}.
    {call,2,{f,197}}. % do_ma/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,360},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,4,true,
                     #{1 => {t_atom,[true]},
                       2 => {t_atom,[true]},
                       3 => {t_atom,[ok]},
                       4 => {t_atom,[ok]}}}}]}}.
    {move,{literal,{true,true,ok,ok}},{x,1}}.
    {call_last,2,{f,197},0}. % do_ma/2


{function, do_ma, 2, 197}.
  {label,196}.
    {line,[{location,"core_fold_SUITE.erl",467}]}.
    {func_info,{atom,core_fold_SUITE},{atom,do_ma},2}.
  {label,197}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,0,any,
                     {t_union,none,none,none,
                         [{{2,{t_atom,[ok]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[ok]},2 => {t_atom,[ok]}}}},
                          {{4,{t_atom,[true]}},
                           {t_tuple,4,true,
                               #{1 => {t_atom,[true]},
                                 2 => {t_atom,[true]},
                                 3 => {t_atom,[ok]},
                                 4 => {t_atom,[ok]}}}}],
                         none}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_atom,[ok]}}}},
                      {{4,{t_atom,[true]}},
                       {t_tuple,4,true,
                           #{1 => {t_atom,[true]},
                             2 => {t_atom,[true]},
                             3 => {t_atom,[ok]},
                             4 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"core_fold_SUITE.erl",468}]}.
    {call_fun2,
        {atom,safe},
        0,
        {tr,{x,0},
            {t_fun,0,any,
                {t_union,none,none,none,
                    [{{2,{t_atom,[ok]}},
                      {t_tuple,2,true,
                          #{1 => {t_atom,[ok]},2 => {t_atom,[ok]}}}},
                     {{4,{t_atom,[true]}},
                      {t_tuple,4,true,
                          #{1 => {t_atom,[true]},
                            2 => {t_atom,[true]},
                            3 => {t_atom,[ok]},
                            4 => {t_atom,[ok]}}}}],
                    none}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_atom,[ok]}}}},
                      {{4,{t_atom,[true]}},
                       {t_tuple,4,true,
                           #{1 => {t_atom,[true]},
                             2 => {t_atom,[true]},
                             3 => {t_atom,[ok]},
                             4 => {t_atom,[ok]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,199},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},2 => {t_atom,[ok]}}}},
                         {{4,{t_atom,[true]}},
                          {t_tuple,4,true,
                                   #{1 => {t_atom,[true]},
                                     2 => {t_atom,[true]},
                                     3 => {t_atom,[ok]},
                                     4 => {t_atom,[ok]}}}}],
                        none}},
           {tr,{y,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},2 => {t_atom,[ok]}}}},
                         {{4,{t_atom,[true]}},
                          {t_tuple,4,true,
                                   #{1 => {t_atom,[true]},
                                     2 => {t_atom,[true]},
                                     3 => {t_atom,[ok]},
                                     4 => {t_atom,[ok]}}}}],
                        none}}]}.
    {trim,1,0}.
    {move,{atom,run_once},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",469}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {test,is_eq_exact,{f,198},[{x,0},{atom,ran_once}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,198}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{location,"core_fold_SUITE.erl",468}]}.
    {badmatch,{x,0}}.


{function, run_once, 0, 201}.
  {label,200}.
    {line,[{location,"core_fold_SUITE.erl",472}]}.
    {func_info,{atom,core_fold_SUITE},{atom,run_once},0}.
  {label,201}.
    {allocate,0,0}.
    {move,{atom,ran_once},{x,1}}.
    {move,{atom,run_once},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",473}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test,is_eq_exact,{f,202},[{x,0},{atom,undefined}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,202}.
    {badmatch,{x,0}}.


{function, redundant_boolean_clauses, 1, 204}.
  {label,203}.
    {line,[{location,"core_fold_SUITE.erl",477}]}.
    {func_info,{atom,core_fold_SUITE},{atom,redundant_boolean_clauses},1}.
  {label,204}.
    {test,is_list,{f,203},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",478}]}.
    {call,1,{f,348}}. % id/1
    {test,is_eq,{f,205},[{x,0},{integer,0}]}.
    {move,{atom,yes},{x,0}}.
    {deallocate,0}.
    return.
  {label,205}.
    {line,[{location,"core_fold_SUITE.erl",479}]}.
    {badmatch,{atom,no}}.


{function, mixed_matching_clauses, 1, 207}.
  {label,206}.
    {line,[{location,"core_fold_SUITE.erl",485}]}.
    {func_info,{atom,core_fold_SUITE},{atom,mixed_matching_clauses},1}.
  {label,207}.
    {test,is_list,{f,206},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, unnecessary_building, 1, 209}.
  {label,208}.
    {line,[{location,"core_fold_SUITE.erl",496}]}.
    {func_info,{atom,core_fold_SUITE},{atom,unnecessary_building},1}.
  {label,209}.
    {test,is_list,{f,208},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",497}]}.
    {call_ext,1,{extfunc,test_lib,id,1}}.
    {call,1,{f,215}}. % do_unnecessary_building_1/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,0},{t_cons,{t_tuple,2,true,#{}},nil}},
           {literal,[{a,a},{a,a}]}]}.
    {line,[{location,"core_fold_SUITE.erl",499}]}.
    {call_ext,1,{extfunc,erts_debug,size,1}}.
    {test,is_eq_exact,{f,212},[{x,0},{integer,7}]}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",503}]}.
    {call_ext,1,{extfunc,test_lib,id,1}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"core_fold_SUITE.erl",504}]}.
    {call,1,{f,217}}. % do_unnecessary_building_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[b]},
                       2 =>
                           {t_cons,
                               {t_union,
                                   {t_atom,[none]},
                                   none,none,
                                   [{{3,{t_atom,[a]}},
                                     {t_tuple,3,true,#{1 => {t_atom,[a]}}}}],
                                   none},
                               nil},
                       3 => {t_atom,[x]}}}}]}}.
    {call_ext,1,{extfunc,test_lib,id,1}}.
    {test,is_eq_exact,{f,211},[{x,0},{literal,{b,[{a,b,c},none],x}}]}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"core_fold_SUITE.erl",506}]}.
    {call_ext,1,{extfunc,erts_debug,size,1}}.
    {test,is_eq_exact,{f,210},[{x,0},{integer,14}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,210}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{location,"core_fold_SUITE.erl",505}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{location,"core_fold_SUITE.erl",499}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{location,"core_fold_SUITE.erl",498}]}.
    {badmatch,{x,0}}.


{function, do_unnecessary_building_1, 1, 215}.
  {label,214}.
    {line,[{location,"core_fold_SUITE.erl",510}]}.
    {func_info,{atom,core_fold_SUITE},{atom,do_unnecessary_building_1},1}.
  {label,215}.
    {test_heap,7,1}.
    {put_tuple2,{x,0},{list,[{x,0},{x,0}]}}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    return.


{function, do_unnecessary_building_2, 1, 217}.
  {label,216}.
    {line,[{location,"core_fold_SUITE.erl",515}]}.
    {func_info,{atom,core_fold_SUITE},{atom,do_unnecessary_building_2},1}.
  {label,217}.
    {test,is_tagged_tuple,{f,216},[{x,0},3,{atom,a}]}.
    {test_heap,6,1}.
    {put_list,{x,0},{literal,[none]},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,0},{atom,x}]}}.
    return.


{function, no_no_file, 1, 219}.
  {label,218}.
    {line,[{location,"core_fold_SUITE.erl",525}]}.
    {func_info,{atom,core_fold_SUITE},{atom,no_no_file},1}.
  {label,219}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,220}}.
    {move,{atom,any},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",526}]}.
    {call,2,{f,225}}. % source/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,220}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,223},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,223},[{x,1}]}.
    {test,test_arity,{f,223},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,223},[{x,1},{literal,{case_clause,0}}]}.
    {move,{literal,#{reduction => any}},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",527}]}.
    {call,1,{f,227}}. % tim/1
    {'%',{var_info,{x,0},
                   [{type,{t_fun,0,{'-tim/1-fun-0-',0},{t_atom,[surgery]}}}]}}.
    {call,0,{f,358}}. % '-tim/1-fun-0-'/0
    {'%',{var_info,{x,0},[{type,{t_atom,[surgery]}}]}}.
    {move,{literal,#{[] => true}},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",529}]}.
    {call,1,{f,229}}. % soul/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {'catch',{y,0},{f,221}}.
    {move,{literal,#{[] => false}},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",530}]}.
    {call,1,{f,229}}. % soul/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
  {label,221}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,222},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,222},[{x,1}]}.
    {test,test_arity,{f,222},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,222},[{x,1},{literal,{case_clause,true}}]}.
    {call_last,0,{f,232},2}. % experiment/0
  {label,222}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",530}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",526}]}.
    {badmatch,{x,0}}.


{function, source, 2, 225}.
  {label,224}.
    {line,[{location,"core_fold_SUITE.erl",535}]}.
    {func_info,{atom,core_fold_SUITE},{atom,source},2}.
  {label,225}.
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[any]}}]}}.
    {line,[{location,"core_fold_SUITE.erl",536}]}.
    {case_end,{integer,0}}.


{function, tim, 1, 227}.
  {label,226}.
    {line,[{location,"core_fold_SUITE.erl",541}]}.
    {func_info,{atom,core_fold_SUITE},{atom,tim},1}.
  {label,227}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[reduction]},{t_atom,[any]}}}]}}.
    {test,has_map_fields,{f,226},{x,0},{list,[{atom,reduction}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,358},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[surgery]}}]}}.
    return.


{function, soul, 1, 229}.
  {label,228}.
    {line,[{location,"core_fold_SUITE.erl",549}]}.
    {func_info,{atom,core_fold_SUITE},{atom,soul},1}.
  {label,229}.
    {'%',{var_info,{x,0},[{type,{t_map,nil,{t_atom,[false,true]}}}]}}.
    {get_map_elements,{f,228},
                      {tr,{x,0},{t_map,nil,{t_atom,[false,true]}}},
                      {list,[nil,{x,1}]}}.
    {test,is_eq_exact,{f,230},[{x,1},{atom,true}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,230}.
    {line,[{location,"core_fold_SUITE.erl",550}]}.
    {case_end,{atom,true}}.


{function, experiment, 0, 232}.
  {label,231}.
    {line,[{location,"core_fold_SUITE.erl",555}]}.
    {func_info,{atom,core_fold_SUITE},{atom,experiment},0}.
  {label,232}.
    {move,{atom,ok},{x,0}}.
    return.


{function, configuration, 1, 234}.
  {label,233}.
    {line,[{location,"core_fold_SUITE.erl",566}]}.
    {func_info,{atom,core_fold_SUITE},{atom,configuration},1}.
  {label,234}.
    {allocate,1,0}.
    {'catch',{y,0},{f,235}}.
    {line,[{location,"core_fold_SUITE.erl",567}]}.
    {call,0,{f,238}}. % configuration/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,235}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,236},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,236}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",567}]}.
    {badmatch,{x,0}}.


{function, configuration, 0, 238}.
  {label,237}.
    {line,[{location,"core_fold_SUITE.erl",570}]}.
    {func_info,{atom,core_fold_SUITE},{atom,configuration},0}.
  {label,238}.
    {move,{atom,enemy},{x,0}}.
    {call_only,1,{f,356}}. % '-configuration/0-lc$^0/1-0-'/1


{function, supplies, 1, 240}.
  {label,239}.
    {line,[{location,"core_fold_SUITE.erl",578}]}.
    {func_info,{atom,core_fold_SUITE},{atom,supplies},1}.
  {label,240}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'catch',{y,2},{f,241}}.
    {move,{literal,#{1 => <<1,2,3>>}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",584}]}.
    {call,1,{f,248}}. % do_supplies/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,241}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,246},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,246},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,242}}.
    {move,{literal,#{1 => a}},{x,0}}.
    {line,[{scope,[5,6]},{location,"core_fold_SUITE.erl",585}]}.
    {call,1,{f,248}}. % do_supplies/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,242}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,245},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,245},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,243}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[3,4]},{location,"core_fold_SUITE.erl",586}]}.
    {call,1,{f,248}}. % do_supplies/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,243}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,244},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,244},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,244}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",586}]}.
    {badmatch,{x,0}}.
  {label,245}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",585}]}.
    {badmatch,{x,0}}.
  {label,246}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",584}]}.
    {badmatch,{x,0}}.


{function, do_supplies, 1, 248}.
  {label,247}.
    {line,[{location,"core_fold_SUITE.erl",590}]}.
    {func_info,{atom,core_fold_SUITE},{atom,do_supplies},1}.
  {label,248}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{42,42}},
                     none,
                     {t_map,
                         {t_integer,{1,1}},
                         {t_union,
                             {t_atom,[a]},
                             none,none,none,
                             {t_bitstring,8,false}}}}}]}}.
    {jump,{f,247}}.


{function, redundant_stack_frame, 1, 250}.
  {label,249}.
    {line,[{location,"core_fold_SUITE.erl",592}]}.
    {func_info,{atom,core_fold_SUITE},{atom,redundant_stack_frame},1}.
  {label,250}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,#{x => 1,y => 2}},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",593}]}.
    {call,1,{f,257}}. % do_redundant_stack_frame/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1,2}},
                                     2 => {t_integer,{1,2}}}}}]}}.
    {test,is_eq_exact,
          {f,255},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{1,2}},2 => {t_integer,{1,2}}}}},
           {literal,{1,2}}]}.
    {'catch',{y,1},{f,251}}.
    {move,{literal,#{y => 2}},{x,0}}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",594}]}.
    {call,1,{f,257}}. % do_redundant_stack_frame/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1,2}},
                                     2 => {t_integer,{1,2}}}}}]}}.
  {label,251}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,254},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,254},[{x,1}]}.
    {test,test_arity,{f,254},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,254},[{x,1},3,{atom,badkey}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,254},[{x,1},{atom,x}]}.
    {'catch',{y,0},{f,252}}.
    {move,{literal,#{x => 1}},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",595}]}.
    {call,1,{f,257}}. % do_redundant_stack_frame/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{1,2}},
                                     2 => {t_integer,{1,2}}}}}]}}.
  {label,252}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,253},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,253},[{x,1}]}.
    {test,test_arity,{f,253},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,253},[{x,1},3,{atom,badkey}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,253},[{x,1},{atom,y}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,253}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",595}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",594}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",593}]}.
    {badmatch,{x,0}}.


{function, do_redundant_stack_frame, 1, 257}.
  {label,256}.
    {line,[{location,"core_fold_SUITE.erl",598}]}.
    {func_info,{atom,core_fold_SUITE},{atom,do_redundant_stack_frame},1}.
  {label,257}.
    {'%',{var_info,{x,0},[{type,{t_map,{t_atom,[x,y]},{t_integer,{1,2}}}}]}}.
    {get_map_elements,{f,259},
                      {tr,{x,0},{t_map,{t_atom,[x,y]},{t_integer,{1,2}}}},
                      {list,[{atom,x},{x,1}]}}.
    {get_map_elements,{f,258},
                      {tr,{x,0},{t_map,{t_atom,[x,y]},{t_integer,{1,2}}}},
                      {list,[{atom,y},{x,2}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2}]}}.
    return.
  {label,258}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,badkey},{x,0},{atom,y}]}}.
    {line,[{location,"core_fold_SUITE.erl",610}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,259}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,badkey},{x,0},{atom,x}]}}.
    {line,[{location,"core_fold_SUITE.erl",604}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, export_from_case, 1, 261}.
  {label,260}.
    {line,[{location,"core_fold_SUITE.erl",618}]}.
    {func_info,{atom,core_fold_SUITE},{atom,export_from_case},1}.
  {label,261}.
    {allocate,0,0}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",619}]}.
    {call,1,{f,265}}. % export_from_case_1/1
    {test,is_eq_exact,{f,263},[{x,0},{atom,a}]}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",620}]}.
    {call,1,{f,265}}. % export_from_case_1/1
    {test,is_eq_exact,{f,262},[{x,0},{atom,b}]}.
    {move,{literal,{export_from_case,0}},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",623}]}.
    {call,2,{f,269}}. % export_from_case_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[ok]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[export_from_case]},
                                 2 => {t_integer,{0,0}}}}}}}]}}.
    {move,{literal,{export_from_case,0}},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",624}]}.
    {call,2,{f,269}}. % export_from_case_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[ok]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[export_from_case]},
                                 2 => {t_integer,{42,42}}}}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,262}.
    {line,[{location,"core_fold_SUITE.erl",620}]}.
    {badmatch,{x,0}}.
  {label,263}.
    {line,[{location,"core_fold_SUITE.erl",619}]}.
    {badmatch,{x,0}}.


{function, export_from_case_1, 1, 265}.
  {label,264}.
    {line,[{location,"core_fold_SUITE.erl",628}]}.
    {func_info,{atom,core_fold_SUITE},{atom,export_from_case_1},1}.
  {label,265}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {allocate,0,1}.
    {test,is_eq_exact,{f,266},[{x,0},{atom,true}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",631}]}.
    {call,1,{f,348}}. % id/1
    {move,{atom,a},{x,0}}.
    {jump,{f,267}}.
  {label,266}.
    {move,{atom,b},{x,0}}.
  {label,267}.
    {call_last,1,{f,348},0}. % id/1


{function, export_from_case_2, 2, 269}.
  {label,268}.
    {line,[{location,"core_fold_SUITE.erl",638}]}.
    {func_info,{atom,core_fold_SUITE},{atom,export_from_case_2},2}.
  {label,269}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[export_from_case]},
                                     2 => {t_integer,{0,0}}}}}]}}.
    {test,is_eq_exact,{f,270},[{x,0},{atom,true}]}.
    {move,{literal,{ok,{export_from_case,42}}},{x,0}}.
    return.
  {label,270}.
    {move,{literal,{ok,{export_from_case,0}}},{x,0}}.
    return.


{function, empty_values, 1, 272}.
  {label,271}.
    {line,[{location,"core_fold_SUITE.erl",647}]}.
    {func_info,{atom,core_fold_SUITE},{atom,empty_values},1}.
  {label,272}.
    {allocate,1,0}.
    {'catch',{y,0},{f,273}}.
    {line,[{location,"core_fold_SUITE.erl",652}]}.
    {call,0,{f,276}}. % do_empty_values/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,273}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,274},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,274},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,274}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",652}]}.
    {badmatch,{x,0}}.


{function, do_empty_values, 0, 276}.
  {label,275}.
    {line,[{location,"core_fold_SUITE.erl",656}]}.
    {func_info,{atom,core_fold_SUITE},{atom,do_empty_values},0}.
  {label,276}.
    {jump,{f,275}}.


{function, cover_letrec_effect, 1, 278}.
  {label,277}.
    {line,[{location,"core_fold_SUITE.erl",659}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_letrec_effect},1}.
  {label,278}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{literal,{tag,42}},{x,1}}.
    {line,[{location,"core_fold_SUITE.erl",660}]}.
    send.
    {'try',{y,0},{f,287}}.
  {label,279}.
    {loop_rec,{f,286},{x,0}}.
    {test,is_tagged_tuple,{f,285},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    remove_message.
    {line,[{scope,[1,7]},{location,"core_fold_SUITE.erl",667}]}.
    {bs_create_bin,{f,0},
                   3,2,16,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{x,1},{integer,16}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,1},1,{list,[{atom,k},{x,0}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{scope,[1,7]},{location,"core_fold_SUITE.erl",668}]}.
    send.
    {try_end,{y,0}}.
  {label,280}.
    {loop_rec,{f,284},{x,0}}.
    remove_message.
    {test,is_map,{f,288},[{x,0}]}.
    {get_map_elements,{f,288},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,k},{x,1}]}}.
    {test,is_eq_exact,{f,288},[{x,1},{literal,{{tag,42},<<0,42>>}}]}.
    {'try',{y,0},{f,281}}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",679}]}.
    {call,0,{f,290}}. % cover_letrec_effect_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,281}.
    {try_case,{y,0}}.
    {'try',{y,0},{f,282}}.
    {line,[{scope,[5,6]},{location,"core_fold_SUITE.erl",680}]}.
    {call,0,{f,292}}. % cover_letrec_effect_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,0}}.
    {jump,{f,283}}.
  {label,282}.
    {try_case,{y,0}}.
  {label,283}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,284}.
    {wait,{f,280}}.
  {label,285}.
    {loop_rec_end,{f,279}}.
  {label,286}.
    {wait,{f,279}}.
  {label,287}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,288}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",676}]}.
    {badmatch,{x,0}}.


{function, cover_letrec_effect_1, 0, 290}.
  {label,289}.
    {line,[{location,"core_fold_SUITE.erl",684}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_letrec_effect_1},0}.
  {label,290}.
    {call_only,0,{f,354}}. % '-cover_letrec_effect_1/0-after$^0/0-0-'/0


{function, cover_letrec_effect_2, 0, 292}.
  {label,291}.
    {line,[{location,"core_fold_SUITE.erl",698}]}.
    {func_info,{atom,core_fold_SUITE},{atom,cover_letrec_effect_2},0}.
  {label,292}.
    {move,{atom,ok},{x,0}}.
    return.


{function, receive_effect, 1, 294}.
  {label,293}.
    {line,[{location,"core_fold_SUITE.erl",704}]}.
    {func_info,{atom,core_fold_SUITE},{atom,receive_effect},1}.
  {label,294}.
    {allocate,0,0}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,whatever},{x,1}}.
    {line,[{location,"core_fold_SUITE.erl",705}]}.
    send.
    {line,[{location,"core_fold_SUITE.erl",706}]}.
    {call,0,{f,296}}. % do_receive_effect/0
    {'%',{var_info,{x,0},[{type,{t_tuple,0,true,#{}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, do_receive_effect, 0, 296}.
  {label,295}.
    {line,[{location,"core_fold_SUITE.erl",709}]}.
    {func_info,{atom,core_fold_SUITE},{atom,do_receive_effect},0}.
  {label,296}.
    {allocate,0,0}.
  {label,297}.
    {loop_rec,{f,298},{x,0}}.
    remove_message.
    {move,{literal,{}},{x,0}}.
    {deallocate,0}.
    return.
  {label,298}.
    {wait,{f,297}}.


{function, nested_lets, 1, 300}.
  {label,299}.
    {line,[{location,"core_fold_SUITE.erl",712}]}.
    {func_info,{atom,core_fold_SUITE},{atom,nested_lets},1}.
  {label,300}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {'catch',{y,5},{f,301}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",713}]}.
    {call,1,{f,314}}. % nested_lets_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,301}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,312},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,312},[{x,1}]}.
    {test,test_arity,{f,312},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,312},[{x,1},{literal,{case_clause,ok}}]}.
    {'catch',{y,4},{f,302}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\n"},{location,"core_fold_SUITE.erl",714}]}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,5},{x,0}}.
    {init_yregs,{list,[{y,5}]}}.
    {call,2,{f,317}}. % nested_lets_2/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,302}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,311},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,311},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,3},{f,303}}.
    {line,[{scope,"\t\n"},{location,"core_fold_SUITE.erl",715}]}.
    {call,0,{f,321}}. % nested_lets_3/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,303}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,310},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,310},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,2},{f,304}}.
    {line,[{scope,[7,8]},{location,"core_fold_SUITE.erl",716}]}.
    {call,0,{f,325}}. % nested_lets_4/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,304}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,309},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,309},[{x,1},2,{atom,undef}]}.
    {'catch',{y,1},{f,305}}.
    {line,[{scope,[5,6]},{location,"core_fold_SUITE.erl",717}]}.
    {call,0,{f,329}}. % nested_lets_5/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,305}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,308},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,308},[{x,1}]}.
    {test,test_arity,{f,308},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,308},[{x,1},2,{atom,case_clause}]}.
    {'catch',{y,0},{f,306}}.
    {line,[{scope,[3,4]},{location,"core_fold_SUITE.erl",718}]}.
    {call,0,{f,331}}. % nested_lets_6/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,306}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,307},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,307},[{x,1},2,{atom,badarith}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,307}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",718}]}.
    {badmatch,{x,0}}.
  {label,308}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",717}]}.
    {badmatch,{x,0}}.
  {label,309}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",716}]}.
    {badmatch,{x,0}}.
  {label,310}.
    {line,[{scope,[6]},{location,"core_fold_SUITE.erl",715}]}.
    {badmatch,{x,0}}.
  {label,311}.
    {line,[{scope,"\b"},{location,"core_fold_SUITE.erl",714}]}.
    {badmatch,{x,0}}.
  {label,312}.
    {line,[{scope,"\n"},{location,"core_fold_SUITE.erl",713}]}.
    {badmatch,{x,0}}.


{function, nested_lets_1, 1, 314}.
  {label,313}.
    {line,[{location,"core_fold_SUITE.erl",726}]}.
    {func_info,{atom,core_fold_SUITE},{atom,nested_lets_1},1}.
  {label,314}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,315},{x,0},{commands,[{ensure_exactly,8}]}}.
    {line,[{location,"core_fold_SUITE.erl",728}]}.
    {case_end,{atom,ok}}.
  {label,315}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,313}}.


{function, nested_lets_2, 2, 317}.
  {label,316}.
    {line,[{location,"core_fold_SUITE.erl",761}]}.
    {func_info,{atom,core_fold_SUITE},{atom,nested_lets_2},2}.
  {label,317}.
    {test,is_eq_exact,{f,316},[{x,1},{integer,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,319}}.
    {'try',{y,0},{f,318}}.
    {line,[{location,"core_fold_SUITE.erl",765}]}.
    {gc_bif,'bnot',{f,0},0,[{atom,ok}],{x,0}}.
  {label,318}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,319}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, nested_lets_3, 0, 321}.
  {label,320}.
    {line,[{location,"core_fold_SUITE.erl",812}]}.
    {func_info,{atom,core_fold_SUITE},{atom,nested_lets_3},0}.
  {label,321}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,323}}.
    {'try',{y,0},{f,322}}.
    {line,[{location,"core_fold_SUITE.erl",813}]}.
    {gc_bif,'*',{f,0},0,[{atom,ok},{atom,ok}],{x,0}}.
  {label,322}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,323}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, nested_lets_4, 0, 325}.
  {label,324}.
    {line,[{location,"core_fold_SUITE.erl",820}]}.
    {func_info,{atom,core_fold_SUITE},{atom,nested_lets_4},0}.
  {label,325}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,327}}.
    {'try',{y,0},{f,326}}.
    {line,[{location,"core_fold_SUITE.erl",822}]}.
    {call_ext,0,{extfunc,core_fold_SUITE,undef,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {case_end,{x,0}}.
  {label,326}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,327}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, nested_lets_5, 0, 329}.
  {label,328}.
    {line,[{location,"core_fold_SUITE.erl",836}]}.
    {func_info,{atom,core_fold_SUITE},{atom,nested_lets_5},0}.
  {label,329}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"core_fold_SUITE.erl",837}]}.
    {case_end,{x,0}}.


{function, nested_lets_6, 0, 331}.
  {label,330}.
    {line,[{location,"core_fold_SUITE.erl",852}]}.
    {func_info,{atom,core_fold_SUITE},{atom,nested_lets_6},0}.
  {label,331}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,333}}.
    {fmove,{float,1.0},{fr,0}}.
    {fmove,{float,0.0},{fr,1}}.
    {'try',{y,0},{f,332}}.
    {line,[{location,"core_fold_SUITE.erl",853}]}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{atom,ok}]}}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,332}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,333}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, map_effect, 1, 335}.
  {label,334}.
    {line,[{location,"core_fold_SUITE.erl",860}]}.
    {func_info,{atom,core_fold_SUITE},{atom,map_effect},1}.
  {label,335}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'catch',{y,2},{f,336}}.
    {line,[{location,"core_fold_SUITE.erl",861}]}.
    {call,0,{f,343}}. % map_effect_1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,336}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,341},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,341},[{x,1}]}.
    {test,test_arity,{f,341},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,341},[{x,1},{literal,{badkey,key}}]}.
    {'catch',{y,1},{f,337}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",863}]}.
    {call,1,{f,345}}. % map_effect_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,337}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,340},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,340},[{x,1}]}.
    {test,test_arity,{f,340},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,340},[{x,1},{literal,{badkey,key}}]}.
    {'catch',{y,0},{f,338}}.
    {move,{atom,no_map},{x,0}}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",864}]}.
    {call,1,{f,345}}. % map_effect_2/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,338}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,339},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,339},[{x,1}]}.
    {test,test_arity,{f,339},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,339},[{x,1},{literal,{badmap,no_map}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,339}.
    {line,[{scope,[0]},{location,"core_fold_SUITE.erl",864}]}.
    {badmatch,{x,0}}.
  {label,340}.
    {line,[{scope,[2]},{location,"core_fold_SUITE.erl",863}]}.
    {badmatch,{x,0}}.
  {label,341}.
    {line,[{scope,[4]},{location,"core_fold_SUITE.erl",861}]}.
    {badmatch,{x,0}}.


{function, map_effect_1, 0, 343}.
  {label,342}.
    {line,[{location,"core_fold_SUITE.erl",868}]}.
    {func_info,{atom,core_fold_SUITE},{atom,map_effect_1},0}.
  {label,343}.
    {line,[{location,"core_fold_SUITE.erl",869}]}.
    {put_map_exact,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[{atom,key},{atom,value}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, map_effect_2, 1, 345}.
  {label,344}.
    {line,[{location,"core_fold_SUITE.erl",872}]}.
    {func_info,{atom,core_fold_SUITE},{atom,map_effect_2},1}.
  {label,345}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_map]},
                                   none,none,none,
                                   {t_map,none,none}}}]}}.
    {test,is_map,
          {f,346},
          [{tr,{x,0},
               {t_union,{t_atom,[no_map]},none,none,none,{t_map,none,none}}}]}.
    {line,[{location,"core_fold_SUITE.erl",873}]}.
    {put_map_exact,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[{atom,key},{atom,value}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,346}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{atom,no_map}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, id, 1, 348}.
  {label,347}.
    {line,[{location,"core_fold_SUITE.erl",878}]}.
    {func_info,{atom,core_fold_SUITE},{atom,id},1}.
  {label,348}.
    return.


{function, module_info, 0, 350}.
  {label,349}.
    {line,[]}.
    {func_info,{atom,core_fold_SUITE},{atom,module_info},0}.
  {label,350}.
    {move,{atom,core_fold_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 352}.
  {label,351}.
    {line,[]}.
    {func_info,{atom,core_fold_SUITE},{atom,module_info},1}.
  {label,352}.
    {move,{x,0},{x,1}}.
    {move,{atom,core_fold_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-cover_letrec_effect_1/0-after$^0/0-0-', 0, 354}.
  {label,353}.
    {line,[{location,"core_fold_SUITE.erl",685}]}.
    {func_info,{atom,core_fold_SUITE},
               {atom,'-cover_letrec_effect_1/0-after$^0/0-0-'},
               0}.
  {label,354}.
    {line,[{location,"core_fold_SUITE.erl",688}]}.
    {case_end,{atom,any_atom}}.


{function, '-configuration/0-lc$^0/1-0-', 1, 356}.
  {label,355}.
    {line,[{location,"core_fold_SUITE.erl",571}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-configuration/0-lc$^0/1-0-'},1}.
  {label,356}.
    {'%',{var_info,{x,0},[{type,{t_atom,[enemy]}}]}}.
    {move,{literal,{bad_generator,enemy}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-tim/1-fun-0-', 0, 358}.
  {label,357}.
    {line,[{location,"core_fold_SUITE.erl",543}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-tim/1-fun-0-'},0}.
  {label,358}.
    {move,{atom,surgery},{x,0}}.
    return.


{function, '-multiple_aliases/1-fun-1-', 0, 360}.
  {label,359}.
    {line,[{location,"core_fold_SUITE.erl",459}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-multiple_aliases/1-fun-1-'},0}.
  {label,360}.
    {allocate,0,0}.
    {line,[{location,"core_fold_SUITE.erl",460}]}.
    {call,0,{f,201}}. % run_once/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{true,true,ok,ok}},{x,0}}.
    {deallocate,0}.
    return.


{function, '-multiple_aliases/1-fun-0-', 0, 362}.
  {label,361}.
    {line,[{location,"core_fold_SUITE.erl",455}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-multiple_aliases/1-fun-0-'},0}.
  {label,362}.
    {allocate,0,0}.
    {line,[{location,"core_fold_SUITE.erl",456}]}.
    {call,0,{f,201}}. % run_once/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,{ok,ok}},{x,0}}.
    {deallocate,0}.
    return.


{function, '-cover_core_lib/1-lc$^0/1-0-', 1, 364}.
  {label,363}.
    {line,[{location,"core_fold_SUITE.erl",410}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-cover_core_lib/1-lc$^0/1-0-'},1}.
  {label,364}.
    {test,is_nonempty_list,{f,366},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bif,element,{f,365},[{integer,1},{x,1}],{x,2}}.
    {test,is_ne_exact,{f,365},[{x,2},{atom,ok}]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,348}}. % id/1
    {move,{y,0},{x,0}}.
    {call_last,1,{f,364},1}. % '-cover_core_lib/1-lc$^0/1-0-'/1
  {label,365}.
    {call_only,1,{f,364}}. % '-cover_core_lib/1-lc$^0/1-0-'/1
  {label,366}.
    {test,is_nil,{f,367},[{x,0}]}.
    return.
  {label,367}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-eq/1-fun-14-', 1, 369}.
  {label,368}.
    {line,[{location,"core_fold_SUITE.erl",247}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-14-'},1}.
  {label,369}.
    {test,is_eq,{f,370},[{x,0},{literal,#{a => [1],b => [2.0]}}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,370}.
    {badmatch,{atom,true}}.


{function, '-eq/1-fun-15-', 1, 372}.
  {label,371}.
    {line,[{location,"core_fold_SUITE.erl",247}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-15-'},1}.
  {label,372}.
    {test,is_eq,{f,373},[{x,0},{literal,#{a => [1],b => [2.0]}}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,373}.
    {badmatch,{atom,false}}.


{function, '-eq/1-fun-12-', 1, 375}.
  {label,374}.
    {line,[{location,"core_fold_SUITE.erl",246}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-12-'},1}.
  {label,375}.
    {test,is_eq,{f,376},[{x,0},{literal,#{a => 1,b => 2.0}}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,376}.
    {badmatch,{atom,true}}.


{function, '-eq/1-fun-13-', 1, 378}.
  {label,377}.
    {line,[{location,"core_fold_SUITE.erl",246}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-13-'},1}.
  {label,378}.
    {test,is_eq,{f,379},[{x,0},{literal,#{a => 1,b => 2.0}}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,379}.
    {badmatch,{atom,false}}.


{function, '-eq/1-fun-10-', 1, 381}.
  {label,380}.
    {line,[{location,"core_fold_SUITE.erl",244}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-10-'},1}.
  {label,381}.
    {test,is_eq,{f,382},[{x,0},{literal,{1,2,3}}]}.
    {badmatch,{atom,false}}.
  {label,382}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-eq/1-fun-11-', 1, 384}.
  {label,383}.
    {line,[{location,"core_fold_SUITE.erl",244}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-11-'},1}.
  {label,384}.
    {test,is_eq,{f,385},[{x,0},{literal,{1,2,3}}]}.
    {badmatch,{atom,true}}.
  {label,385}.
    {move,{atom,true},{x,0}}.
    return.


{function, '-eq/1-fun-8-', 1, 387}.
  {label,386}.
    {line,[{location,"core_fold_SUITE.erl",243}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-8-'},1}.
  {label,387}.
    {test,is_eq_exact,{f,388},[{x,0},{literal,[a]}]}.
    {badmatch,{atom,false}}.
  {label,388}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-eq/1-fun-9-', 1, 390}.
  {label,389}.
    {line,[{location,"core_fold_SUITE.erl",243}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-9-'},1}.
  {label,390}.
    {test,is_eq_exact,{f,391},[{x,0},{literal,[a]}]}.
    {badmatch,{atom,true}}.
  {label,391}.
    {move,{atom,true},{x,0}}.
    return.


{function, '-eq/1-fun-6-', 1, 393}.
  {label,392}.
    {line,[{location,"core_fold_SUITE.erl",241}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-6-'},1}.
  {label,393}.
    {test,is_eq,{f,394},[{x,0},{literal,"*"}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,394}.
    {badmatch,{atom,true}}.


{function, '-eq/1-fun-7-', 1, 396}.
  {label,395}.
    {line,[{location,"core_fold_SUITE.erl",241}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-7-'},1}.
  {label,396}.
    {test,is_eq,{f,397},[{x,0},{literal,"*"}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,397}.
    {badmatch,{atom,false}}.


{function, '-eq/1-fun-4-', 1, 399}.
  {label,398}.
    {line,[{location,"core_fold_SUITE.erl",240}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-4-'},1}.
  {label,399}.
    {test,is_eq,{f,400},[{x,0},{literal,"*"}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,400}.
    {badmatch,{atom,true}}.


{function, '-eq/1-fun-5-', 1, 402}.
  {label,401}.
    {line,[{location,"core_fold_SUITE.erl",240}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-5-'},1}.
  {label,402}.
    {test,is_eq,{f,403},[{x,0},{literal,"*"}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,403}.
    {badmatch,{atom,false}}.


{function, '-eq/1-fun-2-', 1, 405}.
  {label,404}.
    {line,[{location,"core_fold_SUITE.erl",239}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-2-'},1}.
  {label,405}.
    {test,is_eq,{f,406},[{x,0},{literal,[42.0]}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,406}.
    {badmatch,{atom,true}}.


{function, '-eq/1-fun-3-', 1, 408}.
  {label,407}.
    {line,[{location,"core_fold_SUITE.erl",239}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-3-'},1}.
  {label,408}.
    {test,is_eq,{f,409},[{x,0},{literal,[42.0]}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,409}.
    {badmatch,{atom,false}}.


{function, '-eq/1-fun-0-', 1, 411}.
  {label,410}.
    {line,[{location,"core_fold_SUITE.erl",238}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-0-'},1}.
  {label,411}.
    {test,is_eq_exact,{f,412},[{x,0},{literal,[a,b,c]}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,412}.
    {badmatch,{atom,true}}.


{function, '-eq/1-fun-1-', 1, 414}.
  {label,413}.
    {line,[{location,"core_fold_SUITE.erl",238}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-eq/1-fun-1-'},1}.
  {label,414}.
    {test,is_eq_exact,{f,415},[{x,0},{literal,[a,b,c]}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,415}.
    {badmatch,{atom,false}}.


{function, '-append/1-fun-2-', 2, 417}.
  {label,416}.
    {line,[{location,"core_fold_SUITE.erl",181}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-append/1-fun-2-'},2}.
  {label,417}.
    {test_heap,2,2}.
    {put_list,{x,1},{literal,[1,2,3,4,5,6]},{x,2}}.
    {test,is_eq_exact,{f,419},[{tr,{x,2},{t_cons,any,nil}},{x,0}]}.
    {allocate_heap,2,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {put_list,{x,1},{literal,[1,2,3]},{x,0}}.
    {move,{literal,[4,5,6]},{x,1}}.
    {call_ext,2,{extfunc,erlang,append,2}}.
    {test,is_eq_exact,{f,418},[{x,0},{tr,{y,1},{t_cons,any,nil}}]}.
    {test_heap,2,0}.
    {put_list,{y,0},{literal,[1,2,3,4,5,6]},{x,0}}.
    {test,is_eq_exact,
          {f,418},
          [{tr,{x,0},{t_cons,any,nil}},{tr,{y,1},{t_cons,any,nil}}]}.
    {deallocate,2}.
    return.
  {label,418}.
    {badmatch,{x,0}}.
  {label,419}.
    {badmatch,{x,2}}.


{function, '-append/1-fun-1-', 1, 421}.
  {label,420}.
    {line,[{location,"core_fold_SUITE.erl",180}]}.
    {func_info,{atom,core_fold_SUITE},{atom,'-append/1-fun-1-'},1}.
  {label,421}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,[d,e]},{x,0}}.
    {call,1,{f,348}}. % id/1
    {test_heap,6,1}.
    {put_list,{atom,c},{x,0},{x,0}}.
    {put_list,{atom,b},{x,0},{x,0}}.
    {put_list,{atom,a},{x,0},{x,0}}.
    {test,is_eq_exact,{f,422},[{tr,{x,0},{t_cons,any,any}},{y,0}]}.
    {move,{literal,[d,e]},{x,0}}.
    {call,1,{f,348}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,[a,b,c]},{x,0}}.
    {call_ext,2,{extfunc,erlang,append,2}}.
    {test,is_eq_exact,{f,422},[{x,0},{tr,{y,0},{t_cons,any,any}}]}.
    {move,{literal,[d,e]},{x,0}}.
    {call,1,{f,348}}. % id/1
    {test_heap,6,1}.
    {put_list,{atom,c},{x,0},{x,0}}.
    {put_list,{atom,b},{x,0},{x,0}}.
    {put_list,{atom,a},{x,0},{x,0}}.
    {test,is_eq_exact,
          {f,422},
          [{tr,{x,0},{t_cons,any,any}},{tr,{y,0},{t_cons,any,any}}]}.
    {deallocate,1}.
    return.
  {label,422}.
    {badmatch,{x,0}}.
