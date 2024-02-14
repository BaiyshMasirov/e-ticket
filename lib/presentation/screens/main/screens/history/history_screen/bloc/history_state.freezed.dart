// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryState {
  List<UserBookingsListDto> get bookingsList =>
      throw _privateConstructorUsedError;
  UserBookingsFilter get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)
        initial,
    required TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)
        loadInProgress,
    required TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)
        loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        initial,
    TResult? Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        loadInProgress,
    TResult? Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)?
        loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        initial,
    TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        loadInProgress,
    TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)?
        loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryStateInitial value) initial,
    required TResult Function(_HistoryStateProgress value) loadInProgress,
    required TResult Function(_HistoryStateSuccess value) loadSuccess,
    required TResult Function(_HistoryStateError value) loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateInitial value)? initial,
    TResult? Function(_HistoryStateProgress value)? loadInProgress,
    TResult? Function(_HistoryStateSuccess value)? loadSuccess,
    TResult? Function(_HistoryStateError value)? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateInitial value)? initial,
    TResult Function(_HistoryStateProgress value)? loadInProgress,
    TResult Function(_HistoryStateSuccess value)? loadSuccess,
    TResult Function(_HistoryStateError value)? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call(
      {List<UserBookingsListDto> bookingsList, UserBookingsFilter filter});

  $UserBookingsFilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsList = null,
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      bookingsList: null == bookingsList
          ? _value.bookingsList
          : bookingsList // ignore: cast_nullable_to_non_nullable
              as List<UserBookingsListDto>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as UserBookingsFilter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserBookingsFilterCopyWith<$Res> get filter {
    return $UserBookingsFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryStateInitialImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryStateInitialImplCopyWith(_$HistoryStateInitialImpl value,
          $Res Function(_$HistoryStateInitialImpl) then) =
      __$$HistoryStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserBookingsListDto> bookingsList, UserBookingsFilter filter});

  @override
  $UserBookingsFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$HistoryStateInitialImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryStateInitialImpl>
    implements _$$HistoryStateInitialImplCopyWith<$Res> {
  __$$HistoryStateInitialImplCopyWithImpl(_$HistoryStateInitialImpl _value,
      $Res Function(_$HistoryStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsList = null,
    Object? filter = null,
  }) {
    return _then(_$HistoryStateInitialImpl(
      bookingsList: null == bookingsList
          ? _value._bookingsList
          : bookingsList // ignore: cast_nullable_to_non_nullable
              as List<UserBookingsListDto>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as UserBookingsFilter,
    ));
  }
}

/// @nodoc

class _$HistoryStateInitialImpl extends _HistoryStateInitial {
  const _$HistoryStateInitialImpl(
      {required final List<UserBookingsListDto> bookingsList,
      required this.filter})
      : _bookingsList = bookingsList,
        super._();

  final List<UserBookingsListDto> _bookingsList;
  @override
  List<UserBookingsListDto> get bookingsList {
    if (_bookingsList is EqualUnmodifiableListView) return _bookingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsList);
  }

  @override
  final UserBookingsFilter filter;

  @override
  String toString() {
    return 'HistoryState.initial(bookingsList: $bookingsList, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStateInitialImpl &&
            const DeepCollectionEquality()
                .equals(other._bookingsList, _bookingsList) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bookingsList), filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStateInitialImplCopyWith<_$HistoryStateInitialImpl> get copyWith =>
      __$$HistoryStateInitialImplCopyWithImpl<_$HistoryStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)
        initial,
    required TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)
        loadInProgress,
    required TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)
        loadError,
  }) {
    return initial(bookingsList, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        initial,
    TResult? Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        loadInProgress,
    TResult? Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)?
        loadError,
  }) {
    return initial?.call(bookingsList, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        initial,
    TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        loadInProgress,
    TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)?
        loadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(bookingsList, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryStateInitial value) initial,
    required TResult Function(_HistoryStateProgress value) loadInProgress,
    required TResult Function(_HistoryStateSuccess value) loadSuccess,
    required TResult Function(_HistoryStateError value) loadError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateInitial value)? initial,
    TResult? Function(_HistoryStateProgress value)? loadInProgress,
    TResult? Function(_HistoryStateSuccess value)? loadSuccess,
    TResult? Function(_HistoryStateError value)? loadError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateInitial value)? initial,
    TResult Function(_HistoryStateProgress value)? loadInProgress,
    TResult Function(_HistoryStateSuccess value)? loadSuccess,
    TResult Function(_HistoryStateError value)? loadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HistoryStateInitial extends HistoryState {
  const factory _HistoryStateInitial(
      {required final List<UserBookingsListDto> bookingsList,
      required final UserBookingsFilter filter}) = _$HistoryStateInitialImpl;
  const _HistoryStateInitial._() : super._();

  @override
  List<UserBookingsListDto> get bookingsList;
  @override
  UserBookingsFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateInitialImplCopyWith<_$HistoryStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryStateProgressImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryStateProgressImplCopyWith(_$HistoryStateProgressImpl value,
          $Res Function(_$HistoryStateProgressImpl) then) =
      __$$HistoryStateProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserBookingsListDto> bookingsList, UserBookingsFilter filter});

  @override
  $UserBookingsFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$HistoryStateProgressImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryStateProgressImpl>
    implements _$$HistoryStateProgressImplCopyWith<$Res> {
  __$$HistoryStateProgressImplCopyWithImpl(_$HistoryStateProgressImpl _value,
      $Res Function(_$HistoryStateProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsList = null,
    Object? filter = null,
  }) {
    return _then(_$HistoryStateProgressImpl(
      bookingsList: null == bookingsList
          ? _value._bookingsList
          : bookingsList // ignore: cast_nullable_to_non_nullable
              as List<UserBookingsListDto>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as UserBookingsFilter,
    ));
  }
}

