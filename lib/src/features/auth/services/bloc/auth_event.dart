abstract class AuthEvent {}

class AuthEventLoginFacebook extends AuthEvent {}

class AuthEventLoginVkontakte extends AuthEvent {}

class AuthEventLoginGoogle extends AuthEvent {}

class AuthEventSendSms extends AuthEvent {
  final String phone;

  AuthEventSendSms(this.phone);
}

class AuthEventReSendSms extends AuthEvent {}

class AuthEventRegisterUser extends AuthEvent {
  final String name;
  final String surname;
  final String email;
  final DateTime birthdate;

  AuthEventRegisterUser({
    required this.name,
    required this.surname,
    required this.email,
    required this.birthdate,
  });
}
