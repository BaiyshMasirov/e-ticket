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
  List<BookingDto> get bookingsList => throw _privateConstructorUsedError;
  BookingFilter get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BookingDto> bookingsList, BookingFilter filter)
        initial,
    required TResult Function(
            List<BookingDto> bookingsList, BookingFilter filter)
        loadInProgress,
    required TResult Function(List<BookingDto> bookingsList,
            BookingFilter filter, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<BookingDto> bookingsList,
            BookingFilter filter, String? errorMessage)
        loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter)?
        initial,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter)?
        loadInProgress,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter,
            bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter,
            String? errorMessage)?
        loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter)?
        initial,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter)?
        loadInProgress,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter,
            bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter,
            String? errorMessage)?
        loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryStateInitial value) initial,
    required TResult Function(HistoryProgress value) loadInProgress,
    required TResult Function(_HistoryStateSuccess value) loadSuccess,
    required TResult Function(_HistoryStateError value) loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateInitial value)? initial,
    TResult? Function(HistoryProgress value)? loadInProgress,
    TResult? Function(_HistoryStateSuccess value)? loadSuccess,
    TResult? Function(_HistoryStateError value)? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateInitial value)? initial,
    TResult Function(HistoryProgress value)? loadInProgress,
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
  $Res call({List<BookingDto> bookingsList, BookingFilter filter});

  $BookingFilterCopyWith<$Res> get filter;
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
              as List<BookingDto>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingFilterCopyWith<$Res> get filter {
    return $BookingFilterCopyWith<$Res>(_value.filter, (value) {
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
  $Res call({List<BookingDto> bookingsList, BookingFilter filter});

  @override
  $BookingFilterCopyWith<$Res> get filter;
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
              as List<BookingDto>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
    ));
  }
}

/// @nodoc

class _$HistoryStateInitialImpl extends _HistoryStateInitial {
  const _$HistoryStateInitialImpl(
      {required final List<BookingDto> bookingsList, required this.filter})
      : _bookingsList = bookingsList,
        super._();

  final List<BookingDto> _bookingsList;
  @override
  List<BookingDto> get bookingsList {
    if (_bookingsList is EqualUnmodifiableListView) return _bookingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsList);
  }

  @override
  final BookingFilter filter;

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
            List<BookingDto> bookingsList, BookingFilter filter)
        initial,
    required TResult Function(
            List<BookingDto> bookingsList, BookingFilter filter)
        loadInProgress,
    required TResult Function(List<BookingDto> bookingsList,
            BookingFilter filter, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<BookingDto> bookingsList,
            BookingFilter filter, String? errorMessage)
        loadError,
  }) {
    return initial(bookingsList, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter)?
        initial,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter)?
        loadInProgress,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter,
            bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter,
            String? errorMessage)?
        loadError,
  }) {
    return initial?.call(bookingsList, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter)?
        initial,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter)?
        loadInProgress,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter,
            bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter,
            String? errorMessage)?
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
    required TResult Function(HistoryProgress value) loadInProgress,
    required TResult Function(_HistoryStateSuccess value) loadSuccess,
    required TResult Function(_HistoryStateError value) loadError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateInitial value)? initial,
    TResult? Function(HistoryProgress value)? loadInProgress,
    TResult? Function(_HistoryStateSuccess value)? loadSuccess,
    TResult? Function(_HistoryStateError value)? loadError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateInitial value)? initial,
    TResult Function(HistoryProgress value)? loadInProgress,
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
      {required final List<BookingDto> bookingsList,
      required final BookingFilter filter}) = _$HistoryStateInitialImpl;
  const _HistoryStateInitial._() : super._();

  @override
  List<BookingDto> get bookingsList;
  @override
  BookingFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateInitialImplCopyWith<_$HistoryStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryProgressImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryProgressImplCopyWith(_$HistoryProgressImpl value,
          $Res Function(_$HistoryProgressImpl) then) =
      __$$HistoryProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookingDto> bookingsList, BookingFilter filter});

  @override
  $BookingFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$HistoryProgressImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryProgressImpl>
    implements _$$HistoryProgressImplCopyWith<$Res> {
  __$$HistoryProgressImplCopyWithImpl(
      _$HistoryProgressImpl _value, $Res Function(_$HistoryProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsList = null,
    Object? filter = null,
  }) {
    return _then(_$HistoryProgressImpl(
      bookingsList: null == bookingsList
          ? _value._bookingsList
          : bookingsList // ignore: cast_nullable_to_non_nullable
              as List<BookingDto>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
    ));
  }
}

/// @nodoc

class _$HistoryProgressImpl extends HistoryProgress {
  const _$HistoryProgressImpl(
      {required final List<BookingDto> bookingsList, required this.filter})
      : _bookingsList = bookingsList,
        super._();

