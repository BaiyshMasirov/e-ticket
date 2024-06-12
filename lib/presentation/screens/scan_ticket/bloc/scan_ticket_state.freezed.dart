// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_ticket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScanTicketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String ticketQrCode) checkingState,
    required TResult Function(String? errorMessage) checkError,
    required TResult Function(String ticketQrCode, String successMessage)
        checkSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String ticketQrCode)? checkingState,
    TResult? Function(String? errorMessage)? checkError,
    TResult? Function(String ticketQrCode, String successMessage)? checkSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String ticketQrCode)? checkingState,
    TResult Function(String? errorMessage)? checkError,
    TResult Function(String ticketQrCode, String successMessage)? checkSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanTicketInitialState value) initial,
    required TResult Function(ScanTicketCheckingState value) checkingState,
    required TResult Function(_ScanTicketCheckErrorState value) checkError,
    required TResult Function(_ScanTicketCheckSuccessState value) checkSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanTicketInitialState value)? initial,
    TResult? Function(ScanTicketCheckingState value)? checkingState,
    TResult? Function(_ScanTicketCheckErrorState value)? checkError,
    TResult? Function(_ScanTicketCheckSuccessState value)? checkSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanTicketInitialState value)? initial,
    TResult Function(ScanTicketCheckingState value)? checkingState,
    TResult Function(_ScanTicketCheckErrorState value)? checkError,
    TResult Function(_ScanTicketCheckSuccessState value)? checkSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanTicketStateCopyWith<$Res> {
  factory $ScanTicketStateCopyWith(
          ScanTicketState value, $Res Function(ScanTicketState) then) =
      _$ScanTicketStateCopyWithImpl<$Res, ScanTicketState>;
}

/// @nodoc
class _$ScanTicketStateCopyWithImpl<$Res, $Val extends ScanTicketState>
    implements $ScanTicketStateCopyWith<$Res> {
  _$ScanTicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScanTicketInitialStateImplCopyWith<$Res> {
  factory _$$ScanTicketInitialStateImplCopyWith(
          _$ScanTicketInitialStateImpl value,
          $Res Function(_$ScanTicketInitialStateImpl) then) =
      __$$ScanTicketInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanTicketInitialStateImplCopyWithImpl<$Res>
    extends _$ScanTicketStateCopyWithImpl<$Res, _$ScanTicketInitialStateImpl>
    implements _$$ScanTicketInitialStateImplCopyWith<$Res> {
  __$$ScanTicketInitialStateImplCopyWithImpl(
      _$ScanTicketInitialStateImpl _value,
      $Res Function(_$ScanTicketInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScanTicketInitialStateImpl extends _ScanTicketInitialState {
  const _$ScanTicketInitialStateImpl() : super._();

  @override
  String toString() {
    return 'ScanTicketState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanTicketInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String ticketQrCode) checkingState,
    required TResult Function(String? errorMessage) checkError,
    required TResult Function(String ticketQrCode, String successMessage)
        checkSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String ticketQrCode)? checkingState,
    TResult? Function(String? errorMessage)? checkError,
    TResult? Function(String ticketQrCode, String successMessage)? checkSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String ticketQrCode)? checkingState,
    TResult Function(String? errorMessage)? checkError,
    TResult Function(String ticketQrCode, String successMessage)? checkSuccess,
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
    required TResult Function(_ScanTicketInitialState value) initial,
    required TResult Function(ScanTicketCheckingState value) checkingState,
    required TResult Function(_ScanTicketCheckErrorState value) checkError,
    required TResult Function(_ScanTicketCheckSuccessState value) checkSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanTicketInitialState value)? initial,
    TResult? Function(ScanTicketCheckingState value)? checkingState,
    TResult? Function(_ScanTicketCheckErrorState value)? checkError,
    TResult? Function(_ScanTicketCheckSuccessState value)? checkSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanTicketInitialState value)? initial,
    TResult Function(ScanTicketCheckingState value)? checkingState,
    TResult Function(_ScanTicketCheckErrorState value)? checkError,
    TResult Function(_ScanTicketCheckSuccessState value)? checkSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ScanTicketInitialState extends ScanTicketState {
  const factory _ScanTicketInitialState() = _$ScanTicketInitialStateImpl;
  const _ScanTicketInitialState._() : super._();
}

/// @nodoc
abstract class _$$ScanTicketCheckingStateImplCopyWith<$Res> {
  factory _$$ScanTicketCheckingStateImplCopyWith(
          _$ScanTicketCheckingStateImpl value,
          $Res Function(_$ScanTicketCheckingStateImpl) then) =
      __$$ScanTicketCheckingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ticketQrCode});
}

/// @nodoc
class __$$ScanTicketCheckingStateImplCopyWithImpl<$Res>
    extends _$ScanTicketStateCopyWithImpl<$Res, _$ScanTicketCheckingStateImpl>
    implements _$$ScanTicketCheckingStateImplCopyWith<$Res> {
  __$$ScanTicketCheckingStateImplCopyWithImpl(
      _$ScanTicketCheckingStateImpl _value,
      $Res Function(_$ScanTicketCheckingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketQrCode = null,
  }) {
    return _then(_$ScanTicketCheckingStateImpl(
      ticketQrCode: null == ticketQrCode
          ? _value.ticketQrCode
          : ticketQrCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScanTicketCheckingStateImpl extends ScanTicketCheckingState {
  const _$ScanTicketCheckingStateImpl({required this.ticketQrCode}) : super._();

  @override
  final String ticketQrCode;

  @override
  String toString() {
    return 'ScanTicketState.checkingState(ticketQrCode: $ticketQrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanTicketCheckingStateImpl &&
            (identical(other.ticketQrCode, ticketQrCode) ||
                other.ticketQrCode == ticketQrCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketQrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanTicketCheckingStateImplCopyWith<_$ScanTicketCheckingStateImpl>
      get copyWith => __$$ScanTicketCheckingStateImplCopyWithImpl<
          _$ScanTicketCheckingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String ticketQrCode) checkingState,
    required TResult Function(String? errorMessage) checkError,
    required TResult Function(String ticketQrCode, String successMessage)
        checkSuccess,
  }) {
    return checkingState(ticketQrCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String ticketQrCode)? checkingState,
    TResult? Function(String? errorMessage)? checkError,
    TResult? Function(String ticketQrCode, String successMessage)? checkSuccess,
  }) {
    return checkingState?.call(ticketQrCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String ticketQrCode)? checkingState,
    TResult Function(String? errorMessage)? checkError,
    TResult Function(String ticketQrCode, String successMessage)? checkSuccess,
    required TResult orElse(),
  }) {
    if (checkingState != null) {
      return checkingState(ticketQrCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanTicketInitialState value) initial,
    required TResult Function(ScanTicketCheckingState value) checkingState,
    required TResult Function(_ScanTicketCheckErrorState value) checkError,
    required TResult Function(_ScanTicketCheckSuccessState value) checkSuccess,
  }) {
    return checkingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanTicketInitialState value)? initial,
    TResult? Function(ScanTicketCheckingState value)? checkingState,
    TResult? Function(_ScanTicketCheckErrorState value)? checkError,
    TResult? Function(_ScanTicketCheckSuccessState value)? checkSuccess,
  }) {
    return checkingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanTicketInitialState value)? initial,
    TResult Function(ScanTicketCheckingState value)? checkingState,
    TResult Function(_ScanTicketCheckErrorState value)? checkError,
    TResult Function(_ScanTicketCheckSuccessState value)? checkSuccess,
    required TResult orElse(),
  }) {
    if (checkingState != null) {
      return checkingState(this);
    }
    return orElse();
  }
}

