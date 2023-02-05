import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helper/utils/typedefs.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
      {@JsonKey(includeIfNull: false) required String? userId,
      required String Name,
      required String Email,
      required String PhoneNumber}) = _UserModel;

  factory UserModel.fromJson(JSON json) => _$UserModelFromJson(json);
}
