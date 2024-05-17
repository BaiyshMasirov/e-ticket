// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_type_count_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketTypeCountDto _$TicketTypeCountDtoFromJson(Map<String, dynamic> json) {
  return _TicketTypeCountDto.fromJson(json);
}

/// @nodoc
mixin _$TicketTypeCountDto {
  int get count => throw _privateConstructorUsedError;
  int get availableCount => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// type == [TicketType]
  int get type => throw _privateConstructorUsedError;

  /// ticketType == [TicketType]
  KeyValueMapDto get ticketType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketTypeCountDtoCopyWith<TicketTypeCountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketTypeCountDtoCopyWith<$Res> {
  factory $TicketTypeCountDtoCopyWith(
          TicketTypeCountDto value, $Res Function(TicketTypeCountDto) then) =
      _$TicketTypeCountDtoCopyWithImpl<$Res, TicketTypeCountDto>;
  @useResult
  $Res call(
      {int count,
      int availableCount,
      double price,
      int type,
      KeyValueMapDto ticketType});

  $KeyValueMapDtoCopyWith<$Res> get ticketType;
}

/// @nodoc
class _$TicketTypeCountDtoCopyWithImpl<$Res, $Val extends TicketTypeCountDto>
    implements $TicketTypeCountDtoCopyWith<$Res> {
  _$TicketTypeCountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? availableCount = null,
    Object? price = null,
    Object? type = null,
    Object? ticketType = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      availableCount: null == availableCount
          ? _value.availableCount
          : availableCount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as KeyValueMapDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KeyValueMapDtoCopyWith<$Res> get ticketType {
    return $KeyValueMapDtoCopyWith<$Res>(_value.ticketType, (value) {
      return _then(_value.copyWith(ticketType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketTypeCountDtoImplCopyWith<$Res>
    implements $TicketTypeCountDtoCopyWith<$Res> {
  factory _$$TicketTypeCountDtoImplCopyWith(_$TicketTypeCountDtoImpl value,
          $Res Function(_$TicketTypeCountDtoImpl) then) =
      __$$TicketTypeCountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      int availableCount,
      double price,
      int type,
      KeyValueMapDto ticketType});

  @override
  $KeyValueMapDtoCopyWith<$Res> get ticketType;
}

/// @nodoc
class __$$TicketTypeCountDtoImplCopyWithImpl<$Res>
    extends _$TicketTypeCountDtoCopyWithImpl<$Res, _$TicketTypeCountDtoImpl>
    implements _$$TicketTypeCountDtoImplCopyWith<$Res> {
  __$$TicketTypeCountDtoImplCopyWithImpl(_$TicketTypeCountDtoImpl _value,
      $Res Function(_$TicketTypeCountDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? availableCount = null,
    Object? price = null,
    Object? type = null,
    Object? ticketType = null,
  }) {
    return _then(_$TicketTypeCountDtoImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      availableCount: null == availableCount
          ? _value.availableCount
          : availableCount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as KeyValueMapDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketTypeCountDtoImpl extends _TicketTypeCountDto {
  const _$TicketTypeCountDtoImpl(
      {required this.count,
      required this.availableCount,
      required this.price,
      required this.type,
      required this.ticketType})
      : super._();

  factory _$TicketTypeCountDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketTypeCountDtoImplFromJson(json);

  @override
  final int count;
  @override
  final int availableCount;
  @override
  final double price;

  /// type == [TicketType]
  @override
  final int type;

  /// ticketType == [TicketType]
  @override
  final KeyValueMapDto ticketType;

  @override
  String toString() {
    return 'TicketTypeCountDto(count: $count, availableCount: $availableCount, price: $price, type: $type, ticketType: $ticketType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketTypeCountDtoImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.availableCount, availableCount) ||
                other.availableCount == availableCount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.ticketType, ticketType) ||
                other.ticketType == ticketType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, count, availableCount, price, type, ticketType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketTypeCountDtoImplCopyWith<_$TicketTypeCountDtoImpl> get copyWith =>
      __$$TicketTypeCountDtoImplCopyWithImpl<_$TicketTypeCountDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketTypeCountDtoImplToJson(
      this,
    );
  }
}

abstract class _TicketTypeCountDto extends TicketTypeCountDto {
  const factory _TicketTypeCountDto(
      {required final int count,
      required final int availableCount,
      required final double price,
      required final int type,
      required final KeyValueMapDto ticketType}) = _$TicketTypeCountDtoImpl;
  const _TicketTypeCountDto._() : super._();

  factory _TicketTypeCountDto.fromJson(Map<String, dynamic> json) =
      _$TicketTypeCountDtoImpl.fromJson;

  @override
  int get count;
  @override
  int get availableCount;
  @override
  double get price;
  @override

  /// type == [TicketType]
  int get type;
  @override

  /// ticketType == [TicketType]
  KeyValueMapDto get ticketType;
  @override
  @JsonKey(ignore: true)
  _$$TicketTypeCountDtoImplCopyWith<_$TicketTypeCountDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
