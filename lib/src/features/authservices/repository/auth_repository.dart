import 'package:where_to_go_today/src/features/authapi/models/login_object.dart';
import 'package:where_to_go_today/src/features/authservices/api/auth_api.dart';

import '../../authapi/models/requests/apple_login_request.dart';
import '../../authapi/models/requests/google_login_request.dart';
import '../../authapi/models/requests/meta_login_request.dart';
import '../../authapi/models/requests/phone_login_request.dart';
import '../../authapi/models/requests/register_request.dart';
import '../../authapi/models/requests/vk_login_request.dart';

class AuthRepository {
  final AuthApi _authApi;

  AuthRepository(this._authApi);

  Future<LoginObject> loginWithPhone(
    PhoneLoginRequest phoneLoginRequest,
  ) async {
    final loginResponse = await _authApi.loginWithPhone(phoneLoginRequest);

    return loginResponse.toDomain();
  }

  Future<LoginObject> loginWithVk(
    VkLoginRequest vkLoginRequest,
  ) async {
    final loginResponse = await _authApi.loginWithVk(vkLoginRequest);

    return loginResponse.toDomain();
  }

  Future<LoginObject> loginWithMeta(
    MetaLoginRequest metaLoginRequest,
  ) async {
    final loginResponse = await _authApi.loginWithMeta(metaLoginRequest);

    return loginResponse.toDomain();
  }

  Future<LoginObject> loginWithApple(
    AppleLoginRequest appleLoginRequest,
  ) async {
    final loginResponse = await _authApi.loginWithApple(appleLoginRequest);

    return loginResponse.toDomain();
  }

  Future<LoginObject> loginWithGoogle(
    GoogleLoginRequest googleLoginRequest,
  ) async {
    final loginResponse = await _authApi.loginWithGoogle(googleLoginRequest);

    return loginResponse.toDomain();
  }

  Future<void> register(RegisterRequest registerRequest) =>
      _authApi.register(registerRequest);

  Future<void> logout() => _authApi.logout();
}
