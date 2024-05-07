import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';

class PaymentRemoteSource {
  final Dio _dio;

  PaymentRemoteSource({
    required Dio dio,
  }) : _dio = dio;

  Future<RemoteResponse<PaymentDeepLinkDto>> createDeepLinkPayment({
    required String phoneNumber,
    required PaymentType paymentType,
    required String bookingId,
  }) async {
    return await _dio.makeRequest(
      request: () => _dio.post(
        'api/Payment/create-deep-link-payment',
        data: {
          'paymentType': paymentType.index,
          'phoneNumber': phoneNumber,
          'bookingId': bookingId,
        },
      ),
      parse: (json) => PaymentDeepLinkDto.fromJson(json),
    );
  }

  Future<RemoteResponse<Unit>> createPayment({
    required String phoneNumber,
    required PaymentType paymentType,
    required String bookingId,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        'api/Payment/create-payment',
        data: {
          'paymentType': paymentType.index,
          'phoneNumber': phoneNumber,
          'bookingId': bookingId,
        },
      ),
      parse: (json) => unit,
    );

    return response;
  }

  Future<RemoteResponse<Unit>> confirmPayment({
    required String code,
    required String bookingId,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post('/api/Payment/confirm-payment', data: {
        'code': code,
        'bookingId': bookingId,
      }),
      parse: (json) => unit,
    );

    return response;
  }
}
