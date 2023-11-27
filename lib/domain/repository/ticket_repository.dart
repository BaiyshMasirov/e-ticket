import 'package:common/common.dart';
import 'package:eticket/data/data.dart';

class TicketRepository with NetworkRemoteRepositoryMixin {
  final TicketRemoteDatasource _ticketRemoteDatasource;

  TicketRepository({
    required TicketRemoteDatasource ticketRemoteDatasource,
  }) : _ticketRemoteDatasource = ticketRemoteDatasource;

  Future<Either<RequestFailure, List<TicketDto>>> getSeatTicketsByEventId({
    required String eventId,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _ticketRemoteDatasource.getTicketsByEventId(
        eventId: eventId,
      ),
    );

    return response;
  }

  Future<Either<RequestFailure, List<TicketTypeCountDto>>>
      getStandingTicketsCountByEventId({
    required String eventId,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _ticketRemoteDatasource.getTicketsCountByEventId(
        eventId: eventId,
      ),
    );

    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }

  Future<Either<RequestFailure, String>> holdTicket({
    required List<String> ticketIds,
    required String eventId,
    required DateTime eventDate,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _ticketRemoteDatasource.holdTicket(
        ticketIds: ticketIds,
        eventId: eventId,
        eventDate: eventDate,
      ),
    );

    return response;
  }

  Future<Either<RequestFailure, String>> holdTicketWithoutSeating({
    required List<TicketTypeCountDto> tickets,
    required String eventId,
    required DateTime eventDate,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _ticketRemoteDatasource.holdTicketWithoutSeating(
        tickets: tickets,
        eventId: eventId,
        eventDate: eventDate,
      ),
    );

    return response;
  }

  Future<Either<RequestFailure, String>> activateTicket({
    required String ticketId,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _ticketRemoteDatasource.activateTicket(
        ticketId: ticketId,
      ),
    );

    return response;
  }
}
