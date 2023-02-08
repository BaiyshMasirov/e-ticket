import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helper/utils/typedefs.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel(
      {required String id,
      required String name,
      required String description,
      required DateTime startDate,
      required DateTime endDate,
      required int status,
      required String image,
      required int ageLimit,
      required double minPrice,
      required int sold,
      required int count,
      required String locationName,
      required String locationId}) = _EventModel;

  factory EventModel.initial() {
    return EventModel(
        id: '',
        name: '',
        description: '',
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        status: 0,
        image: '',
        ageLimit: 0,
        minPrice: 0,
        sold: 0,
        count: 0,
        locationName: '',
        locationId: '');
  }

  factory EventModel.fromJson(JSON json) => _$EventModelFromJson(json);
}
