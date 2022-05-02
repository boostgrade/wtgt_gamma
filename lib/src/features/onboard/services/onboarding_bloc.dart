import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';
import 'package:where_to_go_today/src/features/onboard/services/bloc/events/onboarding_event.dart';
import 'package:where_to_go_today/src/features/onboard/services/bloc/states/onboarding_state.dart';
import 'package:where_to_go_today/src/features/onboard/services/repository/onboard_repository.dart';
import 'package:where_to_go_today/src/features/onboard/services/storage/onboard_storage.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState>
    with CanThrowExceptionBlocMixin {
  final onboardingStorage = OnboardStorage();

  final OnboardRepository onboardRepository;

  OnboardingBloc(this.onboardRepository)
      : super(const OnboardingState.loadInProgress()) {
    on<OnboardingInited>(_onOnboardingEventInited);
    on<OnboardingSkipped>(_onOnboardingEventSkipped);
  }

  void _onOnboardingEventInited(
    OnboardingInited _,
    Emitter<OnboardingState> emit,
  ) {
    emit(const OnboardingState.loadInProgress());

    if (onboardRepository.getCompleted()) {
      add(const OnboardingSkipped());
    } else {
      emit(const OnboardingState.initial());
    }
  }

  void _onOnboardingEventSkipped(
    OnboardingSkipped _,
    Emitter<OnboardingState> emit,
  ) {
    emit(const OnboardingState.loadInProgress());

    if (!onboardRepository.getCompleted()) {
      onboardRepository.setCompleted(true);
    }

    emit(const OnboardingState.skipSuccess());
  }
}
