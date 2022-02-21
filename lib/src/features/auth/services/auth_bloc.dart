import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';
import 'package:where_to_go_today/src/features/auth/services/facebook/facebook_auth_service.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/meta_login_request.dart';
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
  final FacebookAuthService facebookAuthService;

  bool firstSending = true;

  AuthBloc({
    required this.authRepository,
    required this.facebookAuthService,
  }) : super(const AuthState.init()) {
    on<AuthEventSendPhone>((event, emit) async {
      if (firstSending) {
        emit(const AuthState.idle());
        // TODO(any): handle first incoming `AuthEventSendPhone` event
        emit(const AuthState.needOtp());
        firstSending = false;
      } else {
        emit(const AuthState.idle());
        // TODO(any): handle next incoming `AuthEventSendPhone` event
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

      try {
        final token = await facebookAuthService.login();

        if (token != null && token.isNotEmpty) {
          await authRepository.loginWithMeta(MetaLoginRequest(token: token));

          emit(const AuthState.success());
        }
      } on PlatformException catch (e, stackTrace) {
        emit(AuthState.error(e, stackTrace));
      }
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
