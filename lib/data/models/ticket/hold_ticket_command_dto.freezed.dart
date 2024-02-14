// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hold_ticket_command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HoldTicketCommandDto _$HoldTicketCommandDtoFromJson(Map<String, dynamic> json) {
  return _HoldTicketCommandDto.fromJson(json);
}

/// @nodoc
mixin _$HoldTicketCommandDto {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HoldTicketCommandDtoCopyWith<HoldTicketCommandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoldTicketCommandDtoCopyWith<$Res> {
  factory $HoldTicketCommandDtoCopyWith(HoldTicketCommandDto value,
          $Res Function(HoldTicketCommandDto) then) =
      _$HoldTicketCommandDtoCopyWithImpl<$Res, HoldTicketCommandDto>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$HoldTicketCommandDtoCopyWithImpl<$Res,
        $Val extends HoldTicketCommandDto>
    implements $HoldTicketCommandDtoCopyWith<$Res> {
  _$HoldTicketCommandDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$HoldTicketCommandDtoImplCopyWith<$Res>
    implements $HoldTicketCommandDtoCopyWith<$Res> {
  factory _$$HoldTicketCommandDtoImplCopyWith(_$HoldTicketCommandDtoImpl value,
          $Res Function(_$HoldTicketCommandDtoImpl) then) =
      __$$HoldTicketCommandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$HoldTicketCommandDtoImplCopyWithImpl<$Res>
    extends _$HoldTicketCommandDtoCopyWithImpl<$Res, _$HoldTicketCommandDtoImpl>
    implements _$$HoldTicketCommandDtoImplCopyWith<$Res> {
  __$$HoldTicketCommandDtoImplCopyWithImpl(_$HoldTicketCommandDtoImpl _value,
      $Res Function(_$HoldTicketCommandDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$HoldTicketCommandDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HoldTicketCommandDtoImpl extends _HoldTicketCommandDto {
  const _$HoldTicketCommandDtoImpl({required this.id}) : super._();

  factory _$HoldTicketCommandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HoldTicketCommandDtoImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'HoldTicketCommandDto(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HoldTicketCommandDtoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HoldTicketCommandDtoImplCopyWith<_$HoldTicketCommandDtoImpl>
      get copyWith =>
          __$$HoldTicketCommandDtoImplCopyWithImpl<_$HoldTicketCommandDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HoldTicketCommandDtoImplToJson(
      this,
    );
  }
}

abstract class _HoldTicketCommandDto extends HoldTicketCommandDto {
  const factory _HoldTicketCommandDto({required final String id}) =
      _$HoldTicketCommandDtoImpl;
  const _HoldTicketCommandDto._() : super._();

  factory _HoldTicketCommandDto.fromJson(Map<String, dynamic> json) =
      _$HoldTicketCommandDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$HoldTicketCommandDtoImplCopyWith<_$HoldTicketCommandDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
