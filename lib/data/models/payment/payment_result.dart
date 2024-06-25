import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_result.freezed.dart';
part 'payment_result.g.dart';

@freezed
class PaymentResult with _$PaymentResult {
  const PaymentResult._();

  const factory PaymentResult({
    required bool succeded,
    @Default([]) List<String> messages,
    String? link,
    String? redirectUrl,
  }) = _PaymentResult;

  factory PaymentResult.fromJson(Json json) => _$PaymentResultFromJson(json);

  String? get message {
    return messages.isEmpty ? null : messages.join(', ');
  }
}
