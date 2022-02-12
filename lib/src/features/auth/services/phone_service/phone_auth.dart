import 'package:firebase_auth/firebase_auth.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/features/auth/services/phone_service/phone_verification_callback.dart';

class PhoneAuth {
  final FirebaseAuth _auth;

  PhoneAuth(this._auth);

  ///Make sure to pass in a phone number with country code
  ///prefixed with plus sign ('+')
  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required PhoneVerificationCallback callback,
    int? forceResendingToken,
  }) {
    if (signedIn()) {
      throw ActiveSessionException();
    } else {
      return _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: callback.verificationCompleted,
        verificationFailed: callback.verificationFailed,
        codeSent: callback.codeSent,
        codeAutoRetrievalTimeout: callback.codeAutoRetrievalTimeout,
        forceResendingToken: forceResendingToken,
      );
    }
  }

  bool signedIn() => _auth.currentUser != null;

  Future<UserCredential> enterCode({
    required String code,
    required String verificationId,
  }) {
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: code,
    );

    return _auth.signInWithCredential(credential);
  }

  Future<void> signOut() {
    return _auth.signOut();
  }
}
