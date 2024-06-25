import 'package:json_annotation/json_annotation.dart';

class DateTimeUTCSerializer implements JsonConverter<DateTime?, String?> {
  const DateTimeUTCSerializer();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;

    return DateTime.parse(json).toLocal();
  }

  @override
  String? toJson(DateTime? datetime) {
    if (datetime == null) return null;

    return datetime.toUtc().toIso8601String();
  }

  static List<DateTime> fromListJson(List<dynamic> json) {
    return json.map((e) => DateTime.parse(e).toLocal()).toList();
  }

  static List<dynamic> toListJson(List<DateTime> json) {
    return json.map((e) => e.toUtc().toIso8601String()).toList();
  }
}