abstract class ScanTicketCheckingState extends ScanTicketState {
  const factory ScanTicketCheckingState({required final String ticketQrCode}) =
      _$ScanTicketCheckingStateImpl;
  const ScanTicketCheckingState._() : super._();

  String get ticketQrCode;
  @JsonKey(ignore: true)
  _$$ScanTicketCheckingStateImplCopyWith<_$ScanTicketCheckingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanTicketCheckErrorStateImplCopyWith<$Res> {
  factory _$$ScanTicketCheckErrorStateImplCopyWith(
          _$ScanTicketCheckErrorStateImpl value,
          $Res Function(_$ScanTicketCheckErrorStateImpl) then) =
      __$$ScanTicketCheckErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ScanTicketCheckErrorStateImplCopyWithImpl<$Res>
    extends _$ScanTicketStateCopyWithImpl<$Res, _$ScanTicketCheckErrorStateImpl>
    implements _$$ScanTicketCheckErrorStateImplCopyWith<$Res> {
  __$$ScanTicketCheckErrorStateImplCopyWithImpl(
      _$ScanTicketCheckErrorStateImpl _value,
      $Res Function(_$ScanTicketCheckErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ScanTicketCheckErrorStateImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ScanTicketCheckErrorStateImpl extends _ScanTicketCheckErrorState {
  const _$ScanTicketCheckErrorStateImpl({required this.errorMessage})
      : super._();

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ScanTicketState.checkError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanTicketCheckErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanTicketCheckErrorStateImplCopyWith<_$ScanTicketCheckErrorStateImpl>
      get copyWith => __$$ScanTicketCheckErrorStateImplCopyWithImpl<
          _$ScanTicketCheckErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String ticketQrCode) checkingState,
    required TResult Function(String? errorMessage) checkError,
    required TResult Function(String ticketQrCode, String successMessage)
        checkSuccess,
  }) {
    return checkError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String ticketQrCode)? checkingState,
    TResult? Function(String? errorMessage)? checkError,
    TResult? Function(String ticketQrCode, String successMessage)? checkSuccess,
  }) {
    return checkError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String ticketQrCode)? checkingState,
    TResult Function(String? errorMessage)? checkError,
    TResult Function(String ticketQrCode, String successMessage)? checkSuccess,
    required TResult orElse(),
  }) {
    if (checkError != null) {
      return checkError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanTicketInitialState value) initial,
    required TResult Function(ScanTicketCheckingState value) checkingState,
    required TResult Function(_ScanTicketCheckErrorState value) checkError,
    required TResult Function(_ScanTicketCheckSuccessState value) checkSuccess,
  }) {
    return checkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanTicketInitialState value)? initial,
    TResult? Function(ScanTicketCheckingState value)? checkingState,
    TResult? Function(_ScanTicketCheckErrorState value)? checkError,
    TResult? Function(_ScanTicketCheckSuccessState value)? checkSuccess,
  }) {
    return checkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanTicketInitialState value)? initial,
    TResult Function(ScanTicketCheckingState value)? checkingState,
    TResult Function(_ScanTicketCheckErrorState value)? checkError,
    TResult Function(_ScanTicketCheckSuccessState value)? checkSuccess,
    required TResult orElse(),
  }) {
    if (checkError != null) {
      return checkError(this);
    }
    return orElse();
  }
}

