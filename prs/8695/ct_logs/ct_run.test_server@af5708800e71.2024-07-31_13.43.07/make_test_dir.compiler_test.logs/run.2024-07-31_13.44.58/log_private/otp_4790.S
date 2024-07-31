{module, otp_4790}.  %% version = 0

{exports, [{module_info,0},{module_info,1},{otp_4790,0}]}.

{attributes, []}.

{labels, 17}.


{function, otp_4790, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_4790.erl",
                     24}]}.
    {func_info,{atom,otp_4790},{atom,otp_4790},0}.
  {label,2}.
    {call_only,0,{f,4}}. % pan_test/0


{function, pan_test, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_4790.erl",
                     44}]}.
    {func_info,{atom,otp_4790},{atom,pan_test},0}.
  {label,4}.
    {move,{integer,3},{x,1}}.
    {move,{integer,13},{x,0}}.
    {call_only,2,{f,6}}. % pan/2


{function, pan, 2, 6}.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_4790.erl",
                     47}]}.
    {func_info,{atom,otp_4790},{atom,pan},2}.
  {label,6}.
    {'%',{var_info,{x,0},[{type,{t_integer,{13,13}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{3,3}}}]}}.
    {allocate,0,0}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_4790.erl",
                     48}]}.
    {call,0,{f,8}}. % current/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_atom,[view]},
                                     2 => {t_float,{2.0,2.0}},
                                     3 => {t_float,{9.75,9.75}},
                                     4 => {t_float,{25.3,25.3}}}}}]}}.
    {move,{atom,pan_speed},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_4790.erl",
                     49}]}.
    {call,1,{f,12}}. % pref_get_value/1
    {'%',{var_info,{x,0},[{type,{t_integer,{32,32}}}]}}.
    {move,{literal,{view,4.163815789473684,9.250657894736841,25.3}},{x,0}}.
    {call_last,1,{f,10},0}. % set_current/1


{function, current, 0, 8}.
  {label,7}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_4790.erl",
                     56}]}.
    {func_info,{atom,otp_4790},{atom,current},0}.
  {label,8}.
    {move,{literal,{view,2.0,9.75,25.3}},{x,0}}.
    return.


{function, set_current, 1, 10}.
  {label,9}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_4790.erl",
                     59}]}.
    {func_info,{atom,otp_4790},{atom,set_current},1}.
  {label,10}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 => {t_atom,[view]},
                       2 => {t_float,{4.163815789473684,4.163815789473684}},
                       3 => {t_float,{9.250657894736841,9.250657894736841}},
                       4 => {t_float,{25.3,25.3}}}}}]}}.
    {move,{literal,[4.163815789473684,9.250657894736841,25.3]},{x,1}}.
    {move,{literal,"X=~p Y=~p D=~p\n"},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_4790.erl",
                     61}]}.
    {call_ext_only,2,{extfunc,io,format,2}}.


{function, pref_get_value, 1, 12}.
  {label,11}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_4790.erl",
                     63}]}.
    {func_info,{atom,otp_4790},{atom,pref_get_value},1}.
  {label,12}.
    {'%',{var_info,{x,0},[{type,{t_atom,[pan_speed]}}]}}.
    {move,{integer,32},{x,0}}.
    return.


{function, module_info, 0, 14}.
  {label,13}.
    {line,[]}.
    {func_info,{atom,otp_4790},{atom,module_info},0}.
  {label,14}.
    {move,{atom,otp_4790},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 16}.
  {label,15}.
    {line,[]}.
    {func_info,{atom,otp_4790},{atom,module_info},1}.
  {label,16}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_4790},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
