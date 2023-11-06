import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:natker_app/core/resources/app_router.gr.dart';
import 'package:natker_app/core/services/service_locator.dart';
import 'package:natker_app/onboarding/domain/usecases/onboarding_completed_usecases.dart';
import 'package:natker_app/onboarding/presentation/constants/onboarding_list.dart';
import 'package:natker_app/onboarding/presentation/widgets/carousel_dots.dart';
import 'package:natker_app/onboarding/presentation/widgets/info_card.dart';

class CaroulselCard extends StatefulWidget {
  final int totalCards;
  final Function(int, {bool notify}) onCardChange;
  final Widget child;
  const CaroulselCard({
    super.key,
    required this.totalCards,
    required this.onCardChange,
    required this.child,
  });

  @override
  State<CaroulselCard> createState() => _CaroulselCardState();
}

class _CaroulselCardState extends State<CaroulselCard> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CarouselSlider(
      carouselController: _controller,
      items: List.generate(widget.totalCards, (index) {
        return Stack(
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: (_current == index) ? 1.0 : 0.5,
              child: InfoCard(
                isActive: _current == index,
                title: onboardingList[index].title,
                description: onboardingList[index].desc,
              ),
            ),
            Positioned(
              bottom: 95,
              left: 0,
              right: 0,
              child: CarouselDots(
                totalCards: widget.totalCards,
                current: _current,
                isActive: _current == index,
              ),
            ),
            Positioned(
              bottom: 20,
              left: size.width * 0.25,
              width: size.width * (1 / 3),
              height: 50,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: (_current == index) ? 1.0 : 0,
                child: AnimatedScale(
                  scale: (_current == index) ? 1.0 : 0.7,
                  duration: const Duration(milliseconds: 500),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_current == widget.totalCards - 1) {
                        locator<CompleteOnboardingUseCase>().call();
                        context.router.push(const LoginRoute());
                      } else {
                        _controller.animateToPage(
                          _current + 1,
                          curve: Curves.easeIn,
                          duration: const Duration(milliseconds: 500),
                        );
                        widget.onCardChange(_current + 1, notify: true);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                    ),
                    child: Text(
                      (_current == widget.totalCards - 1)
                          ? 'Get Started'
                          : 'Next',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Colors.white,
                            fontSize:
                                (_current == widget.totalCards - 1) ? 20 : 17,
                          ),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      }),
      options: CarouselOptions(
        autoPlay: false,
        height: size.height * (1 / 3),
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        scrollPhysics: const BouncingScrollPhysics(),
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
          widget.onCardChange(_current, notify: true);
        },
      ),
    );
  }
}
