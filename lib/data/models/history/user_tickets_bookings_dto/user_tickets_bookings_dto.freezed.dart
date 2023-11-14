// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tickets_bookings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserTicketsBookingsDto _$UserTicketsBookingsDtoFromJson(
    Map<String, dynamic> json) {
  return _UserTicketsBookingsDto.fromJson(json);
}

/// @nodoc
mixin _$UserTicketsBookingsDto {
  String get id => throw _privateConstructorUsedError;
  int get rowNumber => throw _privateConstructorUsedError;
  int get placeNumber => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTicketsBookingsDtoCopyWith<UserTicketsBookingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTicketsBookingsDtoCopyWith<$Res> {
  factory $UserTicketsBookingsDtoCopyWith(UserTicketsBookingsDto value,
          $Res Function(UserTicketsBookingsDto) then) =
      _$UserTicketsBookingsDtoCopyWithImpl<$Res, UserTicketsBookingsDto>;
  @useResult
  $Res call(
      {String id,
      int rowNumber,
      int placeNumber,
      int type,
      int status,
      double price,
      String? qrCode});
}

/// @nodoc
class _$UserTicketsBookingsDtoCopyWithImpl<$Res,
        $Val extends UserTicketsBookingsDto>
    implements $UserTicketsBookingsDtoCopyWith<$Res> {
  _$UserTicketsBookingsDtoCopyWithImpl(this._value, this._then);

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
    Object? type = null,
    Object? status = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$UserTicketsBookingsDtoImplCopyWith<$Res>
    implements $UserTicketsBookingsDtoCopyWith<$Res> {
  factory _$$UserTicketsBookingsDtoImplCopyWith(
          _$UserTicketsBookingsDtoImpl value,
          $Res Function(_$UserTicketsBookingsDtoImpl) then) =
      __$$UserTicketsBookingsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int rowNumber,
      int placeNumber,
      int type,
      int status,
      double price,
      String? qrCode});
}

/// @nodoc
class __$$UserTicketsBookingsDtoImplCopyWithImpl<$Res>
    extends _$UserTicketsBookingsDtoCopyWithImpl<$Res,
        _$UserTicketsBookingsDtoImpl>
    implements _$$UserTicketsBookingsDtoImplCopyWith<$Res> {
  __$$UserTicketsBookingsDtoImplCopyWithImpl(
      _$UserTicketsBookingsDtoImpl _value,
      $Res Function(_$UserTicketsBookingsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rowNumber = null,
    Object? placeNumber = null,
    Object? type = null,
    Object? status = null,
    Object? price = null,
    Object? qrCode = freezed,
  }) {
    return _then(_$UserTicketsBookingsDtoImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$UserTicketsBookingsDtoImpl extends _UserTicketsBookingsDto {
  const _$UserTicketsBookingsDtoImpl(
      {required this.id,
      required this.rowNumber,
      required this.placeNumber,
      required this.type,
      required this.status,
      required this.price,
      required this.qrCode})
      : super._();

  factory _$UserTicketsBookingsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTicketsBookingsDtoImplFromJson(json);

  @override
  final String id;
  @override
  final int rowNumber;
  @override
  final int placeNumber;
  @override
  final int type;
  @override
  final int status;
  @override
  final double price;
  @override
  final String? qrCode;

  @override
  String toString() {
    return 'UserTicketsBookingsDto(id: $id, rowNumber: $rowNumber, placeNumber: $placeNumber, type: $type, status: $status, price: $price, qrCode: $qrCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTicketsBookingsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rowNumber, rowNumber) ||
                other.rowNumber == rowNumber) &&
            (identical(other.placeNumber, placeNumber) ||
                other.placeNumber == placeNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, rowNumber, placeNumber, type, status, price, qrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTicketsBookingsDtoImplCopyWith<_$UserTicketsBookingsDtoImpl>
      get copyWith => __$$UserTicketsBookingsDtoImplCopyWithImpl<
          _$UserTicketsBookingsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTicketsBookingsDtoImplToJson(
      this,
    );
  }
}

abstract class _UserTicketsBookingsDto extends UserTicketsBookingsDto {
  const factory _UserTicketsBookingsDto(
      {required final String id,
      required final int rowNumber,
      required final int placeNumber,
      required final int type,
      required final int status,
      required final double price,
      required final String? qrCode}) = _$UserTicketsBookingsDtoImpl;
  const _UserTicketsBookingsDto._() : super._();

  factory _UserTicketsBookingsDto.fromJson(Map<String, dynamic> json) =
      _$UserTicketsBookingsDtoImpl.fromJson;

  @override
  String get id;
  @override
  int get rowNumber;
  @override
  int get placeNumber;
  @override
  int get type;
  @override
  int get status;
  @override
  double get price;
  @override
  String? get qrCode;
  @override
  @JsonKey(ignore: true)
  _$$UserTicketsBookingsDtoImplCopyWith<_$UserTicketsBookingsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
