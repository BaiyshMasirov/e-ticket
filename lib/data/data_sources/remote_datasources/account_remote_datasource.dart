import 'package:common/common.dart';
import 'package:eticket/data/models/models.dart';

class AccountRemoteSource {
  final Dio _dio;

  AccountRemoteSource({
    required Dio dio,
  }) : _dio = dio;

  Future<RemoteResponse<ApiUserTokenDto>> register(
      RegisterUserCommandDto registerUserCommandDto,
      ) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post('/api/Account/register',
          data: registerUserCommandDto.toJson()),
      parse: (json) {
        return ApiUserTokenDto.fromJson(json['token']);
      },
    );

    return response;
  }

  Future<RemoteResponse<ApiUserTokenDto>> login(
      LoginCommandDto loginCommandDto,
      ) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        '/api/Account/login',
        data: loginCommandDto.toJson(),
      ),
      parse: (json) => ApiUserTokenDto.fromJson(json['token']),
    );

    return response;
  }

  Future<RemoteResponse<ApiUserTokenDto>> refreshPassword(
      RefreshPasswordCommandDto refreshPasswordCommandDto,
      ) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        '/api/Account/login',
        data: refreshPasswordCommandDto.toJson(),
      ),
      parse: (json) => ApiUserTokenDto.fromJson(json['token']),
    );

    return response;
  }
}
