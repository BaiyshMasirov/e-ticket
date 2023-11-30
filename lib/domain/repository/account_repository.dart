import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:authentication/authentication.dart';

class AccountRepository with NetworkRemoteRepositoryMixin {
  final AccountRemoteSource _accountRemoteSource;

  AccountRepository({
    required AccountRemoteSource accountRemoteSource,
  }) : _accountRemoteSource = accountRemoteSource;

  Future<Either<RequestFailure, UserCredentials>> register(
    RegisterUserCommandDto registerUserCommandDto,
  ) async {
    final response = await handleRemoteRequest(
      request: () => _accountRemoteSource.register(registerUserCommandDto),
    );

    return response.fold(
      (l) => left(l),
      (token) {
        final userCredentials = UserCredentials(
          accessToken: token.jwtToken,
          refreshToken: token.rtToken,
          accessTokenExpiresAt: JwtDecoder.getExpirationDate(token.jwtToken),
          isAdmin: JwtDecoder.isAdmin(token.jwtToken),
        );

        return right(userCredentials);
      },
    );
  }

  Future<Either<RequestFailure, UserCredentials>> login(
    LoginCommandDto loginCommandDto,
  ) async {
    final response = await handleRemoteRequest(
      request: () => _accountRemoteSource.login(loginCommandDto),
    );

    return response.fold(
      (l) => left(l),
      (token) {
        final userCredentials = UserCredentials(
          accessToken: token.jwtToken,
          refreshToken: token.rtToken,
          accessTokenExpiresAt: JwtDecoder.getExpirationDate(token.jwtToken),
          isAdmin: JwtDecoder.isAdmin(token.jwtToken),
        );

        return right(userCredentials);
      },
    );
  }

  Future<Either<RequestFailure, Unit>> refreshPassword(
    RefreshPasswordCommandDto refreshPasswordCommandDto,
  ) async {
    final response = await handleRemoteRequest(
      request: () =>
          _accountRemoteSource.refreshPassword(refreshPasswordCommandDto),
    );

    return response;
  }
}
