import 'package:dartz/dartz.dart';
import 'package:eticket/auth/authentication.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/utils/utils.dart';

class AuthRepository with NetworkRemoteRepositoryMixin {
  final AuthLocalDatasource _authLocalDatasource;
  final AuthRemoteDatasource _authRemoteDatasource;
  final UserPrefsRepository _userPrefRepository;

  AuthRepository({
    required AuthLocalDatasource authLocalDatasource,
    required AuthRemoteDatasource authRemoteDatasource,
    required UserPrefsRepository userPrefRepository,
  })  : _authRemoteDatasource = authRemoteDatasource,
        _authLocalDatasource = authLocalDatasource,
        _userPrefRepository = userPrefRepository;

  Future<bool> isUserAdmin() async {
    final credential = await getSignedInCredentials();

    if (credential == null) return false;

    return credential.isAdmin;
  }

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
          accessTokenExpiresAt:
              JwtDecoder.getExpirationDate(refreshedUserToken.jwtToken),
          isAdmin: JwtDecoder.isAdmin(refreshedUserToken.jwtToken),
        );

        await _authLocalDatasource.save(refreshedUserCredentials);

        return right(refreshedUserCredentials);
      },
    );
  }
}
