import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens_model.freezed.dart';

part 'tokens_model.g.dart';

@freezed
class TokensModel with _$TokensModel {
  const factory TokensModel({
    @JsonKey(name: 'accessToken') String? accessToken,
    @JsonKey(name: 'refreshToken') String? refreshToken,
  }) = _TokensModel;

  factory TokensModel.fromJson(Map<String, Object?> json) =>
      _$TokensModelFromJson(json);
}
