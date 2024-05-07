// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_phone_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentPhoneState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String deepLink)
        paymentCreateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String deepLink)?
        paymentCreateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String deepLink)? paymentCreateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentPhoneStateInitial value) initial,
    required TResult Function(_PaymentPhoneStatePaymentCreating value)
        paymentCreating,
    required TResult Function(_PaymentPhoneStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentPhoneStateCreateSuccess value)
        paymentCreateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentPhoneStateInitial value)? initial,
    TResult? Function(_PaymentPhoneStatePaymentCreating value)? paymentCreating,
    TResult? Function(_PaymentPhoneStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentPhoneStateCreateSuccess value)?
        paymentCreateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentPhoneStateInitial value)? initial,
    TResult Function(_PaymentPhoneStatePaymentCreating value)? paymentCreating,
    TResult Function(_PaymentPhoneStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentPhoneStateCreateSuccess value)?
        paymentCreateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPhoneStateCopyWith<$Res> {
  factory $PaymentPhoneStateCopyWith(
          PaymentPhoneState value, $Res Function(PaymentPhoneState) then) =
      _$PaymentPhoneStateCopyWithImpl<$Res, PaymentPhoneState>;
}

/// @nodoc
class _$PaymentPhoneStateCopyWithImpl<$Res, $Val extends PaymentPhoneState>
    implements $PaymentPhoneStateCopyWith<$Res> {
  _$PaymentPhoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentPhoneStateInitialImplCopyWith<$Res> {
  factory _$$PaymentPhoneStateInitialImplCopyWith(
          _$PaymentPhoneStateInitialImpl value,
          $Res Function(_$PaymentPhoneStateInitialImpl) then) =
      __$$PaymentPhoneStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentPhoneStateInitialImplCopyWithImpl<$Res>
    extends _$PaymentPhoneStateCopyWithImpl<$Res,
        _$PaymentPhoneStateInitialImpl>
    implements _$$PaymentPhoneStateInitialImplCopyWith<$Res> {
  __$$PaymentPhoneStateInitialImplCopyWithImpl(
      _$PaymentPhoneStateInitialImpl _value,
      $Res Function(_$PaymentPhoneStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentPhoneStateInitialImpl extends _PaymentPhoneStateInitial {
  const _$PaymentPhoneStateInitialImpl() : super._();

  @override
  String toString() {
    return 'PaymentPhoneState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentPhoneStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String deepLink)
        paymentCreateSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String deepLink)?
        paymentCreateSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String deepLink)? paymentCreateSuccess,
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
    required TResult Function(_PaymentPhoneStateInitial value) initial,
    required TResult Function(_PaymentPhoneStatePaymentCreating value)
        paymentCreating,
    required TResult Function(_PaymentPhoneStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentPhoneStateCreateSuccess value)
        paymentCreateSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentPhoneStateInitial value)? initial,
    TResult? Function(_PaymentPhoneStatePaymentCreating value)? paymentCreating,
    TResult? Function(_PaymentPhoneStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentPhoneStateCreateSuccess value)?
        paymentCreateSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentPhoneStateInitial value)? initial,
    TResult Function(_PaymentPhoneStatePaymentCreating value)? paymentCreating,
    TResult Function(_PaymentPhoneStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentPhoneStateCreateSuccess value)?
        paymentCreateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentPhoneStateInitial extends PaymentPhoneState {
  const factory _PaymentPhoneStateInitial() = _$PaymentPhoneStateInitialImpl;
  const _PaymentPhoneStateInitial._() : super._();
}

/// @nodoc
abstract class _$$PaymentPhoneStatePaymentCreatingImplCopyWith<$Res> {
  factory _$$PaymentPhoneStatePaymentCreatingImplCopyWith(
          _$PaymentPhoneStatePaymentCreatingImpl value,
          $Res Function(_$PaymentPhoneStatePaymentCreatingImpl) then) =
      __$$PaymentPhoneStatePaymentCreatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PaymentPhoneStatePaymentCreatingImplCopyWithImpl<$Res>
    extends _$PaymentPhoneStateCopyWithImpl<$Res,
        _$PaymentPhoneStatePaymentCreatingImpl>
    implements _$$PaymentPhoneStatePaymentCreatingImplCopyWith<$Res> {
  __$$PaymentPhoneStatePaymentCreatingImplCopyWithImpl(
      _$PaymentPhoneStatePaymentCreatingImpl _value,
      $Res Function(_$PaymentPhoneStatePaymentCreatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PaymentPhoneStatePaymentCreatingImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentPhoneStatePaymentCreatingImpl
    extends _PaymentPhoneStatePaymentCreating {
  const _$PaymentPhoneStatePaymentCreatingImpl({required this.phoneNumber})
      : super._();

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PaymentPhoneState.paymentCreating(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentPhoneStatePaymentCreatingImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentPhoneStatePaymentCreatingImplCopyWith<
          _$PaymentPhoneStatePaymentCreatingImpl>
      get copyWith => __$$PaymentPhoneStatePaymentCreatingImplCopyWithImpl<
          _$PaymentPhoneStatePaymentCreatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String deepLink)
        paymentCreateSuccess,
  }) {
    return paymentCreating(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String deepLink)?
        paymentCreateSuccess,
  }) {
    return paymentCreating?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String deepLink)? paymentCreateSuccess,
    required TResult orElse(),
  }) {
    if (paymentCreating != null) {
      return paymentCreating(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentPhoneStateInitial value) initial,
    required TResult Function(_PaymentPhoneStatePaymentCreating value)
        paymentCreating,
    required TResult Function(_PaymentPhoneStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentPhoneStateCreateSuccess value)
        paymentCreateSuccess,
  }) {
    return paymentCreating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentPhoneStateInitial value)? initial,
    TResult? Function(_PaymentPhoneStatePaymentCreating value)? paymentCreating,
    TResult? Function(_PaymentPhoneStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentPhoneStateCreateSuccess value)?
        paymentCreateSuccess,
  }) {
    return paymentCreating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentPhoneStateInitial value)? initial,
    TResult Function(_PaymentPhoneStatePaymentCreating value)? paymentCreating,
    TResult Function(_PaymentPhoneStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentPhoneStateCreateSuccess value)?
        paymentCreateSuccess,
    required TResult orElse(),
  }) {
    if (paymentCreating != null) {
      return paymentCreating(this);
    }
    return orElse();
  }
}

