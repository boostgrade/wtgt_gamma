import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/main/main_route.dart';
import 'package:where_to_go_today/src/features/onboard/services/bloc/events/onboarding_event.dart';
import 'package:where_to_go_today/src/features/onboard/services/bloc/states/onboarding_state.dart';
import 'package:where_to_go_today/src/features/onboard/services/onboarding_bloc.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';

part 'onboarding_vm.g.dart';

class OnboardingVm = _OnboardingVm with _$OnboardingVm;

abstract class _OnboardingVm extends ViewModel with Store {
  final BuildContext _context;

  final OnboardingBloc _bloc;

  PageController pageController = PageController();

  @observable
  bool isLastPage = false;

  String get buttonLabel =>
      (isLastPage
          ? AppLocalizations.of(_context)?.next
          : AppLocalizations.of(_context)?.skip) ??
      '';

  _OnboardingVm(
    this._context,
    this._bloc, {
    required ErrorHandler errorHandler,
  }) : super(errorHandler) {
    observeBloc<OnboardingState, OnboardingBloc>(_bloc, _handleStates);
  }

  void onDotClicked(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: const Duration(microseconds: 500),
      curve: Curves.easeIn,
    );
  }

  void onSkipButtonClick() {
    _bloc.add(const OnboardingEventSkipped());
    Routemaster.of(_context).push(MainRoute.routeName);
  }

  @action
  void changeButtonLabel(int pageIndex) {
    isLastPage = pageIndex == 2;
  }

  void _handleStates(OnboardingState state) {
    if (state is OnboardingStateSkip) {
      Routemaster.of(_context).push(MainRoute.routeName);
    }
  }
}
