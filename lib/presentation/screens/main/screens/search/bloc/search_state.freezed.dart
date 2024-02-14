// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  List<EventDto> get events => throw _privateConstructorUsedError;
  EventsFilter get eventsFilter => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<EventDto> events, EventsFilter eventsFilter, String searchText)
        initial,
    required TResult Function(
            List<EventDto> events, EventsFilter eventsFilter, String searchText)
        loadingInProgress,
    required TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)
        loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        initial,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        loadingInProgress,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)?
        loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        initial,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        loadingInProgress,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)?
        loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<EventDto> events, EventsFilter eventsFilter, String searchText});

  $EventsFilterCopyWith<$Res> get eventsFilter;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? eventsFilter = null,
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
      eventsFilter: null == eventsFilter
          ? _value.eventsFilter
          : eventsFilter // ignore: cast_nullable_to_non_nullable
              as EventsFilter,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventsFilterCopyWith<$Res> get eventsFilter {
    return $EventsFilterCopyWith<$Res>(_value.eventsFilter, (value) {
      return _then(_value.copyWith(eventsFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EventDto> events, EventsFilter eventsFilter, String searchText});

  @override
  $EventsFilterCopyWith<$Res> get eventsFilter;
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? eventsFilter = null,
    Object? searchText = null,
  }) {
    return _then(_$SearchStateImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
      eventsFilter: null == eventsFilter
          ? _value.eventsFilter
          : eventsFilter // ignore: cast_nullable_to_non_nullable
              as EventsFilter,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl extends _SearchState {
  const _$SearchStateImpl(
      {required final List<EventDto> events,
      required this.eventsFilter,
      required this.searchText})
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
  final EventsFilter eventsFilter;
  @override
  final String searchText;

  @override
  String toString() {
    return 'SearchState.initial(events: $events, eventsFilter: $eventsFilter, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.eventsFilter, eventsFilter) ||
                other.eventsFilter == eventsFilter) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_events), eventsFilter, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<EventDto> events, EventsFilter eventsFilter, String searchText)
        initial,
    required TResult Function(
            List<EventDto> events, EventsFilter eventsFilter, String searchText)
        loadingInProgress,
    required TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)
        loadingError,
  }) {
    return initial(events, eventsFilter, searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        initial,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        loadingInProgress,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)?
        loadingError,
  }) {
    return initial?.call(events, eventsFilter, searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        initial,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        loadingInProgress,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)?
        loadingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(events, eventsFilter, searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchState extends SearchState {
  const factory _SearchState(
      {required final List<EventDto> events,
      required final EventsFilter eventsFilter,
      required final String searchText}) = _$SearchStateImpl;
  const _SearchState._() : super._();

  @override
  List<EventDto> get events;
  @override
  EventsFilter get eventsFilter;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadingInProgressImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchLoadingInProgressImplCopyWith(
          _$SearchLoadingInProgressImpl value,
          $Res Function(_$SearchLoadingInProgressImpl) then) =
      __$$SearchLoadingInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EventDto> events, EventsFilter eventsFilter, String searchText});

  @override
  $EventsFilterCopyWith<$Res> get eventsFilter;
}

/// @nodoc
class __$$SearchLoadingInProgressImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingInProgressImpl>
    implements _$$SearchLoadingInProgressImplCopyWith<$Res> {
  __$$SearchLoadingInProgressImplCopyWithImpl(
      _$SearchLoadingInProgressImpl _value,
      $Res Function(_$SearchLoadingInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? eventsFilter = null,
    Object? searchText = null,
  }) {
    return _then(_$SearchLoadingInProgressImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
      eventsFilter: null == eventsFilter
          ? _value.eventsFilter
          : eventsFilter // ignore: cast_nullable_to_non_nullable
              as EventsFilter,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchLoadingInProgressImpl extends _SearchLoadingInProgress {
  const _$SearchLoadingInProgressImpl(
      {required final List<EventDto> events,
      required this.eventsFilter,
      required this.searchText})
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
  final EventsFilter eventsFilter;
  @override
  final String searchText;

  @override
  String toString() {
    return 'SearchState.loadingInProgress(events: $events, eventsFilter: $eventsFilter, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingInProgressImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.eventsFilter, eventsFilter) ||
                other.eventsFilter == eventsFilter) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_events), eventsFilter, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadingInProgressImplCopyWith<_$SearchLoadingInProgressImpl>
      get copyWith => __$$SearchLoadingInProgressImplCopyWithImpl<
          _$SearchLoadingInProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<EventDto> events, EventsFilter eventsFilter, String searchText)
        initial,
    required TResult Function(
            List<EventDto> events, EventsFilter eventsFilter, String searchText)
        loadingInProgress,
    required TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)
        loadingError,
  }) {
    return loadingInProgress(events, eventsFilter, searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        initial,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        loadingInProgress,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)?
        loadingError,
  }) {
    return loadingInProgress?.call(events, eventsFilter, searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        initial,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        loadingInProgress,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)?
        loadingError,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(events, eventsFilter, searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingInProgress extends SearchState {
  const factory _SearchLoadingInProgress(
      {required final List<EventDto> events,
      required final EventsFilter eventsFilter,
      required final String searchText}) = _$SearchLoadingInProgressImpl;
  const _SearchLoadingInProgress._() : super._();

  @override
  List<EventDto> get events;
  @override
  EventsFilter get eventsFilter;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$SearchLoadingInProgressImplCopyWith<_$SearchLoadingInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadingSuccessImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchLoadingSuccessImplCopyWith(_$SearchLoadingSuccessImpl value,
          $Res Function(_$SearchLoadingSuccessImpl) then) =
      __$$SearchLoadingSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EventDto> events,
      EventsFilter eventsFilter,
      String searchText,
      bool isNextPageAvailable});

  @override
  $EventsFilterCopyWith<$Res> get eventsFilter;
}

