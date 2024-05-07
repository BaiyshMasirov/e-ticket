// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_deep_link_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentDeepLinkDto _$PaymentDeepLinkDtoFromJson(Map<String, dynamic> json) {
  return _PaymentDeepLinkDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentDeepLinkDto {
  String get linkApp => throw _privateConstructorUsedError;
  String? get invoiceId => throw _privateConstructorUsedError;
  String? get qr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDeepLinkDtoCopyWith<PaymentDeepLinkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDeepLinkDtoCopyWith<$Res> {
  factory $PaymentDeepLinkDtoCopyWith(
          PaymentDeepLinkDto value, $Res Function(PaymentDeepLinkDto) then) =
      _$PaymentDeepLinkDtoCopyWithImpl<$Res, PaymentDeepLinkDto>;
  @useResult
  $Res call({String linkApp, String? invoiceId, String? qr});
}

/// @nodoc
class _$PaymentDeepLinkDtoCopyWithImpl<$Res, $Val extends PaymentDeepLinkDto>
    implements $PaymentDeepLinkDtoCopyWith<$Res> {
  _$PaymentDeepLinkDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkApp = null,
    Object? invoiceId = freezed,
    Object? qr = freezed,
  }) {
    return _then(_value.copyWith(
      linkApp: null == linkApp
          ? _value.linkApp
          : linkApp // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      qr: freezed == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDeepLinkDtoImplCopyWith<$Res>
    implements $PaymentDeepLinkDtoCopyWith<$Res> {
  factory _$$PaymentDeepLinkDtoImplCopyWith(_$PaymentDeepLinkDtoImpl value,
          $Res Function(_$PaymentDeepLinkDtoImpl) then) =
      __$$PaymentDeepLinkDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String linkApp, String? invoiceId, String? qr});
}

/// @nodoc
class __$$PaymentDeepLinkDtoImplCopyWithImpl<$Res>
    extends _$PaymentDeepLinkDtoCopyWithImpl<$Res, _$PaymentDeepLinkDtoImpl>
    implements _$$PaymentDeepLinkDtoImplCopyWith<$Res> {
  __$$PaymentDeepLinkDtoImplCopyWithImpl(_$PaymentDeepLinkDtoImpl _value,
      $Res Function(_$PaymentDeepLinkDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkApp = null,
    Object? invoiceId = freezed,
    Object? qr = freezed,
  }) {
    return _then(_$PaymentDeepLinkDtoImpl(
      linkApp: null == linkApp
          ? _value.linkApp
          : linkApp // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      qr: freezed == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDeepLinkDtoImpl extends _PaymentDeepLinkDto {
  const _$PaymentDeepLinkDtoImpl(
      {required this.linkApp, this.invoiceId, this.qr})
      : super._();

  factory _$PaymentDeepLinkDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDeepLinkDtoImplFromJson(json);

  @override
  final String linkApp;
  @override
  final String? invoiceId;
  @override
  final String? qr;

  @override
  String toString() {
    return 'PaymentDeepLinkDto(linkApp: $linkApp, invoiceId: $invoiceId, qr: $qr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDeepLinkDtoImpl &&
            (identical(other.linkApp, linkApp) || other.linkApp == linkApp) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.qr, qr) || other.qr == qr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, linkApp, invoiceId, qr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDeepLinkDtoImplCopyWith<_$PaymentDeepLinkDtoImpl> get copyWith =>
      __$$PaymentDeepLinkDtoImplCopyWithImpl<_$PaymentDeepLinkDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDeepLinkDtoImplToJson(
      this,
    );
  }
}

abstract class _PaymentDeepLinkDto extends PaymentDeepLinkDto {
  const factory _PaymentDeepLinkDto(
      {required final String linkApp,
      final String? invoiceId,
      final String? qr}) = _$PaymentDeepLinkDtoImpl;
  const _PaymentDeepLinkDto._() : super._();

  factory _PaymentDeepLinkDto.fromJson(Map<String, dynamic> json) =
      _$PaymentDeepLinkDtoImpl.fromJson;

  @override
  String get linkApp;
  @override
  String? get invoiceId;
  @override
  String? get qr;
  @override
  @JsonKey(ignore: true)
  _$$PaymentDeepLinkDtoImplCopyWith<_$PaymentDeepLinkDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
