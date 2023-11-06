import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:natker_app/core/resources/app_router.gr.dart';
import 'package:natker_app/onboarding/presentation/widgets/carousel_card.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        WelcomeRoute(),
        DiscoverRoute(),
        ShareRoute(),
        CloudRoute(),
        GetStartedRoute(),
      ],
      curve: Curves.bounceIn,
      physics: const NeverScrollableScrollPhysics(),
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        // _currentIndex = tabsRouter.activeIndex;
        return Stack(
          children: [
            Scaffold(
              backgroundColor: const Color(0xFFF8E3D5),
              body: child,
            ),
            Positioned(
              bottom: 40,
              width: MediaQuery.of(context).size.width,
              child: CaroulselCard(
                totalCards: tabsRouter.pageCount,
                onCardChange: tabsRouter.setActiveIndex,
                child: Text(tabsRouter.current.name),
              ),
            ),
          ],
        );
      },
    );
  }
}
