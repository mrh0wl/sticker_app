import 'package:hive/hive.dart';

import '../../data/datasources/onboarding_completed_local_datasource.dart';

class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  static const String onboardingCompletedKey = 'onboarding_completed';

  @override
  Future<void> setOnboardingCompleted(bool completed) async {
    final box = await Hive.openBox('onboarding');
    await box.put(onboardingCompletedKey, completed);
  }

  @override
  Future<bool> isOnboardingCompleted() async {
    final box = await Hive.openBox('onboarding');
    return box.get(onboardingCompletedKey, defaultValue: false);
  }
}
