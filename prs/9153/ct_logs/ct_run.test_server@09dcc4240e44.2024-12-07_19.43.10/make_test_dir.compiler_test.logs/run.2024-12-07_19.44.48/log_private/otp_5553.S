{module, otp_5553}.  %% version = 0

{exports, [{handle_cast,2},
           {module_info,0},
           {module_info,1},
           {otp_5553,0},
           {test,0}]}.

{attributes, []}.

{labels, 18}.


{function, otp_5553, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     24}]}.
    {func_info,{atom,otp_5553},{atom,otp_5553},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, split_quoted_string, 1, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     27}]}.
    {func_info,{atom,otp_5553},{atom,split_quoted_string},1}.
  {label,4}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_integer,{32,114}},nil}}]}}.
    {get_hd,{x,0},{x,1}}.
    {test,is_eq_exact,{f,3},[{tr,{x,1},{t_integer,{32,114}}},{integer,34}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, test, 0, 6}.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     30}]}.
    {func_info,{atom,otp_5553},{atom,test},0}.
  {label,6}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,"test: split_quoted_string/1 - 5~n"},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     32}]}.
    {call_ext,1,{extfunc,io,format,1}}.
    {'try',{y,0},{f,7}}.
    {move,{literal,"foo \"bar\""},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     33}]}.
    {call,1,{f,4}}. % split_quoted_string/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,0}}.
    {move,{literal,{error,test_case_failed,ok}},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     34}]}.
    {call_ext_last,1,{extfunc,erlang,throw,1},1}.
  {label,7}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,9},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,9},[{x,1},{atom,does_not_start_with_quote}]}.
    {move,{literal,"test: split_quoted_string/1 - 6~n"},{x,0}}.
    {line,[{scope,[3]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     40}]}.
    {call_ext,1,{extfunc,io,format,1}}.
    {'try',{y,0},{f,8}}.
    {move,{literal,"\"foo "},{x,0}}.
    {line,[{scope,[3]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     41}]}.
    {call,1,{f,4}}. % split_quoted_string/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,0}}.
    {move,{literal,{error,test_case_failed,ok}},{x,0}}.
    {line,[{scope,[3]},
           {location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     42}]}.
    {call_ext_last,1,{extfunc,erlang,throw,1},1}.
  {label,8}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,9},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,9},[{x,1},{atom,no_end_quote}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,9}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, handle_cast, 2, 11}.
  {label,10}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     70}]}.
    {func_info,{atom,otp_5553},{atom,handle_cast},2}.
  {label,11}.
    {test,is_tagged_tuple,{f,10},[{x,0},3,{atom,in_sync}]}.
    {allocate_heap,0,3,2}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,2},{list,[{atom,sync_tag_my},{x,0}]}}.
    {bif,get,
         {f,0},
         [{tr,{x,2},{t_tuple,2,true,#{1 => {t_atom,[sync_tag_my]}}}}],
         {x,2}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     71}]}.
    {call,3,{f,13}}. % cancel_locker/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     72}]}.
    {badrecord,{atom,ok}}.


{function, cancel_locker, 3, 13}.
  {label,12}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5553.erl",
                     82}]}.
    {func_info,{atom,otp_5553},{atom,cancel_locker},3}.
  {label,13}.
    {move,{atom,ok},{x,0}}.
    return.


{function, module_info, 0, 15}.
  {label,14}.
    {line,[]}.
    {func_info,{atom,otp_5553},{atom,module_info},0}.
  {label,15}.
    {move,{atom,otp_5553},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 17}.
  {label,16}.
    {line,[]}.
    {func_info,{atom,otp_5553},{atom,module_info},1}.
  {label,17}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5553},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
