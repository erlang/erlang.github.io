{module, misc_SUITE}.  %% version = 0

{exports, [{all,0},
           {behaviour_info,1},
           {confused_literals,1},
           {empty_string,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {integer_encoding,0},
           {integer_encoding,1},
           {md5,1},
           {module_info,0},
           {module_info,1},
           {override_bif,1},
           {silly_coverage,1},
           {suite,0},
           {tobias,1}]}.

{attributes, []}.

{labels, 146}.


{function, init_per_testcase, 2, 2}.
  {label,1}.
    {line,[{location,"misc_SUITE.erl",55}]}.
    {func_info,{atom,misc_SUITE},{atom,init_per_testcase},2}.
  {label,2}.
    {test,is_atom,{f,1},[{x,0}]}.
    {test,is_list,{f,1},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 4}.
  {label,3}.
    {line,[{location,"misc_SUITE.erl",58}]}.
    {func_info,{atom,misc_SUITE},{atom,end_per_testcase},2}.
  {label,4}.
    {test,is_atom,{f,3},[{x,0}]}.
    {test,is_list,{f,3},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, suite, 0, 6}.
  {label,5}.
    {line,[{location,"misc_SUITE.erl",61}]}.
    {func_info,{atom,misc_SUITE},{atom,suite},0}.
  {label,6}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,10}}]},
          {x,0}}.
    return.


{function, all, 0, 8}.
  {label,7}.
    {line,[{location,"misc_SUITE.erl",66}]}.
    {func_info,{atom,misc_SUITE},{atom,all},0}.
  {label,8}.
    {allocate,0,0}.
    nif_start.
    {line,[{location,"misc_SUITE.erl",67}]}.
    {call,0,{f,21}}. % slow_group/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[group]},2 => {t_atom,[slow]}}},
                     nil}}]}}.
    {move,{literal,[{group,p}]},{x,1}}.
    {call_ext_last,2,{extfunc,erlang,'++',2},0}.


{function, groups, 0, 10}.
  {label,9}.
    {line,[{location,"misc_SUITE.erl",69}]}.
    {func_info,{atom,misc_SUITE},{atom,groups},0}.
  {label,10}.
    {move,{literal,[{p,[parallel],
                       [tobias,empty_string,silly_coverage,confused_literals,
                        override_bif]},
                    {slow,[parallel],[integer_encoding,md5]}]},
          {x,0}}.
    return.


{function, init_per_suite, 1, 12}.
  {label,11}.
    {line,[{location,"misc_SUITE.erl",75}]}.
    {func_info,{atom,misc_SUITE},{atom,init_per_suite},1}.
  {label,12}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,misc_SUITE},{x,0}}.
    {line,[{location,"misc_SUITE.erl",76}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {test,is_atom,{f,13},[{y,0}]}.
    {move,{integer,42},{x,1}}.
    {move,{literal,"no_real_nif"},{x,0}}.
    {line,[{location,"misc_SUITE.erl",80}]}.
    {call_ext,2,{extfunc,erlang,load_nif,2}}.
  {label,13}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 15}.
  {label,14}.
    {line,[{location,"misc_SUITE.erl",86}]}.
    {func_info,{atom,misc_SUITE},{atom,end_per_suite},1}.
  {label,15}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 17}.
  {label,16}.
    {line,[{location,"misc_SUITE.erl",89}]}.
    {func_info,{atom,misc_SUITE},{atom,init_per_group},2}.
  {label,17}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 19}.
  {label,18}.
    {line,[{location,"misc_SUITE.erl",92}]}.
    {func_info,{atom,misc_SUITE},{atom,end_per_group},2}.
  {label,19}.
    {move,{x,1},{x,0}}.
    return.


{function, slow_group, 0, 21}.
  {label,20}.
    {line,[{location,"misc_SUITE.erl",95}]}.
    {func_info,{atom,misc_SUITE},{atom,slow_group},0}.
  {label,21}.
    {move,{literal,[{group,slow}]},{x,0}}.
    return.


{function, abs, 1, 23}.
  {label,22}.
    {line,[{location,"misc_SUITE.erl",108}]}.
    {func_info,{atom,misc_SUITE},{atom,abs},1}.
  {label,23}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {move,{atom,dummy_abs},{x,0}}.
    return.


{function, binary_part, 3, 25}.
  {label,24}.
    {line,[{location,"misc_SUITE.erl",111}]}.
    {func_info,{atom,misc_SUITE},{atom,binary_part},3}.
  {label,25}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{1,1}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,1}}}]}}.
    {move,{atom,dummy_bp},{x,0}}.
    return.


