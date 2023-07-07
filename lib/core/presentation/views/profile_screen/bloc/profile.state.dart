import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_auth_app/core/data/models/user/user_model.dart';

part 'profile.state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _$ProfileStateLoading;

  const factory ProfileState.success() = _$ProfileStateSuccess;
  const factory ProfileState.getProfileData({required UserModel userModel}) =
      _$ProfileStateGetProfileData;

  const factory ProfileState.error({
    required String msg,
    required String errorCode,
  }) = _$ProfileStateError;

  const factory ProfileState.logout() = _$ProfileStateLogout;
}

extension ProfileStateExt on ProfileState {
  bool buildWhen() => when(
        loading: () => false,
        success: () => false,
        error: (_, __) => false,
        logout: () => false,
        getProfileData: (_) => true,
      );

  bool listenWhen() => !buildWhen();
}
