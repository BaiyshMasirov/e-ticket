// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fresh.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Fresh<T> {
  T get entity => throw _privateConstructorUsedError;
  bool get isFresh => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreshCopyWith<T, Fresh<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreshCopyWith<T, $Res> {
  factory $FreshCopyWith(Fresh<T> value, $Res Function(Fresh<T>) then) =
      _$FreshCopyWithImpl<T, $Res, Fresh<T>>;
  @useResult
  $Res call({T entity, bool isFresh});
}

/// @nodoc
class _$FreshCopyWithImpl<T, $Res, $Val extends Fresh<T>>
    implements $FreshCopyWith<T, $Res> {
  _$FreshCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = freezed,
    Object? isFresh = null,
  }) {
    return _then(_value.copyWith(
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreshImplCopyWith<T, $Res>
    implements $FreshCopyWith<T, $Res> {
  factory _$$FreshImplCopyWith(
          _$FreshImpl<T> value, $Res Function(_$FreshImpl<T>) then) =
      __$$FreshImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T entity, bool isFresh});
}

/// @nodoc
class __$$FreshImplCopyWithImpl<T, $Res>
    extends _$FreshCopyWithImpl<T, $Res, _$FreshImpl<T>>
    implements _$$FreshImplCopyWith<T, $Res> {
  __$$FreshImplCopyWithImpl(
      _$FreshImpl<T> _value, $Res Function(_$FreshImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = freezed,
    Object? isFresh = null,
  }) {
    return _then(_$FreshImpl<T>(
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FreshImpl<T> extends _Fresh<T> {
  const _$FreshImpl({required this.entity, required this.isFresh}) : super._();

  @override
  final T entity;
  @override
  final bool isFresh;

  @override
  String toString() {
    return 'Fresh<$T>(entity: $entity, isFresh: $isFresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreshImpl<T> &&
            const DeepCollectionEquality().equals(other.entity, entity) &&
            (identical(other.isFresh, isFresh) || other.isFresh == isFresh));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(entity), isFresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreshImplCopyWith<T, _$FreshImpl<T>> get copyWith =>
      __$$FreshImplCopyWithImpl<T, _$FreshImpl<T>>(this, _$identity);
}

abstract class _Fresh<T> extends Fresh<T> {
  const factory _Fresh({required final T entity, required final bool isFresh}) =
      _$FreshImpl<T>;
  const _Fresh._() : super._();

  @override
  T get entity;
  @override
  bool get isFresh;
  @override
  @JsonKey(ignore: true)
  _$$FreshImplCopyWith<T, _$FreshImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
