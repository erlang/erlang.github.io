-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/erl_anno.erl", 1).

-module(erl_anno).

-export([new/1,is_anno/1]).

-export([column/1,
         end_location/1,
         file/1,
         generated/1,
         line/1,
         location/1,
         record/1,
         text/1]).

-export([set_file/2,
         set_generated/2,
         set_line/2,
         set_location/2,
         set_end_location/2,
         set_record/2,
         set_text/2]).

-export([to_term/1,from_term/1]).

-export_type([anno/0,line/0,column/0,location/0,text/0]).

-export_type([anno_term/0]).

-type annotation() ::
          {file, filename()} |
          {generated, generated()} |
          {location, location()} |
          {end_location, location()} |
          {record, record()} |
          {text, string()}.

-opaque anno() :: location() | [annotation(), ...].

-type anno_term() :: term().

-type column() :: pos_integer().

-type generated() :: boolean().

-type filename() :: file:filename_all().

-nominal line() :: non_neg_integer().

-nominal location() :: line() | {line(), column()}.

-type record() :: boolean().

-type text() :: string().

-spec to_term(Anno) -> anno_term() when Anno :: anno().

to_term(Anno) ->
    Anno.

-spec from_term(Term) -> Anno when Term :: anno_term(), Anno :: anno().

from_term(Line) when is_integer(Line), Line < 0 ->
    set_generated(true, new(-Line));
from_term(Term) ->
    Term.

-spec new(Location) -> anno() when Location :: location().

new(Line) when is_integer(Line), Line >= 0 ->
    new_location(Line);
new({Line, Column} = Loc)
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    new_location(Loc);
new(Term) ->
    error(badarg, [Term]).

new_location(Location) ->
    Location.

-spec is_anno(Term) -> boolean() when Term :: any().

is_anno(Line) when is_integer(Line), Line >= 0 ->
    true;
