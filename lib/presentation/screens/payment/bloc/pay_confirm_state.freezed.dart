// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_confirm_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PayConfirmState {
  String? get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) creatingPayment,
    required TResult Function(String phoneNumber, String? errorMessage)
        creatingPaymentError,
    required TResult Function(String phoneNumber, String? code)
        creatingPaymentSuccess,
    required TResult Function(String phoneNumber, String code)
        confirmingPayment,
    required TResult Function(String phoneNumber, String code)
        confirmingPaymentSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        confirmingPaymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? creatingPayment,
    TResult? Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult? Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult? Function(String phoneNumber, String code)? confirmingPayment,
    TResult? Function(String phoneNumber, String code)?
        confirmingPaymentSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? creatingPayment,
    TResult Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult Function(String phoneNumber, String code)? confirmingPayment,
    TResult Function(String phoneNumber, String code)? confirmingPaymentSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayConfirmInitialState value) initial,
    required TResult Function(PayCreatingState value) creatingPayment,
    required TResult Function(_PayConfirmCreatingErrorState value)
        creatingPaymentError,
    required TResult Function(_PayConfirmCreatingSuccessState value)
        creatingPaymentSuccess,
    required TResult Function(PayConfirmingState value) confirmingPayment,
    required TResult Function(_PayConfirmSuccessState value)
        confirmingPaymentSuccess,
    required TResult Function(_PayConfirmErrorState value)
        confirmingPaymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayConfirmInitialState value)? initial,
    TResult? Function(PayCreatingState value)? creatingPayment,
    TResult? Function(_PayConfirmCreatingErrorState value)?
        creatingPaymentError,
    TResult? Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult? Function(PayConfirmingState value)? confirmingPayment,
    TResult? Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult? Function(_PayConfirmErrorState value)? confirmingPaymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayConfirmInitialState value)? initial,
    TResult Function(PayCreatingState value)? creatingPayment,
    TResult Function(_PayConfirmCreatingErrorState value)? creatingPaymentError,
    TResult Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult Function(PayConfirmingState value)? confirmingPayment,
    TResult Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult Function(_PayConfirmErrorState value)? confirmingPaymentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PayConfirmStateCopyWith<PayConfirmState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayConfirmStateCopyWith<$Res> {
  factory $PayConfirmStateCopyWith(
          PayConfirmState value, $Res Function(PayConfirmState) then) =
      _$PayConfirmStateCopyWithImpl<$Res, PayConfirmState>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PayConfirmStateCopyWithImpl<$Res, $Val extends PayConfirmState>
    implements $PayConfirmStateCopyWith<$Res> {
  _$PayConfirmStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PayConfirmInitialStateImplCopyWith<$Res>
    implements $PayConfirmStateCopyWith<$Res> {
  factory _$$PayConfirmInitialStateImplCopyWith(
          _$PayConfirmInitialStateImpl value,
          $Res Function(_$PayConfirmInitialStateImpl) then) =
      __$$PayConfirmInitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$PayConfirmInitialStateImplCopyWithImpl<$Res>
    extends _$PayConfirmStateCopyWithImpl<$Res, _$PayConfirmInitialStateImpl>
    implements _$$PayConfirmInitialStateImplCopyWith<$Res> {
  __$$PayConfirmInitialStateImplCopyWithImpl(
      _$PayConfirmInitialStateImpl _value,
      $Res Function(_$PayConfirmInitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$PayConfirmInitialStateImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PayConfirmInitialStateImpl extends _PayConfirmInitialState {
  const _$PayConfirmInitialStateImpl({required this.phoneNumber}) : super._();

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'PayConfirmState.initial(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayConfirmInitialStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayConfirmInitialStateImplCopyWith<_$PayConfirmInitialStateImpl>
      get copyWith => __$$PayConfirmInitialStateImplCopyWithImpl<
          _$PayConfirmInitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) creatingPayment,
    required TResult Function(String phoneNumber, String? errorMessage)
        creatingPaymentError,
    required TResult Function(String phoneNumber, String? code)
        creatingPaymentSuccess,
    required TResult Function(String phoneNumber, String code)
        confirmingPayment,
    required TResult Function(String phoneNumber, String code)
        confirmingPaymentSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        confirmingPaymentError,
  }) {
    return initial(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? creatingPayment,
    TResult? Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult? Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult? Function(String phoneNumber, String code)? confirmingPayment,
    TResult? Function(String phoneNumber, String code)?
        confirmingPaymentSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
  }) {
    return initial?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? creatingPayment,
    TResult Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult Function(String phoneNumber, String code)? confirmingPayment,
    TResult Function(String phoneNumber, String code)? confirmingPaymentSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
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
    required TResult Function(_PayConfirmInitialState value) initial,
    required TResult Function(PayCreatingState value) creatingPayment,
    required TResult Function(_PayConfirmCreatingErrorState value)
        creatingPaymentError,
    required TResult Function(_PayConfirmCreatingSuccessState value)
        creatingPaymentSuccess,
    required TResult Function(PayConfirmingState value) confirmingPayment,
    required TResult Function(_PayConfirmSuccessState value)
        confirmingPaymentSuccess,
    required TResult Function(_PayConfirmErrorState value)
        confirmingPaymentError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayConfirmInitialState value)? initial,
    TResult? Function(PayCreatingState value)? creatingPayment,
    TResult? Function(_PayConfirmCreatingErrorState value)?
        creatingPaymentError,
    TResult? Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult? Function(PayConfirmingState value)? confirmingPayment,
    TResult? Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult? Function(_PayConfirmErrorState value)? confirmingPaymentError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayConfirmInitialState value)? initial,
    TResult Function(PayCreatingState value)? creatingPayment,
    TResult Function(_PayConfirmCreatingErrorState value)? creatingPaymentError,
    TResult Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult Function(PayConfirmingState value)? confirmingPayment,
    TResult Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult Function(_PayConfirmErrorState value)? confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PayConfirmInitialState extends PayConfirmState {
  const factory _PayConfirmInitialState({required final String? phoneNumber}) =
      _$PayConfirmInitialStateImpl;
  const _PayConfirmInitialState._() : super._();

  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$PayConfirmInitialStateImplCopyWith<_$PayConfirmInitialStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayCreatingStateImplCopyWith<$Res>
    implements $PayConfirmStateCopyWith<$Res> {
  factory _$$PayCreatingStateImplCopyWith(_$PayCreatingStateImpl value,
          $Res Function(_$PayCreatingStateImpl) then) =
      __$$PayCreatingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PayCreatingStateImplCopyWithImpl<$Res>
    extends _$PayConfirmStateCopyWithImpl<$Res, _$PayCreatingStateImpl>
    implements _$$PayCreatingStateImplCopyWith<$Res> {
  __$$PayCreatingStateImplCopyWithImpl(_$PayCreatingStateImpl _value,
      $Res Function(_$PayCreatingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PayCreatingStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PayCreatingStateImpl extends PayCreatingState {
  const _$PayCreatingStateImpl({required this.phoneNumber}) : super._();

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PayConfirmState.creatingPayment(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayCreatingStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayCreatingStateImplCopyWith<_$PayCreatingStateImpl> get copyWith =>
      __$$PayCreatingStateImplCopyWithImpl<_$PayCreatingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) creatingPayment,
    required TResult Function(String phoneNumber, String? errorMessage)
        creatingPaymentError,
    required TResult Function(String phoneNumber, String? code)
        creatingPaymentSuccess,
    required TResult Function(String phoneNumber, String code)
        confirmingPayment,
    required TResult Function(String phoneNumber, String code)
        confirmingPaymentSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        confirmingPaymentError,
  }) {
    return creatingPayment(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? creatingPayment,
    TResult? Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult? Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult? Function(String phoneNumber, String code)? confirmingPayment,
    TResult? Function(String phoneNumber, String code)?
        confirmingPaymentSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
  }) {
    return creatingPayment?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? creatingPayment,
    TResult Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult Function(String phoneNumber, String code)? confirmingPayment,
    TResult Function(String phoneNumber, String code)? confirmingPaymentSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (creatingPayment != null) {
      return creatingPayment(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayConfirmInitialState value) initial,
    required TResult Function(PayCreatingState value) creatingPayment,
    required TResult Function(_PayConfirmCreatingErrorState value)
        creatingPaymentError,
    required TResult Function(_PayConfirmCreatingSuccessState value)
        creatingPaymentSuccess,
    required TResult Function(PayConfirmingState value) confirmingPayment,
    required TResult Function(_PayConfirmSuccessState value)
        confirmingPaymentSuccess,
    required TResult Function(_PayConfirmErrorState value)
        confirmingPaymentError,
  }) {
    return creatingPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayConfirmInitialState value)? initial,
    TResult? Function(PayCreatingState value)? creatingPayment,
    TResult? Function(_PayConfirmCreatingErrorState value)?
        creatingPaymentError,
    TResult? Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult? Function(PayConfirmingState value)? confirmingPayment,
    TResult? Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult? Function(_PayConfirmErrorState value)? confirmingPaymentError,
  }) {
    return creatingPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayConfirmInitialState value)? initial,
    TResult Function(PayCreatingState value)? creatingPayment,
    TResult Function(_PayConfirmCreatingErrorState value)? creatingPaymentError,
    TResult Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult Function(PayConfirmingState value)? confirmingPayment,
    TResult Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult Function(_PayConfirmErrorState value)? confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (creatingPayment != null) {
      return creatingPayment(this);
    }
    return orElse();
  }
}

abstract class PayCreatingState extends PayConfirmState {
  const factory PayCreatingState({required final String phoneNumber}) =
      _$PayCreatingStateImpl;
  const PayCreatingState._() : super._();

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$PayCreatingStateImplCopyWith<_$PayCreatingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayConfirmCreatingErrorStateImplCopyWith<$Res>
    implements $PayConfirmStateCopyWith<$Res> {
  factory _$$PayConfirmCreatingErrorStateImplCopyWith(
          _$PayConfirmCreatingErrorStateImpl value,
          $Res Function(_$PayConfirmCreatingErrorStateImpl) then) =
      __$$PayConfirmCreatingErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String? errorMessage});
}

/// @nodoc
class __$$PayConfirmCreatingErrorStateImplCopyWithImpl<$Res>
    extends _$PayConfirmStateCopyWithImpl<$Res,
        _$PayConfirmCreatingErrorStateImpl>
    implements _$$PayConfirmCreatingErrorStateImplCopyWith<$Res> {
  __$$PayConfirmCreatingErrorStateImplCopyWithImpl(
      _$PayConfirmCreatingErrorStateImpl _value,
      $Res Function(_$PayConfirmCreatingErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PayConfirmCreatingErrorStateImpl(
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

class _$PayConfirmCreatingErrorStateImpl extends _PayConfirmCreatingErrorState {
  const _$PayConfirmCreatingErrorStateImpl(
      {required this.phoneNumber, required this.errorMessage})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PayConfirmState.creatingPaymentError(phoneNumber: $phoneNumber, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayConfirmCreatingErrorStateImpl &&
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
  _$$PayConfirmCreatingErrorStateImplCopyWith<
          _$PayConfirmCreatingErrorStateImpl>
      get copyWith => __$$PayConfirmCreatingErrorStateImplCopyWithImpl<
          _$PayConfirmCreatingErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) creatingPayment,
    required TResult Function(String phoneNumber, String? errorMessage)
        creatingPaymentError,
    required TResult Function(String phoneNumber, String? code)
        creatingPaymentSuccess,
    required TResult Function(String phoneNumber, String code)
        confirmingPayment,
    required TResult Function(String phoneNumber, String code)
        confirmingPaymentSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        confirmingPaymentError,
  }) {
    return creatingPaymentError(phoneNumber, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? creatingPayment,
    TResult? Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult? Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult? Function(String phoneNumber, String code)? confirmingPayment,
    TResult? Function(String phoneNumber, String code)?
        confirmingPaymentSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
  }) {
    return creatingPaymentError?.call(phoneNumber, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? creatingPayment,
    TResult Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult Function(String phoneNumber, String code)? confirmingPayment,
    TResult Function(String phoneNumber, String code)? confirmingPaymentSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (creatingPaymentError != null) {
      return creatingPaymentError(phoneNumber, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayConfirmInitialState value) initial,
    required TResult Function(PayCreatingState value) creatingPayment,
    required TResult Function(_PayConfirmCreatingErrorState value)
        creatingPaymentError,
    required TResult Function(_PayConfirmCreatingSuccessState value)
        creatingPaymentSuccess,
    required TResult Function(PayConfirmingState value) confirmingPayment,
    required TResult Function(_PayConfirmSuccessState value)
        confirmingPaymentSuccess,
    required TResult Function(_PayConfirmErrorState value)
        confirmingPaymentError,
  }) {
    return creatingPaymentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayConfirmInitialState value)? initial,
    TResult? Function(PayCreatingState value)? creatingPayment,
    TResult? Function(_PayConfirmCreatingErrorState value)?
        creatingPaymentError,
    TResult? Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult? Function(PayConfirmingState value)? confirmingPayment,
    TResult? Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult? Function(_PayConfirmErrorState value)? confirmingPaymentError,
  }) {
    return creatingPaymentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayConfirmInitialState value)? initial,
    TResult Function(PayCreatingState value)? creatingPayment,
    TResult Function(_PayConfirmCreatingErrorState value)? creatingPaymentError,
    TResult Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult Function(PayConfirmingState value)? confirmingPayment,
    TResult Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult Function(_PayConfirmErrorState value)? confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (creatingPaymentError != null) {
      return creatingPaymentError(this);
    }
    return orElse();
  }
}

abstract class _PayConfirmCreatingErrorState extends PayConfirmState {
  const factory _PayConfirmCreatingErrorState(
          {required final String phoneNumber,
          required final String? errorMessage}) =
      _$PayConfirmCreatingErrorStateImpl;
  const _PayConfirmCreatingErrorState._() : super._();

  @override
  String get phoneNumber;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PayConfirmCreatingErrorStateImplCopyWith<
          _$PayConfirmCreatingErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayConfirmCreatingSuccessStateImplCopyWith<$Res>
    implements $PayConfirmStateCopyWith<$Res> {
  factory _$$PayConfirmCreatingSuccessStateImplCopyWith(
          _$PayConfirmCreatingSuccessStateImpl value,
          $Res Function(_$PayConfirmCreatingSuccessStateImpl) then) =
      __$$PayConfirmCreatingSuccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String? code});
}

/// @nodoc
class __$$PayConfirmCreatingSuccessStateImplCopyWithImpl<$Res>
    extends _$PayConfirmStateCopyWithImpl<$Res,
        _$PayConfirmCreatingSuccessStateImpl>
    implements _$$PayConfirmCreatingSuccessStateImplCopyWith<$Res> {
  __$$PayConfirmCreatingSuccessStateImplCopyWithImpl(
      _$PayConfirmCreatingSuccessStateImpl _value,
      $Res Function(_$PayConfirmCreatingSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = freezed,
  }) {
    return _then(_$PayConfirmCreatingSuccessStateImpl(
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

class _$PayConfirmCreatingSuccessStateImpl
    extends _PayConfirmCreatingSuccessState {
  const _$PayConfirmCreatingSuccessStateImpl(
      {required this.phoneNumber, required this.code})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String? code;

  @override
  String toString() {
    return 'PayConfirmState.creatingPaymentSuccess(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayConfirmCreatingSuccessStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayConfirmCreatingSuccessStateImplCopyWith<
          _$PayConfirmCreatingSuccessStateImpl>
      get copyWith => __$$PayConfirmCreatingSuccessStateImplCopyWithImpl<
          _$PayConfirmCreatingSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) creatingPayment,
    required TResult Function(String phoneNumber, String? errorMessage)
        creatingPaymentError,
    required TResult Function(String phoneNumber, String? code)
        creatingPaymentSuccess,
    required TResult Function(String phoneNumber, String code)
        confirmingPayment,
    required TResult Function(String phoneNumber, String code)
        confirmingPaymentSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        confirmingPaymentError,
  }) {
    return creatingPaymentSuccess(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? creatingPayment,
    TResult? Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult? Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult? Function(String phoneNumber, String code)? confirmingPayment,
    TResult? Function(String phoneNumber, String code)?
        confirmingPaymentSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
  }) {
    return creatingPaymentSuccess?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? creatingPayment,
    TResult Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult Function(String phoneNumber, String code)? confirmingPayment,
    TResult Function(String phoneNumber, String code)? confirmingPaymentSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (creatingPaymentSuccess != null) {
      return creatingPaymentSuccess(phoneNumber, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayConfirmInitialState value) initial,
    required TResult Function(PayCreatingState value) creatingPayment,
    required TResult Function(_PayConfirmCreatingErrorState value)
        creatingPaymentError,
    required TResult Function(_PayConfirmCreatingSuccessState value)
        creatingPaymentSuccess,
    required TResult Function(PayConfirmingState value) confirmingPayment,
    required TResult Function(_PayConfirmSuccessState value)
        confirmingPaymentSuccess,
    required TResult Function(_PayConfirmErrorState value)
        confirmingPaymentError,
  }) {
    return creatingPaymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayConfirmInitialState value)? initial,
    TResult? Function(PayCreatingState value)? creatingPayment,
    TResult? Function(_PayConfirmCreatingErrorState value)?
        creatingPaymentError,
    TResult? Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult? Function(PayConfirmingState value)? confirmingPayment,
    TResult? Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult? Function(_PayConfirmErrorState value)? confirmingPaymentError,
  }) {
    return creatingPaymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayConfirmInitialState value)? initial,
    TResult Function(PayCreatingState value)? creatingPayment,
    TResult Function(_PayConfirmCreatingErrorState value)? creatingPaymentError,
    TResult Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult Function(PayConfirmingState value)? confirmingPayment,
    TResult Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult Function(_PayConfirmErrorState value)? confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (creatingPaymentSuccess != null) {
      return creatingPaymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _PayConfirmCreatingSuccessState extends PayConfirmState {
  const factory _PayConfirmCreatingSuccessState(
      {required final String phoneNumber,
      required final String? code}) = _$PayConfirmCreatingSuccessStateImpl;
  const _PayConfirmCreatingSuccessState._() : super._();

  @override
  String get phoneNumber;
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$PayConfirmCreatingSuccessStateImplCopyWith<
          _$PayConfirmCreatingSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayConfirmingStateImplCopyWith<$Res>
    implements $PayConfirmStateCopyWith<$Res> {
  factory _$$PayConfirmingStateImplCopyWith(_$PayConfirmingStateImpl value,
          $Res Function(_$PayConfirmingStateImpl) then) =
      __$$PayConfirmingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$PayConfirmingStateImplCopyWithImpl<$Res>
    extends _$PayConfirmStateCopyWithImpl<$Res, _$PayConfirmingStateImpl>
    implements _$$PayConfirmingStateImplCopyWith<$Res> {
  __$$PayConfirmingStateImplCopyWithImpl(_$PayConfirmingStateImpl _value,
      $Res Function(_$PayConfirmingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_$PayConfirmingStateImpl(
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

class _$PayConfirmingStateImpl extends PayConfirmingState {
  const _$PayConfirmingStateImpl(
      {required this.phoneNumber, required this.code})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'PayConfirmState.confirmingPayment(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayConfirmingStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayConfirmingStateImplCopyWith<_$PayConfirmingStateImpl> get copyWith =>
      __$$PayConfirmingStateImplCopyWithImpl<_$PayConfirmingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) creatingPayment,
    required TResult Function(String phoneNumber, String? errorMessage)
        creatingPaymentError,
    required TResult Function(String phoneNumber, String? code)
        creatingPaymentSuccess,
    required TResult Function(String phoneNumber, String code)
        confirmingPayment,
    required TResult Function(String phoneNumber, String code)
        confirmingPaymentSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        confirmingPaymentError,
  }) {
    return confirmingPayment(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? creatingPayment,
    TResult? Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult? Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult? Function(String phoneNumber, String code)? confirmingPayment,
    TResult? Function(String phoneNumber, String code)?
        confirmingPaymentSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
  }) {
    return confirmingPayment?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? creatingPayment,
    TResult Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult Function(String phoneNumber, String code)? confirmingPayment,
    TResult Function(String phoneNumber, String code)? confirmingPaymentSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (confirmingPayment != null) {
      return confirmingPayment(phoneNumber, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayConfirmInitialState value) initial,
    required TResult Function(PayCreatingState value) creatingPayment,
    required TResult Function(_PayConfirmCreatingErrorState value)
        creatingPaymentError,
    required TResult Function(_PayConfirmCreatingSuccessState value)
        creatingPaymentSuccess,
    required TResult Function(PayConfirmingState value) confirmingPayment,
    required TResult Function(_PayConfirmSuccessState value)
        confirmingPaymentSuccess,
    required TResult Function(_PayConfirmErrorState value)
        confirmingPaymentError,
  }) {
    return confirmingPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayConfirmInitialState value)? initial,
    TResult? Function(PayCreatingState value)? creatingPayment,
    TResult? Function(_PayConfirmCreatingErrorState value)?
        creatingPaymentError,
    TResult? Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult? Function(PayConfirmingState value)? confirmingPayment,
    TResult? Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult? Function(_PayConfirmErrorState value)? confirmingPaymentError,
  }) {
    return confirmingPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayConfirmInitialState value)? initial,
    TResult Function(PayCreatingState value)? creatingPayment,
    TResult Function(_PayConfirmCreatingErrorState value)? creatingPaymentError,
    TResult Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult Function(PayConfirmingState value)? confirmingPayment,
    TResult Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult Function(_PayConfirmErrorState value)? confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (confirmingPayment != null) {
      return confirmingPayment(this);
    }
    return orElse();
  }
}

abstract class PayConfirmingState extends PayConfirmState {
  const factory PayConfirmingState(
      {required final String phoneNumber,
      required final String code}) = _$PayConfirmingStateImpl;
  const PayConfirmingState._() : super._();

  @override
  String get phoneNumber;
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$PayConfirmingStateImplCopyWith<_$PayConfirmingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayConfirmSuccessStateImplCopyWith<$Res>
    implements $PayConfirmStateCopyWith<$Res> {
  factory _$$PayConfirmSuccessStateImplCopyWith(
          _$PayConfirmSuccessStateImpl value,
          $Res Function(_$PayConfirmSuccessStateImpl) then) =
      __$$PayConfirmSuccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$PayConfirmSuccessStateImplCopyWithImpl<$Res>
    extends _$PayConfirmStateCopyWithImpl<$Res, _$PayConfirmSuccessStateImpl>
    implements _$$PayConfirmSuccessStateImplCopyWith<$Res> {
  __$$PayConfirmSuccessStateImplCopyWithImpl(
      _$PayConfirmSuccessStateImpl _value,
      $Res Function(_$PayConfirmSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_$PayConfirmSuccessStateImpl(
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

class _$PayConfirmSuccessStateImpl extends _PayConfirmSuccessState {
  const _$PayConfirmSuccessStateImpl(
      {required this.phoneNumber, required this.code})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'PayConfirmState.confirmingPaymentSuccess(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayConfirmSuccessStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayConfirmSuccessStateImplCopyWith<_$PayConfirmSuccessStateImpl>
      get copyWith => __$$PayConfirmSuccessStateImplCopyWithImpl<
          _$PayConfirmSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) creatingPayment,
    required TResult Function(String phoneNumber, String? errorMessage)
        creatingPaymentError,
    required TResult Function(String phoneNumber, String? code)
        creatingPaymentSuccess,
    required TResult Function(String phoneNumber, String code)
        confirmingPayment,
    required TResult Function(String phoneNumber, String code)
        confirmingPaymentSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        confirmingPaymentError,
  }) {
    return confirmingPaymentSuccess(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? creatingPayment,
    TResult? Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult? Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult? Function(String phoneNumber, String code)? confirmingPayment,
    TResult? Function(String phoneNumber, String code)?
        confirmingPaymentSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
  }) {
    return confirmingPaymentSuccess?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? creatingPayment,
    TResult Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult Function(String phoneNumber, String code)? confirmingPayment,
    TResult Function(String phoneNumber, String code)? confirmingPaymentSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (confirmingPaymentSuccess != null) {
      return confirmingPaymentSuccess(phoneNumber, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayConfirmInitialState value) initial,
    required TResult Function(PayCreatingState value) creatingPayment,
    required TResult Function(_PayConfirmCreatingErrorState value)
        creatingPaymentError,
    required TResult Function(_PayConfirmCreatingSuccessState value)
        creatingPaymentSuccess,
    required TResult Function(PayConfirmingState value) confirmingPayment,
    required TResult Function(_PayConfirmSuccessState value)
        confirmingPaymentSuccess,
    required TResult Function(_PayConfirmErrorState value)
        confirmingPaymentError,
  }) {
    return confirmingPaymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayConfirmInitialState value)? initial,
    TResult? Function(PayCreatingState value)? creatingPayment,
    TResult? Function(_PayConfirmCreatingErrorState value)?
        creatingPaymentError,
    TResult? Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult? Function(PayConfirmingState value)? confirmingPayment,
    TResult? Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult? Function(_PayConfirmErrorState value)? confirmingPaymentError,
  }) {
    return confirmingPaymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayConfirmInitialState value)? initial,
    TResult Function(PayCreatingState value)? creatingPayment,
    TResult Function(_PayConfirmCreatingErrorState value)? creatingPaymentError,
    TResult Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult Function(PayConfirmingState value)? confirmingPayment,
    TResult Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult Function(_PayConfirmErrorState value)? confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (confirmingPaymentSuccess != null) {
      return confirmingPaymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _PayConfirmSuccessState extends PayConfirmState {
  const factory _PayConfirmSuccessState(
      {required final String phoneNumber,
      required final String code}) = _$PayConfirmSuccessStateImpl;
  const _PayConfirmSuccessState._() : super._();

  @override
  String get phoneNumber;
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$PayConfirmSuccessStateImplCopyWith<_$PayConfirmSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayConfirmErrorStateImplCopyWith<$Res>
    implements $PayConfirmStateCopyWith<$Res> {
  factory _$$PayConfirmErrorStateImplCopyWith(_$PayConfirmErrorStateImpl value,
          $Res Function(_$PayConfirmErrorStateImpl) then) =
      __$$PayConfirmErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String code, String? errorMessage});
}

/// @nodoc
class __$$PayConfirmErrorStateImplCopyWithImpl<$Res>
    extends _$PayConfirmStateCopyWithImpl<$Res, _$PayConfirmErrorStateImpl>
    implements _$$PayConfirmErrorStateImplCopyWith<$Res> {
  __$$PayConfirmErrorStateImplCopyWithImpl(_$PayConfirmErrorStateImpl _value,
      $Res Function(_$PayConfirmErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PayConfirmErrorStateImpl(
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

class _$PayConfirmErrorStateImpl extends _PayConfirmErrorState {
  const _$PayConfirmErrorStateImpl(
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
    return 'PayConfirmState.confirmingPaymentError(phoneNumber: $phoneNumber, code: $code, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayConfirmErrorStateImpl &&
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
  _$$PayConfirmErrorStateImplCopyWith<_$PayConfirmErrorStateImpl>
      get copyWith =>
          __$$PayConfirmErrorStateImplCopyWithImpl<_$PayConfirmErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(String phoneNumber) creatingPayment,
    required TResult Function(String phoneNumber, String? errorMessage)
        creatingPaymentError,
    required TResult Function(String phoneNumber, String? code)
        creatingPaymentSuccess,
    required TResult Function(String phoneNumber, String code)
        confirmingPayment,
    required TResult Function(String phoneNumber, String code)
        confirmingPaymentSuccess,
    required TResult Function(
            String phoneNumber, String code, String? errorMessage)
        confirmingPaymentError,
  }) {
    return confirmingPaymentError(phoneNumber, code, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? initial,
    TResult? Function(String phoneNumber)? creatingPayment,
    TResult? Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult? Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult? Function(String phoneNumber, String code)? confirmingPayment,
    TResult? Function(String phoneNumber, String code)?
        confirmingPaymentSuccess,
    TResult? Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
  }) {
    return confirmingPaymentError?.call(phoneNumber, code, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber)? creatingPayment,
    TResult Function(String phoneNumber, String? errorMessage)?
        creatingPaymentError,
    TResult Function(String phoneNumber, String? code)? creatingPaymentSuccess,
    TResult Function(String phoneNumber, String code)? confirmingPayment,
    TResult Function(String phoneNumber, String code)? confirmingPaymentSuccess,
    TResult Function(String phoneNumber, String code, String? errorMessage)?
        confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (confirmingPaymentError != null) {
      return confirmingPaymentError(phoneNumber, code, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayConfirmInitialState value) initial,
    required TResult Function(PayCreatingState value) creatingPayment,
    required TResult Function(_PayConfirmCreatingErrorState value)
        creatingPaymentError,
    required TResult Function(_PayConfirmCreatingSuccessState value)
        creatingPaymentSuccess,
    required TResult Function(PayConfirmingState value) confirmingPayment,
    required TResult Function(_PayConfirmSuccessState value)
        confirmingPaymentSuccess,
    required TResult Function(_PayConfirmErrorState value)
        confirmingPaymentError,
  }) {
    return confirmingPaymentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayConfirmInitialState value)? initial,
    TResult? Function(PayCreatingState value)? creatingPayment,
    TResult? Function(_PayConfirmCreatingErrorState value)?
        creatingPaymentError,
    TResult? Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult? Function(PayConfirmingState value)? confirmingPayment,
    TResult? Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult? Function(_PayConfirmErrorState value)? confirmingPaymentError,
  }) {
    return confirmingPaymentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayConfirmInitialState value)? initial,
    TResult Function(PayCreatingState value)? creatingPayment,
    TResult Function(_PayConfirmCreatingErrorState value)? creatingPaymentError,
    TResult Function(_PayConfirmCreatingSuccessState value)?
        creatingPaymentSuccess,
    TResult Function(PayConfirmingState value)? confirmingPayment,
    TResult Function(_PayConfirmSuccessState value)? confirmingPaymentSuccess,
    TResult Function(_PayConfirmErrorState value)? confirmingPaymentError,
    required TResult orElse(),
  }) {
    if (confirmingPaymentError != null) {
      return confirmingPaymentError(this);
    }
    return orElse();
  }
}

abstract class _PayConfirmErrorState extends PayConfirmState {
  const factory _PayConfirmErrorState(
      {required final String phoneNumber,
      required final String code,
      required final String? errorMessage}) = _$PayConfirmErrorStateImpl;
  const _PayConfirmErrorState._() : super._();

  @override
  String get phoneNumber;
  String get code;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PayConfirmErrorStateImplCopyWith<_$PayConfirmErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
