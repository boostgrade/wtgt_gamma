import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';

void main() {
  group('Тесты на блок авторизации', () {
    blocTest<AuthBloc, AuthState>(
      'Если отправляем номер телефона, то сначала получаем загрузку, потом состояние с необходимостью подтверждения',
      build: AuthBloc.new,
      act: (bloc) => bloc.add(const AuthEvent.sendPhone('')),
      expect: () => [const AuthState.idle(), const AuthState.needOtp()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если повторно отправляем номер телефона, то сначала получаем загрузку, потом состояние успеха',
      build: AuthBloc.new,
      act: (bloc) {
        bloc.add(const AuthEvent.sendPhone(''));
        bloc.add(const AuthEvent.sendPhone(''));
      },
      skip: 2,
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем смс-код, то сначала получаем загрузку, потом состояние успеха',
      build: AuthBloc.new,
      act: (bloc) => bloc.add(const AuthEvent.sendOtp('')),
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие входа через соц.сеть, то сначала получаем загрузку, потом состояние успеха',
      build: AuthBloc.new,
      act: (bloc) => bloc.add(const AuthEvent.loginViaFacebook()),
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие регистрации, то сначала получаем загрузку, потом состояние успеха',
      build: AuthBloc.new,
      act: (bloc) {
        final birthdate =
            DateTime.now().subtract(const Duration(days: 365 * 18));
        bloc.add(
          AuthEvent.register(
            'Ivan',
            'Ivanov',
            '',
            birthdate,
            true,
          ),
        );
      },
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие логаута, то сначала получаем загрузку, потом состояние успеха',
      build: AuthBloc.new,
      act: (bloc) => bloc.add(const AuthEvent.logout()),
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );
  });
}
