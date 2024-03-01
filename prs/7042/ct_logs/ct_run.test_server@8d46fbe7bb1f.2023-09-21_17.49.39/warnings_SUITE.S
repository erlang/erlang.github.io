{module, warnings_SUITE}.  %% version = 0

{exports, [{all,0},
           {bad_apply,1},
           {bad_arith,1},
           {bin_construction,1},
           {bin_opt_info,1},
           {bit_syntax,1},
           {bool_cases,1},
           {comprehensions,1},
           {eep49,1},
           {effect,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {files,1},
           {groups,0},
           {guard,1},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {inline_list_funcs,1},
           {inlining,1},
           {maps,1},
           {maps_bin_opt_info,1},
           {module_info,0},
           {module_info,1},
           {no_warnings,1},
           {opportunistic_warnings,1},
           {pattern,1},
           {pattern2,1},
           {pattern3,1},
           {pattern4,1},
           {recv_opt_info,1},
           {redundant_boolean_clauses,1},
           {suite,0},
           {tuple_calls,1},
           {underscore,1}]}.

{attributes, []}.

{labels, 174}.


{function, init_per_testcase, 2, 2}.
  {label,1}.
    {line,[{location,"warnings_SUITE.erl",49}]}.
    {func_info,{atom,warnings_SUITE},{atom,init_per_testcase},2}.
  {label,2}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 4}.
  {label,3}.
    {line,[{location,"warnings_SUITE.erl",52}]}.
    {func_info,{atom,warnings_SUITE},{atom,end_per_testcase},2}.
  {label,4}.
    {move,{atom,ok},{x,0}}.
    return.


{function, suite, 0, 6}.
  {label,5}.
    {line,[{location,"warnings_SUITE.erl",55}]}.
    {func_info,{atom,warnings_SUITE},{atom,suite},0}.
  {label,6}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,2}}]},
          {x,0}}.
    return.


{function, all, 0, 8}.
  {label,7}.
    {line,[{location,"warnings_SUITE.erl",59}]}.
    {func_info,{atom,warnings_SUITE},{atom,all},0}.
  {label,8}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 10}.
  {label,9}.
    {line,[{location,"warnings_SUITE.erl",62}]}.
    {func_info,{atom,warnings_SUITE},{atom,groups},0}.
  {label,10}.
    {allocate,0,0}.
    {line,[{location,"warnings_SUITE.erl",63}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[pattern,pattern2,pattern3,pattern4,guard,
                                 bad_arith,bool_cases,bad_apply,files,effect,
                                 bin_opt_info,bin_construction,comprehensions,
                                 maps,maps_bin_opt_info,
                                 redundant_boolean_clauses,underscore,
                                 no_warnings,bit_syntax,inlining,tuple_calls,
                                 recv_opt_info,opportunistic_warnings,eep49,
                                 inline_list_funcs]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 12}.
  {label,11}.
    {line,[{location,"warnings_SUITE.erl",73}]}.
    {func_info,{atom,warnings_SUITE},{atom,init_per_suite},1}.
  {label,12}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,warnings_SUITE},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",74}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 14}.
  {label,13}.
    {line,[{location,"warnings_SUITE.erl",77}]}.
    {func_info,{atom,warnings_SUITE},{atom,end_per_suite},1}.
  {label,14}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 16}.
  {label,15}.
    {line,[{location,"warnings_SUITE.erl",80}]}.
    {func_info,{atom,warnings_SUITE},{atom,init_per_group},2}.
  {label,16}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 18}.
  {label,17}.
    {line,[{location,"warnings_SUITE.erl",83}]}.
    {func_info,{atom,warnings_SUITE},{atom,end_per_group},2}.
  {label,18}.
    {move,{x,1},{x,0}}.
    return.


