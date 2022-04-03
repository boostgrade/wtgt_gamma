import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookAuthService {
  final FacebookAuth _facebookAuth;

  FacebookAuthService({FacebookAuth? facebookAuth})
      : _facebookAuth = facebookAuth ?? FacebookAuth.i;

  Future<String> login() async {
    final result = await _facebookAuth.login(
      permissions: [
        'public_profile',
        'email',
      ],
    );

    if (result.accessToken == null) {
      throw PlatformException(
        code: 'sign_in_canceled',
        message: 'Sign in was cancelled',
      );
    }

    return result.accessToken!.token;
  }

  Future<void> logout() async => _facebookAuth.logOut();
}
