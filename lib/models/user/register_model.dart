import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helper/utils/typedefs.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel(
      {required String email,
      required String firstName,
      required String lastName,
      required String middleName,
      required String password,
      required String phoneNumber}) = _RegisterModel;

  factory RegisterModel.fromJson(JSON json) => _$RegisterModelFromJson(json);
}
