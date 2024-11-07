{module, error_SUITE}.  %% version = 0

{exports, [{all,0},
           {bad_decls,1},
           {bad_utf8,1},
           {bif_clashes,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {head_mismatch_line,1},
           {head_mismatch_same_function_name,1},
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

{labels, 137}.


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
                       {literal,[head_mismatch_line,
                                 head_mismatch_same_function_name,
                                 warnings_as_errors,bif_clashes,transforms,
                                 maps_warnings,bad_utf8,bad_decls]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"error_SUITE.erl",42}]}.
    {func_info,{atom,error_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,error_SUITE},{x,0}}.
    {line,[{location,"error_SUITE.erl",43}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"error_SUITE.erl",46}]}.
    {func_info,{atom,error_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"error_SUITE.erl",49}]}.
    {func_info,{atom,error_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"error_SUITE.erl",52}]}.
    {func_info,{atom,error_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, bif_clashes, 1, 16}.
  {label,15}.
    {line,[{location,"error_SUITE.erl",56}]}.
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
    {line,[{location,"error_SUITE.erl",69}]}.
    {call,2,{f,76}}. % run/2
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
    {line,[{location,"error_SUITE.erl",80}]}.
    {call,2,{f,76}}. % run/2
    {test,is_nil,{f,24},[{x,0}]}.
    {move,{literal,[{bif_clashes3,<<"\n              -export([t/0]).\n              -compile({no_auto_import,[length/1]}).\n              t() ->\n                 length([a,b,c]).\n\n              length(X) ->\n               erlang:length(X).\n             ">>,
                                  [return_warnings],
                                  []}]},
          {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",93}]}.
    {call,2,{f,76}}. % run/2
    {test,is_nil,{f,23},[{x,0}]}.
    {move,{literal,[{bif_clashes4,<<"\n              -export([t/0]).\n              -compile({no_auto_import,[length/1]}).\n              -import(x,[length/1]).\n              t() ->\n                 length([a,b,c]).\n             ">>,
                                  [return_warnings],
                                  []}]},
          {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",104}]}.
    {call,2,{f,76}}. % run/2
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
    {line,[{location,"error_SUITE.erl",117}]}.
    {call,2,{f,76}}. % run/2
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
    {line,[{location,"error_SUITE.erl",128}]}.
    {call,2,{f,76}}. % run/2
    {test,is_nil,{f,20},[{x,0}]}.
    {move,
        {literal,
            [{bif_clashes7,
                 <<"\n              -export([t/0]).\n              -compile({no_auto_import,[length/1]}).\n              -import(x,[length/1]).\n              t() ->\n                 length([a,b,c]).\n              length(X) ->\n                 erlang:length(X).\n             ">>,
                 [],
                 {error,[{{7,15},erl_lint,{define_import,{length,1}}}],[]}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",143}]}.
    {call,2,{f,80}}. % run2/2
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
    {line,[{location,"error_SUITE.erl",157}]}.
    {call,2,{f,80}}. % run2/2
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
    {line,[{location,"error_SUITE.erl",170}]}.
    {call,2,{f,80}}. % run2/2
    {test,is_nil,{f,17},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {badmatch,{x,0}}.
  {label,18}.
    {line,[{location,"error_SUITE.erl",157}]}.
    {badmatch,{x,0}}.
  {label,19}.
    {line,[{location,"error_SUITE.erl",143}]}.
    {badmatch,{x,0}}.
  {label,20}.
    {line,[{location,"error_SUITE.erl",128}]}.
    {badmatch,{x,0}}.
  {label,21}.
    {line,[{location,"error_SUITE.erl",117}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"error_SUITE.erl",104}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{location,"error_SUITE.erl",93}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{location,"error_SUITE.erl",80}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{location,"error_SUITE.erl",69}]}.
    {badmatch,{x,0}}.


{function, head_mismatch_line, 1, 27}.
  {label,26}.
    {line,[{location,"error_SUITE.erl",178}]}.
    {func_info,{atom,error_SUITE},{atom,head_mismatch_line},1}.
  {label,27}.
    {test,is_list,{f,26},[{x,0}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,"head_mismatch_line"},{x,1}}.
    {line,[{location,"error_SUITE.erl",179}]}.
    {call,2,{f,37}}. % get_compilation_errors/2
    {test,is_nonempty_list,{f,30},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {test,is_tuple,{f,29},[{x,0}]}.
    {test,test_arity,{f,29},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {test,is_eq_exact,{f,29},[{x,1},{literal,{26,1}}]}.
    {get_tuple_element,{x,0},2,{y,0}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",182}]}.
    {call_ext,1,{extfunc,lists,flatten,1}}.
    {test,is_eq_exact,
          {f,28},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,"head mismatch: previous function foo/1 is distinct from bar/1. Is the semicolon in foo/1 unwanted?"}]}.
    {move,{y,1},{x,1}}.
    {move,{atom,format_error},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"error_SUITE.erl",183}]}.
    {apply,1}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,28}.
    {line,[{location,"error_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{location,"error_SUITE.erl",180}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{location,"error_SUITE.erl",179}]}.
    {badmatch,{x,0}}.


{function, head_mismatch_same_function_name, 1, 32}.
  {label,31}.
    {line,[{location,"error_SUITE.erl",188}]}.
    {func_info,{atom,error_SUITE},{atom,head_mismatch_same_function_name},1}.
  {label,32}.
    {test,is_list,{f,31},[{x,0}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,"head_mismatch_same_function_name"},{x,1}}.
    {line,[{location,"error_SUITE.erl",189}]}.
    {call,2,{f,37}}. % get_compilation_errors/2
    {test,is_nonempty_list,{f,35},[{x,0}]}.
    {get_hd,{x,0},{x,0}}.
    {test,is_tuple,{f,34},[{x,0}]}.
    {test,test_arity,{f,34},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{y,1}}.
    {test,is_eq_exact,{f,34},[{x,1},{literal,{25,1}}]}.
    {get_tuple_element,{x,0},2,{y,0}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",193}]}.
    {call_ext,1,{extfunc,lists,flatten,1}}.
    {test,is_eq_exact,
          {f,33},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,"head mismatch: function foo with arities 1 and 2 is regarded as two distinct functions. Is the number of arguments incorrect or is the semicolon in foo/1 unwanted?"}]}.
    {move,{y,1},{x,1}}.
    {move,{atom,format_error},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,2,0}.
    {line,[{location,"error_SUITE.erl",194}]}.
    {apply,1}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,33}.
    {line,[{location,"error_SUITE.erl",191}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{location,"error_SUITE.erl",190}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{location,"error_SUITE.erl",189}]}.
    {badmatch,{x,0}}.


{function, get_compilation_errors, 2, 37}.
  {label,36}.
    {line,[{location,"error_SUITE.erl",199}]}.
    {func_info,{atom,error_SUITE},{atom,get_compilation_errors},2}.
  {label,37}.
    {'%',{var_info,{x,0},[{type,{t_list,any,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{95,117}},nil}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"error_SUITE.erl",200}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {line,[{location,"error_SUITE.erl",201}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[return_errors]},{x,1}}.
    {line,[{location,"error_SUITE.erl",202}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,38},[{x,0},3,{atom,error}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,38},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tuple,{f,38},[{x,1}]}.
    {test,test_arity,{f,38},[{x,1},2]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_nil,{f,38},[{x,2}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {deallocate,0}.
    return.
  {label,38}.
    {badmatch,{x,0}}.


{function, warnings_as_errors, 1, 40}.
  {label,39}.
    {line,[{location,"error_SUITE.erl",205}]}.
    {func_info,{atom,error_SUITE},{atom,warnings_as_errors},1}.
  {label,40}.
    {test,is_list,{f,39},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"error_SUITE.erl",206}]}.
    {call,1,{f,87}}. % test_filename/1
    {move,{x,0},{y,1}}.
    {move,{literal,".erl"},{x,1}}.
    {line,[{location,"error_SUITE.erl",207}]}.
    {call_ext,2,{extfunc,filename,rootname,2}}.
    {move,{literal,".beam"},{x,1}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{y,2},{x,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"error_SUITE.erl",208}]}.
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
    {line,[{location,"error_SUITE.erl",220}]}.
    {call,3,{f,78}}. % run/3
    {test,is_nil,{f,45},[{x,0}]}.
    {move,{y,2},{x,0}}.
    {line,[{location,"error_SUITE.erl",221}]}.
    {call_ext,1,{extfunc,filelib,is_regular,1}}.
    {test,is_eq_exact,{f,44},[{x,0},{atom,false}]}.
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
    {line,[{location,"error_SUITE.erl",233}]}.
    {call,3,{f,78}}. % run/3
    {test,is_nil,{f,43},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",234}]}.
    {call_ext,1,{extfunc,filelib,is_regular,1}}.
    {test,is_eq_exact,{f,42},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"error_SUITE.erl",235}]}.
    {call_ext,1,{extfunc,file,delete,1}}.
    {test,is_eq_exact,{f,41},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,41}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{location,"error_SUITE.erl",234}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{location,"error_SUITE.erl",233}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{location,"error_SUITE.erl",221}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{location,"error_SUITE.erl",220}]}.
    {badmatch,{x,0}}.


{function, transforms, 1, 47}.
  {label,46}.
    {line,[{location,"error_SUITE.erl",239}]}.
    {func_info,{atom,error_SUITE},{atom,transforms},1}.
  {label,47}.
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
    {line,[{location,"error_SUITE.erl",246}]}.
    {call,2,{f,76}}. % run/2
    {test,is_nil,{f,52},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",253}]}.
    {call,1,{f,87}}. % test_filename/1
    {move,{literal,[{pt_error,error}]},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,3}}.
    {move,{literal,<<"\n              -compile({parse_transform,error_SUITE}).\n             ">>},
          {x,0}}.
    {call,4,{f,89}}. % run_test/4
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
    {test,is_tuple,{f,51},[{x,0}]}.
    {test,test_arity,{f,51},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,51},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,51},[{x,2},3,{atom,none}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,51},[{x,3},{atom,compile}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,51},[{x,2},3,{atom,parse_transform}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,51},[{x,3},{atom,error_SUITE}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,51},[{x,2},3,{atom,error}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,{f,51},[{x,2},{atom,too_bad}]}.
    {test,is_nil,{f,51},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,51},[{x,1}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",256}]}.
    {call,1,{f,87}}. % test_filename/1
    {move,{literal,[{pt_error,call_undef}]},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,3}}.
    {move,{literal,<<"\n              -compile({parse_transform,error_SUITE}).\n             ">>},
          {x,0}}.
    {call,4,{f,89}}. % run_test/4
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
    {test,is_tuple,{f,50},[{x,0}]}.
    {test,test_arity,{f,50},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,50},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,50},[{x,2},3,{atom,none}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,50},[{x,3},{atom,compile}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,50},[{x,2},3,{atom,parse_transform}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,50},[{x,3},{atom,error_SUITE}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,50},[{x,2},3,{atom,error}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,{f,50},[{x,2},{atom,undef}]}.
    {test,is_nil,{f,50},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,50},[{x,1}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"error_SUITE.erl",259}]}.
    {call,1,{f,87}}. % test_filename/1
    {move,{literal,[{pt_error,exit}]},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,3}}.
    {move,{literal,<<"\n              -compile({parse_transform,error_SUITE}).\n             ">>},
          {x,0}}.
    {call,4,{f,89}}. % run_test/4
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
    {test,is_tuple,{f,49},[{x,0}]}.
    {test,test_arity,{f,49},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,49},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,49},[{x,2},3,{atom,none}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,49},[{x,3},{atom,compile}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,49},[{x,2},3,{atom,parse_transform}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,49},[{x,3},{atom,error_SUITE}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,49},[{x,2},3,{atom,exit}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,{f,49},[{x,2},{atom,exited}]}.
    {test,is_nil,{f,49},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,49},[{x,1}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"error_SUITE.erl",262}]}.
    {call,1,{f,87}}. % test_filename/1
    {move,{literal,[{pt_error,throw}]},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,3}}.
    {move,{literal,<<"\n              -compile({parse_transform,error_SUITE}).\n             ">>},
          {x,0}}.
    {call,4,{f,89}}. % run_test/4
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
    {test,is_tuple,{f,48},[{x,0}]}.
    {test,test_arity,{f,48},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,48},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,48},[{x,2},3,{atom,none}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,48},[{x,3},{atom,compile}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,48},[{x,2},3,{atom,parse_transform}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,48},[{x,3},{atom,error_SUITE}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,48},[{x,2},3,{atom,throw}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,48},[{x,3},{atom,thrown}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_nonempty_list,{f,48},[{x,2}]}.
    {test,is_nil,{f,48},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,48},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,48}.
    {line,[{location,"error_SUITE.erl",261}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{location,"error_SUITE.erl",258}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{location,"error_SUITE.erl",255}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{location,"error_SUITE.erl",252}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{location,"error_SUITE.erl",246}]}.
    {badmatch,{x,0}}.


