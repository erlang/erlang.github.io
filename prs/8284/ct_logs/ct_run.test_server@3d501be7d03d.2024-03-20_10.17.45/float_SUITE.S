{module, float_SUITE}.  %% version = 0

{exports, [{all,0},
           {bif_calls,1},
           {end_per_group,2},
           {end_per_suite,1},
           {exception_signals,1},
           {fconv_line_numbers,1},
           {float_followed_by_guard,1},
           {float_zero,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {math_functions,1},
           {mixed_float_and_int,1},
           {module_info,0},
           {module_info,1},
           {pending,1},
           {subtract_number_type,1},
           {suite,0}]}.

{attributes, []}.

{labels, 152}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"float_SUITE.erl",29}]}.
    {func_info,{atom,float_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"float_SUITE.erl",31}]}.
    {func_info,{atom,float_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[pending,bif_calls,math_functions,float_zero,
                    mixed_float_and_int,subtract_number_type,
                    float_followed_by_guard,fconv_line_numbers,
                    exception_signals]},
          {x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"float_SUITE.erl",37}]}.
    {func_info,{atom,float_SUITE},{atom,groups},0}.
  {label,6}.
    {move,nil,{x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"float_SUITE.erl",40}]}.
    {func_info,{atom,float_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,float_SUITE},{x,0}}.
    {line,[{location,"float_SUITE.erl",41}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"float_SUITE.erl",44}]}.
    {func_info,{atom,float_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"float_SUITE.erl",47}]}.
    {func_info,{atom,float_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"float_SUITE.erl",50}]}.
    {func_info,{atom,float_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, float_zero, 1, 16}.
  {label,15}.
    {line,[{location,"float_SUITE.erl",53}]}.
    {func_info,{atom,float_SUITE},{atom,float_zero},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {allocate,0,0}.
    {move,{float,0.0},{x,0}}.
    {line,[{location,"float_SUITE.erl",54}]}.
    {call,1,{f,20}}. % match_on_zero_and_to_binary/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {test,is_eq_exact,
          {f,18},
          [{tr,{x,0},{t_bitstring,64,false}},{literal,<<0,0,0,0,0,0,0,0>>}]}.
    {move,{float,-0.0},{x,0}}.
    {line,[{location,"float_SUITE.erl",55}]}.
    {call,1,{f,20}}. % match_on_zero_and_to_binary/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {test,is_eq_exact,
          {f,17},
          [{tr,{x,0},{t_bitstring,64,false}},{literal,<<128,0,0,0,0,0,0,0>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,17}.
    {badmatch,{x,0}}.
  {label,18}.
    {line,[{location,"float_SUITE.erl",54}]}.
    {badmatch,{x,0}}.


{function, match_on_zero_and_to_binary, 1, 20}.
  {label,19}.
    {line,[{location,"float_SUITE.erl",58}]}.
    {func_info,{atom,float_SUITE},{atom,match_on_zero_and_to_binary},1}.
  {label,20}.
    {'%',{var_info,{x,0},[{type,{t_float,{0.0,0.0}}}]}}.
    {test,is_eq_exact,{f,19},[{tr,{x,0},{t_float,{0.0,0.0}}},{float,0.0}]}.
    {bs_create_bin,{f,0},
                   0,1,64,
                   {x,0},
                   {list,[{atom,float},
                          1,1,nil,
                          {tr,{x,0},{t_float,{0.0,0.0}}},
                          {integer,64}]}}.
    return.


{function, pending, 1, 22}.
  {label,21}.
    {line,[{location,"float_SUITE.erl",63}]}.
    {func_info,{atom,float_SUITE},{atom,pending},1}.
  {label,22}.
    {test,is_list,{f,21},[{x,0}]}.
    {allocate,1,0}.
    {'catch',{y,0},{f,23}}.
    {move,{float,1.1e300},{x,1}}.
    {move,{float,3.14e300},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"float_SUITE.erl",64}]}.
    {call,3,{f,30}}. % float_mul/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,23}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,24},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,24},[{x,1},2,{atom,badarith}]}.
    {jump,{f,25}}.
  {label,24}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,expected_exception},{x,0}]}}.
    {line,[{scope,[0]},{location,"float_SUITE.erl",66}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,25}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,[0]},{location,"float_SUITE.erl",68}]}.
    {call,1,{f,28}}. % float_sub/1
    {'%',{var_info,{x,0},[{type,{t_float,{0.0,0.0}}}]}}.
    {test,is_eq_exact,{f,26},[{tr,{x,0},{t_float,{0.0,0.0}}},{float,0.0}]}.
    {deallocate,1}.
    return.
  {label,26}.
    {badmatch,{x,0}}.


