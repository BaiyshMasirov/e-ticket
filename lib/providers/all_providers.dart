import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Service imports
import '../services/local_storage/key_value_storage_service.dart';
import '../services/networking/api_endpoint.dart';
import '../services/networking/api_service.dart';
import '../services/networking/dio_service.dart';

//Interceptor imports
import '../services/networking/interceptors/api_interceptor.dart';
import '../services/networking/interceptors/logging_interceptor.dart';
import '../services/networking/interceptors/refresh_token_interceptor.dart';

//Repository imports
import '../services/repositories/auth_repository.dart';
import '../services/repositories/bookings_repository.dart';
import '../services/repositories/movies_repository.dart';
import '../services/repositories/payments_repository.dart';
import '../services/repositories/shows_repository.dart';
import '../services/repositories/theaters_repository.dart';

//Provider imports
import 'auth_provider.dart';
import 'bookings_provider.dart';
import 'forgot_password_provider.dart';
import 'movies_provider.dart';
import 'payments_provider.dart';
import 'shows_provider.dart';
import 'theaters_provider.dart';

//State imports
import 'states/auth_state.dart';
import 'states/forgot_password_state.dart';

//Services
final keyValueStorageServiceProvider = Provider<KeyValueStorageService>(
  (ref) => KeyValueStorageService(),
);

final _dioProvider = Provider<Dio>((ref) {
  final baseOptions = BaseOptions(
    baseUrl: ApiEndpoint.baseUrl,
  );
  return Dio(baseOptions);
});

final _dioServiceProvider = Provider<DioService>((ref) {
  final _dio = ref.watch(_dioProvider);
  // Order of interceptors very important
  return DioService(
    dioClient: _dio,
  );
});
final _apiServiceProvider = Provider<ApiService>((ref) {
  final _dioService = ref.watch(_dioServiceProvider);
  return ApiService(_dioService);
});

//repositories providers
final _authRepositoryProvider = Provider<AuthRepository>((ref) {
  final _apiService = ref.watch(_apiServiceProvider);
  return AuthRepository(apiService: _apiService);
});

//notifier providers
final authProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) {
  final _authRepository = ref.watch(_authRepositoryProvider);
  final _keyValueStorageService = ref.watch(keyValueStorageServiceProvider);
  return AuthProvider(
    ref: ref,
    authRepository: _authRepository,
    keyValueStorageService: _keyValueStorageService,
  );
});

final forgotPasswordProvider = StateNotifierProvider.autoDispose<
    ForgotPasswordProvider, ForgotPasswordState>((ref) {
  final _authRepository = ref.watch(_authRepositoryProvider);
  return ForgotPasswordProvider(
    authRepository: _authRepository,
    initialState: const ForgotPasswordState.email(),
  );
});
