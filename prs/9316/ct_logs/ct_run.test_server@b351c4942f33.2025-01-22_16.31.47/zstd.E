-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/zstd.erl", 1).

-module(zstd).

-export_type([context/0,dict/0]).

-opaque context() :: {compress | decompress, term()}.

-opaque dict() :: {cdict | ddict, term()}.

-type compressionLevel() :: -22..22.

-type strategy() ::
          default | fast | dfast | greedy | lazy | lazy2 | btlazy2 |
          btopt | btultra | btultra2.

-type compress_parameters() ::
          #{dictionary => binary() | dict(),
            pledgedSrcSize => non_neg_integer(),
            compressionLevel => compressionLevel(),
            windowLog => non_neg_integer(),
            hashLog => non_neg_integer(),
            chainLog => non_neg_integer(),
            searchLog => non_neg_integer(),
            minMatch => non_neg_integer(),
            targetLength => non_neg_integer(),
            strategy => strategy(),
            targetCBlockSize => non_neg_integer(),
            enableLongDistanceMatching => boolean(),
            ldmHashLog => non_neg_integer(),
            ldmMinMatch => non_neg_integer(),
            ldmBucketSizeLog => non_neg_integer(),
            ldmHashRateLog => non_neg_integer(),
            contentSizeFlag => boolean(),
            checksumFlag => boolean(),
            dictIDFlag => boolean()}.

-type decompress_parameters() ::
          #{dictionary => binary() | dict(),
            windowLogMax => non_neg_integer()}.

-on_load({on_load, 0}).

-export([compress/1,compress/2,decompress/1,decompress/2]).

-export([context/1,
         context/2,
         stream/2,
         finish/2,
         set_parameter/3,
         get_parameter/2,
         reset/1,
         close/1]).

-export([dict/2,dict/3,get_dict_id/1]).

-export([get_frame_header/1]).

-nifs([{init_compress_nif, 0},
       {load_compress_dictionary_nif, 2},
       {ref_compress_dictionary_nif, 2},
       {set_compress_parameter_nif, 3},
       {get_compress_parameter_nif, 2},
       {set_pledged_src_size_nif, 2},
       {compress_stream_nif, 3},
       {compress_reset_nif, 1},
       {compress_close_nif, 1},
       {init_decompress_nif, 0},
       {load_decompress_dictionary_nif, 2},
       {ref_decompress_dictionary_nif, 2},
       {set_decompress_parameter_nif, 3},
       {get_decompress_parameter_nif, 2},
       {decompress_stream_nif, 3},
       {decompress_reset_nif, 1},
       {decompress_close_nif, 1},
       {create_cdict_nif, 2},
       {create_ddict_nif, 1},
       {getDictId_fromCDict_nif, 1},
       {getDictId_fromDDict_nif, 1},
       {getDictId_fromDict_nif, 1},
       {getDictId_fromFrame_nif, 1},
       {get_frame_header_nif, 1}]).

-spec on_load() -> ok.

on_load() ->
    ok = erlang:load_nif("zstd", zstd).

-spec set_parameter(Ctx :: context(), Key :: term(), Value :: term()) ->
                       ok.

set_parameter({compress, Ctx}, dictionary, {cdict, Dict})
    when is_reference(Dict) ->
    ref_compress_dictionary_nif(Ctx, Dict);
set_parameter({compress, Ctx}, dictionary, Dict) ->
    load_compress_dictionary_nif(Ctx, Dict);
set_parameter({compress, Ctx}, pledgedSrcSize, Size) ->
    set_pledged_src_size_nif(Ctx, Size);
set_parameter({decompress, Ctx}, dictionary, {ddict, Dict})
    when is_reference(Dict) ->
    ref_decompress_dictionary_nif(Ctx, Dict);
set_parameter({decompress, Ctx}, dictionary, Dict) ->
    load_decompress_dictionary_nif(Ctx, Dict);
set_parameter({compress, Ctx}, Key, Value) ->
    set_compress_parameter_nif(Ctx, Key, Value);
set_parameter({decompress, Ctx}, Key, Value) ->
    set_decompress_parameter_nif(Ctx, Key, Value);
set_parameter(Ctx, _Key, _Value) ->
    error({badarg, {invalid_context, Ctx}}).

-spec get_parameter(Ctx :: context(), Key :: term()) -> Value :: term().

get_parameter({compress, Ctx}, Key) ->
    get_compress_parameter_nif(Ctx, Key);
get_parameter({decompress, Ctx}, Key) ->
    get_decompress_parameter_nif(Ctx, Key);
get_parameter(Ctx, _Key) ->
    error({badarg, {invalid_context, Ctx}}).

-spec dict(Mode :: compress | decompress, Dict :: binary()) ->
              {ok, dict()}.

