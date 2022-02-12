import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/features/auth/services/phone_service/phone_auth.dart';
import 'package:where_to_go_today/src/features/auth/services/phone_service/phone_verification_callback.dart';

class FirebaseAuthMock extends Mock implements FirebaseAuth {}

class PhoneVerificationCallbackMock extends Mock
    implements PhoneVerificationCallback {}

class UserMock extends Mock implements User {}

class UserCredentialMock extends Mock implements UserCredential {}

class AuthCredentialFake extends Fake implements AuthCredential {}

void main() {
  const _phoneNumber = '+1234567890';
  late FirebaseAuthMock authMock;
  late PhoneAuth phoneAuth;

  group('Тесты авторизации по номеру телефона', () {
    setUp(() {
      authMock = FirebaseAuthMock();
      phoneAuth = PhoneAuth(authMock);
      registerFallbackValue(AuthCredentialFake());
    });

    test(
      'Есть ли у пользователя активная сессия',
      () {
        when(() => authMock.currentUser).thenReturn(UserMock());

        expect(
          () => phoneAuth.verifyPhoneNumber(
            phoneNumber: _phoneNumber,
            callback: PhoneVerificationCallbackMock(),
          ),
          throwsA(
            isA<ActiveSessionException>(),
          ),
        );
      },
    );

    test('Отправка номера', () {
      void _verificationCompleted(PhoneAuthCredential credential) {}
      void _verificationFailed(FirebaseAuthException exception) {}
      void _codeSent(String verificationId, int? forceResendingToken) {}
      void _codeAutoRetrievalTimeout(String verificationId) {}

      when(
        () => authMock.verifyPhoneNumber(
          phoneNumber: any(named: 'phoneNumber'),
          verificationCompleted: any(named: 'verificationCompleted'),
          verificationFailed: any(named: 'verificationFailed'),
          codeSent: any(named: 'codeSent'),
          codeAutoRetrievalTimeout: any(named: 'codeAutoRetrievalTimeout'),
        ),
      ).thenAnswer((_) => Future.value());

      phoneAuth.verifyPhoneNumber(
        phoneNumber: _phoneNumber,
        callback: PhoneVerificationCallback(
          verificationCompleted: _verificationCompleted,
          verificationFailed: _verificationFailed,
          codeSent: _codeSent,
          codeAutoRetrievalTimeout: _codeAutoRetrievalTimeout,
        ),
      );

      verify(
        () => authMock.verifyPhoneNumber(
          phoneNumber: _phoneNumber,
          verificationCompleted: _verificationCompleted,
          verificationFailed: _verificationFailed,
          codeSent: _codeSent,
          codeAutoRetrievalTimeout: _codeAutoRetrievalTimeout,
        ),
      );
    });

    test('Отправка верификации', () {
      const verificationId = 'qwerty';
      const code = '12345';
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: code,
      );

      when(() => authMock.signInWithCredential(any()))
          .thenAnswer((_) => Future.value(UserCredentialMock()));

      phoneAuth.enterCode(code: code, verificationId: verificationId);

      final captured = verify(() => authMock.signInWithCredential(captureAny()))
          .captured
          .last as PhoneAuthCredential;
      expect(captured.verificationId, equals(credential.verificationId));
      expect(captured.smsCode, equals(credential.smsCode));
    });

    test('Выход пользователя', () async {
      when(authMock.signOut).thenAnswer((_) => Future.value());
      await phoneAuth.signOut();
      verify(() => authMock.signOut()).called(1);
    });
  });
}
