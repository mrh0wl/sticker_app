import 'package:auto_route/auto_route.dart';
import 'package:natker_app/core/resources/app_router.gr.dart';
import 'package:natker_app/core/services/service_locator.dart';
import 'package:natker_app/onboarding/domain/usecases/onboarding_completed_usecases.dart';

class OnboardingGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final checkOnboarding =
        await locator<CheckOnboardingStatusUseCase>().call();
    if (checkOnboarding) {
      resolver.redirect(const LoginRoute());
    } else {
      resolver.next(true);
    }
  }
}
