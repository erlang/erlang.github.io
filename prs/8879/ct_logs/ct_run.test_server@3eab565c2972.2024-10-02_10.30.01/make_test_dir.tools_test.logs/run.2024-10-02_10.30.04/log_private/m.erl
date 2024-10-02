-module(m).
-compile(export_all).
t() -> t(0).
l() ->
   catch ets:tab2list(cover_internal_data_table).
t(Sz) ->
   case ets:info(cover_internal_data_table, size) of
       Sz ->
           m:t(Sz); % Not a local call! Newly loaded code is entered.
       NSz ->
           % error_logger:info_msg("~p: ~p ~p change~n L1 ~p~n", 
           % [node(), Sz, NSz, l()]),
           m:t(NSz)
   end.
