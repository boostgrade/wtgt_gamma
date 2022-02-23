// ignore_for_file: cascade_invocations
import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';
import 'package:where_to_go_today/src/features/auth/services/google/google_auth.dart';
import 'package:where_to_go_today/src/features/authservices/api/auth_api.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';

class MockGoogleAuth extends Mock implements GoogleAuth {}

void main() {
  group('Тесты на блок авторизации', () {
    late AuthRepository authRepository;
    late MockGoogleAuth googleAuth;
    late AuthBloc authBloc;

    setUp(() {
      authRepository = AuthRepository(AuthApi(Dio()));
      googleAuth = MockGoogleAuth();
      authBloc =
          AuthBloc(authRepository: authRepository, googleAuth: googleAuth);
    });
    blocTest<AuthBloc, AuthState>(
      'Если отправляем номер телефона, то сначала получаем загрузку, потом состояние с необходимостью подтверждения',
      build: () => authBloc,
      act: (bloc) => bloc.add(const AuthEvent.sendPhone('')),
      wait: const Duration(seconds: 2),
      expect: () => [const AuthState.idle(), const AuthState.needOtp()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если повторно отправляем номер телефона, то сначала получаем загрузку, потом состояние состояние с необходимостью подтверждения',
      build: () => authBloc,
      act: (bloc) async {
        bloc.add(const AuthEvent.sendPhone(''));
        await Future.delayed(const Duration(seconds: 2), () {
          debugPrint('Future complete');
        });
        bloc.add(const AuthEvent.sendPhone(''));
      },
      wait: const Duration(seconds: 2),
      skip: 2,
      expect: () => [const AuthState.idle(), const AuthState.needOtp()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем смс-код, то сначала получаем загрузку, потом состояние успеха',
      build: () => authBloc,
      act: (bloc) => bloc.add(const AuthEvent.sendOtp('')),
      wait: const Duration(seconds: 2),
      expect: () => [const AuthState.idle(), const AuthState.successViaOtp()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие входа через соц.сеть, то сначала получаем загрузку, потом состояние успеха',
      build: () => authBloc,
      act: (bloc) => bloc.add(const AuthEvent.loginViaFacebook()),
      expect: () =>
          [const AuthState.idle(), const AuthState.successViaSocial()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие регистрации, то сначала получаем загрузку, потом состояние успеха',
      build: () => authBloc,
      act: (bloc) {
        final birthdate =
            DateTime.now().subtract(const Duration(days: 365 * 18));
        bloc.add(
          AuthEvent.register(
            name: 'Ivan',
            surname: 'Ivanov',
            email: '',
            birthdate: birthdate,
            agree: true,
          ),
        );
      },
      expect: () => [const AuthState.idle(), const AuthState.register()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие логаута, то сначала получаем загрузку, потом состояние успеха',
      build: () => authBloc,
      act: (bloc) => bloc.add(const AuthEvent.logout()),
      expect: () => [const AuthState.idle(), const AuthState.logout()],
    );
  });
}
