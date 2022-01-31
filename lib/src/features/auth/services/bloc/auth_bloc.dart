import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthStateIdle()) {
    on<AuthEventLoginFacebook>((event, emit) async {
      emit(AuthStateInProgress());
      // TODO(any): handle incoming `AuthEventLoginFacebook` event
      emit(AuthStateIdle());
    });
    on<AuthEventLoginVkontakte>((event, emit) async {
      emit(AuthStateInProgress());
      // TODO(any): handle incoming `AuthEventLoginVkontakte` event
      emit(AuthStateIdle());
    });
    on<AuthEventLoginGoogle>((event, emit) async {
      emit(AuthStateInProgress());
      // TODO(any): handle incoming `AuthEventLoginVkontakte` event
      emit(AuthStateIdle());
    });
    on<AuthEventSendSms>((event, emit) async {
      emit(AuthStateInProgress());
      // TODO(any): handle incoming `AuthEventLoginVkontakte` event
      emit(AuthStateIdle());
    });
    on<AuthEventReSendSms>((event, emit) async {
      emit(AuthStateInProgress());
      // TODO(any): handle incoming `AuthEventLoginVkontakte` event
      emit(AuthStateIdle());
    });
    on<AuthEventRegisterUser>((event, emit) async {
      emit(AuthStateInProgress());
      // TODO(any): handle incoming `AuthEventLoginVkontakte` event
      emit(AuthStateIdle());
    });
  }
}
