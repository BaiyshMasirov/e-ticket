// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_confirm_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountConfirmState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiUserTokenDto tokenData) success,
    required TResult Function(String? errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiUserTokenDto tokenData)? success,
    TResult? Function(String? errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiUserTokenDto tokenData)? success,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountConfirmStateInitial value) initial,
    required TResult Function(_AccountConfirmStateSuccess value) success,
    required TResult Function(_AccountConfirmStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountConfirmStateInitial value)? initial,
    TResult? Function(_AccountConfirmStateSuccess value)? success,
    TResult? Function(_AccountConfirmStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountConfirmStateInitial value)? initial,
    TResult Function(_AccountConfirmStateSuccess value)? success,
    TResult Function(_AccountConfirmStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountConfirmStateCopyWith<$Res> {
  factory $AccountConfirmStateCopyWith(
          AccountConfirmState value, $Res Function(AccountConfirmState) then) =
      _$AccountConfirmStateCopyWithImpl<$Res, AccountConfirmState>;
}

/// @nodoc
class _$AccountConfirmStateCopyWithImpl<$Res, $Val extends AccountConfirmState>
    implements $AccountConfirmStateCopyWith<$Res> {
  _$AccountConfirmStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountConfirmStateInitialImplCopyWith<$Res> {
  factory _$$AccountConfirmStateInitialImplCopyWith(
          _$AccountConfirmStateInitialImpl value,
          $Res Function(_$AccountConfirmStateInitialImpl) then) =
      __$$AccountConfirmStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountConfirmStateInitialImplCopyWithImpl<$Res>
    extends _$AccountConfirmStateCopyWithImpl<$Res,
        _$AccountConfirmStateInitialImpl>
    implements _$$AccountConfirmStateInitialImplCopyWith<$Res> {
  __$$AccountConfirmStateInitialImplCopyWithImpl(
      _$AccountConfirmStateInitialImpl _value,
      $Res Function(_$AccountConfirmStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountConfirmStateInitialImpl extends _AccountConfirmStateInitial {
  const _$AccountConfirmStateInitialImpl() : super._();

  @override
  String toString() {
    return 'AccountConfirmState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountConfirmStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiUserTokenDto tokenData) success,
    required TResult Function(String? errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiUserTokenDto tokenData)? success,
    TResult? Function(String? errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiUserTokenDto tokenData)? success,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountConfirmStateInitial value) initial,
    required TResult Function(_AccountConfirmStateSuccess value) success,
    required TResult Function(_AccountConfirmStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountConfirmStateInitial value)? initial,
    TResult? Function(_AccountConfirmStateSuccess value)? success,
    TResult? Function(_AccountConfirmStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountConfirmStateInitial value)? initial,
    TResult Function(_AccountConfirmStateSuccess value)? success,
    TResult Function(_AccountConfirmStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AccountConfirmStateInitial extends AccountConfirmState {
  const factory _AccountConfirmStateInitial() =
      _$AccountConfirmStateInitialImpl;
  const _AccountConfirmStateInitial._() : super._();
}

/// @nodoc
abstract class _$$AccountConfirmStateSuccessImplCopyWith<$Res> {
  factory _$$AccountConfirmStateSuccessImplCopyWith(
          _$AccountConfirmStateSuccessImpl value,
          $Res Function(_$AccountConfirmStateSuccessImpl) then) =
      __$$AccountConfirmStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiUserTokenDto tokenData});

  $ApiUserTokenDtoCopyWith<$Res> get tokenData;
}

/// @nodoc
class __$$AccountConfirmStateSuccessImplCopyWithImpl<$Res>
    extends _$AccountConfirmStateCopyWithImpl<$Res,
        _$AccountConfirmStateSuccessImpl>
    implements _$$AccountConfirmStateSuccessImplCopyWith<$Res> {
  __$$AccountConfirmStateSuccessImplCopyWithImpl(
      _$AccountConfirmStateSuccessImpl _value,
      $Res Function(_$AccountConfirmStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenData = null,
  }) {
    return _then(_$AccountConfirmStateSuccessImpl(
      tokenData: null == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as ApiUserTokenDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiUserTokenDtoCopyWith<$Res> get tokenData {
    return $ApiUserTokenDtoCopyWith<$Res>(_value.tokenData, (value) {
      return _then(_value.copyWith(tokenData: value));
    });
  }
}

/// @nodoc

class _$AccountConfirmStateSuccessImpl extends _AccountConfirmStateSuccess {
  const _$AccountConfirmStateSuccessImpl({required this.tokenData}) : super._();

  @override
  final ApiUserTokenDto tokenData;

  @override
  String toString() {
    return 'AccountConfirmState.success(tokenData: $tokenData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountConfirmStateSuccessImpl &&
            (identical(other.tokenData, tokenData) ||
                other.tokenData == tokenData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tokenData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountConfirmStateSuccessImplCopyWith<_$AccountConfirmStateSuccessImpl>
      get copyWith => __$$AccountConfirmStateSuccessImplCopyWithImpl<
          _$AccountConfirmStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiUserTokenDto tokenData) success,
    required TResult Function(String? errorMessage) failure,
  }) {
    return success(tokenData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiUserTokenDto tokenData)? success,
    TResult? Function(String? errorMessage)? failure,
  }) {
    return success?.call(tokenData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiUserTokenDto tokenData)? success,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tokenData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountConfirmStateInitial value) initial,
    required TResult Function(_AccountConfirmStateSuccess value) success,
    required TResult Function(_AccountConfirmStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountConfirmStateInitial value)? initial,
    TResult? Function(_AccountConfirmStateSuccess value)? success,
    TResult? Function(_AccountConfirmStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountConfirmStateInitial value)? initial,
    TResult Function(_AccountConfirmStateSuccess value)? success,
    TResult Function(_AccountConfirmStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AccountConfirmStateSuccess extends AccountConfirmState {
  const factory _AccountConfirmStateSuccess(
          {required final ApiUserTokenDto tokenData}) =
      _$AccountConfirmStateSuccessImpl;
  const _AccountConfirmStateSuccess._() : super._();

  ApiUserTokenDto get tokenData;
  @JsonKey(ignore: true)
  _$$AccountConfirmStateSuccessImplCopyWith<_$AccountConfirmStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountConfirmStateFailureImplCopyWith<$Res> {
  factory _$$AccountConfirmStateFailureImplCopyWith(
          _$AccountConfirmStateFailureImpl value,
          $Res Function(_$AccountConfirmStateFailureImpl) then) =
      __$$AccountConfirmStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$AccountConfirmStateFailureImplCopyWithImpl<$Res>
    extends _$AccountConfirmStateCopyWithImpl<$Res,
        _$AccountConfirmStateFailureImpl>
    implements _$$AccountConfirmStateFailureImplCopyWith<$Res> {
  __$$AccountConfirmStateFailureImplCopyWithImpl(
      _$AccountConfirmStateFailureImpl _value,
      $Res Function(_$AccountConfirmStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$AccountConfirmStateFailureImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccountConfirmStateFailureImpl extends _AccountConfirmStateFailure {
  const _$AccountConfirmStateFailureImpl({this.errorMessage}) : super._();

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AccountConfirmState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountConfirmStateFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountConfirmStateFailureImplCopyWith<_$AccountConfirmStateFailureImpl>
      get copyWith => __$$AccountConfirmStateFailureImplCopyWithImpl<
          _$AccountConfirmStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiUserTokenDto tokenData) success,
    required TResult Function(String? errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiUserTokenDto tokenData)? success,
    TResult? Function(String? errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiUserTokenDto tokenData)? success,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountConfirmStateInitial value) initial,
    required TResult Function(_AccountConfirmStateSuccess value) success,
    required TResult Function(_AccountConfirmStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountConfirmStateInitial value)? initial,
    TResult? Function(_AccountConfirmStateSuccess value)? success,
    TResult? Function(_AccountConfirmStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountConfirmStateInitial value)? initial,
    TResult Function(_AccountConfirmStateSuccess value)? success,
    TResult Function(_AccountConfirmStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _AccountConfirmStateFailure extends AccountConfirmState {
  const factory _AccountConfirmStateFailure({final String? errorMessage}) =
      _$AccountConfirmStateFailureImpl;
  const _AccountConfirmStateFailure._() : super._();

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$AccountConfirmStateFailureImplCopyWith<_$AccountConfirmStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