{function, float_sub, 1, 28}.
  {label,27}.
    {line,[{location,"float_SUITE.erl",70}]}.
    {func_info,{atom,float_SUITE},{atom,float_sub},1}.
  {label,28}.
    {'%',{var_info,{x,0},[{type,{t_float,{2.0,2.0}}}]}}.
    {move,{float,0.0},{x,0}}.
    return.


{function, float_mul, 3, 30}.
  {label,29}.
    {line,[{location,"float_SUITE.erl",73}]}.
    {func_info,{atom,float_SUITE},{atom,float_mul},3}.
  {label,30}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_float,{1.1e300,1.1e300}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_float,{3.14e300,3.14e300}}}]}}.
    {test,is_eq_exact,{f,31},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,31}.
    {fmove,{float,1.1e300},{fr,0}}.
    {fmove,{float,3.14e300},{fr,1}}.
    {line,[{location,"float_SUITE.erl",76}]}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {move,{integer,0},{x,0}}.
    {call_only,3,{f,30}}. % float_mul/3


{function, bif_calls, 1, 33}.
  {label,32}.
    {line,[{location,"float_SUITE.erl",81}]}.
    {func_info,{atom,float_SUITE},{atom,bif_calls},1}.
  {label,33}.
    {test,is_list,{f,32},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {'catch',{y,4},{f,34}}.
    {move,{float,1.7},{x,1}}.
    {move,{float,2.0},{x,0}}.
    {line,[{location,"float_SUITE.erl",82}]}.
    {call,2,{f,45}}. % bad_arith/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_float,any},
                                     2 => {t_float,{3.4,3.4}}}}}]}}.
  {label,34}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,43},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,43},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,3},{f,35}}.
    {move,nil,{x,1}}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,"\t\n"},{location,"float_SUITE.erl",83}]}.
    {call,2,{f,51}}. % bad_arith_again/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,35}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,42},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,42},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,2},{f,36}}.
    {move,nil,{x,1}}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,[7,8]},{location,"float_SUITE.erl",84}]}.
    {call,2,{f,47}}. % bad_arith_xor/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,36}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,41},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,41},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,1},{f,37}}.
    {move,nil,{x,1}}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,[5,6]},{location,"float_SUITE.erl",85}]}.
    {call,2,{f,49}}. % bad_arith_hd/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,37}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,40},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,40},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,0},{f,38}}.
    {move,{float,1.7},{x,1}}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,[3,4]},{location,"float_SUITE.erl",86}]}.
    {call,2,{f,53}}. % bad_negate/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_float,any},
                                     2 => {t_float,{-1.7,-1.7}}}}}]}}.
  {label,38}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,39},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,39},[{x,1},2,{atom,badarith}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,39}.
    {line,[{scope,[0]},{location,"float_SUITE.erl",86}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{scope,[2]},{location,"float_SUITE.erl",85}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {line,[{scope,[4]},{location,"float_SUITE.erl",84}]}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{scope,[6]},{location,"float_SUITE.erl",83}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{scope,"\b"},{location,"float_SUITE.erl",82}]}.
    {badmatch,{x,0}}.


