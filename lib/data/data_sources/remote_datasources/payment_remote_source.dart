import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';

class PaymentRemoteSource {
  final Dio _dio;

  PaymentRemoteSource({
    required Dio dio,
  }) : _dio = dio;

  Future<RemoteResponse<PaymentResult>> createPayment({
    required String phoneNumber,
    required PaymentType paymentType,
    required String bookingId,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        'api/Payment/create-payment',
        data: {
          'paymentType': paymentType.value,
          'phoneNumber': phoneNumber,
          'bookingId': bookingId,
        },
      ),
      parse: (json) => PaymentResult.fromJson(json),
    );

    return response;
  }

  Future<RemoteResponse<ResponseResult>> confirmPayment({
    required String code,
    required String bookingId,
    required String phoneNumber,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post('/api/Payment/confirm-payment', data: {
        'pinCode': code,
        'bookingId': bookingId,
        'phoneNumber': phoneNumber,
      }),
      parse: (json) => ResponseResult.fromJson(json),
    );

    return response;
  }

  Future<RemoteResponse<PaymentResult>> createWebViewPayment({
    required String bookingId,
    required PaymentType paymentType,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        'api/Payment/create-card-payment',
        data: {
          'bookingId': bookingId,
          'paymentType': paymentType.value,
        },
      ),
      parse: (json) => PaymentResult.fromJson(json),
    );

    return response;
  }
}
