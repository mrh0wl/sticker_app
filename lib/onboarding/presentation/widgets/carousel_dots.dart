import 'package:flutter/material.dart';
import 'package:natker_app/core/resources/app_colors.dart';

class CarouselDots extends StatelessWidget {
  final int totalCards;
  final int current;
  final bool isActive;
  const CarouselDots({
    super.key,
    required this.totalCards,
    required this.current,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: isActive ? 500 : 200),
      opacity: isActive ? 1.0 : 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          totalCards,
          (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              margin: const EdgeInsets.symmetric(horizontal: 2),
              width: index == current ? 16 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: index == current
                    ? AppColors.circleDotColor
                    : AppColors.inactiveColor,
                borderRadius: BorderRadius.circular(50),
              ),
            );
          },
        ),
      ),
    );
  }
}
