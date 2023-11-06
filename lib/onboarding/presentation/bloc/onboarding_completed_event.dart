part of 'onboarding_completed_bloc.dart';

@freezed
class OnboardingCompletedEvent with _$OnboardingCompletedEvent {
  const factory OnboardingCompletedEvent.isCompleted() = _IsCompleted;
  const factory OnboardingCompletedEvent.setCompleted() = _SetCompleted;
}
