// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_paging_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingPagingEntity _$BookingPagingEntityFromJson(Map<String, dynamic> json) {
  return _BookingPagingEntity.fromJson(json);
}

/// @nodoc
mixin _$BookingPagingEntity {
  int get currentPageIndex => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalItemCount => throw _privateConstructorUsedError;
  List<BookingEntity> get bookings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingPagingEntityCopyWith<BookingPagingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingPagingEntityCopyWith<$Res> {
  factory $BookingPagingEntityCopyWith(
          BookingPagingEntity value, $Res Function(BookingPagingEntity) then) =
      _$BookingPagingEntityCopyWithImpl<$Res, BookingPagingEntity>;
  @useResult
  $Res call(
      {int currentPageIndex,
      int pageSize,
      int totalItemCount,
      List<BookingEntity> bookings});
}

/// @nodoc
class _$BookingPagingEntityCopyWithImpl<$Res, $Val extends BookingPagingEntity>
    implements $BookingPagingEntityCopyWith<$Res> {
  _$BookingPagingEntityCopyWithImpl(this._value, this._then);

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
              as List<BookingEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingPagingEntityImplCopyWith<$Res>
    implements $BookingPagingEntityCopyWith<$Res> {
  factory _$$BookingPagingEntityImplCopyWith(_$BookingPagingEntityImpl value,
          $Res Function(_$BookingPagingEntityImpl) then) =
      __$$BookingPagingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPageIndex,
      int pageSize,
      int totalItemCount,
      List<BookingEntity> bookings});
}

/// @nodoc
class __$$BookingPagingEntityImplCopyWithImpl<$Res>
    extends _$BookingPagingEntityCopyWithImpl<$Res, _$BookingPagingEntityImpl>
    implements _$$BookingPagingEntityImplCopyWith<$Res> {
  __$$BookingPagingEntityImplCopyWithImpl(_$BookingPagingEntityImpl _value,
      $Res Function(_$BookingPagingEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageIndex = null,
    Object? pageSize = null,
    Object? totalItemCount = null,
    Object? bookings = null,
  }) {
    return _then(_$BookingPagingEntityImpl(
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
              as List<BookingEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingPagingEntityImpl extends _BookingPagingEntity {
  const _$BookingPagingEntityImpl(
      {required this.currentPageIndex,
      required this.pageSize,
      required this.totalItemCount,
      required final List<BookingEntity> bookings})
      : _bookings = bookings,
        super._();

  factory _$BookingPagingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingPagingEntityImplFromJson(json);

  @override
  final int currentPageIndex;
  @override
  final int pageSize;
  @override
  final int totalItemCount;
  final List<BookingEntity> _bookings;
  @override
  List<BookingEntity> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  String toString() {
    return 'BookingPagingEntity(currentPageIndex: $currentPageIndex, pageSize: $pageSize, totalItemCount: $totalItemCount, bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingPagingEntityImpl &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalItemCount, totalItemCount) ||
                other.totalItemCount == totalItemCount) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPageIndex, pageSize,
      totalItemCount, const DeepCollectionEquality().hash(_bookings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingPagingEntityImplCopyWith<_$BookingPagingEntityImpl> get copyWith =>
      __$$BookingPagingEntityImplCopyWithImpl<_$BookingPagingEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingPagingEntityImplToJson(
      this,
    );
  }
}

abstract class _BookingPagingEntity extends BookingPagingEntity {
  const factory _BookingPagingEntity(
      {required final int currentPageIndex,
      required final int pageSize,
      required final int totalItemCount,
      required final List<BookingEntity> bookings}) = _$BookingPagingEntityImpl;
  const _BookingPagingEntity._() : super._();

  factory _BookingPagingEntity.fromJson(Map<String, dynamic> json) =
      _$BookingPagingEntityImpl.fromJson;

  @override
  int get currentPageIndex;
  @override
  int get pageSize;
  @override
  int get totalItemCount;
  @override
  List<BookingEntity> get bookings;
  @override
  @JsonKey(ignore: true)
  _$$BookingPagingEntityImplCopyWith<_$BookingPagingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
