import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/services/network/firebase_options.dart';
import 'package:where_to_go_today/src/features/auth/services/phone_service/phone_verification_callback.dart';

class PhoneAuth {
  late FirebaseAuth _auth;

  Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    _auth = FirebaseAuth.instance;
  }

  ///Make sure to pass in a phone number with country code
  ///prefixed with plus sign ('+')
  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required PhoneVerificationCallback callback,
    int? forceResendingToken,
  }) {
    if (_auth.currentUser != null) {
      throw ActiveSessionException();
    } else {
      return _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: callback.onVerificationCompleted,
        verificationFailed: callback.onVerificationFailed,
        codeSent: callback.onCodeSent,
        codeAutoRetrievalTimeout: callback.onCodeTimeout,
        forceResendingToken: forceResendingToken,
      );
    }
  }

  Future<UserCredential> enterCode({
    required String code,
    required String verificationId,
  }) async {
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: code,
    );

    return _auth.signInWithCredential(credential);
  }
}
