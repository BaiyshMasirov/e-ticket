import 'package:common/common.dart';
import 'package:eticket/data/data.dart';

class TicketRepository with NetworkRemoteRepositoryMixin {
  final TicketRemoteDatasource _ticketRemoteDatasource;

  TicketRepository({
    required TicketRemoteDatasource ticketRemoteDatasource,
  }) : _ticketRemoteDatasource = ticketRemoteDatasource;

  Future<Either<RequestFailure, List<TicketDto>>> getTicketsByEventId(
    GetTicketsByBookingIdQueryDto getTicketsByBookingIdQueryDto,
  ) async {
    final response = await handleRemoteRequest(
      request: () => _ticketRemoteDatasource
          .getTicketsByEventId(getTicketsByBookingIdQueryDto),
    );

    return response;
  }

  Future<Either<RequestFailure, Unit>> holdTicket(
    HoldTicketCommandDto holdTicketCommandDto,
  ) async {
    final response = await handleRemoteRequest(
      request: () => _ticketRemoteDatasource.holdTicket(holdTicketCommandDto),
    );

    return response.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  Future<Either<RequestFailure, List<TicketTypeCountDto>>>
      getTicketsCountByEventId({
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
}
