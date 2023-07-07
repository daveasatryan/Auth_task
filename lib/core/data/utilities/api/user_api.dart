import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task_auth_app/core/data/models/user/user_model.dart';

part 'user_api.g.dart';

@RestApi()
abstract class UserApi {
  factory UserApi(
    Dio dio, {
    String baseUrl,
  }) = _UserApi;

  @GET('/api/user')
  Future<UserModel> getUser();
}
