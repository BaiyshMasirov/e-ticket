import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/common/common.dart';

class AccountRemoteSource {
  final Dio _dio;

  AccountRemoteSource({
    required Dio dio,
  }) : _dio = dio;

  Future<RemoteResponse<ApiUserTokenDto>> register(
    RegisterUserCommandDto registerUserCommandDto,
  ) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post('api/Account/register',
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
        'api/Account/login',
        data: loginCommandDto.toJson(),
      ),
      parse: (json) => ApiUserTokenDto.fromJson(json['token']),
    );

    return response;
  }

  Future<RemoteResponse<Unit>> changePassword(
    ChangePasswordCommandDto changePasswordCommandDto,
  ) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        'api/Account/change-password',
        data: changePasswordCommandDto.toJson(),
      ),
      parse: (json) => unit,
    );

    return response;
  }

  Future<RemoteResponse<Unit>> deleteAccount() async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        'api/Account/delete-account',
        data: {},
      ),
      parse: (json) => unit,
    );

    return response;
  }
}
