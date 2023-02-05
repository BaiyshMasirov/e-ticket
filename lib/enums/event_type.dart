import 'package:freezed_annotation/freezed_annotation.dart';
// ignore_for_file: constant_identifier_names

/// A collection of types that movies can be.
@JsonEnum()
enum EventType {
  @JsonValue('1') NOW_SHOWING,
  @JsonValue('2') COMING_SOON,
  @JsonValue('3') REMOVED,
  @JsonValue('0') ALL_MOVIES, 
}

/// A utility with extensions for enum name and serialized value.
extension ExtEventType on EventType{
  String get toJson => name.toLowerCase();
}
