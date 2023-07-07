import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task_auth_app/core/data/models/user/user_model.dart';

part 'content_api.g.dart';

@RestApi()
abstract class ContentApi {
  factory ContentApi(
    Dio dio, {
    String baseUrl,
  }) = _ContentApi;

  @GET('/api/users')
  Future<UserModel> getData();
}
