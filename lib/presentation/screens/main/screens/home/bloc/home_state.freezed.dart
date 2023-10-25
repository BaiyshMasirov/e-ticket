// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  List<EventDto> get events => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
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
    TResult Function(List<EventDto> events, String? errorMessage)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) initial,
    required TResult Function(_HomeLoadingInProgress value) loadingInProgress,
    required TResult Function(HomeLoadingSuccess value) loadingSuccess,
    required TResult Function(_HomeLoadingError value) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? initial,
    TResult? Function(_HomeLoadingInProgress value)? loadingInProgress,
    TResult? Function(HomeLoadingSuccess value)? loadingSuccess,
    TResult? Function(_HomeLoadingError value)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? initial,
    TResult Function(_HomeLoadingInProgress value)? loadingInProgress,
    TResult Function(HomeLoadingSuccess value)? loadingSuccess,
    TResult Function(_HomeLoadingError value)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<EventDto> events});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventDto> events});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$HomeStateImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl({required final List<EventDto> events})
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
    return 'HomeState.initial(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
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
    required TResult Function(_HomeState value) initial,
    required TResult Function(_HomeLoadingInProgress value) loadingInProgress,
    required TResult Function(HomeLoadingSuccess value) loadingSuccess,
    required TResult Function(_HomeLoadingError value) loadingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? initial,
    TResult? Function(_HomeLoadingInProgress value)? loadingInProgress,
    TResult? Function(HomeLoadingSuccess value)? loadingSuccess,
    TResult? Function(_HomeLoadingError value)? loadingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? initial,
    TResult Function(_HomeLoadingInProgress value)? loadingInProgress,
    TResult Function(HomeLoadingSuccess value)? loadingSuccess,
    TResult Function(_HomeLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeState extends HomeState {
  const factory _HomeState({required final List<EventDto> events}) =
      _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  List<EventDto> get events;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeLoadingInProgressImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeLoadingInProgressImplCopyWith(
          _$HomeLoadingInProgressImpl value,
          $Res Function(_$HomeLoadingInProgressImpl) then) =
      __$$HomeLoadingInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventDto> events});
}

/// @nodoc
class __$$HomeLoadingInProgressImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingInProgressImpl>
    implements _$$HomeLoadingInProgressImplCopyWith<$Res> {
  __$$HomeLoadingInProgressImplCopyWithImpl(_$HomeLoadingInProgressImpl _value,
      $Res Function(_$HomeLoadingInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$HomeLoadingInProgressImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
    ));
  }
}

/// @nodoc

class _$HomeLoadingInProgressImpl extends _HomeLoadingInProgress {
  const _$HomeLoadingInProgressImpl({required final List<EventDto> events})
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
    return 'HomeState.loadingInProgress(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadingInProgressImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadingInProgressImplCopyWith<_$HomeLoadingInProgressImpl>
      get copyWith => __$$HomeLoadingInProgressImplCopyWithImpl<
          _$HomeLoadingInProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
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
    required TResult Function(_HomeState value) initial,
    required TResult Function(_HomeLoadingInProgress value) loadingInProgress,
    required TResult Function(HomeLoadingSuccess value) loadingSuccess,
    required TResult Function(_HomeLoadingError value) loadingError,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? initial,
    TResult? Function(_HomeLoadingInProgress value)? loadingInProgress,
    TResult? Function(HomeLoadingSuccess value)? loadingSuccess,
    TResult? Function(_HomeLoadingError value)? loadingError,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? initial,
    TResult Function(_HomeLoadingInProgress value)? loadingInProgress,
    TResult Function(HomeLoadingSuccess value)? loadingSuccess,
    TResult Function(_HomeLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingInProgress extends HomeState {
  const factory _HomeLoadingInProgress({required final List<EventDto> events}) =
      _$HomeLoadingInProgressImpl;
  const _HomeLoadingInProgress._() : super._();

  @override
  List<EventDto> get events;
  @override
  @JsonKey(ignore: true)
  _$$HomeLoadingInProgressImplCopyWith<_$HomeLoadingInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeLoadingSuccessImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeLoadingSuccessImplCopyWith(_$HomeLoadingSuccessImpl value,
          $Res Function(_$HomeLoadingSuccessImpl) then) =
      __$$HomeLoadingSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventDto> events, bool isNextPageAvailable});
}

