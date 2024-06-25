// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_code_timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailCodeTimerState {
  int get duration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) runInProgress,
    required TResult Function(int duration) runComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? runInProgress,
    TResult? Function(int duration)? runComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? runInProgress,
    TResult Function(int duration)? runComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailCodeTimerStateInitial value) initial,
    required TResult Function(_EmailCodeTimerStateRunInProgress value)
        runInProgress,
    required TResult Function(_EmailCodeTimerStateRunComplete value)
        runComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailCodeTimerStateInitial value)? initial,
    TResult? Function(_EmailCodeTimerStateRunInProgress value)? runInProgress,
    TResult? Function(_EmailCodeTimerStateRunComplete value)? runComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailCodeTimerStateInitial value)? initial,
    TResult Function(_EmailCodeTimerStateRunInProgress value)? runInProgress,
    TResult Function(_EmailCodeTimerStateRunComplete value)? runComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailCodeTimerStateCopyWith<EmailCodeTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailCodeTimerStateCopyWith<$Res> {
  factory $EmailCodeTimerStateCopyWith(
          EmailCodeTimerState value, $Res Function(EmailCodeTimerState) then) =
      _$EmailCodeTimerStateCopyWithImpl<$Res, EmailCodeTimerState>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class _$EmailCodeTimerStateCopyWithImpl<$Res, $Val extends EmailCodeTimerState>
    implements $EmailCodeTimerStateCopyWith<$Res> {
  _$EmailCodeTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailCodeTimerStateInitialImplCopyWith<$Res>
    implements $EmailCodeTimerStateCopyWith<$Res> {
  factory _$$EmailCodeTimerStateInitialImplCopyWith(
          _$EmailCodeTimerStateInitialImpl value,
          $Res Function(_$EmailCodeTimerStateInitialImpl) then) =
      __$$EmailCodeTimerStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$EmailCodeTimerStateInitialImplCopyWithImpl<$Res>
    extends _$EmailCodeTimerStateCopyWithImpl<$Res,
        _$EmailCodeTimerStateInitialImpl>
    implements _$$EmailCodeTimerStateInitialImplCopyWith<$Res> {
  __$$EmailCodeTimerStateInitialImplCopyWithImpl(
      _$EmailCodeTimerStateInitialImpl _value,
      $Res Function(_$EmailCodeTimerStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$EmailCodeTimerStateInitialImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EmailCodeTimerStateInitialImpl extends _EmailCodeTimerStateInitial {
  const _$EmailCodeTimerStateInitialImpl({required this.duration}) : super._();

  @override
  final int duration;

  @override
  String toString() {
    return 'EmailCodeTimerState.initial(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailCodeTimerStateInitialImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailCodeTimerStateInitialImplCopyWith<_$EmailCodeTimerStateInitialImpl>
      get copyWith => __$$EmailCodeTimerStateInitialImplCopyWithImpl<
          _$EmailCodeTimerStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) runInProgress,
    required TResult Function(int duration) runComplete,
  }) {
    return initial(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? runInProgress,
    TResult? Function(int duration)? runComplete,
  }) {
    return initial?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? runInProgress,
    TResult Function(int duration)? runComplete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailCodeTimerStateInitial value) initial,
    required TResult Function(_EmailCodeTimerStateRunInProgress value)
        runInProgress,
    required TResult Function(_EmailCodeTimerStateRunComplete value)
        runComplete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailCodeTimerStateInitial value)? initial,
    TResult? Function(_EmailCodeTimerStateRunInProgress value)? runInProgress,
    TResult? Function(_EmailCodeTimerStateRunComplete value)? runComplete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailCodeTimerStateInitial value)? initial,
    TResult Function(_EmailCodeTimerStateRunInProgress value)? runInProgress,
    TResult Function(_EmailCodeTimerStateRunComplete value)? runComplete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EmailCodeTimerStateInitial extends EmailCodeTimerState {
  const factory _EmailCodeTimerStateInitial({required final int duration}) =
      _$EmailCodeTimerStateInitialImpl;
  const _EmailCodeTimerStateInitial._() : super._();

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$EmailCodeTimerStateInitialImplCopyWith<_$EmailCodeTimerStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailCodeTimerStateRunInProgressImplCopyWith<$Res>
    implements $EmailCodeTimerStateCopyWith<$Res> {
  factory _$$EmailCodeTimerStateRunInProgressImplCopyWith(
          _$EmailCodeTimerStateRunInProgressImpl value,
          $Res Function(_$EmailCodeTimerStateRunInProgressImpl) then) =
      __$$EmailCodeTimerStateRunInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$EmailCodeTimerStateRunInProgressImplCopyWithImpl<$Res>
    extends _$EmailCodeTimerStateCopyWithImpl<$Res,
        _$EmailCodeTimerStateRunInProgressImpl>
    implements _$$EmailCodeTimerStateRunInProgressImplCopyWith<$Res> {
  __$$EmailCodeTimerStateRunInProgressImplCopyWithImpl(
      _$EmailCodeTimerStateRunInProgressImpl _value,
      $Res Function(_$EmailCodeTimerStateRunInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$EmailCodeTimerStateRunInProgressImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EmailCodeTimerStateRunInProgressImpl
    extends _EmailCodeTimerStateRunInProgress {
  const _$EmailCodeTimerStateRunInProgressImpl({required this.duration})
      : super._();

  @override
  final int duration;

  @override
  String toString() {
    return 'EmailCodeTimerState.runInProgress(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailCodeTimerStateRunInProgressImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailCodeTimerStateRunInProgressImplCopyWith<
          _$EmailCodeTimerStateRunInProgressImpl>
      get copyWith => __$$EmailCodeTimerStateRunInProgressImplCopyWithImpl<
          _$EmailCodeTimerStateRunInProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) runInProgress,
    required TResult Function(int duration) runComplete,
  }) {
    return runInProgress(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? runInProgress,
    TResult? Function(int duration)? runComplete,
  }) {
    return runInProgress?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? runInProgress,
    TResult Function(int duration)? runComplete,
    required TResult orElse(),
  }) {
    if (runInProgress != null) {
      return runInProgress(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailCodeTimerStateInitial value) initial,
    required TResult Function(_EmailCodeTimerStateRunInProgress value)
        runInProgress,
    required TResult Function(_EmailCodeTimerStateRunComplete value)
        runComplete,
  }) {
    return runInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailCodeTimerStateInitial value)? initial,
    TResult? Function(_EmailCodeTimerStateRunInProgress value)? runInProgress,
    TResult? Function(_EmailCodeTimerStateRunComplete value)? runComplete,
  }) {
    return runInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailCodeTimerStateInitial value)? initial,
    TResult Function(_EmailCodeTimerStateRunInProgress value)? runInProgress,
    TResult Function(_EmailCodeTimerStateRunComplete value)? runComplete,
    required TResult orElse(),
  }) {
    if (runInProgress != null) {
      return runInProgress(this);
    }
    return orElse();
  }
}

abstract class _EmailCodeTimerStateRunInProgress extends EmailCodeTimerState {
  const factory _EmailCodeTimerStateRunInProgress(
      {required final int duration}) = _$EmailCodeTimerStateRunInProgressImpl;
  const _EmailCodeTimerStateRunInProgress._() : super._();

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$EmailCodeTimerStateRunInProgressImplCopyWith<
          _$EmailCodeTimerStateRunInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailCodeTimerStateRunCompleteImplCopyWith<$Res>
    implements $EmailCodeTimerStateCopyWith<$Res> {
  factory _$$EmailCodeTimerStateRunCompleteImplCopyWith(
          _$EmailCodeTimerStateRunCompleteImpl value,
          $Res Function(_$EmailCodeTimerStateRunCompleteImpl) then) =
      __$$EmailCodeTimerStateRunCompleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$EmailCodeTimerStateRunCompleteImplCopyWithImpl<$Res>
    extends _$EmailCodeTimerStateCopyWithImpl<$Res,
        _$EmailCodeTimerStateRunCompleteImpl>
    implements _$$EmailCodeTimerStateRunCompleteImplCopyWith<$Res> {
  __$$EmailCodeTimerStateRunCompleteImplCopyWithImpl(
      _$EmailCodeTimerStateRunCompleteImpl _value,
      $Res Function(_$EmailCodeTimerStateRunCompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$EmailCodeTimerStateRunCompleteImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EmailCodeTimerStateRunCompleteImpl
    extends _EmailCodeTimerStateRunComplete {
  const _$EmailCodeTimerStateRunCompleteImpl({required this.duration})
      : super._();

  @override
  final int duration;

  @override
  String toString() {
    return 'EmailCodeTimerState.runComplete(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailCodeTimerStateRunCompleteImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailCodeTimerStateRunCompleteImplCopyWith<
          _$EmailCodeTimerStateRunCompleteImpl>
      get copyWith => __$$EmailCodeTimerStateRunCompleteImplCopyWithImpl<
          _$EmailCodeTimerStateRunCompleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) runInProgress,
    required TResult Function(int duration) runComplete,
  }) {
    return runComplete(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? runInProgress,
    TResult? Function(int duration)? runComplete,
  }) {
    return runComplete?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? runInProgress,
    TResult Function(int duration)? runComplete,
    required TResult orElse(),
  }) {
    if (runComplete != null) {
      return runComplete(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailCodeTimerStateInitial value) initial,
    required TResult Function(_EmailCodeTimerStateRunInProgress value)
        runInProgress,
    required TResult Function(_EmailCodeTimerStateRunComplete value)
        runComplete,
  }) {
    return runComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailCodeTimerStateInitial value)? initial,
    TResult? Function(_EmailCodeTimerStateRunInProgress value)? runInProgress,
    TResult? Function(_EmailCodeTimerStateRunComplete value)? runComplete,
  }) {
    return runComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailCodeTimerStateInitial value)? initial,
    TResult Function(_EmailCodeTimerStateRunInProgress value)? runInProgress,
    TResult Function(_EmailCodeTimerStateRunComplete value)? runComplete,
    required TResult orElse(),
  }) {
    if (runComplete != null) {
      return runComplete(this);
    }
    return orElse();
  }
}

abstract class _EmailCodeTimerStateRunComplete extends EmailCodeTimerState {
  const factory _EmailCodeTimerStateRunComplete({required final int duration}) =
      _$EmailCodeTimerStateRunCompleteImpl;
  const _EmailCodeTimerStateRunComplete._() : super._();

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$EmailCodeTimerStateRunCompleteImplCopyWith<
          _$EmailCodeTimerStateRunCompleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
