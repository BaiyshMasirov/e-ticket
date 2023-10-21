import 'package:common/common.dart';
import 'package:eticket/data/data.dart';

class EventRepository with NetworkRemoteRepositoryMixin {
  final EventRemoteDatasource _eventRemoteDatasource;

  EventRepository({
    required EventRemoteDatasource eventRemoteDatasource,
  }) : _eventRemoteDatasource = eventRemoteDatasource;

  Future<Either<RequestFailure, List<EventDto>>> getEvents({
    required EventType type,
    required EventStatus status,
    required DateTime date,
    required int page,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _eventRemoteDatasource.getEvents(
        type: type,
        status: status,
        date: date,
        page: page,
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
