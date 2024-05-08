import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/scan_ticket/bloc/scan_ticket_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ScanTicketCubit extends Cubit<ScanTicketState> {
  final TicketRepository _ticketRepository;

  ScanTicketCubit._({
    required TicketRepository ticketRepository,
  })  : _ticketRepository = ticketRepository,
        super(const ScanTicketState.initial());

  Future<void> checkTicket({
    required String ticketQrCode,
  }) async {
    emit(ScanTicketState.checkingState(ticketQrCode: ticketQrCode));

    final result = await _ticketRepository.activateTicket(
      ticketId: ticketQrCode,
    );

    result.fold(
      (l) => emit(ScanTicketState.checkError(errorMessage: l.errorMessage)),
      (resultMessage) => emit(ScanTicketState.checkSuccess(
        ticketQrCode: ticketQrCode,
        successMessage: resultMessage,
      )),
    );
  }

  factory ScanTicketCubit.initialize() {
    return ScanTicketCubit._(
      ticketRepository: GetIt.I.get(),
    );
  }
}
