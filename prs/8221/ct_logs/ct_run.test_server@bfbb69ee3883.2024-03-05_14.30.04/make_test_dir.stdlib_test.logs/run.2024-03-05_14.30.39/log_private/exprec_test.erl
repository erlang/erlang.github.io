-module(exprec_test). -compile(export_all). 
         -record(r, {f}).

         maker(F) -> 
             put(a, get(a)+1),
             #r{f = F}.

         t() ->
             put(a, 0),
             (maker(2))#r{},
             1 = get(a),
             ok.
      