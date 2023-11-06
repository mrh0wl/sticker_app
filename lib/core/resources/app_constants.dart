import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenW;
  static double? screenH;
  static double? blockH;
  static double? blockV;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenW = _mediaQueryData!.size.width;
    screenH = _mediaQueryData!.size.height;
    blockH = screenW! / 100;
    blockV = screenH! / 100;
  }
}

class ColorsConfig {
  List<Color> colors = const [
    Color.fromARGB(255, 176, 223, 178),
    Color(0xff95b6ff),
    Color.fromARGB(255, 241, 210, 107)
  ];
  Color get(int index) => colors[index % colors.length];
}
