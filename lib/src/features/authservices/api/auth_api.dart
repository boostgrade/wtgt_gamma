import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/apple_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/google_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/meta_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/phone_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/register_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/vk_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/responses/login_response.dart';

part 'auth_api.g.dart';

@RestApi(baseUrl: 'https://stoplight.io/mocks/softech/wtgt/75539')
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST('/login/phone')
  Future<LoginResponse> loginWithPhone(@Body() PhoneLoginRequest phoneLoginRequest);

  @POST('/login/vk')
  Future<LoginResponse> loginWithVk(@Body() VkLoginRequest vkLoginRequest);

  @POST('/login/meta')
  Future<LoginResponse> loginWithMeta(@Body() MetaLoginRequest metaLoginRequest);

  @POST('/login/apple')
  Future<LoginResponse> loginWithApple(@Body() AppleLoginRequest appleLoginRequest);

  @POST('/login/google')
  Future<LoginResponse> loginWithGoogle(@Body() GoogleLoginRequest googleLoginRequest);

  @POST('/register')
  Future<void> register(@Body() RegisterRequest registerRequest);

  @GET('/logout')
  Future<void> logout();
}
