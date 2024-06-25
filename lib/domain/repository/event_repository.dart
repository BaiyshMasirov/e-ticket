import 'package:dartz/dartz.dart';
import 'package:eticket/common/common.dart';
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
    required int pageSize,
    String? searchText,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _eventRemoteDatasource.getEvents(
        eventsFilter: eventsFilter,
        page: page,
        searchText: searchText,
        pageSize: pageSize,
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
}
