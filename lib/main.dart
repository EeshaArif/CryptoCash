// @dart=2.9

import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/rewards_screen/convert_success_screen.dart';
import 'package:cryptocash/screens/rewards_screen/cp_convert_screen.dart';
import 'package:cryptocash/screens/rewards_screen/rewards_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CryptoCash',
      theme: ThemeData(
        primarySwatch: Palette.createSwatch(Palette.darkOrange),
        textTheme: Typography.whiteCupertino.copyWith(
            headline2: GoogleFonts.exo2(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 36,
            ),
            headline3: GoogleFonts.exo(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.white,
            ),
            headline5: GoogleFonts.exo2(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 30,
            ),
            headline6: GoogleFonts.exo2(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            bodyText1: GoogleFonts.exo2(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            subtitle1: GoogleFonts.exo2(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Palette.faded,
            ),
            subtitle2: GoogleFonts.exo2(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Palette.faded,
            ),
            button: GoogleFonts.exo(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      home: ConvertSuccessScreen(),
    );
  }
}
