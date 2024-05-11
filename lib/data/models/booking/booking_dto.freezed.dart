// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingDto _$BookingDtoFromJson(Map<String, dynamic> json) {
  return _BookingDto.fromJson(json);
}

/// @nodoc
mixin _$BookingDto {
  String get id => throw _privateConstructorUsedError;
  @DateTimeUTCSerializer()
  DateTime get eventDate => throw _privateConstructorUsedError;
  @DateTimeUTCSerializer()
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', unknownEnumValue: BookingStatus.unknown)
  BookingStatus get bookingStatus => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: EventStatus.unknown)
  EventStatus get eventStatus => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  double get bookingSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  LocationType get locationType => throw _privateConstructorUsedError;
  String get locationName => throw _privateConstructorUsedError;
  String? get eventName => throw _privateConstructorUsedError;
  String? get eventImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingDtoCopyWith<BookingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDtoCopyWith<$Res> {
  factory $BookingDtoCopyWith(
          BookingDto value, $Res Function(BookingDto) then) =
      _$BookingDtoCopyWithImpl<$Res, BookingDto>;
  @useResult
  $Res call(
      {String id,
      @DateTimeUTCSerializer() DateTime eventDate,
      @DateTimeUTCSerializer() DateTime created,
      @JsonKey(name: 'status', unknownEnumValue: BookingStatus.unknown)
      BookingStatus bookingStatus,
      @JsonKey(unknownEnumValue: EventStatus.unknown) EventStatus eventStatus,
      String eventId,
      double bookingSum,
      @JsonKey(name: 'type') LocationType locationType,
      String locationName,
      String? eventName,
      String? eventImage});
}

/// @nodoc
class _$BookingDtoCopyWithImpl<$Res, $Val extends BookingDto>
    implements $BookingDtoCopyWith<$Res> {
  _$BookingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventDate = null,
    Object? created = null,
    Object? bookingStatus = null,
    Object? eventStatus = null,
    Object? eventId = null,
    Object? bookingSum = null,
    Object? locationType = null,
    Object? locationName = null,
    Object? eventName = freezed,
    Object? eventImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      eventStatus: null == eventStatus
          ? _value.eventStatus
          : eventStatus // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      bookingSum: null == bookingSum
          ? _value.bookingSum
          : bookingSum // ignore: cast_nullable_to_non_nullable
              as double,
      locationType: null == locationType
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      eventImage: freezed == eventImage
          ? _value.eventImage
          : eventImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingDtoImplCopyWith<$Res>
    implements $BookingDtoCopyWith<$Res> {
  factory _$$BookingDtoImplCopyWith(
          _$BookingDtoImpl value, $Res Function(_$BookingDtoImpl) then) =
      __$$BookingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeUTCSerializer() DateTime eventDate,
      @DateTimeUTCSerializer() DateTime created,
      @JsonKey(name: 'status', unknownEnumValue: BookingStatus.unknown)
      BookingStatus bookingStatus,
      @JsonKey(unknownEnumValue: EventStatus.unknown) EventStatus eventStatus,
      String eventId,
      double bookingSum,
      @JsonKey(name: 'type') LocationType locationType,
      String locationName,
      String? eventName,
      String? eventImage});
}

