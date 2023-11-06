part of 'onboarding_completed_bloc.dart';

@freezed
class OnboardingCompletedState with _$OnboardingCompletedState {
  const factory OnboardingCompletedState({
    @Default(OnboardingStatus.initial) OnboardingStatus status,
  }) = _OnboardingCompletedState;
}
