import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendPhone(String phone) = AuthEventSendPhone;

  const factory AuthEvent.sendOtp(String code) = AuthEventSendOtp;

  const factory AuthEvent.loginViaFacebook() = AuthEventLoginViaFacebook;

  const factory AuthEvent.loginViaVkontakte() = AuthEventLoginViaVkontakte;

  const factory AuthEvent.loginViaGoogle() = AuthEventLoginViaGoogle;

  const factory AuthEvent.register(
    String name,
    String surname,
    String email,
    DateTime birthdate,
    bool agree,
  ) = AuthEventRegister;

  const factory AuthEvent.logout() = AuthEventLogout;
}