is_anno({Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    true;
is_anno(Anno) ->
    Anno =/= []
    andalso
    is_anno1(Anno)
    andalso
    lists:keymember(location, 1, Anno).

is_anno1([{Item, Value} | Anno]) ->
    is_anno2(Item, Value)
    andalso
    is_anno1(Anno);
is_anno1(A) ->
    A =:= [].

is_anno2(location, Line) when is_integer(Line), Line >= 0 ->
    true;
is_anno2(location, {Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    true;
is_anno2(generated, true) ->
    true;
is_anno2(file, Filename) ->
    is_filename(Filename);
is_anno2(record, true) ->
    true;
is_anno2(text, Text) ->
    is_string(Text);
is_anno2(_, _) ->
    false.

is_filename(T) ->
    is_list(T)
    orelse
    is_binary(T).

is_string(T) ->
    is_list(T).

-spec column(Anno) -> column() | undefined when Anno :: anno().

column({Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    Column;
column(Line) when is_integer(Line), Line >= 0 ->
    undefined;
column(Anno) ->
    case location(Anno) of
        {_Line, Column} ->
            Column;
        _Line ->
            undefined
    end.

-spec end_location(Anno) -> location() | undefined when Anno :: anno().

end_location(Line) when is_integer(Line), Line >= 0 ->
    undefined;
end_location({Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    undefined;
end_location(Anno) ->
    case anno_info(Anno, end_location) of
        undefined ->
            case text(Anno) of
                undefined ->
                    undefined;
                Text ->
                    case location(Anno) of
                        {Line, Column} ->
                            end_location(Text, Line, Column);
                        Line ->
                            end_location(Text, Line)
                    end
            end;
        Location ->
            Location
    end.

-spec file(Anno) -> filename() | undefined when Anno :: anno().

file(Line) when is_integer(Line), Line >= 0 ->
    undefined;
file({Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    undefined;
file(Anno) ->
    anno_info(Anno, file).

-spec generated(Anno) -> generated() when Anno :: anno().

generated(Line) when is_integer(Line), Line >= 0 ->
    false;
generated({Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    false;
generated(Anno) ->
    anno_info(Anno, generated, false).

-spec line(Anno) -> line() when Anno :: anno().

line(Anno) ->
    case location(Anno) of
        {Line, _Column} ->
            Line;
        Line ->
            Line
    end.

-spec location(Anno) -> location() when Anno :: anno().

location(Line) when is_integer(Line), Line >= 0 ->
    Line;
location({Line, Column} = Location)
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    Location;
location(Anno) ->
    anno_info(Anno, location).

-spec record(Anno) -> record() when Anno :: anno().

record(Line) when is_integer(Line), Line >= 0 ->
    false;
record({Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    false;
record(Anno) ->
    anno_info(Anno, record, false).

-spec text(Anno) -> text() | undefined when Anno :: anno().

text(Line) when is_integer(Line), Line >= 0 ->
    undefined;
text({Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    undefined;
text(Anno) ->
    anno_info(Anno, text).

-spec set_file(File, Anno) -> Anno
                  when File :: filename(), Anno :: anno().

set_file(File, Anno) ->
    set(file, File, Anno).

-spec set_generated(Generated, Anno) -> Anno
                       when Generated :: generated(), Anno :: anno().

set_generated(Generated, Anno) ->
    set(generated, Generated, Anno).

-spec set_line(Line, Anno) -> Anno when Line :: line(), Anno :: anno().

set_line(Line, Anno) ->
    case location(Anno) of
        {_Line, Column} ->
            set_location({Line, Column}, Anno);
        _Line ->
            set_location(Line, Anno)
    end.

-spec set_location(Location, Anno) -> Anno
                      when Location :: location(), Anno :: anno().

set_location(Line, L)
    when is_integer(L), L >= 0, is_integer(Line), Line >= 0 ->
    new_location(Line);
set_location(Line, {L, Column})
    when
        is_integer(L),
        L >= 0,
        is_integer(Column)
        andalso
        Column >= 1,
        is_integer(Line),
        Line >= 0 ->
    new_location(Line);
set_location({L, C} = Loc, Line)
    when
        is_integer(Line),
        Line >= 0,
        is_integer(L),
        L >= 0,
        is_integer(C)
        andalso
        C >= 1 ->
    new_location(Loc);
set_location({L, C} = Loc, {Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1,
        is_integer(L),
        L >= 0,
        is_integer(C)
        andalso
        C >= 1 ->
    new_location(Loc);
set_location(Location, Anno) ->
    set(location, Location, Anno).

-spec set_end_location(Location, Anno) -> Anno
                          when Location :: location(), Anno :: anno().

set_end_location(Location, Anno) ->
    set(end_location, Location, Anno).

-spec set_record(Record, Anno) -> Anno
                    when Record :: record(), Anno :: anno().

set_record(Record, Anno) ->
    set(record, Record, Anno).

-spec set_text(Text, Anno) -> Anno when Text :: text(), Anno :: anno().

set_text(Text, Anno) ->
    set(text, Text, Anno).

set(Item, Value, Anno) ->
    case {is_settable(Item, Value), Anno} of
        {true, Line} when is_integer(Line), Line >= 0 ->
            set_anno(Item, Value, [{location, Line}]);
        {true, {L, C} = Location}
            when
                is_integer(L),
                L >= 0,
                is_integer(C)
                andalso
                C >= 1 ->
            set_anno(Item, Value, [{location, Location}]);
        {true, A} when is_list(A), A =/= [] ->
            set_anno(Item, Value, Anno);
        _ ->
            error(badarg, [Item, Value, Anno])
    end.

set_anno(Item, Value, Anno) ->
    case default(Item, Value) of
        true ->
            reset(Anno, Item);
        false ->
            R = case anno_info(Anno, Item) of
                    undefined ->
                        [{Item, Value} | Anno];
                    _ ->
                        lists:keyreplace(Item, 1, Anno, {Item, Value})
                end,
            reset_simplify(R)
    end.

reset(Anno, Item) ->
    A = lists:keydelete(Item, 1, Anno),
    reset_simplify(A).

reset_simplify(A) ->
    simplify(A).

simplify([{location, Location}]) ->
    Location;
simplify(Anno) ->
    Anno.

anno_info(Anno, Item, Default) ->
    try lists:keyfind(Item, 1, Anno) of
        false ->
            Default;
        {Item, Value} ->
            Value
    catch
        _:_ ->
            error(badarg, [Anno, Item, Default])
    end.

anno_info(Anno, Item) ->
    try lists:keyfind(Item, 1, Anno) of
        {Item, Value} ->
            Value;
        false ->
            undefined
    catch
        _:_ ->
            error(badarg, [Anno, Item])
    end.

end_location("", Line, Column) ->
    {Line, Column};
end_location([$\n | String], Line, _Column) ->
    end_location(String, Line + 1, 1);
end_location([_ | String], Line, Column) ->
    end_location(String, Line, Column + 1).

end_location("", Line) ->
    Line;
end_location([$\n | String], Line) ->
    end_location(String, Line + 1);
end_location([_ | String], Line) ->
    end_location(String, Line).

is_settable(file, File) ->
    is_filename(File);
is_settable(generated, Boolean) when Boolean; not Boolean ->
    true;
is_settable(location, Line) when is_integer(Line), Line >= 0 ->
    true;
is_settable(location, {Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    true;
is_settable(end_location, Line) when is_integer(Line), Line >= 0 ->
    true;
is_settable(end_location, {Line, Column})
    when
        is_integer(Line),
        Line >= 0,
        is_integer(Column)
        andalso
        Column >= 1 ->
    true;
is_settable(record, Boolean) when Boolean; not Boolean ->
    true;
is_settable(text, Text) ->
    is_string(Text);
is_settable(_, _) ->
    false.

default(generated, false) ->
    true;
default(record, false) ->
    true;
default(_, _) ->
    false.



