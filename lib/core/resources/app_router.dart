import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:natker_app/login/presentation/guards/auth_guard.dart';
import 'package:natker_app/onboarding/presentation/guard/onboarding_guard.dart';

import 'app_router.gr.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {}
}

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          path: '/intro',
          page: OnboardingRoute.page,
          guards: [OnboardingGuard()],
          keepHistory: false,
          initial: true,
          children: [
            AutoRoute(
              path: 'welcome',
              page: WelcomeRoute.page,
              initial: true,
            ),
            AutoRoute(
              path: 'discover',
              page: DiscoverRoute.page,
            ),
            AutoRoute(
              path: 'share',
              page: ShareRoute.page,
            ),
            AutoRoute(
              path: 'cloud',
              page: CloudRoute.page,
            ),
            AutoRoute(
              path: 'get-started',
              page: GetStartedRoute.page,
            ),
          ],
        ),
        //authentification routes
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
          guards: [AuthGuard()],
          children: [
            RedirectRoute(path: '*', redirectTo: '/login'),
          ],
        ),
      ];
}
