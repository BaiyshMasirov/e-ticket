// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_key_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketKeyValueModel {
  int get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketKeyValueModelCopyWith<TicketKeyValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketKeyValueModelCopyWith<$Res> {
  factory $TicketKeyValueModelCopyWith(
          TicketKeyValueModel value, $Res Function(TicketKeyValueModel) then) =
      _$TicketKeyValueModelCopyWithImpl<$Res, TicketKeyValueModel>;
  @useResult
  $Res call({int key, String value});
}

/// @nodoc
class _$TicketKeyValueModelCopyWithImpl<$Res, $Val extends TicketKeyValueModel>
    implements $TicketKeyValueModelCopyWith<$Res> {
  _$TicketKeyValueModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TicketKeyValueModelImplCopyWith<$Res>
    implements $TicketKeyValueModelCopyWith<$Res> {
  factory _$$TicketKeyValueModelImplCopyWith(_$TicketKeyValueModelImpl value,
          $Res Function(_$TicketKeyValueModelImpl) then) =
      __$$TicketKeyValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int key, String value});
}

/// @nodoc
class __$$TicketKeyValueModelImplCopyWithImpl<$Res>
    extends _$TicketKeyValueModelCopyWithImpl<$Res, _$TicketKeyValueModelImpl>
    implements _$$TicketKeyValueModelImplCopyWith<$Res> {
  __$$TicketKeyValueModelImplCopyWithImpl(_$TicketKeyValueModelImpl _value,
      $Res Function(_$TicketKeyValueModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$TicketKeyValueModelImpl(
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

class _$TicketKeyValueModelImpl extends _TicketKeyValueModel {
  const _$TicketKeyValueModelImpl({required this.key, required this.value})
      : super._();

  @override
  final int key;
  @override
  final String value;

  @override
  String toString() {
    return 'TicketKeyValueModel(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketKeyValueModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketKeyValueModelImplCopyWith<_$TicketKeyValueModelImpl> get copyWith =>
      __$$TicketKeyValueModelImplCopyWithImpl<_$TicketKeyValueModelImpl>(
          this, _$identity);
}

abstract class _TicketKeyValueModel extends TicketKeyValueModel {
  const factory _TicketKeyValueModel(
      {required final int key,
      required final String value}) = _$TicketKeyValueModelImpl;
  const _TicketKeyValueModel._() : super._();

  @override
  int get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$TicketKeyValueModelImplCopyWith<_$TicketKeyValueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
