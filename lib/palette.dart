import 'package:flutter/material.dart';

class Palette {
  static const darkBlue = Color(0xFF0C0728);
  static const darkPurple = Color(0xFF241A58);
  static const purple = Color(0xFF3F3E9E);
  static const darkOrange = Color(0xFFEC5555);
  static const orange = Color(0xFFFF6161);
  static const brightOrange = Color(0xFFFF8129);
  static final faded = Colors.white.withOpacity(0.6);
  static const fadedIcon = Color(0xFF565666);

  static MaterialColor createSwatch(Color color) {
    final swatchMap = {
      50: color.withOpacity(0.1),
      100: color.withOpacity(0.2),
      200: color.withOpacity(0.3),
      300: color.withOpacity(0.4),
      400: color.withOpacity(0.5),
      500: color.withOpacity(0.6),
      600: color.withOpacity(0.7),
      700: color.withOpacity(0.8),
      800: color.withOpacity(0.9),
      900: color.withOpacity(1),
    };

    return MaterialColor(color.value, swatchMap);
  }
}
