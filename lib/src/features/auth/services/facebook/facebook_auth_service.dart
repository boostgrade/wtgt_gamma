import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookAuthService {
  static Future<Map<String, dynamic>?> login() async {
    final result = await FacebookAuth.i.login(
      permissions: ['public_profile', 'email'],
    );

    if (result.status == LoginStatus.success) {
      final requestData = await FacebookAuth.i.getUserData(
        fields: 'email, name',
      );

      debugPrint(requestData.toString());

      return requestData;
    }

    return null;
  }

  static Future<void> logout() async => FacebookAuth.i.logOut();
}
