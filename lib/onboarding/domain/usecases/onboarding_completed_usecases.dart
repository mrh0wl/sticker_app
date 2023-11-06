import '../../data/datasources/onboarding_completed_local_datasource.dart';

class CheckOnboardingStatusUseCase {
  final OnboardingLocalDataSource localDataSource;

  CheckOnboardingStatusUseCase(this.localDataSource);

  Future<bool> call() async {
    return localDataSource.isOnboardingCompleted();
  }
}

class CompleteOnboardingUseCase {
  final OnboardingLocalDataSource localDataSource;

  CompleteOnboardingUseCase(this.localDataSource);

  Future<void> call() async {
    return localDataSource.setOnboardingCompleted(true);
  }
}
