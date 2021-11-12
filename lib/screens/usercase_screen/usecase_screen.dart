import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show SecondaryActionButton;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cryptocash/palette.dart';

class UseCaseScreen extends StatelessWidget {
  const UseCaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      heightRatio: 0.5,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 32),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/logo.svg',
                        width: 72.0,
                      ),
                      Text(
                        'CryptoCash',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('How would you like to use crypto cash?',
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(
                        height: 24.0,
                      ),
                      Text(
                        'Link your wallets with crypto cash to spend with freedom Anywhere, Anytime',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: Colors.white.withOpacity(0.5)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              decoration: BoxDecoration(
                color: Palette.darkBlue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Text('Choose how you want to proceed',
                      style: Theme.of(context).textTheme.headline3),
                  SizedBox(
                    height: 32,
                  ),
                  SecondaryActionButton(
                    iconAsset: 'assets/building.svg',
                    text: 'For Business use',
                    onPress: () => {},
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SecondaryActionButton(
                    iconAsset: 'assets/userfilled.svg',
                    text: 'For Personal use',
                    onPress: () => {},
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Features and services will be different for business and personal account.',
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.4)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