{function, parse_transform, 2, 54}.
  {label,53}.
    {line,[{location,"error_SUITE.erl",266}]}.
    {func_info,{atom,error_SUITE},{atom,parse_transform},2}.
  {label,54}.
    {allocate,0,2}.
    {move,{x,1},{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{atom,pt_error},{x,0}}.
    {line,[{location,"error_SUITE.erl",267}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_tuple,
          {f,60},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,
                        {t_tuple,1,false,#{1 => {t_atom,[pt_error]}}},
                        none}}]}.
    {test,test_arity,{f,60},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {select_val,{x,0},
                {f,59},
                {list,[{atom,call_undef},
                       {f,58},
                       {atom,error},
                       {f,57},
                       {atom,exit},
                       {f,56},
                       {atom,throw},
                       {f,55}]}}.
  {label,55}.
    {move,{atom,thrown},{x,0}}.
    {line,[{location,"error_SUITE.erl",272}]}.
    {call_ext_last,1,{extfunc,erlang,throw,1},0}.
  {label,56}.
    {move,{atom,exited},{x,0}}.
    {line,[{location,"error_SUITE.erl",274}]}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,57}.
    {move,{atom,too_bad},{x,0}}.
    {line,[{location,"error_SUITE.erl",276}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,58}.
    {line,[{location,"error_SUITE.erl",270}]}.
    {call_ext_last,0,{extfunc,camembert,délicieux,0},0}.
  {label,59}.
    {line,[{location,"error_SUITE.erl",268}]}.
    {case_end,{x,0}}.
  {label,60}.
    {line,[{location,"error_SUITE.erl",267}]}.
    {badmatch,{x,0}}.


{function, maps_warnings, 1, 62}.
  {label,61}.
    {line,[{location,"error_SUITE.erl",279}]}.
    {func_info,{atom,error_SUITE},{atom,maps_warnings},1}.
  {label,62}.
    {test,is_list,{f,61},[{x,0}]}.
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
    {line,[{location,"error_SUITE.erl",302}]}.
    {call,2,{f,80}}. % run2/2
    {test,is_nil,{f,63},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,63}.
    {badmatch,{x,0}}.


{function, bad_utf8, 1, 65}.
  {label,64}.
    {line,[{location,"error_SUITE.erl",305}]}.
    {func_info,{atom,error_SUITE},{atom,bad_utf8},1}.
  {label,65}.
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
    {line,[{location,"error_SUITE.erl",332}]}.
    {call,2,{f,80}}. % run2/2
    {test,is_nil,{f,66},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,66}.
    {badmatch,{x,0}}.


{function, bad_decls, 1, 68}.
  {label,67}.
    {line,[{location,"error_SUITE.erl",335}]}.
    {func_info,{atom,error_SUITE},{atom,bad_decls},1}.
  {label,68}.
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
    {line,[{location,"error_SUITE.erl",414}]}.
    {call,2,{f,80}}. % run2/2
    {test,is_nil,{f,71},[{x,0}]}.
    {move,{literal,"1, 2 + 4."},{x,0}}.
    {line,[{location,"error_SUITE.erl",416}]}.
    {call,1,{f,73}}. % parse_string/1
    {test,is_eq_exact,
          {f,70},
          [{x,0},{literal,{error,{{1,4},erl_parse,"bad term"}}}]}.
    {move,{literal,"34 + begin 34 end."},{x,0}}.
    {line,[{location,"error_SUITE.erl",417}]}.
    {call,1,{f,73}}. % parse_string/1
    {test,is_eq_exact,
          {f,69},
          [{x,0},{literal,{error,{{1,1},erl_parse,"bad term"}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,69}.
    {badmatch,{x,0}}.
  {label,70}.
    {line,[{location,"error_SUITE.erl",416}]}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{location,"error_SUITE.erl",414}]}.
    {badmatch,{x,0}}.


{function, parse_string, 1, 73}.
  {label,72}.
    {line,[{location,"error_SUITE.erl",420}]}.
    {func_info,{atom,error_SUITE},{atom,parse_string},1}.
  {label,73}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{32,110}},nil}}]}}.
    {allocate,0,1}.
    {move,{literal,{1,1}},{x,1}}.
    {line,[{location,"error_SUITE.erl",421}]}.
    {call_ext,2,{extfunc,erl_scan,string,2}}.
    {test,is_tagged_tuple,{f,74},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"error_SUITE.erl",422}]}.
    {call_ext_last,1,{extfunc,erl_parse,parse_term,1},0}.
  {label,74}.
    {line,[{location,"error_SUITE.erl",421}]}.
    {badmatch,{x,0}}.


