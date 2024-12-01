-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/uri_string.erl",
      1).

-module(uri_string).

-export([allowed_characters/0,
         compose_query/1,
         compose_query/2,
         dissect_query/1,
         normalize/1,
         normalize/2,
         percent_decode/1,
         parse/1,
         recompose/1,
         resolve/2,
         resolve/3,
         transcode/2,
         quote/1,
         quote/2,
         unquote/1]).

-export_type([error/0,uri_map/0,uri_string/0]).

-export([is_host/1,is_path/1]).

-type uri_string() :: iodata().

-type error() :: {error, atom(), term()}.

-type uri_map() ::
          #{fragment => unicode:chardata(),
            host => unicode:chardata(),
            path => unicode:chardata(),
            port => non_neg_integer() | undefined,
            query => unicode:chardata(),
            scheme => unicode:chardata(),
            userinfo => unicode:chardata()}.

-spec normalize(URI) -> NormalizedURI
                   when
                       URI :: uri_string() | uri_map(),
                       NormalizedURI :: uri_string() | error().

normalize(URIMap) ->
    normalize(URIMap, []).

-spec normalize(URI, Options) -> NormalizedURI
                   when
                       URI :: uri_string() | uri_map(),
                       Options :: [return_map],
                       NormalizedURI ::
                           uri_string() | uri_map() | error().

normalize(URIMap, []) when is_map(URIMap) ->
    try
        recompose(normalize_map(URIMap))
    catch
        throw:{error, Atom, RestData} ->
            {error, Atom, RestData}
    end;
normalize(URIMap, [return_map]) when is_map(URIMap) ->
    try
        normalize_map(URIMap)
    catch
        throw:{error, Atom, RestData} ->
            {error, Atom, RestData}
    end;
normalize(URIString, []) ->
    case parse(URIString) of
        Value when is_map(Value) ->
            try
                recompose(normalize_map(Value))
            catch
                throw:{error, Atom, RestData} ->
                    {error, Atom, RestData}
            end;
        Error ->
            Error
    end;
normalize(URIString, [return_map]) ->
    case parse(URIString) of
        Value when is_map(Value) ->
            try
                normalize_map(Value)
            catch
                throw:{error, Atom, RestData} ->
                    {error, Atom, RestData}
            end;
        Error ->
            Error
    end.

-spec parse(URIString) -> URIMap
               when
                   URIString :: uri_string(),
                   URIMap :: uri_map() | error().

