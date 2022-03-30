import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/onboarding_storage.dart';
import 'package:where_to_go_today/src/features/onboard/services/bloc/events/onboarding_event.dart';
import 'package:where_to_go_today/src/features/onboard/services/bloc/states/onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState>
    with CanThrowExceptionBlocMixin {
  final onboardingStorage = OnboardingStorage();

  // final OnboardingRepository onboardingRepository;

  // OnboardingBloc(OnboardingRepository this.onboardingRepository) : super(const OnboardingState.init()) {
  OnboardingBloc() : super(const OnboardingState.init()) {
    on<OnboardingEventInited>(_onOnboardingEventInited);
    on<OnboardingEventSkipped>(_onOnboardingEventSkipped);
  }

  void _onOnboardingEventInited(
    OnboardingEventInited _,
    Emitter<OnboardingState> emit,
  ) {
    // if (onboardingRepository.getCompleted()) {
    add(const OnboardingEventSkipped());
    // } else {
    emit(const OnboardingState.init());
    // }
    //
  }

  void _onOnboardingEventSkipped(
    OnboardingEventSkipped _,
    Emitter<OnboardingState> emit,
  ) {
    // if (!onboardingRepository.getCompleted()) {
    //   onboardingRepository.setCompleted(true)
    // }
    //
    emit(const OnboardingState.skip());
  }
}
