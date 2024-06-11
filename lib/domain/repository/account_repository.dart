import 'package:dartz/dartz.dart';
import 'package:eticket/auth/authentication.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/utils/utils.dart';

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

  Future<Either<RequestFailure, Unit>> changePassword(
    ChangePasswordCommandDto ChangePasswordCommandDto,
  ) async {
    final response = await handleRemoteRequest(
      request: () =>
          _accountRemoteSource.changePassword(ChangePasswordCommandDto),
    );

    return response;
  }

  Future<Either<RequestFailure, Unit>> deleteAccount() async {
    final response = await handleRemoteRequest(
      request: () => _accountRemoteSource.deleteAccount(),
    );

    return response;
  }
}
