import 'dart:io';

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

  Future<Either<RequestFailure, ResponseResult>> register(
    RegisterUserCommandDto registerUserCommandDto,
  ) async {
    final response = await handleRemoteRequest(
      request: () => _accountRemoteSource.register(registerUserCommandDto),
    );

    return response;
  }

  Future<Either<RequestFailure, UserCredentials>> login(
    LoginCommandDto loginCommandDto,
  ) async {
    final response = await handleRemoteRequest(
      request: () => _accountRemoteSource.login(loginCommandDto),
    );

    return response.fold(
      (l) => left(l),
      (r) {
        if (r.succeed && r.token != null) {
          return right(
            UserCredentials(
              accessToken: r.token!.jwtToken,
              refreshToken: r.token!.rtToken,
              accessTokenExpiresAt:
                  JwtDecoder.getExpirationDate(r.token!.jwtToken),
              isAdmin: JwtDecoder.isAdmin(r.token!.jwtToken),
            ),
          );
        }

        return left(RequestFailure.badRequest(
          HttpStatus.badRequest,
          r.message,
        ));
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

  Future<Either<RequestFailure, ResponseResult>> sendConfirmCode({
    required String email,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _accountRemoteSource.sendConfirmCode(email: email),
    );

    return response;
  }

  Future<Either<RequestFailure, UserCredentials>> confirmAccount({
    required String email,
    required String code,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _accountRemoteSource.confirmAccount(
        email: email,
        code: code,
      ),
    );

    return response.fold(
      (l) => left(l),
      (r) {
        if (r.succeed && r.token != null) {
          return right(
            UserCredentials(
              accessToken: r.token!.jwtToken,
              refreshToken: r.token!.rtToken,
              accessTokenExpiresAt:
                  JwtDecoder.getExpirationDate(r.token!.jwtToken),
              isAdmin: JwtDecoder.isAdmin(r.token!.jwtToken),
            ),
          );
        }

        return left(RequestFailure.badRequest(
          HttpStatus.badRequest,
          r.message,
        ));
      },
    );
  }

  Future<Either<RequestFailure, ResponseResult>> sendRecoveryCode({
    required String email,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _accountRemoteSource.sendRecoveryCode(email: email),
    );

    return response;
  }

  Future<Either<RequestFailure, UserCredentials>> recoveryPassword({
    required String email,
    required String code,
    required String password,
    required String confirmPassword,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _accountRemoteSource.recoveryPassword(
        email: email,
        code: code,
        password: password,
        confirmPassword: password,
      ),
    );

    return response.fold(
      (l) => left(l),
      (r) {
        if (r.succeed && r.token != null) {
          return right(
            UserCredentials(
              accessToken: r.token!.jwtToken,
              refreshToken: r.token!.rtToken,
              accessTokenExpiresAt:
                  JwtDecoder.getExpirationDate(r.token!.jwtToken),
              isAdmin: JwtDecoder.isAdmin(r.token!.jwtToken),
            ),
          );
        }

        return left(RequestFailure.badRequest(
          HttpStatus.badRequest,
          r.message,
        ));
      },
    );
  }
}
