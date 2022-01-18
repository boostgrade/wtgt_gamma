// ignore_for_file: unused_import
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/auth_state.dart';

void main() {
  group('Тесты на блок авторизации', () {
    //TODO: раскомментировать тесты когда сделан блок авторизации
    // blocTest<AuthBloc, AuthState>(
    //   'Если отправляем номер телефона, то сначала получаем загрузку, потом состояние с необходимостью подтверждения',
    //   build: () => AuthBloc(),
    //   act: (bloc) => bloc.add(const AuthEvent.sendPhone('')),
    //   expect: () => [const AuthState.idle(), const AuthState.needOtp()],
    // );

    // blocTest<AuthBloc, AuthState>(
    //   'Если повторно отправляем номер телефона, то сначала получаем загрузку, потом состояние успеха',
    //   build: () => AuthBloc(),
    //   act: (bloc) => bloc.add(const AuthEvent.sendPhone('')),
    //   expect: () => [const AuthState.idle(), const AuthState.success()],
    // );

    // blocTest<AuthBloc, AuthState>(
    //   'Если отправляем смс-код, то сначала получаем загрузку, потом состояние успеха',
    //   build: () => AuthBloc(),
    //   act: (bloc) => bloc.add(const AuthEvent.sendOtp('')),
    //   expect: () => [const AuthState.idle(), const AuthState.success()],
    // );

    // blocTest<AuthBloc, AuthState>(
    //   'Если отправляем событие входа через соц.сеть, то сначала получаем загрузку, потом состояние успеха',
    //   build: () => AuthBloc(),
    //   act: (bloc) => bloc.add(const AuthEvent.loginViaSocial('vk')),
    //   expect: () => [const AuthState.idle(), const AuthState.success()],
    // );

    // blocTest<AuthBloc, AuthState>(
    //   'Если отправляем событие регистрации, то сначала получаем загрузку, потом состояние успеха',
    //   build: () => AuthBloc(),
    //   act: (bloc) =>
    //       bloc.add(const AuthEvent.register('Ivan', 'Ivanov', '', '', true)),
    //   expect: () => [const AuthState.idle(), const AuthState.success()],
    // );

    // blocTest<AuthBloc, AuthState>(
    //   'Если отправляем событие логаута, то сначала получаем загрузку, потом состояние успеха',
    //   build: () => AuthBloc(),
    //   act: (bloc) => bloc.add(const AuthEvent.logout()),
    //   expect: () => [const AuthState.idle(), const AuthState.success()],
    // );
  });
}