  final List<BookingDto> _bookingsList;
  @override
  List<BookingDto> get bookingsList {
    if (_bookingsList is EqualUnmodifiableListView) return _bookingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsList);
  }

  @override
  final BookingFilter filter;

  @override
  String toString() {
    return 'HistoryState.loadInProgress(bookingsList: $bookingsList, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryProgressImpl &&
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
  _$$HistoryProgressImplCopyWith<_$HistoryProgressImpl> get copyWith =>
      __$$HistoryProgressImplCopyWithImpl<_$HistoryProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BookingDto> bookingsList, BookingFilter filter)
        initial,
    required TResult Function(
            List<BookingDto> bookingsList, BookingFilter filter)
        loadInProgress,
    required TResult Function(List<BookingDto> bookingsList,
            BookingFilter filter, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<BookingDto> bookingsList,
            BookingFilter filter, String? errorMessage)
        loadError,
  }) {
    return loadInProgress(bookingsList, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter)?
        initial,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter)?
        loadInProgress,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter,
            bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter,
            String? errorMessage)?
        loadError,
  }) {
    return loadInProgress?.call(bookingsList, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter)?
        initial,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter)?
        loadInProgress,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter,
            bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter,
            String? errorMessage)?
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
    required TResult Function(HistoryProgress value) loadInProgress,
    required TResult Function(_HistoryStateSuccess value) loadSuccess,
    required TResult Function(_HistoryStateError value) loadError,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateInitial value)? initial,
    TResult? Function(HistoryProgress value)? loadInProgress,
    TResult? Function(_HistoryStateSuccess value)? loadSuccess,
    TResult? Function(_HistoryStateError value)? loadError,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateInitial value)? initial,
    TResult Function(HistoryProgress value)? loadInProgress,
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

abstract class HistoryProgress extends HistoryState {
  const factory HistoryProgress(
      {required final List<BookingDto> bookingsList,
      required final BookingFilter filter}) = _$HistoryProgressImpl;
  const HistoryProgress._() : super._();

  @override
  List<BookingDto> get bookingsList;
  @override
  BookingFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$HistoryProgressImplCopyWith<_$HistoryProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
      {List<BookingDto> bookingsList,
      BookingFilter filter,
      bool isNextPageAvailable});

  @override
  $BookingFilterCopyWith<$Res> get filter;
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
              as List<BookingDto>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
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
      {required final List<BookingDto> bookingsList,
      required this.filter,
      required this.isNextPageAvailable})
      : _bookingsList = bookingsList,
        super._();

  final List<BookingDto> _bookingsList;
  @override
  List<BookingDto> get bookingsList {
    if (_bookingsList is EqualUnmodifiableListView) return _bookingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsList);
  }

  @override
  final BookingFilter filter;
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
            List<BookingDto> bookingsList, BookingFilter filter)
        initial,
    required TResult Function(
            List<BookingDto> bookingsList, BookingFilter filter)
        loadInProgress,
    required TResult Function(List<BookingDto> bookingsList,
            BookingFilter filter, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<BookingDto> bookingsList,
            BookingFilter filter, String? errorMessage)
        loadError,
  }) {
    return loadSuccess(bookingsList, filter, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter)?
        initial,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter)?
        loadInProgress,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter,
            bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter,
            String? errorMessage)?
        loadError,
  }) {
    return loadSuccess?.call(bookingsList, filter, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter)?
        initial,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter)?
        loadInProgress,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter,
            bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter,
            String? errorMessage)?
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
    required TResult Function(HistoryProgress value) loadInProgress,
    required TResult Function(_HistoryStateSuccess value) loadSuccess,
    required TResult Function(_HistoryStateError value) loadError,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateInitial value)? initial,
    TResult? Function(HistoryProgress value)? loadInProgress,
    TResult? Function(_HistoryStateSuccess value)? loadSuccess,
    TResult? Function(_HistoryStateError value)? loadError,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateInitial value)? initial,
    TResult Function(HistoryProgress value)? loadInProgress,
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
      {required final List<BookingDto> bookingsList,
      required final BookingFilter filter,
      required final bool isNextPageAvailable}) = _$HistoryStateSuccessImpl;
  const _HistoryStateSuccess._() : super._();

  @override
  List<BookingDto> get bookingsList;
  @override
  BookingFilter get filter;
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
      {List<BookingDto> bookingsList,
      BookingFilter filter,
      String? errorMessage});

  @override
  $BookingFilterCopyWith<$Res> get filter;
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
              as List<BookingDto>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
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
      {required final List<BookingDto> bookingsList,
      required this.filter,
      this.errorMessage})
      : _bookingsList = bookingsList,
        super._();

  final List<BookingDto> _bookingsList;
  @override
  List<BookingDto> get bookingsList {
    if (_bookingsList is EqualUnmodifiableListView) return _bookingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsList);
  }

  @override
  final BookingFilter filter;
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
            List<BookingDto> bookingsList, BookingFilter filter)
        initial,
    required TResult Function(
            List<BookingDto> bookingsList, BookingFilter filter)
        loadInProgress,
    required TResult Function(List<BookingDto> bookingsList,
            BookingFilter filter, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(List<BookingDto> bookingsList,
            BookingFilter filter, String? errorMessage)
        loadError,
  }) {
    return loadError(bookingsList, filter, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter)?
        initial,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter)?
        loadInProgress,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter,
            bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(List<BookingDto> bookingsList, BookingFilter filter,
            String? errorMessage)?
        loadError,
  }) {
    return loadError?.call(bookingsList, filter, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter)?
        initial,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter)?
        loadInProgress,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter,
            bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<BookingDto> bookingsList, BookingFilter filter,
            String? errorMessage)?
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
    required TResult Function(HistoryProgress value) loadInProgress,
    required TResult Function(_HistoryStateSuccess value) loadSuccess,
    required TResult Function(_HistoryStateError value) loadError,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateInitial value)? initial,
    TResult? Function(HistoryProgress value)? loadInProgress,
    TResult? Function(_HistoryStateSuccess value)? loadSuccess,
    TResult? Function(_HistoryStateError value)? loadError,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateInitial value)? initial,
    TResult Function(HistoryProgress value)? loadInProgress,
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
      {required final List<BookingDto> bookingsList,
      required final BookingFilter filter,
      final String? errorMessage}) = _$HistoryStateErrorImpl;
  const _HistoryStateError._() : super._();

  @override
  List<BookingDto> get bookingsList;
  @override
  BookingFilter get filter;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateErrorImplCopyWith<_$HistoryStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
