import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.freezed.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  const ErrorResponse._();
  const factory ErrorResponse({
    required int? statusCode,
    required String? message,
  }) = _ErrorResponse;

  factory ErrorResponse.fromResponse(Response response) {
    String? errorMessage = '';
    try {
      errorMessage = response.data['errors'].values.toList()[0][0].toString();
    } catch (e) {
      errorMessage = response.statusMessage;
    }
    return ErrorResponse(
      statusCode: response.statusCode,
      message: errorMessage,
    );
  }
}
