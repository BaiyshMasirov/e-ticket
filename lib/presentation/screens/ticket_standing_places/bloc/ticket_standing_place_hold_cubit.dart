import 'package:common/common.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_hold_state.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/models/models.dart';
import 'package:collection/collection.dart';
import 'package:eticket/domain/repository/repository.dart';
import 'package:get_it/get_it.dart';
export 'ticket_standing_place_hold_state.dart';

class TicketStandingPlaceHoldCubit extends Cubit<TicketStandingPlaceHoldState> {
  final TicketRepository _ticketRepository;

  TicketStandingPlaceHoldCubit._({
    required TicketRepository ticketRepository,
  })  : _ticketRepository = ticketRepository,
        super(const TicketStandingPlaceHoldState.data(
          chosenTickets: [],
        ));

  Future<void> holdTickets() async {
    //TODO: add here ticket ids
    emit(TicketStandingPlaceHoldState.holding(chosenTickets: []));
  }

  void initializeTickets({
    required List<TicketTypeCountDto> tickets,
  }) {
    final chosenTickets = tickets
        .map((e) => TicketStandingPlacePick(
              type: e.type,
              count: 0,
            ))
        .toList();

    emit(TicketStandingPlaceHoldState.data(
      chosenTickets: chosenTickets,
    ));
  }

  void clearChosenTickets() {
    emit(const TicketStandingPlaceHoldState.data(
      chosenTickets: [],
    ));
  }

  Future<void> increaseTicketAmount(int type) async {
    final chosenTickets = [...state.chosenTickets];

    final chosenTick = chosenTickets.firstWhereOrNull(
      (item) => item.type == type,
    );

    if (chosenTick == null) return;

    chosenTickets.removeWhere((item) => item.type == type);
    final updatedTicket = chosenTick.copyWith(
      count: chosenTick.count + 1,
    );
    chosenTickets.add(updatedTicket);

    emit(TicketStandingPlaceHoldState.data(
      chosenTickets: [...chosenTickets],
    ));
  }

  Future<void> decreaseTicketAmount(int type) async {
    final chosenTickets = [...state.chosenTickets];

    final chosenTick = chosenTickets.firstWhereOrNull(
      (item) => item.type == type,
    );
    if (chosenTick == null) return;

    if (chosenTick.count <= 0) return;

    chosenTickets.removeWhere((item) => item.type == type);
    final updatedTicket = chosenTick.copyWith(
      count: chosenTick.count - 1,
    );
    chosenTickets.add(updatedTicket);

    emit(TicketStandingPlaceHoldState.data(
      chosenTickets: [...chosenTickets],
    ));
  }

  factory TicketStandingPlaceHoldCubit.initialize() {
    return TicketStandingPlaceHoldCubit._(
      ticketRepository: GetIt.I.get(),
    );
  }
}
