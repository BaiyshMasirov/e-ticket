// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentState {
  String? get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String? code)
        paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        paymentConfirmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(PaymentCreatingState value) paymentCreating,
    required TResult Function(_PaymentCreateErrorState value)
        paymentCreateError,
    required TResult Function(_PaymentCreateSuccessState value)
        paymentCreateSuccess,
    required TResult Function(PaymentConfirmingState value) paymentConfirming,
    required TResult Function(_PaymentConfirmSuccessState value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentConfirmErrorState value)
        paymentConfirmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(PaymentCreatingState value)? paymentCreating,
    TResult? Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult? Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult? Function(PaymentConfirmingState value)? paymentConfirming,
    TResult? Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult? Function(_PaymentConfirmErrorState value)? paymentConfirmError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(PaymentCreatingState value)? paymentCreating,
    TResult Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult Function(PaymentConfirmingState value)? paymentConfirming,
    TResult Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult Function(_PaymentConfirmErrorState value)? paymentConfirmError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber!
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentInitialStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentInitialStateImplCopyWith(_$PaymentInitialStateImpl value,
          $Res Function(_$PaymentInitialStateImpl) then) =
      __$$PaymentInitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$PaymentInitialStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentInitialStateImpl>
    implements _$$PaymentInitialStateImplCopyWith<$Res> {
  __$$PaymentInitialStateImplCopyWithImpl(_$PaymentInitialStateImpl _value,
      $Res Function(_$PaymentInitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$PaymentInitialStateImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaymentInitialStateImpl extends _PaymentInitialState {
  const _$PaymentInitialStateImpl({required this.phoneNumber}) : super._();

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'PaymentState.initial(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInitialStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInitialStateImplCopyWith<_$PaymentInitialStateImpl> get copyWith =>
      __$$PaymentInitialStateImplCopyWithImpl<_$PaymentInitialStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String? code)
        paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        paymentConfirmError,
  }) {
    return initial(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
  }) {
    return initial?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(PaymentCreatingState value) paymentCreating,
    required TResult Function(_PaymentCreateErrorState value)
        paymentCreateError,
    required TResult Function(_PaymentCreateSuccessState value)
        paymentCreateSuccess,
    required TResult Function(PaymentConfirmingState value) paymentConfirming,
    required TResult Function(_PaymentConfirmSuccessState value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentConfirmErrorState value)
        paymentConfirmError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(PaymentCreatingState value)? paymentCreating,
    TResult? Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult? Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult? Function(PaymentConfirmingState value)? paymentConfirming,
    TResult? Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult? Function(_PaymentConfirmErrorState value)? paymentConfirmError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(PaymentCreatingState value)? paymentCreating,
    TResult Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult Function(PaymentConfirmingState value)? paymentConfirming,
    TResult Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult Function(_PaymentConfirmErrorState value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentInitialState extends PaymentState {
  const factory _PaymentInitialState({required final String? phoneNumber}) =
      _$PaymentInitialStateImpl;
  const _PaymentInitialState._() : super._();

  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$PaymentInitialStateImplCopyWith<_$PaymentInitialStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentCreatingStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentCreatingStateImplCopyWith(_$PaymentCreatingStateImpl value,
          $Res Function(_$PaymentCreatingStateImpl) then) =
      __$$PaymentCreatingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PaymentCreatingStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentCreatingStateImpl>
    implements _$$PaymentCreatingStateImplCopyWith<$Res> {
  __$$PaymentCreatingStateImplCopyWithImpl(_$PaymentCreatingStateImpl _value,
      $Res Function(_$PaymentCreatingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PaymentCreatingStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentCreatingStateImpl extends PaymentCreatingState {
  const _$PaymentCreatingStateImpl({required this.phoneNumber}) : super._();

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PaymentState.paymentCreating(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreatingStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentCreatingStateImplCopyWith<_$PaymentCreatingStateImpl>
      get copyWith =>
          __$$PaymentCreatingStateImplCopyWithImpl<_$PaymentCreatingStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String? code)
        paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        paymentConfirmError,
  }) {
    return paymentCreating(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
  }) {
    return paymentCreating?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
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
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(PaymentCreatingState value) paymentCreating,
    required TResult Function(_PaymentCreateErrorState value)
        paymentCreateError,
    required TResult Function(_PaymentCreateSuccessState value)
        paymentCreateSuccess,
    required TResult Function(PaymentConfirmingState value) paymentConfirming,
    required TResult Function(_PaymentConfirmSuccessState value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentConfirmErrorState value)
        paymentConfirmError,
  }) {
    return paymentCreating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(PaymentCreatingState value)? paymentCreating,
    TResult? Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult? Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult? Function(PaymentConfirmingState value)? paymentConfirming,
    TResult? Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult? Function(_PaymentConfirmErrorState value)? paymentConfirmError,
  }) {
    return paymentCreating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(PaymentCreatingState value)? paymentCreating,
    TResult Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult Function(PaymentConfirmingState value)? paymentConfirming,
    TResult Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult Function(_PaymentConfirmErrorState value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentCreating != null) {
      return paymentCreating(this);
    }
    return orElse();
  }
}

abstract class PaymentCreatingState extends PaymentState {
  const factory PaymentCreatingState({required final String phoneNumber}) =
      _$PaymentCreatingStateImpl;
  const PaymentCreatingState._() : super._();

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$PaymentCreatingStateImplCopyWith<_$PaymentCreatingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentCreateErrorStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentCreateErrorStateImplCopyWith(
          _$PaymentCreateErrorStateImpl value,
          $Res Function(_$PaymentCreateErrorStateImpl) then) =
      __$$PaymentCreateErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String? errorMessage});
}

/// @nodoc
class __$$PaymentCreateErrorStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentCreateErrorStateImpl>
    implements _$$PaymentCreateErrorStateImplCopyWith<$Res> {
  __$$PaymentCreateErrorStateImplCopyWithImpl(
      _$PaymentCreateErrorStateImpl _value,
      $Res Function(_$PaymentCreateErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PaymentCreateErrorStateImpl(
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

class _$PaymentCreateErrorStateImpl extends _PaymentCreateErrorState {
  const _$PaymentCreateErrorStateImpl(
      {required this.phoneNumber, required this.errorMessage})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PaymentState.paymentCreateError(phoneNumber: $phoneNumber, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreateErrorStateImpl &&
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
  _$$PaymentCreateErrorStateImplCopyWith<_$PaymentCreateErrorStateImpl>
      get copyWith => __$$PaymentCreateErrorStateImplCopyWithImpl<
          _$PaymentCreateErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String? code)
        paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        paymentConfirmError,
  }) {
    return paymentCreateError(phoneNumber, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
  }) {
    return paymentCreateError?.call(phoneNumber, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
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
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(PaymentCreatingState value) paymentCreating,
    required TResult Function(_PaymentCreateErrorState value)
        paymentCreateError,
    required TResult Function(_PaymentCreateSuccessState value)
        paymentCreateSuccess,
    required TResult Function(PaymentConfirmingState value) paymentConfirming,
    required TResult Function(_PaymentConfirmSuccessState value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentConfirmErrorState value)
        paymentConfirmError,
  }) {
    return paymentCreateError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(PaymentCreatingState value)? paymentCreating,
    TResult? Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult? Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult? Function(PaymentConfirmingState value)? paymentConfirming,
    TResult? Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult? Function(_PaymentConfirmErrorState value)? paymentConfirmError,
  }) {
    return paymentCreateError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(PaymentCreatingState value)? paymentCreating,
    TResult Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult Function(PaymentConfirmingState value)? paymentConfirming,
    TResult Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult Function(_PaymentConfirmErrorState value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentCreateError != null) {
      return paymentCreateError(this);
    }
    return orElse();
  }
}

abstract class _PaymentCreateErrorState extends PaymentState {
  const factory _PaymentCreateErrorState(
      {required final String phoneNumber,
      required final String? errorMessage}) = _$PaymentCreateErrorStateImpl;
  const _PaymentCreateErrorState._() : super._();

  @override
  String get phoneNumber;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PaymentCreateErrorStateImplCopyWith<_$PaymentCreateErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentCreateSuccessStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentCreateSuccessStateImplCopyWith(
          _$PaymentCreateSuccessStateImpl value,
          $Res Function(_$PaymentCreateSuccessStateImpl) then) =
      __$$PaymentCreateSuccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String? code});
}

