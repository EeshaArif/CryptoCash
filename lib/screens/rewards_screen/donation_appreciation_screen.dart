import 'package:cryptocash/palette.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class DonationAppreciationScreen extends StatelessWidget {
  const DonationAppreciationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/rewards'),
      child: Scaffold(
        backgroundColor: Palette.darkBlue,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 32,
                  top: 32,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/logo.svg',
                      width: 48.0,
                    ),
                    Text(
                      'CryptoCash',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontSize: 15.0,
                          ),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Lottie.asset(
                    'assets/confetti.json',
                  ),
                  Column(
                    children: [
                      Text('THANKYOU!', style: Styles.tNumberTitle),
                      Text(
                        'for making an impact',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontSize: 20,
                            ),
                      ),
                      SizedBox(height: 32),
                      Text('Points donated',
                          style: Theme.of(context).textTheme.headline6),
                      Text(
                        '${12000} cp',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontSize: 30,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
