import 'package:authentication/src/models/models.dart';
import 'package:common/common.dart';

class AuthRemoteDatasource {
  final Dio _dio;

  AuthRemoteDatasource({
    required Dio dio,
  }) : _dio = dio;

  Future<RemoteResponse<ApiUserTokenDto>> refreshToken(
    UserCredentials userCredentials,
  ) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post('api/Account/token'),
      parse: (json) => ApiUserTokenDto.fromJson(json['token']),
    );

    return response;
  }
}