dict(Mode, Dict) ->
    dict(Mode, Dict, #{}).

-spec dict(compress,
           Dict :: binary(),
           #{compressionLevel => compressionLevel()}) ->
              {ok, dict()};
          (decompress, Dict :: binary(), #{}) -> {ok, dict()}.

dict(compress, Dict, #{compressionLevel := Level}) ->
    {ok, {cdict, create_cdict_nif(Dict, Level)}};
dict(compress, Dict, Params = #{}) ->
    dict(compress, Dict, Params#{compressionLevel => 0});
dict(decompress, Dict, #{}) ->
    {ok, {ddict, create_ddict_nif(Dict)}}.

-spec get_dict_id(DictOrFrame :: dict() | binary()) -> non_neg_integer().

get_dict_id({cdict, Dict}) ->
    getDictId_fromCDict_nif(Dict);
get_dict_id({ddict, Dict}) ->
    getDictId_fromDDict_nif(Dict);
get_dict_id(DictOrFrame) ->
    case get_frame_header(DictOrFrame) of
        {error, _Reason} ->
            getDictId_fromDict_nif(DictOrFrame);
        {ok, _} ->
            getDictId_fromFrame_nif(DictOrFrame)
    end.

-spec get_frame_header(Frame :: iodata()) ->
                          {ok,
                           #{frameContentSize => non_neg_integer(),
                             windowSize => non_neg_integer(),
                             blockSizeMax => non_neg_integer(),
                             frameType =>
                                 'ZSTD_frame' | 'ZSTD_skippableFrame',
                             headerSize => non_neg_integer(),
                             dictID => non_neg_integer(),
                             checksumFlag => boolean()}} |
                          {error, unicode:chardata()}.

get_frame_header(Frame) ->
    try
        get_frame_header_nif(Frame)
    catch
        error:{zstd_error, Reason} ->
            {error, Reason}
    end.

-spec context(compress | decompress) -> {ok, context()}.

context(Mode) when Mode =:= compress; Mode =:= decompress ->
    context(Mode, #{}).

-spec context(compress, Options :: compress_parameters()) ->
                 {ok, context()};
             (decompress, Options :: decompress_parameters()) ->
                 {ok, context()}.

context(compress, Options) ->
    Ref = {compress, init_compress_nif()},
    [ 
     ok = set_parameter(Ref, Key, Value) ||
         Key := Value <- Options
    ],
    {ok, Ref};
context(decompress, Options) ->
    Ref = {decompress, init_decompress_nif()},
    [ 
     ok = set_parameter(Ref, Key, Value) ||
         Key := Value <- Options
    ],
    {ok, Ref}.

-spec stream(Ctx :: context(), Data :: iodata()) -> Result
                when
                    Result ::
                        {continue,
                         Remainder :: erlang:iovec(),
                         Output :: binary()} |
                        {continue, Output :: binary()}.

stream(Ctx, Data) when is_list(Data) ->
    try erlang:iolist_to_iovec(Data) of
        [] ->
            stream(Ctx, <<>>);
        [H] ->
            stream(Ctx, H);
        [H | T] ->
            case stream(Ctx, H) of
                {continue, Rem, Out} ->
                    {continue, [Rem | T], Out};
                {continue, Out} ->
                    {continue, T, Out}
            end
    catch
        _:_ ->
            error(badarg)
    end;
stream({compress, Ref}, Data) ->
    compress_stream_nif(Ref, Data, false);
stream({decompress, Ref}, Data) ->
    decompress_stream_nif(Ref, Data, false).

-spec finish(Ctx :: context(), Data :: iodata()) -> Result
                when Result :: {done, erlang:iovec()}.

finish({compress, Ref}, Data) when is_binary(Data) ->
    finish_1(fun compress_stream_nif/3, Ref, Data);
finish({decompress, Ref} = DCtx, Data) when is_binary(Data) ->
    Result = finish_1(fun decompress_stream_nif/3, Ref, Data),
    reset(DCtx),
    Result;
finish(Ctx, []) ->
    finish(Ctx, <<>>);
finish(Ctx, [Data]) when is_binary(Data) ->
    finish(Ctx, Data);
finish(Ctx, Data) ->
    case stream(Ctx, Data) of
        {continue, Remain, Out} ->
            case finish(Ctx, Remain) of
                {done, Tail} ->
                    {done, [Out | Tail]}
            end;
        {continue, Out} ->
            case finish(Ctx, <<>>) of
                {done, Tail} ->
                    {done, [Out | Tail]}
            end
    end.

finish_1(Codec, Ref, Data) when is_binary(Data) ->
    case Codec(Ref, Data, true) of
        {continue, Remainder, Output} ->
            case finish_1(Codec, Ref, Remainder) of
                {done, Tail} ->
                    {done, [Output | Tail]}
            end;
        {flush, Output} ->
            case finish_1(Codec, Ref, <<>>) of
                {done, Tail} ->
                    {done, [Output | Tail]}
            end;
        {done, Output} ->
            {done, [Output]}
    end.

-spec reset(Ctx :: context()) -> ok.

reset({compress, Ref}) ->
    compress_reset_nif(Ref);
reset({decompress, Ref}) ->
    decompress_reset_nif(Ref).

-spec close(Ctx :: context()) -> ok.

close({compress, Ref}) ->
    compress_close_nif(Ref);
close({decompress, Ref}) ->
    decompress_close_nif(Ref).

-spec compress(iodata()) -> iodata().

compress(Data) ->
    compress(Data, #{}).

-spec compress(Data :: iodata(), Options :: compress_parameters()) ->
                  iodata();
              (Data :: iodata(), Ctx :: context()) -> iodata().

compress(Data, Options) when is_map(Options) ->
    {ok, Ref} = context(compress, Options),
    try compress(Data, Ref) after close(Ref) end;
compress(Data, {compress, Ref}) ->
    IOV = erlang:iolist_to_iovec(Data),
    ok = set_pledged_src_size_nif(Ref, iolist_size(IOV)),
    codec_loop(fun compress_stream_nif/3, Ref, IOV).

-spec decompress(iodata()) -> iodata().

decompress(Data) ->
    decompress(Data, #{}).

-spec decompress(Data :: iodata(), Options :: decompress_parameters()) ->
                    iodata();
                (Data :: iodata(), Ctx :: context()) -> iodata().

decompress(Data, Options) when is_map(Options) ->
    {ok, DCtx} = context(decompress, Options),
    try decompress(Data, DCtx) after close(DCtx) end;
decompress(Data, {decompress, Ref}) ->
    codec_loop(fun decompress_stream_nif/3,
               Ref,
               erlang:iolist_to_iovec(Data)).

codec_loop(Codec, Ref, [Data | Next]) ->
    case Codec(Ref, Data, Next =:= []) of
        {continue, Remainder, Output} ->
            [Output | codec_loop(Codec, Ref, [Remainder | Next])];
        {continue, <<>>} ->
            codec_loop(Codec, Ref, Next);
        {continue, Output} ->
            [Output | codec_loop(Codec, Ref, Next)];
        {flush, Output} ->
            [Output | codec_loop(Codec, Ref, [<<>>])];
        {done, Output} ->
            [Output]
    end.

init_compress_nif() ->
    erlang:nif_error(undef).

load_compress_dictionary_nif(_Ctx, _Dict) ->
    erlang:nif_error(undef).

ref_compress_dictionary_nif(_Ctx, _Dict) ->
    erlang:nif_error(undef).

set_compress_parameter_nif(_Ctx, _Key, _Value) ->
    erlang:nif_error(undef).

get_compress_parameter_nif(_Ctx, _Key) ->
    erlang:nif_error(undef).

set_pledged_src_size_nif(_Ctx, _Size) ->
    erlang:nif_error(undef).

compress_stream_nif(_, _, _) ->
    erlang:nif_error(undef).

compress_reset_nif(_) ->
    erlang:nif_error(undef).

compress_close_nif(_) ->
    erlang:nif_error(undef).

init_decompress_nif() ->
    erlang:nif_error(undef).

load_decompress_dictionary_nif(_Ctx, _Dict) ->
    erlang:nif_error(undef).

ref_decompress_dictionary_nif(_Ctx, _Dict) ->
    erlang:nif_error(undef).

set_decompress_parameter_nif(_Ctx, _Key, _Value) ->
    erlang:nif_error(undef).

get_decompress_parameter_nif(_Ctx, _Key) ->
    erlang:nif_error(undef).

decompress_stream_nif(_, _, _) ->
    erlang:nif_error(undef).

decompress_reset_nif(_) ->
    erlang:nif_error(undef).

decompress_close_nif(_) ->
    erlang:nif_error(undef).

create_cdict_nif(_Dict, _Level) ->
    erlang:nif_error(undef).

create_ddict_nif(_Dict) ->
    erlang:nif_error(undef).

getDictId_fromCDict_nif(_Dict) ->
    erlang:nif_error(undef).

getDictId_fromDDict_nif(_Dict) ->
    erlang:nif_error(undef).

getDictId_fromDict_nif(_Dict) ->
    erlang:nif_error(undef).

getDictId_fromFrame_nif(_Dict) ->
    erlang:nif_error(undef).

get_frame_header_nif(_Frame) ->
    erlang:nif_error(undef).