/// @nodoc
class __$$PaymentCreateSuccessStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentCreateSuccessStateImpl>
    implements _$$PaymentCreateSuccessStateImplCopyWith<$Res> {
  __$$PaymentCreateSuccessStateImplCopyWithImpl(
      _$PaymentCreateSuccessStateImpl _value,
      $Res Function(_$PaymentCreateSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = freezed,
  }) {
    return _then(_$PaymentCreateSuccessStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaymentCreateSuccessStateImpl extends _PaymentCreateSuccessState {
  const _$PaymentCreateSuccessStateImpl(
      {required this.phoneNumber, required this.code})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String? code;

  @override
  String toString() {
    return 'PaymentState.paymentCreateSuccess(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreateSuccessStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentCreateSuccessStateImplCopyWith<_$PaymentCreateSuccessStateImpl>
      get copyWith => __$$PaymentCreateSuccessStateImplCopyWithImpl<
          _$PaymentCreateSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String? code)
        paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        paymentConfirmError,
  }) {
    return paymentCreateSuccess(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
  }) {
    return paymentCreateSuccess?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentCreateSuccess != null) {
      return paymentCreateSuccess(phoneNumber, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(PaymentCreatingState value) paymentCreating,
    required TResult Function(_PaymentCreateErrorState value)
        paymentCreateError,
    required TResult Function(_PaymentCreateSuccessState value)
        paymentCreateSuccess,
    required TResult Function(PaymentConfirmingState value) paymentConfirming,
    required TResult Function(_PaymentConfirmSuccessState value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentConfirmErrorState value)
        paymentConfirmError,
  }) {
    return paymentCreateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(PaymentCreatingState value)? paymentCreating,
    TResult? Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult? Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult? Function(PaymentConfirmingState value)? paymentConfirming,
    TResult? Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult? Function(_PaymentConfirmErrorState value)? paymentConfirmError,
  }) {
    return paymentCreateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(PaymentCreatingState value)? paymentCreating,
    TResult Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult Function(PaymentConfirmingState value)? paymentConfirming,
    TResult Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult Function(_PaymentConfirmErrorState value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentCreateSuccess != null) {
      return paymentCreateSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentCreateSuccessState extends PaymentState {
  const factory _PaymentCreateSuccessState(
      {required final String phoneNumber,
      required final String? code}) = _$PaymentCreateSuccessStateImpl;
  const _PaymentCreateSuccessState._() : super._();

  @override
  String get phoneNumber;
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$PaymentCreateSuccessStateImplCopyWith<_$PaymentCreateSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentConfirmingStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentConfirmingStateImplCopyWith(
          _$PaymentConfirmingStateImpl value,
          $Res Function(_$PaymentConfirmingStateImpl) then) =
      __$$PaymentConfirmingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$PaymentConfirmingStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentConfirmingStateImpl>
    implements _$$PaymentConfirmingStateImplCopyWith<$Res> {
  __$$PaymentConfirmingStateImplCopyWithImpl(
      _$PaymentConfirmingStateImpl _value,
      $Res Function(_$PaymentConfirmingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_$PaymentConfirmingStateImpl(
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

class _$PaymentConfirmingStateImpl extends PaymentConfirmingState {
  const _$PaymentConfirmingStateImpl(
      {required this.phoneNumber, required this.code})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'PaymentState.paymentConfirming(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentConfirmingStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentConfirmingStateImplCopyWith<_$PaymentConfirmingStateImpl>
      get copyWith => __$$PaymentConfirmingStateImplCopyWithImpl<
          _$PaymentConfirmingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String? code)
        paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        paymentConfirmError,
  }) {
    return paymentConfirming(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
  }) {
    return paymentConfirming?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
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
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(PaymentCreatingState value) paymentCreating,
    required TResult Function(_PaymentCreateErrorState value)
        paymentCreateError,
    required TResult Function(_PaymentCreateSuccessState value)
        paymentCreateSuccess,
    required TResult Function(PaymentConfirmingState value) paymentConfirming,
    required TResult Function(_PaymentConfirmSuccessState value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentConfirmErrorState value)
        paymentConfirmError,
  }) {
    return paymentConfirming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(PaymentCreatingState value)? paymentCreating,
    TResult? Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult? Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult? Function(PaymentConfirmingState value)? paymentConfirming,
    TResult? Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult? Function(_PaymentConfirmErrorState value)? paymentConfirmError,
  }) {
    return paymentConfirming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(PaymentCreatingState value)? paymentCreating,
    TResult Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult Function(PaymentConfirmingState value)? paymentConfirming,
    TResult Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult Function(_PaymentConfirmErrorState value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentConfirming != null) {
      return paymentConfirming(this);
    }
    return orElse();
  }
}

abstract class PaymentConfirmingState extends PaymentState {
  const factory PaymentConfirmingState(
      {required final String phoneNumber,
      required final String code}) = _$PaymentConfirmingStateImpl;
  const PaymentConfirmingState._() : super._();

  @override
  String get phoneNumber;
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$PaymentConfirmingStateImplCopyWith<_$PaymentConfirmingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentConfirmSuccessStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentConfirmSuccessStateImplCopyWith(
          _$PaymentConfirmSuccessStateImpl value,
          $Res Function(_$PaymentConfirmSuccessStateImpl) then) =
      __$$PaymentConfirmSuccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$PaymentConfirmSuccessStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentConfirmSuccessStateImpl>
    implements _$$PaymentConfirmSuccessStateImplCopyWith<$Res> {
  __$$PaymentConfirmSuccessStateImplCopyWithImpl(
      _$PaymentConfirmSuccessStateImpl _value,
      $Res Function(_$PaymentConfirmSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_$PaymentConfirmSuccessStateImpl(
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

class _$PaymentConfirmSuccessStateImpl extends _PaymentConfirmSuccessState {
  const _$PaymentConfirmSuccessStateImpl(
      {required this.phoneNumber, required this.code})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'PaymentState.paymentConfirmSuccess(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentConfirmSuccessStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentConfirmSuccessStateImplCopyWith<_$PaymentConfirmSuccessStateImpl>
      get copyWith => __$$PaymentConfirmSuccessStateImplCopyWithImpl<
          _$PaymentConfirmSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String? code)
        paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        paymentConfirmError,
  }) {
    return paymentConfirmSuccess(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
  }) {
    return paymentConfirmSuccess?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
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
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(PaymentCreatingState value) paymentCreating,
    required TResult Function(_PaymentCreateErrorState value)
        paymentCreateError,
    required TResult Function(_PaymentCreateSuccessState value)
        paymentCreateSuccess,
    required TResult Function(PaymentConfirmingState value) paymentConfirming,
    required TResult Function(_PaymentConfirmSuccessState value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentConfirmErrorState value)
        paymentConfirmError,
  }) {
    return paymentConfirmSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(PaymentCreatingState value)? paymentCreating,
    TResult? Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult? Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult? Function(PaymentConfirmingState value)? paymentConfirming,
    TResult? Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult? Function(_PaymentConfirmErrorState value)? paymentConfirmError,
  }) {
    return paymentConfirmSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(PaymentCreatingState value)? paymentCreating,
    TResult Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult Function(PaymentConfirmingState value)? paymentConfirming,
    TResult Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult Function(_PaymentConfirmErrorState value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentConfirmSuccess != null) {
      return paymentConfirmSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentConfirmSuccessState extends PaymentState {
  const factory _PaymentConfirmSuccessState(
      {required final String phoneNumber,
      required final String code}) = _$PaymentConfirmSuccessStateImpl;
  const _PaymentConfirmSuccessState._() : super._();

  @override
  String get phoneNumber;
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$PaymentConfirmSuccessStateImplCopyWith<_$PaymentConfirmSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentConfirmErrorStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentConfirmErrorStateImplCopyWith(
          _$PaymentConfirmErrorStateImpl value,
          $Res Function(_$PaymentConfirmErrorStateImpl) then) =
      __$$PaymentConfirmErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String code, String? errorMessage});
}

/// @nodoc
class __$$PaymentConfirmErrorStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentConfirmErrorStateImpl>
    implements _$$PaymentConfirmErrorStateImplCopyWith<$Res> {
  __$$PaymentConfirmErrorStateImplCopyWithImpl(
      _$PaymentConfirmErrorStateImpl _value,
      $Res Function(_$PaymentConfirmErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PaymentConfirmErrorStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaymentConfirmErrorStateImpl extends _PaymentConfirmErrorState {
  const _$PaymentConfirmErrorStateImpl(
      {required this.phoneNumber,
      required this.code,
      required this.errorMessage})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String code;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PaymentState.paymentConfirmError(phoneNumber: $phoneNumber, code: $code, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentConfirmErrorStateImpl &&
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
  _$$PaymentConfirmErrorStateImplCopyWith<_$PaymentConfirmErrorStateImpl>
      get copyWith => __$$PaymentConfirmErrorStateImplCopyWithImpl<
          _$PaymentConfirmErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) paymentCreating,
    required TResult Function(String phoneNumber, String? errorMessage)
        paymentCreateError,
    required TResult Function(String phoneNumber, String? code)
        paymentCreateSuccess,
    required TResult Function(String phoneNumber, String code)
        paymentConfirming,
    required TResult Function(String phoneNumber, String code)
        paymentConfirmSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        paymentConfirmError,
  }) {
    return paymentConfirmError(phoneNumber, code, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? paymentCreating,
    TResult? Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult? Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult? Function(String phoneNumber, String code)? paymentConfirming,
    TResult? Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        paymentConfirmError,
  }) {
    return paymentConfirmError?.call(phoneNumber, code, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? paymentCreating,
    TResult Function(String phoneNumber, String? errorMessage)?
        paymentCreateError,
    TResult Function(String phoneNumber, String? code)? paymentCreateSuccess,
    TResult Function(String phoneNumber, String code)? paymentConfirming,
    TResult Function(String phoneNumber, String code)? paymentConfirmSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
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
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(PaymentCreatingState value) paymentCreating,
    required TResult Function(_PaymentCreateErrorState value)
        paymentCreateError,
    required TResult Function(_PaymentCreateSuccessState value)
        paymentCreateSuccess,
    required TResult Function(PaymentConfirmingState value) paymentConfirming,
    required TResult Function(_PaymentConfirmSuccessState value)
        paymentConfirmSuccess,
    required TResult Function(_PaymentConfirmErrorState value)
        paymentConfirmError,
  }) {
    return paymentConfirmError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(PaymentCreatingState value)? paymentCreating,
    TResult? Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult? Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult? Function(PaymentConfirmingState value)? paymentConfirming,
    TResult? Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult? Function(_PaymentConfirmErrorState value)? paymentConfirmError,
  }) {
    return paymentConfirmError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(PaymentCreatingState value)? paymentCreating,
    TResult Function(_PaymentCreateErrorState value)? paymentCreateError,
    TResult Function(_PaymentCreateSuccessState value)? paymentCreateSuccess,
    TResult Function(PaymentConfirmingState value)? paymentConfirming,
    TResult Function(_PaymentConfirmSuccessState value)? paymentConfirmSuccess,
    TResult Function(_PaymentConfirmErrorState value)? paymentConfirmError,
    required TResult orElse(),
  }) {
    if (paymentConfirmError != null) {
      return paymentConfirmError(this);
    }
    return orElse();
  }
}

abstract class _PaymentConfirmErrorState extends PaymentState {
  const factory _PaymentConfirmErrorState(
      {required final String phoneNumber,
      required final String code,
      required final String? errorMessage}) = _$PaymentConfirmErrorStateImpl;
  const _PaymentConfirmErrorState._() : super._();

  @override
  String get phoneNumber;
  String get code;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PaymentConfirmErrorStateImplCopyWith<_$PaymentConfirmErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
