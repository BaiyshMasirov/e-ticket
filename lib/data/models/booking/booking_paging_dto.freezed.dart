// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_paging_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingPagingDto _$BookingPagingDtoFromJson(Map<String, dynamic> json) {
  return _BookingPagingDto.fromJson(json);
}

/// @nodoc
mixin _$BookingPagingDto {
  int get currentPageIndex => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalItemCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<BookingDto> get bookingsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingPagingDtoCopyWith<BookingPagingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingPagingDtoCopyWith<$Res> {
  factory $BookingPagingDtoCopyWith(
          BookingPagingDto value, $Res Function(BookingPagingDto) then) =
      _$BookingPagingDtoCopyWithImpl<$Res, BookingPagingDto>;
  @useResult
  $Res call(
      {int currentPageIndex,
      int pageSize,
      int totalItemCount,
      @JsonKey(name: 'list') List<BookingDto> bookingsList});
}

/// @nodoc
class _$BookingPagingDtoCopyWithImpl<$Res, $Val extends BookingPagingDto>
    implements $BookingPagingDtoCopyWith<$Res> {
  _$BookingPagingDtoCopyWithImpl(this._value, this._then);

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
    Object? bookingsList = null,
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
      bookingsList: null == bookingsList
          ? _value.bookingsList
          : bookingsList // ignore: cast_nullable_to_non_nullable
              as List<BookingDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingPagingDtoImplCopyWith<$Res>
    implements $BookingPagingDtoCopyWith<$Res> {
  factory _$$BookingPagingDtoImplCopyWith(_$BookingPagingDtoImpl value,
          $Res Function(_$BookingPagingDtoImpl) then) =
      __$$BookingPagingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPageIndex,
      int pageSize,
      int totalItemCount,
      @JsonKey(name: 'list') List<BookingDto> bookingsList});
}

/// @nodoc
class __$$BookingPagingDtoImplCopyWithImpl<$Res>
    extends _$BookingPagingDtoCopyWithImpl<$Res, _$BookingPagingDtoImpl>
    implements _$$BookingPagingDtoImplCopyWith<$Res> {
  __$$BookingPagingDtoImplCopyWithImpl(_$BookingPagingDtoImpl _value,
      $Res Function(_$BookingPagingDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageIndex = null,
    Object? pageSize = null,
    Object? totalItemCount = null,
    Object? bookingsList = null,
  }) {
    return _then(_$BookingPagingDtoImpl(
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
      bookingsList: null == bookingsList
          ? _value._bookingsList
          : bookingsList // ignore: cast_nullable_to_non_nullable
              as List<BookingDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingPagingDtoImpl extends _BookingPagingDto {
  const _$BookingPagingDtoImpl(
      {required this.currentPageIndex,
      required this.pageSize,
      required this.totalItemCount,
      @JsonKey(name: 'list') required final List<BookingDto> bookingsList})
      : _bookingsList = bookingsList,
        super._();

  factory _$BookingPagingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingPagingDtoImplFromJson(json);

  @override
  final int currentPageIndex;
  @override
  final int pageSize;
  @override
  final int totalItemCount;
  final List<BookingDto> _bookingsList;
  @override
  @JsonKey(name: 'list')
  List<BookingDto> get bookingsList {
    if (_bookingsList is EqualUnmodifiableListView) return _bookingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsList);
  }

  @override
  String toString() {
    return 'BookingPagingDto(currentPageIndex: $currentPageIndex, pageSize: $pageSize, totalItemCount: $totalItemCount, bookingsList: $bookingsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingPagingDtoImpl &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalItemCount, totalItemCount) ||
                other.totalItemCount == totalItemCount) &&
            const DeepCollectionEquality()
                .equals(other._bookingsList, _bookingsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPageIndex, pageSize,
      totalItemCount, const DeepCollectionEquality().hash(_bookingsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingPagingDtoImplCopyWith<_$BookingPagingDtoImpl> get copyWith =>
      __$$BookingPagingDtoImplCopyWithImpl<_$BookingPagingDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingPagingDtoImplToJson(
      this,
    );
  }
}

abstract class _BookingPagingDto extends BookingPagingDto {
  const factory _BookingPagingDto(
      {required final int currentPageIndex,
      required final int pageSize,
      required final int totalItemCount,
      @JsonKey(name: 'list')
      required final List<BookingDto> bookingsList}) = _$BookingPagingDtoImpl;
  const _BookingPagingDto._() : super._();

  factory _BookingPagingDto.fromJson(Map<String, dynamic> json) =
      _$BookingPagingDtoImpl.fromJson;

  @override
  int get currentPageIndex;
  @override
  int get pageSize;
  @override
  int get totalItemCount;
  @override
  @JsonKey(name: 'list')
  List<BookingDto> get bookingsList;
  @override
  @JsonKey(ignore: true)
  _$$BookingPagingDtoImplCopyWith<_$BookingPagingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
