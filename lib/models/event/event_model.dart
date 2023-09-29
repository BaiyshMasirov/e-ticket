import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helper/utils/typedefs.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String id,
    required String name,
    required String description,
    required String startDate,
    required String endDate,
    required int status,
    required String image,
    required int ageLimit,
    required int minPrice,
    required int sold,
    required int count,
    required String locationName,
    required String locationId,
    required String poster,
    required int type,
    required String video,
  }) = _EventModel;

  factory EventModel.initial() {
    return const EventModel(
        id: '',
        name: '',
        description: '',
        startDate: '',
        endDate: '',
        status: 0,
        image: '',
        ageLimit: 0,
        minPrice: 0,
        sold: 0,
        count: 0,
        locationName: '',
        locationId: '',
        poster: '',
        type: 0,
        video: '');
  }

  factory EventModel.fromJson(JSON json) => _$EventModelFromJson(json);
}
