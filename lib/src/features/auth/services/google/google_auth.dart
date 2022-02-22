import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  Future<String?> signIn() async {
    final googleSignInAccount = await _googleSignIn.signIn();
    if (googleSignInAccount == null) {
      throw PlatformException(
        code: 'sign_in_canceled',
        message: 'Sign in was cancelled',
      );
    }

    final authentication = await googleSignInAccount.authentication;

    return authentication.accessToken;
  }

  Future<void> logout() => _googleSignIn.signOut();
}