{function, bad_arith, 2, 45}.
  {label,44}.
    {line,[{location,"float_SUITE.erl",89}]}.
    {func_info,{atom,float_SUITE},{atom,bad_arith},2}.
  {label,45}.
    {'%',{var_info,{x,0},[{type,{t_float,{2.0,2.0}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_float,{1.7,1.7}}}]}}.
    {fmove,{float,2.0},{fr,0}}.
    {fmove,{float,1.7e308},{fr,1}}.
    {line,[{location,"float_SUITE.erl",90}]}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {fmove,{float,1.0},{fr,1}}.
    {line,[{location,"float_SUITE.erl",91}]}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,3},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{x,0},{float,3.4}]}}.
    return.


{function, bad_arith_xor, 2, 47}.
  {label,46}.
    {line,[{location,"float_SUITE.erl",96}]}.
    {func_info,{atom,float_SUITE},{atom,bad_arith_xor},2}.
  {label,47}.
    {'%',{var_info,{x,0},[{type,{t_float,{2.0,2.0}}}]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {fmove,{float,2.0},{fr,0}}.
    {fmove,{float,1.7e308},{fr,1}}.
    {line,[{location,"float_SUITE.erl",97}]}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {bif,'xor',{f,0},[nil,{atom,true}],{x,0}}.
    return.


{function, bad_arith_hd, 2, 49}.
  {label,48}.
    {line,[{location,"float_SUITE.erl",101}]}.
    {func_info,{atom,float_SUITE},{atom,bad_arith_hd},2}.
  {label,49}.
    {'%',{var_info,{x,0},[{type,{t_float,{2.0,2.0}}}]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {fmove,{float,2.0},{fr,0}}.
    {fmove,{float,1.7e308},{fr,1}}.
    {line,[{location,"float_SUITE.erl",102}]}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {bif,hd,{f,0},[nil],{x,0}}.
    return.


{function, bad_arith_again, 2, 51}.
  {label,50}.
    {line,[{location,"float_SUITE.erl",106}]}.
    {func_info,{atom,float_SUITE},{atom,bad_arith_again},2}.
  {label,51}.
    {'%',{var_info,{x,0},[{type,{t_float,{2.0,2.0}}}]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {fmove,{float,2.0},{fr,0}}.
    {fmove,{float,1.7e308},{fr,1}}.
    {line,[{location,"float_SUITE.erl",107}]}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {bif,element,{f,0},[{integer,1},nil],{x,0}}.
    return.


{function, bad_negate, 2, 53}.
  {label,52}.
    {line,[{location,"float_SUITE.erl",111}]}.
    {func_info,{atom,float_SUITE},{atom,bad_negate},2}.
  {label,53}.
    {'%',{var_info,{x,0},[{type,{t_float,{2.0,2.0}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_float,{1.7,1.7}}}]}}.
    {fmove,{float,2.0},{fr,0}}.
    {fmove,{float,1.7e308},{fr,1}}.
    {line,[{location,"float_SUITE.erl",112}]}.
    {bif,fmul,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {fmove,{float,1.0},{fr,1}}.
    {line,[{location,"float_SUITE.erl",113}]}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,3},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{x,0},{float,-1.7}]}}.
    return.


{function, math_functions, 1, 55}.
  {label,54}.
    {line,[{location,"float_SUITE.erl",125}]}.
    {func_info,{atom,float_SUITE},{atom,math_functions},1}.
  {label,55}.
    {test,is_list,{f,54},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"float_SUITE.erl",146}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,tan,1}}.
    {test,is_eq_exact,{f,94},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",147}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{integer,1},{x,1}}.
    {call_ext,2,{extfunc,math,atan2,2}}.
    {test,is_eq_exact,{f,93},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",148}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,sinh,1}}.
    {test,is_eq_exact,{f,92},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",149}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,cosh,1}}.
    {test,is_eq_exact,{f,91},[{tr,{x,0},{t_float,any}},{float,1.0}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",150}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,tanh,1}}.
    {test,is_eq_exact,{f,90},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {move,{integer,2},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",151}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,log2,1}}.
    {test,is_eq_exact,{f,89},[{tr,{x,0},{t_float,any}},{float,1.0}]}.
    {move,{integer,10},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",152}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,log10,1}}.
    {test,is_eq_exact,{f,88},[{tr,{x,0},{t_float,any}},{float,1.0}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",153}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,exp,1}}.
    {test,is_eq_exact,{f,87},[{tr,{x,0},{t_float,any}},{float,1.0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",154}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,log,1}}.
    {test,is_eq_exact,{f,86},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",155}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,asin,1}}.
    {test,is_eq_exact,{f,85},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",156}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,acos,1}}.
    {test,is_eq_exact,{f,84},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {'try',{y,4},{f,56}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",157}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,asinh,1}}.
    {test,is_eq_exact,{f,72},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {try_end,{y,4}}.
    {jump,{f,57}}.
  {label,56}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,71},[{x,1},{atom,undef}]}.
  {label,57}.
    {'try',{y,4},{f,58}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[22,23]},{location,"float_SUITE.erl",158}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,acosh,1}}.
    {test,is_eq_exact,{f,73},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {try_end,{y,4}}.
    {jump,{f,59}}.
  {label,58}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,71},[{x,1},{atom,undef}]}.
  {label,59}.
    {'try',{y,4},{f,60}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[19,20]},{location,"float_SUITE.erl",159}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,atanh,1}}.
    {test,is_eq_exact,{f,74},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {try_end,{y,4}}.
    {jump,{f,61}}.
  {label,60}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,71},[{x,1},{atom,undef}]}.
  {label,61}.
    {'try',{y,4},{f,62}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[16,17]},{location,"float_SUITE.erl",160}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,erf,1}}.
    {test,is_eq_exact,{f,75},[{tr,{x,0},{t_float,any}},{float,0.0}]}.
    {try_end,{y,4}}.
    {jump,{f,63}}.
  {label,62}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,71},[{x,1},{atom,undef}]}.
  {label,63}.
    {'try',{y,4},{f,64}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[13,14]},{location,"float_SUITE.erl",161}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,erfc,1}}.
    {test,is_eq_exact,{f,76},[{tr,{x,0},{t_float,any}},{float,1.0}]}.
    {try_end,{y,4}}.
    {jump,{f,65}}.
  {label,64}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,71},[{x,1},{atom,undef}]}.
  {label,65}.
    {move,{float,5.4},{x,0}}.
    {line,[{scope,"\n\v"},{location,"float_SUITE.erl",165}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,floor,1}}.
    {test,is_eq_exact,{f,83},[{tr,{x,0},{t_float,any}},{float,5.0}]}.
    {move,{float,5.4},{x,0}}.
    {line,[{scope,"\n"},{location,"float_SUITE.erl",166}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call_ext,1,{extfunc,math,ceil,1}}.
    {test,is_eq_exact,{f,82},[{tr,{x,0},{t_float,any}},{float,6.0}]}.
    {'catch',{y,4},{f,66}}.
    {move,{float,0.0},{x,1}}.
    {move,{float,5.0},{x,0}}.
    {line,[{scope,"\n"},{location,"float_SUITE.erl",173}]}.
    {call_ext,2,{extfunc,math,fmod,2}}.
  {label,66}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,81},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,81},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,3},{f,67}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,"\t\n"},{location,"float_SUITE.erl",176}]}.
    {call_ext,1,{extfunc,math,fnurfla,1}}.
  {label,67}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,80},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,80},[{x,1},2,{atom,undef}]}.
    {'catch',{y,2},{f,68}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[7,8]},{location,"float_SUITE.erl",177}]}.
    {call_ext,2,{extfunc,math,fnurfla,2}}.
  {label,68}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,79},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,79},[{x,1},2,{atom,undef}]}.
    {'catch',{y,1},{f,69}}.
    {line,[{location,"float_SUITE.erl",178}]}.
    {gc_bif,float,{f,0},0,[{atom,kalle}],{x,0}}.
  {label,69}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,78},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,78},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,70}}.
    {line,[{location,"float_SUITE.erl",179}]}.
    {gc_bif,'/',{f,0},0,[{atom,name},{integer,1}],{x,0}}.
  {label,70}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,77},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,77},[{x,1},2,{atom,badarith}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,71}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,72}.
    {line,[{scope,[24]},{location,"float_SUITE.erl",157}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{scope,[21]},{location,"float_SUITE.erl",158}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{scope,[18]},{location,"float_SUITE.erl",159}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{scope,[15]},{location,"float_SUITE.erl",160}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{scope,"\f"},{location,"float_SUITE.erl",161}]}.
    {badmatch,{x,0}}.
  {label,77}.
    {line,[{scope,[0]},{location,"float_SUITE.erl",179}]}.
    {badmatch,{x,0}}.
  {label,78}.
    {line,[{scope,[2]},{location,"float_SUITE.erl",178}]}.
    {badmatch,{x,0}}.
  {label,79}.
    {line,[{scope,[4]},{location,"float_SUITE.erl",177}]}.
    {badmatch,{x,0}}.
  {label,80}.
    {line,[{scope,[6]},{location,"float_SUITE.erl",176}]}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{scope,"\b"},{location,"float_SUITE.erl",173}]}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{scope,"\n"},{location,"float_SUITE.erl",166}]}.
    {badmatch,{x,0}}.
  {label,83}.
    {line,[{scope,"\n"},{location,"float_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,84}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",156}]}.
    {badmatch,{x,0}}.
  {label,85}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",155}]}.
    {badmatch,{x,0}}.
  {label,86}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",154}]}.
    {badmatch,{x,0}}.
  {label,87}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",153}]}.
    {badmatch,{x,0}}.
  {label,88}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",152}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",151}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",150}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",149}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",147}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[25]},{location,"float_SUITE.erl",146}]}.
    {badmatch,{x,0}}.


