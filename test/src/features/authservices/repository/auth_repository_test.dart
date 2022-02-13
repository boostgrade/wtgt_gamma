import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/apple_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/google_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/meta_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/phone_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/register_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/vk_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/responses/login_response.dart';
import 'package:where_to_go_today/src/features/authservices/api/auth_api.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';

class AuthApiMock extends Mock implements AuthApi {}

class AppleLoginRequestFake extends Fake implements AppleLoginRequest {}

class GoogleLoginRequestFake extends Fake implements GoogleLoginRequest {}

class MetaLoginRequestFake extends Fake implements MetaLoginRequest {}

class PhoneLoginRequestFake extends Fake implements PhoneLoginRequest {}

class RegisterRequestFake extends Fake implements RegisterRequest {}

class VkLoginRequestFake extends Fake implements VkLoginRequest {}

const loginJsonResponse = '''
      {
        "user": {
          "id": 10201,
          "name": "Artem",
          "lastName": "Ivanov",
          "phone": "7911223344",
          "birthDate": "1990-10-22T11:58:47Z"
        },
        "token": {
          "token": "dhvcsbdvhu123v21u32v5i42",
          "refreshToken": "dhvcsbdvhu123v21u32v5i42_dfsf"
        }
      }
    ''';

final loginResponse = LoginResponse.fromJson(
  jsonDecode(loginJsonResponse) as Map<String, dynamic>,
);

final loginObject = loginResponse.toDomain();

Future<void> main() async {
  setUpAll(() {
    registerFallbackValue(AppleLoginRequestFake());
    registerFallbackValue(GoogleLoginRequestFake());
    registerFallbackValue(MetaLoginRequestFake());
    registerFallbackValue(PhoneLoginRequestFake());
    registerFallbackValue(RegisterRequestFake());
    registerFallbackValue(VkLoginRequestFake());
  });

  group('Тесты для репозитория авторизации', () {
    late AuthApiMock apiMock;
    late AuthRepository authRepository;

    setUp(() {
      apiMock = AuthApiMock();
      authRepository = AuthRepository(apiMock);
    });

    test('Метод Логин c Apple', () async {
      when(() => apiMock.loginWithApple(any())).thenAnswer(
        (_) async => loginResponse,
      );

      final response = await authRepository.loginWithApple(
        const AppleLoginRequest(token: ''),
      );

      expect(response.user.id, equals(loginObject.user.id));
      expect(response.user.name, equals(loginObject.user.name));
      expect(response.user.lastName, equals(loginObject.user.lastName));
      expect(response.user.phone, equals(loginObject.user.phone));
      expect(response.user.birthDate, equals(loginObject.user.birthDate));
      expect(
        response.token.refreshToken,
        equals(loginObject.token.refreshToken),
      );
      expect(response.token.token, equals(loginObject.token.token));
    });

    test('Метод Логин c Google', () async {
      when(() => apiMock.loginWithGoogle(any())).thenAnswer(
        (_) async => loginResponse,
      );

      final response = await authRepository.loginWithGoogle(
        const GoogleLoginRequest(token: ''),
      );

      expect(response.user.id, equals(loginObject.user.id));
      expect(response.user.name, equals(loginObject.user.name));
      expect(response.user.lastName, equals(loginObject.user.lastName));
      expect(response.user.phone, equals(loginObject.user.phone));
      expect(response.user.birthDate, equals(loginObject.user.birthDate));
      expect(
        response.token.refreshToken,
        equals(loginObject.token.refreshToken),
      );
      expect(response.token.token, equals(loginObject.token.token));
    });

    test('Метод Логин с Meta', () async {
      when(() => apiMock.loginWithMeta(any())).thenAnswer(
        (_) async => loginResponse,
      );

      final response = await authRepository.loginWithMeta(
        const MetaLoginRequest(token: ''),
      );

      expect(response.user.id, equals(loginObject.user.id));
      expect(response.user.name, equals(loginObject.user.name));
      expect(response.user.lastName, equals(loginObject.user.lastName));
      expect(response.user.phone, equals(loginObject.user.phone));
      expect(response.user.birthDate, equals(loginObject.user.birthDate));
      expect(
        response.token.refreshToken,
        equals(loginObject.token.refreshToken),
      );
      expect(response.token.token, equals(loginObject.token.token));
    });

    test('Метод Логин по телефону', () async {
      when(() => apiMock.loginWithPhone(any())).thenAnswer(
        (_) async => loginResponse,
      );

      final response = await authRepository.loginWithPhone(
        const PhoneLoginRequest(firebaseToken: '', phone: ''),
      );

      expect(response.user.id, equals(loginObject.user.id));
      expect(response.user.name, equals(loginObject.user.name));
      expect(response.user.lastName, equals(loginObject.user.lastName));
      expect(response.user.phone, equals(loginObject.user.phone));
      expect(response.user.birthDate, equals(loginObject.user.birthDate));
      expect(
        response.token.refreshToken,
        equals(loginObject.token.refreshToken),
      );
      expect(response.token.token, equals(loginObject.token.token));
    });

    test('Метод Логин с VK', () async {
      when(() => apiMock.loginWithVk(any())).thenAnswer(
        (_) async => loginResponse,
      );

      final response = await authRepository.loginWithVk(
        const VkLoginRequest(token: ''),
      );

      expect(response.user.id, equals(loginObject.user.id));
      expect(response.user.name, equals(loginObject.user.name));
      expect(response.user.lastName, equals(loginObject.user.lastName));
      expect(response.user.phone, equals(loginObject.user.phone));
      expect(response.user.birthDate, equals(loginObject.user.birthDate));
      expect(
        response.token.refreshToken,
        equals(loginObject.token.refreshToken),
      );
      expect(response.token.token, equals(loginObject.token.token));
    });

    test('Метод Логаут', () async {
      when(apiMock.logout).thenAnswer((_) => Future.value());

      await authRepository.logout();

      verify(() => apiMock.logout()).called(1);
    });

    test('Метод Регистрация', () async {
      when(() => apiMock.register(any())).thenAnswer(
        (_) => Future.value(),
      );

      const registerRequest = RegisterRequest(
        name: '',
        lastName: '',
        phone: '',
        birthDate: '',
      );

      await authRepository.register(
        registerRequest,
      );

      verify(() => apiMock.register(registerRequest)).called(1);
    });
  });
}
