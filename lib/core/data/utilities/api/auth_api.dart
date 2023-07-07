import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task_auth_app/core/data/models/auth/sign_in_model.dart';
import 'package:task_auth_app/core/data/models/user/user_model.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(
    Dio dio, {
    String baseUrl,
  }) = _AuthApi;
  
  //SignIn
  @POST('/api/v1/auth/login')
  Future<UserModel> signInUser({
    @Body() required SignInModel body,
  });

  //logout
  @POST('/api/user/logout')
  Future logout();
}