{function, override_bif, 1, 27}.
  {label,26}.
    {line,[{location,"misc_SUITE.erl",115}]}.
    {func_info,{atom,misc_SUITE},{atom,override_bif},1}.
  {label,27}.
    {test,is_list,{f,26},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"misc_SUITE.erl",116}]}.
    {call,1,{f,23}}. % abs/1
    {'%',{var_info,{x,0},[{type,{t_atom,[dummy_abs]}}]}}.
    {move,{integer,1},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,<<"hello">>},{x,0}}.
    {line,[{location,"misc_SUITE.erl",117}]}.
    {call,3,{f,25}}. % binary_part/3
    {'%',{var_info,{x,0},[{type,{t_atom,[dummy_bp]}}]}}.
    {move,{literal,{1,1}},{x,1}}.
    {move,{literal,<<"hello">>},{x,0}}.
    {line,[{location,"misc_SUITE.erl",118}]}.
    {call_ext,2,{extfunc,test_lib,binary_part,2}}.
    {test,is_eq_exact,{f,30},[{x,0},{atom,dummy}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"misc_SUITE.erl",127}]}.
    {call,1,{f,142}}. % '-override_bif/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[four]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,29},
          [{tr,{x,0},
               {t_union,{t_atom,[four]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {atom,four}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"misc_SUITE.erl",128}]}.
    {call,1,{f,142}}. % '-override_bif/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[four]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,28},
          [{tr,{x,0},
               {t_union,{t_atom,[four]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {integer,5}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,28}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{location,"misc_SUITE.erl",127}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{location,"misc_SUITE.erl",118}]}.
    {badmatch,{x,0}}.


{function, tobias, 1, 32}.
  {label,31}.
    {line,[{location,"misc_SUITE.erl",133}]}.
    {func_info,{atom,misc_SUITE},{atom,tobias},1}.
  {label,32}.
    {test,is_list,{f,31},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"misc_SUITE.erl",134}]}.
    {call,1,{f,35}}. % tobias_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,3}}}]}}.
    {test,is_eq_exact,{f,33},[{tr,{x,0},{t_integer,{1,3}}},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,33}.
    {badmatch,{x,0}}.


{function, tobias_1, 1, 35}.
  {label,34}.
    {line,[{location,"misc_SUITE.erl",137}]}.
    {func_info,{atom,misc_SUITE},{atom,tobias_1},1}.
  {label,35}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{1,3}},nil}}]}}.
    {allocate,1,1}.
    {get_hd,{x,0},{y,0}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"misc_SUITE.erl",140}]}.
    {call,2,{f,37}}. % tobias_2/2
    {'%',{var_info,{x,0},[{type,{t_integer,{2,2}}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, tobias_2, 2, 37}.
  {label,36}.
    {line,[{location,"misc_SUITE.erl",143}]}.
    {func_info,{atom,misc_SUITE},{atom,tobias_2},2}.
  {label,37}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {move,{integer,2},{x,0}}.
    return.


{function, empty_string, 1, 39}.
  {label,38}.
    {line,[{location,"misc_SUITE.erl",154}]}.
    {func_info,{atom,misc_SUITE},{atom,empty_string},1}.
  {label,39}.
    {test,is_list,{f,38},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{r,[]}},{x,0}}.
    {line,[{location,"misc_SUITE.erl",155}]}.
    {call,1,{f,42}}. % empty_string_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[r]},
                       2 => {t_cons,{t_integer,{120,120}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,40},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[r]},
                          2 => {t_cons,{t_integer,{120,120}},nil}}}},
           {literal,{r,"x"}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,40}.
    {badmatch,{x,0}}.


{function, empty_string_1, 1, 42}.
  {label,41}.
    {line,[{location,"misc_SUITE.erl",158}]}.
    {func_info,{atom,misc_SUITE},{atom,empty_string_1},1}.
  {label,42}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{1 => {t_atom,[r]},2 => nil}}}]}}.
    {move,{literal,{r,"x"}},{x,0}}.
    return.


{function, md5, 1, 44}.
  {label,43}.
    {line,[{location,"misc_SUITE.erl",163}]}.
    {func_info,{atom,misc_SUITE},{atom,md5},1}.
  {label,44}.
    {test,is_list,{f,43},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,misc_SUITE},{x,0}}.
    {line,[{location,"misc_SUITE.erl",164}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {call_ext,1,{extfunc,filename,dirname,1}}.
    {move,{literal,"*.beam"},{x,1}}.
    {line,[{location,"misc_SUITE.erl",165}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {call_ext,1,{extfunc,filelib,wildcard,1}}.
    {line,[{location,"misc_SUITE.erl",166}]}.
    {gc_bif,length,{f,0},1,[{x,0}],{x,1}}.
    {test_heap,2,2}.
    {put_list,{x,1},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"Found ~w beam files"},{x,0}}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,46},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_tuple,2,true,#{2 => {t_bs_matchable,1}}}}]}}.
    {move,{y,0},{x,1}}.
    {line,[{location,"misc_SUITE.erl",167}]}.
    {call_ext_last,2,{extfunc,lists,foreach,2},1}.


{function, md5_1, 1, 46}.
  {label,45}.
    {line,[{location,"misc_SUITE.erl",169}]}.
    {func_info,{atom,misc_SUITE},{atom,md5_1},1}.
  {label,46}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"misc_SUITE.erl",170}]}.
    {call_ext,1,{extfunc,beam_lib,version,1}}.
    {test,is_tagged_tuple,{f,49},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,49},[{x,1}]}.
    {test,test_arity,{f,49},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{y,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,49},[{x,1}]}.
    {get_list,{x,1},{y,0},{x,1}}.
    {test,is_nil,{f,49},[{x,1}]}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{location,"misc_SUITE.erl",171}]}.
    {call_ext,1,{extfunc,file,read_file,1}}.
    {test,is_tagged_tuple,{f,48},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"misc_SUITE.erl",172}]}.
    {call_ext,1,{extfunc,code,module_md5,1}}.
    {test,bs_start_match3,{f,47},1,[{x,0}],{x,1}}.
    {bs_match,{f,47},
              {x,1},
              {commands,[{ensure_exactly,128},
                         {integer,2,{literal,[]},128,1,{x,2}}]}}.
    {test,is_eq_exact,{f,47},[{tr,{x,2},{t_integer,{0,'+inf'}}},{y,0}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,1},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,47}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,1},{x,0}]}}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{location,"misc_SUITE.erl",171}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{location,"misc_SUITE.erl",170}]}.
    {badmatch,{x,0}}.


