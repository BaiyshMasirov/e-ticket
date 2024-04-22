import 'package:flutter_dotenv/flutter_dotenv.dart';

const _envServerUrl = 'SERVER_URL';
const _envPrivacyPolicyUrl = 'PRIVACY_POLICY';
const _envOfferUrl = 'OFFER_URL';

class Configuration {
  final String serverUrl;
  final String privacyPolicyUrl;
  final String offerUrl;

  Configuration._({
    required this.serverUrl,
    required this.privacyPolicyUrl,
    required this.offerUrl,
  });

  factory Configuration.getFromDotEnv({
    required DotEnv dotEnv,
  }) {
    return Configuration._(
      serverUrl: dotEnv.get(_envServerUrl),
      privacyPolicyUrl: dotEnv.get(_envPrivacyPolicyUrl),
      offerUrl: dotEnv.get(_envOfferUrl),
    );
  }
}
