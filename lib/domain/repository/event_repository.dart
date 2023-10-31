import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/models/models.dart';

class EventRepository with NetworkRemoteRepositoryMixin {
  final EventRemoteDatasource _eventRemoteDatasource;

  EventRepository({
    required EventRemoteDatasource eventRemoteDatasource,
  }) : _eventRemoteDatasource = eventRemoteDatasource;

  Future<Either<RequestFailure, EventPagingDto>> getEvents({
    required EventsFilter eventsFilter,
    required int page,
    String? searchText,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _eventRemoteDatasource.getEvents(
        eventsFilter: eventsFilter,
        page: page,
        searchText: searchText,
      ),
    );

    return response;
  }

  Future<Either<RequestFailure, EventDto>> getEventById(String id) async {
    final response = await handleRemoteRequest(
      request: () => _eventRemoteDatasource.getEventById(id),
    );

    return response;
  }

  Future<Either<RequestFailure, List<EventDto>>> getUserEvents({
    required int page,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _eventRemoteDatasource.getUserEvents(page: page),
    );

    return response;
  }
}
