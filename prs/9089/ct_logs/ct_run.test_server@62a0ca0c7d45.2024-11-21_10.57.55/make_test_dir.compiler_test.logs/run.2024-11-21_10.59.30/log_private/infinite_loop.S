{module, infinite_loop}.  %% version = 0

{exports, [{bar,0},
           {barfoo,0},
           {baz,0},
           {bc_infinite_loop,0},
           {foo,0},
           {foobar,0},
           {infinite_loop,0},
           {module_info,0},
           {module_info,1},
           {mutually_recursive,1}]}.

{attributes, []}.

{labels, 23}.


{function, infinite_loop, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/infinite_loop.erl",
                     4}]}.
    {func_info,{atom,infinite_loop},{atom,infinite_loop},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, foo, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/infinite_loop.erl",
                     9}]}.
    {func_info,{atom,infinite_loop},{atom,foo},0}.
  {label,4}.
    {call_only,0,{f,6}}. % bar/0


{function, bar, 0, 6}.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/infinite_loop.erl",
                     12}]}.
    {func_info,{atom,infinite_loop},{atom,bar},0}.
  {label,6}.
    {call_only,0,{f,8}}. % baz/0


{function, baz, 0, 8}.
  {label,7}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/infinite_loop.erl",
                     15}]}.
    {func_info,{atom,infinite_loop},{atom,baz},0}.
  {label,8}.
    {call_only,0,{f,6}}. % bar/0


{function, foobar, 0, 10}.
  {label,9}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/infinite_loop.erl",
                     18}]}.
    {func_info,{atom,infinite_loop},{atom,foobar},0}.
  {label,10}.
    {call_only,0,{f,12}}. % barfoo/0


{function, barfoo, 0, 12}.
  {label,11}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/infinite_loop.erl",
                     21}]}.
    {func_info,{atom,infinite_loop},{atom,barfoo},0}.
  {label,12}.
    {call_only,0,{f,12}}. % barfoo/0


{function, bc_infinite_loop, 0, 14}.
  {label,13}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/infinite_loop.erl",
                     26}]}.
    {func_info,{atom,infinite_loop},{atom,bc_infinite_loop},0}.
  {label,14}.
    {allocate,0,0}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {call_last,1,{f,16},0}. % mutually_recursive/1


{function, mutually_recursive, 1, 16}.
  {label,15}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/infinite_loop.erl",
                     29}]}.
    {func_info,{atom,infinite_loop},{atom,mutually_recursive},1}.
  {label,16}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {call_only,2,{f,22}}. % '-mutually_recursive/1-lc$^0/1-0-'/2


{function, module_info, 0, 18}.
  {label,17}.
    {line,[]}.
    {func_info,{atom,infinite_loop},{atom,module_info},0}.
  {label,18}.
    {move,{atom,infinite_loop},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 20}.
  {label,19}.
    {line,[]}.
    {func_info,{atom,infinite_loop},{atom,module_info},1}.
  {label,20}.
    {move,{x,0},{x,1}}.
    {move,{atom,infinite_loop},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-mutually_recursive/1-lc$^0/1-0-', 2, 22}.
  {label,21}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/infinite_loop.erl",
                     32}]}.
    {func_info,{atom,infinite_loop},
               {atom,'-mutually_recursive/1-lc$^0/1-0-'},
               2}.
  {label,22}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,nil,{x,0}}.
    return.