{function, run, 2, 76}.
  {label,75}.
    {line,[{location,"error_SUITE.erl",425}]}.
    {func_info,{atom,error_SUITE},{atom,run},2}.
  {label,76}.
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
    {line,[{location,"error_SUITE.erl",426}]}.
    {call,1,{f,87}}. % test_filename/1
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,78},1}. % run/3


{function, run, 3, 78}.
  {label,77}.
    {line,[{location,"error_SUITE.erl",429}]}.
    {func_info,{atom,error_SUITE},{atom,run},3}.
  {label,78}.
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
    {make_fun3,{f,129},0,0,{x,1},{list,[{x,1},{x,2}]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"error_SUITE.erl",440}]}.
    {call_ext_only,3,{extfunc,lists,foldl,3}}.


{function, run2, 2, 80}.
  {label,79}.
    {line,[{location,"error_SUITE.erl",442}]}.
    {func_info,{atom,error_SUITE},{atom,run2},2}.
  {label,80}.
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
    {line,[{location,"error_SUITE.erl",443}]}.
    {call,1,{f,87}}. % test_filename/1
    {move,{x,0},{x,1}}.
    {move,{atom,dont_write_beam},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,82},1}. % run2/3


{function, run2, 3, 82}.
  {label,81}.
    {line,[{location,"error_SUITE.erl",446}]}.
    {func_info,{atom,error_SUITE},{atom,run2},3}.
  {label,82}.
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
    {make_fun3,{f,124},0,0,{x,1},{list,[{x,1},{atom,dont_write_beam}]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"error_SUITE.erl",457}]}.
    {call_ext_only,3,{extfunc,lists,foldl,3}}.


