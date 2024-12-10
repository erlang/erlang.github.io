-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/erl_bits.erl", 1).

-module(erl_bits).

-export([system_bittypes/0,system_bitdefault/0,set_bit_type/2,as_list/1]).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/../include/erl_bi"
      "ts.hrl",
      1).

-type bt_endian() :: big | little | native.

-type bt_sign() :: signed | unsigned.

-type bt_type() :: integer | float | binary | utf8 | utf16 | utf32.

-type bt_unit() :: 1..256.

-record(bittype,{type :: bt_type() | undefined,
                 unit :: bt_unit() | undefined,
                 sign :: bt_sign() | undefined,
                 endian :: bt_endian() | undefined}).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/erl_bits.erl", 30).

-spec system_bitdefault() -> no_system_bitdefault.

system_bitdefault() ->
    no_system_bitdefault.

-spec system_bittypes() -> no_system_types.

system_bittypes() ->
    no_system_types.

-spec as_list(#bittype{}) ->
                 [bt_endian() |
                  bt_sign() |
                  bt_type() |
                  {unit, undefined | bt_unit()}].

as_list(Bt) ->
    [case Bt of
         {bittype, REC0, _, _, _} ->
             REC0;
         REC0 ->
             error({badrecord, REC0})
     end,
     {unit,
      case Bt of
          {bittype, _, REC1, _, _} ->
              REC1;
          REC1 ->
              error({badrecord, REC1})
      end},
     case Bt of
         {bittype, _, _, REC2, _} ->
             REC2;
         REC2 ->
             error({badrecord, REC2})
     end,
     case Bt of
         {bittype, _, _, _, REC3} ->
             REC3;
         REC3 ->
             error({badrecord, REC3})
     end].

-type size() :: all | unknown | non_neg_integer() | tuple().

-type type() ::
          bytes | bitstring | bits |
          bt_type() |
          bt_endian() |
          bt_sign() |
          {unit, undefined | bt_unit()}.

-spec set_bit_type(default | size(), default | [type()]) ->
                      {ok, undefined | size(), #bittype{}} |
                      {error, {undefined_bittype, term()}} |
                      {error,
                       {bittype_mismatch, term(), term(), string()}}.

set_bit_type(Size, default) ->
    set_bit_type(Size, []);
set_bit_type(Size, TypeList) ->
    try
        {bittype, Type, Unit, Sign, Endian} = set_bit(TypeList),
        apply_defaults(Type, Size, Unit, Sign, Endian)
    catch
        throw:Error ->
            Error
    end.

set_bit([]) ->
    {bittype, undefined, undefined, undefined, undefined};
set_bit([H | T]) ->
    set_bit_1(T, type_to_record(H)).

set_bit_1([T0 | Ts], Bt0) ->
    Type = type_to_record(T0),
    Bt = merge_bittype(Type, Bt0),
    set_bit_1(Ts, Bt);
set_bit_1([], Bt) ->
    Bt.

type_to_record(integer) ->
    {bittype, integer, undefined, undefined, undefined};
type_to_record(utf8) ->
    {bittype, utf8, undefined, undefined, undefined};
type_to_record(utf16) ->
    {bittype, utf16, undefined, undefined, undefined};
type_to_record(utf32) ->
    {bittype, utf32, undefined, undefined, undefined};
type_to_record(float) ->
    {bittype, float, undefined, undefined, undefined};
type_to_record(binary) ->
    {bittype, binary, undefined, undefined, undefined};
type_to_record(bytes) ->
    {bittype, binary, 8, undefined, undefined};
type_to_record(bitstring) ->
    {bittype, binary, 1, undefined, undefined};
type_to_record(bits) ->
    {bittype, binary, 1, undefined, undefined};
type_to_record({unit, undefined}) ->
    {bittype, undefined, undefined, undefined, undefined};
type_to_record({unit, Sz}) when is_integer(Sz), Sz > 0, Sz =< 256 ->
    {bittype, undefined, Sz, undefined, undefined};
type_to_record(big) ->
    {bittype, undefined, undefined, undefined, big};
type_to_record(little) ->
    {bittype, undefined, undefined, undefined, little};
type_to_record(native) ->
    {bittype, undefined, undefined, undefined, native};
type_to_record(signed) ->
    {bittype, undefined, undefined, signed, undefined};
type_to_record(unsigned) ->
    {bittype, undefined, undefined, unsigned, undefined};
type_to_record(Name) ->
    throw({error, {undefined_bittype, Name}}).

merge_bittype(B1, B2) ->
    Endian =
        merge_field(case B1 of
                        {bittype, _, _, _, REC4} ->
                            REC4;
                        REC4 ->
                            error({badrecord, REC4})
                    end,
                    case B2 of
                        {bittype, _, _, _, REC5} ->
                            REC5;
                        REC5 ->
                            error({badrecord, REC5})
                    end,
                    endianness),
    Sign =
        merge_field(case B1 of
                        {bittype, _, _, REC6, _} ->
                            REC6;
                        REC6 ->
                            error({badrecord, REC6})
                    end,
                    case B2 of
                        {bittype, _, _, REC7, _} ->
                            REC7;
                        REC7 ->
                            error({badrecord, REC7})
                    end,
                    sign),
    Type =
        merge_field(case B1 of
                        {bittype, REC8, _, _, _} ->
                            REC8;
                        REC8 ->
                            error({badrecord, REC8})
                    end,
                    case B2 of
                        {bittype, REC9, _, _, _} ->
                            REC9;
                        REC9 ->
                            error({badrecord, REC9})
                    end,
                    type),
    Unit =
        merge_field(case B1 of
                        {bittype, _, REC10, _, _} ->
                            REC10;
                        REC10 ->
                            error({badrecord, REC10})
                    end,
                    case B2 of
                        {bittype, _, REC11, _, _} ->
                            REC11;
                        REC11 ->
                            error({badrecord, REC11})
                    end,
                    unit),
    {bittype, Type, Unit, Sign, Endian}.

merge_field(undefined, B, _) ->
    B;
merge_field(A, undefined, _) ->
    A;
merge_field(A, A, _) ->
    A;
merge_field(X, Y, What) ->
    throw({error, {bittype_mismatch, X, Y, atom_to_list(What)}}).

apply_defaults(undefined, Size, Unit, Sign, Endian) ->
    apply_defaults(integer, Size, Unit, Sign, Endian);
apply_defaults(binary, default, Unit, Sign, Endian) ->
    apply_defaults(binary, all, Unit, Sign, Endian);
apply_defaults(integer, default, Unit, Sign, Endian) ->
    check_unit(Unit),
    apply_defaults(integer, 8, 1, Sign, Endian);
apply_defaults(utf8 = Type, default, Unit, Sign, Endian) ->
    apply_defaults(Type, undefined, Unit, Sign, Endian);
apply_defaults(utf16 = Type, default, Unit, Sign, Endian) ->
    apply_defaults(Type, undefined, Unit, Sign, Endian);
apply_defaults(utf32 = Type, default, Unit, Sign, Endian) ->
    apply_defaults(Type, undefined, Unit, Sign, Endian);
apply_defaults(float, default, Unit, Sign, Endian) ->
    check_unit(Unit),
    apply_defaults(float, 64, 1, Sign, Endian);
apply_defaults(binary, Size, undefined, Sign, Endian) ->
    apply_defaults(binary, Size, 8, Sign, Endian);
apply_defaults(integer, Size, undefined, Sign, Endian) ->
    apply_defaults(integer, Size, 1, Sign, Endian);
apply_defaults(float, Size, undefined, Sign, Endian) ->
    apply_defaults(float, Size, 1, Sign, Endian);
apply_defaults(Type, Size, Unit, undefined, Endian) ->
    apply_defaults(Type, Size, Unit, unsigned, Endian);
apply_defaults(Type, Size, Unit, Sign, undefined) ->
    apply_defaults(Type, Size, Unit, Sign, big);
apply_defaults(Type, Size, Unit, Sign, Endian) ->
    check_size_unit(Type, Size, Unit),
    {ok, Size, {bittype, Type, Unit, Sign, Endian}}.

check_size_unit(utf8, Size, Unit) ->
    check_size_unit_1(Size, Unit);
check_size_unit(utf16, Size, Unit) ->
    check_size_unit_1(Size, Unit);
check_size_unit(utf32, Size, Unit) ->
    check_size_unit_1(Size, Unit);
check_size_unit(_, _, _) ->
    ok.

check_size_unit_1(Size, Unit) ->
    case Size of
        default ->
            ok;
        undefined ->
            ok;
        {atom, _, undefined} ->
            ok;
        {value, _, undefined} ->
            ok;
        _ ->
            throw({error, utf_bittype_size_or_unit})
    end,
    case Unit of
        undefined ->
            ok;
        _ ->
            throw({error, utf_bittype_size_or_unit})
    end.

check_unit(undefined) ->
    ok;
check_unit(_) ->
    throw({error, bittype_unit}).