{function, silly_coverage, 1, 51}.
  {label,50}.
    {line,[{location,"misc_SUITE.erl",176}]}.
    {func_info,{atom,misc_SUITE},{atom,silly_coverage},1}.
  {label,51}.
    {test,is_list,{f,50},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,140},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",180}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,138},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",186}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,136},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",187}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,134},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",188}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,132},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",189}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,130},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",199}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,128},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",200}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,126},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",201}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,124},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",202}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,122},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",203}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,120},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",204}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,118},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",211}]}.
    {call,1,{f,59}}. % expect_error/1
    {move,{integer,1},{x,0}}.
    {line,[{location,"misc_SUITE.erl",214}]}.
    {call,1,{f,54}}. % cover_beam_ssa_bc_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"misc_SUITE.erl",217}]}.
    {call,0,{f,57}}. % bad_ssa_lint_input/0
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,6,true,
         #{1 => {t_atom,[b_module]},
           2 => {t_map,none,none},
           3 => {t_atom,[t]},
           4 =>
            {t_cons,
             {t_union,none,none,none,
              [{{2,{t_atom,[a]}},
                {t_tuple,2,true,#{1 => {t_atom,[a]},2 => {t_integer,{1,1}}}}},
               {{2,{t_atom,[b]}},
                {t_tuple,2,true,#{1 => {t_atom,[b]},2 => {t_integer,{1,1}}}}},
               {{2,{t_atom,[c]}},
                {t_tuple,2,true,#{1 => {t_atom,[c]},2 => {t_integer,{1,1}}}}},
               {{2,{t_atom,[module_info]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[module_info]},2 => {t_integer,{0,1}}}}}],
              none},
             nil},
           5 => nil,
           6 =>
            {t_cons,
             {t_tuple,5,true,
              #{1 => {t_atom,[b_function]},
                2 =>
                 {t_map,{t_atom,[func_info,location]},{t_tuple,0,false,#{}}},
                3 => {t_list,{t_tuple,0,false,#{}},nil},
                4 => {t_map,{t_integer,{0,0}},{t_tuple,0,false,#{}}},
                5 => {t_integer,{3,4}}}},
             nil}}}}]}}.
    {move,nil,{x,1}}.
    {call_ext,2,{extfunc,beam_ssa_lint,module,2}}.
    {test,is_tagged_tuple,{f,52},[{x,0},2,{atom,error}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,52},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,52},[{x,2}]}.
    {test,test_arity,{f,52},[{x,2},2]}.
    {test,is_nil,{f,52},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,0}}.
    {line,[{location,"misc_SUITE.erl",219}]}.
    {call,1,{f,113}}. % '-silly_coverage/1-lc$^12/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,
        {literal,
            {b_function,
                #{func_info => {mod,foo,0},
                  map_anno => #{k => v},
                  other_anno => value},
                [],
                #{0 => {b_blk,#{},[],{b_ret,#{},{b_literal,42}}}},
                0}},
        {x,0}}.
    {line,[{location,"misc_SUITE.erl",225}]}.
    {call_ext,1,{extfunc,beam_ssa_pp,format_function,1}}.
    {call_ext,1,{extfunc,io,put_chars,1}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,111},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",233}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,109},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",241}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,107},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",245}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,105},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",254}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,103},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",258}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,101},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",265}]}.
    {call,1,{f,59}}. % expect_error/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,99},0,0,{x,0},{list,[]}}.
    {line,[{location,"misc_SUITE.erl",273}]}.
    {call,1,{f,59}}. % expect_error/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,52}.
    {line,[{location,"misc_SUITE.erl",217}]}.
    {badmatch,{x,0}}.


{function, cover_beam_ssa_bc_size, 1, 54}.
  {label,53}.
    {line,[{location,"misc_SUITE.erl",277}]}.
    {func_info,{atom,misc_SUITE},{atom,cover_beam_ssa_bc_size},1}.
  {label,54}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,55},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,20}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,55}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,[{1,opt_st}]},{x,2}}.
    {move,{literal,#{}},{x,1}}.
    {line,[{location,"misc_SUITE.erl",282}]}.
    {call_ext,3,{extfunc,erlang,make_tuple,3}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,97},0,0,{x,0},{list,[{x,0}]}}.
    {line,[{location,"misc_SUITE.erl",283}]}.
    {call,1,{f,59}}. % expect_error/1
    {line,[{location,"misc_SUITE.erl",284}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,0},{t_integer,{1,'+inf'}}},{integer,1}],{x,0}}.
    {call_last,1,{f,54},1}. % cover_beam_ssa_bc_size/1


