// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:natker_app/login/presentation/pages/home_page.dart' as _i4;
import 'package:natker_app/login/presentation/pages/login_page.dart' as _i5;
import 'package:natker_app/onboarding/onboarding.dart' as _i6;
import 'package:natker_app/onboarding/presentation/pages/cloud_page.dart'
    as _i1;
import 'package:natker_app/onboarding/presentation/pages/discover_page.dart'
    as _i2;
import 'package:natker_app/onboarding/presentation/pages/get_started_page.dart'
    as _i3;
import 'package:natker_app/onboarding/presentation/pages/share_page.dart'
    as _i7;
import 'package:natker_app/onboarding/presentation/pages/welcome_page.dart'
    as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    CloudRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CloudPage(),
      );
    },
    DiscoverRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DiscoverPage(),
      );
    },
    GetStartedRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.GetStartedPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardingPage(),
      );
    },
    ShareRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SharePage(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.WelcomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CloudPage]
class CloudRoute extends _i9.PageRouteInfo<void> {
  const CloudRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CloudRoute.name,
          initialChildren: children,
        );

  static const String name = 'CloudRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DiscoverPage]
class DiscoverRoute extends _i9.PageRouteInfo<void> {
  const DiscoverRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GetStartedPage]
class GetStartedRoute extends _i9.PageRouteInfo<void> {
  const GetStartedRoute({List<_i9.PageRouteInfo>? children})
      : super(
          GetStartedRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetStartedRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingPage]
class OnboardingRoute extends _i9.PageRouteInfo<void> {
  const OnboardingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SharePage]
class ShareRoute extends _i9.PageRouteInfo<void> {
  const ShareRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ShareRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShareRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.WelcomePage]
class WelcomeRoute extends _i9.PageRouteInfo<void> {
  const WelcomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