{function, pattern, 1, 20}.
  {label,19}.
    {line,[{location,"warnings_SUITE.erl",87}]}.
    {func_info,{atom,warnings_SUITE},{atom,pattern},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{pattern,
                 <<"%% Just a comment here.\n              f(a={glurf,2}=A) -> A.\n\n              g(A) ->\n                 case A of\n                   a=[_|_] -> error;\n                   Other -> true\n                 end.\n\n              foo(X) ->\n                 a = {nisse,b} = X.\n           ">>,
                 [warn_unused_vars],
                 {warnings,
                     [{{2,15},v3_core,{nomatch,pattern}},
                      {{6,20},v3_core,{nomatch,pattern}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",107}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,21},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,21}.
    {badmatch,{x,0}}.


{function, pattern2, 1, 23}.
  {label,22}.
    {line,[{location,"warnings_SUITE.erl",110}]}.
    {func_info,{atom,warnings_SUITE},{atom,pattern2},1}.
  {label,23}.
    {test,is_list,{f,22},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,
        {literal,
            [{pattern2,
                 <<"f(A) -> ok;\n                f(B) -> error.\n                t(A, B, C) ->\n                  case {A,B,C} of\n                    {a,B} -> ok;\n                    {_,B} -> ok\n                  end.\n                c(E) ->\n                  case E of\n                    _ -> ok;\n                    _ -> ok\n                  end.\n           ">>,
                 [nowarn_unused_vars],
                 {warnings,
                     [{{2,17},sys_core_fold,{nomatch,{shadow,1,{f,1}}}},
                      {{4,19},sys_core_fold,{nomatch,no_clause}},
                      {{5,21},sys_core_fold,{nomatch,clause_type}},
                      {{6,21},sys_core_fold,{nomatch,clause_type}},
                      {{11,21},sys_core_fold,{nomatch,{shadow,10}}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",138}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,25},[{x,0}]}.
    {move,
        {literal,
            [{pattern2,
                 <<"f(A) -> ok;\n                f(B) -> error.\n                t(A, B, C) ->\n                  case {A,B,C} of\n                    {a,B} -> ok;\n                    {_,B} -> ok\n                  end.\n                c(E) ->\n                  case E of\n                    _ -> ok;\n                    _ -> ok\n                  end.\n           ">>,
                 [nowarn_unused_vars,no_copt],
                 {warnings,
                     [{{2,17},beam_core_to_ssa,{nomatch,{shadow,1}}},
                      {{11,21},beam_core_to_ssa,{nomatch,{shadow,10}}}]}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"warnings_SUITE.erl",149}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,24},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,24}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{location,"warnings_SUITE.erl",138}]}.
    {badmatch,{x,0}}.


{function, pattern3, 1, 27}.
  {label,26}.
    {line,[{location,"warnings_SUITE.erl",152}]}.
    {func_info,{atom,warnings_SUITE},{atom,pattern3},1}.
  {label,27}.
    {test,is_list,{f,26},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{pattern3,
                 <<"\n            f({A,_}) -> {ok,A};\n            f([_|_]=B) -> {ok,B};\n            f({urk,nisse}) -> urka_glurka.\n            word(<<\"AND\">>) -> <<\"and\">>;\n            word(<<\"AS\">>) -> <<\"as\">>;\n            word(<<\"A\">>) -> <<\"a\">>;\n            word(<<\"AS\">>) -> <<\"as\">>.\n           ">>,
                 [nowarn_unused_vars],
                 {warnings,
                     [{{4,13},beam_core_to_ssa,{nomatch,{shadow,2}}},
                      {{8,13},beam_core_to_ssa,{nomatch,{shadow,6}}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",170}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,28},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,28}.
    {badmatch,{x,0}}.


{function, pattern4, 1, 30}.
  {label,29}.
    {line,[{location,"warnings_SUITE.erl",174}]}.
    {func_info,{atom,warnings_SUITE},{atom,pattern4},1}.
  {label,30}.
    {test,is_list,{f,29},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{pattern4,
                 <<"\n             t() ->\n               case true of \n                 false -> a;\n                 true -> b\n               end.\n\n             fi() ->\n               case true of \n                 false -> a;\n                 false -> b\n               end,\n               case true of \n                 true -> a;\n                 true -> b;\n                 X -> X\n               end,\n               case boolean of \n                 true -> a;\n                 false -> b\n               end.\n             int() ->\n               case 42 of\n                 [a|b] -> no;\n                 <<1>> -> no;\n                 <<X>> -> no;\n                 17 -> no;\n                 [] -> no;\n                 a -> no;\n                 {a,b,c} -> no\n               end.\n             tuple() ->\n               case {x,y,z} of\n                 \"xyz\" -> no;\n                 [a|b] -> no;\n                 <<1>> -> no;\n                 <<X>> -> no;\n                 17 -> no;\n                 [] -> no;\n                 a -> no;\n                 {a,b,c} -> no;\n                 {x,y} -> no\n               end.\n           ">>,
                 [nowarn_unused_vars],
                 {warnings,
                     [{{9,16},sys_core_fold,{nomatch,no_clause}},
                      {{11,18},sys_core_fold,{nomatch,shadow}},
                      {{15,18},sys_core_fold,{nomatch,shadow}},
                      {{18,16},sys_core_fold,{nomatch,no_clause}},
                      {{23,16},sys_core_fold,{nomatch,no_clause}},
                      {{33,16},sys_core_fold,{nomatch,no_clause}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",231}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,31},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,31}.
    {badmatch,{x,0}}.


{function, guard, 1, 33}.
  {label,32}.
    {line,[{location,"warnings_SUITE.erl",235}]}.
    {func_info,{atom,warnings_SUITE},{atom,guard},1}.
  {label,33}.
    {test,is_list,{f,32},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{guard,
                 <<"\n              t(A, B) when element(x, dum) -> ok.\n\n              tt(A, B) when 1 == 2 -> ok.\n\n              ttt() when element(x, dum) -> ok.\n\n              t4(T, F) when element({F}, T) -> ok.\n              t5(T, F) when element([F], T) -> ok.\n              t6(Pos, F) when element(Pos, [F]) -> ok.\n              t7(Pos) when element(Pos, []) -> ok.\n           ">>,
                 [nowarn_unused_vars],
                 {warnings,
                     [{{2,28},
                       sys_core_fold,
                       {failed,{eval_failure,{erlang,element,2},badarg}}},
                      {{4,15},sys_core_fold,{nomatch,guard}},
                      {{4,15},sys_core_fold,{nomatch,no_clause}},
                      {{6,26},
                       sys_core_fold,
                       {failed,{eval_failure,{erlang,element,2},badarg}}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",265}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,34},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,34}.
    {badmatch,{x,0}}.


{function, bad_arith, 1, 36}.
  {label,35}.
    {line,[{location,"warnings_SUITE.erl",269}]}.
    {func_info,{atom,warnings_SUITE},{atom,bad_arith},1}.
  {label,36}.
    {test,is_list,{f,35},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{bad_arith,
                 <<"f() ->\n                if\n                  a + 3 > 3 -> ok;\n                 true -> error\n              end.\n\n              g(A) ->\n                if\n                  is_integer(A), a + 3 > 3 -> ok;\n                  a + 3 > 42, is_integer(A) -> ok;\n                 true -> error\n              end.\n\n              h(A) ->\n                a + 3 + A.\n           ">>,
                 [],
                 {warnings,
                     [{{3,21},
                       sys_core_fold,
                       {failed,{eval_failure,{erlang,'+',2},badarith}}},
                      {{9,36},
                       sys_core_fold,
                       {failed,{eval_failure,{erlang,'+',2},badarith}}},
                      {{10,21},
                       sys_core_fold,
                       {failed,{eval_failure,{erlang,'+',2},badarith}}},
                      {{15,19},
                       sys_core_fold,
                       {failed,{eval_failure,{erlang,'+',2},badarith}}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",306}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,37},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,37}.
    {badmatch,{x,0}}.


{function, bool_cases, 1, 39}.
  {label,38}.
    {line,[{location,"warnings_SUITE.erl",309}]}.
    {func_info,{atom,warnings_SUITE},{atom,bool_cases},1}.
  {label,39}.
    {test,is_list,{f,38},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{bool_cases,
                 <<"\n            f(A, B) ->\n               case A > B of\n                 true -> true;\n                 false -> false;\n                 Other -> {error,not_bool}\n               end.\n\n            g(A, B) ->\n               case A =/= B of\n                 false -> false;\n                 true -> true;\n                 Other -> {error,not_bool}\n               end.\n\n            h(Bool) ->\n               case not Bool of\n                 maybe -> strange;\n                 false -> ok;\n                 true -> error\n               end.\n           ">>,
                 [nowarn_unused_vars],
                 {warnings,
                     [{{6,18},sys_core_fold,{nomatch,shadow}},
                      {{13,18},sys_core_fold,{nomatch,shadow}},
                      {{18,18},sys_core_fold,{nomatch,clause_type}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",338}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,40},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,40}.
    {badmatch,{x,0}}.


{function, bad_apply, 1, 42}.
  {label,41}.
    {line,[{location,"warnings_SUITE.erl",341}]}.
    {func_info,{atom,warnings_SUITE},{atom,bad_apply},1}.
  {label,42}.
    {test,is_list,{f,41},[{x,0}]}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,
        {literal,
            [{bad_apply,
                 <<"\n             t(1) -> 42:42();\n             t(2) -> erlang:42();\n             t(3) -> 42:start();\n             t(4) -> []:start();\n             t(5) -> erlang:[]();\n             t(6) -> [a,b,c]().\n           ">>,
                 [],
                 {warnings,
                     [{{2,22},beam_core_to_ssa,{failed,bad_call}},
                      {{3,22},beam_core_to_ssa,{failed,bad_call}},
                      {{4,22},beam_core_to_ssa,{failed,bad_call}},
                      {{5,22},beam_core_to_ssa,{failed,bad_call}},
                      {{6,22},beam_core_to_ssa,{failed,bad_call}},
                      {{7,22},sys_core_fold,{failed,bad_call}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",360}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,46},[{x,0}]}.
    {'try',{y,0},{f,43}}.
    {move,{integer,42},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,erlang},{x,0}}.
    {line,[{scope,[3]},{location,"warnings_SUITE.erl",363}]}.
    {call_ext,3,{extfunc,erlang,apply,3}}.
    {try_end,{y,0}}.
    {move,{atom,should_fail},{x,0}}.
    {line,[{scope,[3]},{location,"warnings_SUITE.erl",364}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
    {jump,{f,44}}.
  {label,43}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,45},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,45},[{x,1},{atom,badarg}]}.
  {label,44}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,45}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,46}.
    {line,[{scope,[3]},{location,"warnings_SUITE.erl",360}]}.
    {badmatch,{x,0}}.


{function, files, 1, 48}.
  {label,47}.
    {line,[{location,"warnings_SUITE.erl",370}]}.
    {func_info,{atom,warnings_SUITE},{atom,files},1}.
  {label,48}.
    {test,is_list,{f,47},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{files_1,
                 <<"\n              -file(\"file1\", 14).\n\n              t1() ->\n                  1/0.\n\n              -file(\"file2\", 7).\n\n              t2() ->\n                  1/0.\n           ">>,
                 [],
                 {warnings,
                     [{"file1",
                       [{{17,20},
                         sys_core_fold,
                         {failed,{eval_failure,{erlang,'/',2},badarith}}}]},
                      {"file2",
                       [{{10,20},
                         sys_core_fold,
                         {failed,
                             {eval_failure,{erlang,'/',2},badarith}}}]}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",394}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,49},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,49}.
    {badmatch,{x,0}}.


{function, effect, 1, 51}.
  {label,50}.
    {line,[{location,"warnings_SUITE.erl",398}]}.
    {func_info,{atom,warnings_SUITE},{atom,effect},1}.
  {label,51}.
    {test,is_list,{f,50},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{no_warnings,
                 <<"\n             m1(X, Sz) ->\n                if\n                  Sz =:= 0 -> X = 0;\n                  true -> ok\n                end,\n                ok.\n\n             m2(X, Sz) ->\n                if\n                  Sz =:= 0 -> X = {a,Sz};\n                  true -> ok\n                end,\n                ok.\n\n             m3(X, Sz) ->\n                if\n                  Sz =:= 0 -> X = [a,Sz];\n                  true -> ok\n                end,\n                ok.\n\n             m4(X, Sz, Var) ->\n                if\n                  Sz =:= 0 -> X = Var;\n                  true -> ok\n                end,\n                ok.\n\n             m5(X, Sz) ->\n                if\n                   Sz =:= 0 -> X = {a,b,c};\n                   true -> ok\n                end,\n                ok.\n\n             m6(X, Sz) ->\n                if\n                  Sz =:= 0 -> X = {a,Sz,[1,2,3]};\n                  true -> ok\n                end,\n                ok.\n\n             m7(X, Sz) ->\n                if\n                  Sz =:= 0 -> X = {a,Sz,[1,2,3],abs(Sz)};\n                  true -> ok\n                end,\n                ok.\n\n             m8(A, B) ->\n                case {A,B} of\n                  V -> V\n                end,\n                ok.\n\n             m9(Bs) ->\n                [{B,ok} = {B,foo:bar(B)} || B <- Bs],\n                ok.\n\n             m10(ConfigTableSize) ->\n               case ConfigTableSize of\n                 apa ->\n                   CurrentConfig = {id(camel_phase3),id(sms)},\n                   case CurrentConfig of\n                     {apa, bepa} -> ok;\n                     _ -> ok\n                   end\n               end,\n               ok.\n\n             id(I) -> I.\n             ">>,
                 [],[]},
             {basic,
                 <<"\n             t(X) ->\n               case X of\n                warn_lc ->\n                    [is_integer(Z) || Z <- [1,2,3]];\n                warn_lc_2 ->\n                    [{error,Z} || Z <- [1,2,3]];\n                warn_lc_3 ->\n                    [{error,abs(Z)} || Z <- [1,2,3]];\n                no_warn_lc ->\n                    [put(last_integer, Z) || Z <- [1,2,3]]; %no warning\n                unused_tuple_literal ->\n                    {a,b,c};\n                unused_list_literal ->\n                    [1,2,3,4];\n                unused_integer ->\n                    42;\n                unused_arith ->\n                    X*X\n               end,\n               ok.\n             ">>,
                 [],
                 {warnings,
                     [{{5,22},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,is_integer,1}}}},
                      {{7,22},sys_core_fold,{ignored,useless_building}},
                      {{9,22},sys_core_fold,{ignored,useless_building}},
                      {{9,29},sys_core_fold,{ignored,{result,{erlang,abs,1}}}},
                      {{13,21},sys_core_fold,{ignored,useless_building}},
                      {{15,21},sys_core_fold,{ignored,useless_building}},
                      {{17,21},sys_core_fold,{ignored,useless_building}},
                      {{19,22},
                       sys_core_fold,
                       {ignored,{result,{erlang,'*',2}}}}]}},
             {nested,
                 <<"\n             t(X) ->\n               case X of\n                nested ->\n                    [{ok,node(),module:foo(),self(),[time(),date()],time()},\n                     is_integer(X)];\n                unused_bit_syntax ->\n                    <<X:8>>;\n                unused_fun ->\n                    fun() -> {ok,X} end;\n                unused_named_fun ->\n                    fun F(0) -> 1;\n                        F(N) -> N*F(N-1)\n                    end;\n                unused_atom ->\n                    ignore;                             %no warning\n                unused_nil ->\n                    [];                                 %no warning\n                comp_op ->\n                    X =:= 2;\n                cookie ->\n                    erlang:get_cookie();\n                result_ignore ->\n                    _ = list_to_integer(X);\n                warn_lc_4 ->\n                    %% No warning because of assignment to _.\n                    [_ = abs(Z) || Z <- [1,2,3]]\n               end,\n               ok.\n             ">>,
                 [],
                 {warnings,
                     [{{5,21},sys_core_fold,{ignored,useless_building}},
                      {{5,26},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,node,0}}}},
                      {{5,46},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,self,0}}}},
                      {{5,54},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,time,0}}}},
                      {{5,61},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,date,0}}}},
                      {{5,69},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,time,0}}}},
                      {{6,22},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,is_integer,1}}}},
                      {{8,21},sys_core_fold,{ignored,useless_building}},
                      {{10,21},sys_core_fold,{ignored,useless_building}},
                      {{12,21},sys_core_fold,{ignored,useless_building}},
                      {{20,23},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,'=:=',2}}}},
                      {{22,21},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,get_cookie,0}}}}]}},
             {seq,
                 <<"\n             t(T) ->\n               [ {a,b,T} ],  [ {x,y,T} ],\n               ok.\n             ">>,
                 [],
                 {warnings,
                     [{{3,16},sys_core_fold,{ignored,useless_building}},
                      {{3,30},sys_core_fold,{ignored,useless_building}}]}},
             {propagated_literal,
                 <<"\n            foo(X) ->\n                Y = [$.],\n                %% There must not be a warning for constructing a term that\n                %% is never used.\n                fun() -> X = Y ++ [$.] end(),\n                ok.\n             ">>,
                 [],[]}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",578}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,52},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,52}.
    {badmatch,{x,0}}.


{function, bin_opt_info, 1, 54}.
  {label,53}.
    {line,[{location,"warnings_SUITE.erl",581}]}.
    {func_info,{atom,warnings_SUITE},{atom,bin_opt_info},1}.
  {label,54}.
    {test,is_list,{f,53},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,2},{f,55}}.
    {move,{literal,[bin_opt_info]},{x,2}}.
    {move,{literal,<<"\n             t1(Bin) ->\n               case Bin of\n                 _ when byte_size(Bin) > 20 -> erlang:error(too_long);\n                 <<_,T/binary>> -> t1(T);\n                 <<>> -> ok\n             end.\n\n             %% We use a tail in a BIF instruction, remote call, function\n             %% return, and an optimizable tail call for better coverage.\n             t2(<<A,B,T/bytes>>) ->\n                 if\n                     A > B -> t2(T);\n                     A =< B -> T\n                 end;\n             t2(<<_,T/bytes>>) when byte_size(T) < 4 ->\n                 foo;\n             t2(<<_,T/bytes>>) ->\n                 split_binary(T, 4).\n           ">>},
          {x,1}}.
    {line,[{location,"warnings_SUITE.erl",603}]}.
    {call,3,{f,121}}. % run_test/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warnings]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warnings]}}}}],
                     none}}]}}.
  {label,55}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,60},[{x,0},2,{atom,warnings}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,60},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,60},[{x,2}]}.
    {test,test_arity,{f,60},[{x,2},3]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{integer,5}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{atom,beam_ssa_bsm}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,60},[{x,2},2,{atom,unsuitable_call}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_tuple,{f,60},[{x,2}]}.
    {test,test_arity,{f,60},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{literal,{b_local,{b_literal,t1},1}}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_tagged_tuple,{f,60},[{x,2},2,{atom,used_before_match}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_tagged_tuple,{f,60},[{x,2},5,{atom,b_set}]}.
    {get_tuple_element,{x,2},3,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{literal,{bif,byte_size}}]}.
    {get_tuple_element,{x,2},4,{x,2}}.
    {test,is_nonempty_list,{f,60},[{x,2}]}.
    {get_tl,{x,2},{x,2}}.
    {test,is_nil,{f,60},[{x,2}]}.
    {test,is_nonempty_list,{f,60},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,60},[{x,2}]}.
    {test,test_arity,{f,60},[{x,2},3]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{integer,5}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{atom,beam_ssa_bsm}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,60},[{x,2},3,{atom,binary_created}]}.
    {test,is_nonempty_list,{f,60},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,60},[{x,2}]}.
    {test,test_arity,{f,60},[{x,2},3]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{integer,11}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{atom,beam_ssa_bsm}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,60},[{x,2},3,{atom,binary_created}]}.
    {test,is_nonempty_list,{f,60},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,60},
          [{x,2},{literal,{13,beam_ssa_bsm,context_reused}}]}.
    {test,is_nonempty_list,{f,60},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,60},[{x,2}]}.
    {test,test_arity,{f,60},[{x,2},3]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{integer,16}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{atom,beam_ssa_bsm}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,60},[{x,2},3,{atom,binary_created}]}.
    {test,is_nonempty_list,{f,60},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,
        {f,60},
        [{x,2},
         {literal,
             {19,beam_ssa_bsm,
              {remote_call,
                  {b_remote,
                      {b_literal,erlang},
                      {b_literal,split_binary},
                      2}}}}]}.
    {test,is_nonempty_list,{f,60},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,60},[{x,2}]}.
    {test,test_arity,{f,60},[{x,2},3]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{integer,19}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,60},[{x,3},{atom,beam_ssa_bsm}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,60},[{x,2},3,{atom,binary_created}]}.
    {test,is_nil,{f,60},[{x,1}]}.
    {'catch',{y,1},{f,56}}.
    {move,{literal,<<"\n             t1(Bin) ->\n               case Bin of\n                 _ when byte_size(Bin) > 20 -> erlang:error(too_long);\n                 <<_,T/binary>> -> t1(T);\n                 <<>> -> ok\n             end.\n\n             %% We use a tail in a BIF instruction, remote call, function\n             %% return, and an optimizable tail call for better coverage.\n             t2(<<A,B,T/bytes>>) ->\n                 if\n                     A > B -> t2(T);\n                     A =< B -> T\n                 end;\n             t2(<<_,T/bytes>>) when byte_size(T) < 4 ->\n                 foo;\n             t2(<<_,T/bytes>>) ->\n                 split_binary(T, 4).\n           ">>},
          {x,1}}.
    {move,nil,{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[4]},{location,"warnings_SUITE.erl",625}]}.
    {call,3,{f,121}}. % run_test/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warnings]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warnings]}}}}],
                     none}}]}}.
  {label,56}.
    {catch_end,{y,1}}.
    {test,is_nil,{f,59},[{x,0}]}.
    {'catch',{y,0},{f,57}}.
    {move,{literal,[bin_opt_info]},{x,1}}.
    {move,
     {literal,
      [{attribute,0,module,nolocation_binary},
       {attribute,0,export,[{t1,1}]},
       {function,0,t1,1,
        [{clause,0,
          [{var,0,'Bin'}],
          [],
          [{'case',0,
            {var,0,'Bin'},
            [{clause,0,
              [{var,0,'_'}],
              [[{op,0,'>',
                 {call,0,{atom,0,byte_size},[{var,0,'Bin'}]},
                 {integer,0,20}}]],
              [{call,0,
                {remote,0,{atom,0,erlang},{atom,0,error}},
                [{atom,0,too_long}]}]},
             {clause,0,
              [{bin,0,
                [{bin_element,0,{var,0,'_'},default,default},
                 {bin_element,0,{var,0,'T'},default,[binary]}]}],
              [],
              [{call,0,{atom,0,t1},[{var,0,'T'}]}]},
             {clause,0,[{bin,0,[]}],[],[{atom,0,ok}]}]}]}]}]},
     {x,0}}.
    {line,[{scope,[2]},{location,"warnings_SUITE.erl",655}]}.
    {call,2,{f,126}}. % run_forms/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,
                                   {t_tuple,1,false,#{}},
                                   none}}]}}.
  {label,57}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,58},[{x,0},2,{atom,warnings}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,58},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,58},[{x,2},3,{atom,none}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,58},[{x,3},{atom,beam_ssa_bsm}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,58},[{x,2},2,{atom,unsuitable_call}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_tuple,{f,58},[{x,2}]}.
    {test,test_arity,{f,58},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,58},[{x,3},{literal,{b_local,{b_literal,t1},1}}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_tagged_tuple,{f,58},[{x,2},2,{atom,used_before_match}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_tagged_tuple,{f,58},[{x,2},5,{atom,b_set}]}.
    {get_tuple_element,{x,2},3,{x,3}}.
    {test,is_eq_exact,{f,58},[{x,3},{literal,{bif,byte_size}}]}.
    {get_tuple_element,{x,2},4,{x,2}}.
    {test,is_nonempty_list,{f,58},[{x,2}]}.
    {get_tl,{x,2},{x,2}}.
    {test,is_nil,{f,58},[{x,2}]}.
    {test,is_nonempty_list,{f,58},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,58},[{x,2},3,{atom,none}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,58},[{x,3},{atom,beam_ssa_bsm}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,58},[{x,2},3,{atom,binary_created}]}.
    {test,is_nil,{f,58},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,58}.
    {line,[{scope,[0]},{location,"warnings_SUITE.erl",657}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{scope,[2]},{location,"warnings_SUITE.erl",625}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{scope,[4]},{location,"warnings_SUITE.erl",608}]}.
    {badmatch,{x,0}}.


