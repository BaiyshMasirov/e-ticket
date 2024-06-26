// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingFilter _$BookingFilterFromJson(Map<String, dynamic> json) {
  return _BookingFilter.fromJson(json);
}

/// @nodoc
mixin _$BookingFilter {
  String? get eventName => throw _privateConstructorUsedError;
  @DateTimeUTCSerializer()
  DateTime? get eventDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingFilterCopyWith<BookingFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingFilterCopyWith<$Res> {
  factory $BookingFilterCopyWith(
          BookingFilter value, $Res Function(BookingFilter) then) =
      _$BookingFilterCopyWithImpl<$Res, BookingFilter>;
  @useResult
  $Res call({String? eventName, @DateTimeUTCSerializer() DateTime? eventDate});
}

/// @nodoc
class _$BookingFilterCopyWithImpl<$Res, $Val extends BookingFilter>
    implements $BookingFilterCopyWith<$Res> {
  _$BookingFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventName = freezed,
    Object? eventDate = freezed,
  }) {
    return _then(_value.copyWith(
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingFilterImplCopyWith<$Res>
    implements $BookingFilterCopyWith<$Res> {
  factory _$$BookingFilterImplCopyWith(
          _$BookingFilterImpl value, $Res Function(_$BookingFilterImpl) then) =
      __$$BookingFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? eventName, @DateTimeUTCSerializer() DateTime? eventDate});
}

/// @nodoc
class __$$BookingFilterImplCopyWithImpl<$Res>
    extends _$BookingFilterCopyWithImpl<$Res, _$BookingFilterImpl>
    implements _$$BookingFilterImplCopyWith<$Res> {
  __$$BookingFilterImplCopyWithImpl(
      _$BookingFilterImpl _value, $Res Function(_$BookingFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventName = freezed,
    Object? eventDate = freezed,
  }) {
    return _then(_$BookingFilterImpl(
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingFilterImpl extends _BookingFilter {
  const _$BookingFilterImpl(
      {this.eventName, @DateTimeUTCSerializer() this.eventDate})
      : super._();

  factory _$BookingFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingFilterImplFromJson(json);

  @override
  final String? eventName;
  @override
  @DateTimeUTCSerializer()
  final DateTime? eventDate;

  @override
  String toString() {
    return 'BookingFilter(eventName: $eventName, eventDate: $eventDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingFilterImpl &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventName, eventDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingFilterImplCopyWith<_$BookingFilterImpl> get copyWith =>
      __$$BookingFilterImplCopyWithImpl<_$BookingFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingFilterImplToJson(
      this,
    );
  }
}

abstract class _BookingFilter extends BookingFilter {
  const factory _BookingFilter(
          {final String? eventName,
          @DateTimeUTCSerializer() final DateTime? eventDate}) =
      _$BookingFilterImpl;
  const _BookingFilter._() : super._();

  factory _BookingFilter.fromJson(Map<String, dynamic> json) =
      _$BookingFilterImpl.fromJson;

  @override
  String? get eventName;
  @override
  @DateTimeUTCSerializer()
  DateTime? get eventDate;
  @override
  @JsonKey(ignore: true)
  _$$BookingFilterImplCopyWith<_$BookingFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
