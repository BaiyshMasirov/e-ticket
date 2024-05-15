import 'package:dartz/dartz.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';

class PaymentRepository with NetworkRemoteRepositoryMixin {
  final PaymentRemoteSource _paymentRemoteSource;

  PaymentRepository({
    required PaymentRemoteSource paymentRemoteSource,
  }) : _paymentRemoteSource = paymentRemoteSource;

  Future<Either<RequestFailure, PaymentResult>> createPayment({
    required String phoneNumber,
    required String bookingId,
    required PaymentType paymentType,
  }) async {
    return await handleRemoteRequest(
      request: () => _paymentRemoteSource.createPayment(
        phoneNumber: phoneNumber,
        paymentType: paymentType,
        bookingId: bookingId,
      ),
    );
  }

  Future<Either<RequestFailure, ResponseResult>> confirmPayment({
    required String code,
    required String bookingId,
    required String phoneNumber,
  }) async {
    return await handleRemoteRequest(
      request: () => _paymentRemoteSource.confirmPayment(
        code: code,
        bookingId: bookingId,
        phoneNumber: phoneNumber,
      ),
    );
  }

  Future<Either<RequestFailure, PaymentResult>> createWebViewPayment({
    required String bookingId,
    required PaymentType paymentType,
  }) async {
    return await handleRemoteRequest(
      request: () => _paymentRemoteSource.createWebViewPayment(
        bookingId: bookingId,
        paymentType: paymentType,
      ),
    );
  }
}
