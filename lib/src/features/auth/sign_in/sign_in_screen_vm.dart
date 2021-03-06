import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/auth/code/code_route.dart';
import 'package:where_to_go_today/src/features/auth/register/register_route.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sign_in_vm_state.dart';

part 'sign_in_screen_vm.g.dart';

class SignInScreenVm = _SignInScreenVm with _$SignInScreenVm;

abstract class _SignInScreenVm extends ViewModel with Store {
  final BuildContext _context;
  final AuthBloc _bloc;

  @observable
  SignInVmState vmState = SignInVmState.idle;

  @observable
  bool isPhoneValid = false;

  @computed
  bool get isLoading => vmState == SignInVmState.loading;

  String? _phone;

  _SignInScreenVm(
    this._context,
    this._bloc, {
    required ErrorHandler errorHandler,
  }) : super(errorHandler) {
    observeBloc<AuthState, AuthBloc>(_bloc, _handleStates);
  }

  @action
  void verifyPhone(String phone) {
    isPhoneValid = phone.length == 12;
  }

  @action
  Future<void> requestCode(String phone) async {
    _phone = phone;
    _bloc.add(AuthEvent.sendPhone(phone));
  }

  @action
  void signInWithGoogle() {
    _bloc.add(const AuthEvent.loginViaGoogle());
  }

  @action
  void signInWithFacebook() {
    _bloc.add(const AuthEvent.loginViaFacebook());
  }

  @action
  void signInWithVkontakte() {
    _bloc.add(const AuthEvent.loginViaVkontakte());
  }

  void _handleStates(AuthState state) {
    if (state is AuthStateIdle) {
      vmState = SignInVmState.loading;
    } else if (state is AuthStateNeedOtp) {
      vmState = SignInVmState.needOtp;
      if (_phone != null) {
        Routemaster.of(_context).replace('${CodeRoute.routeName}/$_phone');
      }
    } else if (state is AuthStateSuccessViaSocial) {
      vmState = SignInVmState.successSocial;
      Routemaster.of(_context).replace(RegisterRoute.routeName);
    } else if (state is AuthStateError) {
      vmState = SignInVmState.error;
      _bloc.onError(AuthorizationException(), state.stackTrace);
      vmState = SignInVmState.idle;
    } else {
      vmState = SignInVmState.idle;
    }
  }
}
