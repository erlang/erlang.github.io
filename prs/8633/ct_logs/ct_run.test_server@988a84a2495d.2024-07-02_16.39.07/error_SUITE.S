{module, error_SUITE}.  %% version = 0

{exports, [{all,0},
           {bad_decls,1},
           {bad_utf8,1},
           {bif_clashes,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {head_mismatch_line,1},
           {init_per_group,2},
           {init_per_suite,1},
           {maps_warnings,1},
           {module_info,0},
           {module_info,1},
           {parse_transform,2},
           {suite,0},
           {transforms,1},
           {warnings_as_errors,1}]}.

{attributes, []}.

{labels, 131}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"error_SUITE.erl",31}]}.
    {func_info,{atom,error_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"error_SUITE.erl",33}]}.
    {func_info,{atom,error_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"error_SUITE.erl",36}]}.
    {func_info,{atom,error_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"error_SUITE.erl",37}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[head_mismatch_line,warnings_as_errors,
                                 bif_clashes,transforms,maps_warnings,
                                 bad_utf8,bad_decls]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"error_SUITE.erl",41}]}.
    {func_info,{atom,error_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,error_SUITE},{x,0}}.
    {line,[{location,"error_SUITE.erl",42}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"error_SUITE.erl",45}]}.
    {func_info,{atom,error_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"error_SUITE.erl",48}]}.
    {func_info,{atom,error_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"error_SUITE.erl",51}]}.
    {func_info,{atom,error_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, bif_clashes, 1, 16}.
  {label,15}.
    {line,[{location,"error_SUITE.erl",55}]}.
    {func_info,{atom,error_SUITE},{atom,bif_clashes},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,
        {literal,
            [{bif_clashes1,
                 <<"\n              -export([t/0]).\n              t() ->\n                 length([a,b,c]).\n\n              length(X) ->\n               erlang:length(X).\n             ">>,
                 [return_warnings],
                 {error,
                     [{{4,18},
                       erl_lint,
                       {call_to_redefined_old_bif,{length,1}}}],
                     []}}]},
        {x,1}}.
    {line,[{location,"error_SUITE.erl",68}]}.
    {call,2,{f,70}}. % run/2
    {test,is_nil,{f,25},[{x,0}]}.
    {move,
        {literal,
            [{bif_clashes2,
                 <<"\n              -export([t/0]).\n              -import(x,[length/1]).\n              t() ->\n                 length([a,b,c]).\n             ">>,
                 [return_warnings],
                 {error,
                     [{{3,16},erl_lint,{redefine_old_bif_import,{length,1}}}],
                     []}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",79}]}.
    {call,2,{f,70}}. % run/2
    {test,is_nil,{f,24},[{x,0}]}.
    {move,{literal,[{bif_clashes3,<<"\n              -export([t/0]).\n              -compile({no_auto_import,[length/1]}).\n              t() ->\n                 length([a,b,c]).\n\n              length(X) ->\n               erlang:length(X).\n             ">>,
                                  [return_warnings],
                                  []}]},
          {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",92}]}.
    {call,2,{f,70}}. % run/2
    {test,is_nil,{f,23},[{x,0}]}.
    {move,{literal,[{bif_clashes4,<<"\n              -export([t/0]).\n              -compile({no_auto_import,[length/1]}).\n              -import(x,[length/1]).\n              t() ->\n                 length([a,b,c]).\n             ">>,
                                  [return_warnings],
                                  []}]},
          {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",103}]}.
    {call,2,{f,70}}. % run/2
    {test,is_nil,{f,22},[{x,0}]}.
    {move,
        {literal,
            [{bif_clashes5,
                 <<"\n              -export([t/0]).\n              t() ->\n                 binary_part(<<1,2,3,4>>,1,2).\n\n              binary_part(X,Y,Z) ->\n               erlang:binary_part(X,Y,Z).\n             ">>,
                 [return_warnings],
                 {warning,
                     [{{4,18},
                       erl_lint,
                       {call_to_redefined_bif,{binary_part,3}}}]}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",116}]}.
    {call,2,{f,70}}. % run/2
    {test,is_nil,{f,21},[{x,0}]}.
    {move,
        {literal,
            [{bif_clashes6,
                 <<"\n              -export([t/0]).\n              -import(x,[binary_part/3]).\n              t() ->\n                  binary_part(<<1,2,3,4>>,1,2).\n             ">>,
                 [return_warnings],
                 {warning,
                     [{{3,16},
                       erl_lint,
                       {redefine_bif_import,{binary_part,3}}}]}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",127}]}.
    {call,2,{f,70}}. % run/2
    {test,is_nil,{f,20},[{x,0}]}.
    {move,
        {literal,
            [{bif_clashes7,
                 <<"\n              -export([t/0]).\n              -compile({no_auto_import,[length/1]}).\n              -import(x,[length/1]).\n              t() ->\n                 length([a,b,c]).\n              length(X) ->\n                 erlang:length(X).\n             ">>,
                 [],
                 {error,[{{7,15},erl_lint,{define_import,{length,1}}}],[]}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",142}]}.
    {call,2,{f,74}}. % run2/2
    {test,is_nil,{f,19},[{x,0}]}.
    {move,
        {literal,
            [{bif_clashes8,
                 <<"\n              -export([t/1]).\n              -compile({no_auto_import,[length/1]}).\n              t(X) when length(X) > 3 ->\n                 length([a,b,c]).\n              length(X) ->\n                 erlang:length(X).\n             ">>,
                 [],
                 {error,
                     [{{4,25},erl_lint,{illegal_guard_local_call,{length,1}}}],
                     []}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",156}]}.
    {call,2,{f,74}}. % run2/2
    {test,is_nil,{f,18},[{x,0}]}.
    {move,
        {literal,
            [{bif_clashes9,
                 <<"\n              -export([t/1]).\n              -compile({no_auto_import,[length/1]}).\n              -import(x,[length/1]).\n              t(X) when length(X) > 3 ->\n                 length([a,b,c]).\n             ">>,
                 [],
                 {error,
                     [{{5,25},erl_lint,{illegal_guard_local_call,{length,1}}}],
                     []}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"error_SUITE.erl",169}]}.
    {call,2,{f,74}}. % run2/2
    {test,is_nil,{f,17},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {badmatch,{x,0}}.
  {label,18}.
    {line,[{location,"error_SUITE.erl",156}]}.
    {badmatch,{x,0}}.
  {label,19}.
    {line,[{location,"error_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,20}.
    {line,[{location,"error_SUITE.erl",127}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{location,"error_SUITE.erl",116}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"error_SUITE.erl",103}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{location,"error_SUITE.erl",92}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{location,"error_SUITE.erl",79}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{location,"error_SUITE.erl",68}]}.
    {badmatch,{x,0}}.


{function, head_mismatch_line, 1, 27}.
  {label,26}.
    {line,[{location,"error_SUITE.erl",177}]}.
    {func_info,{atom,error_SUITE},{atom,head_mismatch_line},1}.
  {label,27}.
    {test,is_list,{f,26},[{x,0}]}.
    {allocate,0,1}.
    {move,{literal,"head_mismatch_line"},{x,1}}.
    {line,[{location,"error_SUITE.erl",178}]}.
    {call,2,{f,31}}. % get_compilation_errors/2
    {test,is_nonempty_list,{f,29},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {test,is_tuple,{f,28},[{x,0}]}.
    {test,test_arity,{f,28},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,28},[{x,1},{literal,{26,1}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {move,{atom,format_error},{x,2}}.
    {line,[{location,"error_SUITE.erl",180}]}.
    {apply,1}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,28}.
    {line,[{location,"error_SUITE.erl",179}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{location,"error_SUITE.erl",178}]}.
    {badmatch,{x,0}}.


{function, get_compilation_errors, 2, 31}.
  {label,30}.
    {line,[{location,"error_SUITE.erl",185}]}.
    {func_info,{atom,error_SUITE},{atom,get_compilation_errors},2}.
  {label,31}.
    {'%',{var_info,{x,0},[{type,{t_list,any,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{95,116}},nil}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"error_SUITE.erl",186}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {line,[{location,"error_SUITE.erl",187}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[return_errors]},{x,1}}.
    {line,[{location,"error_SUITE.erl",188}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,32},[{x,0},3,{atom,error}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,32},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tuple,{f,32},[{x,1}]}.
    {test,test_arity,{f,32},[{x,1},2]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_nil,{f,32},[{x,2}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {deallocate,0}.
    return.
  {label,32}.
    {badmatch,{x,0}}.


{function, warnings_as_errors, 1, 34}.
  {label,33}.
    {line,[{location,"error_SUITE.erl",191}]}.
    {func_info,{atom,error_SUITE},{atom,warnings_as_errors},1}.
  {label,34}.
    {test,is_list,{f,33},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"error_SUITE.erl",192}]}.
    {call,1,{f,81}}. % test_filename/1
    {move,{x,0},{y,1}}.
    {move,{literal,".erl"},{x,1}}.
    {line,[{location,"error_SUITE.erl",193}]}.
    {call_ext,2,{extfunc,filename,rootname,2}}.
    {move,{literal,".beam"},{x,1}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{y,2},{x,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"error_SUITE.erl",194}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,16,1}.
    {put_tuple2,{x,1},{list,[{atom,outdir},{x,0}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{atom,export_all},{x,1},{x,1}}.
    {put_list,{atom,warnings_as_errors},{x,1},{x,1}}.
    {put_tuple2,
        {x,1},
        {list,
            [{atom,warnings_as_errors},
             {literal,
                 <<"\n               t() ->\n                 A = unused,\n                 ok.\n             ">>},
             {x,1},
             {literal,{error,[],[{{3,18},erl_lint,{unused_var,'A'}}]}}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{atom,write_beam},{x,2}}.
    {line,[{location,"error_SUITE.erl",206}]}.
    {call,3,{f,72}}. % run/3
    {test,is_nil,{f,39},[{x,0}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"error_SUITE.erl",207}]}.
    {call_ext,1,{extfunc,filelib,is_regular,1}}.
    {test,is_eq_exact,{f,38},[{x,0},{atom,false}]}.
    {test_heap,16,0}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{y,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,export_all},{x,0},{x,0}}.
    {put_list,{atom,return_warnings},{x,0},{x,0}}.
    {put_tuple2,
        {x,0},
        {list,
            [{atom,warning_unused_var},
             {literal,
                 <<"\n               t() ->\n                 A = unused,\n                 ok.\n             ">>},
             {x,0},
             {literal,{warning,[{{3,18},erl_lint,{unused_var,'A'}}]}}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{atom,write_beam},{x,2}}.
    {move,{y,1},{x,1}}.
    {trim,2,1}.
    {line,[{location,"error_SUITE.erl",219}]}.
    {call,3,{f,72}}. % run/3
    {test,is_nil,{f,37},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",220}]}.
    {call_ext,1,{extfunc,filelib,is_regular,1}}.
    {test,is_eq_exact,{f,36},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"error_SUITE.erl",221}]}.
    {call_ext,1,{extfunc,file,delete,1}}.
    {test,is_eq_exact,{f,35},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,35}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{location,"error_SUITE.erl",220}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{location,"error_SUITE.erl",219}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{location,"error_SUITE.erl",207}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{location,"error_SUITE.erl",206}]}.
    {badmatch,{x,0}}.


{function, transforms, 1, 41}.
  {label,40}.
    {line,[{location,"error_SUITE.erl",225}]}.
    {func_info,{atom,error_SUITE},{atom,transforms},1}.
  {label,41}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,
        {literal,
            [{undef_parse_transform,
                 <<"\n              -compile({parse_transform,non_existing}).\n             ">>,
                 [return],
                 {error,
                     [{none,compile,{undef_parse_transform,non_existing}}],
                     []}}]},
        {x,1}}.
    {line,[{location,"error_SUITE.erl",232}]}.
    {call,2,{f,70}}. % run/2
    {test,is_nil,{f,46},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",239}]}.
    {call,1,{f,81}}. % test_filename/1
    {move,{literal,[{pt_error,error}]},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,3}}.
    {move,{literal,<<"\n              -compile({parse_transform,error_SUITE}).\n             ">>},
          {x,0}}.
    {call,4,{f,83}}. % run_test/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warning]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warning]}}}},
                      {{3,{t_atom,[error]}},
                       {t_tuple,3,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_tuple,{f,45},[{x,0}]}.
    {test,test_arity,{f,45},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,45},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,45},[{x,2},3,{atom,none}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,45},[{x,3},{atom,compile}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,45},[{x,2},3,{atom,parse_transform}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,45},[{x,3},{atom,error_SUITE}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,45},[{x,2},3,{atom,error}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,{f,45},[{x,2},{atom,too_bad}]}.
    {test,is_nil,{f,45},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,45},[{x,1}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",242}]}.
    {call,1,{f,81}}. % test_filename/1
    {move,{literal,[{pt_error,call_undef}]},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,3}}.
    {move,{literal,<<"\n              -compile({parse_transform,error_SUITE}).\n             ">>},
          {x,0}}.
    {call,4,{f,83}}. % run_test/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warning]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warning]}}}},
                      {{3,{t_atom,[error]}},
                       {t_tuple,3,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_tuple,{f,44},[{x,0}]}.
    {test,test_arity,{f,44},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,44},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,44},[{x,2},3,{atom,none}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,44},[{x,3},{atom,compile}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,44},[{x,2},3,{atom,parse_transform}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,44},[{x,3},{atom,error_SUITE}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,44},[{x,2},3,{atom,error}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,{f,44},[{x,2},{atom,undef}]}.
    {test,is_nil,{f,44},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,44},[{x,1}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",245}]}.
    {call,1,{f,81}}. % test_filename/1
    {move,{literal,[{pt_error,exit}]},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,3}}.
    {move,{literal,<<"\n              -compile({parse_transform,error_SUITE}).\n             ">>},
          {x,0}}.
    {call,4,{f,83}}. % run_test/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warning]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warning]}}}},
                      {{3,{t_atom,[error]}},
                       {t_tuple,3,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_tuple,{f,43},[{x,0}]}.
    {test,test_arity,{f,43},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,43},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,43},[{x,2},3,{atom,none}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,43},[{x,3},{atom,compile}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,43},[{x,2},3,{atom,parse_transform}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,43},[{x,3},{atom,error_SUITE}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,43},[{x,2},3,{atom,exit}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,{f,43},[{x,2},{atom,exited}]}.
    {test,is_nil,{f,43},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,43},[{x,1}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"error_SUITE.erl",248}]}.
    {call,1,{f,81}}. % test_filename/1
    {move,{literal,[{pt_error,throw}]},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,3}}.
    {move,{literal,<<"\n              -compile({parse_transform,error_SUITE}).\n             ">>},
          {x,0}}.
    {call,4,{f,83}}. % run_test/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warning]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warning]}}}},
                      {{3,{t_atom,[error]}},
                       {t_tuple,3,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_tuple,{f,42},[{x,0}]}.
    {test,test_arity,{f,42},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,42},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,42},[{x,2},3,{atom,none}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,42},[{x,3},{atom,compile}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,42},[{x,2},3,{atom,parse_transform}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,42},[{x,3},{atom,error_SUITE}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,42},[{x,2},3,{atom,throw}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,42},[{x,3},{atom,thrown}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_nonempty_list,{f,42},[{x,2}]}.
    {test,is_nil,{f,42},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,42},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,42}.
    {line,[{location,"error_SUITE.erl",247}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{location,"error_SUITE.erl",244}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{location,"error_SUITE.erl",241}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{location,"error_SUITE.erl",238}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{location,"error_SUITE.erl",232}]}.
    {badmatch,{x,0}}.


{function, parse_transform, 2, 48}.
  {label,47}.
    {line,[{location,"error_SUITE.erl",252}]}.
    {func_info,{atom,error_SUITE},{atom,parse_transform},2}.
  {label,48}.
    {allocate,0,2}.
    {move,{x,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{atom,pt_error},{x,0}}.
    {line,[{location,"error_SUITE.erl",253}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_tuple,
          {f,54},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,
                        {t_tuple,1,false,#{1 => {t_atom,[pt_error]}}},
                        none}}]}.
    {test,test_arity,{f,54},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {select_val,{x,0},
                {f,53},
                {list,[{atom,call_undef},
                       {f,52},
                       {atom,error},
                       {f,51},
                       {atom,exit},
                       {f,50},
                       {atom,throw},
                       {f,49}]}}.
  {label,49}.
    {move,{atom,thrown},{x,0}}.
    {line,[{location,"error_SUITE.erl",258}]}.
    {call_ext_last,1,{extfunc,erlang,throw,1},0}.
  {label,50}.
    {move,{atom,exited},{x,0}}.
    {line,[{location,"error_SUITE.erl",260}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,51}.
    {move,{atom,too_bad},{x,0}}.
    {line,[{location,"error_SUITE.erl",262}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,52}.
    {line,[{location,"error_SUITE.erl",256}]}.
    {call_ext_last,0,{extfunc,camembert,délicieux,0},0}.
  {label,53}.
    {line,[{location,"error_SUITE.erl",254}]}.
    {case_end,{x,0}}.
  {label,54}.
    {line,[{location,"error_SUITE.erl",253}]}.
    {badmatch,{x,0}}.


{function, maps_warnings, 1, 56}.
  {label,55}.
    {line,[{location,"error_SUITE.erl",265}]}.
    {func_info,{atom,error_SUITE},{atom,maps_warnings},1}.
  {label,56}.
    {test,is_list,{f,55},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{map_ok_use_of_pattern,
                 <<"\n              -export([t/1]).\n              t(K) ->\n                 #{K := 1 = V} = id(#{<<\"hi all\">> => 1}),\n\t\t V.\n              id(I) -> I.\n             ">>,
                 [return],
                 []},
             {map_illegal_use_of_pattern,
                 <<"\n              -export([t/0,t/2]).\n\t      t(K,#{ K := V }) -> V.\n              t() ->\n                 V = 32,\n                 #{<<\"hi\",V,\"all\">> := 1} = id(#{<<\"hi all\">> => 1}).\n              id(I) -> I.\n             ">>,
                 [return],
                 {error,[{{3,15},erl_lint,{unbound_var,'K'}}],[]}}]},
        {x,1}}.
    {line,[{location,"error_SUITE.erl",288}]}.
    {call,2,{f,74}}. % run2/2
    {test,is_nil,{f,57},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,57}.
    {badmatch,{x,0}}.


{function, bad_utf8, 1, 59}.
  {label,58}.
    {line,[{location,"error_SUITE.erl",291}]}.
    {func_info,{atom,error_SUITE},{atom,bad_utf8},1}.
  {label,59}.
    {allocate,0,1}.
    {move,
        {literal,
            [{bad_explicit_utf8,
                 <<"%% coding: utf-8\n              %% Björn\n              t() -> \"ö\".\n             ">>,
                 [],
                 {error,
                     [{{2,15},epp,cannot_parse},
                      {{2,15},file_io_server,invalid_unicode}],
                     []}},
             {bad_implicit_utf8,
                 <<"\n              %% Björn\n              t() -> \"ö\".\n             ">>,
                 [],
                 {error,
                     [{{2,15},epp,cannot_parse},
                      {{2,15},file_io_server,invalid_unicode}],
                     []}}]},
        {x,1}}.
    {line,[{location,"error_SUITE.erl",318}]}.
    {call,2,{f,74}}. % run2/2
    {test,is_nil,{f,60},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,60}.
    {badmatch,{x,0}}.


{function, bad_decls, 1, 62}.
  {label,61}.
    {line,[{location,"error_SUITE.erl",321}]}.
    {func_info,{atom,error_SUITE},{atom,bad_decls},1}.
  {label,62}.
    {allocate,0,1}.
    {move,
        {literal,
            [{bad_decls_1,<<"\n-module({l}).\n             ">>,[],
                 {error,
                     [{{2,9},
                       erl_parse,
                       [98,97,100,32,"module",32,100,101,99,108,97,114,97,116,
                        105,111,110]}],
                     []}},
             {bad_decls_2,<<"\n-module(l, m).\n             ">>,[],
                 {error,[{{2,12},erl_parse,"bad variable list"}],[]}},
             {bad_decls_3,<<"\n-export([a/1], Y).\n             ">>,[],
                 {error,
                     [{{2,16},
                       erl_parse,
                       [98,97,100,32,"export",32,100,101,99,108,97,114,97,116,
                        105,111,110]}],
                     []}},
             {bad_decls_4,<<"\n-import([a/1], Y).\n             ">>,[],
                 {error,
                     [{{2,16},
                       erl_parse,
                       [98,97,100,32,"import",32,100,101,99,108,97,114,97,116,
                        105,111,110]}],
                     []}},
             {bad_decls_5,<<"\n-ugly({A,B}).\n             ">>,[],
                 {error,[{{2,7},erl_parse,"bad attribute"}],[]}},
             {bad_decls_6,<<"\n-ugly(a, b).\n             ">>,[],
                 {error,[{{2,10},erl_parse,"bad attribute"}],[]}},
             {bad_decls_7,<<"\n-export([A/1]).\n             ">>,[],
                 {error,[{{2,10},erl_parse,"bad function name"}],[]}},
             {bad_decls_8,<<"\n-export([a/a]).\n             ">>,[],
                 {error,[{{2,12},erl_parse,"bad function arity"}],[]}},
             {bad_decls_9,<<"\n-export([a/1, {3,4}]).\n             ">>,[],
                 {error,[{{2,15},erl_parse,"bad Name/Arity"}],[]}},
             {bad_decls_10,<<"\n-record(A, {{bad,a}}).\n             ">>,[],
                 {error,
                     [{{2,9},
                       erl_parse,
                       [98,97,100,32,"record",32,100,101,99,108,97,114,97,116,
                        105,111,110]}],
                     []}},
             {bad_decls_11,<<"\n-record(a, [a,b,c,d]).\n             ">>,[],
                 {error,[{{2,12},erl_parse,"bad record declaration"}],[]}},
             {bad_decls_12,<<"\n-record(a).\n             ">>,[],
                 {error,
                     [{{2,9},
                       erl_parse,
                       [98,97,100,32,"record",32,100,101,99,108,97,114,97,116,
                        105,111,110]}],
                     []}}]},
        {x,1}}.
    {line,[{location,"error_SUITE.erl",400}]}.
    {call,2,{f,74}}. % run2/2
    {test,is_nil,{f,65},[{x,0}]}.
    {move,{literal,"1, 2 + 4."},{x,0}}.
    {line,[{location,"error_SUITE.erl",402}]}.
    {call,1,{f,67}}. % parse_string/1
    {test,is_eq_exact,
          {f,64},
          [{x,0},{literal,{error,{{1,4},erl_parse,"bad term"}}}]}.
    {move,{literal,"34 + begin 34 end."},{x,0}}.
    {line,[{location,"error_SUITE.erl",403}]}.
    {call,1,{f,67}}. % parse_string/1
    {test,is_eq_exact,
          {f,63},
          [{x,0},{literal,{error,{{1,1},erl_parse,"bad term"}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,63}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"error_SUITE.erl",402}]}.
    {badmatch,{x,0}}.
  {label,65}.
    {line,[{location,"error_SUITE.erl",400}]}.
    {badmatch,{x,0}}.


{function, parse_string, 1, 67}.
  {label,66}.
    {line,[{location,"error_SUITE.erl",406}]}.
    {func_info,{atom,error_SUITE},{atom,parse_string},1}.
  {label,67}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{32,110}},nil}}]}}.
    {allocate,0,1}.
    {move,{literal,{1,1}},{x,1}}.
    {line,[{location,"error_SUITE.erl",407}]}.
    {call_ext,2,{extfunc,erl_scan,string,2}}.
    {test,is_tagged_tuple,{f,68},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"error_SUITE.erl",408}]}.
    {call_ext_last,1,{extfunc,erl_parse,parse_term,1},0}.
  {label,68}.
    {line,[{location,"error_SUITE.erl",407}]}.
    {badmatch,{x,0}}.


