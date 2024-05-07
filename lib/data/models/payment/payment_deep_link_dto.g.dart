// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_deep_link_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDeepLinkDtoImpl _$$PaymentDeepLinkDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentDeepLinkDtoImpl(
      linkApp: json['linkApp'] as String,
      invoiceId: json['invoiceId'] as String?,
      qr: json['qr'] as String?,
    );

Map<String, dynamic> _$$PaymentDeepLinkDtoImplToJson(
    _$PaymentDeepLinkDtoImpl instance) {
  final val = <String, dynamic>{
    'linkApp': instance.linkApp,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('invoiceId', instance.invoiceId);
  writeNotNull('qr', instance.qr);
  return val;
}