abstract class _ScanTicketCheckErrorState extends ScanTicketState {
  const factory _ScanTicketCheckErrorState(
      {required final String? errorMessage}) = _$ScanTicketCheckErrorStateImpl;
  const _ScanTicketCheckErrorState._() : super._();

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ScanTicketCheckErrorStateImplCopyWith<_$ScanTicketCheckErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanTicketCheckSuccessStateImplCopyWith<$Res> {
  factory _$$ScanTicketCheckSuccessStateImplCopyWith(
          _$ScanTicketCheckSuccessStateImpl value,
          $Res Function(_$ScanTicketCheckSuccessStateImpl) then) =
      __$$ScanTicketCheckSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ticketQrCode, String successMessage});
}

/// @nodoc
class __$$ScanTicketCheckSuccessStateImplCopyWithImpl<$Res>
    extends _$ScanTicketStateCopyWithImpl<$Res,
        _$ScanTicketCheckSuccessStateImpl>
    implements _$$ScanTicketCheckSuccessStateImplCopyWith<$Res> {
  __$$ScanTicketCheckSuccessStateImplCopyWithImpl(
      _$ScanTicketCheckSuccessStateImpl _value,
      $Res Function(_$ScanTicketCheckSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketQrCode = null,
    Object? successMessage = null,
  }) {
    return _then(_$ScanTicketCheckSuccessStateImpl(
      ticketQrCode: null == ticketQrCode
          ? _value.ticketQrCode
          : ticketQrCode // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScanTicketCheckSuccessStateImpl extends _ScanTicketCheckSuccessState {
  const _$ScanTicketCheckSuccessStateImpl(
      {required this.ticketQrCode, required this.successMessage})
      : super._();

  @override
  final String ticketQrCode;
  @override
  final String successMessage;

  @override
  String toString() {
    return 'ScanTicketState.checkSuccess(ticketQrCode: $ticketQrCode, successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanTicketCheckSuccessStateImpl &&
            (identical(other.ticketQrCode, ticketQrCode) ||
                other.ticketQrCode == ticketQrCode) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketQrCode, successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanTicketCheckSuccessStateImplCopyWith<_$ScanTicketCheckSuccessStateImpl>
      get copyWith => __$$ScanTicketCheckSuccessStateImplCopyWithImpl<
          _$ScanTicketCheckSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String ticketQrCode) checkingState,
    required TResult Function(String? errorMessage) checkError,
    required TResult Function(String ticketQrCode, String successMessage)
        checkSuccess,
  }) {
    return checkSuccess(ticketQrCode, successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String ticketQrCode)? checkingState,
    TResult? Function(String? errorMessage)? checkError,
    TResult? Function(String ticketQrCode, String successMessage)? checkSuccess,
  }) {
    return checkSuccess?.call(ticketQrCode, successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String ticketQrCode)? checkingState,
    TResult Function(String? errorMessage)? checkError,
    TResult Function(String ticketQrCode, String successMessage)? checkSuccess,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess(ticketQrCode, successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanTicketInitialState value) initial,
    required TResult Function(ScanTicketCheckingState value) checkingState,
    required TResult Function(_ScanTicketCheckErrorState value) checkError,
    required TResult Function(_ScanTicketCheckSuccessState value) checkSuccess,
  }) {
    return checkSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanTicketInitialState value)? initial,
    TResult? Function(ScanTicketCheckingState value)? checkingState,
    TResult? Function(_ScanTicketCheckErrorState value)? checkError,
    TResult? Function(_ScanTicketCheckSuccessState value)? checkSuccess,
  }) {
    return checkSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanTicketInitialState value)? initial,
    TResult Function(ScanTicketCheckingState value)? checkingState,
    TResult Function(_ScanTicketCheckErrorState value)? checkError,
    TResult Function(_ScanTicketCheckSuccessState value)? checkSuccess,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess(this);
    }
    return orElse();
  }
}

abstract class _ScanTicketCheckSuccessState extends ScanTicketState {
  const factory _ScanTicketCheckSuccessState(
          {required final String ticketQrCode,
          required final String successMessage}) =
      _$ScanTicketCheckSuccessStateImpl;
  const _ScanTicketCheckSuccessState._() : super._();

  String get ticketQrCode;
  String get successMessage;
  @JsonKey(ignore: true)
  _$$ScanTicketCheckSuccessStateImplCopyWith<_$ScanTicketCheckSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
