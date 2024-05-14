import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_result.freezed.dart';
part 'response_result.g.dart';

@freezed
class ResponseResult with _$ResponseResult {
  const ResponseResult._();

  const factory ResponseResult({
    required bool succeed,
    @Default([]) List<String> messages,
  }) = _ResponseResult;

  factory ResponseResult.fromJson(Json json) => _$ResponseResultFromJson(json);

  String? get message {
    return messages.isEmpty ? null : messages.join(', ');
  }
}
