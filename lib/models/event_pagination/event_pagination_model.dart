import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helper/utils/typedefs.dart';
import '../event/event_model.dart';

part 'event_pagination_model.freezed.dart';
part 'event_pagination_model.g.dart';

@freezed
class EventPaginationModel with _$EventPaginationModel {
  const factory EventPaginationModel({
    required int currentPageIndex,
    required int pageSize,
    required int totalItemCount,
    required List<EventModel> list,
  }) = _EventPaginationModel;

  factory EventPaginationModel.initial() {
    return const EventPaginationModel(
      currentPageIndex: 0,
      pageSize: 0,
      totalItemCount: 0,
      list: [],
    );
  }

  factory EventPaginationModel.fromJson(JSON json) =>
      _$EventPaginationModelFromJson(json);
}
