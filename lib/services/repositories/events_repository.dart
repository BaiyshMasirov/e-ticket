import 'package:dio/dio.dart';
import 'package:e_ti_app/models/event/event_model.dart';

import '../../helper/utils/typedefs.dart';
import '../networking/api_endpoint.dart';
import '../networking/api_service.dart';

class EventRepository {
  final ApiService _apiService;
  final CancelToken? _cancelToken;

  EventRepository({
    required ApiService apiService,
    CancelToken? cancelToken,
  })  : _apiService = apiService,
        _cancelToken = cancelToken;

  Future<int> create({
    required JSON data,
  }) async {
    return await _apiService.setData<int>(
      endpoint: ApiEndpoint.movies(MovieEndpoint.BASE),
      data: data,
      cancelToken: _cancelToken,
      converter: (response) => response['body']['movie_id'] as int,
    );
  }

  Future<String> update({
    required int movieId,
    required JSON data,
  }) async {
    return await _apiService.updateData<String>(
      endpoint: ApiEndpoint.movies(MovieEndpoint.BY_ID, id: movieId),
      data: data,
      cancelToken: _cancelToken,
      converter: (response) => response['headers']['message'] as String,
    );
  }

  Future<String> delete({
    required int movieId,
    JSON? data,
  }) async {
    return await _apiService.deleteData<String>(
      endpoint: ApiEndpoint.movies(MovieEndpoint.BY_ID, id: movieId),
      data: data,
      cancelToken: _cancelToken,
      converter: (response) => response['headers']['message'] as String,
    );
  }

  Future<List<EventModel>> fetchAll({
    JSON? queryParameters,
  }) async {
    return await _apiService.getCollectionData<EventModel>(
      endpoint: ApiEndpoint.movies(MovieEndpoint.BASE),
      queryParams: queryParameters,
      cancelToken: _cancelToken,
      converter: (responseBody) => EventModel.fromJson(responseBody),
    );
  }

  Future<EventModel> fetchOne({
    required int movieId,
  }) async {
    return await _apiService.getDocumentData<EventModel>(
      endpoint: ApiEndpoint.movies(MovieEndpoint.BY_ID, id: movieId),
      cancelToken: _cancelToken,
      converter: (responseBody) => EventModel.fromJson(responseBody),
    );
  }

  Future<List<EventModel>> fetchMovieRoles({
    required int movieId,
  }) async {
    return await _apiService.getCollectionData<EventModel>(
      endpoint: ApiEndpoint.movies(MovieEndpoint.ROLES, id: movieId),
      cancelToken: _cancelToken,
      converter: (responseBody) => EventModel.fromJson(responseBody),
    );
  }

  void cancelRequests() {
    _apiService.cancelRequests(cancelToken: _cancelToken);
  }
}
