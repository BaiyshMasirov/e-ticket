// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_paging_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventPagingDto _$EventPagingDtoFromJson(Map<String, dynamic> json) {
  return _EventPagingDto.fromJson(json);
}

/// @nodoc
mixin _$EventPagingDto {
  int get currentPageIndex => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalItemCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<EventDto> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventPagingDtoCopyWith<EventPagingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventPagingDtoCopyWith<$Res> {
  factory $EventPagingDtoCopyWith(
          EventPagingDto value, $Res Function(EventPagingDto) then) =
      _$EventPagingDtoCopyWithImpl<$Res, EventPagingDto>;
  @useResult
  $Res call(
      {int currentPageIndex,
      int pageSize,
      int totalItemCount,
      @JsonKey(name: 'list') List<EventDto> events});
}

/// @nodoc
class _$EventPagingDtoCopyWithImpl<$Res, $Val extends EventPagingDto>
    implements $EventPagingDtoCopyWith<$Res> {
  _$EventPagingDtoCopyWithImpl(this._value, this._then);

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
    Object? events = null,
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
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventPagingDtoImplCopyWith<$Res>
    implements $EventPagingDtoCopyWith<$Res> {
  factory _$$EventPagingDtoImplCopyWith(_$EventPagingDtoImpl value,
          $Res Function(_$EventPagingDtoImpl) then) =
      __$$EventPagingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPageIndex,
      int pageSize,
      int totalItemCount,
      @JsonKey(name: 'list') List<EventDto> events});
}

/// @nodoc
class __$$EventPagingDtoImplCopyWithImpl<$Res>
    extends _$EventPagingDtoCopyWithImpl<$Res, _$EventPagingDtoImpl>
    implements _$$EventPagingDtoImplCopyWith<$Res> {
  __$$EventPagingDtoImplCopyWithImpl(
      _$EventPagingDtoImpl _value, $Res Function(_$EventPagingDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageIndex = null,
    Object? pageSize = null,
    Object? totalItemCount = null,
    Object? events = null,
  }) {
    return _then(_$EventPagingDtoImpl(
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
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventPagingDtoImpl extends _EventPagingDto {
  const _$EventPagingDtoImpl(
      {required this.currentPageIndex,
      required this.pageSize,
      required this.totalItemCount,
      @JsonKey(name: 'list') required final List<EventDto> events})
      : _events = events,
        super._();

  factory _$EventPagingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventPagingDtoImplFromJson(json);

  @override
  final int currentPageIndex;
  @override
  final int pageSize;
  @override
  final int totalItemCount;
  final List<EventDto> _events;
  @override
  @JsonKey(name: 'list')
  List<EventDto> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventPagingDto(currentPageIndex: $currentPageIndex, pageSize: $pageSize, totalItemCount: $totalItemCount, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventPagingDtoImpl &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalItemCount, totalItemCount) ||
                other.totalItemCount == totalItemCount) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPageIndex, pageSize,
      totalItemCount, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventPagingDtoImplCopyWith<_$EventPagingDtoImpl> get copyWith =>
      __$$EventPagingDtoImplCopyWithImpl<_$EventPagingDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventPagingDtoImplToJson(
      this,
    );
  }
}

abstract class _EventPagingDto extends EventPagingDto {
  const factory _EventPagingDto(
          {required final int currentPageIndex,
          required final int pageSize,
          required final int totalItemCount,
          @JsonKey(name: 'list') required final List<EventDto> events}) =
      _$EventPagingDtoImpl;
  const _EventPagingDto._() : super._();

  factory _EventPagingDto.fromJson(Map<String, dynamic> json) =
      _$EventPagingDtoImpl.fromJson;

  @override
  int get currentPageIndex;
  @override
  int get pageSize;
  @override
  int get totalItemCount;
  @override
  @JsonKey(name: 'list')
  List<EventDto> get events;
  @override
  @JsonKey(ignore: true)
  _$$EventPagingDtoImplCopyWith<_$EventPagingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
