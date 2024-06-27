{module, beam_types_SUITE}.  %% version = 0

{exports, [{absorption,1},
           {all,0},
           {associativity,1},
           {binary_absorption,1},
           {commutativity,1},
           {end_per_suite,1},
           {groups,0},
           {idempotence,1},
           {identity,1},
           {init_per_suite,1},
           {integer_absorption,1},
           {integer_associativity,1},
           {module_info,0},
           {module_info,1},
           {subtraction,1},
           {suite,0},
           {tuple_absorption,1},
           {tuple_set_limit,1}]}.

{attributes, []}.

{labels, 67}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_types_SUITE.erl",42}]}.
    {func_info,{atom,beam_types_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_types_SUITE.erl",45}]}.
    {func_info,{atom,beam_types_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,property_tests},
                    binary_absorption,integer_absorption,
                    integer_associativity,tuple_absorption,tuple_set_limit]},
          {x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_types_SUITE.erl",53}]}.
    {func_info,{atom,beam_types_SUITE},{atom,groups},0}.
  {label,6}.
    {move,{literal,[{property_tests,[parallel],
                                    [absorption,associativity,commutativity,
                                     idempotence,identity,subtraction]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_types_SUITE.erl",62}]}.
    {func_info,{atom,beam_types_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {line,[{location,"beam_types_SUITE.erl",63}]}.
    {call_ext_only,1,{extfunc,ct_property_test,init_per_suite,1}}.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_types_SUITE.erl",65}]}.
    {func_info,{atom,beam_types_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    return.


{function, absorption, 1, 12}.
  {label,11}.
    {line,[{location,"beam_types_SUITE.erl",68}]}.
    {func_info,{atom,beam_types_SUITE},{atom,absorption},1}.
  {label,12}.
    {test,is_list,{f,11},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_types_SUITE.erl",70}]}.
    {call_ext,0,{extfunc,beam_types_prop,absorption,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,ct_property_test,quickcheck,2}}.
    {test,is_eq_exact,{f,13},[{x,0},{atom,true}]}.
    {deallocate,0}.
    return.
  {label,13}.
    {badmatch,{x,0}}.


{function, associativity, 1, 15}.
  {label,14}.
    {line,[{location,"beam_types_SUITE.erl",72}]}.
    {func_info,{atom,beam_types_SUITE},{atom,associativity},1}.
  {label,15}.
    {test,is_list,{f,14},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_types_SUITE.erl",74}]}.
    {call_ext,0,{extfunc,beam_types_prop,associativity,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,ct_property_test,quickcheck,2}}.
    {test,is_eq_exact,{f,16},[{x,0},{atom,true}]}.
    {deallocate,0}.
    return.
  {label,16}.
    {badmatch,{x,0}}.


{function, commutativity, 1, 18}.
  {label,17}.
    {line,[{location,"beam_types_SUITE.erl",76}]}.
    {func_info,{atom,beam_types_SUITE},{atom,commutativity},1}.
  {label,18}.
    {test,is_list,{f,17},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_types_SUITE.erl",78}]}.
    {call_ext,0,{extfunc,beam_types_prop,commutativity,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,ct_property_test,quickcheck,2}}.
    {test,is_eq_exact,{f,19},[{x,0},{atom,true}]}.
    {deallocate,0}.
    return.
  {label,19}.
    {badmatch,{x,0}}.


{function, idempotence, 1, 21}.
  {label,20}.
    {line,[{location,"beam_types_SUITE.erl",80}]}.
    {func_info,{atom,beam_types_SUITE},{atom,idempotence},1}.
  {label,21}.
    {test,is_list,{f,20},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_types_SUITE.erl",82}]}.
    {call_ext,0,{extfunc,beam_types_prop,idempotence,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,ct_property_test,quickcheck,2}}.
    {test,is_eq_exact,{f,22},[{x,0},{atom,true}]}.
    {deallocate,0}.
    return.
  {label,22}.
    {badmatch,{x,0}}.


{function, identity, 1, 24}.
  {label,23}.
    {line,[{location,"beam_types_SUITE.erl",84}]}.
    {func_info,{atom,beam_types_SUITE},{atom,identity},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_types_SUITE.erl",86}]}.
    {call_ext,0,{extfunc,beam_types_prop,identity,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,ct_property_test,quickcheck,2}}.
    {test,is_eq_exact,{f,25},[{x,0},{atom,true}]}.
    {deallocate,0}.
    return.
  {label,25}.
    {badmatch,{x,0}}.


{function, subtraction, 1, 27}.
  {label,26}.
    {line,[{location,"beam_types_SUITE.erl",88}]}.
    {func_info,{atom,beam_types_SUITE},{atom,subtraction},1}.
  {label,27}.
    {test,is_list,{f,26},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_types_SUITE.erl",90}]}.
    {call_ext,0,{extfunc,beam_types_prop,subtraction,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,ct_property_test,quickcheck,2}}.
    {test,is_eq_exact,{f,28},[{x,0},{atom,true}]}.
    {deallocate,0}.
    return.
  {label,28}.
    {badmatch,{x,0}}.


{function, binary_absorption, 1, 30}.
  {label,29}.
    {line,[{location,"beam_types_SUITE.erl",92}]}.
    {func_info,{atom,beam_types_SUITE},{atom,binary_absorption},1}.
  {label,30}.
    {test,is_list,{f,29},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{t_bitstring,6,false}},{x,1}}.
    {move,{literal,{t_bitstring,4,false}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",98}]}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {test,is_tagged_tuple,{f,38},[{x,0},3,{atom,t_bitstring}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,38},[{x,1},{integer,12}]}.
    {move,{literal,{t_bitstring,6,false}},{x,1}}.
    {move,{literal,{t_bitstring,4,false}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",99}]}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {test,is_tagged_tuple,{f,37},[{x,0},3,{atom,t_bitstring}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,37},[{x,1},{integer,2}]}.
    {move,{literal,{t_bitstring,6,false}},{x,1}}.
    {move,{literal,{t_bitstring,4,false}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",101}]}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{t_bitstring,4,false}},{x,0}}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {test,is_eq_exact,{f,36},[{x,0},{literal,{t_bitstring,4,false}}]}.
    {move,{literal,{t_bitstring,6,false}},{x,1}}.
    {line,[{location,"beam_types_SUITE.erl",102}]}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{t_bitstring,4,false}},{x,0}}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {test,is_eq_exact,{f,35},[{x,0},{literal,{t_bitstring,4,false}}]}.
    {move,{literal,{t_bitstring,6,false}},{x,1}}.
    {move,{literal,{t_bitstring,4,true}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",108}]}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {test,is_eq_exact,{f,34},[{x,0},{literal,{t_bitstring,12,true}}]}.
    {move,{literal,{t_bitstring,6,false}},{x,1}}.
    {move,{literal,{t_bitstring,4,true}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",109}]}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {test,is_eq_exact,{f,33},[{x,0},{literal,{t_bitstring,2,false}}]}.
    {move,{literal,{t_bitstring,6,false}},{x,1}}.
    {move,{literal,{t_bitstring,4,true}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",111}]}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{t_bitstring,4,true}},{x,0}}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {test,is_eq_exact,{f,32},[{x,0},{literal,{t_bitstring,4,true}}]}.
    {move,{literal,{t_bitstring,6,false}},{x,1}}.
    {line,[{location,"beam_types_SUITE.erl",112}]}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{t_bitstring,4,true}},{x,0}}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {test,is_eq_exact,{f,31},[{x,0},{literal,{t_bitstring,4,true}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,31}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{location,"beam_types_SUITE.erl",111}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{location,"beam_types_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{location,"beam_types_SUITE.erl",108}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{location,"beam_types_SUITE.erl",102}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{location,"beam_types_SUITE.erl",101}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{location,"beam_types_SUITE.erl",99}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{location,"beam_types_SUITE.erl",98}]}.
    {badmatch,{x,0}}.


{function, integer_absorption, 1, 40}.
  {label,39}.
    {line,[{location,"beam_types_SUITE.erl",116}]}.
    {func_info,{atom,beam_types_SUITE},{atom,integer_absorption},1}.
  {label,40}.
    {test,is_list,{f,39},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{t_integer,{4,5}}},{x,1}}.
    {move,{literal,{t_integer,{2,3}}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",121}]}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {test,is_eq_exact,{f,44},[{x,0},{atom,none}]}.
    {move,{literal,{t_integer,{4,5}}},{x,1}}.
    {move,{literal,{t_integer,{2,3}}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",122}]}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {test,is_eq_exact,{f,43},[{x,0},{literal,{t_integer,{2,5}}}]}.
    {move,{literal,{t_integer,{4,5}}},{x,1}}.
    {move,{literal,{t_integer,{2,3}}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",124}]}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{t_integer,{2,3}}},{x,0}}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {test,is_eq_exact,{f,42},[{x,0},{literal,{t_integer,{2,3}}}]}.
    {move,{literal,{t_integer,{4,5}}},{x,1}}.
    {line,[{location,"beam_types_SUITE.erl",125}]}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{t_integer,{2,3}}},{x,0}}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {test,is_eq_exact,{f,41},[{x,0},{literal,{t_integer,{2,3}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,41}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{location,"beam_types_SUITE.erl",124}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{location,"beam_types_SUITE.erl",122}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{location,"beam_types_SUITE.erl",121}]}.
    {badmatch,{x,0}}.


{function, integer_associativity, 1, 46}.
  {label,45}.
    {line,[{location,"beam_types_SUITE.erl",129}]}.
    {func_info,{atom,beam_types_SUITE},{atom,integer_associativity},1}.
  {label,46}.
    {test,is_list,{f,45},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{t_integer,{5,5}}},{x,1}}.
    {move,{literal,{t_integer,{4,6}}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",135}]}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{t_integer,{3,5}}},{x,0}}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {move,{x,0},{y,0}}.
    {move,{literal,{t_integer,{4,6}}},{x,1}}.
    {move,{literal,{t_integer,{3,5}}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",136}]}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {move,{literal,{t_integer,{5,5}}},{x,1}}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {test,is_eq_exact,{f,48},[{x,0},{y,0}]}.
    {test,is_eq_exact,{f,48},[{x,0},{literal,{t_integer,{3,6}}}]}.
    {move,{literal,{t_integer,{5,5}}},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{t_integer,{4,6}}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",140}]}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{t_integer,{3,5}}},{x,0}}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {move,{x,0},{y,0}}.
    {move,{literal,{t_integer,{4,6}}},{x,1}}.
    {move,{literal,{t_integer,{3,5}}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",141}]}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {move,{literal,{t_integer,{5,5}}},{x,1}}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {test,is_eq_exact,{f,47},[{x,0},{y,0}]}.
    {test,is_eq_exact,{f,47},[{x,0},{literal,{t_integer,{5,5}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,47}.
    {line,[{location,"beam_types_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{location,"beam_types_SUITE.erl",137}]}.
    {badmatch,{x,0}}.


{function, tuple_absorption, 1, 50}.
  {label,49}.
    {line,[{location,"beam_types_SUITE.erl",146}]}.
    {func_info,{atom,beam_types_SUITE},{atom,tuple_absorption},1}.
  {label,50}.
    {test,is_list,{f,49},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{t_tuple,5,false,#{3 => {t_atom,[gaffel]}}}},{x,1}}.
    {move,{literal,{t_tuple,3,true,#{1 => {t_atom,[gurka]}}}},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",154}]}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{t_tuple,3,true,#{1 => {t_atom,[gurka]}}}},{x,0}}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {test,is_eq_exact,
          {f,52},
          [{x,0},{literal,{t_tuple,3,true,#{1 => {t_atom,[gurka]}}}}]}.
    {move,{literal,{t_tuple,5,false,#{3 => {t_atom,[gaffel]}}}},{x,1}}.
    {line,[{location,"beam_types_SUITE.erl",155}]}.
    {call_ext,2,{extfunc,beam_types,meet,2}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{t_tuple,3,true,#{1 => {t_atom,[gurka]}}}},{x,0}}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {test,is_eq_exact,
          {f,51},
          [{x,0},{literal,{t_tuple,3,true,#{1 => {t_atom,[gurka]}}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,51}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{location,"beam_types_SUITE.erl",154}]}.
    {badmatch,{x,0}}.


{function, tuple_set_limit, 1, 54}.
  {label,53}.
    {line,[{location,"beam_types_SUITE.erl",159}]}.
    {func_info,{atom,beam_types_SUITE},{atom,tuple_set_limit},1}.
  {label,54}.
    {test,is_list,{f,53},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,12},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",165}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,64}}. % '-tuple_set_limit/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,4,true,
                         #{1 => {t_atom,[t_tuple]},
                           3 => {t_atom,[true]},
                           4 =>
                               {t_map,
                                   {t_integer,{1,1}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[t_integer]},
                                         2 => {t_tuple,0,false,#{}}}}}}},
                     nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,12},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",169}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,60}}. % '-tuple_set_limit/1-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,4,true,
                         #{1 => {t_atom,[t_tuple]},
                           2 => {t_integer,{1,1}},
                           3 => {t_atom,[true]},
                           4 =>
                               {t_map,
                                   {t_integer,{1,1}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[t_integer]},
                                         2 => {t_tuple,0,false,#{}}}}}}},
                     nil}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",171}]}.
    {call_ext,1,{extfunc,beam_types,join,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"beam_types_SUITE.erl",172}]}.
    {call_ext,1,{extfunc,beam_types,join,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"beam_types_SUITE.erl",174}]}.
    {call_ext,2,{extfunc,beam_types,join,2}}.
    {call_ext,1,{extfunc,beam_types,verified_type,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, module_info, 0, 56}.
  {label,55}.
    {line,[]}.
    {func_info,{atom,beam_types_SUITE},{atom,module_info},0}.
  {label,56}.
    {move,{atom,beam_types_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 58}.
  {label,57}.
    {line,[]}.
    {func_info,{atom,beam_types_SUITE},{atom,module_info},1}.
  {label,58}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_types_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-tuple_set_limit/1-lc$^1/1-1-', 1, 60}.
  {label,59}.
    {line,[{location,"beam_types_SUITE.erl",169}]}.
    {func_info,{atom,beam_types_SUITE},
               {atom,'-tuple_set_limit/1-lc$^1/1-1-'},
               1}.
  {label,60}.
    {test,is_nonempty_list,{f,61},[{x,0}]}.
    {allocate_heap,1,6,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,1},{x,0}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,1}]}}.
    {put_tuple2,{x,1},{list,[{atom,t_integer},{x,1}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{y,0},2,{list,[{integer,1},{x,1}]}}.
    {call,1,{f,60}}. % '-tuple_set_limit/1-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,4,true,
                         #{1 => {t_atom,[t_tuple]},
                           2 => {t_integer,{1,1}},
                           3 => {t_atom,[true]},
                           4 =>
                               {t_map,
                                   {t_integer,{1,1}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[t_integer]},
                                         2 => {t_tuple,0,false,#{}}}}}}},
                     nil}}]}}.
    {test_heap,7,1}.
    {put_tuple2,{x,1},{list,[{atom,t_tuple},{integer,1},{atom,true},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,61}.
    {test,is_nil,{f,62},[{x,0}]}.
    return.
  {label,62}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-tuple_set_limit/1-lc$^0/1-0-', 1, 64}.
  {label,63}.
    {line,[{location,"beam_types_SUITE.erl",165}]}.
    {func_info,{atom,beam_types_SUITE},
               {atom,'-tuple_set_limit/1-lc$^0/1-0-'},
               1}.
  {label,64}.
    {test,is_nonempty_list,{f,65},[{x,0}]}.
    {allocate_heap,2,6,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,1},{x,0}}.
    {put_tuple2,{x,1},{list,[{y,1},{y,1}]}}.
    {put_tuple2,{x,1},{list,[{atom,t_integer},{x,1}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{y,0},2,{list,[{integer,1},{x,1}]}}.
    {call,1,{f,64}}. % '-tuple_set_limit/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,4,true,
                         #{1 => {t_atom,[t_tuple]},
                           3 => {t_atom,[true]},
                           4 =>
                               {t_map,
                                   {t_integer,{1,1}},
                                   {t_tuple,2,true,
                                       #{1 => {t_atom,[t_integer]},
                                         2 => {t_tuple,0,false,#{}}}}}}},
                     nil}}]}}.
    {test_heap,7,1}.
    {put_tuple2,{x,1},{list,[{atom,t_tuple},{y,1},{atom,true},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,65}.
    {test,is_nil,{f,66},[{x,0}]}.
    return.
  {label,66}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
