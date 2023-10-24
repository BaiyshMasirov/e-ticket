import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/dictionary/dictionary_state.dart';
import 'package:get_it/get_it.dart';

export 'dictionary_state.dart';

class DictionaryCubit extends Cubit<DictionaryState> {
  final DictionaryRepository _dictionaryRepository;

  DictionaryCubit._({
    required DictionaryRepository dictionaryRepository,
  })  : _dictionaryRepository = dictionaryRepository,
        super(
          const DictionaryState.initial(
              eventTypes: [],
              eventStatuses: [],
              ticketTypes: [],
              ticketStatuses: []),
        );

  Future<DictionaryState> getAllDictionaries() async {
    emit(const DictionaryState.loading(
      eventTypes: [],
      eventStatuses: [],
      ticketTypes: [],
      ticketStatuses: [],
    ));

    final eventTypesFuture = _dictionaryRepository.getEventTypes();
    final eventStatusesFuture = _dictionaryRepository.getEventStatuses();
    final ticketTypesFuture = _dictionaryRepository.getTicketTypes();
    final ticketStatusesFuture = _dictionaryRepository.getTicketStatuses();

    late Either<RequestFailure, List<KeyValueMapDto>> eventTypes;
    late Either<RequestFailure, List<KeyValueMapDto>> eventStatuses;
    late Either<RequestFailure, List<KeyValueMapDto>> ticketTypes;
    late Either<RequestFailure, List<KeyValueMapDto>> ticketStatuses;

    await Future.wait<void>([
      (() async => eventTypes = await eventTypesFuture)(),
      (() async => eventStatuses = await eventStatusesFuture)(),
      (() async => ticketTypes = await ticketTypesFuture)(),
      (() async => ticketStatuses = await ticketStatusesFuture)(),
    ]);

    if (eventTypes.isRight() &&
        eventStatuses.isRight() &&
        ticketTypes.isRight() &&
        ticketStatuses.isRight()) {
      emit(DictionaryState.data(
        eventTypes: eventTypes.getOrElse(() => []),
        eventStatuses: eventStatuses.getOrElse(() => []),
        ticketTypes: ticketTypes.getOrElse(() => []),
        ticketStatuses: ticketStatuses.getOrElse(() => []),
      ));
      return state;
    }

    String? errorMessage;
    if (eventTypes.isLeft()) {
      eventTypes.leftMap((e) => errorMessage = e.errorMessage);
    }
    if (errorMessage == null && eventStatuses.isLeft()) {
      eventStatuses.leftMap((e) => errorMessage = e.errorMessage);
    }
    if (errorMessage == null && ticketTypes.isLeft()) {
      ticketTypes.leftMap((e) => errorMessage = e.errorMessage);
    }
    if (errorMessage == null && ticketStatuses.isLeft()) {
      ticketStatuses.leftMap((e) => errorMessage = e.errorMessage);
    }

    emit(DictionaryState.failure(
      eventTypes: [],
      eventStatuses: [],
      ticketTypes: [],
      ticketStatuses: [],
      errorMessage: errorMessage?.tr(),
    ));

    return state;
  }

  factory DictionaryCubit.initialize() {
    return DictionaryCubit._(
      dictionaryRepository: GetIt.I.get(),
    );
  }
}
