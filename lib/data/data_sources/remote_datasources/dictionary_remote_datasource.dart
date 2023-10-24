import 'package:common/common.dart';
import 'package:eticket/data/models/models.dart';

class DictionaryRemoteSource {
  final Dio _dio;

  DictionaryRemoteSource({
    required Dio dio,
  }) : _dio = dio;

  Future<RemoteResponse<List<KeyValueMapDto>>> getEventTypes() async {
    final response = await _dio.makeRequest(
      request: () => _dio.get('/api/Dictionary/get-eventtype-values'),
      parse: (json) {
        final map = json as Map;
        final data = map.entries
            .map((e) => KeyValueMapDto(key: int.parse(e.key), value: e.value))
            .toList();

        return data;
      },
    );

    return response;
  }

  Future<RemoteResponse<List<KeyValueMapDto>>> getEventStatuses() async {
    final response = await _dio.makeRequest(
      request: () => _dio.get('/api/Dictionary/get-event-status'),
      parse: (json) {
        final map = json as Map;
        final data = map.entries
            .map((e) => KeyValueMapDto(key: int.parse(e.key), value: e.value))
            .toList();

        return data;
      },
    );

    return response;
  }

  Future<RemoteResponse<List<KeyValueMapDto>>> getTicketTypes() async {
    final response = await _dio.makeRequest(
      request: () => _dio.get('/api/Dictionary/get-ticket-type'),
      parse: (json) {
        final map = json as Map;
        final data = map.entries
            .map((e) => KeyValueMapDto(key: int.parse(e.key), value: e.value))
            .toList();

        return data;
      },
    );

    return response;
  }

  Future<RemoteResponse<List<KeyValueMapDto>>> getTicketStatuses() async {
    final response = await _dio.makeRequest(
      request: () => _dio.get('/api/Dictionary/get-ticket-status'),
      parse: (json) {
        final map = json as Map;
        final data = map.entries
            .map((e) => KeyValueMapDto(key: int.parse(e.key), value: e.value))
            .toList();

        return data;
      },
    );

    return response;
  }
}
