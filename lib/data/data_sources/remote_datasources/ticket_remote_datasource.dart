import 'package:common/common.dart';
import 'package:eticket/data/models/models.dart';

class TicketRemoteDatasource {
  final Dio _dio;

  TicketRemoteDatasource({
    required Dio dio,
  }) : _dio = dio;

  Future<RemoteResponse<List<TicketDto>>> getTicketsByEventId(
    GetTicketsByBookingIdQueryDto getTicketsByBookingIdQueryDto,
  ) async {
    final response = await _dio.makeRequest(
      request: () => _dio.get(
        '/api/Event/get-tickets-by-eventId',
        data: getTicketsByBookingIdQueryDto.toJson(),
      ),
      parse: (json) {
        final list = json as List;
        final data = list.map((e) => TicketDto.fromJson(e)).toList();

        return data;
      },
    );

    return response;
  }

  Future<RemoteResponse<List<TicketTypeCountDto>>> getTicketsCountByEventId({
    required String eventId,
  }) async {
    final response = await _dio.makeRequest(
      request: () => _dio.get(
        'get-tickets-count-eventId',
        data: {'eventId': eventId},
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

  Future<RemoteResponse<ApiUserTokenDto>> holdTicket(
    HoldTicketCommandDto holdTicketCommandDto,
  ) async {
    final response = await _dio.makeRequest(
      request: () => _dio.post(
        '/api/Event/hold-ticket',
        data: holdTicketCommandDto.toJson(),
      ),
      parse: (json) => ApiUserTokenDto.fromJson(json['token']),
    );

    return response;
  }
}
