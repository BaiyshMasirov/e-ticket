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

  Future<RemoteResponse<ResponseResult>> sendConfirmCode({
    required String email,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.get(
        'api/Account/send-confirma-code',
        queryParameters: {
          'email': email,
        },
      ),
      parse: (json) => ResponseResult.fromJson(json),
    );

    return response;
  }

  Future<RemoteResponse<ResponseResult>> confirmAccount({
    required String email,
    required String code,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        'api/Account/confirm-account',
        data: {
          'email': email,
          'code': code,
        },
      ),
      parse: (json) => ResponseResult.fromJson(json),
    );

    return response;
  }

  Future<RemoteResponse<ResponseResult>> sendRecoveryCode({
    required String email,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.get(
        'api/Account/send-recovery-code',
        queryParameters: {
          'email': email,
        },
      ),
      parse: (json) => ResponseResult.fromJson(json),
    );

    return response;
  }

  Future<RemoteResponse<ResponseResult>> recoveryPassword({
    required String email,
    required String code,
    required String password,
    required String confirmPassword,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        'api/Account/recovery-password',
        data: {
          'email': email,
          'code': code,
          'password': password,
          'confirmPassword': confirmPassword,
        },
      ),
      parse: (json) => ResponseResult.fromJson(json),
    );

    return response;
  }
}
