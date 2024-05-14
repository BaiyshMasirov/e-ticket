// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseResult _$ResponseResultFromJson(Map<String, dynamic> json) {
  return _ResponseResult.fromJson(json);
}

/// @nodoc
mixin _$ResponseResult {
  bool get succeed => throw _privateConstructorUsedError;
  List<String> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseResultCopyWith<ResponseResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseResultCopyWith<$Res> {
  factory $ResponseResultCopyWith(
          ResponseResult value, $Res Function(ResponseResult) then) =
      _$ResponseResultCopyWithImpl<$Res, ResponseResult>;
  @useResult
  $Res call({bool succeed, List<String> messages});
}

/// @nodoc
class _$ResponseResultCopyWithImpl<$Res, $Val extends ResponseResult>
    implements $ResponseResultCopyWith<$Res> {
  _$ResponseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? succeed = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      succeed: null == succeed
          ? _value.succeed
          : succeed // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseResultImplCopyWith<$Res>
    implements $ResponseResultCopyWith<$Res> {
  factory _$$ResponseResultImplCopyWith(_$ResponseResultImpl value,
          $Res Function(_$ResponseResultImpl) then) =
      __$$ResponseResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool succeed, List<String> messages});
}

/// @nodoc
class __$$ResponseResultImplCopyWithImpl<$Res>
    extends _$ResponseResultCopyWithImpl<$Res, _$ResponseResultImpl>
    implements _$$ResponseResultImplCopyWith<$Res> {
  __$$ResponseResultImplCopyWithImpl(
      _$ResponseResultImpl _value, $Res Function(_$ResponseResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? succeed = null,
    Object? messages = null,
  }) {
    return _then(_$ResponseResultImpl(
      succeed: null == succeed
          ? _value.succeed
          : succeed // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseResultImpl extends _ResponseResult {
  const _$ResponseResultImpl(
      {required this.succeed, final List<String> messages = const []})
      : _messages = messages,
        super._();

  factory _$ResponseResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseResultImplFromJson(json);

  @override
  final bool succeed;
  final List<String> _messages;
  @override
  @JsonKey()
  List<String> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ResponseResult(succeed: $succeed, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseResultImpl &&
            (identical(other.succeed, succeed) || other.succeed == succeed) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, succeed, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseResultImplCopyWith<_$ResponseResultImpl> get copyWith =>
      __$$ResponseResultImplCopyWithImpl<_$ResponseResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseResultImplToJson(
      this,
    );
  }
}

abstract class _ResponseResult extends ResponseResult {
  const factory _ResponseResult(
      {required final bool succeed,
      final List<String> messages}) = _$ResponseResultImpl;
  const _ResponseResult._() : super._();

  factory _ResponseResult.fromJson(Map<String, dynamic> json) =
      _$ResponseResultImpl.fromJson;

  @override
  bool get succeed;
  @override
  List<String> get messages;
  @override
  @JsonKey(ignore: true)
  _$$ResponseResultImplCopyWith<_$ResponseResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
