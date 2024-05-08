import 'package:dio/dio.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/common/common.dart';

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
        'api/Booking/create-booking',
        data: createBookingCommandDto.toJson(),
      ),
      parse: (json) => ApiUserTokenDto.fromJson(json['token']),
    );

    return response;
  }

  Future<RemoteResponse<UserBookingsDto>> getUserBookings({
    required UserBookingsFilter filter,
    required int page,
  }) async {
    final queryP = filter.toJson();
    queryP.addAll({
      'page': page,
    });
    final response = await _dio.makeRequest(
      request: () => _dio.get(
        'api/Booking/get-user-bookings',
        queryParameters: queryP,
      ),
      parse: (json) => UserBookingsDto.fromJson(json),
    );

    return response;
  }

  Future<RemoteResponse<List<UserTicketsBookingsDto>>> getUserTicketsBookings(
    String id,
  ) async {
    return await _dio.makeRequest(
      request: () => _dio.get(
        'api/Ticket/get-user-tickets-bookingId',
        queryParameters: {
          'id': id,
        },
      ),
      parse: (json) {
        final data = json as List;
        final result =
            data.map((item) => UserTicketsBookingsDto.fromJson(item)).toList();
        return result;
      },
    );
  }
}