{function, filter, 1, 84}.
  {label,83}.
    {line,[{location,"error_SUITE.erl",459}]}.
    {func_info,{atom,error_SUITE},{atom,filter},1}.
  {label,84}.
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
    {test,is_tuple,{f,85},[{x,0}]}.
    {test,test_arity,{f,85},[{x,0},3]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0},nil]}}.
    return.
  {label,85}.
    return.


{function, test_filename, 1, 87}.
  {label,86}.
    {line,[{location,"error_SUITE.erl",467}]}.
    {func_info,{atom,error_SUITE},{atom,test_filename},1}.
  {label,87}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"error_SUITE.erl",468}]}.
    {call_ext,0,{extfunc,test_lib,uniq,0}}.
    {test_heap,4,1}.
    {put_list,{x,0},{literal,[".erl"]},{x,0}}.
    {put_list,{literal,"errors_test_"},{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"error_SUITE.erl",469}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{y,0},{x,1}}.
    {line,[{location,"error_SUITE.erl",470}]}.
    {call_ext_last,2,{extfunc,filename,join,2},1}.


{function, run_test, 4, 89}.
  {label,88}.
    {line,[{location,"error_SUITE.erl",472}]}.
    {func_info,{atom,error_SUITE},{atom,run_test},4}.
  {label,89}.
    {'%',{var_info,{x,3},[{type,{t_atom,[dont_write_beam,write_beam]}}]}}.
    {allocate,5,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"error_SUITE.erl",473}]}.
    {call_ext,1,{extfunc,filename,basename,1}}.
    {move,{literal,".erl"},{x,1}}.
    {call_ext,2,{extfunc,filename,rootname,2}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"error_SUITE.erl",474}]}.
    {call_ext,1,{extfunc,erlang,list_to_atom,1}}.
    {test_heap,8,1}.
    {put_list,{y,4},nil,{x,1}}.
    {put_list,{literal,"). "},{x,1},{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{literal,"-module("},{x,1},{x,1}}.
    {move,{x,0},{y,4}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"error_SUITE.erl",475}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {move,{x,0},{y,0}}.
    {test,is_eq_exact,{f,90},[{y,1},{atom,write_beam}]}.
    {test_heap,2,0}.
    {put_list,{atom,return_errors},{y,2},{x,0}}.
    {move,{x,0},{y,1}}.
    {jump,{f,91}}.
  {label,90}.
    {test_heap,4,0}.
    {put_list,{atom,return_errors},{y,2},{x,0}}.
    {put_list,{atom,binary},{x,0},{x,0}}.
    {move,{x,0},{y,1}}.
  {label,91}.
    {move,{y,0},{x,1}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"error_SUITE.erl",482}]}.
    {call_ext,2,{extfunc,file,write_file,2}}.
    {test,is_eq_exact,{f,103},[{x,0},{atom,ok}]}.
    {test_heap,4,0}.
    {put_list,{atom,report},{y,2},{x,0}}.
    {put_list,{atom,binary},{x,0},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"error_SUITE.erl",485}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test_heap,2,0}.
    {put_list,{y,1},nil,{x,1}}.
    {move,{literal,"~p\n"},{x,0}}.
    {line,[{location,"error_SUITE.erl",488}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"error_SUITE.erl",489}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tuple,{f,102},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,102},
                        {list,[3,{f,94},4,{f,92}]}}.
  {label,92}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,102},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_nonempty_list,{f,93},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_tuple,{f,102},[{x,3}]}.
    {test,test_arity,{f,102},[{x,3},2]}.
    {test,is_nil,{f,102},[{x,2}]}.
    {test,is_eq_exact,{f,102},[{x,1},{tr,{y,4},{t_atom,any}}]}.
    {get_tuple_element,{x,3},1,{y,4}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"error_SUITE.erl",491}]}.
    {call,2,{f,105}}. % print_diagnostics/2
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,warning},{y,4}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,101}}.
  {label,93}.
    {test,is_nil,{f,102},[{x,2}]}.
    {test,is_eq_exact,{f,102},[{x,1},{tr,{y,4},{t_atom,any}}]}.
    {jump,{f,97}}.
  {label,94}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{y,2}}.
    {get_tuple_element,{x,0},2,{y,1}}.
    {select_val,{x,1},{f,102},{list,[{atom,error},{f,98},{atom,ok},{f,95}]}}.
  {label,95}.
    {test,is_nonempty_list,{f,96},[{y,1}]}.
    {get_list,{y,1},{x,1},{x,2}}.
    {test,is_tuple,{f,102},[{x,1}]}.
    {test,test_arity,{f,102},[{x,1},2]}.
    {test,is_nil,{f,102},[{x,2}]}.
    {test,is_eq_exact,{f,102},[{y,2},{tr,{y,4},{t_atom,any}}]}.
    {test_heap,3,2}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,warning},{x,0}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,101}}.
  {label,96}.
    {test,is_nil,{f,102},[{y,1}]}.
    {test,is_eq_exact,{f,102},[{y,2},{tr,{y,4},{t_atom,any}}]}.
  {label,97}.
    {move,nil,{y,4}}.
    {jump,{f,101}}.
  {label,98}.
    {test,is_nonempty_list,{f,100},[{y,2}]}.
    {get_list,{y,2},{x,1},{x,2}}.
    {test,is_tuple,{f,100},[{x,1}]}.
    {test,test_arity,{f,100},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {get_tuple_element,{x,1},1,{y,4}}.
    {test,is_nonempty_list,{f,99},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,100},[{x,1}]}.
    {test,test_arity,{f,100},[{x,1},2]}.
    {test,is_nil,{f,100},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,100},[{x,2},{x,3}]}.
    {test,is_list,{f,100},[{x,3}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,2},{y,4}]}}.
    {line,[{location,"error_SUITE.erl",504}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,4}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"error_SUITE.erl",505}]}.
    {call,2,{f,105}}. % print_diagnostics/2
    {test_heap,4,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,4},{y,1}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,101}}.
  {label,99}.
    {test,is_nil,{f,100},[{x,2}]}.
    {test,is_list,{f,100},[{x,3}]}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0},{y,2}]}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"error_SUITE.erl",500}]}.
    {call,2,{f,105}}. % print_diagnostics/2
    {test_heap,4,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,4},{y,1}]}}.
    {move,{x,0},{y,4}}.
    {jump,{f,101}}.
  {label,100}.
    {test,is_nonempty_list,{f,102},[{y,1}]}.
    {get_list,{y,1},{x,1},{x,2}}.
    {test,is_tuple,{f,102},[{x,1}]}.
    {test,test_arity,{f,102},[{x,1},2]}.
    {test,is_nil,{f,102},[{x,2}]}.
    {get_tuple_element,{x,1},1,{y,4}}.
    {move,{y,4},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"error_SUITE.erl",508}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,105}}. % print_diagnostics/2
    {test_heap,4,0}.
    {put_tuple2,{x,0},{list,[{atom,error},{y,2},{y,4}]}}.
    {move,{x,0},{y,4}}.
  {label,101}.
    {move,{y,3},{x,0}}.
    {trim,4,1}.
    {line,[{location,"error_SUITE.erl",511}]}.
    {call_ext,1,{extfunc,file,delete,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,102}.
    {line,[{location,"error_SUITE.erl",489}]}.
    {case_end,{x,0}}.
  {label,103}.
    {line,[{location,"error_SUITE.erl",482}]}.
    {badmatch,{x,0}}.


{function, print_diagnostics, 2, 105}.
  {label,104}.
    {line,[{location,"error_SUITE.erl",514}]}.
    {func_info,{atom,error_SUITE},{atom,print_diagnostics},2}.
  {label,105}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{literal,<<"-file(">>},{x,1}}.
    {line,[{location,"error_SUITE.erl",515}]}.
    {call_ext,2,{extfunc,binary,match,2}}.
    {test,is_eq_exact,{f,106},[{x,0},{atom,nomatch}]}.
    {move,{literal,<<"\n">>},{x,1}}.
    {move,{literal,[global]},{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"error_SUITE.erl",517}]}.
    {call_ext,3,{extfunc,binary,split,3}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"error_SUITE.erl",518}]}.
    {call,2,{f,120}}. % '-print_diagnostics/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {line,[{location,"error_SUITE.erl",519}]}.
    {call_ext_last,1,{extfunc,io,put_chars,1},0}.
  {label,106}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.


