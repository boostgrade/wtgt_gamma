import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';
import 'package:where_to_go_today/src/features/onboard/services/bloc/events/onboarding_event.dart';
import 'package:where_to_go_today/src/features/onboard/services/bloc/states/onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState>
    with CanThrowExceptionBlocMixin {
  OnboardingBloc() : super(const OnboardingState.init()) {
    on<OnboardingEvent>((event, emit) {
      emit(const OnboardingState.init());
    });
  }
}
