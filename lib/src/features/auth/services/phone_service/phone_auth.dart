import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:where_to_go_today/src/core/services/network/firebase_options.dart';

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
    required PhoneVerificationCompleted onVerificationCompleted,
    required PhoneVerificationFailed onVerificationFailed,
    required PhoneCodeSent onCodeSent,
    required PhoneCodeAutoRetrievalTimeout onCodeTimeout,
  }) {
    return _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: onVerificationCompleted,
      verificationFailed: onVerificationFailed,
      codeSent: onCodeSent,
      codeAutoRetrievalTimeout: onCodeTimeout,
    );
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
