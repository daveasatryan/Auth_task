import 'package:injectable/injectable.dart';
import 'package:task_auth_app/core/data/data_sources/auth_data_source.dart';
import 'package:task_auth_app/core/data/models/auth/sign_in_model.dart';
import 'package:task_auth_app/core/data/models/user/user_model.dart';

@injectable
class AuthRepository {
  AuthRepository(this.dataSource);

  final AuthDataSource dataSource;

  Future<UserModel> signIn(SignInModel body) async =>
      await dataSource.signIn(body);
}