{function, bin_construction, 1, 62}.
  {label,61}.
    {line,[{location,"warnings_SUITE.erl",667}]}.
    {func_info,{atom,warnings_SUITE},{atom,bin_construction},1}.
  {label,62}.
    {test,is_list,{f,61},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{bin_construction,
                 <<"\n             t() ->\n                 Bin = <<1,2,3>>,\n                 <<Bin:4/binary>>.\n\n             x() ->\n                 Bin = <<1,2,3,7:4>>,\n                 <<Bin/binary>>.\n\n             y() -> <<0.5>>.\n             z() -> <<99999999999999/utf8>>.\n             w() -> <<0.5:1/float>>.\n\n             a() ->\n               Size = bad_size,\n               <<1:Size>>.\n           ">>,
                 [],
                 {warnings,
                     [{{4,18},sys_core_fold,{failed,embedded_binary_size}},
                      {{8,18},sys_core_fold,{failed,{embedded_unit,8,28}}},
                      {{10,21},v3_core,{failed,bad_binary}},
                      {{11,21},sys_core_fold,{failed,bad_unicode}},
                      {{12,21},sys_core_fold,{failed,bad_float_size}},
                      {{16,18},
                       beam_core_to_ssa,
                       {failed,bad_segment_size}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",694}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,63},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,63}.
    {badmatch,{x,0}}.


{function, comprehensions, 1, 65}.
  {label,64}.
    {line,[{location,"warnings_SUITE.erl",698}]}.
    {func_info,{atom,warnings_SUITE},{atom,comprehensions},1}.
  {label,65}.
    {test,is_list,{f,64},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{tautologic_guards,
                 <<"\n             f() -> [ true || true ].\n             g() -> << <<1>> || true >>.\n           ">>,
                 [],[]}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",705}]}.
    {call,2,{f,108}}. % run/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, maps, 1, 67}.
  {label,66}.
    {line,[{location,"warnings_SUITE.erl",708}]}.
    {func_info,{atom,warnings_SUITE},{atom,maps},1}.
  {label,67}.
    {test,is_list,{f,66},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{bad_map,
                 <<"\n             t() ->\n                 case maybe_map of\n                     #{} -> ok;\n                     not_map -> error\n                 end.\n             x() ->\n                 case true of\n                     #{}  -> error;\n                     true -> ok\n                 end.\n           ">>,
                 [],
                 {warnings,
                     [{{3,18},sys_core_fold,{nomatch,no_clause}},
                      {{9,22},sys_core_fold,{nomatch,clause_type}}]}},
             {bad_map_src1,
                 <<"\n             t() ->\n                 M = {a,[]},\n                 {'EXIT',{badarg,_}} = (catch(M#{ a => 1 })),\n                 ok.\n           ">>,
                 [],
                 {warnings,[{{4,48},sys_core_fold,{failed,bad_map_update}}]}},
             {bad_map_src2,
                 <<"\n             t() ->\n\t\t M = id({a,[]}),\n\t\t {'EXIT',{badarg,_}} = (catch(M#{ a => 1})),\n\t\t ok.\n\t     id(I) -> I.\n           ">>,
                 [inline],
                 []},
             {bad_map_src3,
                 <<"\n             t() ->\n                 {'EXIT',{badarg,_}} = (catch <<>>#{ a := 1}),\n                 ok.\n           ">>,
                 [],
                 {warnings,[{{3,51},sys_core_fold,{failed,bad_map_update}}]}},
             {ok_map_literal_key,
                 <<"\n             t() ->\n\t\t V = id(1),\n\t\t M = id(#{ <<$h,$i>> => V }),\n\t\t V = case M of\n\t\t    #{ <<0:257>> := Val } -> Val;\n\t\t    #{ <<$h,$i>> := Val } -> Val\n\t\t end,\n\t\t ok.\n\t     id(I) -> I.\n           ">>,
                 [],[]},
             {repeated_keys1,
                 <<"\n             foo1() ->\n                 #{a=>1,\n                   b=> 2,\n                   a=>3}.\n             \n             bar1(M) ->\n                 M#{a=>1, b=> 2, a:=3}.\n             \n             baz1(M) ->\n                 M#{a=>1, b=> 2, a:=3}.\n             \n             foo2() ->\n                 #{\"a\"=>1, \"b\"=> 2, \"a\"=>3}.\n             \n             bar2(M) ->\n                 M#{\"a\"=>1, \"b\"=> 2, \"a\":=3}.\n             \n             baz2(M) ->\n                 M#{\"a\"=>1, \"b\"=> 2, \"a\":=3}.\n             \n             foo3() ->\n                 #{\"a\"=>1,\n                   \"b\"=> 2,\n                   \"a\"=>3}.\n             \n             bar3(M) ->\n                 M#{\"a\"=>1, \"b\"=> 2, \"a\":=3}.\n             \n             baz3(M) ->\n                 M#{<<\"a\">>=>1, <<\"b\">>=> 2, <<\"a\">>:=3}.\n           ">>,
                 [],
                 {warnings,
                     [{{3,20},v3_core,{map_key_repeated,a}},
                      {{8,21},v3_core,{map_key_repeated,a}},
                      {{11,21},v3_core,{map_key_repeated,a}},
                      {{14,20},v3_core,{map_key_repeated,"a"}},
                      {{17,21},v3_core,{map_key_repeated,"a"}},
                      {{20,21},v3_core,{map_key_repeated,"a"}},
                      {{23,20},v3_core,{map_key_repeated,"a"}},
                      {{28,21},v3_core,{map_key_repeated,"a"}},
                      {{31,21},v3_core,{map_key_repeated,<<"a">>}}]}},
             {repeated_keys2,
                 <<"\n             foo4(K) ->\n                 #{\"a\"=>1, K => 1, \"b\"=> 2, \"a\"=>3, K=>2}.\n             \n             bar4(M,K) ->\n                 M#{a=>1, K =>1, b=> 2, a:=3, K=>2}.\n             \n             baz4(M,K) ->\n                 M#{<<\"a\">>=>1,\n                     K => 1, <<\"b\">>=> 2,\n                     <<\"a\">>:=3, K=>2}.\n             \n             foo5(K) ->\n                 #{{\"a\",1}=>1, K => 1, \"b\"=> 2, {\"a\",1}=>3, K=>2}.\n             \n             bar5(M,K) ->\n                 M#{{\"a\",<<\"b\">>}=>1, K =>1,\n                    \"b\"=> 2, {\"a\",<<\"b\">>}:=3, K=>2}.\n             \n             baz5(M,K) ->\n                 M#{{<<\"a\">>,1}=>1, K => 1,\n                    <<\"b\">>=> 2, {<<\"a\">>,1}:=3,K=>2}.\n             \n             foo6(K) ->\n                 #{#{\"a\"=>1}=>1, K => 1, \"b\"=> 2, #{\"a\"=>1}=>3, K=>2}.\n             \n             bar6(M,K) ->\n                 M#{#{\"a\"=><<\"b\">>}=>1, K =>1,\n                    \"b\"=> 2, #{\"a\"=><<\"b\">>}:=3, K=>2}.\n             \n             baz6(M,K) ->\n                 M#{#{<<\"a\">>=>1}=>1,\n                    K => 1,\n                    <<\"b\">>=> 2,\n                    #{<<\"a\">>=>1}:=3,K=>2}.\n             \n             foo7(K) ->\n                 M1 = #{#{\"a\"=>1}=>1, K => 1, \"b\"=> 2},\n                 M1#{#{\"a\"=>1}=>3, K=>2}.\n             \n             bar7(M,K) ->\n                 M1 = M#{#{\"a\"=><<\"b\">>}=>1, K =>1, \"b\"=> 2},\n                 M1#{#{\"a\"=><<\"b\">>}:=3, K=>2}.\n             \n             baz7(M,K) ->\n                 M1 = M#{#{<<\"a\">>=>1}=>1,\n                    K => 1,\n                    <<\"b\">>=> 2},\n                 M1#{#{<<\"a\">>=>1}:=3,K=>2}.\n          ">>,
                 [],
                 {warnings,
                     [{{3,20},v3_core,{map_key_repeated,"a"}},
                      {{6,21},v3_core,{map_key_repeated,a}},
                      {{9,21},v3_core,{map_key_repeated,<<"a">>}},
                      {{14,20},v3_core,{map_key_repeated,{"a",1}}},
                      {{17,21},v3_core,{map_key_repeated,{"a",<<"b">>}}},
                      {{21,21},v3_core,{map_key_repeated,{<<"a">>,1}}},
                      {{25,20},v3_core,{map_key_repeated,#{"a" => 1}}},
                      {{28,21},v3_core,{map_key_repeated,#{"a" => <<"b">>}}},
                      {{32,21},
                       v3_core,
                       {map_key_repeated,#{<<"a">> => 1}}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",873}]}.
    {call,2,{f,108}}. % run/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, maps_bin_opt_info, 1, 69}.
  {label,68}.
    {line,[{location,"warnings_SUITE.erl",876}]}.
    {func_info,{atom,warnings_SUITE},{atom,maps_bin_opt_info},1}.
  {label,69}.
    {test,is_list,{f,68},[{x,0}]}.
    {allocate,0,1}.
    {move,{literal,[{map_bsm,<<"\n             t1(<<0:8,7:8,T/binary>>,#{val := I}=M) ->\n                 t1(T, M#{val := I+1});\n             t1(<<_:8>>,M) ->\n                 M.\n           ">>,
                             [bin_opt_info],
                             {warnings,[{3,beam_ssa_bsm,context_reused}]}}]},
          {x,1}}.
    {line,[{location,"warnings_SUITE.erl",886}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,70},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,70}.
    {badmatch,{x,0}}.


{function, redundant_boolean_clauses, 1, 72}.
  {label,71}.
    {line,[{location,"warnings_SUITE.erl",889}]}.
    {func_info,{atom,warnings_SUITE},{atom,redundant_boolean_clauses},1}.
  {label,72}.
    {test,is_list,{f,71},[{x,0}]}.
    {allocate,0,1}.
    {move,
        {literal,
            [{redundant_boolean_clauses,
                 <<"\n             t(X) ->\n                 case X == 0 of\n                     false -> no;\n                     false -> no;\n                     true -> yes\n                 end.\n           ">>,
                 [],
                 {warnings,[{{5,22},sys_core_fold,{nomatch,shadow}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",901}]}.
    {call,2,{f,108}}. % run/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, underscore, 1, 74}.
  {label,73}.
    {line,[{location,"warnings_SUITE.erl",904}]}.
    {func_info,{atom,warnings_SUITE},{atom,underscore},1}.
  {label,74}.
    {test,is_list,{f,73},[{x,0}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{literal,[{underscore0,<<"\n            f(A) ->\n              _VAR1 = <<A>>,\n              _VAR2 = {ok,A},\n              _VAR3 = [A],\n              ok.\n            g(A) ->\n              _VAR1 = A/0,\n              _VAR2 = date(),\n              ok.\n            h() ->\n               _VAR1 = fun() -> ok end,\n              ok.\n            i(A) ->\n               _VAR1 = #{A=>42},\n              ok.\n\t ">>,
                                 [],[]}]},
          {x,1}}.
    {line,[{location,"warnings_SUITE.erl",937}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,78},[{x,0}]}.
    {move,{literal,"_"},{x,2}}.
    {move,{literal,"_VAR\\d+"},{x,1}}.
    {move,{literal,[global]},{x,3}}.
    {move,{literal,<<"\n            f(A) ->\n              _VAR1 = <<A>>,\n              _VAR2 = {ok,A},\n              _VAR3 = [A],\n              ok.\n            g(A) ->\n              _VAR1 = A/0,\n              _VAR2 = date(),\n              ok.\n            h() ->\n               _VAR1 = fun() -> ok end,\n              ok.\n            i(A) ->\n               _VAR1 = #{A=>42},\n              ok.\n\t ">>},
          {x,0}}.
    {line,[{location,"warnings_SUITE.erl",941}]}.
    {call_ext,4,{extfunc,re,replace,4}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"~s\n"},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",942}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{atom,underscore1},{y,0},nil,nil]}}.
    {put_list,{x,0},nil,{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",944}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,77},[{x,0}]}.
    {move,{literal,"        "},{x,2}}.
    {move,{literal,"_VAR\\d = "},{x,1}}.
    {move,{literal,[global]},{x,3}}.
    {move,{literal,<<"\n            f(A) ->\n              _VAR1 = <<A>>,\n              _VAR2 = {ok,A},\n              _VAR3 = [A],\n              ok.\n            g(A) ->\n              _VAR1 = A/0,\n              _VAR2 = date(),\n              ok.\n            h() ->\n               _VAR1 = fun() -> ok end,\n              ok.\n            i(A) ->\n               _VAR1 = #{A=>42},\n              ok.\n\t ">>},
          {x,0}}.
    {line,[{location,"warnings_SUITE.erl",947}]}.
    {call_ext,4,{extfunc,re,replace,4}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"~s\n"},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",948}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,7,0}.
    {put_tuple2,
        {x,0},
        {list,
            [{atom,underscore2},
             {y,0},
             nil,
             {literal,
                 {warnings,
                     [{{3,23},sys_core_fold,{ignored,useless_building}},
                      {{4,23},sys_core_fold,{ignored,useless_building}},
                      {{5,23},sys_core_fold,{ignored,useless_building}},
                      {{8,24},sys_core_fold,{ignored,{result,{erlang,'/',2}}}},
                      {{9,23},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,date,0}}}},
                      {{12,24},sys_core_fold,{ignored,useless_building}},
                      {{15,24},sys_core_fold,{ignored,useless_building}}]}}]}}.
    {put_list,{x,0},nil,{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",950}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,76},[{x,0}]}.
    {move,{literal," "},{x,2}}.
    {move,{literal,"_(?=VAR\\d+)"},{x,1}}.
    {move,{literal,[global]},{x,3}}.
    {move,{literal,<<"\n            f(A) ->\n              _VAR1 = <<A>>,\n              _VAR2 = {ok,A},\n              _VAR3 = [A],\n              ok.\n            g(A) ->\n              _VAR1 = A/0,\n              _VAR2 = date(),\n              ok.\n            h() ->\n               _VAR1 = fun() -> ok end,\n              ok.\n            i(A) ->\n               _VAR1 = #{A=>42},\n              ok.\n\t ">>},
          {x,0}}.
    {line,[{location,"warnings_SUITE.erl",955}]}.
    {call_ext,4,{extfunc,re,replace,4}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"~s\n"},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",956}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,7,0}.
    {put_tuple2,
        {x,0},
        {list,
            [{atom,underscore2},
             {y,0},
             nil,
             {literal,
                 {warnings,
                     [{{3,23},sys_core_fold,{ignored,useless_building}},
                      {{4,23},sys_core_fold,{ignored,useless_building}},
                      {{5,23},sys_core_fold,{ignored,useless_building}},
                      {{8,24},sys_core_fold,{ignored,{result,{erlang,'/',2}}}},
                      {{9,23},
                       sys_core_fold,
                       {ignored,{no_effect,{erlang,date,0}}}},
                      {{12,24},sys_core_fold,{ignored,useless_building}},
                      {{15,24},sys_core_fold,{ignored,useless_building}}]}}]}}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {line,[{location,"warnings_SUITE.erl",958}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,75},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,75}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{location,"warnings_SUITE.erl",950}]}.
    {badmatch,{x,0}}.
  {label,77}.
    {line,[{location,"warnings_SUITE.erl",944}]}.
    {badmatch,{x,0}}.
  {label,78}.
    {line,[{location,"warnings_SUITE.erl",937}]}.
    {badmatch,{x,0}}.


{function, no_warnings, 1, 80}.
  {label,79}.
    {line,[{location,"warnings_SUITE.erl",962}]}.
    {func_info,{atom,warnings_SUITE},{atom,no_warnings},1}.
  {label,80}.
    {test,is_list,{f,79},[{x,0}]}.
    {allocate,0,1}.
    {move,{literal,[{no_warnings,<<"-record(r, {s=ordsets:new(),a,b}).\n\n              a() ->\n                R = #r{},\t\t\t%No warning expected.\n                {R#r.a,R#r.b}.\n\n              b(X) ->\n                T = true,\n                Var = [X],\t\t\t%No warning expected.\n                case T of\n\t          false -> Var;\n                  true -> []\n                end.\n\n              c() ->\n                R0 = {r,\"abc\",undefined,os:timestamp()}, %No warning.\n                case R0 of\n\t          {r,V1,_V2,V3} -> {r,V1,\"def\",V3}\n                end.\n\n              d(In0, Bool) ->\n                {In1,Int} = case id(Bool) of\n                              false -> {In0,0}\n                            end,\n                [In1,Int].\n\n              id(I) -> I.\n           ">>,
                                 [],[]}]},
          {x,1}}.
    {line,[{location,"warnings_SUITE.erl",994}]}.
    {call,2,{f,108}}. % run/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, bit_syntax, 1, 82}.
  {label,81}.
    {line,[{location,"warnings_SUITE.erl",997}]}.
    {func_info,{atom,warnings_SUITE},{atom,bit_syntax},1}.
  {label,82}.
    {allocate,0,1}.
    {move,
        {literal,
            [{bit_syntax,
                 <<"\n              a(<<-1>>) -> ok;\n              a(<<1023>>) -> ok;\n              a(<<777/signed>>) -> ok;\n              a(<<a/binary>>) -> ok;\n              a(<<a/integer>>) -> ok;\n              a(<<a/float>>) -> ok;\n              a(<<a/utf8>>) -> ok;\n              a(<<a/utf16>>) -> ok;\n              a(<<a/utf32>>) -> ok;\n              a(<<a/utf32>>) -> ok.\n              b(Bin) -> Sz = bad, <<42:Sz>> = Bin.\n              c(Sz, Bin) ->\n                case Bin of\n                  <<-42:Sz/unsigned>> -> ok;\n                  <<42:Sz/float>> -> ok;\n                  <<42:Sz/binary>> -> ok\n                end.\n              d(<<16#110000/utf8>>) -> error;\n              d(_) -> ok.\n             ">>,
                 [],
                 {warnings,
                     [{{2,15},sys_core_fold,{nomatch,no_clause}},
                      {{2,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_unsigned,-1}}},
                      {{3,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_truncated,unsigned,1023,8}}},
                      {{4,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_truncated,signed,777,8}}},
                      {{5,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_type,a,binary}}},
                      {{6,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_type,a,integer}}},
                      {{7,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_type,a,float}}},
                      {{8,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_type,a,utf8}}},
                      {{9,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_type,a,utf16}}},
                      {{10,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_type,a,utf32}}},
                      {{11,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_type,a,utf32}}},
                      {{12,35},sys_core_fold,{nomatch,no_clause}},
                      {{12,37},sys_core_fold,{nomatch,{bit_syntax_size,bad}}},
                      {{15,21},
                       sys_core_fold,
                       {nomatch,{bit_syntax_unsigned,-42}}},
                      {{17,21},
                       sys_core_fold,
                       {nomatch,{bit_syntax_type,42,binary}}},
                      {{19,19},
                       sys_core_fold,
                       {nomatch,{bit_syntax_unicode,1114112}}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",1041}]}.
    {call,2,{f,108}}. % run/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, inlining, 1, 84}.
  {label,83}.
    {line,[{location,"warnings_SUITE.erl",1044}]}.
    {func_info,{atom,warnings_SUITE},{atom,inlining},1}.
  {label,84}.
    {allocate,0,1}.
    {move,{literal,[{inlining_1,<<"-compile(inline).\n              compute1(X) -> add(X, 0).\n              add(1, 0) -> 1;\n              add(1, Y) -> 1 + Y;\n              add(X, Y) -> X + Y.\n           ">>,
                                [],[]},
                    {inlining_2,<<"-compile({inline,[add/2]}).\n              compute1(X) -> add(X, 0).\n              add(1, 0) -> 1;\n              add(1, Y) -> 1 + Y;\n              add(X, Y) -> X + Y.\n           ">>,
                                [],[]}]},
          {x,1}}.
    {line,[{location,"warnings_SUITE.erl",1066}]}.
    {call,2,{f,108}}. % run/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, tuple_calls, 1, 86}.
  {label,85}.
    {line,[{location,"warnings_SUITE.erl",1069}]}.
    {func_info,{atom,warnings_SUITE},{atom,tuple_calls},1}.
  {label,86}.
    {allocate,0,1}.
    {move,{literal,[{inlining_1,<<"-compile(tuple_calls).\n              dispatch(X) ->\n                (list_to_atom(\"prefix_\" ++\n                atom_to_list(suffix))):doit(X).\n           ">>,
                                [],[]}]},
          {x,1}}.
    {line,[{location,"warnings_SUITE.erl",1080}]}.
    {call,2,{f,108}}. % run/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, recv_opt_info, 1, 88}.
  {label,87}.
    {line,[{location,"warnings_SUITE.erl",1083}]}.
    {func_info,{atom,warnings_SUITE},{atom,recv_opt_info},1}.
  {label,88}.
    {test,is_list,{f,87},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,2},{f,89}}.
    {move,{literal,[recv_opt_info]},{x,2}}.
    {move,{literal,<<"\n                simple_receive() ->\n                    receive\n                        Message -> handle:msg(Message)\n                    end.\n\n                selective_receive(Tag, Message) ->\n                    receive\n                        {Tag, Message} -> handle:msg(Message)\n                    end.\n\n                cross_function_receive() ->\n                    cross_function_receive_1(make_ref()).\n\n                cross_function_receive_1(Tag) ->\n                    receive\n                        {Tag, Message} -> handle:msg(Message)\n                    end.\n\n                optimized_receive(Process, Request) ->\n                    MRef = monitor(process, Process),\n                    Process ! {self(), MRef, Request},\n                    receive\n                        {MRef, Reply} ->\n                            erlang:demonitor(MRef, [flush]),\n                            handle:reply(Reply);\n                        {'DOWN', MRef, _, _, Reason} ->\n                            handle:error(Reason)\n                    end.\n           ">>},
          {x,1}}.
    {line,[{location,"warnings_SUITE.erl",1115}]}.
    {call,3,{f,121}}. % run_test/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warnings]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warnings]}}}}],
                     none}}]}}.
  {label,89}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,94},[{x,0},2,{atom,warnings}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,94},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,94},
          [{x,2},{literal,{3,beam_ssa_recv,matches_any_message}}]}.
    {test,is_nonempty_list,{f,94},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,94},
          [{x,2},{literal,{8,beam_ssa_recv,unoptimized_selective_receive}}]}.
    {test,is_nonempty_list,{f,94},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,94},
          [{x,2},{literal,{13,beam_ssa_recv,reserved_receive_marker}}]}.
    {test,is_nonempty_list,{f,94},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,94},[{x,2}]}.
    {test,test_arity,{f,94},[{x,2},3]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,94},[{x,3},{integer,13}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,94},[{x,3},{atom,beam_ssa_recv}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,94},[{x,2},2,{atom,passed_marker}]}.
    {test,is_nonempty_list,{f,94},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,94},
          [{x,2},
           {literal,{16,beam_ssa_recv,{used_receive_marker,{parameter,1}}}}]}.
    {test,is_nonempty_list,{f,94},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,
          {f,94},
          [{x,2},{literal,{21,beam_ssa_recv,reserved_receive_marker}}]}.
    {test,is_nonempty_list,{f,94},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,94},[{x,2}]}.
    {test,test_arity,{f,94},[{x,2},3]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,94},[{x,3},{integer,23}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,94},[{x,3},{atom,beam_ssa_recv}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_tagged_tuple,{f,94},[{x,2},2,{atom,used_receive_marker}]}.
    {test,is_nil,{f,94},[{x,1}]}.
    {'catch',{y,1},{f,90}}.
    {move,{literal,<<"\n                simple_receive() ->\n                    receive\n                        Message -> handle:msg(Message)\n                    end.\n\n                selective_receive(Tag, Message) ->\n                    receive\n                        {Tag, Message} -> handle:msg(Message)\n                    end.\n\n                cross_function_receive() ->\n                    cross_function_receive_1(make_ref()).\n\n                cross_function_receive_1(Tag) ->\n                    receive\n                        {Tag, Message} -> handle:msg(Message)\n                    end.\n\n                optimized_receive(Process, Request) ->\n                    MRef = monitor(process, Process),\n                    Process ! {self(), MRef, Request},\n                    receive\n                        {MRef, Reply} ->\n                            erlang:demonitor(MRef, [flush]),\n                            handle:reply(Reply);\n                        {'DOWN', MRef, _, _, Reason} ->\n                            handle:error(Reason)\n                    end.\n           ">>},
          {x,1}}.
    {move,nil,{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[4]},{location,"warnings_SUITE.erl",1135}]}.
    {call,3,{f,121}}. % run_test/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warnings]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warnings]}}}}],
                     none}}]}}.
  {label,90}.
    {catch_end,{y,1}}.
    {test,is_nil,{f,93},[{x,0}]}.
    {'catch',{y,0},{f,91}}.
    {move,{literal,[recv_opt_info]},{x,1}}.
    {move,
        {literal,
            [{attribute,0,module,nolocation_recv},
             {attribute,0,export,[{t1,0}]},
             {function,0,t1,0,
                 [{clause,0,[],[],
                      [{'receive',0,
                           [{clause,0,
                                [{var,0,'Msg'}],
                                [],
                                [{call,0,
                                     {remote,0,{atom,0,handle},{atom,0,msg}},
                                     [{var,0,'Msg'}]}]}]}]}]}]},
        {x,0}}.
    {line,[{scope,[2]},{location,"warnings_SUITE.erl",1156}]}.
    {call,2,{f,126}}. % run_forms/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,
                                   {t_tuple,1,false,#{}},
                                   none}}]}}.
  {label,91}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,
          {f,92},
          [{x,0},
           {literal,{warnings,[{none,beam_ssa_recv,matches_any_message}]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,92}.
    {line,[{scope,[0]},{location,"warnings_SUITE.erl",1157}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[2]},{location,"warnings_SUITE.erl",1135}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[4]},{location,"warnings_SUITE.erl",1120}]}.
    {badmatch,{x,0}}.


