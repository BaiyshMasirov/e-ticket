// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_standing_place_pick.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketStandingPlacePick {
  /// ticketType = [TicketType]
  TicketKeyValueModel get ticketType => throw _privateConstructorUsedError;

  /// ticketType = [TicketType]
  int get type => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketStandingPlacePickCopyWith<TicketStandingPlacePick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStandingPlacePickCopyWith<$Res> {
  factory $TicketStandingPlacePickCopyWith(TicketStandingPlacePick value,
          $Res Function(TicketStandingPlacePick) then) =
      _$TicketStandingPlacePickCopyWithImpl<$Res, TicketStandingPlacePick>;
  @useResult
  $Res call(
      {TicketKeyValueModel ticketType, int type, int count, double price});

  $TicketKeyValueModelCopyWith<$Res> get ticketType;
}

/// @nodoc
class _$TicketStandingPlacePickCopyWithImpl<$Res,
        $Val extends TicketStandingPlacePick>
    implements $TicketStandingPlacePickCopyWith<$Res> {
  _$TicketStandingPlacePickCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketType = null,
    Object? type = null,
    Object? count = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as TicketKeyValueModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketKeyValueModelCopyWith<$Res> get ticketType {
    return $TicketKeyValueModelCopyWith<$Res>(_value.ticketType, (value) {
      return _then(_value.copyWith(ticketType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketStandingPlacePickImplCopyWith<$Res>
    implements $TicketStandingPlacePickCopyWith<$Res> {
  factory _$$TicketStandingPlacePickImplCopyWith(
          _$TicketStandingPlacePickImpl value,
          $Res Function(_$TicketStandingPlacePickImpl) then) =
      __$$TicketStandingPlacePickImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TicketKeyValueModel ticketType, int type, int count, double price});

  @override
  $TicketKeyValueModelCopyWith<$Res> get ticketType;
}

/// @nodoc
class __$$TicketStandingPlacePickImplCopyWithImpl<$Res>
    extends _$TicketStandingPlacePickCopyWithImpl<$Res,
        _$TicketStandingPlacePickImpl>
    implements _$$TicketStandingPlacePickImplCopyWith<$Res> {
  __$$TicketStandingPlacePickImplCopyWithImpl(
      _$TicketStandingPlacePickImpl _value,
      $Res Function(_$TicketStandingPlacePickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketType = null,
    Object? type = null,
    Object? count = null,
    Object? price = null,
  }) {
    return _then(_$TicketStandingPlacePickImpl(
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as TicketKeyValueModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TicketStandingPlacePickImpl extends _TicketStandingPlacePick {
  const _$TicketStandingPlacePickImpl(
      {required this.ticketType,
      required this.type,
      required this.count,
      required this.price})
      : super._();

  /// ticketType = [TicketType]
  @override
  final TicketKeyValueModel ticketType;

  /// ticketType = [TicketType]
  @override
  final int type;
  @override
  final int count;
  @override
  final double price;

  @override
  String toString() {
    return 'TicketStandingPlacePick(ticketType: $ticketType, type: $type, count: $count, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketStandingPlacePickImpl &&
            (identical(other.ticketType, ticketType) ||
                other.ticketType == ticketType) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketType, type, count, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketStandingPlacePickImplCopyWith<_$TicketStandingPlacePickImpl>
      get copyWith => __$$TicketStandingPlacePickImplCopyWithImpl<
          _$TicketStandingPlacePickImpl>(this, _$identity);
}

abstract class _TicketStandingPlacePick extends TicketStandingPlacePick {
  const factory _TicketStandingPlacePick(
      {required final TicketKeyValueModel ticketType,
      required final int type,
      required final int count,
      required final double price}) = _$TicketStandingPlacePickImpl;
  const _TicketStandingPlacePick._() : super._();

  @override

  /// ticketType = [TicketType]
  TicketKeyValueModel get ticketType;
  @override

  /// ticketType = [TicketType]
  int get type;
  @override
  int get count;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$TicketStandingPlacePickImplCopyWith<_$TicketStandingPlacePickImpl>
      get copyWith => throw _privateConstructorUsedError;
}
