// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentResult _$PaymentResultFromJson(Map<String, dynamic> json) {
  return _PaymentResult.fromJson(json);
}

/// @nodoc
mixin _$PaymentResult {
  bool get succeded => throw _privateConstructorUsedError;
  List<String> get messages => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get redirectUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentResultCopyWith<PaymentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResultCopyWith<$Res> {
  factory $PaymentResultCopyWith(
          PaymentResult value, $Res Function(PaymentResult) then) =
      _$PaymentResultCopyWithImpl<$Res, PaymentResult>;
  @useResult
  $Res call(
      {bool succeded,
      List<String> messages,
      String? link,
      String? redirectUrl});
}

/// @nodoc
class _$PaymentResultCopyWithImpl<$Res, $Val extends PaymentResult>
    implements $PaymentResultCopyWith<$Res> {
  _$PaymentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? succeded = null,
    Object? messages = null,
    Object? link = freezed,
    Object? redirectUrl = freezed,
  }) {
    return _then(_value.copyWith(
      succeded: null == succeded
          ? _value.succeded
          : succeded // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentResultImplCopyWith<$Res>
    implements $PaymentResultCopyWith<$Res> {
  factory _$$PaymentResultImplCopyWith(
          _$PaymentResultImpl value, $Res Function(_$PaymentResultImpl) then) =
      __$$PaymentResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool succeded,
      List<String> messages,
      String? link,
      String? redirectUrl});
}

/// @nodoc
class __$$PaymentResultImplCopyWithImpl<$Res>
    extends _$PaymentResultCopyWithImpl<$Res, _$PaymentResultImpl>
    implements _$$PaymentResultImplCopyWith<$Res> {
  __$$PaymentResultImplCopyWithImpl(
      _$PaymentResultImpl _value, $Res Function(_$PaymentResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? succeded = null,
    Object? messages = null,
    Object? link = freezed,
    Object? redirectUrl = freezed,
  }) {
    return _then(_$PaymentResultImpl(
      succeded: null == succeded
          ? _value.succeded
          : succeded // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResultImpl extends _PaymentResult {
  const _$PaymentResultImpl(
      {required this.succeded,
      final List<String> messages = const [],
      this.link,
      this.redirectUrl})
      : _messages = messages,
        super._();

  factory _$PaymentResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResultImplFromJson(json);

  @override
  final bool succeded;
  final List<String> _messages;
  @override
  @JsonKey()
  List<String> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String? link;
  @override
  final String? redirectUrl;

  @override
  String toString() {
    return 'PaymentResult(succeded: $succeded, messages: $messages, link: $link, redirectUrl: $redirectUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResultImpl &&
            (identical(other.succeded, succeded) ||
                other.succeded == succeded) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, succeded,
      const DeepCollectionEquality().hash(_messages), link, redirectUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResultImplCopyWith<_$PaymentResultImpl> get copyWith =>
      __$$PaymentResultImplCopyWithImpl<_$PaymentResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResultImplToJson(
      this,
    );
  }
}

abstract class _PaymentResult extends PaymentResult {
  const factory _PaymentResult(
      {required final bool succeded,
      final List<String> messages,
      final String? link,
      final String? redirectUrl}) = _$PaymentResultImpl;
  const _PaymentResult._() : super._();

  factory _PaymentResult.fromJson(Map<String, dynamic> json) =
      _$PaymentResultImpl.fromJson;

  @override
  bool get succeded;
  @override
  List<String> get messages;
  @override
  String? get link;
  @override
  String? get redirectUrl;
  @override
  @JsonKey(ignore: true)
  _$$PaymentResultImplCopyWith<_$PaymentResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
