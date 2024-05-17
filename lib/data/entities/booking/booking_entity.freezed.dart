// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingEntity _$BookingEntityFromJson(Map<String, dynamic> json) {
  return _BookingEntity.fromJson(json);
}

/// @nodoc
mixin _$BookingEntity {
  String get id => throw _privateConstructorUsedError;
  @DateTimeUTCSerializer()
  DateTime get eventDate => throw _privateConstructorUsedError;
  @DateTimeUTCSerializer()
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: BookingStatus.unknown)
  BookingStatus get bookingStatus => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: EventStatus.unknown)
  EventStatus get eventStatus => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  double get bookingSum => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: LocationType.unknown)
  LocationType get locationType => throw _privateConstructorUsedError;
  String get locationName => throw _privateConstructorUsedError;
  List<TicketBookedEntity> get tickets => throw _privateConstructorUsedError;
  String? get eventName => throw _privateConstructorUsedError;
  String? get eventImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingEntityCopyWith<BookingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEntityCopyWith<$Res> {
  factory $BookingEntityCopyWith(
          BookingEntity value, $Res Function(BookingEntity) then) =
      _$BookingEntityCopyWithImpl<$Res, BookingEntity>;
  @useResult
  $Res call(
      {String id,
      @DateTimeUTCSerializer() DateTime eventDate,
      @DateTimeUTCSerializer() DateTime created,
      @JsonKey(unknownEnumValue: BookingStatus.unknown)
      BookingStatus bookingStatus,
      @JsonKey(unknownEnumValue: EventStatus.unknown) EventStatus eventStatus,
      String eventId,
      double bookingSum,
      @JsonKey(unknownEnumValue: LocationType.unknown)
      LocationType locationType,
      String locationName,
      List<TicketBookedEntity> tickets,
      String? eventName,
      String? eventImage});
}

/// @nodoc
class _$BookingEntityCopyWithImpl<$Res, $Val extends BookingEntity>
    implements $BookingEntityCopyWith<$Res> {
  _$BookingEntityCopyWithImpl(this._value, this._then);

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
    Object? tickets = null,
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
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketBookedEntity>,
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
abstract class _$$BookingEntityImplCopyWith<$Res>
    implements $BookingEntityCopyWith<$Res> {
  factory _$$BookingEntityImplCopyWith(
          _$BookingEntityImpl value, $Res Function(_$BookingEntityImpl) then) =
      __$$BookingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeUTCSerializer() DateTime eventDate,
      @DateTimeUTCSerializer() DateTime created,
      @JsonKey(unknownEnumValue: BookingStatus.unknown)
      BookingStatus bookingStatus,
      @JsonKey(unknownEnumValue: EventStatus.unknown) EventStatus eventStatus,
      String eventId,
      double bookingSum,
      @JsonKey(unknownEnumValue: LocationType.unknown)
      LocationType locationType,
      String locationName,
      List<TicketBookedEntity> tickets,
      String? eventName,
      String? eventImage});
}

/// @nodoc
class __$$BookingEntityImplCopyWithImpl<$Res>
    extends _$BookingEntityCopyWithImpl<$Res, _$BookingEntityImpl>
    implements _$$BookingEntityImplCopyWith<$Res> {
  __$$BookingEntityImplCopyWithImpl(
      _$BookingEntityImpl _value, $Res Function(_$BookingEntityImpl) _then)
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
    Object? tickets = null,
    Object? eventName = freezed,
    Object? eventImage = freezed,
  }) {
    return _then(_$BookingEntityImpl(
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
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketBookedEntity>,
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
class _$BookingEntityImpl extends _BookingEntity {
  const _$BookingEntityImpl(
      {required this.id,
      @DateTimeUTCSerializer() required this.eventDate,
      @DateTimeUTCSerializer() required this.created,
      @JsonKey(unknownEnumValue: BookingStatus.unknown)
      required this.bookingStatus,
      @JsonKey(unknownEnumValue: EventStatus.unknown) required this.eventStatus,
      required this.eventId,
      required this.bookingSum,
      @JsonKey(unknownEnumValue: LocationType.unknown)
      required this.locationType,
      required this.locationName,
      required final List<TicketBookedEntity> tickets,
      this.eventName,
      this.eventImage})
      : _tickets = tickets,
        super._();

  factory _$BookingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingEntityImplFromJson(json);

  @override
  final String id;
  @override
  @DateTimeUTCSerializer()
  final DateTime eventDate;
  @override
  @DateTimeUTCSerializer()
  final DateTime created;
  @override
  @JsonKey(unknownEnumValue: BookingStatus.unknown)
  final BookingStatus bookingStatus;
  @override
  @JsonKey(unknownEnumValue: EventStatus.unknown)
  final EventStatus eventStatus;
  @override
  final String eventId;
  @override
  final double bookingSum;
  @override
  @JsonKey(unknownEnumValue: LocationType.unknown)
  final LocationType locationType;
  @override
  final String locationName;
  final List<TicketBookedEntity> _tickets;
  @override
  List<TicketBookedEntity> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final String? eventName;
  @override
  final String? eventImage;

  @override
  String toString() {
    return 'BookingEntity(id: $id, eventDate: $eventDate, created: $created, bookingStatus: $bookingStatus, eventStatus: $eventStatus, eventId: $eventId, bookingSum: $bookingSum, locationType: $locationType, locationName: $locationName, tickets: $tickets, eventName: $eventName, eventImage: $eventImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingEntityImpl &&
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
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
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
      const DeepCollectionEquality().hash(_tickets),
      eventName,
      eventImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingEntityImplCopyWith<_$BookingEntityImpl> get copyWith =>
      __$$BookingEntityImplCopyWithImpl<_$BookingEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingEntityImplToJson(
      this,
    );
  }
}

abstract class _BookingEntity extends BookingEntity {
  const factory _BookingEntity(
      {required final String id,
      @DateTimeUTCSerializer() required final DateTime eventDate,
      @DateTimeUTCSerializer() required final DateTime created,
      @JsonKey(unknownEnumValue: BookingStatus.unknown)
      required final BookingStatus bookingStatus,
      @JsonKey(unknownEnumValue: EventStatus.unknown)
      required final EventStatus eventStatus,
      required final String eventId,
      required final double bookingSum,
      @JsonKey(unknownEnumValue: LocationType.unknown)
      required final LocationType locationType,
      required final String locationName,
      required final List<TicketBookedEntity> tickets,
      final String? eventName,
      final String? eventImage}) = _$BookingEntityImpl;
  const _BookingEntity._() : super._();

  factory _BookingEntity.fromJson(Map<String, dynamic> json) =
      _$BookingEntityImpl.fromJson;

  @override
  String get id;
  @override
  @DateTimeUTCSerializer()
  DateTime get eventDate;
  @override
  @DateTimeUTCSerializer()
  DateTime get created;
  @override
  @JsonKey(unknownEnumValue: BookingStatus.unknown)
  BookingStatus get bookingStatus;
  @override
  @JsonKey(unknownEnumValue: EventStatus.unknown)
  EventStatus get eventStatus;
  @override
  String get eventId;
  @override
  double get bookingSum;
  @override
  @JsonKey(unknownEnumValue: LocationType.unknown)
  LocationType get locationType;
  @override
  String get locationName;
  @override
  List<TicketBookedEntity> get tickets;
  @override
  String? get eventName;
  @override
  String? get eventImage;
  @override
  @JsonKey(ignore: true)
  _$$BookingEntityImplCopyWith<_$BookingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
