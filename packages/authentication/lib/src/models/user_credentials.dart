import 'package:common/common.dart';

part 'user_credentials.freezed.dart';
part 'user_credentials.g.dart';

@freezed
class UserCredentials with _$UserCredentials {
  const UserCredentials._();
  const factory UserCredentials({
    required String accessToken,
    required String refreshToken,
    // @DateTimeUTCSerializer() required DateTime accessTokenExpiresAt,
    // @DateTimeUTCSerializer() required DateTime refreshTokenExpiresAt,
  }) = _UserCredentials;

  // bool get canRefresh => refreshTokenExpiresAt.isAfter(DateTime.now());
  // bool get isExpired {
  //   final result = accessTokenExpiresAt
  //       .subtract(const Duration(minutes: 5))
  //       .isBefore(DateTime.now());
  //   return result;
  // }
  bool get canRefresh => false;
  bool get isExpired => false;

  factory UserCredentials.fromJson(Json json) =>
      _$UserCredentialsFromJson(json);
}