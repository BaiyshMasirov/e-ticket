// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_value_map_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeyValueMapDto _$KeyValueMapDtoFromJson(Map<String, dynamic> json) {
  return _KeyValueMapDto.fromJson(json);
}

/// @nodoc
mixin _$KeyValueMapDto {
  int get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyValueMapDtoCopyWith<KeyValueMapDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyValueMapDtoCopyWith<$Res> {
  factory $KeyValueMapDtoCopyWith(
          KeyValueMapDto value, $Res Function(KeyValueMapDto) then) =
      _$KeyValueMapDtoCopyWithImpl<$Res, KeyValueMapDto>;
  @useResult
  $Res call({int key, String value});
}

/// @nodoc
class _$KeyValueMapDtoCopyWithImpl<$Res, $Val extends KeyValueMapDto>
    implements $KeyValueMapDtoCopyWith<$Res> {
  _$KeyValueMapDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyValueMapDtoImplCopyWith<$Res>
    implements $KeyValueMapDtoCopyWith<$Res> {
  factory _$$KeyValueMapDtoImplCopyWith(_$KeyValueMapDtoImpl value,
          $Res Function(_$KeyValueMapDtoImpl) then) =
      __$$KeyValueMapDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int key, String value});
}

/// @nodoc
class __$$KeyValueMapDtoImplCopyWithImpl<$Res>
    extends _$KeyValueMapDtoCopyWithImpl<$Res, _$KeyValueMapDtoImpl>
    implements _$$KeyValueMapDtoImplCopyWith<$Res> {
  __$$KeyValueMapDtoImplCopyWithImpl(
      _$KeyValueMapDtoImpl _value, $Res Function(_$KeyValueMapDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$KeyValueMapDtoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyValueMapDtoImpl extends _KeyValueMapDto {
  const _$KeyValueMapDtoImpl({required this.key, required this.value})
      : super._();

  factory _$KeyValueMapDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyValueMapDtoImplFromJson(json);

  @override
  final int key;
  @override
  final String value;

  @override
  String toString() {
    return 'KeyValueMapDto(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyValueMapDtoImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyValueMapDtoImplCopyWith<_$KeyValueMapDtoImpl> get copyWith =>
      __$$KeyValueMapDtoImplCopyWithImpl<_$KeyValueMapDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyValueMapDtoImplToJson(
      this,
    );
  }
}

abstract class _KeyValueMapDto extends KeyValueMapDto {
  const factory _KeyValueMapDto(
      {required final int key,
      required final String value}) = _$KeyValueMapDtoImpl;
  const _KeyValueMapDto._() : super._();

  factory _KeyValueMapDto.fromJson(Map<String, dynamic> json) =
      _$KeyValueMapDtoImpl.fromJson;

  @override
  int get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$KeyValueMapDtoImplCopyWith<_$KeyValueMapDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
