// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_sms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentSMSState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber) paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String errorMessage)
        paymentConfirmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentSMSStateInitial value) initial,
    required TResult Function(PaymentSMSStateCreating value) paymentCreating,
    required TResult Function(_PaymentSMSStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentSMSStateCreateSuccess value)
        paymentCreateSuccess,
    required TResult Function(PaymentSMSStateConfirming value)
        paymentConfirming,
    required TResult Function(_PaymentSMSStateConfirmSuccess value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentSMSStateConfirmError value)
        paymentConfirmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentSMSStateInitial value)? initial,
    TResult? Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult? Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentSMSStateCreateSuccess value)?
        paymentCreateSuccess,
    TResult? Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult? Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult? Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentSMSStateInitial value)? initial,
    TResult Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentSMSStateCreateSuccess value)? paymentCreateSuccess,
    TResult Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentSMSStateCopyWith<$Res> {
  factory $PaymentSMSStateCopyWith(
          PaymentSMSState value, $Res Function(PaymentSMSState) then) =
      _$PaymentSMSStateCopyWithImpl<$Res, PaymentSMSState>;
}

/// @nodoc
class _$PaymentSMSStateCopyWithImpl<$Res, $Val extends PaymentSMSState>
    implements $PaymentSMSStateCopyWith<$Res> {
  _$PaymentSMSStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentSMSStateInitialImplCopyWith<$Res> {
  factory _$$PaymentSMSStateInitialImplCopyWith(
          _$PaymentSMSStateInitialImpl value,
          $Res Function(_$PaymentSMSStateInitialImpl) then) =
      __$$PaymentSMSStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentSMSStateInitialImplCopyWithImpl<$Res>
    extends _$PaymentSMSStateCopyWithImpl<$Res, _$PaymentSMSStateInitialImpl>
    implements _$$PaymentSMSStateInitialImplCopyWith<$Res> {
  __$$PaymentSMSStateInitialImplCopyWithImpl(
      _$PaymentSMSStateInitialImpl _value,
      $Res Function(_$PaymentSMSStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentSMSStateInitialImpl extends _PaymentSMSStateInitial {
  const _$PaymentSMSStateInitialImpl() : super._();

  @override
  String toString() {
    return 'PaymentSMSState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSMSStateInitialImpl);
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
    required TResult Function(String phoneNumber) paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String errorMessage)
        paymentConfirmError,
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
    TResult? Function(String phoneNumber)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
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
    TResult Function(String phoneNumber)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
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
    required TResult Function(_PaymentSMSStateInitial value) initial,
    required TResult Function(PaymentSMSStateCreating value) paymentCreating,
    required TResult Function(_PaymentSMSStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentSMSStateCreateSuccess value)
        paymentCreateSuccess,
    required TResult Function(PaymentSMSStateConfirming value)
        paymentConfirming,
    required TResult Function(_PaymentSMSStateConfirmSuccess value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentSMSStateConfirmError value)
        paymentConfirmError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentSMSStateInitial value)? initial,
    TResult? Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult? Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentSMSStateCreateSuccess value)?
        paymentCreateSuccess,
    TResult? Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult? Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult? Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentSMSStateInitial value)? initial,
    TResult Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentSMSStateCreateSuccess value)? paymentCreateSuccess,
    TResult Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentSMSStateInitial extends PaymentSMSState {
  const factory _PaymentSMSStateInitial() = _$PaymentSMSStateInitialImpl;
  const _PaymentSMSStateInitial._() : super._();
}

/// @nodoc
abstract class _$$PaymentSMSStateCreatingImplCopyWith<$Res> {
  factory _$$PaymentSMSStateCreatingImplCopyWith(
          _$PaymentSMSStateCreatingImpl value,
          $Res Function(_$PaymentSMSStateCreatingImpl) then) =
      __$$PaymentSMSStateCreatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PaymentSMSStateCreatingImplCopyWithImpl<$Res>
    extends _$PaymentSMSStateCopyWithImpl<$Res, _$PaymentSMSStateCreatingImpl>
    implements _$$PaymentSMSStateCreatingImplCopyWith<$Res> {
  __$$PaymentSMSStateCreatingImplCopyWithImpl(
      _$PaymentSMSStateCreatingImpl _value,
      $Res Function(_$PaymentSMSStateCreatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PaymentSMSStateCreatingImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSMSStateCreatingImpl extends PaymentSMSStateCreating {
  const _$PaymentSMSStateCreatingImpl({required this.phoneNumber}) : super._();

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PaymentSMSState.paymentCreating(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSMSStateCreatingImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSMSStateCreatingImplCopyWith<_$PaymentSMSStateCreatingImpl>
      get copyWith => __$$PaymentSMSStateCreatingImplCopyWithImpl<
          _$PaymentSMSStateCreatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber) paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String errorMessage)
        paymentConfirmError,
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
    TResult? Function(String phoneNumber)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
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
    TResult Function(String phoneNumber)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
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
    required TResult Function(_PaymentSMSStateInitial value) initial,
    required TResult Function(PaymentSMSStateCreating value) paymentCreating,
    required TResult Function(_PaymentSMSStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentSMSStateCreateSuccess value)
        paymentCreateSuccess,
    required TResult Function(PaymentSMSStateConfirming value)
        paymentConfirming,
    required TResult Function(_PaymentSMSStateConfirmSuccess value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentSMSStateConfirmError value)
        paymentConfirmError,
  }) {
    return paymentCreating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentSMSStateInitial value)? initial,
    TResult? Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult? Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentSMSStateCreateSuccess value)?
        paymentCreateSuccess,
    TResult? Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult? Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult? Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
  }) {
    return paymentCreating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentSMSStateInitial value)? initial,
    TResult Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentSMSStateCreateSuccess value)? paymentCreateSuccess,
    TResult Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentCreating != null) {
      return paymentCreating(this);
    }
    return orElse();
  }
}