{function, run, 2, 70}.
  {label,69}.
    {line,[{location,"error_SUITE.erl",411}]}.
    {func_info,{atom,error_SUITE},{atom,run},2}.
  {label,70}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_cons,
         {t_union,none,none,none,
          [{{4,{t_atom,[bif_clashes1]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes1]},
               2 => {t_bitstring,256,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 =>
                {t_tuple,3,true,
                 #{1 => {t_atom,[error]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil},
                   3 => nil}}}}},
           {{4,{t_atom,[bif_clashes2]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes2]},
               2 => {t_bitstring,64,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 =>
                {t_tuple,3,true,
                 #{1 => {t_atom,[error]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil},
                   3 => nil}}}}},
           {{4,{t_atom,[bif_clashes3]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes3]},
               2 => {t_bitstring,8,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 => nil}}},
           {{4,{t_atom,[bif_clashes4]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes4]},
               2 => {t_bitstring,8,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 => nil}}},
           {{4,{t_atom,[bif_clashes5]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes5]},
               2 => {t_bitstring,8,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 =>
                {t_tuple,2,true,
                 #{1 => {t_atom,[warning]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}}},
           {{4,{t_atom,[bif_clashes6]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes6]},
               2 => {t_bitstring,8,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 =>
                {t_tuple,2,true,
                 #{1 => {t_atom,[warning]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}}},
           {{4,{t_atom,[undef_parse_transform]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[undef_parse_transform]},
               2 => {t_bitstring,16,false},
               3 => {t_cons,{t_atom,[return]},nil},
               4 =>
                {t_tuple,3,true,
                 #{1 => {t_atom,[error]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil},
                   3 => nil}}}}}],
          none},
         nil}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"error_SUITE.erl",412}]}.
    {call,1,{f,81}}. % test_filename/1
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,72},1}. % run/3