/// @nodoc
class __$$SearchLoadingSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingSuccessImpl>
    implements _$$SearchLoadingSuccessImplCopyWith<$Res> {
  __$$SearchLoadingSuccessImplCopyWithImpl(_$SearchLoadingSuccessImpl _value,
      $Res Function(_$SearchLoadingSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? eventsFilter = null,
    Object? searchText = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$SearchLoadingSuccessImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
      eventsFilter: null == eventsFilter
          ? _value.eventsFilter
          : eventsFilter // ignore: cast_nullable_to_non_nullable
              as EventsFilter,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
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
      {required final List<EventDto> events,
      required this.eventsFilter,
      required this.searchText,
      required this.isNextPageAvailable})
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
  final EventsFilter eventsFilter;
  @override
  final String searchText;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'SearchState.loadingSuccess(events: $events, eventsFilter: $eventsFilter, searchText: $searchText, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingSuccessImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.eventsFilter, eventsFilter) ||
                other.eventsFilter == eventsFilter) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      eventsFilter,
      searchText,
      isNextPageAvailable);

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
    required TResult Function(
            List<EventDto> events, EventsFilter eventsFilter, String searchText)
        initial,
    required TResult Function(
            List<EventDto> events, EventsFilter eventsFilter, String searchText)
        loadingInProgress,
    required TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)
        loadingError,
  }) {
    return loadingSuccess(
        events, eventsFilter, searchText, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        initial,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        loadingInProgress,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)?
        loadingError,
  }) {
    return loadingSuccess?.call(
        events, eventsFilter, searchText, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        initial,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        loadingInProgress,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)?
        loadingError,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(
          events, eventsFilter, searchText, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingSuccess extends SearchState {
  const factory _SearchLoadingSuccess(
      {required final List<EventDto> events,
      required final EventsFilter eventsFilter,
      required final String searchText,
      required final bool isNextPageAvailable}) = _$SearchLoadingSuccessImpl;
  const _SearchLoadingSuccess._() : super._();

  @override
  List<EventDto> get events;
  @override
  EventsFilter get eventsFilter;
  @override
  String get searchText;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$SearchLoadingSuccessImplCopyWith<_$SearchLoadingSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadingErrorImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchLoadingErrorImplCopyWith(_$SearchLoadingErrorImpl value,
          $Res Function(_$SearchLoadingErrorImpl) then) =
      __$$SearchLoadingErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EventDto> events,
      EventsFilter eventsFilter,
      String searchText,
      String? errorMessage});

  @override
  $EventsFilterCopyWith<$Res> get eventsFilter;
}

/// @nodoc
class __$$SearchLoadingErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingErrorImpl>
    implements _$$SearchLoadingErrorImplCopyWith<$Res> {
  __$$SearchLoadingErrorImplCopyWithImpl(_$SearchLoadingErrorImpl _value,
      $Res Function(_$SearchLoadingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? eventsFilter = null,
    Object? searchText = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SearchLoadingErrorImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
      eventsFilter: null == eventsFilter
          ? _value.eventsFilter
          : eventsFilter // ignore: cast_nullable_to_non_nullable
              as EventsFilter,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
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
      {required final List<EventDto> events,
      required this.eventsFilter,
      required this.searchText,
      this.errorMessage})
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
  final EventsFilter eventsFilter;
  @override
  final String searchText;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchState.loadingError(events: $events, eventsFilter: $eventsFilter, searchText: $searchText, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingErrorImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.eventsFilter, eventsFilter) ||
                other.eventsFilter == eventsFilter) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      eventsFilter,
      searchText,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadingErrorImplCopyWith<_$SearchLoadingErrorImpl> get copyWith =>
      __$$SearchLoadingErrorImplCopyWithImpl<_$SearchLoadingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<EventDto> events, EventsFilter eventsFilter, String searchText)
        initial,
    required TResult Function(
            List<EventDto> events, EventsFilter eventsFilter, String searchText)
        loadingInProgress,
    required TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)
        loadingSuccess,
    required TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)
        loadingError,
  }) {
    return loadingError(events, eventsFilter, searchText, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        initial,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        loadingInProgress,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)?
        loadingSuccess,
    TResult? Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)?
        loadingError,
  }) {
    return loadingError?.call(events, eventsFilter, searchText, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        initial,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText)?
        loadingInProgress,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, bool isNextPageAvailable)?
        loadingSuccess,
    TResult Function(List<EventDto> events, EventsFilter eventsFilter,
            String searchText, String? errorMessage)?
        loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(events, eventsFilter, searchText, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchState value) initial,
    required TResult Function(_SearchLoadingInProgress value) loadingInProgress,
    required TResult Function(_SearchLoadingSuccess value) loadingSuccess,
    required TResult Function(_SearchLoadingError value) loadingError,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchState value)? initial,
    TResult? Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult? Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult? Function(_SearchLoadingError value)? loadingError,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchState value)? initial,
    TResult Function(_SearchLoadingInProgress value)? loadingInProgress,
    TResult Function(_SearchLoadingSuccess value)? loadingSuccess,
    TResult Function(_SearchLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingError extends SearchState {
  const factory _SearchLoadingError(
      {required final List<EventDto> events,
      required final EventsFilter eventsFilter,
      required final String searchText,
      final String? errorMessage}) = _$SearchLoadingErrorImpl;
  const _SearchLoadingError._() : super._();

  @override
  List<EventDto> get events;
  @override
  EventsFilter get eventsFilter;
  @override
  String get searchText;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SearchLoadingErrorImplCopyWith<_$SearchLoadingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
