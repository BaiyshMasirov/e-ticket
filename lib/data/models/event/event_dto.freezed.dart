// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDto _$EventDtoFromJson(Map<String, dynamic> json) {
  return _EventDto.fromJson(json);
}

/// @nodoc
mixin _$EventDto {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @DateTimeUTCSerializer()
  DateTime get startDate => throw _privateConstructorUsedError;
  @DateTimeUTCSerializer()
  DateTime get endDate => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: EventStatus.unknown)
  EventStatus get status => throw _privateConstructorUsedError;
  int get ageLimit => throw _privateConstructorUsedError;
  double get minPrice => throw _privateConstructorUsedError;
  int get sold => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String? get locationName => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: LocationType.unknown)
  LocationType get locationType => throw _privateConstructorUsedError;
  String? get poster => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDtoCopyWith<EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDtoCopyWith<$Res> {
  factory $EventDtoCopyWith(EventDto value, $Res Function(EventDto) then) =
      _$EventDtoCopyWithImpl<$Res, EventDto>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      @DateTimeUTCSerializer() DateTime startDate,
      @DateTimeUTCSerializer() DateTime endDate,
      @JsonKey(unknownEnumValue: EventStatus.unknown) EventStatus status,
      int ageLimit,
      double minPrice,
      int sold,
      int count,
      String? locationName,
      String locationId,
      @JsonKey(unknownEnumValue: LocationType.unknown)
      LocationType locationType,
      String? poster,
      int type,
      String? video,
      String? image});
}

/// @nodoc
class _$EventDtoCopyWithImpl<$Res, $Val extends EventDto>
    implements $EventDtoCopyWith<$Res> {
  _$EventDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? ageLimit = null,
    Object? minPrice = null,
    Object? sold = null,
    Object? count = null,
    Object? locationName = freezed,
    Object? locationId = null,
    Object? locationType = null,
    Object? poster = freezed,
    Object? type = null,
    Object? video = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      ageLimit: null == ageLimit
          ? _value.ageLimit
          : ageLimit // ignore: cast_nullable_to_non_nullable
              as int,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double,
      sold: null == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      locationType: null == locationType
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventDtoImplCopyWith<$Res>
    implements $EventDtoCopyWith<$Res> {
  factory _$$EventDtoImplCopyWith(
          _$EventDtoImpl value, $Res Function(_$EventDtoImpl) then) =
      __$$EventDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      @DateTimeUTCSerializer() DateTime startDate,
      @DateTimeUTCSerializer() DateTime endDate,
      @JsonKey(unknownEnumValue: EventStatus.unknown) EventStatus status,
      int ageLimit,
      double minPrice,
      int sold,
      int count,
      String? locationName,
      String locationId,
      @JsonKey(unknownEnumValue: LocationType.unknown)
      LocationType locationType,
      String? poster,
      int type,
      String? video,
      String? image});
}

/// @nodoc
class __$$EventDtoImplCopyWithImpl<$Res>
    extends _$EventDtoCopyWithImpl<$Res, _$EventDtoImpl>
    implements _$$EventDtoImplCopyWith<$Res> {
  __$$EventDtoImplCopyWithImpl(
      _$EventDtoImpl _value, $Res Function(_$EventDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? ageLimit = null,
    Object? minPrice = null,
    Object? sold = null,
    Object? count = null,
    Object? locationName = freezed,
    Object? locationId = null,
    Object? locationType = null,
    Object? poster = freezed,
    Object? type = null,
    Object? video = freezed,
    Object? image = freezed,
  }) {
    return _then(_$EventDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      ageLimit: null == ageLimit
          ? _value.ageLimit
          : ageLimit // ignore: cast_nullable_to_non_nullable
              as int,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double,
      sold: null == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      locationType: null == locationType
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventDtoImpl extends _EventDto {
  const _$EventDtoImpl(
      {required this.id,
      required this.name,
      required this.description,
      @DateTimeUTCSerializer() required this.startDate,
      @DateTimeUTCSerializer() required this.endDate,
      @JsonKey(unknownEnumValue: EventStatus.unknown) required this.status,
      required this.ageLimit,
      required this.minPrice,
      required this.sold,
      required this.count,
      required this.locationName,
      required this.locationId,
      @JsonKey(unknownEnumValue: LocationType.unknown)
      required this.locationType,
      required this.poster,
      required this.type,
      required this.video,
      required this.image})
      : super._();

  factory _$EventDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @DateTimeUTCSerializer()
  final DateTime startDate;
  @override
  @DateTimeUTCSerializer()
  final DateTime endDate;
  @override
  @JsonKey(unknownEnumValue: EventStatus.unknown)
  final EventStatus status;
  @override
  final int ageLimit;
  @override
  final double minPrice;
  @override
  final int sold;
  @override
  final int count;
  @override
  final String? locationName;
  @override
  final String locationId;
  @override
  @JsonKey(unknownEnumValue: LocationType.unknown)
  final LocationType locationType;
  @override
  final String? poster;
  @override
  final int type;
  @override
  final String? video;
  @override
  final String? image;

  @override
  String toString() {
    return 'EventDto(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, status: $status, ageLimit: $ageLimit, minPrice: $minPrice, sold: $sold, count: $count, locationName: $locationName, locationId: $locationId, locationType: $locationType, poster: $poster, type: $type, video: $video, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ageLimit, ageLimit) ||
                other.ageLimit == ageLimit) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.sold, sold) || other.sold == sold) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.locationType, locationType) ||
                other.locationType == locationType) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      startDate,
      endDate,
      status,
      ageLimit,
      minPrice,
      sold,
      count,
      locationName,
      locationId,
      locationType,
      poster,
      type,
      video,
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDtoImplCopyWith<_$EventDtoImpl> get copyWith =>
      __$$EventDtoImplCopyWithImpl<_$EventDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDtoImplToJson(
      this,
    );
  }
}

abstract class _EventDto extends EventDto {
  const factory _EventDto(
      {required final String id,
      required final String? name,
      required final String? description,
      @DateTimeUTCSerializer() required final DateTime startDate,
      @DateTimeUTCSerializer() required final DateTime endDate,
      @JsonKey(unknownEnumValue: EventStatus.unknown)
      required final EventStatus status,
      required final int ageLimit,
      required final double minPrice,
      required final int sold,
      required final int count,
      required final String? locationName,
      required final String locationId,
      @JsonKey(unknownEnumValue: LocationType.unknown)
      required final LocationType locationType,
      required final String? poster,
      required final int type,
      required final String? video,
      required final String? image}) = _$EventDtoImpl;
  const _EventDto._() : super._();

  factory _EventDto.fromJson(Map<String, dynamic> json) =
      _$EventDtoImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @DateTimeUTCSerializer()
  DateTime get startDate;
  @override
  @DateTimeUTCSerializer()
  DateTime get endDate;
  @override
  @JsonKey(unknownEnumValue: EventStatus.unknown)
  EventStatus get status;
  @override
  int get ageLimit;
  @override
  double get minPrice;
  @override
  int get sold;
  @override
  int get count;
  @override
  String? get locationName;
  @override
  String get locationId;
  @override
  @JsonKey(unknownEnumValue: LocationType.unknown)
  LocationType get locationType;
  @override
  String? get poster;
  @override
  int get type;
  @override
  String? get video;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$EventDtoImplCopyWith<_$EventDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
