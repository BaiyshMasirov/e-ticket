// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_by_type_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsByTypeState {
  List<EventDto> get events => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events) loadingSuccessEmpty,
    required TResult Function(List<EventDto> events, String? errorMessage)
        loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events)? initial,
    TResult? Function(List<EventDto> events)? loadingInProgress,
    TResult? Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult? Function(List<EventDto> events, String? errorMessage)?
        loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events)? initial,
    TResult Function(List<EventDto> events)? loadingInProgress,
    TResult Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult Function(List<EventDto> events, String? errorMessage)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsByTypeState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingSuccessEmpty value)
        loadingSuccessEmpty,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByTypeState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByTypeState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsByTypeStateCopyWith<EventsByTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsByTypeStateCopyWith<$Res> {
  factory $EventsByTypeStateCopyWith(
          EventsByTypeState value, $Res Function(EventsByTypeState) then) =
      _$EventsByTypeStateCopyWithImpl<$Res, EventsByTypeState>;
  @useResult
  $Res call({List<EventDto> events});
}

/// @nodoc
class _$EventsByTypeStateCopyWithImpl<$Res, $Val extends EventsByTypeState>
    implements $EventsByTypeStateCopyWith<$Res> {
  _$EventsByTypeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventsByTypeStateImplCopyWith<$Res>
    implements $EventsByTypeStateCopyWith<$Res> {
  factory _$$EventsByTypeStateImplCopyWith(_$EventsByTypeStateImpl value,
          $Res Function(_$EventsByTypeStateImpl) then) =
      __$$EventsByTypeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventDto> events});
}

/// @nodoc
class __$$EventsByTypeStateImplCopyWithImpl<$Res>
    extends _$EventsByTypeStateCopyWithImpl<$Res, _$EventsByTypeStateImpl>
    implements _$$EventsByTypeStateImplCopyWith<$Res> {
  __$$EventsByTypeStateImplCopyWithImpl(_$EventsByTypeStateImpl _value,
      $Res Function(_$EventsByTypeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$EventsByTypeStateImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
    ));
  }
}

/// @nodoc

class _$EventsByTypeStateImpl extends _EventsByTypeState {
  const _$EventsByTypeStateImpl({required final List<EventDto> events})
      : _events = events,
        super._();

  final List<EventDto> _events;
  @override
  List<EventDto> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsByTypeState.initial(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsByTypeStateImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsByTypeStateImplCopyWith<_$EventsByTypeStateImpl> get copyWith =>
      __$$EventsByTypeStateImplCopyWithImpl<_$EventsByTypeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events) loadingSuccessEmpty,
    required TResult Function(List<EventDto> events, String? errorMessage)
        loadingError,
  }) {
    return initial(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events)? initial,
    TResult? Function(List<EventDto> events)? loadingInProgress,
    TResult? Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult? Function(List<EventDto> events, String? errorMessage)?
        loadingError,
  }) {
    return initial?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events)? initial,
    TResult Function(List<EventDto> events)? loadingInProgress,
    TResult Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult Function(List<EventDto> events, String? errorMessage)? loadingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsByTypeState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingSuccessEmpty value)
        loadingSuccessEmpty,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByTypeState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByTypeState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EventsByTypeState extends EventsByTypeState {
  const factory _EventsByTypeState({required final List<EventDto> events}) =
      _$EventsByTypeStateImpl;
  const _EventsByTypeState._() : super._();

  @override
  List<EventDto> get events;
  @override
  @JsonKey(ignore: true)
  _$$EventsByTypeStateImplCopyWith<_$EventsByTypeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadingInProgressImplCopyWith<$Res>
    implements $EventsByTypeStateCopyWith<$Res> {
  factory _$$SearchLoadingInProgressImplCopyWith(
          _$SearchLoadingInProgressImpl value,
          $Res Function(_$SearchLoadingInProgressImpl) then) =
      __$$SearchLoadingInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventDto> events});
}

/// @nodoc
class __$$SearchLoadingInProgressImplCopyWithImpl<$Res>
    extends _$EventsByTypeStateCopyWithImpl<$Res, _$SearchLoadingInProgressImpl>
    implements _$$SearchLoadingInProgressImplCopyWith<$Res> {
  __$$SearchLoadingInProgressImplCopyWithImpl(
      _$SearchLoadingInProgressImpl _value,
      $Res Function(_$SearchLoadingInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$SearchLoadingInProgressImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
    ));
  }
}

/// @nodoc

class _$SearchLoadingInProgressImpl extends _SearchLoadingInProgress {
  const _$SearchLoadingInProgressImpl({required final List<EventDto> events})
      : _events = events,
        super._();