/// @nodoc
class __$$HomeLoadingSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingSuccessImpl>
    implements _$$HomeLoadingSuccessImplCopyWith<$Res> {
  __$$HomeLoadingSuccessImplCopyWithImpl(_$HomeLoadingSuccessImpl _value,
      $Res Function(_$HomeLoadingSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$HomeLoadingSuccessImpl(
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

class _$HomeLoadingSuccessImpl extends HomeLoadingSuccess {
  const _$HomeLoadingSuccessImpl(
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
    return 'HomeState.loadingSuccess(events: $events, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadingSuccessImpl &&
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
  _$$HomeLoadingSuccessImplCopyWith<_$HomeLoadingSuccessImpl> get copyWith =>
      __$$HomeLoadingSuccessImplCopyWithImpl<_$HomeLoadingSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
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
    required TResult Function(_HomeState value) initial,
    required TResult Function(_HomeLoadingInProgress value) loadingInProgress,
    required TResult Function(HomeLoadingSuccess value) loadingSuccess,
    required TResult Function(_HomeLoadingError value) loadingError,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? initial,
    TResult? Function(_HomeLoadingInProgress value)? loadingInProgress,
    TResult? Function(HomeLoadingSuccess value)? loadingSuccess,
    TResult? Function(_HomeLoadingError value)? loadingError,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? initial,
    TResult Function(_HomeLoadingInProgress value)? loadingInProgress,
    TResult Function(HomeLoadingSuccess value)? loadingSuccess,
    TResult Function(_HomeLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeLoadingSuccess extends HomeState {
  const factory HomeLoadingSuccess(
      {required final List<EventDto> events,
      required final bool isNextPageAvailable}) = _$HomeLoadingSuccessImpl;
  const HomeLoadingSuccess._() : super._();

  @override
  List<EventDto> get events;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$HomeLoadingSuccessImplCopyWith<_$HomeLoadingSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeLoadingErrorImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeLoadingErrorImplCopyWith(_$HomeLoadingErrorImpl value,
          $Res Function(_$HomeLoadingErrorImpl) then) =
      __$$HomeLoadingErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventDto> events, String? errorMessage});
}

/// @nodoc
class __$$HomeLoadingErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingErrorImpl>
    implements _$$HomeLoadingErrorImplCopyWith<$Res> {
  __$$HomeLoadingErrorImplCopyWithImpl(_$HomeLoadingErrorImpl _value,
      $Res Function(_$HomeLoadingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HomeLoadingErrorImpl(
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

class _$HomeLoadingErrorImpl extends _HomeLoadingError {
  const _$HomeLoadingErrorImpl(
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
    return 'HomeState.loadingError(events: $events, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadingErrorImpl &&
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
  _$$HomeLoadingErrorImplCopyWith<_$HomeLoadingErrorImpl> get copyWith =>
      __$$HomeLoadingErrorImplCopyWithImpl<_$HomeLoadingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventDto> events) initial,
    required TResult Function(List<EventDto> events) loadingInProgress,
    required TResult Function(List<EventDto> events, bool isNextPageAvailable)
        loadingSuccess,
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
    required TResult Function(_HomeState value) initial,
    required TResult Function(_HomeLoadingInProgress value) loadingInProgress,
    required TResult Function(HomeLoadingSuccess value) loadingSuccess,
    required TResult Function(_HomeLoadingError value) loadingError,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? initial,
    TResult? Function(_HomeLoadingInProgress value)? loadingInProgress,
    TResult? Function(HomeLoadingSuccess value)? loadingSuccess,
    TResult? Function(_HomeLoadingError value)? loadingError,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? initial,
    TResult Function(_HomeLoadingInProgress value)? loadingInProgress,
    TResult Function(HomeLoadingSuccess value)? loadingSuccess,
    TResult Function(_HomeLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingError extends HomeState {
  const factory _HomeLoadingError(
      {required final List<EventDto> events,
      final String? errorMessage}) = _$HomeLoadingErrorImpl;
  const _HomeLoadingError._() : super._();

  @override
  List<EventDto> get events;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$HomeLoadingErrorImplCopyWith<_$HomeLoadingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