{function, opportunistic_warnings, 1, 96}.
  {label,95}.
    {line,[{location,"warnings_SUITE.erl",1162}]}.
    {func_info,{atom,warnings_SUITE},{atom,opportunistic_warnings},1}.
  {label,96}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,
        {literal,
            [{nothing_disabled,
                 <<"m(_) -> ok;\n                m(_) -> error.\n\n                a() -> <<0.5>>.\n                b() -> Bin = <<1,2,3,7:4>>, <<Bin/binary>>.\n                c() -> Size = bad_size, <<1:Size>>.\n\n                i() -> {a,b,c}, ok.\n           ">>,
                 [],
                 {warnings,
                     [{{2,17},sys_core_fold,{nomatch,{shadow,1,{m,1}}}},
                      {{4,24},v3_core,{failed,bad_binary}},
                      {{5,45},sys_core_fold,{failed,{embedded_unit,8,28}}},
                      {{6,43},beam_core_to_ssa,{failed,bad_segment_size}},
                      {{8,24},sys_core_fold,{ignored,useless_building}}]}}]},
        {x,1}}.
    {line,[{location,"warnings_SUITE.erl",1183}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,102},[{x,0}]}.
    {move,{literal,[{all_disabled,<<"m(_) -> ok;\n                m(_) -> error.\n\n                a() -> <<0.5>>.\n                b() -> Bin = <<1,2,3,7:4>>, <<Bin/binary>>.\n                c() -> Size = bad_size, <<1:Size>>.\n\n                i() -> {a,b,c}, ok.\n           ">>,
                                  [nowarn_opportunistic],
                                  []}]},
          {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1190}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,101},[{x,0}]}.
    {move,
        {literal,
            [{nomatch_disabled,
                 <<"m(_) -> ok;\n                m(_) -> error.\n\n                a() -> <<0.5>>.\n                b() -> Bin = <<1,2,3,7:4>>, <<Bin/binary>>.\n                c() -> Size = bad_size, <<1:Size>>.\n\n                i() -> {a,b,c}, ok.\n           ">>,
                 [nowarn_nomatch],
                 {warnings,
                     [{{4,24},v3_core,{failed,bad_binary}},
                      {{5,45},sys_core_fold,{failed,{embedded_unit,8,28}}},
                      {{6,43},beam_core_to_ssa,{failed,bad_segment_size}},
                      {{8,24},sys_core_fold,{ignored,useless_building}}]}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1201}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,100},[{x,0}]}.
    {move,
        {literal,
            [{failures_disabled,
                 <<"m(_) -> ok;\n                m(_) -> error.\n\n                a() -> <<0.5>>.\n                b() -> Bin = <<1,2,3,7:4>>, <<Bin/binary>>.\n                c() -> Size = bad_size, <<1:Size>>.\n\n                i() -> {a,b,c}, ok.\n           ">>,
                 [nowarn_failed],
                 {warnings,
                     [{{2,17},sys_core_fold,{nomatch,{shadow,1,{m,1}}}},
                      {{8,24},sys_core_fold,{ignored,useless_building}}]}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1210}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,99},[{x,0}]}.
    {move,
        {literal,
            [{disabled_useless_building,
                 <<"m(_) -> ok;\n                m(_) -> error.\n\n                a() -> <<0.5>>.\n                b() -> Bin = <<1,2,3,7:4>>, <<Bin/binary>>.\n                c() -> Size = bad_size, <<1:Size>>.\n\n                i() -> {a,b,c}, ok.\n           ">>,
                 [nowarn_ignored],
                 {warnings,
                     [{{2,17},sys_core_fold,{nomatch,{shadow,1,{m,1}}}},
                      {{4,24},v3_core,{failed,bad_binary}},
                      {{5,45},sys_core_fold,{failed,{embedded_unit,8,28}}},
                      {{6,43},beam_core_to_ssa,{failed,bad_segment_size}}]}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1221}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,98},[{x,0}]}.
    {move,
        {literal,
            [{disabled_combination,
                 <<"m(_) -> ok;\n                m(_) -> error.\n\n                a() -> <<0.5>>.\n                b() -> Bin = <<1,2,3,7:4>>, <<Bin/binary>>.\n                c() -> Size = bad_size, <<1:Size>>.\n\n                i() -> {a,b,c}, ok.\n           ">>,
                 [nowarn_ignored,nowarn_failed],
                 {warnings,
                     [{{2,17},sys_core_fold,{nomatch,{shadow,1,{m,1}}}}]}}]},
        {x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"warnings_SUITE.erl",1229}]}.
    {call,2,{f,108}}. % run/2
    {test,is_nil,{f,97},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,97}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{location,"warnings_SUITE.erl",1221}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{location,"warnings_SUITE.erl",1210}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{location,"warnings_SUITE.erl",1201}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{location,"warnings_SUITE.erl",1190}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{location,"warnings_SUITE.erl",1183}]}.
    {badmatch,{x,0}}.