abstract class PaymentSMSStateCreating extends PaymentSMSState {
  const factory PaymentSMSStateCreating({required final String phoneNumber}) =
      _$PaymentSMSStateCreatingImpl;
  const PaymentSMSStateCreating._() : super._();

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PaymentSMSStateCreatingImplCopyWith<_$PaymentSMSStateCreatingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSMSStateCreateErrorImplCopyWith<$Res> {
  factory _$$PaymentSMSStateCreateErrorImplCopyWith(
          _$PaymentSMSStateCreateErrorImpl value,
          $Res Function(_$PaymentSMSStateCreateErrorImpl) then) =
      __$$PaymentSMSStateCreateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String? errorMessage});
}

/// @nodoc
class __$$PaymentSMSStateCreateErrorImplCopyWithImpl<$Res>
    extends _$PaymentSMSStateCopyWithImpl<$Res,
        _$PaymentSMSStateCreateErrorImpl>
    implements _$$PaymentSMSStateCreateErrorImplCopyWith<$Res> {
  __$$PaymentSMSStateCreateErrorImplCopyWithImpl(
      _$PaymentSMSStateCreateErrorImpl _value,
      $Res Function(_$PaymentSMSStateCreateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PaymentSMSStateCreateErrorImpl(
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

class _$PaymentSMSStateCreateErrorImpl extends _PaymentSMSStateCreateError {
  const _$PaymentSMSStateCreateErrorImpl(
      {required this.phoneNumber, required this.errorMessage})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PaymentSMSState.paymentCreateError(phoneNumber: $phoneNumber, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSMSStateCreateErrorImpl &&
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
  _$$PaymentSMSStateCreateErrorImplCopyWith<_$PaymentSMSStateCreateErrorImpl>
      get copyWith => __$$PaymentSMSStateCreateErrorImplCopyWithImpl<
          _$PaymentSMSStateCreateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber) paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String errorMessage)
        paymentConfirmError,
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
    TResult? Function(String phoneNumber)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
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
    TResult Function(String phoneNumber)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
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
    required TResult Function(_PaymentSMSStateInitial value) initial,
    required TResult Function(PaymentSMSStateCreating value) paymentCreating,
    required TResult Function(_PaymentSMSStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentSMSStateCreateSuccess value)
        paymentCreateSuccess,
    required TResult Function(PaymentSMSStateConfirming value)
        paymentConfirming,
    required TResult Function(_PaymentSMSStateConfirmSuccess value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentSMSStateConfirmError value)
        paymentConfirmError,
  }) {
    return paymentCreateError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentSMSStateInitial value)? initial,
    TResult? Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult? Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentSMSStateCreateSuccess value)?
        paymentCreateSuccess,
    TResult? Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult? Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult? Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
  }) {
    return paymentCreateError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentSMSStateInitial value)? initial,
    TResult Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentSMSStateCreateSuccess value)? paymentCreateSuccess,
    TResult Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentCreateError != null) {
      return paymentCreateError(this);
    }
    return orElse();
  }
}

