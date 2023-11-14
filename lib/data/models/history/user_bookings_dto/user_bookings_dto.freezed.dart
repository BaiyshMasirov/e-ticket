// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bookings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBookingsDto _$UserBookingsDtoFromJson(Map<String, dynamic> json) {
  return _UserBookingsDto.fromJson(json);
}

/// @nodoc
mixin _$UserBookingsDto {
  int get currentPageIndex => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalItemCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<UserBookingsListDto> get bookingsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBookingsDtoCopyWith<UserBookingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBookingsDtoCopyWith<$Res> {
  factory $UserBookingsDtoCopyWith(
          UserBookingsDto value, $Res Function(UserBookingsDto) then) =
      _$UserBookingsDtoCopyWithImpl<$Res, UserBookingsDto>;
  @useResult
  $Res call(
      {int currentPageIndex,
      int pageSize,
      int totalItemCount,
      @JsonKey(name: 'list') List<UserBookingsListDto> bookingsList});
}

/// @nodoc
class _$UserBookingsDtoCopyWithImpl<$Res, $Val extends UserBookingsDto>
    implements $UserBookingsDtoCopyWith<$Res> {
  _$UserBookingsDtoCopyWithImpl(this._value, this._then);

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
              as List<UserBookingsListDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBookingsDtoImplCopyWith<$Res>
    implements $UserBookingsDtoCopyWith<$Res> {
  factory _$$UserBookingsDtoImplCopyWith(_$UserBookingsDtoImpl value,
          $Res Function(_$UserBookingsDtoImpl) then) =
      __$$UserBookingsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPageIndex,
      int pageSize,
      int totalItemCount,
      @JsonKey(name: 'list') List<UserBookingsListDto> bookingsList});
}

/// @nodoc
class __$$UserBookingsDtoImplCopyWithImpl<$Res>
    extends _$UserBookingsDtoCopyWithImpl<$Res, _$UserBookingsDtoImpl>
    implements _$$UserBookingsDtoImplCopyWith<$Res> {
  __$$UserBookingsDtoImplCopyWithImpl(
      _$UserBookingsDtoImpl _value, $Res Function(_$UserBookingsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageIndex = null,
    Object? pageSize = null,
    Object? totalItemCount = null,
    Object? bookingsList = null,
  }) {
    return _then(_$UserBookingsDtoImpl(
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
              as List<UserBookingsListDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBookingsDtoImpl extends _UserBookingsDto {
  const _$UserBookingsDtoImpl(
      {required this.currentPageIndex,
      required this.pageSize,
      required this.totalItemCount,
      @JsonKey(name: 'list')
      required final List<UserBookingsListDto> bookingsList})
      : _bookingsList = bookingsList,
        super._();

  factory _$UserBookingsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBookingsDtoImplFromJson(json);

  @override
  final int currentPageIndex;
  @override
  final int pageSize;
  @override
  final int totalItemCount;
  final List<UserBookingsListDto> _bookingsList;
  @override
  @JsonKey(name: 'list')
  List<UserBookingsListDto> get bookingsList {
    if (_bookingsList is EqualUnmodifiableListView) return _bookingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsList);
  }

  @override
  String toString() {
    return 'UserBookingsDto(currentPageIndex: $currentPageIndex, pageSize: $pageSize, totalItemCount: $totalItemCount, bookingsList: $bookingsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBookingsDtoImpl &&
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
  _$$UserBookingsDtoImplCopyWith<_$UserBookingsDtoImpl> get copyWith =>
      __$$UserBookingsDtoImplCopyWithImpl<_$UserBookingsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBookingsDtoImplToJson(
      this,
    );
  }
}

abstract class _UserBookingsDto extends UserBookingsDto {
  const factory _UserBookingsDto(
          {required final int currentPageIndex,
          required final int pageSize,
          required final int totalItemCount,
          @JsonKey(name: 'list')
          required final List<UserBookingsListDto> bookingsList}) =
      _$UserBookingsDtoImpl;
  const _UserBookingsDto._() : super._();

  factory _UserBookingsDto.fromJson(Map<String, dynamic> json) =
      _$UserBookingsDtoImpl.fromJson;

  @override
  int get currentPageIndex;
  @override
  int get pageSize;
  @override
  int get totalItemCount;
  @override
  @JsonKey(name: 'list')
  List<UserBookingsListDto> get bookingsList;
  @override
  @JsonKey(ignore: true)
  _$$UserBookingsDtoImplCopyWith<_$UserBookingsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
