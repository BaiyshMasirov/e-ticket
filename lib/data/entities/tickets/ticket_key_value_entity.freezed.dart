// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_key_value_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketKeyValueEntity _$TicketKeyValueEntityFromJson(Map<String, dynamic> json) {
  return _TicketKeyValueEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketKeyValueEntity {
  int get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketKeyValueEntityCopyWith<TicketKeyValueEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketKeyValueEntityCopyWith<$Res> {
  factory $TicketKeyValueEntityCopyWith(TicketKeyValueEntity value,
          $Res Function(TicketKeyValueEntity) then) =
      _$TicketKeyValueEntityCopyWithImpl<$Res, TicketKeyValueEntity>;
  @useResult
  $Res call({int key, String value});
}

/// @nodoc
class _$TicketKeyValueEntityCopyWithImpl<$Res,
        $Val extends TicketKeyValueEntity>
    implements $TicketKeyValueEntityCopyWith<$Res> {
  _$TicketKeyValueEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketKeyValueEntityImplCopyWith<$Res>
    implements $TicketKeyValueEntityCopyWith<$Res> {
  factory _$$TicketKeyValueEntityImplCopyWith(_$TicketKeyValueEntityImpl value,
          $Res Function(_$TicketKeyValueEntityImpl) then) =
      __$$TicketKeyValueEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int key, String value});
}

/// @nodoc
class __$$TicketKeyValueEntityImplCopyWithImpl<$Res>
    extends _$TicketKeyValueEntityCopyWithImpl<$Res, _$TicketKeyValueEntityImpl>
    implements _$$TicketKeyValueEntityImplCopyWith<$Res> {
  __$$TicketKeyValueEntityImplCopyWithImpl(_$TicketKeyValueEntityImpl _value,
      $Res Function(_$TicketKeyValueEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$TicketKeyValueEntityImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketKeyValueEntityImpl extends _TicketKeyValueEntity {
  const _$TicketKeyValueEntityImpl({required this.key, required this.value})
      : super._();

  factory _$TicketKeyValueEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketKeyValueEntityImplFromJson(json);

  @override
  final int key;
  @override
  final String value;

  @override
  String toString() {
    return 'TicketKeyValueEntity(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketKeyValueEntityImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketKeyValueEntityImplCopyWith<_$TicketKeyValueEntityImpl>
      get copyWith =>
          __$$TicketKeyValueEntityImplCopyWithImpl<_$TicketKeyValueEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketKeyValueEntityImplToJson(
      this,
    );
  }
}

abstract class _TicketKeyValueEntity extends TicketKeyValueEntity {
  const factory _TicketKeyValueEntity(
      {required final int key,
      required final String value}) = _$TicketKeyValueEntityImpl;
  const _TicketKeyValueEntity._() : super._();

  factory _TicketKeyValueEntity.fromJson(Map<String, dynamic> json) =
      _$TicketKeyValueEntityImpl.fromJson;

  @override
  int get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$TicketKeyValueEntityImplCopyWith<_$TicketKeyValueEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