abstract class _PaymentPhoneStatePaymentCreating extends PaymentPhoneState {
  const factory _PaymentPhoneStatePaymentCreating(
          {required final String phoneNumber}) =
      _$PaymentPhoneStatePaymentCreatingImpl;
  const _PaymentPhoneStatePaymentCreating._() : super._();

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PaymentPhoneStatePaymentCreatingImplCopyWith<
          _$PaymentPhoneStatePaymentCreatingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentPhoneStateCreateErrorImplCopyWith<$Res> {
  factory _$$PaymentPhoneStateCreateErrorImplCopyWith(
          _$PaymentPhoneStateCreateErrorImpl value,
          $Res Function(_$PaymentPhoneStateCreateErrorImpl) then) =
      __$$PaymentPhoneStateCreateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String? errorMessage});
}

/// @nodoc
class __$$PaymentPhoneStateCreateErrorImplCopyWithImpl<$Res>
    extends _$PaymentPhoneStateCopyWithImpl<$Res,
        _$PaymentPhoneStateCreateErrorImpl>
    implements _$$PaymentPhoneStateCreateErrorImplCopyWith<$Res> {
  __$$PaymentPhoneStateCreateErrorImplCopyWithImpl(
      _$PaymentPhoneStateCreateErrorImpl _value,
      $Res Function(_$PaymentPhoneStateCreateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PaymentPhoneStateCreateErrorImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaymentPhoneStateCreateErrorImpl extends _PaymentPhoneStateCreateError {
  const _$PaymentPhoneStateCreateErrorImpl(
      {required this.phoneNumber, required this.errorMessage})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PaymentPhoneState.paymentCreateError(phoneNumber: $phoneNumber, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentPhoneStateCreateErrorImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentPhoneStateCreateErrorImplCopyWith<
          _$PaymentPhoneStateCreateErrorImpl>
      get copyWith => __$$PaymentPhoneStateCreateErrorImplCopyWithImpl<
          _$PaymentPhoneStateCreateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String deepLink)
        paymentCreateSuccess,
  }) {
    return paymentCreateError(phoneNumber, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String deepLink)?
        paymentCreateSuccess,
  }) {
    return paymentCreateError?.call(phoneNumber, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String deepLink)? paymentCreateSuccess,
    required TResult orElse(),
  }) {
    if (paymentCreateError != null) {
      return paymentCreateError(phoneNumber, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentPhoneStateInitial value) initial,
    required TResult Function(_PaymentPhoneStatePaymentCreating value)
        paymentCreating,
    required TResult Function(_PaymentPhoneStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentPhoneStateCreateSuccess value)
        paymentCreateSuccess,
  }) {
    return paymentCreateError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentPhoneStateInitial value)? initial,
    TResult? Function(_PaymentPhoneStatePaymentCreating value)? paymentCreating,
    TResult? Function(_PaymentPhoneStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentPhoneStateCreateSuccess value)?
        paymentCreateSuccess,
  }) {
    return paymentCreateError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentPhoneStateInitial value)? initial,
    TResult Function(_PaymentPhoneStatePaymentCreating value)? paymentCreating,
    TResult Function(_PaymentPhoneStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentPhoneStateCreateSuccess value)?
        paymentCreateSuccess,
    required TResult orElse(),
  }) {
    if (paymentCreateError != null) {
      return paymentCreateError(this);
    }
    return orElse();
  }
}

