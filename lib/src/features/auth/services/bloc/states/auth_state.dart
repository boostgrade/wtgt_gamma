import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.init() = AuthStateInit;

  const factory AuthState.needOtp() = AuthStateNeedOtp;

  const factory AuthState.idle() = AuthStateIdle;

  const factory AuthState.successViaSocial() = AuthStateSuccessViaSocial;

  const factory AuthState.successViaOtp() = AuthStateSuccessViaOtp;

  const factory AuthState.register() = AuthStateRegister;

  const factory AuthState.logout() = AuthStateLogout;

  const factory AuthState.error(
    // ignore: avoid_annotating_with_dynamic
    dynamic error,
    StackTrace stackTrace,
  ) = AuthStateError;
}