{function, eep49, 1, 104}.
  {label,103}.
    {line,[{location,"warnings_SUITE.erl",1235}]}.
    {func_info,{atom,warnings_SUITE},{atom,eep49},1}.
  {label,104}.
    {allocate,0,1}.
    {move,{literal,[{basic,<<"foo(X) ->\n                  maybe\n                      %% There should be no warning.\n                      Always ?= X,\n                      Always\n                  end.\n           ">>,
                           [{feature,maybe_expr,enable}],
                           []},
                    {disabled,<<"foo() -> maybe.                        %Atom maybe.\n           ">>,
                              [{feature,maybe_expr,disable}],
                              []}]},
          {x,1}}.
    {line,[{location,"warnings_SUITE.erl",1252}]}.
    {call,2,{f,108}}. % run/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, inline_list_funcs, 1, 106}.
  {label,105}.
    {line,[{location,"warnings_SUITE.erl",1256}]}.
    {func_info,{atom,warnings_SUITE},{atom,inline_list_funcs},1}.
  {label,106}.
    {allocate,0,1}.
    {move,{literal,[{basic,<<"all(L) ->\n                  lists:all(fun erlang:is_integer/1, L).\n              any(L) ->\n                  lists:any(fun erlang:is_integer/1, L).\n              foreach(L) ->\n                  lists:foreach(fun erlang:is_integer/1, L).\n              map(L) ->\n                  lists:map(fun erlang:abs/1, L).\n              filter(L) ->\n                  lists:map(fun erlang:is_integer/1, L).\n              foldl(L) ->\n                  lists:foldl(fun erlang:is_function/2, L).\n              foldr(L) ->\n                  lists:foldl(fun erlang:is_function/2, L).\n              mapfoldl(L) ->\n                  lists:mapfoldl(fun erlang:is_function/2, L).\n              mapfoldr(L) ->\n                  lists:mapfoldr(fun erlang:is_function/2, L).\n              ">>,
                           [inline_list_funcs],
                           []}]},
          {x,1}}.
    {line,[{location,"warnings_SUITE.erl",1280}]}.
    {call,2,{f,108}}. % run/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, run, 2, 108}.
  {label,107}.
    {line,[{location,"warnings_SUITE.erl",1289}]}.
    {func_info,{atom,warnings_SUITE},{atom,run},2}.
  {label,108}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_cons,
         {t_tuple,4,true,
          #{1 => {t_atom,any},
            3 =>
             {t_list,
              {t_union,
               {t_atom,any},
               none,none,
               [{{3,{t_atom,[feature]}},
                 {t_tuple,3,true,
                  #{1 => {t_atom,[feature]},
                    2 => {t_atom,[maybe_expr]},
                    3 => {t_atom,[disable,enable]}}}}],
               none},
              nil},
            4 =>
             {t_union,none,nil,none,
              [{{2,{t_atom,[warnings]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[warnings]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
              none}}},
         nil}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"warnings_SUITE.erl",1290}]}.
    {call,2,{f,119}}. % do_run/2
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"warnings_SUITE.erl",1293}]}.
    {call,1,{f,170}}. % '-run/2-lc$^0/1-0-'/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_tuple,4,true,
          #{1 => {t_atom,any},
            3 =>
             {t_list,
              {t_union,
               {t_atom,any},
               none,none,
               [{{2,{t_atom,[error_location]}},
                 {t_tuple,2,true,
                  #{1 => {t_atom,[error_location]},2 => {t_atom,[line]}}}},
                {{3,{t_atom,[feature]}},
                 {t_tuple,3,true,
                  #{1 => {t_atom,[feature]},
                    2 => {t_atom,[maybe_expr]},
                    3 => {t_atom,[disable,enable]}}}}],
               none},
              nil},
            4 =>
             {t_union,none,nil,none,
              [{{2,{t_atom,[warnings]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[warnings]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
              none}}},
         nil}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,119},1}. % do_run/2


