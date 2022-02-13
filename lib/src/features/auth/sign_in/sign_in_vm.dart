import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';

part 'sign_in_vm.g.dart';

class SignInVm = _SignInVm with _$SignInVm;

abstract class _SignInVm extends ViewModel with Store {
  final AuthBloc _bloc;

  @observable
  VmState vmState = VmState.idle;

  @observable
  bool isPhoneValid = false;

  _SignInVm(this._bloc, ErrorHandler errorHandler) : super(errorHandler) {
    observeBloc<AuthState, AuthBloc>(_bloc, _handleBlocStates);
  }

  @action
  void verifyPhone(String phone) {
    isPhoneValid = phone.length == 12;
  }

  @action
  Future<void> requestCode(String phone) async {
    _bloc.add(AuthEvent.sendPhone(phone));
  }

  void _handleBlocStates(AuthState blocState) {
    debugPrint('blocState = ${blocState.runtimeType}');
    if (blocState is AuthStateIdle) {
      vmState = VmState.loading;
    } else if (blocState is AuthStateError) {
      vmState = VmState.error;
      vmState = VmState.idle;
    } else {
      vmState = VmState.idle;
    }
  }
}

enum VmState { idle, loading, error }