/// @nodoc

class _$HistoryStateProgressImpl extends _HistoryStateProgress {
  const _$HistoryStateProgressImpl(
      {required final List<UserBookingsListDto> bookingsList,
      required this.filter})
      : _bookingsList = bookingsList,
        super._();

  final List<UserBookingsListDto> _bookingsList;
  @override
  List<UserBookingsListDto> get bookingsList {
    if (_bookingsList is EqualUnmodifiableListView) return _bookingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsList);
  }

  @override
  final UserBookingsFilter filter;

  @override
  String toString() {
    return 'HistoryState.loadInProgress(bookingsList: $bookingsList, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStateProgressImpl &&
            const DeepCollectionEquality()
                .equals(other._bookingsList, _bookingsList) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bookingsList), filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStateProgressImplCopyWith<_$HistoryStateProgressImpl>
      get copyWith =>
          __$$HistoryStateProgressImplCopyWithImpl<_$HistoryStateProgressImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)
        initial,
    required TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)
        loadInProgress,
    required TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)
        loadError,
  }) {
    return loadInProgress(bookingsList, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        initial,
    TResult? Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        loadInProgress,
    TResult? Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)?
        loadError,
  }) {
    return loadInProgress?.call(bookingsList, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        initial,
    TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        loadInProgress,
    TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)?
        loadError,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(bookingsList, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryStateInitial value) initial,
    required TResult Function(_HistoryStateProgress value) loadInProgress,
    required TResult Function(_HistoryStateSuccess value) loadSuccess,
    required TResult Function(_HistoryStateError value) loadError,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateInitial value)? initial,
    TResult? Function(_HistoryStateProgress value)? loadInProgress,
    TResult? Function(_HistoryStateSuccess value)? loadSuccess,
    TResult? Function(_HistoryStateError value)? loadError,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateInitial value)? initial,
    TResult Function(_HistoryStateProgress value)? loadInProgress,
    TResult Function(_HistoryStateSuccess value)? loadSuccess,
    TResult Function(_HistoryStateError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _HistoryStateProgress extends HistoryState {
  const factory _HistoryStateProgress(
      {required final List<UserBookingsListDto> bookingsList,
      required final UserBookingsFilter filter}) = _$HistoryStateProgressImpl;
  const _HistoryStateProgress._() : super._();

  @override
  List<UserBookingsListDto> get bookingsList;
  @override
  UserBookingsFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateProgressImplCopyWith<_$HistoryStateProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryStateSuccessImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryStateSuccessImplCopyWith(_$HistoryStateSuccessImpl value,
          $Res Function(_$HistoryStateSuccessImpl) then) =
      __$$HistoryStateSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserBookingsListDto> bookingsList,
      UserBookingsFilter filter,
      bool isNextPageAvailable});

  @override
  $UserBookingsFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$HistoryStateSuccessImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryStateSuccessImpl>
    implements _$$HistoryStateSuccessImplCopyWith<$Res> {
  __$$HistoryStateSuccessImplCopyWithImpl(_$HistoryStateSuccessImpl _value,
      $Res Function(_$HistoryStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsList = null,
    Object? filter = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$HistoryStateSuccessImpl(
      bookingsList: null == bookingsList
          ? _value._bookingsList
          : bookingsList // ignore: cast_nullable_to_non_nullable
              as List<UserBookingsListDto>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as UserBookingsFilter,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HistoryStateSuccessImpl extends _HistoryStateSuccess {
  const _$HistoryStateSuccessImpl(
      {required final List<UserBookingsListDto> bookingsList,
      required this.filter,
      required this.isNextPageAvailable})
      : _bookingsList = bookingsList,
        super._();

  final List<UserBookingsListDto> _bookingsList;
  @override
  List<UserBookingsListDto> get bookingsList {
    if (_bookingsList is EqualUnmodifiableListView) return _bookingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsList);
  }

  @override
  final UserBookingsFilter filter;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'HistoryState.loadSuccess(bookingsList: $bookingsList, filter: $filter, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStateSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._bookingsList, _bookingsList) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bookingsList),
      filter,
      isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStateSuccessImplCopyWith<_$HistoryStateSuccessImpl> get copyWith =>
      __$$HistoryStateSuccessImplCopyWithImpl<_$HistoryStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)
        initial,
    required TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)
        loadInProgress,
    required TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)
        loadError,
  }) {
    return loadSuccess(bookingsList, filter, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        initial,
    TResult? Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        loadInProgress,
    TResult? Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)?
        loadError,
  }) {
    return loadSuccess?.call(bookingsList, filter, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        initial,
    TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        loadInProgress,
    TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)?
        loadError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(bookingsList, filter, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryStateInitial value) initial,
    required TResult Function(_HistoryStateProgress value) loadInProgress,
    required TResult Function(_HistoryStateSuccess value) loadSuccess,
    required TResult Function(_HistoryStateError value) loadError,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateInitial value)? initial,
    TResult? Function(_HistoryStateProgress value)? loadInProgress,
    TResult? Function(_HistoryStateSuccess value)? loadSuccess,
    TResult? Function(_HistoryStateError value)? loadError,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateInitial value)? initial,
    TResult Function(_HistoryStateProgress value)? loadInProgress,
    TResult Function(_HistoryStateSuccess value)? loadSuccess,
    TResult Function(_HistoryStateError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _HistoryStateSuccess extends HistoryState {
  const factory _HistoryStateSuccess(
      {required final List<UserBookingsListDto> bookingsList,
      required final UserBookingsFilter filter,
      required final bool isNextPageAvailable}) = _$HistoryStateSuccessImpl;
  const _HistoryStateSuccess._() : super._();

  @override
  List<UserBookingsListDto> get bookingsList;
  @override
  UserBookingsFilter get filter;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateSuccessImplCopyWith<_$HistoryStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryStateErrorImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryStateErrorImplCopyWith(_$HistoryStateErrorImpl value,
          $Res Function(_$HistoryStateErrorImpl) then) =
      __$$HistoryStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserBookingsListDto> bookingsList,
      UserBookingsFilter filter,
      String? errorMessage});

  @override
  $UserBookingsFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$HistoryStateErrorImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryStateErrorImpl>
    implements _$$HistoryStateErrorImplCopyWith<$Res> {
  __$$HistoryStateErrorImplCopyWithImpl(_$HistoryStateErrorImpl _value,
      $Res Function(_$HistoryStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsList = null,
    Object? filter = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HistoryStateErrorImpl(
      bookingsList: null == bookingsList
          ? _value._bookingsList
          : bookingsList // ignore: cast_nullable_to_non_nullable
              as List<UserBookingsListDto>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as UserBookingsFilter,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HistoryStateErrorImpl extends _HistoryStateError {
  const _$HistoryStateErrorImpl(
      {required final List<UserBookingsListDto> bookingsList,
      required this.filter,
      this.errorMessage})
      : _bookingsList = bookingsList,
        super._();

  final List<UserBookingsListDto> _bookingsList;
  @override
  List<UserBookingsListDto> get bookingsList {
    if (_bookingsList is EqualUnmodifiableListView) return _bookingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsList);
  }

  @override
  final UserBookingsFilter filter;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HistoryState.loadError(bookingsList: $bookingsList, filter: $filter, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStateErrorImpl &&
            const DeepCollectionEquality()
                .equals(other._bookingsList, _bookingsList) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bookingsList), filter, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStateErrorImplCopyWith<_$HistoryStateErrorImpl> get copyWith =>
      __$$HistoryStateErrorImplCopyWithImpl<_$HistoryStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)
        initial,
    required TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)
        loadInProgress,
    required TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)
        loadError,
  }) {
    return loadError(bookingsList, filter, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        initial,
    TResult? Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        loadInProgress,
    TResult? Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)?
        loadError,
  }) {
    return loadError?.call(bookingsList, filter, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        initial,
    TResult Function(
            List<UserBookingsListDto> bookingsList, UserBookingsFilter filter)?
        loadInProgress,
    TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<UserBookingsListDto> bookingsList,
            UserBookingsFilter filter, String? errorMessage)?
        loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(bookingsList, filter, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryStateInitial value) initial,
    required TResult Function(_HistoryStateProgress value) loadInProgress,
    required TResult Function(_HistoryStateSuccess value) loadSuccess,
    required TResult Function(_HistoryStateError value) loadError,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateInitial value)? initial,
    TResult? Function(_HistoryStateProgress value)? loadInProgress,
    TResult? Function(_HistoryStateSuccess value)? loadSuccess,
    TResult? Function(_HistoryStateError value)? loadError,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateInitial value)? initial,
    TResult Function(_HistoryStateProgress value)? loadInProgress,
    TResult Function(_HistoryStateSuccess value)? loadSuccess,
    TResult Function(_HistoryStateError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class _HistoryStateError extends HistoryState {
  const factory _HistoryStateError(
      {required final List<UserBookingsListDto> bookingsList,
      required final UserBookingsFilter filter,
      final String? errorMessage}) = _$HistoryStateErrorImpl;
  const _HistoryStateError._() : super._();

  @override
  List<UserBookingsListDto> get bookingsList;
  @override
  UserBookingsFilter get filter;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateErrorImplCopyWith<_$HistoryStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