  final List<EventDto> _events;
  @override
  List<EventDto> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsByTypeState.loadingInProgress(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingInProgressImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadingInProgressImplCopyWith<_$SearchLoadingInProgressImpl>
      get copyWith => __$$SearchLoadingInProgressImplCopyWithImpl<
          _$SearchLoadingInProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events) loadingSuccessEmpty,
    required TResult Function(List<EventDto> events, String? errorMessage)
        loadingError,
  }) {
    return loadingInProgress(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events)? initial,
    TResult? Function(List<EventDto> events)? loadingInProgress,
    TResult? Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult? Function(List<EventDto> events, String? errorMessage)?
        loadingError,
  }) {
    return loadingInProgress?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events)? initial,
    TResult Function(List<EventDto> events)? loadingInProgress,
    TResult Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult Function(List<EventDto> events, String? errorMessage)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsByTypeState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingSuccessEmpty value)
        loadingSuccessEmpty,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByTypeState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByTypeState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingInProgress extends EventsByTypeState {
  const factory _SearchLoadingInProgress(
      {required final List<EventDto> events}) = _$SearchLoadingInProgressImpl;
  const _SearchLoadingInProgress._() : super._();

  @override
  List<EventDto> get events;
  @override
  @JsonKey(ignore: true)
  _$$SearchLoadingInProgressImplCopyWith<_$SearchLoadingInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadingSuccessImplCopyWith<$Res>
    implements $EventsByTypeStateCopyWith<$Res> {
  factory _$$SearchLoadingSuccessImplCopyWith(_$SearchLoadingSuccessImpl value,
          $Res Function(_$SearchLoadingSuccessImpl) then) =
      __$$SearchLoadingSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventDto> events, bool isNextPageAvailable});
}

/// @nodoc
class __$$SearchLoadingSuccessImplCopyWithImpl<$Res>
    extends _$EventsByTypeStateCopyWithImpl<$Res, _$SearchLoadingSuccessImpl>
    implements _$$SearchLoadingSuccessImplCopyWith<$Res> {
  __$$SearchLoadingSuccessImplCopyWithImpl(_$SearchLoadingSuccessImpl _value,
      $Res Function(_$SearchLoadingSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$SearchLoadingSuccessImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchLoadingSuccessImpl extends _SearchLoadingSuccess {
  const _$SearchLoadingSuccessImpl(
      {required final List<EventDto> events, required this.isNextPageAvailable})
      : _events = events,
        super._();

  final List<EventDto> _events;
  @override
  List<EventDto> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'EventsByTypeState.loadingSuccess(events: $events, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingSuccessImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_events), isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadingSuccessImplCopyWith<_$SearchLoadingSuccessImpl>
      get copyWith =>
          __$$SearchLoadingSuccessImplCopyWithImpl<_$SearchLoadingSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events) loadingSuccessEmpty,
    required TResult Function(List<EventDto> events, String? errorMessage)
        loadingError,
  }) {
    return loadingSuccess(events, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events)? initial,
    TResult? Function(List<EventDto> events)? loadingInProgress,
    TResult? Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult? Function(List<EventDto> events, String? errorMessage)?
        loadingError,
  }) {
    return loadingSuccess?.call(events, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events)? initial,
    TResult Function(List<EventDto> events)? loadingInProgress,
    TResult Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult Function(List<EventDto> events, String? errorMessage)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(events, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsByTypeState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingSuccessEmpty value)
        loadingSuccessEmpty,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByTypeState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByTypeState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingSuccess extends EventsByTypeState {
  const factory _SearchLoadingSuccess(
      {required final List<EventDto> events,
      required final bool isNextPageAvailable}) = _$SearchLoadingSuccessImpl;
  const _SearchLoadingSuccess._() : super._();

  @override
  List<EventDto> get events;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$SearchLoadingSuccessImplCopyWith<_$SearchLoadingSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadingSuccessEmptyImplCopyWith<$Res>
    implements $EventsByTypeStateCopyWith<$Res> {
  factory _$$SearchLoadingSuccessEmptyImplCopyWith(
          _$SearchLoadingSuccessEmptyImpl value,
          $Res Function(_$SearchLoadingSuccessEmptyImpl) then) =
      __$$SearchLoadingSuccessEmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventDto> events});
}

/// @nodoc
class __$$SearchLoadingSuccessEmptyImplCopyWithImpl<$Res>
    extends _$EventsByTypeStateCopyWithImpl<$Res,
        _$SearchLoadingSuccessEmptyImpl>
    implements _$$SearchLoadingSuccessEmptyImplCopyWith<$Res> {
  __$$SearchLoadingSuccessEmptyImplCopyWithImpl(
      _$SearchLoadingSuccessEmptyImpl _value,
      $Res Function(_$SearchLoadingSuccessEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$SearchLoadingSuccessEmptyImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
    ));
  }
}

