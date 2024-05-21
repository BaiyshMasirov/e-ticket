import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eticket/common/common.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const CategoryDto._();

  const factory CategoryDto({
    required String image,
    required String name,

    /// type == [EventType]
    required int type,
  }) = _CategoryDto;

  EventType get eventType {
    final result = EventType.values.firstWhere(
      (e) => e.value == type,
      orElse: () => EventType.unknown,
    );
    return result;
  }

  factory CategoryDto.fromJson(Json json) => _$CategoryDtoFromJson(json);
}
