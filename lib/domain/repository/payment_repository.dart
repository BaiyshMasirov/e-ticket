import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/data/data_sources/data_sources.dart';

class PaymentRepository with NetworkRemoteRepositoryMixin {
  final PaymentRemoteSource _paymentRemoteSource;

  PaymentRepository({
    required PaymentRemoteSource paymentRemoteSource,
  }) : _paymentRemoteSource = paymentRemoteSource;

  Future<Either<RequestFailure, Unit>> createPayment({
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

  Future<Either<RequestFailure, Unit>> confirmPayment({
    required String code,
    required String bookingId,
  }) async {
    return await handleRemoteRequest(
      request: () => _paymentRemoteSource.confirmPayment(
        code: code,
        bookingId: bookingId,
      ),
    );
  }

  Future<Either<RequestFailure, PaymentDeepLinkDto>> createDeepLinkPayment({
    required String phoneNumber,
    required String bookingId,
    required PaymentType paymentType,
  }) {
    return handleRemoteRequest(
      request: () => _paymentRemoteSource.createDeepLinkPayment(
        phoneNumber: phoneNumber,
        bookingId: bookingId,
        paymentType: paymentType,
      ),
    );
  }
}
