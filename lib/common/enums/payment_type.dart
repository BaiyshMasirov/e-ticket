import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentType {
  @JsonValue(1)
  Card(value: 1),

  @JsonValue(2)
  Mbank(value: 2),

  @JsonValue(3)
  Elsom(value: 3),

  @JsonValue(4)
  Megapay(value: 4),

  @JsonValue(5)
  Odengi(value: 5),

  @JsonValue(6)
  Balance(value: 6),

  unknown(value: -1),
  ;

  final int value;

  const PaymentType({required this.value});

  static List<PaymentType> activePayments = [
    PaymentType.Card,
    PaymentType.Megapay,
    PaymentType.Odengi,
  ];
}

extension PaymentTypeX on PaymentType {
  String get localizedName {
    switch (this) {
      case PaymentType.Card:
        return LocaleKeys.card.tr();
      case PaymentType.Mbank:
        return LocaleKeys.mbank.tr();
      case PaymentType.Elsom:
        return LocaleKeys.elsom.tr();
      case PaymentType.Megapay:
        return LocaleKeys.megapay.tr();
      case PaymentType.Odengi:
        return LocaleKeys.odengi.tr();
      case PaymentType.Balance:
        return LocaleKeys.balance.tr();
      default:
        return '-';
    }
  }

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
      case PaymentType.unknown:
        return '-';
    }
  }

  PaymentMechanism get paymentMechanism {
    switch (this) {
      case PaymentType.Odengi:
        return PaymentMechanism.deepLink;
      case PaymentType.Megapay:
        return PaymentMechanism.smsCode;
      case PaymentType.Card:
        return PaymentMechanism.acquiring;
      default:
        return PaymentMechanism.none;
    }
  }

  PaymentCreds get paymentCreds {
    switch (this) {
      case PaymentType.Odengi:
        return PaymentCreds.phoneNumber;
      case PaymentType.Megapay:
        return PaymentCreds.phoneSmsCode;
      case PaymentType.Card:
        return PaymentCreds.webView;
      default:
        return PaymentCreds.none;
    }
  }
}
