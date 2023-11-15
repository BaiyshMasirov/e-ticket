import 'package:common/common.dart';
import 'package:eticket/data/models/models.dart';

class TicketRemoteDatasource {
  final Dio _dio;

  TicketRemoteDatasource({
    required Dio dio,
  }) : _dio = dio;

  /// tickets for seat places event
  Future<RemoteResponse<List<TicketDto>>> getTicketsByEventId({
    required String eventId,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.get(
        '/api/Ticket/get-tickets-by-eventId',
        queryParameters: {
          'eventId': eventId,
        },
      ),
      parse: (json) {
        final list = json as List;
        final data = list.map((e) => TicketDto.fromJson(e)).toList();

        return data;
      },
    );

    return response;
  }

  /// tickets for standing places event
  Future<RemoteResponse<List<TicketTypeCountDto>>> getTicketsCountByEventId({
    required String eventId,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.get(
        '/api/Ticket/get-tickets-count-eventId',
        queryParameters: {
          'eventId': eventId,
        },
      ),
      parse: (json) {
        final list = json as List;
        final data = list
            .map((e) => TicketTypeCountDto.fromJson(
                  e,
                ))
            .toList();

        return data;
      },
    );

    return response;
  }

  Future<RemoteResponse<ApiUserTokenDto>> holdTicket({
    required List<String> ticketIds,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        '/api/Ticket/hold-ticket',
        data: {
          'ids': ticketIds,
        },
      ),
      parse: (json) {
        return ApiUserTokenDto.fromJson(json['token']);
      },
    );

    return response;
  }
}
