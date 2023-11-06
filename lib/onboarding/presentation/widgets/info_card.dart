import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isActive;
  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<String> titleSplitted = title.split(' ');
    List<String> titleResult = [
      '${titleSplitted.first} ',
      titleSplitted.sublist(1).join(" ")
    ];
    return SizedBox(
      child: Card(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 700),
          opacity: isActive ? 1.0 : 0.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 50),
            child: Column(
              children: [
                AnimatedSlide(
                  offset: Offset(0, isActive ? 0 : 1),
                  duration: const Duration(milliseconds: 500),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: titleResult[0],
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                fontSize: (size.width <= 550) ? 28 : 32,
                              ),
                        ),
                        TextSpan(
                          text: titleResult[1],
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                fontSize: (size.width <= 550) ? 28 : 32,
                              ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: isActive ? 1.0 : 0.0,
                  child: AnimatedSlide(
                    offset: Offset(0, isActive ? 0 : 0.7),
                    duration: const Duration(milliseconds: 700),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        description,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: (size.width <= 550) ? 14 : 16,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