{function, print_diagnostic, 2, 108}.
  {label,107}.
    {line,[{location,"error_SUITE.erl",526}]}.
    {func_info,{atom,error_SUITE},{atom,print_diagnostic},2}.
  {label,108}.
    {test,is_tuple,{f,111},[{x,0}]}.
    {test,test_arity,{f,111},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_tuple,{f,111},[{x,2}]}.
    {test,test_arity,{f,111},[{x,2},2]}.
    {allocate,5,3}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,4}}.
    {get_tuple_element,{x,2},0,{y,3}}.
    {get_tuple_element,{x,2},1,{y,2}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"error_SUITE.erl",527}]}.
    {call_ext,2,{extfunc,lists,nth,2}}.
    {move,{x,0},{y,1}}.
    {test,bs_start_match3,{f,112},1,[{x,0}],{x,0}}.
    {gc_bif,'-',{f,109},1,[{y,2},{integer,1}],{x,1}}.
    {jump,{f,110}}.
  {label,109}.
    {move,{atom,bad_size},{x,1}}.
  {label,110}.
    {test,bs_get_binary2,
          {f,112},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},none,{t_number,any},none,none}},
           8,
           {field_flags,[{anno,[528,{file,"error_SUITE.erl"}]},unsigned,big]}],
          {x,1}}.
    {bs_match,{f,112},{x,0},{commands,[{ensure_at_least,0,8}]}}.
    {move,{literal,<<" ">>},{x,2}}.
    {move,{literal,[global]},{x,3}}.
    {move,{x,1},{x,0}}.
    {move,{literal,<<"[^\t]">>},{x,1}}.
    {line,[{location,"error_SUITE.erl",529}]}.
    {call_ext,4,{extfunc,re,replace,4}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,["^"]},{y,0}}.
    {get_tuple_element,{y,4},1,{x,0}}.
    {get_tuple_element,{y,4},2,{x,1}}.
    {move,{atom,format_error},{x,2}}.
    {swap,{x,0},{x,1}}.
    {move,{y,0},{y,4}}.
    {trim,1,4}.
    {line,[{location,"error_SUITE.erl",531}]}.
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
  {label,111}.
    {move,nil,{x,0}}.
    return.
  {label,112}.
    {line,[{location,"error_SUITE.erl",528}]}.
    {badmatch,{y,1}}.


