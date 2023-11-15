import 'package:eticket/generated/assets.gen.dart';

enum PaymentType {
  Card,
  Mbank,
  Elsom,
  Megapay,
  Odengi,
  Balance,
}

extension PaymentTypeX on PaymentType {
  String get getImagePath {
    switch (this) {
      case PaymentType.Card:
        return Assets.images.payments.visaOnly.path;
      case PaymentType.Mbank:
        return Assets.images.payments.mbank.path;
      case PaymentType.Elsom:
        return Assets.images.payments.elsom.path;
      case PaymentType.Megapay:
        return Assets.images.payments.megapay.path;
      case PaymentType.Odengi:
        return Assets.images.payments.odengi.path;
      case PaymentType.Balance:
        return Assets.images.payments.balance.path;
    }
  }
}