{function, run, 3, 72}.
  {label,71}.
    {line,[{location,"error_SUITE.erl",415}]}.
    {func_info,{atom,error_SUITE},{atom,run},3}.
  {label,72}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_union,none,none,none,
          [{{4,{t_atom,[bif_clashes1]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes1]},
               2 => {t_bitstring,256,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 =>
                {t_tuple,3,true,
                 #{1 => {t_atom,[error]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil},
                   3 => nil}}}}},
           {{4,{t_atom,[bif_clashes2]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes2]},
               2 => {t_bitstring,64,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 =>
                {t_tuple,3,true,
                 #{1 => {t_atom,[error]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil},
                   3 => nil}}}}},
           {{4,{t_atom,[bif_clashes3]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes3]},
               2 => {t_bitstring,8,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 => nil}}},
           {{4,{t_atom,[bif_clashes4]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes4]},
               2 => {t_bitstring,8,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 => nil}}},
           {{4,{t_atom,[bif_clashes5]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes5]},
               2 => {t_bitstring,8,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 =>
                {t_tuple,2,true,
                 #{1 => {t_atom,[warning]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}}},
           {{4,{t_atom,[bif_clashes6]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[bif_clashes6]},
               2 => {t_bitstring,8,false},
               3 => {t_cons,{t_atom,[return_warnings]},nil},
               4 =>
                {t_tuple,2,true,
                 #{1 => {t_atom,[warning]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}}},
           {{4,{t_atom,[undef_parse_transform]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[undef_parse_transform]},
               2 => {t_bitstring,16,false},
               3 => {t_cons,{t_atom,[return]},nil},
               4 =>
                {t_tuple,3,true,
                 #{1 => {t_atom,[error]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil},
                   3 => nil}}}}},
           {{4,{t_atom,[warning_unused_var]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[warning_unused_var]},
               2 => {t_bitstring,16,false},
               3 =>
                {t_cons,
                 {t_union,
                  {t_atom,[export_all,return_warnings]},
                  none,none,
                  [{{2,{t_atom,[outdir]}},
                    {t_tuple,2,true,#{1 => {t_atom,[outdir]}}}}],
                  none},
                 nil},
               4 =>
                {t_tuple,2,true,
                 #{1 => {t_atom,[warning]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}}},
           {{4,{t_atom,[warnings_as_errors]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[warnings_as_errors]},
               2 => {t_bitstring,16,false},
               3 =>
                {t_cons,
                 {t_union,
                  {t_atom,[export_all,warnings_as_errors]},
                  none,none,
                  [{{2,{t_atom,[outdir]}},
                    {t_tuple,2,true,#{1 => {t_atom,[outdir]}}}}],
                  none},
                 nil},
               4 =>
                {t_tuple,3,true,
                 #{1 => {t_atom,[error]},
                   2 => nil,
                   3 => {t_cons,{t_tuple,0,false,#{}},nil}}}}}}],
          none},
         nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[dont_write_beam,write_beam]}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},3}.
    {make_fun3,{f,123},0,0,{x,1},{list,[{x,1},{x,2}]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"error_SUITE.erl",426}]}.
    {call_ext_only,3,{extfunc,lists,foldl,3}}.


{function, run2, 2, 74}.
  {label,73}.
    {line,[{location,"error_SUITE.erl",428}]}.
    {func_info,{atom,error_SUITE},{atom,run2},2}.
  {label,74}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_cons,
         {t_tuple,4,true,
          #{1 => {t_atom,any},
            2 => {t_bitstring,8,false},
            3 => {t_list,{t_atom,[return]},nil},
            4 =>
             {t_union,none,nil,none,
              [{{3,{t_atom,[error]}},
                {t_tuple,3,true,
                 #{1 => {t_atom,[error]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil},
                   3 => nil}}}],
              none}}},
         nil}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"error_SUITE.erl",429}]}.
    {call,1,{f,81}}. % test_filename/1
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,76},1}. % run2/3


{function, run2, 3, 76}.
  {label,75}.
    {line,[{location,"error_SUITE.erl",432}]}.
    {func_info,{atom,error_SUITE},{atom,run2},3}.
  {label,76}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_tuple,4,true,
          #{1 => {t_atom,any},
            2 => {t_bitstring,8,false},
            3 => {t_list,{t_atom,[return]},nil},
            4 =>
             {t_union,none,nil,none,
              [{{3,{t_atom,[error]}},
                {t_tuple,3,true,
                 #{1 => {t_atom,[error]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil},
                   3 => nil}}}],
              none}}},
         nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[dont_write_beam]}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},2}.
    {make_fun3,{f,118},0,0,{x,1},{list,[{x,1},{atom,dont_write_beam}]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"error_SUITE.erl",443}]}.
    {call_ext_only,3,{extfunc,lists,foldl,3}}.