/// @nodoc
class __$$BookingDtoImplCopyWithImpl<$Res>
    extends _$BookingDtoCopyWithImpl<$Res, _$BookingDtoImpl>
    implements _$$BookingDtoImplCopyWith<$Res> {
  __$$BookingDtoImplCopyWithImpl(
      _$BookingDtoImpl _value, $Res Function(_$BookingDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventDate = null,
    Object? created = null,
    Object? bookingStatus = null,
    Object? eventStatus = null,
    Object? eventId = null,
    Object? bookingSum = null,
    Object? locationType = null,
    Object? locationName = null,
    Object? eventName = freezed,
    Object? eventImage = freezed,
  }) {
    return _then(_$BookingDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      eventStatus: null == eventStatus
          ? _value.eventStatus
          : eventStatus // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      bookingSum: null == bookingSum
          ? _value.bookingSum
          : bookingSum // ignore: cast_nullable_to_non_nullable
              as double,
      locationType: null == locationType
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      eventImage: freezed == eventImage
          ? _value.eventImage
          : eventImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingDtoImpl extends _BookingDto {
  const _$BookingDtoImpl(
      {required this.id,
      @DateTimeUTCSerializer() required this.eventDate,
      @DateTimeUTCSerializer() required this.created,
      @JsonKey(name: 'status', unknownEnumValue: BookingStatus.unknown)
      required this.bookingStatus,
      @JsonKey(unknownEnumValue: EventStatus.unknown) required this.eventStatus,
      required this.eventId,
      required this.bookingSum,
      @JsonKey(name: 'type') required this.locationType,
      required this.locationName,
      this.eventName,
      this.eventImage})
      : super._();

  factory _$BookingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDtoImplFromJson(json);

  @override
  final String id;
  @override
  @DateTimeUTCSerializer()
  final DateTime eventDate;
  @override
  @DateTimeUTCSerializer()
  final DateTime created;
  @override
  @JsonKey(name: 'status', unknownEnumValue: BookingStatus.unknown)
  final BookingStatus bookingStatus;
  @override
  @JsonKey(unknownEnumValue: EventStatus.unknown)
  final EventStatus eventStatus;
  @override
  final String eventId;
  @override
  final double bookingSum;
  @override
  @JsonKey(name: 'type')
  final LocationType locationType;
  @override
  final String locationName;
  @override
  final String? eventName;
  @override
  final String? eventImage;

  @override
  String toString() {
    return 'BookingDto(id: $id, eventDate: $eventDate, created: $created, bookingStatus: $bookingStatus, eventStatus: $eventStatus, eventId: $eventId, bookingSum: $bookingSum, locationType: $locationType, locationName: $locationName, eventName: $eventName, eventImage: $eventImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.bookingStatus, bookingStatus) ||
                other.bookingStatus == bookingStatus) &&
            (identical(other.eventStatus, eventStatus) ||
                other.eventStatus == eventStatus) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.bookingSum, bookingSum) ||
                other.bookingSum == bookingSum) &&
            (identical(other.locationType, locationType) ||
                other.locationType == locationType) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventImage, eventImage) ||
                other.eventImage == eventImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      eventDate,
      created,
      bookingStatus,
      eventStatus,
      eventId,
      bookingSum,
      locationType,
      locationName,
      eventName,
      eventImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDtoImplCopyWith<_$BookingDtoImpl> get copyWith =>
      __$$BookingDtoImplCopyWithImpl<_$BookingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDtoImplToJson(
      this,
    );
  }
}

abstract class _BookingDto extends BookingDto {
  const factory _BookingDto(
      {required final String id,
      @DateTimeUTCSerializer() required final DateTime eventDate,
      @DateTimeUTCSerializer() required final DateTime created,
      @JsonKey(name: 'status', unknownEnumValue: BookingStatus.unknown)
      required final BookingStatus bookingStatus,
      @JsonKey(unknownEnumValue: EventStatus.unknown)
      required final EventStatus eventStatus,
      required final String eventId,
      required final double bookingSum,
      @JsonKey(name: 'type') required final LocationType locationType,
      required final String locationName,
      final String? eventName,
      final String? eventImage}) = _$BookingDtoImpl;
  const _BookingDto._() : super._();

  factory _BookingDto.fromJson(Map<String, dynamic> json) =
      _$BookingDtoImpl.fromJson;

  @override
  String get id;
  @override
  @DateTimeUTCSerializer()
  DateTime get eventDate;
  @override
  @DateTimeUTCSerializer()
  DateTime get created;
  @override
  @JsonKey(name: 'status', unknownEnumValue: BookingStatus.unknown)
  BookingStatus get bookingStatus;
  @override
  @JsonKey(unknownEnumValue: EventStatus.unknown)
  EventStatus get eventStatus;
  @override
  String get eventId;
  @override
  double get bookingSum;
  @override
  @JsonKey(name: 'type')
  LocationType get locationType;
  @override
  String get locationName;
  @override
  String? get eventName;
  @override
  String? get eventImage;
  @override
  @JsonKey(ignore: true)
  _$$BookingDtoImplCopyWith<_$BookingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
