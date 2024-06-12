// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_booked_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketBookedDto _$TicketBookedDtoFromJson(Map<String, dynamic> json) {
  return _TicketBookedDto.fromJson(json);
}

/// @nodoc
mixin _$TicketBookedDto {
  String get id => throw _privateConstructorUsedError;
  int get rowNumber => throw _privateConstructorUsedError;
  int get placeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', unknownEnumValue: TicketStatus.unknown)
  TicketStatus get ticketStatus => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;

  /// type == [TicketType]
  int get type => throw _privateConstructorUsedError;

  /// ticketType == [TicketType]
  KeyValueMapDto get ticketType => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: TicketSeatingType.unknown)
  TicketSeatingType get seatingType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketBookedDtoCopyWith<TicketBookedDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketBookedDtoCopyWith<$Res> {
  factory $TicketBookedDtoCopyWith(
          TicketBookedDto value, $Res Function(TicketBookedDto) then) =
      _$TicketBookedDtoCopyWithImpl<$Res, TicketBookedDto>;
  @useResult
  $Res call(
      {String id,
      int rowNumber,
      int placeNumber,
      @JsonKey(name: 'status', unknownEnumValue: TicketStatus.unknown)
      TicketStatus ticketStatus,
      double price,
      String? qrCode,
      int type,
      KeyValueMapDto ticketType,
      @JsonKey(unknownEnumValue: TicketSeatingType.unknown)
      TicketSeatingType seatingType});

  $KeyValueMapDtoCopyWith<$Res> get ticketType;
}

/// @nodoc
class _$TicketBookedDtoCopyWithImpl<$Res, $Val extends TicketBookedDto>
    implements $TicketBookedDtoCopyWith<$Res> {
  _$TicketBookedDtoCopyWithImpl(this._value, this._then);

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
    Object? ticketStatus = null,
    Object? price = null,
    Object? qrCode = freezed,
    Object? type = null,
    Object? ticketType = null,
    Object? seatingType = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as KeyValueMapDto,
      seatingType: null == seatingType
          ? _value.seatingType
          : seatingType // ignore: cast_nullable_to_non_nullable
              as TicketSeatingType,
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
abstract class _$$TicketBookedDtoImplCopyWith<$Res>
    implements $TicketBookedDtoCopyWith<$Res> {
  factory _$$TicketBookedDtoImplCopyWith(_$TicketBookedDtoImpl value,
          $Res Function(_$TicketBookedDtoImpl) then) =
      __$$TicketBookedDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int rowNumber,
      int placeNumber,
      @JsonKey(name: 'status', unknownEnumValue: TicketStatus.unknown)
      TicketStatus ticketStatus,
      double price,
      String? qrCode,
      int type,
      KeyValueMapDto ticketType,
      @JsonKey(unknownEnumValue: TicketSeatingType.unknown)
      TicketSeatingType seatingType});

  @override
  $KeyValueMapDtoCopyWith<$Res> get ticketType;
}

/// @nodoc
class __$$TicketBookedDtoImplCopyWithImpl<$Res>
    extends _$TicketBookedDtoCopyWithImpl<$Res, _$TicketBookedDtoImpl>
    implements _$$TicketBookedDtoImplCopyWith<$Res> {
  __$$TicketBookedDtoImplCopyWithImpl(
      _$TicketBookedDtoImpl _value, $Res Function(_$TicketBookedDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rowNumber = null,
    Object? placeNumber = null,
    Object? ticketStatus = null,
    Object? price = null,
    Object? qrCode = freezed,
    Object? type = null,
    Object? ticketType = null,
    Object? seatingType = null,
  }) {
    return _then(_$TicketBookedDtoImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as KeyValueMapDto,
      seatingType: null == seatingType
          ? _value.seatingType
          : seatingType // ignore: cast_nullable_to_non_nullable
              as TicketSeatingType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketBookedDtoImpl extends _TicketBookedDto {
  const _$TicketBookedDtoImpl(
      {required this.id,
      required this.rowNumber,
      required this.placeNumber,
      @JsonKey(name: 'status', unknownEnumValue: TicketStatus.unknown)
      required this.ticketStatus,
      required this.price,
      required this.qrCode,
      required this.type,
      required this.ticketType,
      @JsonKey(unknownEnumValue: TicketSeatingType.unknown)
      required this.seatingType})
      : super._();

  factory _$TicketBookedDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketBookedDtoImplFromJson(json);

  @override
  final String id;
  @override
  final int rowNumber;
  @override
  final int placeNumber;
  @override
  @JsonKey(name: 'status', unknownEnumValue: TicketStatus.unknown)
  final TicketStatus ticketStatus;
  @override
  final double price;
  @override
  final String? qrCode;

  /// type == [TicketType]
  @override
  final int type;

  /// ticketType == [TicketType]
  @override
  final KeyValueMapDto ticketType;
  @override
  @JsonKey(unknownEnumValue: TicketSeatingType.unknown)
  final TicketSeatingType seatingType;

  @override
  String toString() {
    return 'TicketBookedDto(id: $id, rowNumber: $rowNumber, placeNumber: $placeNumber, ticketStatus: $ticketStatus, price: $price, qrCode: $qrCode, type: $type, ticketType: $ticketType, seatingType: $seatingType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketBookedDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rowNumber, rowNumber) ||
                other.rowNumber == rowNumber) &&
            (identical(other.placeNumber, placeNumber) ||
                other.placeNumber == placeNumber) &&
            (identical(other.ticketStatus, ticketStatus) ||
                other.ticketStatus == ticketStatus) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.ticketType, ticketType) ||
                other.ticketType == ticketType) &&
            (identical(other.seatingType, seatingType) ||
                other.seatingType == seatingType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, rowNumber, placeNumber,
      ticketStatus, price, qrCode, type, ticketType, seatingType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketBookedDtoImplCopyWith<_$TicketBookedDtoImpl> get copyWith =>
      __$$TicketBookedDtoImplCopyWithImpl<_$TicketBookedDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketBookedDtoImplToJson(
      this,
    );
  }
}

abstract class _TicketBookedDto extends TicketBookedDto {
  const factory _TicketBookedDto(
      {required final String id,
      required final int rowNumber,
      required final int placeNumber,
      @JsonKey(name: 'status', unknownEnumValue: TicketStatus.unknown)
      required final TicketStatus ticketStatus,
      required final double price,
      required final String? qrCode,
      required final int type,
      required final KeyValueMapDto ticketType,
      @JsonKey(unknownEnumValue: TicketSeatingType.unknown)
      required final TicketSeatingType seatingType}) = _$TicketBookedDtoImpl;
  const _TicketBookedDto._() : super._();

  factory _TicketBookedDto.fromJson(Map<String, dynamic> json) =
      _$TicketBookedDtoImpl.fromJson;

  @override
  String get id;
  @override
  int get rowNumber;
  @override
  int get placeNumber;
  @override
  @JsonKey(name: 'status', unknownEnumValue: TicketStatus.unknown)
  TicketStatus get ticketStatus;
  @override
  double get price;
  @override
  String? get qrCode;
  @override

  /// type == [TicketType]
  int get type;
  @override

  /// ticketType == [TicketType]
  KeyValueMapDto get ticketType;
  @override
  @JsonKey(unknownEnumValue: TicketSeatingType.unknown)
  TicketSeatingType get seatingType;
  @override
  @JsonKey(ignore: true)
  _$$TicketBookedDtoImplCopyWith<_$TicketBookedDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
