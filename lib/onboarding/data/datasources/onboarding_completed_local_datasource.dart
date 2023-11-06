abstract class OnboardingLocalDataSource {
  Future<void> setOnboardingCompleted(bool completed);
  Future<bool> isOnboardingCompleted();
}