{function, mixed_float_and_int, 1, 96}.
  {label,95}.
    {line,[{location,"float_SUITE.erl",182}]}.
    {func_info,{atom,float_SUITE},{atom,mixed_float_and_int},1}.
  {label,96}.
    {test,is_list,{f,95},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,23},{x,1}}.
    {move,{integer,5},{x,2}}.
    {move,{integer,77},{x,0}}.
    {line,[{location,"float_SUITE.erl",183}]}.
    {call,3,{f,103}}. % pc/3
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,101},[{tr,{x,0},{t_float,any}},{float,129.0}]}.
    {'catch',{y,1},{f,97}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{scope,[4]},{location,"float_SUITE.erl",185}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call,1,{f,105}}. % mixed_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,97}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,100},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,100},[{x,1},2,{atom,badarith}]}.
    {'catch',{y,0},{f,98}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[3,4]},{location,"float_SUITE.erl",186}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call,1,{f,105}}. % mixed_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,98}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,99},[{x,1}]}.
    {test,test_arity,{f,99},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,99},[{x,1},{literal,{badarg,0.023809523809523808}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,99}.
    {line,[{scope,[0]},{location,"float_SUITE.erl",186}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,[2]},{location,"float_SUITE.erl",185}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,[4]},{location,"float_SUITE.erl",183}]}.
    {badmatch,{x,0}}.