{function, lines_only, 1, 110}.
  {label,109}.
    {line,[{location,"warnings_SUITE.erl",1296}]}.
    {func_info,{atom,warnings_SUITE},{atom,lines_only},1}.
  {label,110}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 => {t_atom,any},
           3 =>
            {t_list,
             {t_union,
              {t_atom,any},
              none,none,
              [{{3,{t_atom,[feature]}},
                {t_tuple,3,true,
                 #{1 => {t_atom,[feature]},
                   2 => {t_atom,[maybe_expr]},
                   3 => {t_atom,[disable,enable]}}}}],
              none},
             nil},
           4 =>
            {t_union,none,nil,none,
             [{{2,{t_atom,[warnings]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[warnings]},
                  2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_tuple,
        {f,111},
        [{tr,{x,1},
             {t_union,none,nil,none,
                 [{{2,{t_atom,[warnings]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[warnings]},
                         2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
                 none}}]}.
    {allocate_heap,1,{alloc,[{words,0},{floats,0},{funs,1}]},2}.
    {move,{x,0},{y,0}}.
    {make_fun3,{f,113},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_tuple,2,false,#{}}}]}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {line,[{location,"warnings_SUITE.erl",1297}]}.
    {call_ext,2,{extfunc,lists,map,2}}.
    {line,[{location,"warnings_SUITE.erl",1298}]}.
    {call_ext,1,{extfunc,lists,usort,1}}.
    {test_heap,10,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {get_tuple_element,{y,0},2,{x,3}}.
    {put_tuple2,{x,0},{list,[{atom,warnings},{x,0}]}}.
    {put_list,{literal,{error_location,line}},{x,3},{x,3}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,3},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,111}.
    return.


{function, lines_only_1, 1, 113}.
  {label,112}.
    {line,[{location,"warnings_SUITE.erl",1302}]}.
    {func_info,{atom,warnings_SUITE},{atom,lines_only_1},1}.
  {label,113}.
    {test,is_tuple,{f,112},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,112},
                        {list,[2,{f,116},3,{f,114}]}}.
  {label,114}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,is_tuple,{f,115},[{x,1}]}.
    {test,test_arity,{f,115},[{x,1},2]}.
    {test_heap,4,3}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.
  {label,115}.
    {test,is_integer,{f,117},[{x,1}]}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.
  {label,116}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_list,{f,112},[{x,2}]}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1303}]}.
    {call,1,{f,166}}. % '-lines_only_1/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,false,#{}},nil}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,117}.
    {line,[{location,"warnings_SUITE.erl",1306}]}.
    {case_end,{x,1}}.


{function, do_run, 2, 119}.
  {label,118}.
    {line,[{location,"warnings_SUITE.erl",1313}]}.
    {func_info,{atom,warnings_SUITE},{atom,do_run},2}.
  {label,119}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_cons,
         {t_tuple,4,true,
          #{1 => {t_atom,any},
            3 =>
             {t_list,
              {t_union,
               {t_atom,any},
               none,none,
               [{{2,{t_atom,[error_location]}},
                 {t_tuple,2,true,
                  #{1 => {t_atom,[error_location]},2 => {t_atom,[line]}}}},
                {{3,{t_atom,[feature]}},
                 {t_tuple,3,true,
                  #{1 => {t_atom,[feature]},
                    2 => {t_atom,[maybe_expr]},
                    3 => {t_atom,[disable,enable]}}}}],
               none},
              nil},
            4 =>
             {t_union,none,nil,none,
              [{{2,{t_atom,[warnings]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[warnings]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
              none}}},
         nil}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {make_fun3,{f,161},0,0,{x,0},{list,[{x,0}]}}.
    {move,{x,1},{x,2}}.
    {move,nil,{x,1}}.
    {line,[{location,"warnings_SUITE.erl",1325}]}.
    {call_ext_only,3,{extfunc,lists,foldl,3}}.


{function, run_test, 3, 121}.
  {label,120}.
    {line,[{location,"warnings_SUITE.erl",1329}]}.
    {func_info,{atom,warnings_SUITE},{atom,run_test},3}.
  {label,121}.
    {allocate,4,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"warnings_SUITE.erl",1330}]}.
    {call_ext,0,{extfunc,test_lib,uniq,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,"warnings"},{x,0}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,0}}.
    {move,{literal,".erl"},{x,1}}.
    {line,[{location,"warnings_SUITE.erl",1331}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1332}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test_heap,12,1}.
    {put_list,{y,2},nil,{x,1}}.
    {put_list,{literal,"\", 1). "},{x,1},{x,1}}.
    {put_list,{y,3},{x,1},{x,1}}.
    {put_list,{literal,"). -file( \""},{x,1},{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{literal,"-module("},{x,1},{x,1}}.
    {move,{x,0},{y,2}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1334}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1335}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {test_heap,6,1}.
    {put_list,{atom,return},{y,1},{x,1}}.
    {put_list,{atom,export_all},{x,1},{x,1}}.
    {put_list,{atom,binary},{x,1},{y,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,3},{x,1}}.
    {line,[{location,"warnings_SUITE.erl",1337}]}.
    {call_ext,2,{extfunc,file,write_file,2}}.
    {test,is_eq_exact,{f,124},[{x,0},{atom,ok}]}.
    {test_heap,6,0}.
    {put_list,{atom,report},{y,1},{x,0}}.
    {put_list,{atom,export_all},{x,0},{x,0}}.
    {put_list,{atom,binary},{x,0},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1340}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {move,{y,2},{x,1}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1343}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {call,1,{f,128}}. % get_warnings/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,
                                   {t_tuple,1,false,#{}},
                                   none}}]}}.
    {move,{x,0},{y,2}}.
    {test,is_tuple,
          {f,122},
          [{tr,{x,0},{t_union,none,nil,none,{t_tuple,1,false,#{}},none}}]}.
    {test,is_tagged_tuple,
          {f,123},
          [{tr,{x,0},{t_tuple,1,false,#{}}},2,{atom,warnings}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {move,{y,3},{x,1}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{location,"warnings_SUITE.erl",1346}]}.
    {call,2,{f,133}}. % print_warnings/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,122}.
    {move,{y,0},{x,0}}.
    {move,{y,2},{y,3}}.
    {trim,3,1}.
    {line,[{location,"warnings_SUITE.erl",1348}]}.
    {call_ext,1,{extfunc,file,delete,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,123}.
    {line,[{location,"warnings_SUITE.erl",1344}]}.
    {case_end,{x,0}}.
  {label,124}.
    {line,[{location,"warnings_SUITE.erl",1337}]}.
    {badmatch,{x,0}}.


{function, run_forms, 2, 126}.
  {label,125}.
    {line,[{location,"warnings_SUITE.erl",1351}]}.
    {func_info,{atom,warnings_SUITE},{atom,run_forms},2}.
  {label,126}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_union,none,none,none,
          [{{4,{t_atom,[attribute]}},
            {t_tuple,4,true,
             #{1 => {t_atom,[attribute]},
               2 => {t_integer,{0,0}},
               3 => {t_atom,[export,module]},
               4 =>
                {t_union,
                 {t_atom,[nolocation_binary,nolocation_recv]},
                 {t_cons,
                  {t_tuple,2,true,
                   #{1 => {t_atom,[t1]},2 => {t_integer,{0,1}}}},
                  nil},
                 none,none,none}}}},
           {{5,{t_atom,[function]}},
            {t_tuple,5,true,
             #{1 => {t_atom,[function]},
               2 => {t_integer,{0,0}},
               3 => {t_atom,[t1]},
               4 => {t_integer,{0,1}},
               5 =>
                {t_cons,
                 {t_tuple,5,true,
                  #{1 => {t_atom,[clause]},
                    2 => {t_integer,{0,0}},
                    3 => {t_list,any,any},
                    4 => nil,
                    5 => {t_cons,any,any}}},
                 nil}}}}],
          none},
         nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_cons,{t_atom,[bin_opt_info,recv_opt_info]},
                                  nil}}]}}.
    {allocate_heap,0,4,2}.
    {put_list,{atom,return},{x,1},{x,1}}.
    {put_list,{atom,binary},{x,1},{x,1}}.
    {line,[{location,"warnings_SUITE.erl",1352}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {call_last,1,{f,128},0}. % get_warnings/1


{function, get_warnings, 1, 128}.
  {label,127}.
    {line,[{location,"warnings_SUITE.erl",1354}]}.
    {func_info,{atom,warnings_SUITE},{atom,get_warnings},1}.
  {label,128}.
    {test,is_tagged_tuple,{f,131},[{x,0},4,{atom,ok}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {get_tuple_element,{x,0},3,{x,2}}.
    {test,is_nil,{f,129},[{x,2}]}.
    {test,is_binary,{f,131},[{x,1}]}.
    {move,nil,{x,0}}.
    return.
  {label,129}.
    {test,is_binary,{f,131},[{x,1}]}.
    {allocate,0,3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1363}]}.
    {call,1,{f,151}}. % '-get_warnings/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{2 => {t_list,{t_tuple,3,true,#{}},nil}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,130},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,
          {f,130},
          [{tr,{x,2},
               {t_list,{t_tuple,2,true,
                                #{2 => {t_list,{t_tuple,3,true,#{}},nil}}},
                       nil}}]}.
    {test_heap,3,2}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,warnings},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,130}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,warnings},{x,0},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1366}]}.
    {call_ext_last,1,{extfunc,erlang,list_to_tuple,1},0}.
  {label,131}.
    {line,[{location,"warnings_SUITE.erl",1355}]}.
    {case_end,{x,0}}.


