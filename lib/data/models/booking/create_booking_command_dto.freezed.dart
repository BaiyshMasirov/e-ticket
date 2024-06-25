// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_booking_command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBookingCommandDto _$CreateBookingCommandDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateBookingCommandDto.fromJson(json);
}

/// @nodoc
mixin _$CreateBookingCommandDto {
  String? get customerName => throw _privateConstructorUsedError;
  String? get customerEmail => throw _privateConstructorUsedError;
  String? get customerPhone => throw _privateConstructorUsedError;
  int get paymentType => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  int get ticketCount => throw _privateConstructorUsedError;
  double get bookingSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBookingCommandDtoCopyWith<CreateBookingCommandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookingCommandDtoCopyWith<$Res> {
  factory $CreateBookingCommandDtoCopyWith(CreateBookingCommandDto value,
          $Res Function(CreateBookingCommandDto) then) =
      _$CreateBookingCommandDtoCopyWithImpl<$Res, CreateBookingCommandDto>;
  @useResult
  $Res call(
      {String? customerName,
      String? customerEmail,
      String? customerPhone,
      int paymentType,
      String eventId,
      int ticketCount,
      double bookingSum});
}

/// @nodoc
class _$CreateBookingCommandDtoCopyWithImpl<$Res,
        $Val extends CreateBookingCommandDto>
    implements $CreateBookingCommandDtoCopyWith<$Res> {
  _$CreateBookingCommandDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = freezed,
    Object? customerEmail = freezed,
    Object? customerPhone = freezed,
    Object? paymentType = null,
    Object? eventId = null,
    Object? ticketCount = null,
    Object? bookingSum = null,
  }) {
    return _then(_value.copyWith(
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      ticketCount: null == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
      bookingSum: null == bookingSum
          ? _value.bookingSum
          : bookingSum // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBookingCommandDtoImplCopyWith<$Res>
    implements $CreateBookingCommandDtoCopyWith<$Res> {
  factory _$$CreateBookingCommandDtoImplCopyWith(
          _$CreateBookingCommandDtoImpl value,
          $Res Function(_$CreateBookingCommandDtoImpl) then) =
      __$$CreateBookingCommandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? customerName,
      String? customerEmail,
      String? customerPhone,
      int paymentType,
      String eventId,
      int ticketCount,
      double bookingSum});
}

/// @nodoc
class __$$CreateBookingCommandDtoImplCopyWithImpl<$Res>
    extends _$CreateBookingCommandDtoCopyWithImpl<$Res,
        _$CreateBookingCommandDtoImpl>
    implements _$$CreateBookingCommandDtoImplCopyWith<$Res> {
  __$$CreateBookingCommandDtoImplCopyWithImpl(
      _$CreateBookingCommandDtoImpl _value,
      $Res Function(_$CreateBookingCommandDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = freezed,
    Object? customerEmail = freezed,
    Object? customerPhone = freezed,
    Object? paymentType = null,
    Object? eventId = null,
    Object? ticketCount = null,
    Object? bookingSum = null,
  }) {
    return _then(_$CreateBookingCommandDtoImpl(
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      ticketCount: null == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
      bookingSum: null == bookingSum
          ? _value.bookingSum
          : bookingSum // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookingCommandDtoImpl extends _CreateBookingCommandDto {
  const _$CreateBookingCommandDtoImpl(
      {required this.customerName,
      required this.customerEmail,
      required this.customerPhone,
      required this.paymentType,
      required this.eventId,
      required this.ticketCount,
      required this.bookingSum})
      : super._();

  factory _$CreateBookingCommandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBookingCommandDtoImplFromJson(json);

  @override
  final String? customerName;
  @override
  final String? customerEmail;
  @override
  final String? customerPhone;
  @override
  final int paymentType;
  @override
  final String eventId;
  @override
  final int ticketCount;
  @override
  final double bookingSum;

  @override
  String toString() {
    return 'CreateBookingCommandDto(customerName: $customerName, customerEmail: $customerEmail, customerPhone: $customerPhone, paymentType: $paymentType, eventId: $eventId, ticketCount: $ticketCount, bookingSum: $bookingSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookingCommandDtoImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.ticketCount, ticketCount) ||
                other.ticketCount == ticketCount) &&
            (identical(other.bookingSum, bookingSum) ||
                other.bookingSum == bookingSum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerName, customerEmail,
      customerPhone, paymentType, eventId, ticketCount, bookingSum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingCommandDtoImplCopyWith<_$CreateBookingCommandDtoImpl>
      get copyWith => __$$CreateBookingCommandDtoImplCopyWithImpl<
          _$CreateBookingCommandDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookingCommandDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateBookingCommandDto extends CreateBookingCommandDto {
  const factory _CreateBookingCommandDto(
      {required final String? customerName,
      required final String? customerEmail,
      required final String? customerPhone,
      required final int paymentType,
      required final String eventId,
      required final int ticketCount,
      required final double bookingSum}) = _$CreateBookingCommandDtoImpl;
  const _CreateBookingCommandDto._() : super._();

  factory _CreateBookingCommandDto.fromJson(Map<String, dynamic> json) =
      _$CreateBookingCommandDtoImpl.fromJson;

  @override
  String? get customerName;
  @override
  String? get customerEmail;
  @override
  String? get customerPhone;
  @override
  int get paymentType;
  @override
  String get eventId;
  @override
  int get ticketCount;
  @override
  double get bookingSum;
  @override
  @JsonKey(ignore: true)
  _$$CreateBookingCommandDtoImplCopyWith<_$CreateBookingCommandDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
