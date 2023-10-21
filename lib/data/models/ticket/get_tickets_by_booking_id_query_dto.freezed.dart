// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_tickets_by_booking_id_query_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetTicketsByBookingIdQueryDto _$GetTicketsByBookingIdQueryDtoFromJson(
    Map<String, dynamic> json) {
  return _GetTicketsByBookingIdQueryDto.fromJson(json);
}

/// @nodoc
mixin _$GetTicketsByBookingIdQueryDto {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTicketsByBookingIdQueryDtoCopyWith<GetTicketsByBookingIdQueryDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTicketsByBookingIdQueryDtoCopyWith<$Res> {
  factory $GetTicketsByBookingIdQueryDtoCopyWith(
          GetTicketsByBookingIdQueryDto value,
          $Res Function(GetTicketsByBookingIdQueryDto) then) =
      _$GetTicketsByBookingIdQueryDtoCopyWithImpl<$Res,
          GetTicketsByBookingIdQueryDto>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$GetTicketsByBookingIdQueryDtoCopyWithImpl<$Res,
        $Val extends GetTicketsByBookingIdQueryDto>
    implements $GetTicketsByBookingIdQueryDtoCopyWith<$Res> {
  _$GetTicketsByBookingIdQueryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTicketsByBookingIdQueryDtoImplCopyWith<$Res>
    implements $GetTicketsByBookingIdQueryDtoCopyWith<$Res> {
  factory _$$GetTicketsByBookingIdQueryDtoImplCopyWith(
          _$GetTicketsByBookingIdQueryDtoImpl value,
          $Res Function(_$GetTicketsByBookingIdQueryDtoImpl) then) =
      __$$GetTicketsByBookingIdQueryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetTicketsByBookingIdQueryDtoImplCopyWithImpl<$Res>
    extends _$GetTicketsByBookingIdQueryDtoCopyWithImpl<$Res,
        _$GetTicketsByBookingIdQueryDtoImpl>
    implements _$$GetTicketsByBookingIdQueryDtoImplCopyWith<$Res> {
  __$$GetTicketsByBookingIdQueryDtoImplCopyWithImpl(
      _$GetTicketsByBookingIdQueryDtoImpl _value,
      $Res Function(_$GetTicketsByBookingIdQueryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetTicketsByBookingIdQueryDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTicketsByBookingIdQueryDtoImpl
    extends _GetTicketsByBookingIdQueryDto {
  const _$GetTicketsByBookingIdQueryDtoImpl({required this.id}) : super._();

  factory _$GetTicketsByBookingIdQueryDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetTicketsByBookingIdQueryDtoImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'GetTicketsByBookingIdQueryDto(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTicketsByBookingIdQueryDtoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTicketsByBookingIdQueryDtoImplCopyWith<
          _$GetTicketsByBookingIdQueryDtoImpl>
      get copyWith => __$$GetTicketsByBookingIdQueryDtoImplCopyWithImpl<
          _$GetTicketsByBookingIdQueryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTicketsByBookingIdQueryDtoImplToJson(
      this,
    );
  }
}

abstract class _GetTicketsByBookingIdQueryDto
    extends GetTicketsByBookingIdQueryDto {
  const factory _GetTicketsByBookingIdQueryDto({required final String id}) =
      _$GetTicketsByBookingIdQueryDtoImpl;
  const _GetTicketsByBookingIdQueryDto._() : super._();

  factory _GetTicketsByBookingIdQueryDto.fromJson(Map<String, dynamic> json) =
      _$GetTicketsByBookingIdQueryDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetTicketsByBookingIdQueryDtoImplCopyWith<
          _$GetTicketsByBookingIdQueryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