{function, print_warnings, 2, 133}.
  {label,132}.
    {line,[{location,"warnings_SUITE.erl",1370}]}.
    {func_info,{atom,warnings_SUITE},{atom,print_warnings},2}.
  {label,133}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{literal,[global]},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{literal,<<"\n">>},{x,1}}.
    {line,[{location,"warnings_SUITE.erl",1371}]}.
    {call_ext,3,{extfunc,binary,split,3}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"warnings_SUITE.erl",1372}]}.
    {call,2,{f,147}}. % '-print_warnings/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {line,[{location,"warnings_SUITE.erl",1373}]}.
    {call_ext,1,{extfunc,io,put_chars,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, print_warning, 2, 135}.
  {label,134}.
    {line,[{location,"warnings_SUITE.erl",1376}]}.
    {func_info,{atom,warnings_SUITE},{atom,print_warning},2}.
  {label,135}.
    {test,is_tuple,{f,138},[{x,0}]}.
    {test,test_arity,{f,138},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_tuple,{f,138},[{x,2}]}.
    {test,test_arity,{f,138},[{x,2},2]}.
    {allocate,5,3}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,4}}.
    {get_tuple_element,{x,2},0,{y,3}}.
    {get_tuple_element,{x,2},1,{y,2}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1377}]}.
    {call_ext,2,{extfunc,lists,nth,2}}.
    {move,{x,0},{y,1}}.
    {test,bs_start_match3,{f,139},1,[{x,0}],{x,0}}.
    {gc_bif,'-',{f,136},1,[{y,2},{integer,1}],{x,1}}.
    {jump,{f,137}}.
  {label,136}.
    {move,{atom,bad_size},{x,1}}.
  {label,137}.
    {test,bs_get_binary2,
          {f,139},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},none,{t_number,any},none,none}},
           8,
           {field_flags,[{anno,[1378,{file,"warnings_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,139},{x,0},{commands,[{ensure_at_least,0,8}]}}.
    {move,{literal,<<" ">>},{x,2}}.
    {move,{literal,[global]},{x,3}}.
    {move,{x,1},{x,0}}.
    {move,{literal,<<"[^\t]">>},{x,1}}.
    {line,[{location,"warnings_SUITE.erl",1379}]}.
    {call_ext,4,{extfunc,re,replace,4}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,["^"]},{y,0}}.
    {get_tuple_element,{y,4},1,{x,0}}.
    {get_tuple_element,{y,4},2,{x,1}}.
    {move,{atom,format_error},{x,2}}.
    {swap,{x,0},{x,1}}.
    {move,{y,0},{y,4}}.
    {trim,1,4}.
    {line,[{location,"warnings_SUITE.erl",1382}]}.
    {apply,1}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,2,2}.
    {move,{literal,"~p:~p: ~ts\n"},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1381}]}.
    {call_ext,2,{extfunc,io_lib,format,2}}.
    {test_heap,8,1}.
    {put_list,{y,1},{literal,["\n\n"]},{x,1}}.
    {put_list,{literal,"\n"},{x,1},{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,138}.
    {move,nil,{x,0}}.
    return.
  {label,139}.
    {line,[{location,"warnings_SUITE.erl",1378}]}.
    {badmatch,{y,1}}.


{function, fail, 0, 141}.
  {label,140}.
    {line,[{location,"warnings_SUITE.erl",1388}]}.
    {func_info,{atom,warnings_SUITE},{atom,fail},0}.
  {label,141}.
    {move,{atom,failed},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1389}]}.
    {call_ext_only,1,{extfunc,ct,fail,1}}.