abstract class _PaymentPhoneStateCreateError extends PaymentPhoneState {
  const factory _PaymentPhoneStateCreateError(
          {required final String phoneNumber,
          required final String? errorMessage}) =
      _$PaymentPhoneStateCreateErrorImpl;
  const _PaymentPhoneStateCreateError._() : super._();

  String get phoneNumber;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$PaymentPhoneStateCreateErrorImplCopyWith<
          _$PaymentPhoneStateCreateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentPhoneStateCreateSuccessImplCopyWith<$Res> {
  factory _$$PaymentPhoneStateCreateSuccessImplCopyWith(
          _$PaymentPhoneStateCreateSuccessImpl value,
          $Res Function(_$PaymentPhoneStateCreateSuccessImpl) then) =
      __$$PaymentPhoneStateCreateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String deepLink});
}

/// @nodoc
class __$$PaymentPhoneStateCreateSuccessImplCopyWithImpl<$Res>
    extends _$PaymentPhoneStateCopyWithImpl<$Res,
        _$PaymentPhoneStateCreateSuccessImpl>
    implements _$$PaymentPhoneStateCreateSuccessImplCopyWith<$Res> {
  __$$PaymentPhoneStateCreateSuccessImplCopyWithImpl(
      _$PaymentPhoneStateCreateSuccessImpl _value,
      $Res Function(_$PaymentPhoneStateCreateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? deepLink = null,
  }) {
    return _then(_$PaymentPhoneStateCreateSuccessImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      deepLink: null == deepLink
          ? _value.deepLink
          : deepLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentPhoneStateCreateSuccessImpl
    extends _PaymentPhoneStateCreateSuccess {
  const _$PaymentPhoneStateCreateSuccessImpl(
      {required this.phoneNumber, required this.deepLink})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String deepLink;

  @override
  String toString() {
    return 'PaymentPhoneState.paymentCreateSuccess(phoneNumber: $phoneNumber, deepLink: $deepLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentPhoneStateCreateSuccessImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.deepLink, deepLink) ||
                other.deepLink == deepLink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, deepLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentPhoneStateCreateSuccessImplCopyWith<
          _$PaymentPhoneStateCreateSuccessImpl>
      get copyWith => __$$PaymentPhoneStateCreateSuccessImplCopyWithImpl<
          _$PaymentPhoneStateCreateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String deepLink)
        paymentCreateSuccess,
  }) {
    return paymentCreateSuccess(phoneNumber, deepLink);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String deepLink)?
        paymentCreateSuccess,
  }) {
    return paymentCreateSuccess?.call(phoneNumber, deepLink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String deepLink)? paymentCreateSuccess,
    required TResult orElse(),
  }) {
    if (paymentCreateSuccess != null) {
      return paymentCreateSuccess(phoneNumber, deepLink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentPhoneStateInitial value) initial,
    required TResult Function(_PaymentPhoneStatePaymentCreating value)
        paymentCreating,
    required TResult Function(_PaymentPhoneStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentPhoneStateCreateSuccess value)
        paymentCreateSuccess,
  }) {
    return paymentCreateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentPhoneStateInitial value)? initial,
    TResult? Function(_PaymentPhoneStatePaymentCreating value)? paymentCreating,
    TResult? Function(_PaymentPhoneStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentPhoneStateCreateSuccess value)?
        paymentCreateSuccess,
  }) {
    return paymentCreateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentPhoneStateInitial value)? initial,
    TResult Function(_PaymentPhoneStatePaymentCreating value)? paymentCreating,
    TResult Function(_PaymentPhoneStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentPhoneStateCreateSuccess value)?
        paymentCreateSuccess,
    required TResult orElse(),
  }) {
    if (paymentCreateSuccess != null) {
      return paymentCreateSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentPhoneStateCreateSuccess extends PaymentPhoneState {
  const factory _PaymentPhoneStateCreateSuccess(
      {required final String phoneNumber,
      required final String deepLink}) = _$PaymentPhoneStateCreateSuccessImpl;
  const _PaymentPhoneStateCreateSuccess._() : super._();

  String get phoneNumber;
  String get deepLink;
  @JsonKey(ignore: true)
  _$$PaymentPhoneStateCreateSuccessImplCopyWith<
          _$PaymentPhoneStateCreateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