{function, pc, 3, 103}.
  {label,102}.
    {line,[{location,"float_SUITE.erl",190}]}.
    {func_info,{atom,float_SUITE},{atom,pc},3}.
  {label,103}.
    {'%',{var_info,{x,0},[{type,{t_integer,{77,77}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{23,23}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{5,5}}}]}}.
    {line,[{location,"float_SUITE.erl",191}]}.
    {fconv,{integer,119},{fr,0}}.
    {fmove,{float,10.0},{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    return.


{function, mixed_1, 1, 105}.
  {label,104}.
    {line,[{location,"float_SUITE.erl",193}]}.
    {func_info,{atom,float_SUITE},{atom,mixed_1},1}.
  {label,105}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {test,is_tuple,
          {f,106},
          [{tr,{x,0},
               {t_union,{t_atom,[false,gurka,true]},
                        none,
                        {t_number,{0,42}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        none}}]}.
    {jump,{f,107}}.
  {label,106}.
    {fmove,{float,1.0},{fr,0}}.
    {line,[{location,"float_SUITE.erl",194}]}.
    {fconv,{tr,{x,0},
               {t_union,{t_atom,[false,gurka,true]},
                        none,
                        {t_number,{0,42}},
                        none,none}},
           {fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
  {label,107}.
    {fmove,{float,1.0},{fr,0}}.
    {line,[{location,"float_SUITE.erl",195}]}.
    {fconv,{tr,{x,0},
               {t_union,none,none,
                        {t_number,{0,42}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        none}},
           {fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,3},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, subtract_number_type, 1, 109}.
  {label,108}.
    {line,[{location,"float_SUITE.erl",197}]}.
    {func_info,{atom,float_SUITE},{atom,subtract_number_type},1}.
  {label,109}.
    {test,is_list,{f,108},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"float_SUITE.erl",198}]}.
    {call,1,{f,112}}. % fact/1
    {'%',{var_info,{x,0},[{type,{t_integer,any}}]}}.
    {test,is_eq_exact,{f,110},[{tr,{x,0},{t_integer,any}},{integer,120}]}.
    {deallocate,0}.
    return.
  {label,110}.
    {badmatch,{x,0}}.


{function, fact, 1, 112}.
  {label,111}.
    {line,[{location,"float_SUITE.erl",200}]}.
    {func_info,{atom,float_SUITE},{atom,fact},1}.
  {label,112}.
    {'%',{var_info,{x,0},[{type,{t_integer,{5,5}}}]}}.
    {move,{integer,1},{x,1}}.
    {call_only,2,{f,114}}. % fact/2


{function, fact, 2, 114}.
  {label,113}.
    {line,[{location,"float_SUITE.erl",203}]}.
    {func_info,{atom,float_SUITE},{atom,fact},2}.
  {label,114}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',5}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {select_val,{tr,{x,0},{t_integer,{'-inf',5}}},
                {f,116},
                {list,[{integer,0},{f,115},{integer,1},{f,115}]}}.
  {label,115}.
    {move,{x,1},{x,0}}.
    return.
  {label,116}.
    {line,[{location,"float_SUITE.erl",205}]}.
    {gc_bif,'-',{f,0},2,[{tr,{x,0},{t_integer,{'-inf',5}}},{integer,1}],{x,2}}.
    {gc_bif,'*',
            {f,0},
            3,
            [{tr,{x,1},{t_integer,any}},{tr,{x,0},{t_integer,{'-inf',5}}}],
            {x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,114}}. % fact/2


{function, float_followed_by_guard, 1, 118}.
  {label,117}.
    {line,[{location,"float_SUITE.erl",207}]}.
    {func_info,{atom,float_SUITE},{atom,float_followed_by_guard},1}.
  {label,118}.
    {test,is_list,{f,117},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,1},{x,1}}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"float_SUITE.erl",208}]}.
    {call,2,{f,122}}. % ffbg_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,120},[{x,0},{atom,true}]}.
    {move,{integer,5},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"float_SUITE.erl",209}]}.
    {call,2,{f,122}}. % ffbg_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,119},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,119}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,120}.
    {line,[{location,"float_SUITE.erl",208}]}.
    {badmatch,{atom,false}}.