{function, bad_ssa_lint_input, 0, 57}.
  {label,56}.
    {line,[{location,"misc_SUITE.erl",286}]}.
    {func_info,{atom,misc_SUITE},{atom,bad_ssa_lint_input},0}.
  {label,57}.
    {move,
     {literal,
      {b_module,#{},t,
       [{a,1},{b,1},{c,1},{module_info,0},{module_info,1}],
       [],
       [{b_function,
         #{func_info => {t,a,1},location => {"t.erl",4}},
         [{b_var,0}],
         #{0 => {b_blk,#{},[],{b_ret,#{},{b_var,'@undefined_var'}}}},
         3},
        {b_function,
         #{func_info => {t,b,1},location => {"t.erl",5}},
         [{b_var,0}],
         #{0 =>
            {b_blk,#{},
             [{b_set,#{},{b_var,'@first_var'},first_op,[]},
              {b_set,#{},{b_var,'@second_var'},second_op,[]},
              {b_set,#{},{b_var,'@ret'},succeeded,[{b_var,'@first_var'}]}],
             {b_ret,#{},{b_var,'@ret'}}}},
         3},
        {b_function,
         #{func_info => {t,c,1},location => {"t.erl",6}},
         [{b_var,0}],
         #{0 =>
            {b_blk,#{},
             [{b_set,#{},{b_var,'@first_var'},first_op,[]},
              {b_set,#{},{b_var,'@ret'},succeeded,[{b_var,'@first_var'}]},
              {b_set,#{},{b_var,'@second_var'},second_op,[]}],
             {b_ret,#{},{b_var,'@ret'}}}},
         3},
        {b_function,
         #{func_info => {t,module_info,0}},
         [],
         #{0 =>
            {b_blk,#{},
             [{b_set,#{},
               {b_var,100},
               call,
               [{b_remote,{b_literal,erlang},{b_literal,get_module_info},1},
                {b_var,'@unknown_variable'}]}],
             {b_ret,#{},{b_var,100}}}},
         4}]}},
     {x,0}}.
    return.


{function, expect_error, 1, 59}.
  {label,58}.
    {line,[{location,"misc_SUITE.erl",332}]}.
    {func_info,{atom,misc_SUITE},{atom,expect_error},1}.
  {label,59}.
    {'%',{var_info,{x,0},[{type,{t_fun,0,any,any}}]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'try',{y,2},{f,60}}.
    {line,[{location,"misc_SUITE.erl",333}]}.
    {call_fun2,{atom,safe},0,{tr,{x,0},{t_fun,0,any,any}}}.
    {try_end,{y,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{literal,"~p"},{x,0}}.
    {line,[{location,"misc_SUITE.erl",335}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,call_was_supposed_to_fail},{x,0}}.
    {line,[{location,"misc_SUITE.erl",336}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},3}.
  {label,60}.
    {try_case,{y,2}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {move,{literal,"~p:~p\n~p\n"},{x,0}}.
    {line,[{scope,[3]},{location,"misc_SUITE.erl",339}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test,is_eq_exact,
          {f,61},
          [{tr,{y,1},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,61},[{y,0},{atom,undef}]}.
    {move,{atom,not_supposed_to_fail_with_undef},{x,0}}.
    {line,[{scope,[0]},{location,"misc_SUITE.erl",342}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},3}.
  {label,61}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.


{function, confused_literals, 1, 63}.
  {label,62}.
    {line,[{location,"misc_SUITE.erl",348}]}.
    {func_info,{atom,misc_SUITE},{atom,confused_literals},1}.
  {label,63}.
    {test,is_list,{f,62},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,int},{x,0}}.
    {line,[{location,"misc_SUITE.erl",349}]}.
    {call,1,{f,65}}. % confused_literals_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,0}},
                                     2 => {t_atom,[infinity]}}}}]}}.
    {move,{atom,float},{x,0}}.
    {line,[{location,"misc_SUITE.erl",350}]}.
    {call,1,{f,65}}. % confused_literals_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_float,{0.0,0.0}},
                                     2 => {t_atom,[infinity]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, confused_literals_1, 1, 65}.
  {label,64}.
    {line,[{location,"misc_SUITE.erl",353}]}.
    {func_info,{atom,misc_SUITE},{atom,confused_literals_1},1}.
  {label,65}.
    {'%',{var_info,{x,0},[{type,{t_atom,[float,int]}}]}}.
    {test,is_eq_exact,{f,66},[{x,0},{atom,int}]}.
    {move,{literal,{0,infinity}},{x,0}}.
    return.
  {label,66}.
    {move,{literal,{0.0,infinity}},{x,0}}.
    return.


{function, integer_encoding, 0, 68}.
  {label,67}.
    {line,[{location,"misc_SUITE.erl",356}]}.
    {func_info,{atom,misc_SUITE},{atom,integer_encoding},0}.
  {label,68}.
    {move,{literal,[{timetrap,{minutes,4}}]},{x,0}}.
    return.


{function, integer_encoding, 1, 70}.
  {label,69}.
    {line,[{location,"misc_SUITE.erl",359}]}.
    {func_info,{atom,misc_SUITE},{atom,integer_encoding},1}.
  {label,70}.
    {test,is_list,{f,69},[{x,0}]}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"misc_SUITE.erl",360}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{y,3}}.
    {move,{literal,"misc_SUITE_integer_encoding.erl"},{x,1}}.
    {line,[{location,"misc_SUITE.erl",361}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {swap,{y,3},{x,0}}.
    {move,{literal,"integer_encoding.data"},{x,1}}.
    {line,[{location,"misc_SUITE.erl",362}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,2}}.
    {move,{y,3},{x,0}}.
    {move,{literal,[write]},{x,1}}.
    {line,[{location,"misc_SUITE.erl",366}]}.
    {call_ext,2,{extfunc,file,open,2}}.
    {move,{x,0},{y,1}}.
    {test,is_tagged_tuple,{f,77},[{x,0},2,{atom,ok}]}.
    {move,{literal,[write]},{x,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"misc_SUITE.erl",367}]}.
    {call_ext,2,{extfunc,file,open,2}}.
    {move,{x,0},{y,0}}.
    {test,is_tagged_tuple,{f,76},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{y,1},1,{y,1}}.
    {move,{literal,"-module(~s).\n"},{x,1}}.
    {move,{literal,[misc_SUITE_integer_encoding]},{x,2}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"misc_SUITE.erl",368}]}.
    {call_ext,3,{extfunc,io,format,3}}.
    {move,{literal,"-export([t/1]).\n"},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"misc_SUITE.erl",369}]}.
    {call_ext,2,{extfunc,io,put_chars,2}}.
    {move,{literal,"t(Last) ->[\n"},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"misc_SUITE.erl",370}]}.
    {call_ext,2,{extfunc,io,put_chars,2}}.
    {get_tuple_element,{y,0},1,{y,0}}.
    {move,{literal,"[\n"},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"misc_SUITE.erl",371}]}.
    {call_ext,2,{extfunc,io,put_chars,2}}.
    {move,{y,1},{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{x,3}}.
    {move,{integer,137},{x,0}}.
    {line,[{location,"misc_SUITE.erl",373}]}.
    {call,4,{f,79}}. % do_integer_encoding/4
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,130},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"misc_SUITE.erl",382}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {call,3,{f,93}}. % '-integer_encoding/1-lc$^0/1-0-'/3
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,"Last].\n\n"},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"misc_SUITE.erl",383}]}.
    {call_ext,2,{extfunc,io,put_chars,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"misc_SUITE.erl",384}]}.
    {call_ext,1,{extfunc,file,close,1}}.
    {test,is_eq_exact,{f,75},[{x,0},{atom,ok}]}.
    {move,{literal,"0].\n\n"},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"misc_SUITE.erl",385}]}.
    {call_ext,2,{extfunc,io,put_chars,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,3}.
    {line,[{location,"misc_SUITE.erl",386}]}.
    {call_ext,1,{extfunc,file,close,1}}.
    {test,is_eq_exact,{f,74},[{x,0},{atom,ok}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"misc_SUITE.erl",389}]}.
    {call_ext,1,{extfunc,filename,rootname,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,[binary,report]},{x,1}}.
    {line,[{location,"misc_SUITE.erl",390}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,73},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,73},[{x,1},{atom,misc_SUITE_integer_encoding}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,misc_SUITE_integer_encoding},{x,0}}.
    {line,[{location,"misc_SUITE.erl",391}]}.
    {call_ext,3,{extfunc,code,load_binary,3}}.
    {test,is_tagged_tuple,{f,72},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,72},[{x,1},{atom,misc_SUITE_integer_encoding}]}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"misc_SUITE.erl",394}]}.
    {call_ext,1,{extfunc,misc_SUITE_integer_encoding,t,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"misc_SUITE.erl",395}]}.
    {call_ext,1,{extfunc,file,consult,1}}.
    {test,is_tagged_tuple,{f,71},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,71},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,71},[{x,1}]}.
    {test,is_eq_exact,{f,71},[{x,2},{y,0}]}.
    {move,{y,2},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {line,[{location,"misc_SUITE.erl",398}]}.
    {call_ext,1,{extfunc,file,delete,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"misc_SUITE.erl",399}]}.
    {call_ext,1,{extfunc,file,delete,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,71}.
    {line,[{location,"misc_SUITE.erl",395}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"misc_SUITE.erl",391}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{location,"misc_SUITE.erl",390}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"misc_SUITE.erl",386}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{location,"misc_SUITE.erl",384}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{location,"misc_SUITE.erl",367}]}.
    {badmatch,{x,0}}.
  {label,77}.
    {line,[{location,"misc_SUITE.erl",366}]}.
    {badmatch,{x,0}}.


