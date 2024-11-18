
        -module(my_list).

        -export([my_size/1]).

        -spec my_size(list()) -> non_neg_integer().
        my_size([]) ->
            0;
        my_size({N,_}) ->
            N;
        my_size([_|T]) ->
            1+my_size(T).
    