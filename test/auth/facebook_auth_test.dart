import 'package:async/async.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/features/auth/services/facebook/facebook_auth_service.dart';

class MockFacebookAuth extends Mock implements FacebookAuth {}

void main() {
  late MockFacebookAuth mockFacebookAuth;
  late FacebookAuthService facebookAuthService;

  group(
    'Тесты авторизации через Facebook',
    () {
      setUp(
        () {
          mockFacebookAuth = MockFacebookAuth();

          facebookAuthService = FacebookAuthService();
        },
      );

      test(
        'Успешная авторизация',
        () async {
          const token = '12345';

          final fbAccessToken = AccessToken(
            declinedPermissions: [
              'pages_show_list',
              'pages_messaging',
              'pages_manage_metadata'
            ],
            grantedPermissions: ['email', 'public_profile'],
            userId: '12345',
            expires: DateTime.now().add(const Duration(days: 10)),
            lastRefresh: DateTime.now(),
            token: token,
            applicationId: '321585666565525',
            isExpired: false,
          );

          when(() => mockFacebookAuth.login()).thenAnswer(
            (_) => Future.value(
              LoginResult(
                status: LoginStatus.success,
                accessToken: fbAccessToken,
              ),
            ),
          );

          expect(await facebookAuthService.login(), token);
        },
      );

      test(
        'Если токен не пришел, то бросаем PlatformException',
        () async {
          when(() => mockFacebookAuth.login()).thenAnswer(
            (_) => Future.error(Object()),
          );

          expect(
            () => facebookAuthService.login(),
            throwsA(
              isA<PlatformException>(),
            ),
          );
        },
      );

      test('Выход пользователя', () {
        when(() => mockFacebookAuth.logOut()).thenAnswer((_) => Future.value());

        facebookAuthService.logout();
        verify(() => mockFacebookAuth.logOut()).called(1);
      });
    },
  );
}
