// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_booked_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketBookedEntity _$TicketBookedEntityFromJson(Map<String, dynamic> json) {
  return _TicketBookedEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketBookedEntity {
  String get id => throw _privateConstructorUsedError;
  int get rowNumber => throw _privateConstructorUsedError;
  int get placeNumber => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: TicketStatus.unknown)
  TicketStatus get ticketStatus => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;

  /// type == [TicketType]
  int get type => throw _privateConstructorUsedError;

  /// ticketType == [TicketType]
  TicketKeyValueEntity get ticketType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketBookedEntityCopyWith<TicketBookedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketBookedEntityCopyWith<$Res> {
  factory $TicketBookedEntityCopyWith(
          TicketBookedEntity value, $Res Function(TicketBookedEntity) then) =
      _$TicketBookedEntityCopyWithImpl<$Res, TicketBookedEntity>;
  @useResult
  $Res call(
      {String id,
      int rowNumber,
      int placeNumber,
      @JsonKey(unknownEnumValue: TicketStatus.unknown)
      TicketStatus ticketStatus,
      double price,
      String qrCode,
      int type,
      TicketKeyValueEntity ticketType});

  $TicketKeyValueEntityCopyWith<$Res> get ticketType;
}

/// @nodoc
class _$TicketBookedEntityCopyWithImpl<$Res, $Val extends TicketBookedEntity>
    implements $TicketBookedEntityCopyWith<$Res> {
  _$TicketBookedEntityCopyWithImpl(this._value, this._then);

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
    Object? qrCode = null,
    Object? type = null,
    Object? ticketType = null,
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
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as TicketKeyValueEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketKeyValueEntityCopyWith<$Res> get ticketType {
    return $TicketKeyValueEntityCopyWith<$Res>(_value.ticketType, (value) {
      return _then(_value.copyWith(ticketType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketBookedEntityImplCopyWith<$Res>
    implements $TicketBookedEntityCopyWith<$Res> {
  factory _$$TicketBookedEntityImplCopyWith(_$TicketBookedEntityImpl value,
          $Res Function(_$TicketBookedEntityImpl) then) =
      __$$TicketBookedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int rowNumber,
      int placeNumber,
      @JsonKey(unknownEnumValue: TicketStatus.unknown)
      TicketStatus ticketStatus,
      double price,
      String qrCode,
      int type,
      TicketKeyValueEntity ticketType});

  @override
  $TicketKeyValueEntityCopyWith<$Res> get ticketType;
}

/// @nodoc
class __$$TicketBookedEntityImplCopyWithImpl<$Res>
    extends _$TicketBookedEntityCopyWithImpl<$Res, _$TicketBookedEntityImpl>
    implements _$$TicketBookedEntityImplCopyWith<$Res> {
  __$$TicketBookedEntityImplCopyWithImpl(_$TicketBookedEntityImpl _value,
      $Res Function(_$TicketBookedEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rowNumber = null,
    Object? placeNumber = null,
    Object? ticketStatus = null,
    Object? price = null,
    Object? qrCode = null,
    Object? type = null,
    Object? ticketType = null,
  }) {
    return _then(_$TicketBookedEntityImpl(
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
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as TicketKeyValueEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketBookedEntityImpl extends _TicketBookedEntity {
  const _$TicketBookedEntityImpl(
      {required this.id,
      required this.rowNumber,
      required this.placeNumber,
      @JsonKey(unknownEnumValue: TicketStatus.unknown)
      required this.ticketStatus,
      required this.price,
      required this.qrCode,
      required this.type,
      required this.ticketType})
      : super._();

  factory _$TicketBookedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketBookedEntityImplFromJson(json);

  @override
  final String id;
  @override
  final int rowNumber;
  @override
  final int placeNumber;
  @override
  @JsonKey(unknownEnumValue: TicketStatus.unknown)
  final TicketStatus ticketStatus;
  @override
  final double price;
  @override
  final String qrCode;

  /// type == [TicketType]
  @override
  final int type;

  /// ticketType == [TicketType]
  @override
  final TicketKeyValueEntity ticketType;

  @override
  String toString() {
    return 'TicketBookedEntity(id: $id, rowNumber: $rowNumber, placeNumber: $placeNumber, ticketStatus: $ticketStatus, price: $price, qrCode: $qrCode, type: $type, ticketType: $ticketType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketBookedEntityImpl &&
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
                other.ticketType == ticketType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, rowNumber, placeNumber,
      ticketStatus, price, qrCode, type, ticketType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketBookedEntityImplCopyWith<_$TicketBookedEntityImpl> get copyWith =>
      __$$TicketBookedEntityImplCopyWithImpl<_$TicketBookedEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketBookedEntityImplToJson(
      this,
    );
  }
}

abstract class _TicketBookedEntity extends TicketBookedEntity {
  const factory _TicketBookedEntity(
          {required final String id,
          required final int rowNumber,
          required final int placeNumber,
          @JsonKey(unknownEnumValue: TicketStatus.unknown)
          required final TicketStatus ticketStatus,
          required final double price,
          required final String qrCode,
          required final int type,
          required final TicketKeyValueEntity ticketType}) =
      _$TicketBookedEntityImpl;
  const _TicketBookedEntity._() : super._();

  factory _TicketBookedEntity.fromJson(Map<String, dynamic> json) =
      _$TicketBookedEntityImpl.fromJson;

  @override
  String get id;
  @override
  int get rowNumber;
  @override
  int get placeNumber;
  @override
  @JsonKey(unknownEnumValue: TicketStatus.unknown)
  TicketStatus get ticketStatus;
  @override
  double get price;
  @override
  String get qrCode;
  @override

  /// type == [TicketType]
  int get type;
  @override

  /// ticketType == [TicketType]
  TicketKeyValueEntity get ticketType;
  @override
  @JsonKey(ignore: true)
  _$$TicketBookedEntityImplCopyWith<_$TicketBookedEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
