import 'package:flutter/services.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';

class VKAuth {
  final _vkLogin = VKLogin();

  VKAuth() {
    _init();
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

  Future<void> _init() async {
    await _vkLogin.initSdk(
      scope: [
        VKScope.email,
      ],
    );
  }
}
