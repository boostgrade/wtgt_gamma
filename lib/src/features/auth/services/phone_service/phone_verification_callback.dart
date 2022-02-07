import 'package:firebase_auth/firebase_auth.dart';

class PhoneVerificationCallback {
  final PhoneVerificationCompleted onVerificationCompleted;
  final PhoneVerificationFailed onVerificationFailed;
  final PhoneCodeSent onCodeSent;
  final PhoneCodeAutoRetrievalTimeout onCodeTimeout;

  PhoneVerificationCallback({
    required this.onVerificationCompleted,
    required this.onVerificationFailed,
    required this.onCodeSent,
    required this.onCodeTimeout,
  });
}
