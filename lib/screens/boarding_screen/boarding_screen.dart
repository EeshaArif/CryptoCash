import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton, PrimaryTextButton;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
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
                      Text('Spend your Crypto tokens like Cash',
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
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Get Started with Cryptocash',
                      style: Theme.of(context).textTheme.headline3),
                  SizedBox(
                    height: 32,
                  ),
                  PrimaryActionButton(
                    text: 'Sign up to CryptoCash',
                    onPress: () => {},
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  PrimaryTextButton(
                    onPress: () => {},
                    text: 'Login to your Account',
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
