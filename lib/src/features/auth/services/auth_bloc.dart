import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';
import 'package:where_to_go_today/src/features/auth/services/google/google_auth.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/google_login_request.dart';
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
  final GoogleAuth googleAuth;

  bool firstSending = true;

  AuthBloc({
    required this.authRepository,
    required this.googleAuth,
  }) : super(const AuthState.init()) {
    on<AuthEventSendPhone>((event, emit) async {
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
    });

    on<AuthEventSendOtp>((event, emit) async {
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
    });

    on<AuthEventLoginViaFacebook>((event, emit) async {
      emit(const AuthState.idle());
      // TODO(any): handle incoming `AuthEventLoginViaFacebook` event
      emit(const AuthState.successViaSocial());
    });

    on<AuthEventLoginViaVkontakte>((event, emit) async {
      emit(const AuthState.idle());
      // TODO(any): handle incoming `AuthEventLoginViaVkontakte` event
      emit(const AuthState.successViaSocial());
    });

    // Пример обработчика в блоке
    on<AuthEventLoginViaGoogle>((event, emit) async {
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
    });

    on<AuthEventRegister>((event, emit) async {
      emit(const AuthState.idle());
      // TODO(any): handle incoming `AuthEventRegister` event
      emit(const AuthState.register());
    });

    on<AuthEventLogout>((event, emit) async {
      emit(const AuthState.idle());
      // TODO(any): handle incoming `AuthEventLogout` event
      emit(const AuthState.logout());
    });
  }
}
