// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lat_lng_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LatLngDto _$LatLngDtoFromJson(Map<String, dynamic> json) {
  return _LatLngDto.fromJson(json);
}

/// @nodoc
mixin _$LatLngDto {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLngDtoCopyWith<LatLngDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngDtoCopyWith<$Res> {
  factory $LatLngDtoCopyWith(LatLngDto value, $Res Function(LatLngDto) then) =
      _$LatLngDtoCopyWithImpl<$Res, LatLngDto>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LatLngDtoCopyWithImpl<$Res, $Val extends LatLngDto>
    implements $LatLngDtoCopyWith<$Res> {
  _$LatLngDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LatLngDtoImplCopyWith<$Res>
    implements $LatLngDtoCopyWith<$Res> {
  factory _$$LatLngDtoImplCopyWith(
          _$LatLngDtoImpl value, $Res Function(_$LatLngDtoImpl) then) =
      __$$LatLngDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$LatLngDtoImplCopyWithImpl<$Res>
    extends _$LatLngDtoCopyWithImpl<$Res, _$LatLngDtoImpl>
    implements _$$LatLngDtoImplCopyWith<$Res> {
  __$$LatLngDtoImplCopyWithImpl(
      _$LatLngDtoImpl _value, $Res Function(_$LatLngDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$LatLngDtoImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatLngDtoImpl extends _LatLngDto {
  const _$LatLngDtoImpl({required this.lat, required this.lng}) : super._();

  factory _$LatLngDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatLngDtoImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'LatLngDto(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLngDtoImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLngDtoImplCopyWith<_$LatLngDtoImpl> get copyWith =>
      __$$LatLngDtoImplCopyWithImpl<_$LatLngDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatLngDtoImplToJson(
      this,
    );
  }
}

abstract class _LatLngDto extends LatLngDto {
  const factory _LatLngDto(
      {required final double lat, required final double lng}) = _$LatLngDtoImpl;
  const _LatLngDto._() : super._();

  factory _LatLngDto.fromJson(Map<String, dynamic> json) =
      _$LatLngDtoImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$LatLngDtoImplCopyWith<_$LatLngDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
