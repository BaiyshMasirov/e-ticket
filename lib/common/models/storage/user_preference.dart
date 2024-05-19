import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preference.freezed.dart';
part 'user_preference.g.dart';

@freezed
class UserPreference with _$UserPreference {
  const UserPreference._();

  const factory UserPreference({
    @Default(false) bool isOnboardingShown,
    @Default(false) bool isPrivacyPolicyAccepted,
    @Default('') String pinCode,
  }) = _UserPreference;

  factory UserPreference.fromJson(Json json) => _$UserPreferenceFromJson(json);
}