{function, do_integer_encoding, 4, 79}.
  {label,78}.
    {line,[{location,"misc_SUITE.erl",402}]}.
    {func_info,{atom,misc_SUITE},{atom,do_integer_encoding},4}.
  {label,79}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',137}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,
          {f,80},
          [{tr,{x,0},{t_integer,{'-inf',137}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,80}.
    {line,[{location,"misc_SUITE.erl",404}]}.
    {gc_bif,'bsl',{f,0},4,[{tr,{x,1},{t_integer,any}},{integer,5}],{x,1}}.
    {allocate,4,4}.
    {move,{x,1},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{integer,32},{x,0}}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {gc_bif,'bor',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,any}},{tr,{x,0},{t_number,any}}],
            {y,0}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"misc_SUITE.erl",405}]}.
    {call,3,{f,82}}. % do_integer_encoding/3
    {move,{integer,32},{x,0}}.
    {line,[{location,"misc_SUITE.erl",406}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {gc_bif,'-',{f,0},1,[{x,0},{integer,1}],{x,0}}.
    {gc_bif,'bxor',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,any}},{tr,{x,0},{t_number,any}}],
            {x,0}}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,any}}],{x,0}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {line,[{location,"misc_SUITE.erl",407}]}.
    {call,3,{f,82}}. % do_integer_encoding/3
    {line,[{location,"misc_SUITE.erl",408}]}.
    {gc_bif,'-',
            {f,0},
            0,
            [{tr,{y,3},{t_integer,{'-inf',137}}},{integer,1}],
            {x,0}}.
    {move,{y,0},{x,1}}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {call_last,4,{f,79},4}. % do_integer_encoding/4


