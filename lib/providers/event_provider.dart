import 'package:e_ti_app/services/repositories/events_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//Helpers
import '../enums/event_type.dart';
import '../helper/utils/typedefs.dart';

import '../models/event/event_model.dart';
import 'all_providers.dart';

final eventsFuture = FutureProvider.autoDispose<List<EventModel>>((ref) async {
  final _eventProvider = ref.watch(eventProvider);
  final _movieType = ref.watch(selectedMovieTypeProvider);

  return await _eventProvider.getAllMovies();
});

final selectedMovieTypeProvider = StateProvider<EventType>((ref) {
  return EventType.ALL_MOVIES;
});

final selectedMovieProvider = StateProvider<EventModel>((ref) {
  return EventModel.initial();
});

final leftMovieProvider = StateProvider<EventModel>((ref) {
  return EventModel.initial();
});

final rightMovieProvider = StateProvider<EventModel>((ref) {
  return EventModel.initial();
});

class EventProvider {
  final EventRepository _eventRepository;

  EventProvider(this._eventRepository);

  Future<List<EventModel>> getAllMovies({
    EventType? eventType,
  }) async {
    final QueryParams? queryParams = {
      // if (eventType != null) 'type': eventType.toJson,
    };
    return await _eventRepository.fetchAll(queryParameters: queryParams);
  }

  Future<EventModel> getMovieById({
    required int movieId,
  }) async {
    return await _eventRepository.fetchOne(movieId: movieId);
  }

  void cancelNetworkRequest() {
    _eventRepository.cancelRequests();
  }
}
