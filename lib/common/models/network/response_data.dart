import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_data.freezed.dart';

@freezed
class ResponseData<T> with _$ResponseData<T> {
  const ResponseData._();

  const factory ResponseData({
    required Headers headers,
    required T data,
  }) = _ResponseData<T>;
}