{function, do_integer_encoding, 3, 82}.
  {label,81}.
    {line,[{location,"misc_SUITE.erl",410}]}.
    {func_info,{atom,misc_SUITE},{atom,do_integer_encoding},3}.
  {label,82}.
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"misc_SUITE.erl",411}]}.
    {call_ext,1,{extfunc,erlang,integer_to_list,1}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,[",\n"]},{x,1}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"misc_SUITE.erl",412}]}.
    {call_ext,2,{extfunc,io,put_chars,2}}.
    {test_heap,2,0}.
    {put_list,{y,1},{literal,[",\n"]},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"misc_SUITE.erl",413}]}.
    {call_ext_last,2,{extfunc,io,put_chars,2},2}.


{function, behaviour_info, 1, 84}.
  {label,83}.
    {line,[]}.
    {func_info,{atom,misc_SUITE},{atom,behaviour_info},1}.
  {label,84}.
    {select_val,{x,0},
                {f,87},
                {list,[{atom,callbacks},
                       {f,86},
                       {atom,optional_callbacks},
                       {f,85}]}}.
  {label,85}.
    {move,{literal,[{do_something_strange,1}]},{x,0}}.
    return.
  {label,86}.
    {move,{literal,[{must_define_this_one,0},{do_something_strange,1}]},{x,0}}.
    return.
  {label,87}.
    {call_only,1,{f,145}}. % '-inlined-behaviour_info/1-'/1


{function, module_info, 0, 89}.
  {label,88}.
    {line,[]}.
    {func_info,{atom,misc_SUITE},{atom,module_info},0}.
  {label,89}.
    {move,{atom,misc_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 91}.
  {label,90}.
    {line,[]}.
    {func_info,{atom,misc_SUITE},{atom,module_info},1}.
  {label,91}.
    {move,{x,0},{x,1}}.
    {move,{atom,misc_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-integer_encoding/1-lc$^0/1-0-', 3, 93}.
  {label,92}.
    {line,[{location,"misc_SUITE.erl",382}]}.
    {func_info,{atom,misc_SUITE},{atom,'-integer_encoding/1-lc$^0/1-0-'},3}.
  {label,93}.
    {test,is_nonempty_list,{f,94},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,0}}.
    {line,[{location,"misc_SUITE.erl",375}]}.
    {gc_bif,'bsl',{f,0},4,[{integer,1},{x,3}],{x,3}}.
    {line,[{location,"misc_SUITE.erl",376}]}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,any}}],{x,4}}.
    {gc_bif,'-',{f,0},5,[{tr,{x,4},{t_integer,any}},{integer,1}],{x,4}}.
    {allocate,4,5}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,4},{x,0}}.
    {call,3,{f,82}}. % do_integer_encoding/3
    {line,[{location,"misc_SUITE.erl",377}]}.
    {gc_bif,'-',{f,0},0,[{tr,{y,0},{t_integer,any}}],{x,0}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {call,3,{f,82}}. % do_integer_encoding/3
    {line,[{location,"misc_SUITE.erl",378}]}.
    {gc_bif,'-',{f,0},0,[{tr,{y,0},{t_integer,any}}],{x,0}}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_integer,any}},{integer,1}],{x,0}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {call,3,{f,82}}. % do_integer_encoding/3
    {line,[{location,"misc_SUITE.erl",379}]}.
    {gc_bif,'-',{f,0},0,[{tr,{y,0},{t_integer,any}},{integer,1}],{x,0}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {call,3,{f,82}}. % do_integer_encoding/3
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"misc_SUITE.erl",380}]}.
    {call,3,{f,82}}. % do_integer_encoding/3
    {line,[{location,"misc_SUITE.erl",381}]}.
    {gc_bif,'+',{f,0},0,[{tr,{y,0},{t_integer,any}},{integer,1}],{x,0}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {trim,1,3}.
    {call,3,{f,82}}. % do_integer_encoding/3
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,93},3}. % '-integer_encoding/1-lc$^0/1-0-'/3
  {label,94}.
    {test,is_nil,{f,95},[{x,0}]}.
    return.
  {label,95}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"misc_SUITE.erl",382}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-cover_beam_ssa_bc_size/1-fun-0-', 1, 97}.
  {label,96}.
    {line,[{location,"misc_SUITE.erl",283}]}.
    {func_info,{atom,misc_SUITE},{atom,'-cover_beam_ssa_bc_size/1-fun-0-'},1}.
  {label,97}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{literal,{b_local,{b_literal,name},1}},{x,0}]}}.
    {call_ext_only,1,{extfunc,beam_ssa_bc_size,opt,1}}.


