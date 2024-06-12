// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResponseData<T> {
  Headers get headers => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseDataCopyWith<T, ResponseData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataCopyWith<T, $Res> {
  factory $ResponseDataCopyWith(
          ResponseData<T> value, $Res Function(ResponseData<T>) then) =
      _$ResponseDataCopyWithImpl<T, $Res, ResponseData<T>>;
  @useResult
  $Res call({Headers headers, T data});
}

/// @nodoc
class _$ResponseDataCopyWithImpl<T, $Res, $Val extends ResponseData<T>>
    implements $ResponseDataCopyWith<T, $Res> {
  _$ResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Headers,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDataImplCopyWith<T, $Res>
    implements $ResponseDataCopyWith<T, $Res> {
  factory _$$ResponseDataImplCopyWith(_$ResponseDataImpl<T> value,
          $Res Function(_$ResponseDataImpl<T>) then) =
      __$$ResponseDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Headers headers, T data});
}

/// @nodoc
class __$$ResponseDataImplCopyWithImpl<T, $Res>
    extends _$ResponseDataCopyWithImpl<T, $Res, _$ResponseDataImpl<T>>
    implements _$$ResponseDataImplCopyWith<T, $Res> {
  __$$ResponseDataImplCopyWithImpl(
      _$ResponseDataImpl<T> _value, $Res Function(_$ResponseDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = null,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDataImpl<T>(
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Headers,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResponseDataImpl<T> extends _ResponseData<T> {
  const _$ResponseDataImpl({required this.headers, required this.data})
      : super._();

  @override
  final Headers headers;
  @override
  final T data;

  @override
  String toString() {
    return 'ResponseData<$T>(headers: $headers, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataImpl<T> &&
            (identical(other.headers, headers) || other.headers == headers) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, headers, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDataImplCopyWith<T, _$ResponseDataImpl<T>> get copyWith =>
      __$$ResponseDataImplCopyWithImpl<T, _$ResponseDataImpl<T>>(
          this, _$identity);
}

abstract class _ResponseData<T> extends ResponseData<T> {
  const factory _ResponseData(
      {required final Headers headers,
      required final T data}) = _$ResponseDataImpl<T>;
  const _ResponseData._() : super._();

  @override
  Headers get headers;
  @override
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDataImplCopyWith<T, _$ResponseDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
