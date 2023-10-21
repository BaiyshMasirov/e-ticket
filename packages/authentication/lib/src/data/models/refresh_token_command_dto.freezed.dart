// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshTokenCommandDto _$RefreshTokenCommandDtoFromJson(
    Map<String, dynamic> json) {
  return _RefreshTokenCommandDto.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenCommandDto {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenCommandDtoCopyWith<RefreshTokenCommandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenCommandDtoCopyWith<$Res> {
  factory $RefreshTokenCommandDtoCopyWith(RefreshTokenCommandDto value,
          $Res Function(RefreshTokenCommandDto) then) =
      _$RefreshTokenCommandDtoCopyWithImpl<$Res, RefreshTokenCommandDto>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$RefreshTokenCommandDtoCopyWithImpl<$Res,
        $Val extends RefreshTokenCommandDto>
    implements $RefreshTokenCommandDtoCopyWith<$Res> {
  _$RefreshTokenCommandDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenCommandDtoImplCopyWith<$Res>
    implements $RefreshTokenCommandDtoCopyWith<$Res> {
  factory _$$RefreshTokenCommandDtoImplCopyWith(
          _$RefreshTokenCommandDtoImpl value,
          $Res Function(_$RefreshTokenCommandDtoImpl) then) =
      __$$RefreshTokenCommandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$RefreshTokenCommandDtoImplCopyWithImpl<$Res>
    extends _$RefreshTokenCommandDtoCopyWithImpl<$Res,
        _$RefreshTokenCommandDtoImpl>
    implements _$$RefreshTokenCommandDtoImplCopyWith<$Res> {
  __$$RefreshTokenCommandDtoImplCopyWithImpl(
      _$RefreshTokenCommandDtoImpl _value,
      $Res Function(_$RefreshTokenCommandDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$RefreshTokenCommandDtoImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenCommandDtoImpl extends _RefreshTokenCommandDto {
  const _$RefreshTokenCommandDtoImpl({required this.token}) : super._();

  factory _$RefreshTokenCommandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenCommandDtoImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'RefreshTokenCommandDto(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenCommandDtoImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenCommandDtoImplCopyWith<_$RefreshTokenCommandDtoImpl>
      get copyWith => __$$RefreshTokenCommandDtoImplCopyWithImpl<
          _$RefreshTokenCommandDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenCommandDtoImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenCommandDto extends RefreshTokenCommandDto {
  const factory _RefreshTokenCommandDto({required final String token}) =
      _$RefreshTokenCommandDtoImpl;
  const _RefreshTokenCommandDto._() : super._();

  factory _RefreshTokenCommandDto.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenCommandDtoImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$RefreshTokenCommandDtoImplCopyWith<_$RefreshTokenCommandDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
