// ignore_for_file: cascade_invocations
import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';
import 'package:where_to_go_today/src/features/auth/services/facebook/facebook_auth_service.dart';
import 'package:where_to_go_today/src/features/authservices/api/auth_api.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';

void main() {
  group('Тесты на блок авторизации', () {
    late AuthRepository authRepository;
    late AuthBloc authBloc;
    late FacebookAuthService facebookAuthService;

    setUp(() {
      authRepository = AuthRepository(AuthApi(Dio()));
      facebookAuthService = FacebookAuthService();
      authBloc = AuthBloc(
        authRepository: authRepository,
        facebookAuthService: facebookAuthService,
      );
    });

    blocTest<AuthBloc, AuthState>(
      'Если отправляем номер телефона, то сначала получаем загрузку, потом состояние с необходимостью подтверждения',
      build: () => authBloc,
      act: (bloc) => bloc.add(const AuthEvent.sendPhone('')),
      expect: () => [const AuthState.idle(), const AuthState.needOtp()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если повторно отправляем номер телефона, то сначала получаем загрузку, потом состояние успеха',
      build: () => authBloc,
      act: (bloc) {
        bloc.add(const AuthEvent.sendPhone(''));
        bloc.add(const AuthEvent.sendPhone(''));
      },
      skip: 2,
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем смс-код, то сначала получаем загрузку, потом состояние успеха',
      build: () => authBloc,
      act: (bloc) => bloc.add(const AuthEvent.sendOtp('')),
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие входа через соц.сеть, то сначала получаем загрузку, потом состояние успеха',
      build: () => authBloc,
      act: (bloc) => bloc.add(const AuthEvent.loginViaFacebook()),
      wait: const Duration(milliseconds: 300),
      expect: () => [const AuthState.idle(), const AuthState.success()],
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
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие логаута, то сначала получаем загрузку, потом состояние успеха',
      build: () => authBloc,
      act: (bloc) => bloc.add(const AuthEvent.logout()),
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );
  });
}