parse(URIString) when is_binary(URIString) ->
    try
        parse_uri_reference(URIString, #{})
    catch
        throw:{error, Atom, RestData} ->
            {error, Atom, RestData}
    end;
parse(URIString) when is_list(URIString) ->
    try
        Binary = unicode:characters_to_binary(URIString),
        Map = parse_uri_reference(Binary, #{}),
        convert_mapfields_to_list(Map)
    catch
        throw:{error, Atom, RestData} ->
            {error, Atom, RestData}
    end.

-spec recompose(URIMap) -> URIString
                   when
                       URIMap :: uri_map(),
                       URIString :: uri_string() | error().

recompose(Map) ->
    case is_valid_map(Map) of
        false ->
            {error, invalid_map, Map};
        true ->
            try
                T0 = update_scheme(Map, empty),
                T1 = update_userinfo(Map, T0),
                T2 = update_host(Map, T1),
                T3 = update_port(Map, T2),
                T4 = update_path(Map, T3),
                T5 = update_query(Map, T4),
                update_fragment(Map, T5)
            catch
                throw:{error, Atom, RestData} ->
                    {error, Atom, RestData}
            end
    end.

-spec resolve(RefURI, BaseURI) -> TargetURI
                 when
                     RefURI :: uri_string() | uri_map(),
                     BaseURI :: uri_string() | uri_map(),
                     TargetURI :: uri_string() | error().

resolve(URIMap, BaseURIMap) ->
    resolve(URIMap, BaseURIMap, []).

-spec resolve(RefURI, BaseURI, Options) -> TargetURI
                 when
                     RefURI :: uri_string() | uri_map(),
                     BaseURI :: uri_string() | uri_map(),
                     Options :: [return_map],
                     TargetURI :: uri_string() | uri_map() | error().

resolve(URIMap, BaseURIMap, Options) when is_map(URIMap) ->
    case resolve_map(URIMap, BaseURIMap) of
        TargetURIMap when is_map(TargetURIMap) ->
            case Options of
                [return_map] ->
                    TargetURIMap;
                [] ->
                    recompose(TargetURIMap)
            end;
        Error ->
            Error
    end;
resolve(URIString, BaseURIMap, Options) ->
    case parse(URIString) of
        URIMap when is_map(URIMap) ->
            resolve(URIMap, BaseURIMap, Options);
        Error ->
            Error
    end.

-spec transcode(URIString, Options) -> Result
                   when
                       URIString :: uri_string(),
                       Options ::
                           [{in_encoding, unicode:encoding()} |
                            {out_encoding, unicode:encoding()}],
                       Result :: uri_string() | error().

transcode(URIString, Options) when is_binary(URIString) ->
    try
        InEnc = proplists:get_value(in_encoding, Options, utf8),
        OutEnc = proplists:get_value(out_encoding, Options, utf8),
        List = convert_to_list(URIString, InEnc),
        Output = transcode(List, [], InEnc, OutEnc),
        convert_to_binary(Output, utf8, OutEnc)
    catch
        throw:{error, Atom, RestData} ->
            {error, Atom, RestData}
    end;
transcode(URIString, Options) when is_list(URIString) ->
    InEnc = proplists:get_value(in_encoding, Options, utf8),
    OutEnc = proplists:get_value(out_encoding, Options, utf8),
    Flattened = flatten_list(URIString, InEnc),
    try
        transcode(Flattened, [], InEnc, OutEnc)
    catch
        throw:{error, Atom, RestData} ->
            {error, Atom, RestData}
    end.

-spec allowed_characters() -> [{atom(), list()}].

allowed_characters() ->
    Input = lists:seq(0, 127),
    Scheme = lists:filter(fun is_scheme/1, Input),
    UserInfo = lists:filter(fun is_userinfo/1, Input),
    Host = lists:filter(fun is_host/1, Input),
    IPv4 = lists:filter(fun is_ipv4/1, Input),
    IPv6 = lists:filter(fun is_ipv6/1, Input),
    RegName = lists:filter(fun is_reg_name/1, Input),
    Path = lists:filter(fun is_path/1, Input),
    Query = lists:filter(fun is_query/1, Input),
    Fragment = lists:filter(fun is_fragment/1, Input),
    Reserved = lists:filter(fun is_reserved/1, Input),
    Unreserved = lists:filter(fun is_unreserved/1, Input),
    [{scheme, Scheme},
     {userinfo, UserInfo},
     {host, Host},
     {ipv4, IPv4},
     {ipv6, IPv6},
     {regname, RegName},
     {path, Path},
     {query, Query},
     {fragment, Fragment},
     {reserved, Reserved},
     {unreserved, Unreserved}].

-spec percent_decode(URI) -> Result
                        when
                            URI :: uri_string() | uri_map(),
                            Result ::
                                uri_string() |
                                uri_map() |
                                {error,
                                 {invalid, {atom(), {term(), term()}}}}.

percent_decode(URIMap) when is_map(URIMap) ->
    Fun =
        fun(K, V)
               when
                   K =:= userinfo;
                   K =:= host;
                   K =:= path;
                   K =:= query;
                   K =:= fragment ->
               case raw_decode(V) of
                   {error, Reason, Input} ->
                       throw({error, {invalid, {K, {Reason, Input}}}});
                   Else ->
                       Else
               end;
           (_, V) ->
               V
        end,
    try
        maps:map(Fun, URIMap)
    catch
        throw:Return ->
            Return
    end;
percent_decode(URI)
    when
        is_list(URI)
        orelse
        is_binary(URI) ->
    raw_decode(URI).

-spec quote(Data) -> QuotedData
               when
                   Data :: unicode:chardata(),
                   QuotedData :: unicode:chardata().

quote(D) ->
    encode(D, fun is_unreserved/1).

-spec quote(Data, Safe) -> QuotedData
               when
                   Data :: unicode:chardata(),
                   Safe :: string(),
                   QuotedData :: unicode:chardata().

quote(D, Safe) ->
    UnreservedOrSafe =
        fun(C) ->
               is_unreserved(C)
               orelse
               lists:member(C, Safe)
        end,
    encode(D, UnreservedOrSafe).

-spec unquote(QuotedData) -> Data
                 when
                     QuotedData :: unicode:chardata(),
                     Data :: unicode:chardata().

unquote(D) ->
    raw_decode(D).

-spec compose_query(QueryList) -> QueryString
                       when
                           QueryList ::
                               [{unicode:chardata(),
                                 unicode:chardata() | true}],
                           QueryString :: uri_string() | error().

compose_query(List) ->
    compose_query(List, [{encoding, utf8}]).

-spec compose_query(QueryList, Options) -> QueryString
                       when
                           QueryList ::
                               [{unicode:chardata(),
                                 unicode:chardata() | true}],
                           Options :: [{encoding, atom()}],
                           QueryString :: uri_string() | error().

compose_query([], _Options) ->
    [];
compose_query(List, Options) ->
    try
        compose_query(List, Options, false, <<>>)
    catch
        throw:{error, Atom, RestData} ->
            {error, Atom, RestData}
    end.

compose_query([{Key, true} | Rest], Options, IsList, Acc) ->
    Separator = get_separator(Rest),
    K = form_urlencode(Key, Options),
    IsListNew =
        IsList
        orelse
        is_list(Key),
    compose_query(Rest, Options, IsListNew,
                  <<Acc/binary,K/binary,Separator/binary>>);
compose_query([{Key, Value} | Rest], Options, IsList, Acc) ->
    Separator = get_separator(Rest),
    K = form_urlencode(Key, Options),
    V = form_urlencode(Value, Options),
    IsListNew =
        IsList
        orelse
        is_list(Key)
        orelse
        is_list(Value),
    compose_query(Rest, Options, IsListNew,
                  <<Acc/binary,K/binary,"=",V/binary,Separator/binary>>);
compose_query([], _Options, IsList, Acc) ->
    case IsList of
        true ->
            convert_to_list(Acc, utf8);
        false ->
            Acc
    end.

-spec dissect_query(QueryString) -> QueryList
                       when
                           QueryString :: uri_string(),
                           QueryList ::
                               [{unicode:chardata(),
                                 unicode:chardata() | true}] |
                               error().

dissect_query(<<>>) ->
    [];
dissect_query([]) ->
    [];
dissect_query(QueryString) when is_list(QueryString) ->
    try
        B = convert_to_binary(QueryString, utf8, utf8),
        dissect_query_key(B, true, [], <<>>, <<>>)
    catch
        throw:{error, Atom, RestData} ->
            {error, Atom, RestData}
    end;
dissect_query(QueryString) ->
    try
        dissect_query_key(QueryString, false, [], <<>>, <<>>)
    catch
        throw:{error, Atom, RestData} ->
            {error, Atom, RestData}
    end.

convert_mapfields_to_list(Map) ->
    Fun =
        fun(_, V) when is_binary(V) ->
               unicode:characters_to_list(V);
           (_, V) ->
               V
        end,
    maps:map(Fun, Map).

-spec parse_uri_reference(binary(), uri_map()) -> uri_map().

parse_uri_reference(<<>>, _) ->
    #{path => <<>>};
parse_uri_reference(URIString, URI) ->
    try
        parse_scheme_start(URIString, URI)
    catch
        throw:{_, _, _} ->
            parse_relative_part(URIString, URI)
    end.

-spec parse_relative_part(binary(), uri_map()) -> uri_map().

parse_relative_part(<<"//"/utf8,Rest/binary>>, URI) ->
    try parse_userinfo(Rest, URI) of
        {T, URI1} ->
            Userinfo = calculate_parsed_userinfo(Rest, T),
            URI2 = maybe_add_path(URI1),
            URI2#{userinfo => Userinfo}
    catch
        throw:{_, _, _} ->
            {T, URI1} = parse_host(Rest, URI),
            Host = calculate_parsed_host_port(Rest, T),
            URI2 = maybe_add_path(URI1),
            URI2#{host => remove_brackets(Host)}
    end;
parse_relative_part(<<$//utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_segment(Rest, URI),
    Path = calculate_parsed_part(Rest, T),
    URI1#{path => <<$//utf8,Path/binary>>};
parse_relative_part(<<$?/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_query(Rest, URI),
    Query = calculate_parsed_query_fragment(Rest, T),
    URI2 = maybe_add_path(URI1),
    URI2#{query => Query};
parse_relative_part(<<$#/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_fragment(Rest, URI),
    Fragment = calculate_parsed_query_fragment(Rest, T),
    URI2 = maybe_add_path(URI1),
    URI2#{fragment => Fragment};
parse_relative_part(<<Char/utf8,Rest/binary>>, URI) ->
    case is_segment_nz_nc(Char) of
        true ->
            {T, URI1} = parse_segment_nz_nc(Rest, URI),
            Path = calculate_parsed_part(Rest, T),
            URI1#{path => <<Char/utf8,Path/binary>>};
        false ->
            throw({error, invalid_uri, [Char]})
    end.

-spec parse_segment(binary(), uri_map()) -> {binary(), uri_map()}.

parse_segment(<<$//utf8,Rest/binary>>, URI) ->
    parse_segment(Rest, URI);
parse_segment(<<$?/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_query(Rest, URI),
    Query = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{query => Query}};
parse_segment(<<$#/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_fragment(Rest, URI),
    Fragment = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{fragment => Fragment}};
parse_segment(<<Char/utf8,Rest/binary>>, URI) ->
    case is_pchar(Char) of
        true ->
            parse_segment(Rest, URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_segment(<<>>, URI) ->
    {<<>>, URI}.

-spec parse_segment_nz_nc(binary(), uri_map()) -> {binary(), uri_map()}.

parse_segment_nz_nc(<<$//utf8,Rest/binary>>, URI) ->
    parse_segment(Rest, URI);
parse_segment_nz_nc(<<$?/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_query(Rest, URI),
    Query = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{query => Query}};
parse_segment_nz_nc(<<$#/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_fragment(Rest, URI),
    Fragment = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{fragment => Fragment}};
parse_segment_nz_nc(<<Char/utf8,Rest/binary>>, URI) ->
    case is_segment_nz_nc(Char) of
        true ->
            parse_segment_nz_nc(Rest, URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_segment_nz_nc(<<>>, URI) ->
    {<<>>, URI}.

-spec is_pchar(char()) -> boolean().

is_pchar($%) ->
    true;
is_pchar($:) ->
    true;
is_pchar($@) ->
    true;
is_pchar(Char) ->
    is_unreserved(Char)
    orelse
    is_sub_delim(Char).

-spec is_segment_nz_nc(char()) -> boolean().

is_segment_nz_nc($%) ->
    true;
is_segment_nz_nc($@) ->
    true;
is_segment_nz_nc(Char) ->
    is_unreserved(Char)
    orelse
    is_sub_delim(Char).

-spec parse_scheme_start(binary(), uri_map()) -> uri_map().

parse_scheme_start(<<Char/utf8,Rest/binary>>, URI) ->
    case is_alpha(Char) of
        true ->
            {T, URI1} = parse_scheme(Rest, URI),
            Scheme = calculate_parsed_scheme(Rest, T),
            URI2 = maybe_add_path(URI1),
            URI2#{scheme => <<Char/utf8,Scheme/binary>>};
        false ->
            throw({error, invalid_uri, [Char]})
    end.

maybe_add_path(Map) ->
    case maps:is_key(path, Map) of
        false ->
            Map#{path => <<>>};
        _Else ->
            Map
    end.

-spec parse_scheme(binary(), uri_map()) -> {binary(), uri_map()}.

parse_scheme(<<$:/utf8,Rest/binary>>, URI) ->
    {_, URI1} = parse_hier(Rest, URI),
    {Rest, URI1};
parse_scheme(<<Char/utf8,Rest/binary>>, URI) ->
    case is_scheme(Char) of
        true ->
            parse_scheme(Rest, URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_scheme(<<>>, _URI) ->
    throw({error, invalid_uri, <<>>}).

-spec is_scheme(char()) -> boolean().

is_scheme($+) ->
    true;
is_scheme($-) ->
    true;
is_scheme($.) ->
    true;
is_scheme(Char) ->
    is_alpha(Char)
    orelse
    is_digit(Char).

-spec parse_hier(binary(), uri_map()) -> {binary(), uri_map()}.

parse_hier(<<"//"/utf8,Rest/binary>>, URI) ->
    try parse_userinfo(Rest, URI) of
        {T, URI1} ->
            Userinfo = calculate_parsed_userinfo(Rest, T),
            {Rest, URI1#{userinfo => Userinfo}}
    catch
        throw:{_, _, _} ->
            {T, URI1} = parse_host(Rest, URI),
            Host = calculate_parsed_host_port(Rest, T),
            {Rest, URI1#{host => remove_brackets(Host)}}
    end;
parse_hier(<<$//utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_segment(Rest, URI),
    Path = calculate_parsed_part(Rest, T),
    {Rest, URI1#{path => <<$//utf8,Path/binary>>}};
parse_hier(<<$?/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_query(Rest, URI),
    Query = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{query => Query}};
parse_hier(<<$#/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_fragment(Rest, URI),
    Fragment = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{fragment => Fragment}};
parse_hier(<<Char/utf8,Rest/binary>>, URI) ->
    case is_pchar(Char) of
        true ->
            {T, URI1} = parse_segment(Rest, URI),
            Path = calculate_parsed_part(Rest, T),
            {Rest, URI1#{path => <<Char/utf8,Path/binary>>}};
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_hier(<<>>, URI) ->
    {<<>>, URI}.

-spec parse_userinfo(binary(), uri_map()) -> {binary(), uri_map()}.

parse_userinfo(<<$@/utf8>>, URI) ->
    {<<>>, URI#{host => <<>>}};
parse_userinfo(<<$@/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_host(Rest, URI),
    Host = calculate_parsed_host_port(Rest, T),
    {Rest, URI1#{host => remove_brackets(Host)}};
parse_userinfo(<<Char/utf8,Rest/binary>>, URI) ->
    case is_userinfo(Char) of
        true ->
            parse_userinfo(Rest, URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_userinfo(<<>>, _URI) ->
    throw({error, invalid_uri, <<>>}).

-spec is_userinfo(char()) -> boolean().

is_userinfo($%) ->
    true;
is_userinfo($:) ->
    true;
is_userinfo(Char) ->
    is_unreserved(Char)
    orelse
    is_sub_delim(Char).

-spec parse_host(binary(), uri_map()) -> {binary(), uri_map()}.

parse_host(<<$:/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_port(Rest, URI),
    H = calculate_parsed_host_port(Rest, T),
    Port = get_port(H),
    {Rest, URI1#{port => Port}};
parse_host(<<$//utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_segment(Rest, URI),
    Path = calculate_parsed_part(Rest, T),
    {Rest, URI1#{path => <<$//utf8,Path/binary>>}};
parse_host(<<$?/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_query(Rest, URI),
    Query = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{query => Query}};
parse_host(<<$[/utf8,Rest/binary>>, URI) ->
    parse_ipv6_bin(Rest, [], URI);
parse_host(<<$#/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_fragment(Rest, URI),
    Fragment = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{fragment => Fragment}};
parse_host(<<Char/utf8,Rest/binary>>, URI) ->
    case is_digit(Char) of
        true ->
            try
                parse_ipv4_bin(Rest, [Char], URI)
            catch
                throw:{_, _, _} ->
                    parse_reg_name(<<Char/utf8,Rest/binary>>, URI)
            end;
        false ->
            parse_reg_name(<<Char/utf8,Rest/binary>>, URI)
    end;
parse_host(<<>>, URI) ->
    {<<>>, URI}.

-spec parse_reg_name(binary(), uri_map()) -> {binary(), uri_map()}.

parse_reg_name(<<$:/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_port(Rest, URI),
    H = calculate_parsed_host_port(Rest, T),
    Port = get_port(H),
    {Rest, URI1#{port => Port}};
parse_reg_name(<<$//utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_segment(Rest, URI),
    Path = calculate_parsed_part(Rest, T),
    {Rest, URI1#{path => <<$//utf8,Path/binary>>}};
parse_reg_name(<<$?/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_query(Rest, URI),
    Query = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{query => Query}};
parse_reg_name(<<$#/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_fragment(Rest, URI),
    Fragment = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{fragment => Fragment}};
parse_reg_name(<<Char/utf8,Rest/binary>>, URI) ->
    case is_reg_name(Char) of
        true ->
            parse_reg_name(Rest, URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_reg_name(<<>>, URI) ->
    {<<>>, URI}.

-spec is_reg_name(char()) -> boolean().

is_reg_name($%) ->
    true;
is_reg_name(Char) ->
    is_unreserved(Char)
    orelse
    is_sub_delim(Char).

-spec parse_ipv4_bin(binary(), list(), uri_map()) ->
                        {binary(), uri_map()}.

parse_ipv4_bin(<<$:/utf8,Rest/binary>>, Acc, URI) ->
    _ = validate_ipv4_address(lists:reverse(Acc)),
    {T, URI1} = parse_port(Rest, URI),
    H = calculate_parsed_host_port(Rest, T),
    Port = get_port(H),
    {Rest, URI1#{port => Port}};
parse_ipv4_bin(<<$//utf8,Rest/binary>>, Acc, URI) ->
    _ = validate_ipv4_address(lists:reverse(Acc)),
    {T, URI1} = parse_segment(Rest, URI),
    Path = calculate_parsed_part(Rest, T),
    {Rest, URI1#{path => <<$//utf8,Path/binary>>}};
parse_ipv4_bin(<<$?/utf8,Rest/binary>>, Acc, URI) ->
    _ = validate_ipv4_address(lists:reverse(Acc)),
    {T, URI1} = parse_query(Rest, URI),
    Query = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{query => Query}};
parse_ipv4_bin(<<$#/utf8,Rest/binary>>, Acc, URI) ->
    _ = validate_ipv4_address(lists:reverse(Acc)),
    {T, URI1} = parse_fragment(Rest, URI),
    Fragment = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{fragment => Fragment}};
parse_ipv4_bin(<<Char/utf8,Rest/binary>>, Acc, URI) ->
    case is_ipv4(Char) of
        true ->
            parse_ipv4_bin(Rest, [Char | Acc], URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_ipv4_bin(<<>>, Acc, URI) ->
    _ = validate_ipv4_address(lists:reverse(Acc)),
    {<<>>, URI}.

-spec is_ipv4(char()) -> boolean().

is_ipv4($.) ->
    true;
is_ipv4(Char) ->
    is_digit(Char).

-spec validate_ipv4_address(list()) -> list().

validate_ipv4_address(Addr) ->
    case inet:parse_ipv4strict_address(Addr) of
        {ok, _} ->
            Addr;
        {error, _} ->
            throw({error, invalid_uri, Addr})
    end.

-spec parse_ipv6_bin(binary(), list(), uri_map()) ->
                        {binary(), uri_map()}.

parse_ipv6_bin(<<$]/utf8,Rest/binary>>, Acc, URI) ->
    _ = validate_ipv6_address(lists:reverse(Acc)),
    parse_ipv6_bin_end(Rest, URI);
parse_ipv6_bin(<<Char/utf8,Rest/binary>>, Acc, URI) ->
    case is_ipv6(Char) of
        true ->
            parse_ipv6_bin(Rest, [Char | Acc], URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_ipv6_bin(<<>>, _Acc, _URI) ->
    throw({error, invalid_uri, <<>>}).

-spec is_ipv6(char()) -> boolean().

is_ipv6($:) ->
    true;
is_ipv6($.) ->
    true;
is_ipv6(Char) ->
    is_hex_digit(Char).

-spec parse_ipv6_bin_end(binary(), uri_map()) -> {binary(), uri_map()}.

parse_ipv6_bin_end(<<$:/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_port(Rest, URI),
    H = calculate_parsed_host_port(Rest, T),
    Port = get_port(H),
    {Rest, URI1#{port => Port}};
parse_ipv6_bin_end(<<$//utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_segment(Rest, URI),
    Path = calculate_parsed_part(Rest, T),
    {Rest, URI1#{path => <<$//utf8,Path/binary>>}};
parse_ipv6_bin_end(<<$?/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_query(Rest, URI),
    Query = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{query => Query}};
parse_ipv6_bin_end(<<$#/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_fragment(Rest, URI),
    Fragment = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{fragment => Fragment}};
parse_ipv6_bin_end(<<Char/utf8,Rest/binary>>, URI) ->
    case is_ipv6(Char) of
        true ->
            parse_ipv6_bin_end(Rest, URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_ipv6_bin_end(<<>>, URI) ->
    {<<>>, URI}.

-spec validate_ipv6_address(list()) -> list().

validate_ipv6_address(Addr) ->
    case inet:parse_ipv6strict_address(Addr) of
        {ok, _} ->
            Addr;
        {error, _} ->
            throw({error, invalid_uri, Addr})
    end.

-spec parse_port(binary(), uri_map()) -> {binary(), uri_map()}.

parse_port(<<$//utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_segment(Rest, URI),
    Path = calculate_parsed_part(Rest, T),
    {Rest, URI1#{path => <<$//utf8,Path/binary>>}};
parse_port(<<$?/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_query(Rest, URI),
    Query = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{query => Query}};
parse_port(<<$#/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_fragment(Rest, URI),
    Fragment = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{fragment => Fragment}};
parse_port(<<Char/utf8,Rest/binary>>, URI) ->
    case is_digit(Char) of
        true ->
            parse_port(Rest, URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_port(<<>>, URI) ->
    {<<>>, URI}.

-spec parse_query(binary(), uri_map()) -> {binary(), uri_map()}.

parse_query(<<$#/utf8,Rest/binary>>, URI) ->
    {T, URI1} = parse_fragment(Rest, URI),
    Fragment = calculate_parsed_query_fragment(Rest, T),
    {Rest, URI1#{fragment => Fragment}};
parse_query(<<Char/utf8,Rest/binary>>, URI) ->
    case is_query(Char) of
        true ->
            parse_query(Rest, URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_query(<<>>, URI) ->
    {<<>>, URI}.

-spec is_query(char()) -> boolean().

is_query($/) ->
    true;
is_query($?) ->
    true;
is_query(Char) ->
    is_pchar(Char).

-spec parse_fragment(binary(), uri_map()) -> {binary(), uri_map()}.

parse_fragment(<<Char/utf8,Rest/binary>>, URI) ->
    case is_fragment(Char) of
        true ->
            parse_fragment(Rest, URI);
        false ->
            throw({error, invalid_uri, [Char]})
    end;
parse_fragment(<<>>, URI) ->
    {<<>>, URI}.

-spec is_fragment(char()) -> boolean().

is_fragment($/) ->
    true;
is_fragment($?) ->
    true;
is_fragment(Char) ->
    is_pchar(Char).

-spec is_reserved(char()) -> boolean().

is_reserved($:) ->
    true;
is_reserved($/) ->
    true;
is_reserved($?) ->
    true;
is_reserved($#) ->
    true;
is_reserved($[) ->
    true;
is_reserved($]) ->
    true;
is_reserved($@) ->
    true;
is_reserved($!) ->
    true;
is_reserved($$) ->
    true;
is_reserved($&) ->
    true;
is_reserved($') ->
    true;
is_reserved($() ->
    true;
is_reserved($)) ->
    true;
is_reserved($*) ->
    true;
is_reserved($+) ->
    true;
is_reserved($,) ->
    true;
is_reserved($;) ->
    true;
is_reserved($=) ->
    true;
is_reserved(_) ->
    false.

-spec is_sub_delim(char()) -> boolean().

is_sub_delim($!) ->
    true;
is_sub_delim($$) ->
    true;
is_sub_delim($&) ->
    true;
is_sub_delim($') ->
    true;
is_sub_delim($() ->
    true;
is_sub_delim($)) ->
    true;
is_sub_delim($*) ->
    true;
is_sub_delim($+) ->
    true;
is_sub_delim($,) ->
    true;
is_sub_delim($;) ->
    true;
is_sub_delim($=) ->
    true;
is_sub_delim(_) ->
    false.

-spec is_unreserved(char()) -> boolean().

is_unreserved($-) ->
    true;
is_unreserved($.) ->
    true;
is_unreserved($_) ->
    true;
is_unreserved($~) ->
    true;
is_unreserved(Char) ->
    is_alpha(Char)
    orelse
    is_digit(Char).

-spec is_alpha(char()) -> boolean().

is_alpha(C) when $A =< C, C =< $Z; $a =< C, C =< $z ->
    true;
is_alpha(_) ->
    false.

-spec is_digit(char()) -> boolean().

is_digit(C) when $0 =< C, C =< $9 ->
    true;
is_digit(_) ->
    false.

-spec is_hex_digit(char()) -> boolean().

is_hex_digit(C)
    when $0 =< C, C =< $9; $a =< C, C =< $f; $A =< C, C =< $F ->
    true;
is_hex_digit(_) ->
    false.

-spec remove_brackets(binary()) -> binary().

remove_brackets(<<$[/utf8,Rest/binary>>) ->
    {H, T} = split_binary(Rest, byte_size(Rest) - 1),
    case T =:= <<$]/utf8>> of
        true ->
            H;
        false ->
            Rest
    end;
remove_brackets(Addr) ->
    Addr.

-spec calculate_parsed_scheme(binary(), binary()) -> binary().

calculate_parsed_scheme(Input, <<>>) ->
    strip_last_char(Input, [$:]);
calculate_parsed_scheme(Input, Unparsed) ->
    get_parsed_binary(Input, Unparsed).

-spec calculate_parsed_part(binary(), binary()) -> binary().

calculate_parsed_part(Input, <<>>) ->
    strip_last_char(Input, [$?, $#]);
calculate_parsed_part(Input, Unparsed) ->
    get_parsed_binary(Input, Unparsed).

-spec calculate_parsed_userinfo(binary(), binary()) -> binary().

calculate_parsed_userinfo(Input, <<>>) ->
    strip_last_char(Input, [$?, $#, $@]);
calculate_parsed_userinfo(Input, Unparsed) ->
    get_parsed_binary(Input, Unparsed).

-spec calculate_parsed_host_port(binary(), binary()) -> binary().

calculate_parsed_host_port(Input, <<>>) ->
    strip_last_char(Input, [$:, $?, $#, $/]);
calculate_parsed_host_port(Input, Unparsed) ->
    get_parsed_binary(Input, Unparsed).

calculate_parsed_query_fragment(Input, <<>>) ->
    strip_last_char(Input, [$#]);
calculate_parsed_query_fragment(Input, Unparsed) ->
    get_parsed_binary(Input, Unparsed).

get_port(<<>>) ->
    undefined;
get_port(B) ->
    try
        binary_to_integer(B)
    catch
        error:badarg ->
            throw({error, invalid_uri, B})
    end.

strip_last_char(<<>>, _) ->
    <<>>;
strip_last_char(Input, [C0]) ->
    case binary:last(Input) of
        C0 ->
            init_binary(Input);
        _Else ->
            Input
    end;
strip_last_char(Input, [C0, C1]) ->
    case binary:last(Input) of
        C0 ->
            init_binary(Input);
        C1 ->
            init_binary(Input);
        _Else ->
            Input
    end;
strip_last_char(Input, [C0, C1, C2]) ->
    case binary:last(Input) of
        C0 ->
            init_binary(Input);
        C1 ->
            init_binary(Input);
        C2 ->
            init_binary(Input);
        _Else ->
            Input
    end;
strip_last_char(Input, [C0, C1, C2, C3]) ->
    case binary:last(Input) of
        C0 ->
            init_binary(Input);
        C1 ->
            init_binary(Input);
        C2 ->
            init_binary(Input);
        C3 ->
            init_binary(Input);
        _Else ->
            Input
    end.

get_parsed_binary(Input, Unparsed) ->
    {First, _} =
        split_binary(Input,
                     byte_size(Input) - byte_size_exl_head(Unparsed)),
    First.

init_binary(B) ->
    {Init, _} = split_binary(B, byte_size(B) - 1),
    Init.

-spec byte_size_exl_head(binary()) -> number().

byte_size_exl_head(<<>>) ->
    0;
byte_size_exl_head(Binary) ->
    byte_size(Binary) + 1.

-spec encode_scheme(list() | binary()) -> list() | binary().

encode_scheme([]) ->
    throw({error, invalid_scheme, ""});
encode_scheme(<<>>) ->
    throw({error, invalid_scheme, <<>>});
encode_scheme(Scheme) ->
    case validate_scheme(Scheme) of
        true ->
            Scheme;
        false ->
            throw({error, invalid_scheme, Scheme})
    end.

-spec encode_userinfo(list() | binary()) -> list() | binary().

encode_userinfo(Cs) ->
    encode(Cs, fun is_userinfo/1).

-spec encode_host(list() | binary()) -> list() | binary().

encode_host(Cs) ->
    case classify_host(Cs) of
        regname ->
            Cs;
        ipv4 ->
            Cs;
        ipv6 ->
            bracket_ipv6(Cs);
        other ->
            encode(Cs, fun is_reg_name/1)
    end.

-spec encode_path(list() | binary()) -> list() | binary().

encode_path(Cs) ->
    encode(Cs, fun is_path/1).

-spec encode_query(list() | binary()) -> list() | binary().

encode_query(Cs) ->
    encode(Cs, fun is_query/1).

-spec encode_fragment(list() | binary()) -> list() | binary().

encode_fragment(Cs) ->
    encode(Cs, fun is_fragment/1).

-spec decode(list() | binary()) -> list() | binary().

decode(Cs) ->
    decode(Cs, <<>>).

decode(L, Acc) when is_list(L) ->
    B0 = unicode:characters_to_binary(L),
    B1 = decode(B0, Acc),
    unicode:characters_to_list(B1);
decode(<<$%,C0,C1,Cs/binary>>, Acc) ->
    case
        is_hex_digit(C0)
        andalso
        is_hex_digit(C1)
    of
        true ->
            B = if
                    C0 >= $0
                    andalso
                    C0 =< $9 ->
                        C0 - $0;
                    C0 >= $A
                    andalso
                    C0 =< $F ->
                        C0 - $A + 10;
                    C0 >= $a
                    andalso
                    C0 =< $f ->
                        C0 - $a + 10
                end
                *
                16
                +
                if
                    C1 >= $0
                    andalso
                    C1 =< $9 ->
                        C1 - $0;
                    C1 >= $A
                    andalso
                    C1 =< $F ->
                        C1 - $A + 10;
                    C1 >= $a
                    andalso
                    C1 =< $f ->
                        C1 - $a + 10
                end,
            case is_unreserved(B) of
                false ->
                    H0 = hex_to_upper(C0),
                    H1 = hex_to_upper(C1),
                    decode(Cs, <<Acc/binary,$%,H0,H1>>);
                true ->
                    decode(Cs, <<Acc/binary,B>>)
            end;
        false ->
            throw({error, invalid_percent_encoding, <<$%,C0,C1>>})
    end;
decode(<<C,Cs/binary>>, Acc) ->
    decode(Cs, <<Acc/binary,C>>);
decode(<<>>, Acc) ->
    check_utf8(Acc).

-spec raw_decode(list() | binary()) -> list() | binary() | error().

raw_decode(Cs) ->
    raw_decode(Cs, <<>>).

raw_decode(L, Acc) when is_list(L) ->
    try
        B0 = unicode:characters_to_binary(L),
        B1 = raw_decode(B0, Acc),
        unicode:characters_to_list(B1)
    catch
        throw:{error, Atom, RestData} ->
            {error, Atom, RestData}
    end;
raw_decode(<<$%,C0,C1,Cs/binary>>, Acc) ->
    case
        is_hex_digit(C0)
        andalso
        is_hex_digit(C1)
    of
        true ->
            B = if
                    C0 >= $0
                    andalso
                    C0 =< $9 ->
                        C0 - $0;
                    C0 >= $A
                    andalso
                    C0 =< $F ->
                        C0 - $A + 10;
                    C0 >= $a
                    andalso
                    C0 =< $f ->
                        C0 - $a + 10
                end
                *
                16
                +
                if
                    C1 >= $0
                    andalso
                    C1 =< $9 ->
                        C1 - $0;
                    C1 >= $A
                    andalso
                    C1 =< $F ->
                        C1 - $A + 10;
                    C1 >= $a
                    andalso
                    C1 =< $f ->
                        C1 - $a + 10
                end,
            raw_decode(Cs, <<Acc/binary,B>>);
        false ->
            throw({error, invalid_percent_encoding, <<$%,C0,C1>>})
    end;
raw_decode(<<C,Cs/binary>>, Acc) ->
    raw_decode(Cs, <<Acc/binary,C>>);
raw_decode(<<>>, Acc) ->
    check_utf8(Acc).

check_utf8(Cs) ->
    case unicode:characters_to_list(Cs) of
        {incomplete, _, _} ->
            throw({error, invalid_utf8, Cs});
        {error, _, _} ->
            throw({error, invalid_utf8, Cs});
        _ ->
            Cs
    end.

hex_to_upper(H) when $a =< H, H =< $f ->
    H - 32;
hex_to_upper(H) when $0 =< H, H =< $9; $A =< H, H =< $F ->
    H;
hex_to_upper(H) ->
    throw({error, invalid_input, H}).

-spec is_host(char()) -> boolean().

is_host($:) ->
    true;
is_host(Char) ->
    is_unreserved(Char)
    orelse
    is_sub_delim(Char).

-spec is_path(char()) -> boolean().

is_path($/) ->
    true;
is_path(Char) ->
    is_pchar(Char).

-spec encode(list() | binary(), fun()) -> list() | binary().

encode(Component, Fun) when is_list(Component) ->
    B = unicode:characters_to_binary(Component),
    unicode:characters_to_list(encode(B, Fun, <<>>));
encode(Component, Fun) when is_binary(Component) ->
    encode(Component, Fun, <<>>).

encode(<<Char/utf8,Rest/binary>>, Fun, Acc) ->
    C = encode_codepoint_binary(Char, Fun),
    encode(Rest, Fun, <<Acc/binary,C/binary>>);
encode(<<Char,Rest/binary>>, _Fun, _Acc) ->
    throw({error, invalid_input, <<Char,Rest/binary>>});
encode(<<>>, _Fun, Acc) ->
    Acc.

-spec encode_codepoint_binary(integer(), fun()) -> binary().

encode_codepoint_binary(C, Fun) ->
    case Fun(C) of
        false ->
            percent_encode_binary(C);
        true ->
            <<C>>
    end.

-spec percent_encode_binary(integer()) -> binary().

percent_encode_binary(Code) ->
    percent_encode_binary(<<Code/utf8>>, <<>>).

percent_encode_binary(<<A:4,B:4,Rest/binary>>, Acc) ->
    percent_encode_binary(Rest,
                          <<Acc/binary,
                            $%,
                            if
                                A >= 0
                                andalso
                                A =< 9 ->
                                    A + $0;
                                A >= 10
                                andalso
                                A =< 15 ->
                                    A + $A - 10
                            end,
                            if
                                B >= 0
                                andalso
                                B =< 9 ->
                                    B + $0;
                                B >= 10
                                andalso
                                B =< 15 ->
                                    B + $A - 10
                            end>>);
percent_encode_binary(<<>>, Acc) ->
    Acc.

validate_scheme([]) ->
    true;
validate_scheme([H | T]) ->
    case is_scheme(H) of
        true ->
            validate_scheme(T);
        false ->
            false
    end;
validate_scheme(<<>>) ->
    true;
validate_scheme(<<H,Rest/binary>>) ->
    case is_scheme(H) of
        true ->
            validate_scheme(Rest);
        false ->
            false
    end.

classify_host([]) ->
    other;
classify_host(Addr) when is_binary(Addr) ->
    A = unicode:characters_to_list(Addr),
    classify_host_ipv6(A);
classify_host(Addr) ->
    classify_host_ipv6(Addr).

classify_host_ipv6(Addr) ->
    case is_ipv6_address(Addr) of
        true ->
            ipv6;
        false ->
            classify_host_ipv4(Addr)
    end.

classify_host_ipv4(Addr) ->
    case is_ipv4_address(Addr) of
        true ->
            ipv4;
        false ->
            classify_host_regname(Addr)
    end.

classify_host_regname([]) ->
    regname;
classify_host_regname([H | T]) ->
    case is_reg_name(H) of
        true ->
            classify_host_regname(T);
        false ->
            other
    end.

is_ipv4_address(Addr) ->
    case inet:parse_ipv4strict_address(Addr) of
        {ok, _} ->
            true;
        {error, _} ->
            false
    end.

is_ipv6_address(Addr) ->
    case inet:parse_ipv6strict_address(Addr) of
        {ok, _} ->
            true;
        {error, _} ->
            false
    end.

bracket_ipv6(Addr) when is_binary(Addr) ->
    concat(<<$[,Addr/binary>>, <<$]>>);
bracket_ipv6(Addr) when is_list(Addr) ->
    [$[ | Addr] ++ "]".

is_valid_map(#{path := Path} = Map) ->
    starts_with_two_slash(Path)
    andalso
    is_valid_map_host(Map)
    orelse
    maps:is_key(userinfo, Map)
    andalso
    is_valid_map_host(Map)
    orelse
    maps:is_key(port, Map)
    andalso
    is_valid_map_host(Map)
    orelse
    all_fields_valid(Map);
is_valid_map(#{}) ->
    false.

is_valid_map_host(Map) ->
    maps:is_key(host, Map)
    andalso
    all_fields_valid(Map).

all_fields_valid(Map) ->
    Fun =
        fun(scheme, _, Acc) ->
               Acc;
           (userinfo, _, Acc) ->
               Acc;
           (host, _, Acc) ->
               Acc;
           (port, _, Acc) ->
               Acc;
           (path, _, Acc) ->
               Acc;
           (query, _, Acc) ->
               Acc;
           (fragment, _, Acc) ->
               Acc;
           (_, _, _) ->
               false
        end,
    maps:fold(Fun, true, Map).

starts_with_two_slash([$/, $/ | _]) ->
    true;
starts_with_two_slash(<<"//"/utf8,_/binary>>) ->
    true;
starts_with_two_slash(_) ->
    false.

update_scheme(#{scheme := Scheme}, _) ->
    add_colon_postfix(encode_scheme(Scheme));
update_scheme(#{}, _) ->
    empty.

update_userinfo(#{userinfo := Userinfo}, empty) ->
    add_auth_prefix(encode_userinfo(Userinfo));
update_userinfo(#{userinfo := Userinfo}, URI) ->
    concat(URI, add_auth_prefix(encode_userinfo(Userinfo)));
update_userinfo(#{}, empty) ->
    empty;
update_userinfo(#{}, URI) ->
    URI.

update_host(#{host := Host}, empty) ->
    add_auth_prefix(encode_host(Host));
update_host(#{host := Host} = Map, URI) ->
    concat(URI, add_host_prefix(Map, encode_host(Host)));
update_host(#{}, empty) ->
    empty;
update_host(#{}, URI) ->
    URI.

update_port(#{port := undefined}, URI) ->
    concat(URI, <<":">>);
update_port(#{port := Port}, URI) ->
    concat(URI, add_colon(encode_port(Port)));
update_port(#{}, URI) ->
    URI.

update_path(#{path := Path}, empty) ->
    encode_path(Path);
update_path(#{host := _, path := Path0}, URI) ->
    Path1 = maybe_flatten_list(Path0),
    Path = make_path_absolute(Path1),
    concat(URI, encode_path(Path));
update_path(#{path := Path}, URI) ->
    concat(URI, encode_path(Path));
update_path(#{}, empty) ->
    empty;
update_path(#{}, URI) ->
    URI.

update_query(#{query := Query}, empty) ->
    encode_query(Query);
update_query(#{query := Query}, URI) ->
    concat(URI, add_question_mark(encode_query(Query)));
update_query(#{}, empty) ->
    empty;
update_query(#{}, URI) ->
    URI.

update_fragment(#{fragment := Fragment}, empty) ->
    add_hashmark(encode_fragment(Fragment));
update_fragment(#{fragment := Fragment}, URI) ->
    concat(URI, add_hashmark(encode_fragment(Fragment)));
update_fragment(#{}, empty) ->
    "";
update_fragment(#{}, URI) ->
    URI.

concat(A, B) when is_binary(A), is_binary(B) ->
    <<A/binary,B/binary>>;
concat(A, B) when is_binary(A), is_list(B) ->
    unicode:characters_to_list(A) ++ B;
concat(A, B) when is_list(A) ->
    A ++ maybe_to_list(B).

add_hashmark(Comp) when is_binary(Comp) ->
    <<$#,Comp/binary>>;
add_hashmark(Comp) when is_list(Comp) ->
    [$# | Comp].

add_question_mark(Comp) when is_binary(Comp) ->
    <<$?,Comp/binary>>;
add_question_mark(Comp) when is_list(Comp) ->
    [$? | Comp].

add_colon(Comp) when is_binary(Comp) ->
    <<$:,Comp/binary>>.

add_colon_postfix(Comp) when is_binary(Comp) ->
    <<Comp/binary,$:>>;
add_colon_postfix(Comp) when is_list(Comp) ->
    Comp ++ ":".

add_auth_prefix(Comp) when is_binary(Comp) ->
    <<"//",Comp/binary>>;
add_auth_prefix(Comp) when is_list(Comp) ->
    [$/, $/ | Comp].

add_host_prefix(#{userinfo := _}, Host) when is_binary(Host) ->
    <<$@,Host/binary>>;
add_host_prefix(#{}, Host) when is_binary(Host) ->
    <<"//",Host/binary>>;
add_host_prefix(#{userinfo := _}, Host) when is_list(Host) ->
    [$@ | Host];
add_host_prefix(#{}, Host) when is_list(Host) ->
    [$/, $/ | Host].

maybe_to_list(Comp) when is_binary(Comp) ->
    unicode:characters_to_list(Comp);
maybe_to_list(Comp) ->
    Comp.

encode_port(Port) ->
    integer_to_binary(Port).

make_path_absolute(<<>>) ->
    <<>>;
make_path_absolute("") ->
    "";
make_path_absolute(<<"/",_/binary>> = Path) ->
    Path;
make_path_absolute([$/ | _] = Path) ->
    Path;
make_path_absolute(Path) when is_binary(Path) ->
    concat(<<$/>>, Path);
make_path_absolute(Path) when is_list(Path) ->
    concat("/", Path).

maybe_flatten_list(Path) when is_binary(Path) ->
    Path;
maybe_flatten_list(Path) ->
    unicode:characters_to_list(Path).

resolve_map(URIMap = #{scheme := _}, _) ->
    normalize_path_segment(URIMap);
resolve_map(URIMap, #{scheme := _} = BaseURIMap) ->
    resolve_map(URIMap, BaseURIMap, resolve_path_type(URIMap));
resolve_map(_URIMap, BaseURIMap) when is_map(BaseURIMap) ->
    {error, invalid_scheme, ""};
resolve_map(URIMap, BaseURIString) ->
    case parse(BaseURIString) of
        BaseURIMap = #{scheme := _} ->
            resolve_map(URIMap, BaseURIMap, resolve_path_type(URIMap));
        BaseURIMap when is_map(BaseURIMap) ->
            {error, invalid_scheme, ""};
        Error ->
            Error
    end.

resolve_path_type(URIMap) ->
    case iolist_to_binary(maps:get(path, URIMap, <<>>)) of
        <<>> ->
            empty_path;
        <<$/,_/bits>> ->
            absolute_path;
        _ ->
            relative_path
    end.

resolve_map(URI = #{host := _}, #{scheme := Scheme}, _) ->
    normalize_path_segment(URI#{scheme => Scheme});
resolve_map(URI, BaseURI, empty_path) ->
    Keys =
        case maps:is_key(query, URI) of
            true ->
                [scheme, userinfo, host, port, path];
            false ->
                [scheme, userinfo, host, port, path, query]
        end,
    maps:merge(URI, maps:with(Keys, BaseURI));
resolve_map(URI, BaseURI, absolute_path) ->
    normalize_path_segment(maps:merge(URI,
                                      maps:with([scheme, userinfo, host,
                                                 port],
                                                BaseURI)));
resolve_map(URI = #{path := Path}, BaseURI, relative_path) ->
    normalize_path_segment(maps:merge(URI#{path =>
                                               merge_paths(Path,
                                                           BaseURI)},
                                      maps:with([scheme, userinfo, host,
                                                 port],
                                                BaseURI))).

merge_paths(Path, BaseURI = #{path := BasePath0}) ->
    case {BaseURI, iolist_size(BasePath0)} of
        {#{host := _}, 0} ->
            merge_paths_absolute(Path);
        _ ->
            case string:split(BasePath0, <<$/>>, trailing) of
                [BasePath, _] when is_binary(Path) ->
                    unicode:characters_to_binary([BasePath, $/, Path]);
                [BasePath, _] when is_list(Path) ->
                    unicode:characters_to_list([BasePath, $/, Path]);
                [_] ->
                    Path
            end
    end.

merge_paths_absolute(Path) when is_binary(Path) ->
    <<$/,Path/binary>>;
merge_paths_absolute(Path) when is_list(Path) ->
    unicode:characters_to_list([$/, Path]).

transcode([$%, _C0, _C1 | _Rest] = L, Acc, InEnc, OutEnc) ->
    transcode_pct(L, Acc, <<>>, InEnc, OutEnc);
transcode([_C | _Rest] = L, Acc, InEnc, OutEnc) ->
    transcode(L, Acc, [], InEnc, OutEnc).

transcode([$%, _C0, _C1 | _Rest] = L,
          Acc, List, InEncoding, OutEncoding) ->
    transcode_pct(L, List ++ Acc, <<>>, InEncoding, OutEncoding);
transcode([C | Rest], Acc, List, InEncoding, OutEncoding) ->
    transcode(Rest, Acc, [C | List], InEncoding, OutEncoding);
transcode([], Acc, List, _InEncoding, _OutEncoding) ->
    lists:reverse(List ++ Acc).

transcode_pct([$%, C0, C1 | Rest] = L, Acc, B, InEncoding, OutEncoding) ->
    case
        is_hex_digit(C0)
        andalso
        is_hex_digit(C1)
    of
        true ->
            Int =
                if
                    C0 >= $0
                    andalso
                    C0 =< $9 ->
                        C0 - $0;
                    C0 >= $A
                    andalso
                    C0 =< $F ->
                        C0 - $A + 10;
                    C0 >= $a
                    andalso
                    C0 =< $f ->
                        C0 - $a + 10
                end
                *
                16
                +
                if
                    C1 >= $0
                    andalso
                    C1 =< $9 ->
                        C1 - $0;
                    C1 >= $A
                    andalso
                    C1 =< $F ->
                        C1 - $A + 10;
                    C1 >= $a
                    andalso
                    C1 =< $f ->
                        C1 - $a + 10
                end,
            transcode_pct(Rest, Acc,
                          <<B/binary,Int>>,
                          InEncoding, OutEncoding);
        false ->
            throw({error, invalid_percent_encoding, L})
    end;
transcode_pct([_C | _Rest] = L, Acc, B, InEncoding, OutEncoding) ->
    OutBinary = convert_to_binary(B, InEncoding, OutEncoding),
    PctEncUtf8 = percent_encode_segment(OutBinary),
    Out = lists:reverse(convert_to_list(PctEncUtf8, utf8)),
    transcode(L, Out ++ Acc, [], InEncoding, OutEncoding);
transcode_pct([], Acc, B, InEncoding, OutEncoding) ->
    OutBinary = convert_to_binary(B, InEncoding, OutEncoding),
    PctEncUtf8 = percent_encode_segment(OutBinary),
    Out = convert_to_list(PctEncUtf8, utf8),
    lists:reverse(Acc, Out).

convert_to_binary(Binary, InEncoding, OutEncoding) ->
    case
        unicode:characters_to_binary(Binary, InEncoding, OutEncoding)
    of
        {error, _List, RestData} ->
            throw({error, invalid_input, RestData});
        {incomplete, _List, RestData} ->
            throw({error, invalid_input, RestData});
        Result ->
            Result
    end.

convert_to_list(Binary, InEncoding) ->
    case unicode:characters_to_list(Binary, InEncoding) of
        {error, _List, RestData} ->
            throw({error, invalid_input, RestData});
        {incomplete, _List, RestData} ->
            throw({error, invalid_input, RestData});
        Result ->
            Result
    end.

flatten_list([], _) ->
    [];
flatten_list(L, InEnc) ->
    flatten_list(L, InEnc, []).

flatten_list([H | T], InEnc, Acc) when is_binary(H) ->
    L = convert_to_list(H, InEnc),
    flatten_list(T, InEnc, lists:reverse(L, Acc));
flatten_list([H | T], InEnc, Acc) when is_list(H) ->
    flatten_list(H ++ T, InEnc, Acc);
flatten_list([H | T], InEnc, Acc) ->
    flatten_list(T, InEnc, [H | Acc]);
flatten_list([], _InEnc, Acc) ->
    lists:reverse(Acc);
flatten_list(Arg, _, _) ->
    throw({error, invalid_input, Arg}).

percent_encode_segment(Segment) ->
    percent_encode_binary(Segment, <<>>).

get_separator([]) ->
    <<>>;
get_separator(_L) ->
    <<"&">>.

form_urlencode(Cs, [{encoding, latin1}]) when is_list(Cs) ->
    B = convert_to_binary(Cs, utf8, utf8),
    html5_byte_encode(base10_encode(B));
form_urlencode(Cs, [{encoding, latin1}]) when is_binary(Cs) ->
    html5_byte_encode(base10_encode(Cs));
form_urlencode(Cs, [{encoding, Encoding}])
    when is_list(Cs), Encoding =:= utf8; Encoding =:= unicode ->
    B = convert_to_binary(Cs, utf8, Encoding),
    html5_byte_encode(B);
form_urlencode(Cs, [{encoding, Encoding}])
    when is_binary(Cs), Encoding =:= utf8; Encoding =:= unicode ->
    html5_byte_encode(Cs);
form_urlencode(Cs, [{encoding, Encoding}])
    when is_list(Cs); is_binary(Cs) ->
    throw({error, invalid_encoding, Encoding});
form_urlencode(Cs, _) ->
    throw({error, invalid_input, Cs}).

base10_encode(Cs) ->
    base10_encode(Cs, <<>>).

base10_encode(<<>>, Acc) ->
    Acc;
base10_encode(<<H/utf8,T/binary>>, Acc) when H > 255 ->
    Base10 = convert_to_binary(integer_to_list(H, 10), utf8, utf8),
    base10_encode(T, <<Acc/binary,"&#",Base10/binary,$;>>);
base10_encode(<<H/utf8,T/binary>>, Acc) ->
    base10_encode(T, <<Acc/binary,H>>).

html5_byte_encode(B) ->
    html5_byte_encode(B, <<>>).

html5_byte_encode(<<>>, Acc) ->
    Acc;
html5_byte_encode(<<$\s,T/binary>>, Acc) ->
    html5_byte_encode(T, <<Acc/binary,$+>>);
html5_byte_encode(<<H,T/binary>>, Acc) ->
    case is_url_char(H) of
        true ->
            html5_byte_encode(T, <<Acc/binary,H>>);
        false ->
            <<A:4,B:4>> = <<H>>,
            html5_byte_encode(T,
                              <<Acc/binary,
                                $%,
                                if
                                    A >= 0
                                    andalso
                                    A =< 9 ->
                                        A + $0;
                                    A >= 10
                                    andalso
                                    A =< 15 ->
                                        A + $A - 10
                                end,
                                if
                                    B >= 0
                                    andalso
                                    B =< 9 ->
                                        B + $0;
                                    B >= 10
                                    andalso
                                    B =< 15 ->
                                        B + $A - 10
                                end>>)
    end;
html5_byte_encode(H, _Acc) ->
    throw({error, invalid_input, H}).

is_url_char(C)
    when
        C =:= 42;
        C =:= 45;
        C =:= 46;
        C =:= 95;
        48 =< C, C =< 57;
        65 =< C, C =< 90;
        97 =< C, C =< 122 ->
    true;
is_url_char(_) ->
    false.

dissect_query_key(<<$=,T/binary>>, IsList, Acc, Key, Value) ->
    dissect_query_value(T, IsList, Acc, Key, Value);
dissect_query_key(<<"&#",T/binary>>, IsList, Acc, Key, Value) ->
    dissect_query_key(T, IsList, Acc, <<Key/binary,"&#">>, Value);
dissect_query_key(T = <<$&,_/binary>>, IsList, Acc, Key, <<>>) ->
    dissect_query_value(T, IsList, Acc, Key, true);
dissect_query_key(<<H,T/binary>>, IsList, Acc, Key, Value) ->
    dissect_query_key(T, IsList, Acc, <<Key/binary,H>>, Value);
dissect_query_key(T = <<>>, IsList, Acc, Key, <<>>) ->
    dissect_query_value(T, IsList, Acc, Key, true).

dissect_query_value(<<$&,T/binary>>, IsList, Acc, Key, Value) ->
    K = form_urldecode(IsList, Key),
    V = form_urldecode(IsList, Value),
    dissect_query_key(T, IsList, [{K, V} | Acc], <<>>, <<>>);
dissect_query_value(<<H,T/binary>>, IsList, Acc, Key, Value) ->
    dissect_query_value(T, IsList, Acc, Key, <<Value/binary,H>>);
dissect_query_value(<<>>, IsList, Acc, Key, Value) ->
    K = form_urldecode(IsList, Key),
    V = form_urldecode(IsList, Value),
    lists:reverse([{K, V} | Acc]).

form_urldecode(_, true) ->
    true;
form_urldecode(true, B) ->
    Result = base10_decode(form_urldecode(B, <<>>)),
    convert_to_list(Result, utf8);
form_urldecode(false, B) ->
    base10_decode(form_urldecode(B, <<>>));
form_urldecode(<<>>, Acc) ->
    Acc;
form_urldecode(<<$+,T/binary>>, Acc) ->
    form_urldecode(T, <<Acc/binary,$\s>>);
form_urldecode(<<$%,C0,C1,T/binary>>, Acc) ->
    case
        is_hex_digit(C0)
        andalso
        is_hex_digit(C1)
    of
        true ->
            V = if
                    C0 >= $0
                    andalso
                    C0 =< $9 ->
                        C0 - $0;
                    C0 >= $A
                    andalso
                    C0 =< $F ->
                        C0 - $A + 10;
                    C0 >= $a
                    andalso
                    C0 =< $f ->
                        C0 - $a + 10
                end
                *
                16
                +
                if
                    C1 >= $0
                    andalso
                    C1 =< $9 ->
                        C1 - $0;
                    C1 >= $A
                    andalso
                    C1 =< $F ->
                        C1 - $A + 10;
                    C1 >= $a
                    andalso
                    C1 =< $f ->
                        C1 - $a + 10
                end,
            form_urldecode(T, <<Acc/binary,V>>);
        false ->
            L = convert_to_list(<<$%,C0,C1,T/binary>>, utf8),
            throw({error, invalid_percent_encoding, L})
    end;
form_urldecode(<<H/utf8,T/binary>>, Acc) ->
    form_urldecode(T, <<Acc/binary,H/utf8>>);
form_urldecode(<<H,_/binary>>, _Acc) ->
    throw({error, invalid_character, [H]}).

base10_decode(Cs) ->
    base10_decode(Cs, <<>>).

base10_decode(<<>>, Acc) ->
    Acc;
base10_decode(<<"&#",T/binary>>, Acc) ->
    base10_decode_unicode(T, Acc);
base10_decode(<<H/utf8,T/binary>>, Acc) ->
    base10_decode(T, <<Acc/binary,H/utf8>>);
base10_decode(<<H,_/binary>>, _) ->
    throw({error, invalid_input, [H]}).

base10_decode_unicode(B, Acc) ->
    base10_decode_unicode(B, 0, Acc).

base10_decode_unicode(<<H/utf8,T/binary>>, Codepoint, Acc)
    when $0 =< H, H =< $9 ->
    Res = Codepoint * 10 + (H - $0),
    base10_decode_unicode(T, Res, Acc);
base10_decode_unicode(<<$;,T/binary>>, Codepoint, Acc) ->
    base10_decode(T, <<Acc/binary,Codepoint/utf8>>);
base10_decode_unicode(<<H,_/binary>>, _, _) ->
    throw({error, invalid_input, [H]}).

normalize_map(URIMap) ->
    normalize_path_segment(normalize_scheme_based(normalize_undefined_port(normalize_percent_encoding(normalize_case(URIMap))))).

normalize_case(#{scheme := Scheme, host := Host} = Map) ->
    Map#{scheme => to_lower(Scheme), host => to_lower(Host)};
normalize_case(#{host := Host} = Map) ->
    Map#{host => to_lower(Host)};
normalize_case(#{scheme := Scheme} = Map) ->
    Map#{scheme => to_lower(Scheme)};
normalize_case(#{} = Map) ->
    Map.

normalize_percent_encoding(Map) ->
    Fun =
        fun(K, V)
               when
                   K =:= userinfo;
                   K =:= host;
                   K =:= path;
                   K =:= query;
                   K =:= fragment ->
               decode(V);
           (_, V) ->
               V
        end,
    maps:map(Fun, Map).

to_lower(Cs) when is_list(Cs) ->
    B = convert_to_binary(Cs, utf8, utf8),
    convert_to_list(to_lower(B), utf8);
to_lower(Cs) when is_binary(Cs) ->
    to_lower(Cs, <<>>).

to_lower(<<C,Cs/binary>>, Acc) when $A =< C, C =< $Z ->
    to_lower(Cs, <<Acc/binary,(C + 32)>>);
to_lower(<<C,Cs/binary>>, Acc) ->
    to_lower(Cs, <<Acc/binary,C>>);
to_lower(<<>>, Acc) ->
    Acc.

normalize_path_segment(Map) ->
    Path = maps:get(path, Map, <<>>),
    Map#{path => remove_dot_segments(Path)}.

remove_dot_segments(Path) when is_binary(Path) ->
    remove_dot_segments(Path, <<>>);
remove_dot_segments(Path) when is_list(Path) ->
    B = convert_to_binary(Path, utf8, utf8),
    B1 = remove_dot_segments(B, <<>>),
    convert_to_list(B1, utf8).

remove_dot_segments(<<>>, Output) ->
    Output;
remove_dot_segments(<<"../",T/binary>>, Output) ->
    remove_dot_segments(T, Output);
remove_dot_segments(<<"./",T/binary>>, Output) ->
    remove_dot_segments(T, Output);
remove_dot_segments(<<"/./",T/binary>>, Output) ->
    remove_dot_segments(<<$/,T/binary>>, Output);
remove_dot_segments(<<"/.">>, Output) ->
    remove_dot_segments(<<$/>>, Output);
remove_dot_segments(<<"/../",T/binary>>, Output) ->
    Out1 = remove_last_segment(Output),
    remove_dot_segments(<<$/,T/binary>>, Out1);
remove_dot_segments(<<"/..">>, Output) ->
    Out1 = remove_last_segment(Output),
    remove_dot_segments(<<$/>>, Out1);
remove_dot_segments(<<$.>>, Output) ->
    remove_dot_segments(<<>>, Output);
remove_dot_segments(<<"..">>, Output) ->
    remove_dot_segments(<<>>, Output);
remove_dot_segments(Input, Output) ->
    {First, Rest} = first_path_segment(Input),
    remove_dot_segments(Rest, <<Output/binary,First/binary>>).

first_path_segment(Input) ->
    F = first_path_segment(Input, <<>>),
    split_binary(Input, byte_size(F)).

first_path_segment(<<$/,T/binary>>, Acc) ->
    first_path_segment_end(<<T/binary>>, <<Acc/binary,$/>>);
first_path_segment(<<C,T/binary>>, Acc) ->
    first_path_segment_end(<<T/binary>>, <<Acc/binary,C>>).

first_path_segment_end(<<>>, Acc) ->
    Acc;
first_path_segment_end(<<$/,_/binary>>, Acc) ->
    Acc;
first_path_segment_end(<<C,T/binary>>, Acc) ->
    first_path_segment_end(<<T/binary>>, <<Acc/binary,C>>).

remove_last_segment(<<>>) ->
    <<>>;
remove_last_segment(B) ->
    {Init, Last} = split_binary(B, byte_size(B) - 1),
    case Last of
        <<$/>> ->
            Init;
        _Char ->
            remove_last_segment(Init)
    end.

normalize_scheme_based(Map) ->
    Scheme = maps:get(scheme, Map, undefined),
    Port = maps:get(port, Map, undefined),
    Path = maps:get(path, Map, undefined),
    normalize_scheme_based(Map, Scheme, Port, Path).

normalize_scheme_based(Map, Scheme, Port, Path)
    when Scheme =:= "http"; Scheme =:= <<"http">> ->
    normalize_http(Map, Port, Path);
normalize_scheme_based(Map, Scheme, Port, Path)
    when Scheme =:= "https"; Scheme =:= <<"https">> ->
    normalize_https(Map, Port, Path);
normalize_scheme_based(Map, Scheme, Port, _Path)
    when Scheme =:= "ftp"; Scheme =:= <<"ftp">> ->
    normalize_ftp(Map, Port);
normalize_scheme_based(Map, Scheme, Port, _Path)
    when Scheme =:= "ssh"; Scheme =:= <<"ssh">> ->
    normalize_ssh_sftp(Map, Port);
normalize_scheme_based(Map, Scheme, Port, _Path)
    when Scheme =:= "sftp"; Scheme =:= <<"sftp">> ->
    normalize_ssh_sftp(Map, Port);
normalize_scheme_based(Map, Scheme, Port, _Path)
    when Scheme =:= "tftp"; Scheme =:= <<"tftp">> ->
    normalize_tftp(Map, Port);
normalize_scheme_based(Map, _, _, _) ->
    Map.

normalize_http(Map, Port, Path) ->
    M1 = normalize_default_port(Map, Port, 80),
    normalize_http_path(M1, Path).

normalize_https(Map, Port, Path) ->
    M1 = normalize_default_port(Map, Port, 443),
    normalize_http_path(M1, Path).

normalize_ftp(Map, Port) ->
    normalize_default_port(Map, Port, 21).

normalize_ssh_sftp(Map, Port) ->
    normalize_default_port(Map, Port, 22).

normalize_tftp(Map, Port) ->
    normalize_default_port(Map, Port, 69).

normalize_default_port(Map, Port, Default) ->
    case Port of
        Default ->
            maps:remove(port, Map);
        _Else ->
            Map
    end.

normalize_undefined_port(#{port := undefined} = Map) ->
    maps:remove(port, Map);
normalize_undefined_port(#{} = Map) ->
    Map.

normalize_http_path(Map, Path) ->
    case Path of
        "" ->
            Map#{path => "/"};
        <<>> ->
            Map#{path => <<"/">>};
        _Else ->
            Map
    end.