{function, module_info, 0, 143}.
  {label,142}.
    {line,[]}.
    {func_info,{atom,warnings_SUITE},{atom,module_info},0}.
  {label,143}.
    {move,{atom,warnings_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 145}.
  {label,144}.
    {line,[]}.
    {func_info,{atom,warnings_SUITE},{atom,module_info},1}.
  {label,145}.
    {move,{x,0},{x,1}}.
    {move,{atom,warnings_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-print_warnings/2-lc$^0/1-0-', 2, 147}.
  {label,146}.
    {line,[{location,"warnings_SUITE.erl",1372}]}.
    {func_info,{atom,warnings_SUITE},{atom,'-print_warnings/2-lc$^0/1-0-'},2}.
  {label,147}.
    {test,is_nonempty_list,{f,148},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,2,{f,135}}. % print_warning/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,147}}. % '-print_warnings/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_list,any,nil},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,148}.
    {test,is_nil,{f,149},[{x,0}]}.
    return.
  {label,149}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-get_warnings/1-lc$^0/1-0-', 1, 151}.
  {label,150}.
    {line,[{location,"warnings_SUITE.erl",1363}]}.
    {func_info,{atom,warnings_SUITE},{atom,'-get_warnings/1-lc$^0/1-0-'},1}.
  {label,151}.
    {test,is_nonempty_list,{f,153},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,152},[{x,1}]}.
    {test,test_arity,{f,152},[{x,1},2]}.
    {allocate,2,2}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,1},0,{y,0}}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1361}]}.
    {call,1,{f,156}}. % '-get_warnings/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,3,true,#{}},nil}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1363}]}.
    {call,1,{f,151}}. % '-get_warnings/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{2 => {t_list,{t_tuple,3,true,#{}},nil}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,152}.
    {call_only,1,{f,151}}. % '-get_warnings/1-lc$^0/1-0-'/1
  {label,153}.
    {test,is_nil,{f,154},[{x,0}]}.
    return.
  {label,154}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-get_warnings/1-lc$^1/1-1-', 1, 156}.
  {label,155}.
    {line,[{location,"warnings_SUITE.erl",1361}]}.
    {func_info,{atom,warnings_SUITE},{atom,'-get_warnings/1-lc$^1/1-1-'},1}.
  {label,156}.
    {test,is_nonempty_list,{f,158},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,157},[{x,1}]}.
    {test,test_arity,{f,157},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_ne_exact,{f,157},[{x,2},{atom,erl_lint}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,156}}. % '-get_warnings/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,3,true,#{}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,157}.
    {call_only,1,{f,156}}. % '-get_warnings/1-lc$^1/1-1-'/1
  {label,158}.
    {test,is_nil,{f,159},[{x,0}]}.
    return.
  {label,159}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_run/2-fun-0-', 3, 161}.
  {label,160}.
    {line,[{location,"warnings_SUITE.erl",1314}]}.
    {func_info,{atom,warnings_SUITE},{atom,'-do_run/2-fun-0-'},3}.
  {label,161}.
    {test,is_tuple,{f,164},[{x,0}]}.
    {test,test_arity,{f,164},[{x,0},4]}.
    {allocate_heap,5,2,3}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,2},{y,3}}.
    {get_tuple_element,{x,0},0,{y,0}}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{literal,"### ~s\n"},{x,0}}.
    {line,[{location,"warnings_SUITE.erl",1315}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {get_tuple_element,{y,1},1,{x,1}}.
    {get_tuple_element,{y,1},2,{x,2}}.
    {'catch',{y,4},{f,162}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{location,"warnings_SUITE.erl",1316}]}.
    {call,3,{f,121}}. % run_test/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[warnings]}},
                       {t_tuple,2,true,#{1 => {t_atom,[warnings]}}}}],
                     none}}]}}.
  {label,162}.
    {catch_end,{y,4}}.
    {get_tuple_element,{y,1},3,{x,1}}.
    {test,is_eq_exact,{f,163},[{x,0},{x,1}]}.
    {move,{y,2},{x,0}}.
    {deallocate,5}.
    return.
  {label,163}.
    {test_heap,6,2}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_list,{y,0},{x,0},{x,1}}.
    {trim,5,0}.
    {move,{literal,"~nTest ~p failed. Expected~n  ~p~nbut got~n  ~p~n"},{x,0}}.
    {line,[{scope,[0]},{location,"warnings_SUITE.erl",1320}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {call_last,0,{f,141},0}. % fail/0
  {label,164}.
    {call_only,2,{f,173}}. % '-do_run/2-inlined-0-'/2


{function, '-lines_only_1/1-lc$^0/1-0-', 1, 166}.
  {label,165}.
    {line,[{location,"warnings_SUITE.erl",1303}]}.
    {func_info,{atom,warnings_SUITE},{atom,'-lines_only_1/1-lc$^0/1-0-'},1}.
  {label,166}.
    {test,is_nonempty_list,{f,167},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,113}}. % lines_only_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {swap,{y,0},{x,0}}.
    {call,1,{f,166}}. % '-lines_only_1/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,false,#{}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,167}.
    {test,is_nil,{f,168},[{x,0}]}.
    return.
  {label,168}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-run/2-lc$^0/1-0-', 1, 170}.
  {label,169}.
    {line,[{location,"warnings_SUITE.erl",1293}]}.
    {func_info,{atom,warnings_SUITE},{atom,'-run/2-lc$^0/1-0-'},1}.
  {label,170}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_tuple,4,true,
          #{1 => {t_atom,any},
            3 =>
             {t_list,
              {t_union,
               {t_atom,any},
               none,none,
               [{{3,{t_atom,[feature]}},
                 {t_tuple,3,true,
                  #{1 => {t_atom,[feature]},
                    2 => {t_atom,[maybe_expr]},
                    3 => {t_atom,[disable,enable]}}}}],
               none},
              nil},
            4 =>
             {t_union,none,nil,none,
              [{{2,{t_atom,[warnings]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[warnings]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
              none}}},
         nil}}]}}.
    {test,is_nonempty_list,{f,171},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,110}}. % lines_only/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,4,true,
         #{1 => {t_atom,any},
           3 =>
            {t_list,
             {t_union,
              {t_atom,any},
              none,none,
              [{{2,{t_atom,[error_location]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[error_location]},2 => {t_atom,[line]}}}},
               {{3,{t_atom,[feature]}},
                {t_tuple,3,true,
                 #{1 => {t_atom,[feature]},
                   2 => {t_atom,[maybe_expr]},
                   3 => {t_atom,[disable,enable]}}}}],
              none},
             nil},
           4 =>
            {t_union,none,nil,none,
             [{{2,{t_atom,[warnings]}},
               {t_tuple,2,true,
                #{1 => {t_atom,[warnings]},
                  2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
             none}}}}]}}.
    {swap,{y,0},{x,0}}.
    {call,1,{f,170}}. % '-run/2-lc$^0/1-0-'/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_tuple,4,true,
          #{1 => {t_atom,any},
            3 =>
             {t_list,
              {t_union,
               {t_atom,any},
               none,none,
               [{{2,{t_atom,[error_location]}},
                 {t_tuple,2,true,
                  #{1 => {t_atom,[error_location]},2 => {t_atom,[line]}}}},
                {{3,{t_atom,[feature]}},
                 {t_tuple,3,true,
                  #{1 => {t_atom,[feature]},
                    2 => {t_atom,[maybe_expr]},
                    3 => {t_atom,[disable,enable]}}}}],
               none},
              nil},
            4 =>
             {t_union,none,nil,none,
              [{{2,{t_atom,[warnings]}},
                {t_tuple,2,true,
                 #{1 => {t_atom,[warnings]},
                   2 => {t_cons,{t_tuple,0,false,#{}},nil}}}}],
              none}}},
         nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,171}.
    return.


{function, '-do_run/2-inlined-0-', 2, 173}.
  {label,172}.
    {line,[{location,"warnings_SUITE.erl",1314}]}.
    {func_info,{atom,warnings_SUITE},{atom,'-do_run/2-inlined-0-'},2}.
  {label,173}.
    {jump,{f,172}}.
