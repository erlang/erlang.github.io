{module, beam_compiler_9}.  %% version = 0

{exports, [{beam_compiler_9,0},
           {compile,2},
           {module_info,0},
           {module_info,1},
           {test,0}]}.

{attributes, []}.

{labels, 22}.


{function, beam_compiler_9, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     24}]}.
    {func_info,{atom,beam_compiler_9},{atom,beam_compiler_9},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, test, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     27}]}.
    {func_info,{atom,beam_compiler_9},{atom,test},0}.
  {label,4}.
    {allocate,0,0}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     28}]}.
    {call,0,{f,17}}. % failures/0
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[test]},nil}}]}}.
    {move,{literal,[test]},{x,0}}.
    {call_last,1,{f,6},0}. % compile_files/1


{function, compile_files, 1, 6}.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     31}]}.
    {func_info,{atom,beam_compiler_9},{atom,compile_files},1}.
  {label,6}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[test]},nil}}]}}.
    {test,is_nonempty_list,{f,10},[{x,0}]}.
    {allocate_heap,1,4,1}.
    {get_tl,{x,0},{y,0}}.
    {bif,self,{f,0},[],{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,test},{x,0},{x,2}}.
    {move,{atom,compile},{x,1}}.
    {move,{atom,beam_compiler_9},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     32}]}.
    {call_ext,3,{extfunc,erlang,spawn,3}}.
  {label,7}.
    {loop_rec,{f,9},{x,0}}.
    {test,is_eq_exact,{f,8},[{x,0},{atom,done}]}.
    remove_message.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,6},1}. % compile_files/1
  {label,8}.
    {loop_rec_end,{f,7}}.
  {label,9}.
    {wait,{f,7}}.
  {label,10}.
    {move,{atom,done},{x,0}}.
    return.


{function, compile, 2, 12}.
  {label,11}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     49}]}.
    {func_info,{atom,beam_compiler_9},{atom,compile},2}.
  {label,12}.
    {allocate_heap,5,2,2}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{literal,"Compiling:  ~s~n"},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     50}]}.
    {call_ext,2,{extfunc,io,fwrite,2}}.
    {move,{atom,runtime},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     51}]}.
    {call_ext,1,{extfunc,erlang,statistics,1}}.
    {move,{atom,wall_clock},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     52}]}.
    {call_ext,1,{extfunc,erlang,statistics,1}}.
    {move,{atom,reductions},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     53}]}.
    {call_ext,1,{extfunc,erlang,statistics,1}}.
    {move,{y,4},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     54}]}.
    {call_ext,1,{extfunc,c,c,1}}.
    {move,{x,0},{y,4}}.
    {move,{atom,runtime},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     55}]}.
    {call_ext,1,{extfunc,erlang,statistics,1}}.
    {move,{x,0},{y,2}}.
    {test,is_tuple,{f,15},[{x,0}]}.
    {test,test_arity,{f,15},[{x,0},2]}.
    {move,{atom,wall_clock},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     56}]}.
    {call_ext,1,{extfunc,erlang,statistics,1}}.
    {move,{x,0},{y,1}}.
    {test,is_tuple,{f,14},[{x,0}]}.
    {test,test_arity,{f,14},[{x,0},2]}.
    {move,{atom,reductions},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     57}]}.
    {call_ext,1,{extfunc,erlang,statistics,1}}.
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,13},[{x,0}]}.
    {test,test_arity,{f,13},[{x,0},2]}.
    {test_heap,2,0}.
    {put_list,{y,4},nil,{x,1}}.
    {move,{y,0},{y,4}}.
    {trim,1,4}.
    {move,{literal,"Result:     ~w~n"},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     58}]}.
    {call_ext,2,{extfunc,io,fwrite,2}}.
    {test_heap,2,0}.
    {get_tuple_element,{y,3},1,{x,0}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{y,0},{y,3}}.
    {trim,1,3}.
    {move,{literal,"Reductions: ~w~n"},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     59}]}.
    {call_ext,2,{extfunc,io,fwrite,2}}.
    {test_heap,2,0}.
    {get_tuple_element,{y,2},1,{x,0}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,1,2}.
    {move,{literal,"Time:       ~w~n"},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     60}]}.
    {call_ext,2,{extfunc,io,fwrite,2}}.
    {test_heap,2,0}.
    {get_tuple_element,{y,1},1,{x,0}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{literal,"Cpu time:   ~w~n"},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     61}]}.
    {call_ext,2,{extfunc,io,fwrite,2}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     62}]}.
    {call_ext,0,{extfunc,io,nl,0}}.
    {move,{atom,done},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     63}]}.
    send.
    {deallocate,1}.
    return.
  {label,13}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     57}]}.
    {badmatch,{y,0}}.
  {label,14}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     56}]}.
    {badmatch,{y,1}}.
  {label,15}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     55}]}.
    {badmatch,{y,2}}.


{function, failures, 0, 17}.
  {label,16}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_9.erl",
                     67}]}.
    {func_info,{atom,beam_compiler_9},{atom,failures},0}.
  {label,17}.
    {move,{literal,[test]},{x,0}}.
    return.


{function, module_info, 0, 19}.
  {label,18}.
    {line,[]}.
    {func_info,{atom,beam_compiler_9},{atom,module_info},0}.
  {label,19}.
    {move,{atom,beam_compiler_9},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 21}.
  {label,20}.
    {line,[]}.
    {func_info,{atom,beam_compiler_9},{atom,module_info},1}.
  {label,21}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_9},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