abstract class _PaymentSMSStateCreateError extends PaymentSMSState {
  const factory _PaymentSMSStateCreateError(
      {required final String phoneNumber,
      required final String? errorMessage}) = _$PaymentSMSStateCreateErrorImpl;
  const _PaymentSMSStateCreateError._() : super._();

  String get phoneNumber;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$PaymentSMSStateCreateErrorImplCopyWith<_$PaymentSMSStateCreateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSMSStateCreateSuccessImplCopyWith<$Res> {
  factory _$$PaymentSMSStateCreateSuccessImplCopyWith(
          _$PaymentSMSStateCreateSuccessImpl value,
          $Res Function(_$PaymentSMSStateCreateSuccessImpl) then) =
      __$$PaymentSMSStateCreateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PaymentSMSStateCreateSuccessImplCopyWithImpl<$Res>
    extends _$PaymentSMSStateCopyWithImpl<$Res,
        _$PaymentSMSStateCreateSuccessImpl>
    implements _$$PaymentSMSStateCreateSuccessImplCopyWith<$Res> {
  __$$PaymentSMSStateCreateSuccessImplCopyWithImpl(
      _$PaymentSMSStateCreateSuccessImpl _value,
      $Res Function(_$PaymentSMSStateCreateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PaymentSMSStateCreateSuccessImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSMSStateCreateSuccessImpl extends _PaymentSMSStateCreateSuccess {
  const _$PaymentSMSStateCreateSuccessImpl({required this.phoneNumber})
      : super._();

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PaymentSMSState.paymentCreateSuccess(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSMSStateCreateSuccessImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSMSStateCreateSuccessImplCopyWith<
          _$PaymentSMSStateCreateSuccessImpl>
      get copyWith => __$$PaymentSMSStateCreateSuccessImplCopyWithImpl<
          _$PaymentSMSStateCreateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber) paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String errorMessage)
        paymentConfirmError,
  }) {
    return paymentCreateSuccess(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
  }) {
    return paymentCreateSuccess?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentCreateSuccess != null) {
      return paymentCreateSuccess(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentSMSStateInitial value) initial,
    required TResult Function(PaymentSMSStateCreating value) paymentCreating,
    required TResult Function(_PaymentSMSStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentSMSStateCreateSuccess value)
        paymentCreateSuccess,
    required TResult Function(PaymentSMSStateConfirming value)
        paymentConfirming,
    required TResult Function(_PaymentSMSStateConfirmSuccess value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentSMSStateConfirmError value)
        paymentConfirmError,
  }) {
    return paymentCreateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentSMSStateInitial value)? initial,
    TResult? Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult? Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentSMSStateCreateSuccess value)?
        paymentCreateSuccess,
    TResult? Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult? Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult? Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
  }) {
    return paymentCreateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentSMSStateInitial value)? initial,
    TResult Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentSMSStateCreateSuccess value)? paymentCreateSuccess,
    TResult Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentCreateSuccess != null) {
      return paymentCreateSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentSMSStateCreateSuccess extends PaymentSMSState {
  const factory _PaymentSMSStateCreateSuccess(
      {required final String phoneNumber}) = _$PaymentSMSStateCreateSuccessImpl;
  const _PaymentSMSStateCreateSuccess._() : super._();

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PaymentSMSStateCreateSuccessImplCopyWith<
          _$PaymentSMSStateCreateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSMSStateConfirmingImplCopyWith<$Res> {
  factory _$$PaymentSMSStateConfirmingImplCopyWith(
          _$PaymentSMSStateConfirmingImpl value,
          $Res Function(_$PaymentSMSStateConfirmingImpl) then) =
      __$$PaymentSMSStateConfirmingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$PaymentSMSStateConfirmingImplCopyWithImpl<$Res>
    extends _$PaymentSMSStateCopyWithImpl<$Res, _$PaymentSMSStateConfirmingImpl>
    implements _$$PaymentSMSStateConfirmingImplCopyWith<$Res> {
  __$$PaymentSMSStateConfirmingImplCopyWithImpl(
      _$PaymentSMSStateConfirmingImpl _value,
      $Res Function(_$PaymentSMSStateConfirmingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_$PaymentSMSStateConfirmingImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSMSStateConfirmingImpl extends PaymentSMSStateConfirming {
  const _$PaymentSMSStateConfirmingImpl(
      {required this.phoneNumber, required this.code})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'PaymentSMSState.paymentConfirming(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSMSStateConfirmingImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSMSStateConfirmingImplCopyWith<_$PaymentSMSStateConfirmingImpl>
      get copyWith => __$$PaymentSMSStateConfirmingImplCopyWithImpl<
          _$PaymentSMSStateConfirmingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber) paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String errorMessage)
        paymentConfirmError,
  }) {
    return paymentConfirming(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
  }) {
    return paymentConfirming?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentConfirming != null) {
      return paymentConfirming(phoneNumber, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentSMSStateInitial value) initial,
    required TResult Function(PaymentSMSStateCreating value) paymentCreating,
    required TResult Function(_PaymentSMSStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentSMSStateCreateSuccess value)
        paymentCreateSuccess,
    required TResult Function(PaymentSMSStateConfirming value)
        paymentConfirming,
    required TResult Function(_PaymentSMSStateConfirmSuccess value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentSMSStateConfirmError value)
        paymentConfirmError,
  }) {
    return paymentConfirming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentSMSStateInitial value)? initial,
    TResult? Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult? Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentSMSStateCreateSuccess value)?
        paymentCreateSuccess,
    TResult? Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult? Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult? Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
  }) {
    return paymentConfirming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentSMSStateInitial value)? initial,
    TResult Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentSMSStateCreateSuccess value)? paymentCreateSuccess,
    TResult Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentConfirming != null) {
      return paymentConfirming(this);
    }
    return orElse();
  }
}

