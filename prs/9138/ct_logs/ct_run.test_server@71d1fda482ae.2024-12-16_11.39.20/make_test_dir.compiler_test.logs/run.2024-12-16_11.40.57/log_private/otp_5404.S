{module, otp_5404}.  %% version = 0

{exports, [{get_bar,0},
           {module_info,0},
           {module_info,1},
           {otp_5404,0},
           {x,1},
           {y,0}]}.

{attributes, []}.

{labels, 14}.


{function, otp_5404, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5404.erl",
                     25}]}.
    {func_info,{atom,otp_5404},{atom,otp_5404},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, y, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5404.erl",
                     30}]}.
    {func_info,{atom,otp_5404},{atom,y},0}.
  {label,4}.
    {move,{literal,{foo,1,[]}},{x,0}}.
    {call_only,1,{f,8}}. % x/1


{function, get_bar, 0, 6}.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5404.erl",
                     33}]}.
    {func_info,{atom,otp_5404},{atom,get_bar},0}.
  {label,6}.
    {move,{literal,{bar,1,[]}},{x,0}}.
    return.


{function, x, 1, 8}.
  {label,7}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5404.erl",
                     36}]}.
    {func_info,{atom,otp_5404},{atom,x},1}.
  {label,8}.
    {test,is_tagged_tuple,{f,9},[{x,0},3,{atom,foo}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5404.erl",
                     38}]}.
    {call,0,{f,6}}. % get_bar/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[bar]},
                                     2 => {t_integer,{1,1}},
                                     3 => nil}}}]}}.
    {test_heap,3,0}.
    {get_tuple_element,{y,0},1,{y,0}}.
    {put_tuple2,{x,0},{list,[{atom,bar},{y,0}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5404.erl",
                     41}]}.
    {call_ext,1,{extfunc,mnesia,dirty_delete,1}}.
    {test_heap,5,0}.
    {put_tuple2,{x,0},{list,[{atom,payment},{y,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,1}.
    return.
  {label,9}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5404.erl",
                     37}]}.
    {badmatch,{x,0}}.


{function, module_info, 0, 11}.
  {label,10}.
    {line,[]}.
    {func_info,{atom,otp_5404},{atom,module_info},0}.
  {label,11}.
    {move,{atom,otp_5404},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 13}.
  {label,12}.
    {line,[]}.
    {func_info,{atom,otp_5404},{atom,module_info},1}.
  {label,13}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5404},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