{function, '-silly_coverage/1-fun-19-', 0, 99}.
  {label,98}.
    {line,[{location,"misc_SUITE.erl",273}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-19-'},0}.
  {label,99}.
    {move,{atom,strong},{x,1}}.
    {move,
        {literal,
            {misc_SUITE,
                [{foo,0}],
                [],
                [{function,foo,0,2,
                     [{label,1},
                      {func_info,{atom,misc_SUITE},{atom,foo},0},
                      {label,2}|
                      non_proper_list]}],
                99}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_validator,validate,2}}.


{function, '-silly_coverage/1-fun-18-', 0, 101}.
  {label,100}.
    {line,[{location,"misc_SUITE.erl",265}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-18-'},0}.
  {label,101}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {misc_SUITE,
                [{foo,0}],
                [],
                [{function,foo,0,2,
                     [{label,1},
                      {func_info,{atom,misc_SUITE},{atom,foo},0},
                      {label,2}|
                      non_proper_list]}],
                99}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_z,module,2}}.


{function, '-silly_coverage/1-fun-17-', 0, 103}.
  {label,102}.
    {line,[{location,"misc_SUITE.erl",258}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-17-'},0}.
  {label,103}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {misc_SUITE,
                [{foo,0}],
                [],
                [{function,foo,0,2,
                     [{label,1},
                      {func_info,{atom,misc_SUITE},{atom,foo},0},
                      {label,2}|
                      non_proper_list]}],
                99}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_trim,module,2}}.


{function, '-silly_coverage/1-fun-16-', 0, 105}.
  {label,104}.
    {line,[{location,"misc_SUITE.erl",254}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-16-'},0}.
  {label,105}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {misc_SUITE,
                [{foo,0}],
                [],
                [{function,foo,0,2,
                     [{label,1},
                      {func_info,{atom,misc_SUITE},{atom,foo},0},
                      {label,2},
                      {jump,{f,42}}]}],
                99}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_clean,module,2}}.


{function, '-silly_coverage/1-fun-15-', 0, 107}.
  {label,106}.
    {line,[{location,"misc_SUITE.erl",245}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-15-'},0}.
  {label,107}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {misc_SUITE,
                [{foo,0}],
                [],
                [{function,foo,0,2,
                     [{label,1},
                      {func_info,{atom,misc_SUITE},{atom,foo},0},
                      {label,2}|
                      non_proper_list]}],
                99}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_jump,module,2}}.


{function, '-silly_coverage/1-fun-14-', 0, 109}.
  {label,108}.
    {line,[{location,"misc_SUITE.erl",241}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-14-'},0}.
  {label,109}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {misc_SUITE,
                [{foo,0}],
                [],
                [{function,foo,0,2,
                     [{label,1},
                      {func_info,{atom,misc_SUITE},{atom,foo},0},
                      {label,2}|
                      non_proper_list]}],
                99}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_block,module,2}}.


{function, '-silly_coverage/1-fun-13-', 0, 111}.
  {label,110}.
    {line,[{location,"misc_SUITE.erl",233}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-13-'},0}.
  {label,111}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {misc_SUITE,
                [{foo,0}],
                [],
                [{function,foo,0,2,
                     [{label,1},
                      {func_info,{atom,misc_SUITE},{atom,foo},0},
                      {label,2}|
                      non_proper_list]}],
                99}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_a,module,2}}.


{function, '-silly_coverage/1-lc$^12/1-0-', 1, 113}.
  {label,112}.
    {line,[{location,"misc_SUITE.erl",219}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-lc$^12/1-0-'},1}.
  {label,113}.
    {test,is_nonempty_list,{f,115},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,114},[{x,1}]}.
    {test,test_arity,{f,114},[{x,1},2]}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{atom,format_error},{x,2}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"misc_SUITE.erl",218}]}.
    {apply,1}.
    {call_ext,1,{extfunc,io,put_chars,1}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,113},1}. % '-silly_coverage/1-lc$^12/1-0-'/1
  {label,114}.
    {call_only,1,{f,113}}. % '-silly_coverage/1-lc$^12/1-0-'/1
  {label,115}.
    {test,is_nil,{f,116},[{x,0}]}.
    return.
  {label,116}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"misc_SUITE.erl",219}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-silly_coverage/1-fun-11-', 0, 118}.
  {label,117}.
    {line,[{location,"misc_SUITE.erl",211}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-11-'},0}.
  {label,118}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {b_module,#{},a,[],[],
                [{b_function,
                     #{func_info => {mod,foo,0}},
                     [],
                     #{0 => {b_blk,#{},[bad_code],{b_ret,#{},arg}}},
                     0}]}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_ssa_opt,module,2}}.


