import 'package:flutter_login_vk/flutter_login_vk.dart';

class VKAuth {
  late VKLogin _vkLogin;

  Future<void> init() {
    _vkLogin = VKLogin();

    return _vkLogin.initSdk(
      scope: [
        VKScope.email,
      ],
    );
  }

  Future<String> logIn() async {
    var token = '';
    final result = await _vkLogin.logIn();
    if (result.isValue) {
      final accessToken = result.asValue?.value.accessToken;
      if (accessToken != null) {
        token = accessToken.token;
      }
    }

    return token;
  }

  Future<void> logout() {
    return _vkLogin.logOut();
  }
}
