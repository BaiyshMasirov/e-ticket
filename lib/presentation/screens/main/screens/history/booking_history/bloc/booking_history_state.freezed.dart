// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingHistoryState {
  List<Fresh<BookingModel>> get bookings => throw _privateConstructorUsedError;
  BookingFilter get filter => throw _privateConstructorUsedError;
  bool? get isFreshData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        initial,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        loading,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool isNextPageAvailable, bool? isFreshData)
        success,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        empty,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData, String? errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingHistoryStateInitial value) initial,
    required TResult Function(BookingHistoryProgress value) loading,
    required TResult Function(_BookingHistoryStateSuccess value) success,
    required TResult Function(_BookingHistoryStateEmpty value) empty,
    required TResult Function(_BookingHistoryStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingHistoryStateInitial value)? initial,
    TResult? Function(BookingHistoryProgress value)? loading,
    TResult? Function(_BookingHistoryStateSuccess value)? success,
    TResult? Function(_BookingHistoryStateEmpty value)? empty,
    TResult? Function(_BookingHistoryStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingHistoryStateInitial value)? initial,
    TResult Function(BookingHistoryProgress value)? loading,
    TResult Function(_BookingHistoryStateSuccess value)? success,
    TResult Function(_BookingHistoryStateEmpty value)? empty,
    TResult Function(_BookingHistoryStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingHistoryStateCopyWith<BookingHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingHistoryStateCopyWith<$Res> {
  factory $BookingHistoryStateCopyWith(
          BookingHistoryState value, $Res Function(BookingHistoryState) then) =
      _$BookingHistoryStateCopyWithImpl<$Res, BookingHistoryState>;
  @useResult
  $Res call(
      {List<Fresh<BookingModel>> bookings,
      BookingFilter filter,
      bool? isFreshData});

  $BookingFilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$BookingHistoryStateCopyWithImpl<$Res, $Val extends BookingHistoryState>
    implements $BookingHistoryStateCopyWith<$Res> {
  _$BookingHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
    Object? filter = null,
    Object? isFreshData = freezed,
  }) {
    return _then(_value.copyWith(
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Fresh<BookingModel>>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
      isFreshData: freezed == isFreshData
          ? _value.isFreshData
          : isFreshData // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$BookingHistoryStateInitialImplCopyWith<$Res>
    implements $BookingHistoryStateCopyWith<$Res> {
  factory _$$BookingHistoryStateInitialImplCopyWith(
          _$BookingHistoryStateInitialImpl value,
          $Res Function(_$BookingHistoryStateInitialImpl) then) =
      __$$BookingHistoryStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Fresh<BookingModel>> bookings,
      BookingFilter filter,
      bool? isFreshData});

  @override
  $BookingFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$BookingHistoryStateInitialImplCopyWithImpl<$Res>
    extends _$BookingHistoryStateCopyWithImpl<$Res,
        _$BookingHistoryStateInitialImpl>
    implements _$$BookingHistoryStateInitialImplCopyWith<$Res> {
  __$$BookingHistoryStateInitialImplCopyWithImpl(
      _$BookingHistoryStateInitialImpl _value,
      $Res Function(_$BookingHistoryStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
    Object? filter = null,
    Object? isFreshData = freezed,
  }) {
    return _then(_$BookingHistoryStateInitialImpl(
      bookings: null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Fresh<BookingModel>>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
      isFreshData: freezed == isFreshData
          ? _value.isFreshData
          : isFreshData // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$BookingHistoryStateInitialImpl extends _BookingHistoryStateInitial {
  const _$BookingHistoryStateInitialImpl(
      {required final List<Fresh<BookingModel>> bookings,
      required this.filter,
      required this.isFreshData})
      : _bookings = bookings,
        super._();

  final List<Fresh<BookingModel>> _bookings;
  @override
  List<Fresh<BookingModel>> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  final BookingFilter filter;
  @override
  final bool? isFreshData;

  @override
  String toString() {
    return 'BookingHistoryState.initial(bookings: $bookings, filter: $filter, isFreshData: $isFreshData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingHistoryStateInitialImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.isFreshData, isFreshData) ||
                other.isFreshData == isFreshData));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bookings), filter, isFreshData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingHistoryStateInitialImplCopyWith<_$BookingHistoryStateInitialImpl>
      get copyWith => __$$BookingHistoryStateInitialImplCopyWithImpl<
          _$BookingHistoryStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        initial,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        loading,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool isNextPageAvailable, bool? isFreshData)
        success,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        empty,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData, String? errorMessage)
        error,
  }) {
    return initial(bookings, filter, isFreshData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
  }) {
    return initial?.call(bookings, filter, isFreshData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(bookings, filter, isFreshData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingHistoryStateInitial value) initial,
    required TResult Function(BookingHistoryProgress value) loading,
    required TResult Function(_BookingHistoryStateSuccess value) success,
    required TResult Function(_BookingHistoryStateEmpty value) empty,
    required TResult Function(_BookingHistoryStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingHistoryStateInitial value)? initial,
    TResult? Function(BookingHistoryProgress value)? loading,
    TResult? Function(_BookingHistoryStateSuccess value)? success,
    TResult? Function(_BookingHistoryStateEmpty value)? empty,
    TResult? Function(_BookingHistoryStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingHistoryStateInitial value)? initial,
    TResult Function(BookingHistoryProgress value)? loading,
    TResult Function(_BookingHistoryStateSuccess value)? success,
    TResult Function(_BookingHistoryStateEmpty value)? empty,
    TResult Function(_BookingHistoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BookingHistoryStateInitial extends BookingHistoryState {
  const factory _BookingHistoryStateInitial(
      {required final List<Fresh<BookingModel>> bookings,
      required final BookingFilter filter,
      required final bool? isFreshData}) = _$BookingHistoryStateInitialImpl;
  const _BookingHistoryStateInitial._() : super._();

  @override
  List<Fresh<BookingModel>> get bookings;
  @override
  BookingFilter get filter;
  @override
  bool? get isFreshData;
  @override
  @JsonKey(ignore: true)
  _$$BookingHistoryStateInitialImplCopyWith<_$BookingHistoryStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingHistoryProgressImplCopyWith<$Res>
    implements $BookingHistoryStateCopyWith<$Res> {
  factory _$$BookingHistoryProgressImplCopyWith(
          _$BookingHistoryProgressImpl value,
          $Res Function(_$BookingHistoryProgressImpl) then) =
      __$$BookingHistoryProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Fresh<BookingModel>> bookings,
      BookingFilter filter,
      bool? isFreshData});

  @override
  $BookingFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$BookingHistoryProgressImplCopyWithImpl<$Res>
    extends _$BookingHistoryStateCopyWithImpl<$Res,
        _$BookingHistoryProgressImpl>
    implements _$$BookingHistoryProgressImplCopyWith<$Res> {
  __$$BookingHistoryProgressImplCopyWithImpl(
      _$BookingHistoryProgressImpl _value,
      $Res Function(_$BookingHistoryProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
    Object? filter = null,
    Object? isFreshData = freezed,
  }) {
    return _then(_$BookingHistoryProgressImpl(
      bookings: null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Fresh<BookingModel>>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
      isFreshData: freezed == isFreshData
          ? _value.isFreshData
          : isFreshData // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$BookingHistoryProgressImpl extends BookingHistoryProgress {
  const _$BookingHistoryProgressImpl(
      {required final List<Fresh<BookingModel>> bookings,
      required this.filter,
      required this.isFreshData})
      : _bookings = bookings,
        super._();

  final List<Fresh<BookingModel>> _bookings;
  @override
  List<Fresh<BookingModel>> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  final BookingFilter filter;
  @override
  final bool? isFreshData;

  @override
  String toString() {
    return 'BookingHistoryState.loading(bookings: $bookings, filter: $filter, isFreshData: $isFreshData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingHistoryProgressImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.isFreshData, isFreshData) ||
                other.isFreshData == isFreshData));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bookings), filter, isFreshData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingHistoryProgressImplCopyWith<_$BookingHistoryProgressImpl>
      get copyWith => __$$BookingHistoryProgressImplCopyWithImpl<
          _$BookingHistoryProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        initial,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        loading,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool isNextPageAvailable, bool? isFreshData)
        success,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        empty,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData, String? errorMessage)
        error,
  }) {
    return loading(bookings, filter, isFreshData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
  }) {
    return loading?.call(bookings, filter, isFreshData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(bookings, filter, isFreshData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingHistoryStateInitial value) initial,
    required TResult Function(BookingHistoryProgress value) loading,
    required TResult Function(_BookingHistoryStateSuccess value) success,
    required TResult Function(_BookingHistoryStateEmpty value) empty,
    required TResult Function(_BookingHistoryStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingHistoryStateInitial value)? initial,
    TResult? Function(BookingHistoryProgress value)? loading,
    TResult? Function(_BookingHistoryStateSuccess value)? success,
    TResult? Function(_BookingHistoryStateEmpty value)? empty,
    TResult? Function(_BookingHistoryStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingHistoryStateInitial value)? initial,
    TResult Function(BookingHistoryProgress value)? loading,
    TResult Function(_BookingHistoryStateSuccess value)? success,
    TResult Function(_BookingHistoryStateEmpty value)? empty,
    TResult Function(_BookingHistoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookingHistoryProgress extends BookingHistoryState {
  const factory BookingHistoryProgress(
      {required final List<Fresh<BookingModel>> bookings,
      required final BookingFilter filter,
      required final bool? isFreshData}) = _$BookingHistoryProgressImpl;
  const BookingHistoryProgress._() : super._();

  @override
  List<Fresh<BookingModel>> get bookings;
  @override
  BookingFilter get filter;
  @override
  bool? get isFreshData;
  @override
  @JsonKey(ignore: true)
  _$$BookingHistoryProgressImplCopyWith<_$BookingHistoryProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingHistoryStateSuccessImplCopyWith<$Res>
    implements $BookingHistoryStateCopyWith<$Res> {
  factory _$$BookingHistoryStateSuccessImplCopyWith(
          _$BookingHistoryStateSuccessImpl value,
          $Res Function(_$BookingHistoryStateSuccessImpl) then) =
      __$$BookingHistoryStateSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Fresh<BookingModel>> bookings,
      BookingFilter filter,
      bool isNextPageAvailable,
      bool? isFreshData});

  @override
  $BookingFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$BookingHistoryStateSuccessImplCopyWithImpl<$Res>
    extends _$BookingHistoryStateCopyWithImpl<$Res,
        _$BookingHistoryStateSuccessImpl>
    implements _$$BookingHistoryStateSuccessImplCopyWith<$Res> {
  __$$BookingHistoryStateSuccessImplCopyWithImpl(
      _$BookingHistoryStateSuccessImpl _value,
      $Res Function(_$BookingHistoryStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
    Object? filter = null,
    Object? isNextPageAvailable = null,
    Object? isFreshData = freezed,
  }) {
    return _then(_$BookingHistoryStateSuccessImpl(
      bookings: null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Fresh<BookingModel>>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isFreshData: freezed == isFreshData
          ? _value.isFreshData
          : isFreshData // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$BookingHistoryStateSuccessImpl extends _BookingHistoryStateSuccess {
  const _$BookingHistoryStateSuccessImpl(
      {required final List<Fresh<BookingModel>> bookings,
      required this.filter,
      required this.isNextPageAvailable,
      required this.isFreshData})
      : _bookings = bookings,
        super._();

  final List<Fresh<BookingModel>> _bookings;
  @override
  List<Fresh<BookingModel>> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  final BookingFilter filter;
  @override
  final bool isNextPageAvailable;
  @override
  final bool? isFreshData;

  @override
  String toString() {
    return 'BookingHistoryState.success(bookings: $bookings, filter: $filter, isNextPageAvailable: $isNextPageAvailable, isFreshData: $isFreshData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingHistoryStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable) &&
            (identical(other.isFreshData, isFreshData) ||
                other.isFreshData == isFreshData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bookings),
      filter,
      isNextPageAvailable,
      isFreshData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingHistoryStateSuccessImplCopyWith<_$BookingHistoryStateSuccessImpl>
      get copyWith => __$$BookingHistoryStateSuccessImplCopyWithImpl<
          _$BookingHistoryStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        initial,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        loading,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool isNextPageAvailable, bool? isFreshData)
        success,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        empty,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData, String? errorMessage)
        error,
  }) {
    return success(bookings, filter, isNextPageAvailable, isFreshData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
  }) {
    return success?.call(bookings, filter, isNextPageAvailable, isFreshData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(bookings, filter, isNextPageAvailable, isFreshData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingHistoryStateInitial value) initial,
    required TResult Function(BookingHistoryProgress value) loading,
    required TResult Function(_BookingHistoryStateSuccess value) success,
    required TResult Function(_BookingHistoryStateEmpty value) empty,
    required TResult Function(_BookingHistoryStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingHistoryStateInitial value)? initial,
    TResult? Function(BookingHistoryProgress value)? loading,
    TResult? Function(_BookingHistoryStateSuccess value)? success,
    TResult? Function(_BookingHistoryStateEmpty value)? empty,
    TResult? Function(_BookingHistoryStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingHistoryStateInitial value)? initial,
    TResult Function(BookingHistoryProgress value)? loading,
    TResult Function(_BookingHistoryStateSuccess value)? success,
    TResult Function(_BookingHistoryStateEmpty value)? empty,
    TResult Function(_BookingHistoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _BookingHistoryStateSuccess extends BookingHistoryState {
  const factory _BookingHistoryStateSuccess(
      {required final List<Fresh<BookingModel>> bookings,
      required final BookingFilter filter,
      required final bool isNextPageAvailable,
      required final bool? isFreshData}) = _$BookingHistoryStateSuccessImpl;
  const _BookingHistoryStateSuccess._() : super._();

  @override
  List<Fresh<BookingModel>> get bookings;
  @override
  BookingFilter get filter;
  bool get isNextPageAvailable;
  @override
  bool? get isFreshData;
  @override
  @JsonKey(ignore: true)
  _$$BookingHistoryStateSuccessImplCopyWith<_$BookingHistoryStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingHistoryStateEmptyImplCopyWith<$Res>
    implements $BookingHistoryStateCopyWith<$Res> {
  factory _$$BookingHistoryStateEmptyImplCopyWith(
          _$BookingHistoryStateEmptyImpl value,
          $Res Function(_$BookingHistoryStateEmptyImpl) then) =
      __$$BookingHistoryStateEmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Fresh<BookingModel>> bookings,
      BookingFilter filter,
      bool? isFreshData});

  @override
  $BookingFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$BookingHistoryStateEmptyImplCopyWithImpl<$Res>
    extends _$BookingHistoryStateCopyWithImpl<$Res,
        _$BookingHistoryStateEmptyImpl>
    implements _$$BookingHistoryStateEmptyImplCopyWith<$Res> {
  __$$BookingHistoryStateEmptyImplCopyWithImpl(
      _$BookingHistoryStateEmptyImpl _value,
      $Res Function(_$BookingHistoryStateEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
    Object? filter = null,
    Object? isFreshData = freezed,
  }) {
    return _then(_$BookingHistoryStateEmptyImpl(
      bookings: null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Fresh<BookingModel>>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
      isFreshData: freezed == isFreshData
          ? _value.isFreshData
          : isFreshData // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$BookingHistoryStateEmptyImpl extends _BookingHistoryStateEmpty {
  const _$BookingHistoryStateEmptyImpl(
      {required final List<Fresh<BookingModel>> bookings,
      required this.filter,
      required this.isFreshData})
      : _bookings = bookings,
        super._();

  final List<Fresh<BookingModel>> _bookings;
  @override
  List<Fresh<BookingModel>> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  final BookingFilter filter;
  @override
  final bool? isFreshData;

  @override
  String toString() {
    return 'BookingHistoryState.empty(bookings: $bookings, filter: $filter, isFreshData: $isFreshData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingHistoryStateEmptyImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.isFreshData, isFreshData) ||
                other.isFreshData == isFreshData));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bookings), filter, isFreshData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingHistoryStateEmptyImplCopyWith<_$BookingHistoryStateEmptyImpl>
      get copyWith => __$$BookingHistoryStateEmptyImplCopyWithImpl<
          _$BookingHistoryStateEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        initial,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        loading,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool isNextPageAvailable, bool? isFreshData)
        success,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        empty,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData, String? errorMessage)
        error,
  }) {
    return empty(bookings, filter, isFreshData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
  }) {
    return empty?.call(bookings, filter, isFreshData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(bookings, filter, isFreshData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingHistoryStateInitial value) initial,
    required TResult Function(BookingHistoryProgress value) loading,
    required TResult Function(_BookingHistoryStateSuccess value) success,
    required TResult Function(_BookingHistoryStateEmpty value) empty,
    required TResult Function(_BookingHistoryStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingHistoryStateInitial value)? initial,
    TResult? Function(BookingHistoryProgress value)? loading,
    TResult? Function(_BookingHistoryStateSuccess value)? success,
    TResult? Function(_BookingHistoryStateEmpty value)? empty,
    TResult? Function(_BookingHistoryStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingHistoryStateInitial value)? initial,
    TResult Function(BookingHistoryProgress value)? loading,
    TResult Function(_BookingHistoryStateSuccess value)? success,
    TResult Function(_BookingHistoryStateEmpty value)? empty,
    TResult Function(_BookingHistoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _BookingHistoryStateEmpty extends BookingHistoryState {
  const factory _BookingHistoryStateEmpty(
      {required final List<Fresh<BookingModel>> bookings,
      required final BookingFilter filter,
      required final bool? isFreshData}) = _$BookingHistoryStateEmptyImpl;
  const _BookingHistoryStateEmpty._() : super._();

  @override
  List<Fresh<BookingModel>> get bookings;
  @override
  BookingFilter get filter;
  @override
  bool? get isFreshData;
  @override
  @JsonKey(ignore: true)
  _$$BookingHistoryStateEmptyImplCopyWith<_$BookingHistoryStateEmptyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingHistoryStateErrorImplCopyWith<$Res>
    implements $BookingHistoryStateCopyWith<$Res> {
  factory _$$BookingHistoryStateErrorImplCopyWith(
          _$BookingHistoryStateErrorImpl value,
          $Res Function(_$BookingHistoryStateErrorImpl) then) =
      __$$BookingHistoryStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Fresh<BookingModel>> bookings,
      BookingFilter filter,
      bool? isFreshData,
      String? errorMessage});

  @override
  $BookingFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$BookingHistoryStateErrorImplCopyWithImpl<$Res>
    extends _$BookingHistoryStateCopyWithImpl<$Res,
        _$BookingHistoryStateErrorImpl>
    implements _$$BookingHistoryStateErrorImplCopyWith<$Res> {
  __$$BookingHistoryStateErrorImplCopyWithImpl(
      _$BookingHistoryStateErrorImpl _value,
      $Res Function(_$BookingHistoryStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
    Object? filter = null,
    Object? isFreshData = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BookingHistoryStateErrorImpl(
      bookings: null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Fresh<BookingModel>>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as BookingFilter,
      isFreshData: freezed == isFreshData
          ? _value.isFreshData
          : isFreshData // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BookingHistoryStateErrorImpl extends _BookingHistoryStateError {
  const _$BookingHistoryStateErrorImpl(
      {required final List<Fresh<BookingModel>> bookings,
      required this.filter,
      required this.isFreshData,
      this.errorMessage})
      : _bookings = bookings,
        super._();

  final List<Fresh<BookingModel>> _bookings;
  @override
  List<Fresh<BookingModel>> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  final BookingFilter filter;
  @override
  final bool? isFreshData;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BookingHistoryState.error(bookings: $bookings, filter: $filter, isFreshData: $isFreshData, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingHistoryStateErrorImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.isFreshData, isFreshData) ||
                other.isFreshData == isFreshData) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bookings),
      filter,
      isFreshData,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingHistoryStateErrorImplCopyWith<_$BookingHistoryStateErrorImpl>
      get copyWith => __$$BookingHistoryStateErrorImplCopyWithImpl<
          _$BookingHistoryStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        initial,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        loading,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool isNextPageAvailable, bool? isFreshData)
        success,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData)
        empty,
    required TResult Function(List<Fresh<BookingModel>> bookings,
            BookingFilter filter, bool? isFreshData, String? errorMessage)
        error,
  }) {
    return error(bookings, filter, isFreshData, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult? Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
  }) {
    return error?.call(bookings, filter, isFreshData, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        initial,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        loading,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool isNextPageAvailable, bool? isFreshData)?
        success,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData)?
        empty,
    TResult Function(List<Fresh<BookingModel>> bookings, BookingFilter filter,
            bool? isFreshData, String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(bookings, filter, isFreshData, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingHistoryStateInitial value) initial,
    required TResult Function(BookingHistoryProgress value) loading,
    required TResult Function(_BookingHistoryStateSuccess value) success,
    required TResult Function(_BookingHistoryStateEmpty value) empty,
    required TResult Function(_BookingHistoryStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingHistoryStateInitial value)? initial,
    TResult? Function(BookingHistoryProgress value)? loading,
    TResult? Function(_BookingHistoryStateSuccess value)? success,
    TResult? Function(_BookingHistoryStateEmpty value)? empty,
    TResult? Function(_BookingHistoryStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingHistoryStateInitial value)? initial,
    TResult Function(BookingHistoryProgress value)? loading,
    TResult Function(_BookingHistoryStateSuccess value)? success,
    TResult Function(_BookingHistoryStateEmpty value)? empty,
    TResult Function(_BookingHistoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _BookingHistoryStateError extends BookingHistoryState {
  const factory _BookingHistoryStateError(
      {required final List<Fresh<BookingModel>> bookings,
      required final BookingFilter filter,
      required final bool? isFreshData,
      final String? errorMessage}) = _$BookingHistoryStateErrorImpl;
  const _BookingHistoryStateError._() : super._();

  @override
  List<Fresh<BookingModel>> get bookings;
  @override
  BookingFilter get filter;
  @override
  bool? get isFreshData;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$BookingHistoryStateErrorImplCopyWith<_$BookingHistoryStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