{function, filter, 1, 78}.
  {label,77}.
    {line,[{location,"error_SUITE.erl",445}]}.
    {func_info,{atom,error_SUITE},{atom,filter},1}.
  {label,78}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warning]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warning]}}}},
                      {{3,{t_atom,[error]}},
                       {t_tuple,3,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {test,is_tuple,{f,79},[{x,0}]}.
    {test,test_arity,{f,79},[{x,0},3]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0},nil]}}.
    return.
  {label,79}.
    return.


{function, test_filename, 1, 81}.
  {label,80}.
    {line,[{location,"error_SUITE.erl",453}]}.
    {func_info,{atom,error_SUITE},{atom,test_filename},1}.
  {label,81}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"error_SUITE.erl",454}]}.
    {call_ext,0,{extfunc,test_lib,uniq,0}}.
    {test_heap,4,1}.
    {put_list,{x,0},{literal,[".erl"]},{x,0}}.
    {put_list,{literal,"errors_test_"},{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"error_SUITE.erl",455}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{y,0},{x,1}}.
    {line,[{location,"error_SUITE.erl",456}]}.
    {call_ext_last,2,{extfunc,filename,join,2},1}.


{function, run_test, 4, 83}.
  {label,82}.
    {line,[{location,"error_SUITE.erl",458}]}.
    {func_info,{atom,error_SUITE},{atom,run_test},4}.
  {label,83}.
    {'%',{var_info,{x,3},[{type,{t_atom,[dont_write_beam,write_beam]}}]}}.
    {allocate,5,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"error_SUITE.erl",459}]}.
    {call_ext,1,{extfunc,filename,basename,1}}.
    {move,{literal,".erl"},{x,1}}.
    {call_ext,2,{extfunc,filename,rootname,2}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"error_SUITE.erl",460}]}.
    {call_ext,1,{extfunc,erlang,list_to_atom,1}}.
    {test_heap,8,1}.
    {put_list,{y,4},nil,{x,1}}.
    {put_list,{literal,"). "},{x,1},{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{literal,"-module("},{x,1},{x,1}}.
    {move,{x,0},{y,4}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"error_SUITE.erl",461}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {move,{x,0},{y,0}}.
    {test,is_eq_exact,{f,84},[{y,1},{atom,write_beam}]}.
    {test_heap,2,0}.
    {put_list,{atom,return_errors},{y,2},{x,0}}.
    {move,{x,0},{y,1}}.
    {jump,{f,85}}.
  {label,84}.
    {test_heap,4,0}.
    {put_list,{atom,return_errors},{y,2},{x,0}}.
    {put_list,{atom,binary},{x,0},{x,0}}.
    {move,{x,0},{y,1}}.
  {label,85}.
    {move,{y,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"error_SUITE.erl",468}]}.
    {call_ext,2,{extfunc,file,write_file,2}}.
    {test,is_eq_exact,{f,97},[{x,0},{atom,ok}]}.
    {test_heap,4,0}.
    {put_list,{atom,report},{y,2},{x,0}}.
    {put_list,{atom,binary},{x,0},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"error_SUITE.erl",471}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test_heap,2,0}.
    {put_list,{y,1},nil,{x,1}}.
    {move,{literal,"~p\n"},{x,0}}.
    {line,[{location,"error_SUITE.erl",474}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"error_SUITE.erl",475}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tuple,{f,96},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,96},
                        {list,[3,{f,88},4,{f,86}]}}.
  {label,86}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,96},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_nonempty_list,{f,87},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_tuple,{f,96},[{x,3}]}.
    {test,test_arity,{f,96},[{x,3},2]}.
    {test,is_nil,{f,96},[{x,2}]}.
    {test,is_eq_exact,{f,96},[{x,1},{y,4}]}.
    {get_tuple_element,{x,3},1,{y,4}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"error_SUITE.erl",477}]}.
    {call,2,{f,99}}. % print_diagnostics/2
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,warning},{y,4}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,95}}.
  {label,87}.
    {test,is_nil,{f,96},[{x,2}]}.
    {test,is_eq_exact,{f,96},[{x,1},{y,4}]}.
    {jump,{f,91}}.
  {label,88}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{y,2}}.
    {get_tuple_element,{x,0},2,{y,1}}.
    {select_val,{x,1},{f,96},{list,[{atom,error},{f,92},{atom,ok},{f,89}]}}.
  {label,89}.
    {test,is_nonempty_list,{f,90},[{y,1}]}.
    {get_list,{y,1},{x,1},{x,2}}.
    {test,is_tuple,{f,96},[{x,1}]}.
    {test,test_arity,{f,96},[{x,1},2]}.
    {test,is_nil,{f,96},[{x,2}]}.
    {test,is_eq_exact,{f,96},[{y,2},{y,4}]}.
    {test_heap,3,2}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,warning},{x,0}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,95}}.
  {label,90}.
    {test,is_nil,{f,96},[{y,1}]}.
    {test,is_eq_exact,{f,96},[{y,2},{y,4}]}.
  {label,91}.
    {move,nil,{y,4}}.
    {jump,{f,95}}.
  {label,92}.
    {test,is_nonempty_list,{f,94},[{y,2}]}.
    {get_list,{y,2},{x,1},{x,2}}.
    {test,is_tuple,{f,94},[{x,1}]}.
    {test,test_arity,{f,94},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {get_tuple_element,{x,1},1,{y,4}}.
    {test,is_nonempty_list,{f,93},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,94},[{x,1}]}.
    {test,test_arity,{f,94},[{x,1},2]}.
    {test,is_nil,{f,94},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,94},[{x,2},{x,3}]}.
    {test,is_list,{f,94},[{x,3}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,2},{y,4}]}}.
    {line,[{location,"error_SUITE.erl",490}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,4}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"error_SUITE.erl",491}]}.
    {call,2,{f,99}}. % print_diagnostics/2
    {test_heap,4,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,4},{y,1}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,95}}.
  {label,93}.
    {test,is_nil,{f,94},[{x,2}]}.
    {test,is_list,{f,94},[{x,3}]}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0},{y,2}]}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"error_SUITE.erl",486}]}.
    {call,2,{f,99}}. % print_diagnostics/2
    {test_heap,4,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,4},{y,1}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,95}}.
  {label,94}.
    {test,is_nonempty_list,{f,96},[{y,1}]}.
    {get_list,{y,1},{x,1},{x,2}}.
    {test,is_tuple,{f,96},[{x,1}]}.
    {test,test_arity,{f,96},[{x,1},2]}.
    {test,is_nil,{f,96},[{x,2}]}.
    {get_tuple_element,{x,1},1,{y,4}}.
    {move,{y,4},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"error_SUITE.erl",494}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,99}}. % print_diagnostics/2
    {test_heap,4,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,2},{y,4}]}}.
    {move,{x,0},{y,4}}.
  {label,95}.
    {move,{y,3},{x,0}}.
    {trim,4,1}.
    {line,[{location,"error_SUITE.erl",497}]}.
    {call_ext,1,{extfunc,file,delete,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,96}.
    {line,[{location,"error_SUITE.erl",475}]}.
    {case_end,{x,0}}.
  {label,97}.
    {line,[{location,"error_SUITE.erl",468}]}.
    {badmatch,{x,0}}.


{function, print_diagnostics, 2, 99}.
  {label,98}.
    {line,[{location,"error_SUITE.erl",500}]}.
    {func_info,{atom,error_SUITE},{atom,print_diagnostics},2}.
  {label,99}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{literal,<<"-file(">>},{x,1}}.
    {line,[{location,"error_SUITE.erl",501}]}.
    {call_ext,2,{extfunc,binary,match,2}}.
    {test,is_eq_exact,{f,100},[{x,0},{atom,nomatch}]}.
    {move,{literal,<<"\n">>},{x,1}}.
    {move,{literal,[global]},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"error_SUITE.erl",503}]}.
    {call_ext,3,{extfunc,binary,split,3}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"error_SUITE.erl",504}]}.
    {call,2,{f,114}}. % '-print_diagnostics/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {line,[{location,"error_SUITE.erl",505}]}.
    {call_ext_last,1,{extfunc,io,put_chars,1},0}.
  {label,100}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.


