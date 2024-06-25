import 'package:flutter_dotenv/flutter_dotenv.dart';

const _envServerUrl = 'SERVER_URL';
const _envPrivacyPolicyUrl = 'PRIVACY_POLICY';
const _envOfferUrl = 'OFFER_URL';
const _envContactEmail = 'CONTACT_EMAIL';
const _envWebsiteName = 'WEBSITE_NAME';
const _envWebsiteUrl = 'WEBSITE_URL';
const _envInstagramUrl = 'INSTAGRAM_URL';

class Configuration {
  final String serverUrl;
  final String privacyPolicyUrl;
  final String offerUrl;
  final String appVersion;
  final String appBuildNumber;
  final String contactEmail;
  final String websiteName;
  final String websiteUrl;
  final String instagramUrl;

  Configuration._({
    required this.serverUrl,
    required this.privacyPolicyUrl,
    required this.offerUrl,
    required this.appVersion,
    required this.appBuildNumber,
    required this.contactEmail,
    required this.websiteName,
    required this.websiteUrl,
    required this.instagramUrl,
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
      contactEmail: dotEnv.get(_envContactEmail),
      websiteName: dotEnv.get(_envWebsiteName),
      websiteUrl: dotEnv.get(_envWebsiteUrl),
      instagramUrl: dotEnv.get(_envInstagramUrl),
      appVersion: appVersion,
      appBuildNumber: appBuildNumber,
    );
  }
}