/// @nodoc

class _$SearchLoadingSuccessEmptyImpl extends _SearchLoadingSuccessEmpty {
  const _$SearchLoadingSuccessEmptyImpl({required final List<EventDto> events})
      : _events = events,
        super._();

  final List<EventDto> _events;
  @override
  List<EventDto> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsByTypeState.loadingSuccessEmpty(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingSuccessEmptyImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadingSuccessEmptyImplCopyWith<_$SearchLoadingSuccessEmptyImpl>
      get copyWith => __$$SearchLoadingSuccessEmptyImplCopyWithImpl<
          _$SearchLoadingSuccessEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events) loadingSuccessEmpty,
    required TResult Function(List<EventDto> events, String? errorMessage)
        loadingError,
  }) {
    return loadingSuccessEmpty(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events)? initial,
    TResult? Function(List<EventDto> events)? loadingInProgress,
    TResult? Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult? Function(List<EventDto> events, String? errorMessage)?
        loadingError,
  }) {
    return loadingSuccessEmpty?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events)? initial,
    TResult Function(List<EventDto> events)? loadingInProgress,
    TResult Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult Function(List<EventDto> events, String? errorMessage)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingSuccessEmpty != null) {
      return loadingSuccessEmpty(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsByTypeState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingSuccessEmpty value)
        loadingSuccessEmpty,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) {
    return loadingSuccessEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByTypeState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) {
    return loadingSuccessEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByTypeState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingSuccessEmpty != null) {
      return loadingSuccessEmpty(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingSuccessEmpty extends EventsByTypeState {
  const factory _SearchLoadingSuccessEmpty(
      {required final List<EventDto> events}) = _$SearchLoadingSuccessEmptyImpl;
  const _SearchLoadingSuccessEmpty._() : super._();

  @override
  List<EventDto> get events;
  @override
  @JsonKey(ignore: true)
  _$$SearchLoadingSuccessEmptyImplCopyWith<_$SearchLoadingSuccessEmptyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadingErrorImplCopyWith<$Res>
    implements $EventsByTypeStateCopyWith<$Res> {
  factory _$$SearchLoadingErrorImplCopyWith(_$SearchLoadingErrorImpl value,
          $Res Function(_$SearchLoadingErrorImpl) then) =
      __$$SearchLoadingErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventDto> events, String? errorMessage});
}

/// @nodoc
class __$$SearchLoadingErrorImplCopyWithImpl<$Res>
    extends _$EventsByTypeStateCopyWithImpl<$Res, _$SearchLoadingErrorImpl>
    implements _$$SearchLoadingErrorImplCopyWith<$Res> {
  __$$SearchLoadingErrorImplCopyWithImpl(_$SearchLoadingErrorImpl _value,
      $Res Function(_$SearchLoadingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SearchLoadingErrorImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchLoadingErrorImpl extends _SearchLoadingError {
  const _$SearchLoadingErrorImpl(
      {required final List<EventDto> events, this.errorMessage})
      : _events = events,
        super._();

  final List<EventDto> _events;
  @override
  List<EventDto> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'EventsByTypeState.loadingError(events: $events, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingErrorImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_events), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadingErrorImplCopyWith<_$SearchLoadingErrorImpl> get copyWith =>
      __$$SearchLoadingErrorImplCopyWithImpl<_$SearchLoadingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events) loadingSuccessEmpty,
    required TResult Function(List<EventDto> events, String? errorMessage)
        loadingError,
  }) {
    return loadingError(events, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events)? initial,
    TResult? Function(List<EventDto> events)? loadingInProgress,
    TResult? Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult? Function(List<EventDto> events, String? errorMessage)?
        loadingError,
  }) {
    return loadingError?.call(events, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events)? initial,
    TResult Function(List<EventDto> events)? loadingInProgress,
    TResult Function(List<EventDto> events, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events)? loadingSuccessEmpty,
    TResult Function(List<EventDto> events, String? errorMessage)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(events, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsByTypeState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingSuccessEmpty value)
        loadingSuccessEmpty,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsByTypeState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsByTypeState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingSuccessEmpty value)? loadingSuccessEmpty,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingError extends EventsByTypeState {
  const factory _SearchLoadingError(
      {required final List<EventDto> events,
      final String? errorMessage}) = _$SearchLoadingErrorImpl;
  const _SearchLoadingError._() : super._();

  @override
  List<EventDto> get events;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SearchLoadingErrorImplCopyWith<_$SearchLoadingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
