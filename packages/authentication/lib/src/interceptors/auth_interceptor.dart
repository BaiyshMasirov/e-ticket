import 'dart:io';

import 'package:authentication/src/bloc/bloc.dart';
import 'package:authentication/src/domain/domain.dart';
import 'package:common/common.dart';

class AuthInterceptor extends QueuedInterceptor {
  final Dio _dio;
  final AuthRepository _authRepository;
  final AuthCubit _authCubit;

  AuthInterceptor(
    Dio dio,
    AuthRepository authRepository,
    AuthCubit authCubit,
  )   : _dio = dio,
        _authRepository = authRepository,
        _authCubit = authCubit;

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
              HttpConstants.authorization: 'bearer ${credentials.accessToken}',
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
                  'bearer ${refreshedCredentials.accessToken}',
          ),
        );
      }
    } else {
      handler.next(response);
    }
  }
}
