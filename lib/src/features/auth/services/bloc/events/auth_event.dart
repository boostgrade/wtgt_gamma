import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendPhone(String phone) = AuthEventSendPhone;

  const factory AuthEvent.sendOtp(String code) = AuthEventSendOtp;

  const factory AuthEvent.loginViaFacebook() = AuthEventLoginViaFacebook;

  const factory AuthEvent.loginViaVkontakte() = AuthEventLoginViaVkontakte;

  const factory AuthEvent.loginViaGoogle() = AuthEventLoginViaGoogle;

  const factory AuthEvent.register({
    required String name,
    required String surname,
    required String email,
    required DateTime birthdate,
    required bool agree,
  }) = AuthEventRegister;

  const factory AuthEvent.logout() = AuthEventLogout;
}
