import 'package:flutter_dotenv/flutter_dotenv.dart';

const _envServerUrl = 'SERVER_URL';
const _envPrivacyPolicyUrl = 'PRIVACY_POLICY';

class Configuration {
  final String serverUrl;
  final String privacyPolicyUrl;

  Configuration._({
    required this.serverUrl,
    required this.privacyPolicyUrl,
  });

  factory Configuration.getFromDotEnv({
    required DotEnv dotEnv,
  }) {
    return Configuration._(
      serverUrl: dotEnv.get(_envServerUrl),
      privacyPolicyUrl: dotEnv.get(_envPrivacyPolicyUrl),
    );
  }
}
