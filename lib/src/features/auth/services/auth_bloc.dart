import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';

/// Сервис позволяющий:
///   - обработать номер телефона пользователя
///   - отправить СМС
///   - зарегистрировать через соц. сети
///   - провести заполнение данных профиля при регистрации
///   - произвести логаут
///
class AuthBloc extends Bloc<AuthEvent, AuthState>
    with CanThrowExceptionBlocMixin {
  final AuthRepository authRepository;

  bool firstSending = true;

  AuthBloc({required this.authRepository}) : super(const AuthState.init()) {
    on<AuthEventSendPhone>((event, emit) async {
      if (firstSending) {
        emit(const AuthState.idle());
        // TODO(any): handle first incoming `AuthEventSendPhone` event
        await Future.delayed(
          const Duration(seconds: 1),
          () => debugPrint('Request done'),
        );
        emit(const AuthState.needOtp());
        firstSending = false;
      } else {
        emit(const AuthState.idle());
        // TODO(any): handle next incoming `AuthEventSendPhone` event
        // emit(const AuthState.error('Something wrong', StackTrace.empty));
        emit(const AuthState.success());
      }
    });

    on<AuthEventSendOtp>((event, emit) async {
      emit(const AuthState.idle());
      // TODO(any): handle incoming `AuthEventSendOtp` event
      emit(const AuthState.success());
    });

    on<AuthEventLoginViaFacebook>((event, emit) async {
      emit(const AuthState.idle());
      // TODO(any): handle incoming `AuthEventLoginViaFacebook` event
      emit(const AuthState.success());
    });

    on<AuthEventLoginViaVkontakte>((event, emit) async {
      emit(const AuthState.idle());
      // TODO(any): handle incoming `AuthEventLoginViaVkontakte` event
      emit(const AuthState.success());
    });

    // Пример обработчика в блоке
    on<AuthEventLoginViaGoogle>((event, emit) async {
      try {
        emit(const AuthState.idle());

        // TODO(Denis): отправить запрос в сервис google и передать токен в репозиторий

        emit(const AuthState.success());
      } on Exception catch (e, s) {
        emit(AuthState.error(e, s));
      }
    });

    on<AuthEventRegister>((event, emit) async {
      emit(const AuthState.idle());
      // TODO(any): handle incoming `AuthEventRegister` event
      emit(const AuthState.success());
    });

    on<AuthEventLogout>((event, emit) async {
      emit(const AuthState.idle());
      // TODO(any): handle incoming `AuthEventLogout` event
      emit(const AuthState.success());
    });
  }
}