{function, fail, 0, 114}.
  {label,113}.
    {line,[{location,"error_SUITE.erl",537}]}.
    {func_info,{atom,error_SUITE},{atom,fail},0}.
  {label,114}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"error_SUITE.erl",538}]}.
    {call_ext_only,1,{extfunc,ct,fail,1}}.


{function, module_info, 0, 116}.
  {label,115}.
    {line,[]}.
    {func_info,{atom,error_SUITE},{atom,module_info},0}.
  {label,116}.
    {move,{atom,error_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 118}.
  {label,117}.
    {line,[]}.
    {func_info,{atom,error_SUITE},{atom,module_info},1}.
  {label,118}.
    {move,{x,0},{x,1}}.
    {move,{atom,error_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-print_diagnostics/2-lc$^0/1-0-', 2, 120}.
  {label,119}.
    {line,[{location,"error_SUITE.erl",518}]}.
    {func_info,{atom,error_SUITE},{atom,'-print_diagnostics/2-lc$^0/1-0-'},2}.
  {label,120}.
    {test,is_nonempty_list,{f,121},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,108}}. % print_diagnostic/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,120}}. % '-print_diagnostics/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,121}.
    {test,is_nil,{f,122},[{x,0}]}.
    return.
  {label,122}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-run2/3-fun-0-', 4, 124}.
  {label,123}.
    {line,[{location,"error_SUITE.erl",447}]}.
    {func_info,{atom,error_SUITE},{atom,'-run2/3-fun-0-'},4}.
  {label,124}.
    {'%',{var_info,{x,3},[{type,{t_atom,[dont_write_beam]}}]}}.
    {test,is_tuple,{f,127},[{x,0}]}.
    {test,test_arity,{f,127},[{x,0},4]}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_tuple_element,{x,0},2,{x,5}}.
    {allocate,3,6}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'catch',{y,2},{f,125}}.
    {move,{x,2},{x,1}}.
    {move,{x,5},{x,2}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"error_SUITE.erl",448}]}.
    {call,4,{f,89}}. % run_test/4
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
    {call,1,{f,84}}. % filter/1
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
  {label,125}.
    {catch_end,{y,2}}.
    {get_tuple_element,{y,0},3,{x,1}}.
    {test,is_eq_exact,{f,126},[{x,0},{x,1}]}.
    {move,{y,1},{x,0}}.
    {deallocate,3}.
    return.
  {label,126}.
    {test_heap,6,2}.
    {get_tuple_element,{y,0},0,{x,2}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {trim,3,0}.
    {move,{literal,"~nTest ~p failed. Expected~n  ~p~nbut got~n  ~p~n"},{x,0}}.
    {line,[{scope,[0]},{location,"error_SUITE.erl",452}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {call_last,0,{f,114},0}. % fail/0
  {label,127}.
    {call_only,2,{f,136}}. % '-run2/3-inlined-0-'/2


{function, '-run/3-fun-0-', 4, 129}.
  {label,128}.
    {line,[{location,"error_SUITE.erl",430}]}.
    {func_info,{atom,error_SUITE},{atom,'-run/3-fun-0-'},4}.
  {label,129}.
    {'%',{var_info,{x,3},[{type,{t_atom,[dont_write_beam,write_beam]}}]}}.
    {test,is_tuple,{f,132},[{x,0}]}.
    {test,test_arity,{f,132},[{x,0},4]}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_tuple_element,{x,0},2,{x,5}}.
    {allocate,3,6}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'catch',{y,2},{f,130}}.
    {move,{x,2},{x,1}}.
    {move,{x,5},{x,2}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"error_SUITE.erl",431}]}.
    {call,4,{f,89}}. % run_test/4
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
  {label,130}.
    {catch_end,{y,2}}.
    {get_tuple_element,{y,0},3,{x,1}}.
    {test,is_eq_exact,{f,131},[{x,0},{x,1}]}.
    {move,{y,1},{x,0}}.
    {deallocate,3}.
    return.
  {label,131}.
    {test_heap,6,2}.
    {get_tuple_element,{y,0},0,{x,2}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {trim,3,0}.
    {move,{literal,"~nTest ~p failed. Expected~n  ~p~nbut got~n  ~p~n"},{x,0}}.
    {line,[{scope,[0]},{location,"error_SUITE.erl",435}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {call_last,0,{f,114},0}. % fail/0
  {label,132}.
    {call_only,2,{f,134}}. % '-run/3-inlined-0-'/2


{function, '-run/3-inlined-0-', 2, 134}.
  {label,133}.
    {line,[{location,"error_SUITE.erl",430}]}.
    {func_info,{atom,error_SUITE},{atom,'-run/3-inlined-0-'},2}.
  {label,134}.
    {jump,{f,133}}.


{function, '-run2/3-inlined-0-', 2, 136}.
  {label,135}.
    {line,[{location,"error_SUITE.erl",447}]}.
    {func_info,{atom,error_SUITE},{atom,'-run2/3-inlined-0-'},2}.
  {label,136}.
    {jump,{f,135}}.
