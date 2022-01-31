abstract class AuthState {}

class AuthStateIdle extends AuthState {}

class AuthStateInProgress extends AuthState {}

class AuthStateSuccess extends AuthState {}

class AuthStateError extends AuthState {
  final dynamic error;

  AuthStateError(this.error);
}
