// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventsFilter _$EventsFilterFromJson(Map<String, dynamic> json) {
  return _EventsFilter.fromJson(json);
}

/// @nodoc
mixin _$EventsFilter {
  KeyValueMapDto? get type => throw _privateConstructorUsedError;
  KeyValueMapDto? get status => throw _privateConstructorUsedError;
  @DateTimeUTCSerializer()
  DateTime? get date => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsFilterCopyWith<EventsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsFilterCopyWith<$Res> {
  factory $EventsFilterCopyWith(
          EventsFilter value, $Res Function(EventsFilter) then) =
      _$EventsFilterCopyWithImpl<$Res, EventsFilter>;
  @useResult
  $Res call(
      {KeyValueMapDto? type,
      KeyValueMapDto? status,
      @DateTimeUTCSerializer() DateTime? date,
      String? text});

  $KeyValueMapDtoCopyWith<$Res>? get type;
  $KeyValueMapDtoCopyWith<$Res>? get status;
}

/// @nodoc
class _$EventsFilterCopyWithImpl<$Res, $Val extends EventsFilter>
    implements $EventsFilterCopyWith<$Res> {
  _$EventsFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as KeyValueMapDto?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as KeyValueMapDto?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KeyValueMapDtoCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $KeyValueMapDtoCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $KeyValueMapDtoCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $KeyValueMapDtoCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventsFilterImplCopyWith<$Res>
    implements $EventsFilterCopyWith<$Res> {
  factory _$$EventsFilterImplCopyWith(
          _$EventsFilterImpl value, $Res Function(_$EventsFilterImpl) then) =
      __$$EventsFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KeyValueMapDto? type,
      KeyValueMapDto? status,
      @DateTimeUTCSerializer() DateTime? date,
      String? text});

  @override
  $KeyValueMapDtoCopyWith<$Res>? get type;
  @override
  $KeyValueMapDtoCopyWith<$Res>? get status;
}

/// @nodoc
class __$$EventsFilterImplCopyWithImpl<$Res>
    extends _$EventsFilterCopyWithImpl<$Res, _$EventsFilterImpl>
    implements _$$EventsFilterImplCopyWith<$Res> {
  __$$EventsFilterImplCopyWithImpl(
      _$EventsFilterImpl _value, $Res Function(_$EventsFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? text = freezed,
  }) {
    return _then(_$EventsFilterImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as KeyValueMapDto?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as KeyValueMapDto?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventsFilterImpl extends _EventsFilter {
  const _$EventsFilterImpl(
      {this.type, this.status, @DateTimeUTCSerializer() this.date, this.text})
      : super._();

  factory _$EventsFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventsFilterImplFromJson(json);

  @override
  final KeyValueMapDto? type;
  @override
  final KeyValueMapDto? status;
  @override
  @DateTimeUTCSerializer()
  final DateTime? date;
  @override
  final String? text;

  @override
  String toString() {
    return 'EventsFilter(type: $type, status: $status, date: $date, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsFilterImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, status, date, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsFilterImplCopyWith<_$EventsFilterImpl> get copyWith =>
      __$$EventsFilterImplCopyWithImpl<_$EventsFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventsFilterImplToJson(
      this,
    );
  }
}

abstract class _EventsFilter extends EventsFilter {
  const factory _EventsFilter(
      {final KeyValueMapDto? type,
      final KeyValueMapDto? status,
      @DateTimeUTCSerializer() final DateTime? date,
      final String? text}) = _$EventsFilterImpl;
  const _EventsFilter._() : super._();

  factory _EventsFilter.fromJson(Map<String, dynamic> json) =
      _$EventsFilterImpl.fromJson;

  @override
  KeyValueMapDto? get type;
  @override
  KeyValueMapDto? get status;
  @override
  @DateTimeUTCSerializer()
  DateTime? get date;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$EventsFilterImplCopyWith<_$EventsFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
