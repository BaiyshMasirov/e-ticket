import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helper/utils/typedefs.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel(
      {required String Id,
      required String Name,
      required String Description,
      required DateTime StartDate,
      required DateTime EndDate,
      required int Status,
      required String Image,
      required int AgeLimit,
      required double MinPrice,
      required int Sold,
      required int Count,
      required String LocationName,
      required String LocationId}) = _EventModel;

  factory EventModel.initial() {
    return EventModel(
        Id: '',
        Name: '',
        Description: '',
        StartDate: DateTime.now(),
        EndDate: DateTime.now(),
        Status: 0,
        Image: '',
        AgeLimit: 0,
        MinPrice: 0,
        Sold: 0,
        Count: 0,
        LocationName: '',
        LocationId: '');
  }

  factory EventModel.fromJson(JSON json) => _$EventModelFromJson(json);
}
