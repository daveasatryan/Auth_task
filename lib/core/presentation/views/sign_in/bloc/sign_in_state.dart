import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_auth_app/core/data/enums/button_validation.dart';
import 'package:task_auth_app/core/data/enums/validation_enum.dart';
import 'package:task_auth_app/core/data/models/user/user_model.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.loading() = _$SignInStateLoading;

  factory SignInState.success(UserModel? userModel) = _$SignInStateSuccess;

  const factory SignInState.error({
    required String msg,
  }) = _$SignInStateError;

  const factory SignInState.validation({
    required ValidationEnum email,
    required ValidationEnum password,
    required ButtonValidation signInButton,
    String? errorText,
  }) = _$SignInStateValidationEmailPassword;
}

extension SignInStateExt on SignInState {
  bool buildWhen() => when(
        loading: () => false,
        success: (_) => false,
        error: (_) => false,
        validation: (_, __, ___, ____) => true,
      );

  bool listenWhen() => !buildWhen();
}
