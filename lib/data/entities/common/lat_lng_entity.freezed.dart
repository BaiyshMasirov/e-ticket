// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lat_lng_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatLngEntity _$LatLngEntityFromJson(Map<String, dynamic> json) {
  return _LatLngEntity.fromJson(json);
}

/// @nodoc
mixin _$LatLngEntity {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLngEntityCopyWith<LatLngEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngEntityCopyWith<$Res> {
  factory $LatLngEntityCopyWith(
          LatLngEntity value, $Res Function(LatLngEntity) then) =
      _$LatLngEntityCopyWithImpl<$Res, LatLngEntity>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LatLngEntityCopyWithImpl<$Res, $Val extends LatLngEntity>
    implements $LatLngEntityCopyWith<$Res> {
  _$LatLngEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$LatLngEntityImplCopyWith<$Res>
    implements $LatLngEntityCopyWith<$Res> {
  factory _$$LatLngEntityImplCopyWith(
          _$LatLngEntityImpl value, $Res Function(_$LatLngEntityImpl) then) =
      __$$LatLngEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$LatLngEntityImplCopyWithImpl<$Res>
    extends _$LatLngEntityCopyWithImpl<$Res, _$LatLngEntityImpl>
    implements _$$LatLngEntityImplCopyWith<$Res> {
  __$$LatLngEntityImplCopyWithImpl(
      _$LatLngEntityImpl _value, $Res Function(_$LatLngEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$LatLngEntityImpl(
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
class _$LatLngEntityImpl extends _LatLngEntity {
  const _$LatLngEntityImpl({required this.lat, required this.lng}) : super._();

  factory _$LatLngEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatLngEntityImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'LatLngEntity(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLngEntityImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLngEntityImplCopyWith<_$LatLngEntityImpl> get copyWith =>
      __$$LatLngEntityImplCopyWithImpl<_$LatLngEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatLngEntityImplToJson(
      this,
    );
  }
}

abstract class _LatLngEntity extends LatLngEntity {
  const factory _LatLngEntity(
      {required final double lat,
      required final double lng}) = _$LatLngEntityImpl;
  const _LatLngEntity._() : super._();

  factory _LatLngEntity.fromJson(Map<String, dynamic> json) =
      _$LatLngEntityImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$LatLngEntityImplCopyWith<_$LatLngEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
