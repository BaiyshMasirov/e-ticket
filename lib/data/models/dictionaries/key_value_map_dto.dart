import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_value_map_dto.freezed.dart';
part 'key_value_map_dto.g.dart';

@freezed
class KeyValueMapDto with _$KeyValueMapDto {
  const KeyValueMapDto._();

  const factory KeyValueMapDto({
    required int key,
    required String value,
  }) = _KeyValueMapDto;

  factory KeyValueMapDto.fromJson(Json json) => _$KeyValueMapDtoFromJson(json);
}
