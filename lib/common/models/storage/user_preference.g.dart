// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPreferenceImpl _$$UserPreferenceImplFromJson(Map<String, dynamic> json) =>
    _$UserPreferenceImpl(
      isOnboardingShown: json['isOnboardingShown'] as bool? ?? false,
      isPrivacyPolicyAccepted:
          json['isPrivacyPolicyAccepted'] as bool? ?? false,
      pinCode: json['pinCode'] as String? ?? '',
    );

Map<String, dynamic> _$$UserPreferenceImplToJson(
        _$UserPreferenceImpl instance) =>
    <String, dynamic>{
      'isOnboardingShown': instance.isOnboardingShown,
      'isPrivacyPolicyAccepted': instance.isPrivacyPolicyAccepted,
      'pinCode': instance.pinCode,
    };
