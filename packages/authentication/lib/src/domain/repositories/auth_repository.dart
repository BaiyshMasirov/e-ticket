import 'package:authentication/src/data/datasources/local_datasources/auth_local_datasource.dart';
import 'package:authentication/src/data/datasources/remote_datasources/auth_remote_datasource.dart';
import 'package:authentication/src/models/models.dart';
import 'package:common/common.dart';

class AuthRepository with NetworkRemoteRepositoryMixin {
  final AuthLocalDatasource _authLocalDatasource;
  final AuthRemoteDatasource _authRemoteDatasource;

  AuthRepository({
    required AuthLocalDatasource authLocalDatasource,
    required AuthRemoteDatasource authRemoteDatasource,
  })  : _authRemoteDatasource = authRemoteDatasource,
        _authLocalDatasource = authLocalDatasource;

  Future<UserCredentials?> getSignedInCredentials() async {
    final storedCredentials = await _authLocalDatasource.read();

    if (storedCredentials != null) {
      if (storedCredentials.canRefresh && storedCredentials.isExpired) {
        final failureOrCredentials = await refreshToken(storedCredentials);
        return failureOrCredentials.fold(
          (error) => null,
          (credentials) => credentials,
        );
      }
    }

    return storedCredentials;
  }

  Future<bool> isSignedIn() async {
    final credential = await getSignedInCredentials();
    return credential != null;
  }

  Future<void> setToken({
    required UserCredentials credentials,
  }) async {
    await _authLocalDatasource.save(credentials);
  }

  Future<void> clearCredentialsStorage() async {
    await _authLocalDatasource.clear();
  }

  Future<void> signOut() async {
    await _authLocalDatasource.clear();
  }

  Future<Either<RequestFailure, UserCredentials>> refreshToken(
    UserCredentials userCredentials,
  ) async {
    final response = await handleRemoteRequest(
      request: () => _authRemoteDatasource.refreshToken(userCredentials),
    );

    return response.fold(
      (l) => left(l),
      (refreshedUserToken) async {
        final refreshedUserCredentials = UserCredentials(
          accessToken: refreshedUserToken.jwtToken,
          refreshToken: refreshedUserToken.rtToken,
        );

        await _authLocalDatasource.save(refreshedUserCredentials);

        return right(refreshedUserCredentials);
      },
    );
  }
}
