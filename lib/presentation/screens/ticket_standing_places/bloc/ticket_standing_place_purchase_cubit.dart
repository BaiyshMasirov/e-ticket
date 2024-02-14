import 'package:common/common.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_purchase_state.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/models/models.dart';
import 'package:collection/collection.dart';

export 'ticket_standing_place_purchase_state.dart';

class TicketStandingPlacePurchaseCubit
    extends Cubit<TicketStandingPlacePurchaseState> {
  TicketStandingPlacePurchaseCubit._()
      : super(const TicketStandingPlacePurchaseState.data(
          chosenTickets: [],
        ));

  void initializeTickets({
    required List<TicketTypeCountDto> tickets,
  }) {
    final chosenTickets = tickets
        .map((e) => TicketStandingPlacePick(
              type: e.type,
              count: 0,
            ))
        .toList();

    emit(TicketStandingPlacePurchaseState.data(
      chosenTickets: chosenTickets,
    ));
  }

  void clearChosenTickets() {
    emit(const TicketStandingPlacePurchaseState.data(
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

    emit(TicketStandingPlacePurchaseState.data(
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

    emit(TicketStandingPlacePurchaseState.data(
      chosenTickets: [...chosenTickets],
    ));
  }

  factory TicketStandingPlacePurchaseCubit.initialize() {
    return TicketStandingPlacePurchaseCubit._();
  }
}
