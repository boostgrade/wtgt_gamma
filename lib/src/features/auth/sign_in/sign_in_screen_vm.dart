import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';
import 'package:where_to_go_today/src/features/auth/services/google/google_auth.dart';

part 'sign_in_screen_vm.g.dart';

class SignInScreenVm = _SignInScreenVm with _$SignInScreenVm;

abstract class _SignInScreenVm extends ViewModel with Store {
  final BuildContext context;
  final GoogleAuth googleAuth;
  final AuthBloc _bloc;

  _SignInScreenVm(
    this._bloc, {
    required this.context,
    required this.googleAuth,
    required ErrorHandler errorHandler,
  }) : super(errorHandler) {
    observeBloc<AuthState, AuthBloc>(
      _bloc,
      _handleStates,
    );
  }

  @action
  Future<void> signInWithGoogle() async {
    try {
      final token = await googleAuth.signIn();
      if (token == null) return;

      _bloc.add(const AuthEventLoginViaGoogle());
    } on PlatformException catch (error, stackTrace) {
      _bloc.onError(AuthorizationException(), stackTrace);
    }
  }

  void _handleStates(AuthState state) {
    if (state is AuthStateSuccess) {
      Routemaster.of(context).push('/');
    } else if (state is AuthStateError) {
      _bloc.onError(AuthorizationException(), state.stackTrace);
    }
  }
}