{function, print_diagnostic, 2, 102}.
  {label,101}.
    {line,[{location,"error_SUITE.erl",512}]}.
    {func_info,{atom,error_SUITE},{atom,print_diagnostic},2}.
  {label,102}.
    {test,is_tuple,{f,105},[{x,0}]}.
    {test,test_arity,{f,105},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_tuple,{f,105},[{x,2}]}.
    {test,test_arity,{f,105},[{x,2},2]}.
    {allocate,5,3}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,4}}.
    {get_tuple_element,{x,2},0,{y,3}}.
    {get_tuple_element,{x,2},1,{y,2}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"error_SUITE.erl",513}]}.
    {call_ext,2,{extfunc,lists,nth,2}}.
    {move,{x,0},{y,1}}.
    {test,bs_start_match3,{f,106},1,[{x,0}],{x,0}}.
    {gc_bif,'-',{f,103},1,[{y,2},{integer,1}],{x,1}}.
    {jump,{f,104}}.
  {label,103}.
    {move,{atom,bad_size},{x,1}}.
  {label,104}.
    {test,bs_get_binary2,
          {f,106},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},none,{t_number,any},none,none}},
           8,
           {field_flags,[{anno,[514,{file,"error_SUITE.erl"}]},unsigned,big]}],
          {x,1}}.
    {bs_match,{f,106},{x,0},{commands,[{ensure_at_least,0,8}]}}.
    {move,{literal,<<" ">>},{x,2}}.
    {move,{literal,[global]},{x,3}}.
    {move,{x,1},{x,0}}.
    {move,{literal,<<"[^\t]">>},{x,1}}.
    {line,[{location,"error_SUITE.erl",515}]}.
    {call_ext,4,{extfunc,re,replace,4}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,["^"]},{y,0}}.
    {get_tuple_element,{y,4},1,{x,0}}.
    {get_tuple_element,{y,4},2,{x,1}}.
    {move,{atom,format_error},{x,2}}.
    {swap,{x,0},{x,1}}.
    {move,{y,0},{y,4}}.
    {trim,1,4}.
    {line,[{location,"error_SUITE.erl",517}]}.
    {apply,1}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,2,2}.
    {move,{literal,"~p:~p: ~ts\n"},{x,0}}.
    {call_ext,2,{extfunc,io_lib,format,2}}.
    {test_heap,8,1}.
    {put_list,{y,1},{literal,["\n\n"]},{x,1}}.
    {put_list,{literal,"\n"},{x,1},{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,105}.
    {move,nil,{x,0}}.
    return.
  {label,106}.
    {line,[{location,"error_SUITE.erl",514}]}.
    {badmatch,{y,1}}.


{function, fail, 0, 108}.
  {label,107}.
    {line,[{location,"error_SUITE.erl",523}]}.
    {func_info,{atom,error_SUITE},{atom,fail},0}.
  {label,108}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"error_SUITE.erl",524}]}.
    {call_ext_only,1,{extfunc,ct,fail,1}}.


