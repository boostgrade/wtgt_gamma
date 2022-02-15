import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  final GoogleSignIn _googleSignIn;

  GoogleAuth() : _googleSignIn = GoogleSignIn(scopes: ['email']);

  Future<String?> signIn() async {
    final googleSignInAccount = await _googleSignIn.signIn();
    // TODO(Denis): выводить ошибку или ничего не делать при отмене?
    if (googleSignInAccount == null) return null;

    final authentication = await googleSignInAccount.authentication;

    return authentication.accessToken;
  }

  Future<void> logout() async {
    await _googleSignIn.signOut();
  }
}
