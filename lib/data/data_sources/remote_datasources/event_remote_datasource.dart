import 'package:dio/dio.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';

class EventRemoteDatasource {
  final Dio _dio;

  EventRemoteDatasource({
    required Dio dio,
  }) : _dio = dio;

  Future<RemoteResponse<EventPagingDto>> getEvents({
    required EventsFilter eventsFilter,
    required int page,
    required int pageSize,
    String? searchText,
  }) async {
    final queryParams = eventsFilter.toQueryParams();
    queryParams.addAll({
      'page': page,
      'pageSize': pageSize,
    });

    if (searchText != null && searchText.isNotEmpty) {
      queryParams.addAll({
        'text': searchText,
      });
    }

    final response = await _dio.makeRequest(
      request: () => _dio.get(
        'api/Event/get-events',
        queryParameters: queryParams,
      ),
      parse: (json) => EventPagingDto.fromJson(json),
    );

    return response;
  }

  Future<RemoteResponse<EventDto>> getEventById(String id) async {
    final response = await _dio.makeRequest(
      request: () => _dio.get(
        'api/Event/get-event-by-id',
        queryParameters: {
          'id': id,
        },
      ),
      parse: (json) => EventDto.fromJson(json),
    );

    return response;
  }
}
