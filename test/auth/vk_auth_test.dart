import 'package:async/async.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/features/auth/services/vk/vk_auth.dart';

class VKLoginMock extends Mock implements VKLogin {}

void main() {
  late VKLoginMock vkLoginMock;
  late VKAuth vkAuth;

  group('Тесты авторизации через ВКонтакте', () {
    setUp(
      () {
        vkLoginMock = VKLoginMock();

        when(() => vkLoginMock.initSdk(scope: any(named: 'scope'))).thenAnswer(
          (_) => Future.value(
            Result.value(true),
          ),
        );

        vkAuth = VKAuth(vkLogin: vkLoginMock);
      },
    );

    test('В случае успешного логина должен прийти токен', () async {
      const token = '12345';
      const userId = '12345';
      final created = DateTime.now().millisecondsSinceEpoch;
      const secret = '12345';
      const email = '12345@gmail.com';
      const isCanceled = false;

      final vkAccessToken = VKAccessToken.fromMap(<String, Object>{
        'token': token,
        'userId': userId,
        'created': created,
        'secret': secret,
        'email': email
      });

      when(() => vkLoginMock.logIn()).thenAnswer(
        (_) => Future.value(
          Result.value(VKLoginResult(vkAccessToken, isCanceled: isCanceled)),
        ),
      );

      expect(
        await vkAuth.logIn(),
        equals(token),
      );
    });

    test('Если токен не пришел, бросаем PlatformException', () async {
      when(() => vkLoginMock.logIn()).thenAnswer(
        (_) => Future.value(
          Result.error(Object()),
        ),
      );

      expect(
        () => vkAuth.logIn(),
        throwsA(
          isA<PlatformException>(),
        ),
      );
    });

    test('Выход пользователя', () {
      when(() => vkLoginMock.logOut()).thenAnswer((_) => Future.value());
      vkAuth.logout();
      verify(() => vkLoginMock.logOut()).called(1);
    });
  });
}
