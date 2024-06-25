import 'package:eticket/common/common.dart';
import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_result.freezed.dart';
part 'auth_result.g.dart';

@freezed
class AuthResult with _$AuthResult {
  const AuthResult._();

  const factory AuthResult({
    required bool succeed,
    @Default([]) List<String> messages,
    ApiUserTokenDto? token,
  }) = _AuthResult;

  factory AuthResult.fromJson(Json json) => _$AuthResultFromJson(json);

  String? get message {
    return messages.isEmpty ? null : messages.join(', ');
  }
}
