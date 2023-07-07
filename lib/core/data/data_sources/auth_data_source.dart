import 'package:injectable/injectable.dart';
import 'package:task_auth_app/core/data/models/auth/sign_in_model.dart';
import 'package:task_auth_app/core/data/models/user/user_model.dart';
import 'package:task_auth_app/core/data/utilities/api/api.dart';
import 'package:task_auth_app/core/data/utilities/api/auth_api.dart';

@injectable
class AuthDataSource {
  AuthDataSource(Api api) {
    this.api = api.auth;
  }

  late final AuthApi api;

  Future<UserModel> signIn(SignInModel body) async =>
      await api.signInUser(body: body);
}
