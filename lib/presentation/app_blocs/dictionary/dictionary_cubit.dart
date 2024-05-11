import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/dictionary/dictionary_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:eticket/common/common.dart';

export 'dictionary_state.dart';

class DictionaryCubit extends Cubit<DictionaryState> {
  final DictionaryRepository _dictionaryRepository;

  DictionaryCubit._({
    required DictionaryRepository dictionaryRepository,
  })  : _dictionaryRepository = dictionaryRepository,
        super(
          const DictionaryState.initial(
            eventTypes: [],
            ticketTypes: [],
          ),
        );

  Future<DictionaryState> getAllDictionaries() async {
    emit(const DictionaryState.loading(
      eventTypes: [],
      ticketTypes: [],
    ));

    final eventTypesFuture = _dictionaryRepository.getEventTypes();
    final ticketTypesFuture = _dictionaryRepository.getTicketTypes();

    late Either<RequestFailure, List<KeyValueMapDto>> eventTypes;
    late Either<RequestFailure, List<KeyValueMapDto>> ticketTypes;

    await Future.wait<void>([
      (() async => eventTypes = await eventTypesFuture)(),
      (() async => ticketTypes = await ticketTypesFuture)(),
    ]);

    if (eventTypes.isRight() && ticketTypes.isRight()) {
      emit(DictionaryState.data(
        eventTypes: eventTypes.getOrElse(() => []),
        ticketTypes: ticketTypes.getOrElse(() => []),
      ));

      return state;
    }

    String? errorMessage;
    if (eventTypes.isLeft()) {
      eventTypes.leftMap((e) => errorMessage = e.errorMessage);
    }
    if (errorMessage == null && ticketTypes.isLeft()) {
      ticketTypes.leftMap((e) => errorMessage = e.errorMessage);
    }

    emit(DictionaryState.failure(
      eventTypes: [],
      ticketTypes: [],
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
