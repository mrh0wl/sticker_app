import 'package:flutter/material.dart';

class CarouselButton extends StatelessWidget {
  final bool isLastCard;
  const CarouselButton({
    super.key,
    required this.isLastCard,
  });

  @override
  Widget build(BuildContext context) {
    if (isLastCard) {
      return ElevatedButton(
        onPressed: () {},
        child: const Text('Get Started'),
      );
    }
    return Container();
  }
}
