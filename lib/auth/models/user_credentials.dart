import 'package:eticket/common/common.dart';
import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials.freezed.dart';
part 'user_credentials.g.dart';

@freezed
class UserCredentials with _$UserCredentials {
  const UserCredentials._();
  const factory UserCredentials({
    required String accessToken,
    required String refreshToken,
    @DateTimeUTCSerializer() required DateTime? accessTokenExpiresAt,
    required bool isAdmin,
  }) = _UserCredentials;

  bool get canRefresh => true;
  bool get isExpired {
    if (accessTokenExpiresAt == null) {
      return true;
    }
    final result = accessTokenExpiresAt!
        .subtract(const Duration(minutes: 5))
        .isBefore(DateTime.now());
    return result;
  }

  factory UserCredentials.fromJson(Json json) =>
      _$UserCredentialsFromJson(json);
}
