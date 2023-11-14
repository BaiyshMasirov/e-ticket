// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bookings_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBookingsFilter _$UserBookingsFilterFromJson(Map<String, dynamic> json) {
  return _UserBookingsFilter.fromJson(json);
}

/// @nodoc
mixin _$UserBookingsFilter {
  String? get eventName => throw _privateConstructorUsedError;
  @DateTimeUTCSerializer()
  DateTime? get eventDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBookingsFilterCopyWith<UserBookingsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBookingsFilterCopyWith<$Res> {
  factory $UserBookingsFilterCopyWith(
          UserBookingsFilter value, $Res Function(UserBookingsFilter) then) =
      _$UserBookingsFilterCopyWithImpl<$Res, UserBookingsFilter>;
  @useResult
  $Res call({String? eventName, @DateTimeUTCSerializer() DateTime? eventDate});
}

/// @nodoc
class _$UserBookingsFilterCopyWithImpl<$Res, $Val extends UserBookingsFilter>
    implements $UserBookingsFilterCopyWith<$Res> {
  _$UserBookingsFilterCopyWithImpl(this._value, this._then);

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
abstract class _$$UserBookingsFilterImplCopyWith<$Res>
    implements $UserBookingsFilterCopyWith<$Res> {
  factory _$$UserBookingsFilterImplCopyWith(_$UserBookingsFilterImpl value,
          $Res Function(_$UserBookingsFilterImpl) then) =
      __$$UserBookingsFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? eventName, @DateTimeUTCSerializer() DateTime? eventDate});
}

/// @nodoc
class __$$UserBookingsFilterImplCopyWithImpl<$Res>
    extends _$UserBookingsFilterCopyWithImpl<$Res, _$UserBookingsFilterImpl>
    implements _$$UserBookingsFilterImplCopyWith<$Res> {
  __$$UserBookingsFilterImplCopyWithImpl(_$UserBookingsFilterImpl _value,
      $Res Function(_$UserBookingsFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventName = freezed,
    Object? eventDate = freezed,
  }) {
    return _then(_$UserBookingsFilterImpl(
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
class _$UserBookingsFilterImpl extends _UserBookingsFilter {
  const _$UserBookingsFilterImpl(
      {this.eventName, @DateTimeUTCSerializer() this.eventDate})
      : super._();

  factory _$UserBookingsFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBookingsFilterImplFromJson(json);

  @override
  final String? eventName;
  @override
  @DateTimeUTCSerializer()
  final DateTime? eventDate;

  @override
  String toString() {
    return 'UserBookingsFilter(eventName: $eventName, eventDate: $eventDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBookingsFilterImpl &&
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
  _$$UserBookingsFilterImplCopyWith<_$UserBookingsFilterImpl> get copyWith =>
      __$$UserBookingsFilterImplCopyWithImpl<_$UserBookingsFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBookingsFilterImplToJson(
      this,
    );
  }
}

abstract class _UserBookingsFilter extends UserBookingsFilter {
  const factory _UserBookingsFilter(
          {final String? eventName,
          @DateTimeUTCSerializer() final DateTime? eventDate}) =
      _$UserBookingsFilterImpl;
  const _UserBookingsFilter._() : super._();

  factory _UserBookingsFilter.fromJson(Map<String, dynamic> json) =
      _$UserBookingsFilterImpl.fromJson;

  @override
  String? get eventName;
  @override
  @DateTimeUTCSerializer()
  DateTime? get eventDate;
  @override
  @JsonKey(ignore: true)
  _$$UserBookingsFilterImplCopyWith<_$UserBookingsFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