{function, ffbg_1, 2, 122}.
  {label,121}.
    {line,[{location,"float_SUITE.erl",212}]}.
    {func_info,{atom,float_SUITE},{atom,ffbg_1},2}.
  {label,122}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,5}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{1,5}}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"float_SUITE.erl",217}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {fconv,{tr,{x,0},
               {t_union,{t_atom,[false,gurka,true]},
                        none,
                        {t_number,{0,42}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        none}},
           {fr,0}}.
    {fmove,{float,1.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {gc_bif,'-',
            {f,123},
            1,
            [{tr,{y,0},{t_integer,{1,5}}},{tr,{x,0},{t_float,any}}],
            {x,1}}.
    {test,is_lt,{f,123},[{float,0.0},{tr,{x,1},{t_float,any}}]}.
    {move,{atom,true},{x,0}}.
    {deallocate,1}.
    return.
  {label,123}.
    {gc_bif,'-',
            {f,124},
            1,
            [{tr,{y,0},{t_integer,{1,5}}},{tr,{x,0},{t_float,any}}],
            {x,0}}.
    {test,is_ge,{f,124},[{float,0.0},{tr,{x,0},{t_float,any}}]}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,124}.
    {line,[{location,"float_SUITE.erl",218}]}.
    if_end.


{function, fconv_line_numbers, 1, 126}.
  {label,125}.
    {line,[{location,"float_SUITE.erl",225}]}.
    {func_info,{atom,float_SUITE},{atom,fconv_line_numbers},1}.
  {label,126}.
    {test,is_list,{f,125},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"float_SUITE.erl",226}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {call,1,{f,128}}. % fconv_line_numbers_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, fconv_line_numbers_1, 1, 128}.
  {label,127}.
    {line,[{location,"float_SUITE.erl",229}]}.
    {func_info,{atom,float_SUITE},{atom,fconv_line_numbers_1},1}.
  {label,128}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {fmove,{float,10.0},{fr,0}}.
    {allocate,1,1}.
    {'catch',{y,0},{f,129}}.
    {line,[{location,"float_SUITE.erl",231}]}.
    {fconv,{tr,{x,0},
               {t_union,{t_atom,[false,gurka,true]},
                        none,
                        {t_number,{0,42}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        none}},
           {fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
  {label,129}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,131},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,131},[{x,1},2,{atom,badarith}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},2}.
    {make_fun3,{f,150},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {line,[{scope,[1,2]},{location,"float_SUITE.erl",232}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,130},[{x,0},{atom,true}]}.
    {deallocate,1}.
    return.
  {label,130}.
    {line,[{scope,[0]},{location,"float_SUITE.erl",232}]}.
    {badmatch,{atom,false}}.
  {label,131}.
    {line,[{scope,[0]},{location,"float_SUITE.erl",231}]}.
    {badmatch,{x,0}}.


{function, exception_signals, 1, 133}.
  {label,132}.
    {line,[{location,"float_SUITE.erl",240}]}.
    {func_info,{atom,float_SUITE},{atom,exception_signals},1}.
  {label,133}.
    {test,is_list,{f,132},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,25},{x,0}}.
    {line,[{location,"float_SUITE.erl",241}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,3,{f,139}}. % exception_signals_1/3
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,137},[{tr,{x,0},{t_float,any}},{float,2.0}]}.
    {move,{integer,25},{x,0}}.
    {line,[{location,"float_SUITE.erl",242}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,false},{x,0}}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,3,{f,139}}. % exception_signals_1/3
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,136},[{tr,{x,0},{t_float,any}},{float,2.0}]}.
    {move,{float,25.0},{x,0}}.
    {line,[{location,"float_SUITE.erl",243}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,true},{x,0}}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,3,{f,139}}. % exception_signals_1/3
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,135},[{tr,{x,0},{t_float,any}},{float,2.0}]}.
    {move,{float,25.0},{x,0}}.
    {line,[{location,"float_SUITE.erl",244}]}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,false},{x,0}}.
    {call,1,{f,144}}. % id/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,3,{f,139}}. % exception_signals_1/3
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,134},[{tr,{x,0},{t_float,any}},{float,2.0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,134}.
    {badmatch,{x,0}}.
  {label,135}.
    {line,[{location,"float_SUITE.erl",243}]}.
    {badmatch,{x,0}}.
  {label,136}.
    {line,[{location,"float_SUITE.erl",242}]}.
    {badmatch,{x,0}}.
  {label,137}.
    {line,[{location,"float_SUITE.erl",241}]}.
    {badmatch,{x,0}}.


{function, exception_signals_1, 3, 139}.
  {label,138}.
    {line,[{location,"float_SUITE.erl",247}]}.
    {func_info,{atom,float_SUITE},{atom,exception_signals_1},3}.
  {label,139}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    {'%',{var_info,{x,2},[{type,nil}]}}.
    {line,[{location,"float_SUITE.erl",248}]}.
    {fconv,{tr,{x,0},
               {t_union,{t_atom,[false,gurka,true]},
                        none,
                        {t_number,{0,42}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        none}},
           {fr,0}}.
    {fmove,{float,25.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},2}.
    {fmove,{fr,0},{x,2}}.
    {select_val,
        {tr,{x,1},
            {t_union,
                {t_atom,[false,gurka,true]},
                none,
                {t_number,{0,42}},
                [{{3,{t_atom,[a]}},
                  {t_tuple,3,true,
                      #{1 => {t_atom,[a]},
                        2 => {t_atom,[b]},
                        3 => {t_atom,[c]}}}}],
                none}},
        {f,142},
        {list,[{atom,false},{f,141},{atom,true},{f,140}]}}.
  {label,140}.
    {line,[{location,"float_SUITE.erl",250}]}.
    {fconv,{tr,{x,0},{t_number,{0,42}}},{fr,0}}.
    {fmove,{float,2.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
  {label,141}.
    {fmove,{x,2},{fr,0}}.
    {fmove,{float,1.0},{fr,1}}.
    {line,[{location,"float_SUITE.erl",253}]}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    return.
  {label,142}.
    {line,[{location,"float_SUITE.erl",249}]}.
    {case_end,{x,1}}.


{function, id, 1, 144}.
  {label,143}.
    {line,[{location,"float_SUITE.erl",255}]}.
    {func_info,{atom,float_SUITE},{atom,id},1}.
  {label,144}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[false,gurka,true]},
                     none,
                     {t_number,{0,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     none}}]}}.
    return.


