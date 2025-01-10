{module, beam_disasm_SUITE}.  %% version = 0

{exports, [{all,0},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {module_info,0},
           {module_info,1},
           {stripped,1},
           {suite,0}]}.

{attributes, []}.

{labels, 28}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_disasm_SUITE.erl",29}]}.
    {func_info,{atom,beam_disasm_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_disasm_SUITE.erl",31}]}.
    {func_info,{atom,beam_disasm_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[stripped]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_disasm_SUITE.erl",34}]}.
    {func_info,{atom,beam_disasm_SUITE},{atom,groups},0}.
  {label,6}.
    {move,nil,{x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_disasm_SUITE.erl",37}]}.
    {func_info,{atom,beam_disasm_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_disasm_SUITE.erl",40}]}.
    {func_info,{atom,beam_disasm_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_disasm_SUITE.erl",43}]}.
    {func_info,{atom,beam_disasm_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"beam_disasm_SUITE.erl",46}]}.
    {func_info,{atom,beam_disasm_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, stripped, 1, 16}.
  {label,15}.
    {line,[{location,"beam_disasm_SUITE.erl",50}]}.
    {func_info,{atom,beam_disasm_SUITE},{atom,stripped},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"beam_disasm_SUITE.erl",51}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{y,2}}.
    {move,{literal,"tmp.erl"},{x,1}}.
    {line,[{location,"beam_disasm_SUITE.erl",52}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,1}}.
    {move,{y,2},{x,0}}.
    {move,{literal,"tmp.beam"},{x,1}}.
    {line,[{location,"beam_disasm_SUITE.erl",53}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {move,{literal,<<"-module(tmp).\n-export([tmp/0]).\ntmp()->ok.\n">>},
          {x,1}}.
    {line,[{location,"beam_disasm_SUITE.erl",55}]}.
    {call_ext,2,{extfunc,file,write_file,2}}.
    {test,is_eq_exact,{f,23},[{x,0},{atom,ok}]}.
    {test_heap,5,0}.
    {put_tuple2,{x,0},{list,[{atom,outdir},{y,2}]}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"beam_disasm_SUITE.erl",57}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_eq_exact,{f,22},[{x,0},{literal,{ok,tmp}}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_disasm_SUITE.erl",59}]}.
    {call_ext,1,{extfunc,beam_disasm,file,1}}.
    {test,is_tagged_tuple,{f,21},[{x,0},6,{atom,beam_file}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,21},[{x,1},{atom,tmp}]}.
    {get_tuple_element,{x,0},5,{x,1}}.
    {test,is_nonempty_list,{f,21},[{x,1}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_list,{f,20},[{x,1}]}.
    {get_tuple_element,{x,0},4,{x,0}}.
    {test,is_list,{f,19},[{x,0}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_disasm_SUITE.erl",62}]}.
    {call_ext,1,{extfunc,beam_lib,strip,1}}.
    {test,is_tagged_tuple,{f,18},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,18},[{x,1},2,{atom,tmp}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"beam_disasm_SUITE.erl",64}]}.
    {call_ext,1,{extfunc,beam_disasm,file,1}}.
    {test,is_tagged_tuple,{f,17},[{x,0},6,{atom,beam_file}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,17},[{x,1},{atom,tmp}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_nil,{f,17},[{x,1}]}.
    {get_tuple_element,{x,0},4,{x,1}}.
    {test,is_nil,{f,17},[{x,1}]}.
    {get_tuple_element,{x,0},5,{x,1}}.
    {test,is_nonempty_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {line,[{location,"beam_disasm_SUITE.erl",63}]}.
    {badmatch,{x,0}}.
  {label,18}.
    {line,[{location,"beam_disasm_SUITE.erl",62}]}.
    {badmatch,{x,0}}.
  {label,19}.
    {line,[{location,"beam_disasm_SUITE.erl",61}]}.
    {badmatch,{atom,false}}.
  {label,20}.
    {line,[{location,"beam_disasm_SUITE.erl",60}]}.
    {badmatch,{atom,false}}.
  {label,21}.
    {line,[{location,"beam_disasm_SUITE.erl",58}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"beam_disasm_SUITE.erl",56}]}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{location,"beam_disasm_SUITE.erl",55}]}.
    {badmatch,{x,0}}.


{function, module_info, 0, 25}.
  {label,24}.
    {line,[]}.
    {func_info,{atom,beam_disasm_SUITE},{atom,module_info},0}.
  {label,25}.
    {move,{atom,beam_disasm_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 27}.
  {label,26}.
    {line,[]}.
    {func_info,{atom,beam_disasm_SUITE},{atom,module_info},1}.
  {label,27}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_disasm_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
