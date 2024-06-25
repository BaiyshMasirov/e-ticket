// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_paging_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingPagingModel {
  int get currentPageIndex => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalItemCount => throw _privateConstructorUsedError;
  List<BookingModel> get bookings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingPagingModelCopyWith<BookingPagingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingPagingModelCopyWith<$Res> {
  factory $BookingPagingModelCopyWith(
          BookingPagingModel value, $Res Function(BookingPagingModel) then) =
      _$BookingPagingModelCopyWithImpl<$Res, BookingPagingModel>;
  @useResult
  $Res call(
      {int currentPageIndex,
      int pageSize,
      int totalItemCount,
      List<BookingModel> bookings});
}

/// @nodoc
class _$BookingPagingModelCopyWithImpl<$Res, $Val extends BookingPagingModel>
    implements $BookingPagingModelCopyWith<$Res> {
  _$BookingPagingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageIndex = null,
    Object? pageSize = null,
    Object? totalItemCount = null,
    Object? bookings = null,
  }) {
    return _then(_value.copyWith(
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemCount: null == totalItemCount
          ? _value.totalItemCount
          : totalItemCount // ignore: cast_nullable_to_non_nullable
              as int,
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingPagingModelImplCopyWith<$Res>
    implements $BookingPagingModelCopyWith<$Res> {
  factory _$$BookingPagingModelImplCopyWith(_$BookingPagingModelImpl value,
          $Res Function(_$BookingPagingModelImpl) then) =
      __$$BookingPagingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPageIndex,
      int pageSize,
      int totalItemCount,
      List<BookingModel> bookings});
}

/// @nodoc
class __$$BookingPagingModelImplCopyWithImpl<$Res>
    extends _$BookingPagingModelCopyWithImpl<$Res, _$BookingPagingModelImpl>
    implements _$$BookingPagingModelImplCopyWith<$Res> {
  __$$BookingPagingModelImplCopyWithImpl(_$BookingPagingModelImpl _value,
      $Res Function(_$BookingPagingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageIndex = null,
    Object? pageSize = null,
    Object? totalItemCount = null,
    Object? bookings = null,
  }) {
    return _then(_$BookingPagingModelImpl(
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemCount: null == totalItemCount
          ? _value.totalItemCount
          : totalItemCount // ignore: cast_nullable_to_non_nullable
              as int,
      bookings: null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>,
    ));
  }
}

/// @nodoc

class _$BookingPagingModelImpl extends _BookingPagingModel {
  const _$BookingPagingModelImpl(
      {required this.currentPageIndex,
      required this.pageSize,
      required this.totalItemCount,
      required final List<BookingModel> bookings})
      : _bookings = bookings,
        super._();

  @override
  final int currentPageIndex;
  @override
  final int pageSize;
  @override
  final int totalItemCount;
  final List<BookingModel> _bookings;
  @override
  List<BookingModel> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  String toString() {
    return 'BookingPagingModel(currentPageIndex: $currentPageIndex, pageSize: $pageSize, totalItemCount: $totalItemCount, bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingPagingModelImpl &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalItemCount, totalItemCount) ||
                other.totalItemCount == totalItemCount) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPageIndex, pageSize,
      totalItemCount, const DeepCollectionEquality().hash(_bookings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingPagingModelImplCopyWith<_$BookingPagingModelImpl> get copyWith =>
      __$$BookingPagingModelImplCopyWithImpl<_$BookingPagingModelImpl>(
          this, _$identity);
}

abstract class _BookingPagingModel extends BookingPagingModel {
  const factory _BookingPagingModel(
      {required final int currentPageIndex,
      required final int pageSize,
      required final int totalItemCount,
      required final List<BookingModel> bookings}) = _$BookingPagingModelImpl;
  const _BookingPagingModel._() : super._();

  @override
  int get currentPageIndex;
  @override
  int get pageSize;
  @override
  int get totalItemCount;
  @override
  List<BookingModel> get bookings;
  @override
  @JsonKey(ignore: true)
  _$$BookingPagingModelImplCopyWith<_$BookingPagingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
