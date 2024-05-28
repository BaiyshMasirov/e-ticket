// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_booked_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketBookedModel {
  String get id => throw _privateConstructorUsedError;
  int get rowNumber => throw _privateConstructorUsedError;
  int get placeNumber => throw _privateConstructorUsedError;
  TicketStatus get ticketStatus => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;

  /// type == [TicketType]
  int get type => throw _privateConstructorUsedError;

  /// ticketType == [TicketType]
  TicketKeyValueModel get ticketType => throw _privateConstructorUsedError;
  TicketSeatingType get seatingType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketBookedModelCopyWith<TicketBookedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketBookedModelCopyWith<$Res> {
  factory $TicketBookedModelCopyWith(
          TicketBookedModel value, $Res Function(TicketBookedModel) then) =
      _$TicketBookedModelCopyWithImpl<$Res, TicketBookedModel>;
  @useResult
  $Res call(
      {String id,
      int rowNumber,
      int placeNumber,
      TicketStatus ticketStatus,
      double price,
      String qrCode,
      int type,
      TicketKeyValueModel ticketType,
      TicketSeatingType seatingType});

  $TicketKeyValueModelCopyWith<$Res> get ticketType;
}

/// @nodoc
class _$TicketBookedModelCopyWithImpl<$Res, $Val extends TicketBookedModel>
    implements $TicketBookedModelCopyWith<$Res> {
  _$TicketBookedModelCopyWithImpl(this._value, this._then);

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
              as TicketKeyValueModel,
      seatingType: null == seatingType
          ? _value.seatingType
          : seatingType // ignore: cast_nullable_to_non_nullable
              as TicketSeatingType,
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
abstract class _$$TicketBookedModelImplCopyWith<$Res>
    implements $TicketBookedModelCopyWith<$Res> {
  factory _$$TicketBookedModelImplCopyWith(_$TicketBookedModelImpl value,
          $Res Function(_$TicketBookedModelImpl) then) =
      __$$TicketBookedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int rowNumber,
      int placeNumber,
      TicketStatus ticketStatus,
      double price,
      String qrCode,
      int type,
      TicketKeyValueModel ticketType,
      TicketSeatingType seatingType});

  @override
  $TicketKeyValueModelCopyWith<$Res> get ticketType;
}

/// @nodoc
class __$$TicketBookedModelImplCopyWithImpl<$Res>
    extends _$TicketBookedModelCopyWithImpl<$Res, _$TicketBookedModelImpl>
    implements _$$TicketBookedModelImplCopyWith<$Res> {
  __$$TicketBookedModelImplCopyWithImpl(_$TicketBookedModelImpl _value,
      $Res Function(_$TicketBookedModelImpl) _then)
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
    Object? seatingType = null,
  }) {
    return _then(_$TicketBookedModelImpl(
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
              as TicketKeyValueModel,
      seatingType: null == seatingType
          ? _value.seatingType
          : seatingType // ignore: cast_nullable_to_non_nullable
              as TicketSeatingType,
    ));
  }
}

/// @nodoc

class _$TicketBookedModelImpl extends _TicketBookedModel {
  const _$TicketBookedModelImpl(
      {required this.id,
      required this.rowNumber,
      required this.placeNumber,
      required this.ticketStatus,
      required this.price,
      required this.qrCode,
      required this.type,
      required this.ticketType,
      required this.seatingType})
      : super._();

  @override
  final String id;
  @override
  final int rowNumber;
  @override
  final int placeNumber;
  @override
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
  final TicketKeyValueModel ticketType;
  @override
  final TicketSeatingType seatingType;

  @override
  String toString() {
    return 'TicketBookedModel(id: $id, rowNumber: $rowNumber, placeNumber: $placeNumber, ticketStatus: $ticketStatus, price: $price, qrCode: $qrCode, type: $type, ticketType: $ticketType, seatingType: $seatingType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketBookedModelImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, rowNumber, placeNumber,
      ticketStatus, price, qrCode, type, ticketType, seatingType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketBookedModelImplCopyWith<_$TicketBookedModelImpl> get copyWith =>
      __$$TicketBookedModelImplCopyWithImpl<_$TicketBookedModelImpl>(
          this, _$identity);
}

abstract class _TicketBookedModel extends TicketBookedModel {
  const factory _TicketBookedModel(
      {required final String id,
      required final int rowNumber,
      required final int placeNumber,
      required final TicketStatus ticketStatus,
      required final double price,
      required final String qrCode,
      required final int type,
      required final TicketKeyValueModel ticketType,
      required final TicketSeatingType seatingType}) = _$TicketBookedModelImpl;
  const _TicketBookedModel._() : super._();

  @override
  String get id;
  @override
  int get rowNumber;
  @override
  int get placeNumber;
  @override
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
  TicketKeyValueModel get ticketType;
  @override
  TicketSeatingType get seatingType;
  @override
  @JsonKey(ignore: true)
  _$$TicketBookedModelImplCopyWith<_$TicketBookedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
