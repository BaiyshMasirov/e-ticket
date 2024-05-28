// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingModel {
  String get id => throw _privateConstructorUsedError;
  DateTime get eventDate => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  BookingStatus get bookingStatus => throw _privateConstructorUsedError;
  EventStatus get eventStatus => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  double get bookingSum => throw _privateConstructorUsedError;
  LocationType get locationType => throw _privateConstructorUsedError;
  String get locationName => throw _privateConstructorUsedError;
  List<TicketBookedModel> get tickets => throw _privateConstructorUsedError;
  PaymentType get paymentType => throw _privateConstructorUsedError;
  EventSeatingType get seatingType => throw _privateConstructorUsedError;
  String? get eventName => throw _privateConstructorUsedError;
  String? get eventImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call(
      {String id,
      DateTime eventDate,
      DateTime created,
      BookingStatus bookingStatus,
      EventStatus eventStatus,
      String eventId,
      double bookingSum,
      LocationType locationType,
      String locationName,
      List<TicketBookedModel> tickets,
      PaymentType paymentType,
      EventSeatingType seatingType,
      String? eventName,
      String? eventImage});
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

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
    Object? paymentType = null,
    Object? seatingType = null,
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
              as List<TicketBookedModel>,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      seatingType: null == seatingType
          ? _value.seatingType
          : seatingType // ignore: cast_nullable_to_non_nullable
              as EventSeatingType,
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
abstract class _$$BookingModelImplCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$BookingModelImplCopyWith(
          _$BookingModelImpl value, $Res Function(_$BookingModelImpl) then) =
      __$$BookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime eventDate,
      DateTime created,
      BookingStatus bookingStatus,
      EventStatus eventStatus,
      String eventId,
      double bookingSum,
      LocationType locationType,
      String locationName,
      List<TicketBookedModel> tickets,
      PaymentType paymentType,
      EventSeatingType seatingType,
      String? eventName,
      String? eventImage});
}

/// @nodoc
class __$$BookingModelImplCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$BookingModelImpl>
    implements _$$BookingModelImplCopyWith<$Res> {
  __$$BookingModelImplCopyWithImpl(
      _$BookingModelImpl _value, $Res Function(_$BookingModelImpl) _then)
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
    Object? paymentType = null,
    Object? seatingType = null,
    Object? eventName = freezed,
    Object? eventImage = freezed,
  }) {
    return _then(_$BookingModelImpl(
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
              as List<TicketBookedModel>,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      seatingType: null == seatingType
          ? _value.seatingType
          : seatingType // ignore: cast_nullable_to_non_nullable
              as EventSeatingType,
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

class _$BookingModelImpl extends _BookingModel {
  const _$BookingModelImpl(
      {required this.id,
      required this.eventDate,
      required this.created,
      required this.bookingStatus,
      required this.eventStatus,
      required this.eventId,
      required this.bookingSum,
      required this.locationType,
      required this.locationName,
      required final List<TicketBookedModel> tickets,
      required this.paymentType,
      required this.seatingType,
      this.eventName,
      this.eventImage})
      : _tickets = tickets,
        super._();

  @override
  final String id;
  @override
  final DateTime eventDate;
  @override
  final DateTime created;
  @override
  final BookingStatus bookingStatus;
  @override
  final EventStatus eventStatus;
  @override
  final String eventId;
  @override
  final double bookingSum;
  @override
  final LocationType locationType;
  @override
  final String locationName;
  final List<TicketBookedModel> _tickets;
  @override
  List<TicketBookedModel> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final PaymentType paymentType;
  @override
  final EventSeatingType seatingType;
  @override
  final String? eventName;
  @override
  final String? eventImage;

  @override
  String toString() {
    return 'BookingModel(id: $id, eventDate: $eventDate, created: $created, bookingStatus: $bookingStatus, eventStatus: $eventStatus, eventId: $eventId, bookingSum: $bookingSum, locationType: $locationType, locationName: $locationName, tickets: $tickets, paymentType: $paymentType, seatingType: $seatingType, eventName: $eventName, eventImage: $eventImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
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
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.seatingType, seatingType) ||
                other.seatingType == seatingType) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventImage, eventImage) ||
                other.eventImage == eventImage));
  }

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
      paymentType,
      seatingType,
      eventName,
      eventImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      __$$BookingModelImplCopyWithImpl<_$BookingModelImpl>(this, _$identity);
}

abstract class _BookingModel extends BookingModel {
  const factory _BookingModel(
      {required final String id,
      required final DateTime eventDate,
      required final DateTime created,
      required final BookingStatus bookingStatus,
      required final EventStatus eventStatus,
      required final String eventId,
      required final double bookingSum,
      required final LocationType locationType,
      required final String locationName,
      required final List<TicketBookedModel> tickets,
      required final PaymentType paymentType,
      required final EventSeatingType seatingType,
      final String? eventName,
      final String? eventImage}) = _$BookingModelImpl;
  const _BookingModel._() : super._();

  @override
  String get id;
  @override
  DateTime get eventDate;
  @override
  DateTime get created;
  @override
  BookingStatus get bookingStatus;
  @override
  EventStatus get eventStatus;
  @override
  String get eventId;
  @override
  double get bookingSum;
  @override
  LocationType get locationType;
  @override
  String get locationName;
  @override
  List<TicketBookedModel> get tickets;
  @override
  PaymentType get paymentType;
  @override
  EventSeatingType get seatingType;
  @override
  String? get eventName;
  @override
  String? get eventImage;
  @override
  @JsonKey(ignore: true)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