abstract class PaymentSMSStateConfirming extends PaymentSMSState {
  const factory PaymentSMSStateConfirming(
      {required final String phoneNumber,
      required final String code}) = _$PaymentSMSStateConfirmingImpl;
  const PaymentSMSStateConfirming._() : super._();

  String get phoneNumber;
  String get code;
  @JsonKey(ignore: true)
  _$$PaymentSMSStateConfirmingImplCopyWith<_$PaymentSMSStateConfirmingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSMSStateConfirmSuccessImplCopyWith<$Res> {
  factory _$$PaymentSMSStateConfirmSuccessImplCopyWith(
          _$PaymentSMSStateConfirmSuccessImpl value,
          $Res Function(_$PaymentSMSStateConfirmSuccessImpl) then) =
      __$$PaymentSMSStateConfirmSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$PaymentSMSStateConfirmSuccessImplCopyWithImpl<$Res>
    extends _$PaymentSMSStateCopyWithImpl<$Res,
        _$PaymentSMSStateConfirmSuccessImpl>
    implements _$$PaymentSMSStateConfirmSuccessImplCopyWith<$Res> {
  __$$PaymentSMSStateConfirmSuccessImplCopyWithImpl(
      _$PaymentSMSStateConfirmSuccessImpl _value,
      $Res Function(_$PaymentSMSStateConfirmSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_$PaymentSMSStateConfirmSuccessImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSMSStateConfirmSuccessImpl
    extends _PaymentSMSStateConfirmSuccess {
  const _$PaymentSMSStateConfirmSuccessImpl(
      {required this.phoneNumber, required this.code})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'PaymentSMSState.paymentConfirmSuccess(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSMSStateConfirmSuccessImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSMSStateConfirmSuccessImplCopyWith<
          _$PaymentSMSStateConfirmSuccessImpl>
      get copyWith => __$$PaymentSMSStateConfirmSuccessImplCopyWithImpl<
          _$PaymentSMSStateConfirmSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber) paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String errorMessage)
        paymentConfirmError,
  }) {
    return paymentConfirmSuccess(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
  }) {
    return paymentConfirmSuccess?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentConfirmSuccess != null) {
      return paymentConfirmSuccess(phoneNumber, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentSMSStateInitial value) initial,
    required TResult Function(PaymentSMSStateCreating value) paymentCreating,
    required TResult Function(_PaymentSMSStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentSMSStateCreateSuccess value)
        paymentCreateSuccess,
    required TResult Function(PaymentSMSStateConfirming value)
        paymentConfirming,
    required TResult Function(_PaymentSMSStateConfirmSuccess value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentSMSStateConfirmError value)
        paymentConfirmError,
  }) {
    return paymentConfirmSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentSMSStateInitial value)? initial,
    TResult? Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult? Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentSMSStateCreateSuccess value)?
        paymentCreateSuccess,
    TResult? Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult? Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult? Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
  }) {
    return paymentConfirmSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentSMSStateInitial value)? initial,
    TResult Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentSMSStateCreateSuccess value)? paymentCreateSuccess,
    TResult Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentConfirmSuccess != null) {
      return paymentConfirmSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentSMSStateConfirmSuccess extends PaymentSMSState {
  const factory _PaymentSMSStateConfirmSuccess(
      {required final String phoneNumber,
      required final String code}) = _$PaymentSMSStateConfirmSuccessImpl;
  const _PaymentSMSStateConfirmSuccess._() : super._();

  String get phoneNumber;
  String get code;
  @JsonKey(ignore: true)
  _$$PaymentSMSStateConfirmSuccessImplCopyWith<
          _$PaymentSMSStateConfirmSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSMSStateConfirmErrorImplCopyWith<$Res> {
  factory _$$PaymentSMSStateConfirmErrorImplCopyWith(
          _$PaymentSMSStateConfirmErrorImpl value,
          $Res Function(_$PaymentSMSStateConfirmErrorImpl) then) =
      __$$PaymentSMSStateConfirmErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String code, String errorMessage});
}

