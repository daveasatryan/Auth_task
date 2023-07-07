import 'package:injectable/injectable.dart';
import 'package:task_auth_app/core/data/models/auth/sign_in_model.dart';
import 'package:task_auth_app/core/data/models/user/user_model.dart';
import 'package:task_auth_app/core/data/repositories/auth_repository.dart';

@injectable
class SignInUsecase {
  SignInUsecase({
    required this.repository,
  });

  final AuthRepository repository;

  Future<UserModel> call(SignInModel body) => repository.signIn(body);
}
