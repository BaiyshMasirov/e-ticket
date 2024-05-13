import 'package:flutter_dotenv/flutter_dotenv.dart';

const _envServerUrl = 'SERVER_URL';
const _envPrivacyPolicyUrl = 'PRIVACY_POLICY';
const _envOfferUrl = 'OFFER_URL';

class Configuration {
  final String serverUrl;
  final String privacyPolicyUrl;
  final String offerUrl;
  final String appVersion;
  final String appBuildNumber;

  Configuration._({
    required this.serverUrl,
    required this.privacyPolicyUrl,
    required this.offerUrl,
    required this.appVersion,
    required this.appBuildNumber,
  });

  factory Configuration.getFromDotEnv({
    required DotEnv dotEnv,
    required String appVersion,
    required String appBuildNumber,
  }) {
    return Configuration._(
      serverUrl: dotEnv.get(_envServerUrl),
      privacyPolicyUrl: dotEnv.get(_envPrivacyPolicyUrl),
      offerUrl: dotEnv.get(_envOfferUrl),
      appVersion: appVersion,
      appBuildNumber: appBuildNumber,
    );
  }
}
