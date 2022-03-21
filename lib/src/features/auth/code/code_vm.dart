import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/auth/code/code_vm_state.dart';
import 'package:where_to_go_today/src/features/auth/register/register_route.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';

part 'code_vm.g.dart';

class CodeVm = _CodeVm with _$CodeVm;

abstract class _CodeVm extends ViewModel with Store {
  static const int _resendingTimeout = 30;
  final BuildContext _context;
  final AuthBloc _bloc;

  @observable
  CodeVmState vmState = CodeVmState.idle;

  @observable
  bool isValidCode = false;

  @observable
  int countdown = 0;

  @computed
  bool get canRequestCode => countdown == 0;

  @computed
  bool get isLoading => vmState == CodeVmState.loading;

  Timer? _timer;

  _CodeVm(
    this._context,
    this._bloc, {
    required ErrorHandler errorHandler,
  }) : super(errorHandler) {
    observeBloc<AuthState, AuthBloc>(_bloc, _handleStates);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @action
  void startTimer() {
    _startTimer();
  }

  @action
  void validateCode(String? value) {
    isValidCode = value?.length == 6;
  }

  @action
  Future<void> requestCode(String phone) async {
    _bloc.add(AuthEvent.sendPhone(phone));
    _startTimer();
  }

  @action
  void sendCode(String code) {
    _bloc.add(AuthEvent.sendOtp(code));
  }

  void _startTimer() {
    countdown = _resendingTimeout;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      countdown--;
      if (countdown == 0) timer.cancel();
    });
  }

  void _handleStates(AuthState state) {
    if (state is AuthStateIdle) {
      vmState = CodeVmState.loading;
    } else if (state is AuthStateNeedOtp) {
      vmState = CodeVmState.needOtp;
    } else if (state is AuthStateSuccessViaOtp) {
      vmState = CodeVmState.successOtp;
      Routemaster.of(_context).replace(RegisterRoute.routeName);
    } else if (state is AuthStateError) {
      vmState = CodeVmState.error;
      _bloc.onError(AuthorizationException(), state.stackTrace);
      vmState = CodeVmState.idle;
    } else {
      vmState = CodeVmState.idle;
    }
  }
}
