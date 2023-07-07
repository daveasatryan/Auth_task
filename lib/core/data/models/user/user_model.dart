
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_auth_app/core/data/models/user/tokens_model.dart';
import 'package:task_auth_app/core/data/models/user/user_data_model.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'tokens') TokensModel? tokens,
    @JsonKey(name: 'user') UserDataModel? user,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) => _$UserModelFromJson(json);
}