{function, module_info, 0, 146}.
  {label,145}.
    {line,[]}.
    {func_info,{atom,float_SUITE},{atom,module_info},0}.
  {label,146}.
    {move,{atom,float_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 148}.
  {label,147}.
    {line,[]}.
    {func_info,{atom,float_SUITE},{atom,module_info},1}.
  {label,148}.
    {move,{x,0},{x,1}}.
    {move,{atom,float_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-fconv_line_numbers_1/1-fun-0-', 1, 150}.
  {label,149}.
    {line,[{location,"float_SUITE.erl",232}]}.
    {func_info,{atom,float_SUITE},{atom,'-fconv_line_numbers_1/1-fun-0-'},1}.
  {label,150}.
    {test,is_tagged_tuple,{f,151},[{x,0},4,{atom,float_SUITE}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,151},[{x,1},{atom,fconv_line_numbers_1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,151},[{x,1},{integer,1}]}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_nonempty_list,{f,151},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,151},[{x,1},2,{atom,file}]}.
    {test,is_nonempty_list,{f,151},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,151},[{x,1},2,{atom,line}]}.
    {test,is_nil,{f,151},[{x,0}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {bif,'=:=',{f,0},[{x,0},{integer,231}],{x,0}}.
    return.
  {label,151}.
    {move,{atom,false},{x,0}}.
    return.