/// @nodoc
class __$$PaymentSMSStateConfirmErrorImplCopyWithImpl<$Res>
    extends _$PaymentSMSStateCopyWithImpl<$Res,
        _$PaymentSMSStateConfirmErrorImpl>
    implements _$$PaymentSMSStateConfirmErrorImplCopyWith<$Res> {
  __$$PaymentSMSStateConfirmErrorImplCopyWithImpl(
      _$PaymentSMSStateConfirmErrorImpl _value,
      $Res Function(_$PaymentSMSStateConfirmErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
    Object? errorMessage = null,
  }) {
    return _then(_$PaymentSMSStateConfirmErrorImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSMSStateConfirmErrorImpl extends _PaymentSMSStateConfirmError {
  const _$PaymentSMSStateConfirmErrorImpl(
      {required this.phoneNumber,
      required this.code,
      required this.errorMessage})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String code;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PaymentSMSState.paymentConfirmError(phoneNumber: $phoneNumber, code: $code, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSMSStateConfirmErrorImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSMSStateConfirmErrorImplCopyWith<_$PaymentSMSStateConfirmErrorImpl>
      get copyWith => __$$PaymentSMSStateConfirmErrorImplCopyWithImpl<
          _$PaymentSMSStateConfirmErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber) paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String errorMessage)
        paymentConfirmError,
  }) {
    return paymentConfirmError(phoneNumber, code, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
  }) {
    return paymentConfirmError?.call(phoneNumber, code, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String errorMessage)?
        paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentConfirmError != null) {
      return paymentConfirmError(phoneNumber, code, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentSMSStateInitial value) initial,
    required TResult Function(PaymentSMSStateCreating value) paymentCreating,
    required TResult Function(_PaymentSMSStateCreateError value)
        paymentCreateError,
    required TResult Function(_PaymentSMSStateCreateSuccess value)
        paymentCreateSuccess,
    required TResult Function(PaymentSMSStateConfirming value)
        paymentConfirming,
    required TResult Function(_PaymentSMSStateConfirmSuccess value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentSMSStateConfirmError value)
        paymentConfirmError,
  }) {
    return paymentConfirmError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentSMSStateInitial value)? initial,
    TResult? Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult? Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult? Function(_PaymentSMSStateCreateSuccess value)?
        paymentCreateSuccess,
    TResult? Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult? Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult? Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
  }) {
    return paymentConfirmError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentSMSStateInitial value)? initial,
    TResult Function(PaymentSMSStateCreating value)? paymentCreating,
    TResult Function(_PaymentSMSStateCreateError value)? paymentCreateError,
    TResult Function(_PaymentSMSStateCreateSuccess value)? paymentCreateSuccess,
    TResult Function(PaymentSMSStateConfirming value)? paymentConfirming,
    TResult Function(_PaymentSMSStateConfirmSuccess value)?
        paymentConfirmSuccess,
    TResult Function(_PaymentSMSStateConfirmError value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentConfirmError != null) {
      return paymentConfirmError(this);
    }
    return orElse();
  }
}

abstract class _PaymentSMSStateConfirmError extends PaymentSMSState {
  const factory _PaymentSMSStateConfirmError(
      {required final String phoneNumber,
      required final String code,
      required final String errorMessage}) = _$PaymentSMSStateConfirmErrorImpl;
  const _PaymentSMSStateConfirmError._() : super._();

  String get phoneNumber;
  String get code;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$PaymentSMSStateConfirmErrorImplCopyWith<_$PaymentSMSStateConfirmErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
