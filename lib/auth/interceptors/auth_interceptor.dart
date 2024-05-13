import 'dart:io';

import 'package:dio/dio.dart';
import 'package:eticket/auth/authentication.dart';
import 'package:eticket/common/common.dart';

class AuthInterceptor extends QueuedInterceptor {
  final Dio _dio;
  final AuthRepository _authRepository;
  final AuthCubit _authCubit;
  final Configuration _configuration;

  AuthInterceptor(
    Dio dio,
    AuthRepository authRepository,
    AuthCubit authCubit,
    Configuration configuration,
  )   : _dio = dio,
        _authRepository = authRepository,
        _authCubit = authCubit,
        _configuration = configuration;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final credentials = await _authRepository.getSignedInCredentials();
    final modifiedOptions = options
      ..headers.addAll(credentials == null
          ? {}
          : {
              HttpConstants.authorization: 'Bearer ${credentials.accessToken}',
              'app-version': _configuration.appVersion,
              'app-build-number': _configuration.appBuildNumber,
            });

    handler.next(modifiedOptions);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.statusCode == HttpStatus.unauthorized) {
      final credentials = await _authRepository.getSignedInCredentials();
      if (credentials != null && credentials.canRefresh) {
        await _authRepository.refreshToken(credentials);
      } else {
        await _authRepository.clearCredentialsStorage();
      }

      await _authCubit.checkAndUpdateAuthStatus();

      final refreshedCredentials =
          await _authRepository.getSignedInCredentials();
      if (refreshedCredentials != null) {
        handler.resolve(
          await _dio.fetch(
            response.requestOptions
              ..headers[HttpConstants.authorization] =
                  'Bearer ${refreshedCredentials.accessToken}',
          ),
        );
      }
    } else {
      handler.next(response);
    }
  }
}
