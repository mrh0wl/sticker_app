import 'package:auto_route/auto_route.dart';
import 'package:natker_app/core/features/auth/domain/repositories/auth_repository.dart';
import 'package:natker_app/core/resources/app_router.gr.dart';
import 'package:natker_app/core/services/service_locator.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final isAuthenticated = await locator<AuthRepository>().isSignedIn;
    if (isAuthenticated) {
      resolver.redirect(const HomeRoute());
    } else {
      resolver.next(true);
    }
  }
}