{function, module_info, 0, 110}.
  {label,109}.
    {line,[]}.
    {func_info,{atom,error_SUITE},{atom,module_info},0}.
  {label,110}.
    {move,{atom,error_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 112}.
  {label,111}.
    {line,[]}.
    {func_info,{atom,error_SUITE},{atom,module_info},1}.
  {label,112}.
    {move,{x,0},{x,1}}.
    {move,{atom,error_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-print_diagnostics/2-lc$^0/1-0-', 2, 114}.
  {label,113}.
    {line,[{location,"error_SUITE.erl",504}]}.
    {func_info,{atom,error_SUITE},{atom,'-print_diagnostics/2-lc$^0/1-0-'},2}.
  {label,114}.
    {test,is_nonempty_list,{f,115},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,102}}. % print_diagnostic/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,114}}. % '-print_diagnostics/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,115}.
    {test,is_nil,{f,116},[{x,0}]}.
    return.
  {label,116}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-run2/3-fun-0-', 4, 118}.
  {label,117}.
    {line,[{location,"error_SUITE.erl",433}]}.
    {func_info,{atom,error_SUITE},{atom,'-run2/3-fun-0-'},4}.
  {label,118}.
    {'%',{var_info,{x,3},[{type,{t_atom,[dont_write_beam]}}]}}.
    {test,is_tuple,{f,121},[{x,0}]}.
    {test,test_arity,{f,121},[{x,0},4]}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_tuple_element,{x,0},2,{x,5}}.
    {allocate,3,6}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'catch',{y,2},{f,119}}.
    {move,{x,2},{x,1}}.
    {move,{x,5},{x,2}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"error_SUITE.erl",434}]}.
    {call,4,{f,83}}. % run_test/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warning]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warning]}}}},
                      {{3,{t_atom,[error]}},
                       {t_tuple,3,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
    {call,1,{f,78}}. % filter/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warning]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warning]}}}},
                      {{3,{t_atom,[error]}},
                       {t_tuple,3,true,#{1 => {t_atom,[error]},3 => nil}}}],
                     none}}]}}.
  {label,119}.
    {catch_end,{y,2}}.
    {get_tuple_element,{y,0},3,{x,1}}.
    {test,is_eq_exact,{f,120},[{x,0},{x,1}]}.
    {move,{y,1},{x,0}}.
    {deallocate,3}.
    return.
  {label,120}.
    {test_heap,6,2}.
    {get_tuple_element,{y,0},0,{x,2}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {trim,3,0}.
    {move,{literal,"~nTest ~p failed. Expected~n  ~p~nbut got~n  ~p~n"},{x,0}}.
    {line,[{scope,[0]},{location,"error_SUITE.erl",438}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {call_last,0,{f,108},0}. % fail/0
  {label,121}.
    {call_only,2,{f,130}}. % '-run2/3-inlined-0-'/2


{function, '-run/3-fun-0-', 4, 123}.
  {label,122}.
    {line,[{location,"error_SUITE.erl",416}]}.
    {func_info,{atom,error_SUITE},{atom,'-run/3-fun-0-'},4}.
  {label,123}.
    {'%',{var_info,{x,3},[{type,{t_atom,[dont_write_beam,write_beam]}}]}}.
    {test,is_tuple,{f,126},[{x,0}]}.
    {test,test_arity,{f,126},[{x,0},4]}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_tuple_element,{x,0},2,{x,5}}.
    {allocate,3,6}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'catch',{y,2},{f,124}}.
    {move,{x,2},{x,1}}.
    {move,{x,5},{x,2}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"error_SUITE.erl",417}]}.
    {call,4,{f,83}}. % run_test/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warning]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warning]}}}},
                      {{3,{t_atom,[error]}},
                       {t_tuple,3,true,#{1 => {t_atom,[error]}}}}],
                     none}}]}}.
  {label,124}.
    {catch_end,{y,2}}.
    {get_tuple_element,{y,0},3,{x,1}}.
    {test,is_eq_exact,{f,125},[{x,0},{x,1}]}.
    {move,{y,1},{x,0}}.
    {deallocate,3}.
    return.
  {label,125}.
    {test_heap,6,2}.
    {get_tuple_element,{y,0},0,{x,2}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {trim,3,0}.
    {move,{literal,"~nTest ~p failed. Expected~n  ~p~nbut got~n  ~p~n"},{x,0}}.
    {line,[{scope,[0]},{location,"error_SUITE.erl",421}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {call_last,0,{f,108},0}. % fail/0
  {label,126}.
    {call_only,2,{f,128}}. % '-run/3-inlined-0-'/2


{function, '-run/3-inlined-0-', 2, 128}.
  {label,127}.
    {line,[{location,"error_SUITE.erl",416}]}.
    {func_info,{atom,error_SUITE},{atom,'-run/3-inlined-0-'},2}.
  {label,128}.
    {jump,{f,127}}.


{function, '-run2/3-inlined-0-', 2, 130}.
  {label,129}.
    {line,[{location,"error_SUITE.erl",433}]}.
    {func_info,{atom,error_SUITE},{atom,'-run2/3-inlined-0-'},2}.
  {label,130}.
    {jump,{f,129}}.
