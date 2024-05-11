// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketsDto _$TicketsDtoFromJson(Map<String, dynamic> json) {
  return _TicketsDto.fromJson(json);
}

/// @nodoc
mixin _$TicketsDto {
  String get id => throw _privateConstructorUsedError;
  int get rowNumber => throw _privateConstructorUsedError;
  int get placeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get ticketType => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  TicketStatus get ticketStatus => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketsDtoCopyWith<TicketsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsDtoCopyWith<$Res> {
  factory $TicketsDtoCopyWith(
          TicketsDto value, $Res Function(TicketsDto) then) =
      _$TicketsDtoCopyWithImpl<$Res, TicketsDto>;
  @useResult
  $Res call(
      {String id,
      int rowNumber,
      int placeNumber,
      @JsonKey(name: 'type') int ticketType,
      @JsonKey(name: 'status') TicketStatus ticketStatus,
      double price,
      String? qrCode});
}

/// @nodoc
class _$TicketsDtoCopyWithImpl<$Res, $Val extends TicketsDto>
    implements $TicketsDtoCopyWith<$Res> {
  _$TicketsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rowNumber = null,
    Object? placeNumber = null,
    Object? ticketType = null,
    Object? ticketStatus = null,
    Object? price = null,
    Object? qrCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rowNumber: null == rowNumber
          ? _value.rowNumber
          : rowNumber // ignore: cast_nullable_to_non_nullable
              as int,
      placeNumber: null == placeNumber
          ? _value.placeNumber
          : placeNumber // ignore: cast_nullable_to_non_nullable
              as int,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as int,
      ticketStatus: null == ticketStatus
          ? _value.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketsDtoImplCopyWith<$Res>
    implements $TicketsDtoCopyWith<$Res> {
  factory _$$TicketsDtoImplCopyWith(
          _$TicketsDtoImpl value, $Res Function(_$TicketsDtoImpl) then) =
      __$$TicketsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int rowNumber,
      int placeNumber,
      @JsonKey(name: 'type') int ticketType,
      @JsonKey(name: 'status') TicketStatus ticketStatus,
      double price,
      String? qrCode});
}

/// @nodoc
class __$$TicketsDtoImplCopyWithImpl<$Res>
    extends _$TicketsDtoCopyWithImpl<$Res, _$TicketsDtoImpl>
    implements _$$TicketsDtoImplCopyWith<$Res> {
  __$$TicketsDtoImplCopyWithImpl(
      _$TicketsDtoImpl _value, $Res Function(_$TicketsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rowNumber = null,
    Object? placeNumber = null,
    Object? ticketType = null,
    Object? ticketStatus = null,
    Object? price = null,
    Object? qrCode = freezed,
  }) {
    return _then(_$TicketsDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rowNumber: null == rowNumber
          ? _value.rowNumber
          : rowNumber // ignore: cast_nullable_to_non_nullable
              as int,
      placeNumber: null == placeNumber
          ? _value.placeNumber
          : placeNumber // ignore: cast_nullable_to_non_nullable
              as int,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as int,
      ticketStatus: null == ticketStatus
          ? _value.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketsDtoImpl extends _TicketsDto {
  const _$TicketsDtoImpl(
      {required this.id,
      required this.rowNumber,
      required this.placeNumber,
      @JsonKey(name: 'type') required this.ticketType,
      @JsonKey(name: 'status') required this.ticketStatus,
      required this.price,
      required this.qrCode})
      : super._();

  factory _$TicketsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketsDtoImplFromJson(json);

  @override
  final String id;
  @override
  final int rowNumber;
  @override
  final int placeNumber;
  @override
  @JsonKey(name: 'type')
  final int ticketType;
  @override
  @JsonKey(name: 'status')
  final TicketStatus ticketStatus;
  @override
  final double price;
  @override
  final String? qrCode;

  @override
  String toString() {
    return 'TicketsDto(id: $id, rowNumber: $rowNumber, placeNumber: $placeNumber, ticketType: $ticketType, ticketStatus: $ticketStatus, price: $price, qrCode: $qrCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rowNumber, rowNumber) ||
                other.rowNumber == rowNumber) &&
            (identical(other.placeNumber, placeNumber) ||
                other.placeNumber == placeNumber) &&
            (identical(other.ticketType, ticketType) ||
                other.ticketType == ticketType) &&
            (identical(other.ticketStatus, ticketStatus) ||
                other.ticketStatus == ticketStatus) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, rowNumber, placeNumber,
      ticketType, ticketStatus, price, qrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsDtoImplCopyWith<_$TicketsDtoImpl> get copyWith =>
      __$$TicketsDtoImplCopyWithImpl<_$TicketsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketsDtoImplToJson(
      this,
    );
  }
}

abstract class _TicketsDto extends TicketsDto {
  const factory _TicketsDto(
      {required final String id,
      required final int rowNumber,
      required final int placeNumber,
      @JsonKey(name: 'type') required final int ticketType,
      @JsonKey(name: 'status') required final TicketStatus ticketStatus,
      required final double price,
      required final String? qrCode}) = _$TicketsDtoImpl;
  const _TicketsDto._() : super._();

  factory _TicketsDto.fromJson(Map<String, dynamic> json) =
      _$TicketsDtoImpl.fromJson;

  @override
  String get id;
  @override
  int get rowNumber;
  @override
  int get placeNumber;
  @override
  @JsonKey(name: 'type')
  int get ticketType;
  @override
  @JsonKey(name: 'status')
  TicketStatus get ticketStatus;
  @override
  double get price;
  @override
  String? get qrCode;
  @override
  @JsonKey(ignore: true)
  _$$TicketsDtoImplCopyWith<_$TicketsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