{function, '-silly_coverage/1-fun-10-', 0, 120}.
  {label,119}.
    {line,[{location,"misc_SUITE.erl",204}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-10-'},0}.
  {label,120}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {b_module,#{},a,b,c,
                [{b_function,#{func_info => {mod,foo,0}},args,bad_blocks,0}]}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_ssa_codegen,module,2}}.


{function, '-silly_coverage/1-fun-9-', 0, 122}.
  {label,121}.
    {line,[{location,"misc_SUITE.erl",203}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-9-'},0}.
  {label,122}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {b_module,#{},a,b,c,
                [{b_function,#{func_info => {mod,foo,0}},args,bad_blocks,0}]}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_ssa_pre_codegen,module,2}}.


{function, '-silly_coverage/1-fun-8-', 0, 124}.
  {label,123}.
    {line,[{location,"misc_SUITE.erl",202}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-8-'},0}.
  {label,124}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {b_module,#{},a,b,c,
                [{b_function,#{func_info => {mod,foo,0}},args,bad_blocks,0}]}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_ssa_share,module,2}}.


{function, '-silly_coverage/1-fun-7-', 0, 126}.
  {label,125}.
    {line,[{location,"misc_SUITE.erl",201}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-7-'},0}.
  {label,126}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {b_module,#{},a,b,c,
                [{b_function,#{func_info => {mod,foo,0}},args,bad_blocks,0}]}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_ssa_recv,module,2}}.


{function, '-silly_coverage/1-fun-6-', 0, 128}.
  {label,127}.
    {line,[{location,"misc_SUITE.erl",200}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-6-'},0}.
  {label,128}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {b_module,#{},a,b,c,
                [{b_function,#{func_info => {mod,foo,0}},args,bad_blocks,0}]}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_ssa_bool,module,2}}.


{function, '-silly_coverage/1-fun-5-', 0, 130}.
  {label,129}.
    {line,[{location,"misc_SUITE.erl",199}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-5-'},0}.
  {label,130}.
    {move,nil,{x,1}}.
    {move,
        {literal,
            {b_module,#{},a,b,c,
                [{b_function,#{func_info => {mod,foo,0}},args,bad_blocks,0}]}},
        {x,0}}.
    {call_ext_only,2,{extfunc,beam_ssa_lint,module,2}}.


{function, '-silly_coverage/1-fun-4-', 0, 132}.
  {label,131}.
    {line,[{location,"misc_SUITE.erl",189}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-4-'},0}.
  {label,132}.
    {move,nil,{x,1}}.
    {move,{literal,{c_module,[],
                             {c_literal,[],name},
                             [],[],
                             [{{c_var,[],{foo,2}},seriously_bad_body}]}},
          {x,0}}.
    {call_ext_only,2,{extfunc,beam_core_to_ssa,module,2}}.


{function, '-silly_coverage/1-fun-3-', 0, 134}.
  {label,133}.
    {line,[{location,"misc_SUITE.erl",188}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-3-'},0}.
  {label,134}.
    {move,nil,{x,1}}.
    {move,{literal,{c_module,[],
                             {c_literal,[],name},
                             [],[],
                             [{{c_var,[],{foo,2}},seriously_bad_body}]}},
          {x,0}}.
    {call_ext_only,2,{extfunc,sys_core_bsm,module,2}}.


{function, '-silly_coverage/1-fun-2-', 0, 136}.
  {label,135}.
    {line,[{location,"misc_SUITE.erl",187}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-2-'},0}.
  {label,136}.
    {move,nil,{x,1}}.
    {move,{literal,{c_module,[],
                             {c_literal,[],name},
                             [],[],
                             [{{c_var,[],{foo,2}},seriously_bad_body}]}},
          {x,0}}.
    {call_ext_only,2,{extfunc,sys_core_alias,module,2}}.


{function, '-silly_coverage/1-fun-1-', 0, 138}.
  {label,137}.
    {line,[{location,"misc_SUITE.erl",186}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-1-'},0}.
  {label,138}.
    {move,nil,{x,1}}.
    {move,{literal,{c_module,[],
                             {c_literal,[],name},
                             [],[],
                             [{{c_var,[],{foo,2}},seriously_bad_body}]}},
          {x,0}}.
    {call_ext_only,2,{extfunc,sys_core_fold,module,2}}.


{function, '-silly_coverage/1-fun-0-', 0, 140}.
  {label,139}.
    {line,[{location,"misc_SUITE.erl",180}]}.
    {func_info,{atom,misc_SUITE},{atom,'-silly_coverage/1-fun-0-'},0}.
  {label,140}.
    {move,nil,{x,1}}.
    {move,{literal,[{attribute,0,module,bad_module},
                    {function,0,foo,2,[bad_clauses]}]},
          {x,0}}.
    {call_ext_only,2,{extfunc,v3_core,module,2}}.


{function, '-override_bif/1-fun-0-', 1, 142}.
  {label,141}.
    {line,[{location,"misc_SUITE.erl",122}]}.
    {func_info,{atom,misc_SUITE},{atom,'-override_bif/1-fun-0-'},1}.
  {label,142}.
    {gc_bif,byte_size,{f,143},1,[{x,0}],{x,1}}.
    {test,is_eq_exact,
          {f,143},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,4}]}.
    {move,{atom,four},{x,0}}.
    return.
  {label,143}.
    {line,[{location,"misc_SUITE.erl",125}]}.
    {gc_bif,byte_size,{f,0},1,[{x,0}],{x,0}}.
    return.


{function, '-inlined-behaviour_info/1-', 1, 145}.
  {label,144}.
    {line,[]}.
    {func_info,{atom,misc_SUITE},{atom,'-inlined-behaviour_info/1-'},1}.
  {label,145}.
    {jump,{f,144}}.
