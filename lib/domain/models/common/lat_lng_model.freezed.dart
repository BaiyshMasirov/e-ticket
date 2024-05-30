// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lat_lng_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LatLngModel {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LatLngModelCopyWith<LatLngModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngModelCopyWith<$Res> {
  factory $LatLngModelCopyWith(
          LatLngModel value, $Res Function(LatLngModel) then) =
      _$LatLngModelCopyWithImpl<$Res, LatLngModel>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LatLngModelCopyWithImpl<$Res, $Val extends LatLngModel>
    implements $LatLngModelCopyWith<$Res> {
  _$LatLngModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LatLngModelImplCopyWith<$Res>
    implements $LatLngModelCopyWith<$Res> {
  factory _$$LatLngModelImplCopyWith(
          _$LatLngModelImpl value, $Res Function(_$LatLngModelImpl) then) =
      __$$LatLngModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$LatLngModelImplCopyWithImpl<$Res>
    extends _$LatLngModelCopyWithImpl<$Res, _$LatLngModelImpl>
    implements _$$LatLngModelImplCopyWith<$Res> {
  __$$LatLngModelImplCopyWithImpl(
      _$LatLngModelImpl _value, $Res Function(_$LatLngModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$LatLngModelImpl(
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

class _$LatLngModelImpl extends _LatLngModel {
  const _$LatLngModelImpl({required this.lat, required this.lng}) : super._();

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'LatLngModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLngModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLngModelImplCopyWith<_$LatLngModelImpl> get copyWith =>
      __$$LatLngModelImplCopyWithImpl<_$LatLngModelImpl>(this, _$identity);
}

abstract class _LatLngModel extends LatLngModel {
  const factory _LatLngModel(
      {required final double lat,
      required final double lng}) = _$LatLngModelImpl;
  const _LatLngModel._() : super._();

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$LatLngModelImplCopyWith<_$LatLngModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
