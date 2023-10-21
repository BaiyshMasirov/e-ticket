// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snackbar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SnackbarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) error,
    required TResult Function(String message) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? error,
    TResult? Function(String message)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SnackbarInitial value) initial,
    required TResult Function(_SnackbarError value) error,
    required TResult Function(_SnackbarSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SnackbarInitial value)? initial,
    TResult? Function(_SnackbarError value)? error,
    TResult? Function(_SnackbarSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SnackbarInitial value)? initial,
    TResult Function(_SnackbarError value)? error,
    TResult Function(_SnackbarSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackbarStateCopyWith<$Res> {
  factory $SnackbarStateCopyWith(
          SnackbarState value, $Res Function(SnackbarState) then) =
      _$SnackbarStateCopyWithImpl<$Res, SnackbarState>;
}

/// @nodoc
class _$SnackbarStateCopyWithImpl<$Res, $Val extends SnackbarState>
    implements $SnackbarStateCopyWith<$Res> {
  _$SnackbarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SnackbarInitialImplCopyWith<$Res> {
  factory _$$SnackbarInitialImplCopyWith(_$SnackbarInitialImpl value,
          $Res Function(_$SnackbarInitialImpl) then) =
      __$$SnackbarInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SnackbarInitialImplCopyWithImpl<$Res>
    extends _$SnackbarStateCopyWithImpl<$Res, _$SnackbarInitialImpl>
    implements _$$SnackbarInitialImplCopyWith<$Res> {
  __$$SnackbarInitialImplCopyWithImpl(
      _$SnackbarInitialImpl _value, $Res Function(_$SnackbarInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SnackbarInitialImpl extends _SnackbarInitial {
  const _$SnackbarInitialImpl() : super._();

  @override
  String toString() {
    return 'SnackbarState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SnackbarInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) error,
    required TResult Function(String message) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? error,
    TResult? Function(String message)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(String message)? success,
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
    required TResult Function(_SnackbarInitial value) initial,
    required TResult Function(_SnackbarError value) error,
    required TResult Function(_SnackbarSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SnackbarInitial value)? initial,
    TResult? Function(_SnackbarError value)? error,
    TResult? Function(_SnackbarSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SnackbarInitial value)? initial,
    TResult Function(_SnackbarError value)? error,
    TResult Function(_SnackbarSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SnackbarInitial extends SnackbarState {
  const factory _SnackbarInitial() = _$SnackbarInitialImpl;
  const _SnackbarInitial._() : super._();
}

/// @nodoc
abstract class _$$SnackbarErrorImplCopyWith<$Res> {
  factory _$$SnackbarErrorImplCopyWith(
          _$SnackbarErrorImpl value, $Res Function(_$SnackbarErrorImpl) then) =
      __$$SnackbarErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SnackbarErrorImplCopyWithImpl<$Res>
    extends _$SnackbarStateCopyWithImpl<$Res, _$SnackbarErrorImpl>
    implements _$$SnackbarErrorImplCopyWith<$Res> {
  __$$SnackbarErrorImplCopyWithImpl(
      _$SnackbarErrorImpl _value, $Res Function(_$SnackbarErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SnackbarErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SnackbarErrorImpl extends _SnackbarError {
  const _$SnackbarErrorImpl({required this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'SnackbarState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackbarErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackbarErrorImplCopyWith<_$SnackbarErrorImpl> get copyWith =>
      __$$SnackbarErrorImplCopyWithImpl<_$SnackbarErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) error,
    required TResult Function(String message) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? error,
    TResult? Function(String message)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SnackbarInitial value) initial,
    required TResult Function(_SnackbarError value) error,
    required TResult Function(_SnackbarSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SnackbarInitial value)? initial,
    TResult? Function(_SnackbarError value)? error,
    TResult? Function(_SnackbarSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SnackbarInitial value)? initial,
    TResult Function(_SnackbarError value)? error,
    TResult Function(_SnackbarSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SnackbarError extends SnackbarState {
  const factory _SnackbarError({required final String? message}) =
      _$SnackbarErrorImpl;
  const _SnackbarError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$SnackbarErrorImplCopyWith<_$SnackbarErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SnackbarSuccessImplCopyWith<$Res> {
  factory _$$SnackbarSuccessImplCopyWith(_$SnackbarSuccessImpl value,
          $Res Function(_$SnackbarSuccessImpl) then) =
      __$$SnackbarSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SnackbarSuccessImplCopyWithImpl<$Res>
    extends _$SnackbarStateCopyWithImpl<$Res, _$SnackbarSuccessImpl>
    implements _$$SnackbarSuccessImplCopyWith<$Res> {
  __$$SnackbarSuccessImplCopyWithImpl(
      _$SnackbarSuccessImpl _value, $Res Function(_$SnackbarSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SnackbarSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SnackbarSuccessImpl extends _SnackbarSuccess {
  const _$SnackbarSuccessImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SnackbarState.success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackbarSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackbarSuccessImplCopyWith<_$SnackbarSuccessImpl> get copyWith =>
      __$$SnackbarSuccessImplCopyWithImpl<_$SnackbarSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) error,
    required TResult Function(String message) success,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? error,
    TResult? Function(String message)? success,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SnackbarInitial value) initial,
    required TResult Function(_SnackbarError value) error,
    required TResult Function(_SnackbarSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SnackbarInitial value)? initial,
    TResult? Function(_SnackbarError value)? error,
    TResult? Function(_SnackbarSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SnackbarInitial value)? initial,
    TResult Function(_SnackbarError value)? error,
    TResult Function(_SnackbarSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SnackbarSuccess extends SnackbarState {
  const factory _SnackbarSuccess({required final String message}) =
      _$SnackbarSuccessImpl;
  const _SnackbarSuccess._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$SnackbarSuccessImplCopyWith<_$SnackbarSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
