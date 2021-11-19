import 'package:flutter/material.dart';

class Palette {
  static const darkBlue = Color(0xFF0C0728);
  static const darkPurple = Color(0xFF241A58);
  static final lightPurple = Color(0xFF9188BE).withOpacity(0.3);
  static final fadedPurple = Color(0xFF7B61FF).withOpacity(0.5);
  static const purple = Color(0xFF3F3E9E);
  static const darkOrange = Color(0xFFEC5555);
  static const orange = Color(0xFFFF6161);
  static const brightOrange = Color(0xFFFF8129);
  static final faded = Colors.white.withOpacity(0.6);
  static const fadedIcon = Color(0xFF565666);

  static const donationPointsCard = Color(0xFFFF8C4B);
  static final foodDonationCard = Color(0xFF6197FF).withOpacity(0.32);
  static final plantDonationCard = Color(0xFF61FFA0).withOpacity(0.32);

  static final coinCardStartGradient = Color(0xFFE0DAFF).withOpacity(0.2);
  static final coinCardEndGradient = Color(0xFF6E6D9A).withOpacity(0.2);

  static const purpleTileContainer = Color(0xFF373154);
  static const cashIn = Color(0xFF2DF1C2);
  static const cashOut = Color(0xFFEC5555);

  static const qrBorder = Color(0xFF2DF1C2);

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
