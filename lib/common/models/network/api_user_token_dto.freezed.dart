// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_user_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiUserTokenDto _$ApiUserTokenDtoFromJson(Map<String, dynamic> json) {
  return _ApiUserTokenDto.fromJson(json);
}

/// @nodoc
mixin _$ApiUserTokenDto {
  String get jwtToken => throw _privateConstructorUsedError;
  String get rtToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUserTokenDtoCopyWith<ApiUserTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserTokenDtoCopyWith<$Res> {
  factory $ApiUserTokenDtoCopyWith(
          ApiUserTokenDto value, $Res Function(ApiUserTokenDto) then) =
      _$ApiUserTokenDtoCopyWithImpl<$Res, ApiUserTokenDto>;
  @useResult
  $Res call({String jwtToken, String rtToken});
}

/// @nodoc
class _$ApiUserTokenDtoCopyWithImpl<$Res, $Val extends ApiUserTokenDto>
    implements $ApiUserTokenDtoCopyWith<$Res> {
  _$ApiUserTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwtToken = null,
    Object? rtToken = null,
  }) {
    return _then(_value.copyWith(
      jwtToken: null == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
      rtToken: null == rtToken
          ? _value.rtToken
          : rtToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiUserTokenDtoImplCopyWith<$Res>
    implements $ApiUserTokenDtoCopyWith<$Res> {
  factory _$$ApiUserTokenDtoImplCopyWith(_$ApiUserTokenDtoImpl value,
          $Res Function(_$ApiUserTokenDtoImpl) then) =
      __$$ApiUserTokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwtToken, String rtToken});
}

/// @nodoc
class __$$ApiUserTokenDtoImplCopyWithImpl<$Res>
    extends _$ApiUserTokenDtoCopyWithImpl<$Res, _$ApiUserTokenDtoImpl>
    implements _$$ApiUserTokenDtoImplCopyWith<$Res> {
  __$$ApiUserTokenDtoImplCopyWithImpl(
      _$ApiUserTokenDtoImpl _value, $Res Function(_$ApiUserTokenDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwtToken = null,
    Object? rtToken = null,
  }) {
    return _then(_$ApiUserTokenDtoImpl(
      jwtToken: null == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
      rtToken: null == rtToken
          ? _value.rtToken
          : rtToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiUserTokenDtoImpl extends _ApiUserTokenDto {
  const _$ApiUserTokenDtoImpl({required this.jwtToken, required this.rtToken})
      : super._();

  factory _$ApiUserTokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserTokenDtoImplFromJson(json);

  @override
  final String jwtToken;
  @override
  final String rtToken;

  @override
  String toString() {
    return 'ApiUserTokenDto(jwtToken: $jwtToken, rtToken: $rtToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserTokenDtoImpl &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.rtToken, rtToken) || other.rtToken == rtToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwtToken, rtToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUserTokenDtoImplCopyWith<_$ApiUserTokenDtoImpl> get copyWith =>
      __$$ApiUserTokenDtoImplCopyWithImpl<_$ApiUserTokenDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUserTokenDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiUserTokenDto extends ApiUserTokenDto {
  const factory _ApiUserTokenDto(
      {required final String jwtToken,
      required final String rtToken}) = _$ApiUserTokenDtoImpl;
  const _ApiUserTokenDto._() : super._();

  factory _ApiUserTokenDto.fromJson(Map<String, dynamic> json) =
      _$ApiUserTokenDtoImpl.fromJson;

  @override
  String get jwtToken;
  @override
  String get rtToken;
  @override
  @JsonKey(ignore: true)
  _$$ApiUserTokenDtoImplCopyWith<_$ApiUserTokenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
