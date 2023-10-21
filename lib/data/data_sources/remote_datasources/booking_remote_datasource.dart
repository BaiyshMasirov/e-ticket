import 'package:common/common.dart';
import 'package:eticket/data/data.dart';

class BookingRemoteDatasource {
  final Dio _dio;

  BookingRemoteDatasource({
    required Dio dio,
  }) : _dio = dio;

  Future<RemoteResponse<ApiUserTokenDto>> createBooking(
    CreateBookingCommandDto createBookingCommandDto,
  ) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        '/api/Booking/create-booking',
        data: createBookingCommandDto.toJson(),
      ),
      parse: (json) => ApiUserTokenDto.fromJson(json['token']),
    );

    return response;
  }
}
