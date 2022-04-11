import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.freezed.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.onboardingInited() = OnboardingInited;
  const factory OnboardingEvent.onboardingSkipped() = OnboardingSkipped;
}
