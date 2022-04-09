import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/features/auth/services/facebook/facebook_auth_service.dart';

class FacebookAuthMock extends Mock implements FacebookAuth {}

void main() {
  late FacebookAuthMock facebookAuthMock;

  late FacebookAuthService facebookAuthService;

  group(
    'Тесты авторизации через Facebook',
    () {
      setUp(
        () {
          facebookAuthMock = FacebookAuthMock();

          facebookAuthService = FacebookAuthService(
            facebookAuth: facebookAuthMock,
          );
        },
      );

      test(
        'В случае успешного логина должен прийти токен',
        () async {
          const token = '12345';

          final facebookAccessToken = AccessToken(
            declinedPermissions: [],
            grantedPermissions: [
              'public_profile',
              'email',
            ],
            userId: '12345',
            expires: DateTime.now().add(const Duration(days: 10)),
            lastRefresh: DateTime.now(),
            token: token,
            applicationId: '321585666565525',
            isExpired: false,
          );

          when(
            () => facebookAuthMock.login(
              permissions: any(named: 'permissions'),
            ),
          ).thenAnswer(
            (_) => Future.value(
              LoginResult(
                accessToken: facebookAccessToken,
                status: LoginStatus.success,
              ),
            ),
          );

          expect(
            await facebookAuthService.login(),
            equals(token),
          );
        },
      );

      test('Если токен не пришел, бросаем PlatformException', () async {
        when(
          () => facebookAuthMock.login(permissions: any(named: 'permissions')),
        ).thenAnswer(
          (_) => Future.value(LoginResult(status: LoginStatus.failed)),
        );

        expect(
          () => facebookAuthService.login(),
          throwsA(
            isA<PlatformException>(),
          ),
        );
      });

      test(
        'Выход пользователя',
        () {
          when(() => facebookAuthMock.logOut()).thenAnswer(
            (_) => Future.value(),
          );

          facebookAuthService.logout();

          verify(() => facebookAuthMock.logOut()).called(1);
        },
      );
    },
  );
}
