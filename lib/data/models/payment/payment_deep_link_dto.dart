import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_deep_link_dto.freezed.dart';
part 'payment_deep_link_dto.g.dart';

@freezed
class PaymentDeepLinkDto with _$PaymentDeepLinkDto {
  const PaymentDeepLinkDto._();

  const factory PaymentDeepLinkDto({
    required String linkApp,
    String? invoiceId,
    String? qr,
  }) = _PaymentDeepLinkDto;

  factory PaymentDeepLinkDto.fromJson(Json json) =>
      _$PaymentDeepLinkDtoFromJson(json);
}
