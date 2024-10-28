
-module(letrec_rvals).

-export([demo_fun/1]).

demo_fun(_Arg) ->
    case ok of
        _ ->
            _Res = _Arg,
            [ ok || _ <- [] ]
    end,
    _Res.

handle_info() ->
    case chids_to_audit() of
        {ChIds, St2} ->
            [ ChId || ChId <- ChIds ],
            ok
    end,
    check_done(St2).

chids_to_audit() ->
    some_module:get_audit_list().

check_done(_) ->
    ok.
    