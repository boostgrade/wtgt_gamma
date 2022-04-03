import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';
import 'package:where_to_go_today/src/features/auth/services/facebook/facebook_auth_service.dart';
import 'package:where_to_go_today/src/features/auth/services/google/google_auth.dart';
import 'package:where_to_go_today/src/features/auth/services/vk/vk_auth.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/google_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/vk_login_request.dart';
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
  final GoogleAuth googleAuth;
  final VKAuth vkAuth;

  AuthBloc({
    required this.authRepository,
    required this.facebookAuthService,
    required this.googleAuth,
    required this.vkAuth,
  }) : super(const AuthState.init()) {
    on<AuthEventSendPhone>(_onSendPhone);
    on<AuthEventSendOtp>(_onSendOtp);
    on<AuthEventLoginViaFacebook>(_onLoginViaFacebook);
    on<AuthEventLoginViaVkontakte>(_onLoginViaVkontakte);
    on<AuthEventLoginViaGoogle>(_onLoginViaGoogle);
    on<AuthEventRegister>(_onRegister);
    on<AuthEventLogout>(_onAuthEventLogout);
  }

  FutureOr<void> _onSendPhone(AuthEventSendPhone _,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.idle());
    try {
      // TODO(any): handle incoming `AuthEventSendPhone` event
      await Future.delayed(const Duration(seconds: 1), () {
        debugPrint('SendPhone complete');
        // throw Exception('Something wrong');
      });
      emit(const AuthState.needOtp());
    } on Exception catch (e, s) {
      emit(AuthState.error(e, s));
    }
  }

  FutureOr<void> _onSendOtp(
    AuthEventSendOtp _,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.idle());
    try {
      // TODO(any): handle incoming `AuthEventSendOtp` event
      await Future.delayed(const Duration(seconds: 1), () {
        debugPrint('SendOtp complete');
        // throw Exception('Something wrong');
      });
      emit(const AuthState.successViaOtp());
    } on Exception catch (e, s) {
      emit(AuthState.error(e, s));
    }
  }

  FutureOr<void> _onLoginViaFacebook(
    AuthEventLoginViaFacebook _,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.idle());

      final token = await facebookAuthService.login();

      if (token.isNotEmpty) {
        emit(const AuthState.successViaSocial());
      }
    } on PlatformException catch (e, s) {
      emit(AuthState.error(AuthorizationException(), s));
    } on Exception catch (e, s) {
      emit(AuthState.error(e, s));
    }
  }

  FutureOr<void> _onLoginViaVkontakte(
    AuthEventLoginViaVkontakte _,
    Emitter<AuthState> emit,
  ) async {
    try {
      final token = await vkAuth.logIn();
      if (token.isNotEmpty) {
        await authRepository.loginWithVk(
          VkLoginRequest(token: token),
        );
        emit(const AuthState.successViaSocial());
      }
    } on PlatformException catch (e, s) {
      emit(AuthState.error(AuthorizationException(), s));
    } on Exception catch (e, s) {
      emit(AuthState.error(e, s));
    }
  }

  FutureOr<void> _onLoginViaGoogle(
    AuthEventLoginViaGoogle _,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.idle());
      final token = await googleAuth.signIn();
      if (token == null) {
        return;
      }
      await authRepository.loginWithGoogle(
        GoogleLoginRequest(token: token),
      );
      emit(const AuthState.successViaSocial());
    } on PlatformException catch (e, s) {
      emit(AuthState.error(AuthorizationException(), s));
    } on Exception catch (e, s) {
      emit(AuthState.error(e, s));
    }
  }

  FutureOr<void> _onRegister(
    AuthEventRegister _,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.idle());
    // TODO(any): handle incoming `AuthEventRegister` event
    emit(const AuthState.register());
  }

  FutureOr<void> _onAuthEventLogout(
    AuthEventLogout _,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.idle());
    // TODO(any): handle incoming `AuthEventLogout` event
    emit(const AuthState.logout());
  }
}
