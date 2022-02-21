import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookAuthService {
  Future<String?> login() async {
    final result = await FacebookAuth.i.login(
      permissions: [
        'public_profile',
        'email',
      ],
    );

    return result.status == LoginStatus.success && result.accessToken != null
        ? result.accessToken!.token
        : null;
  }

  Future<void> logout() async => FacebookAuth.i.logOut();
}
