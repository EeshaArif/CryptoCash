import 'package:cryptocash/screens/common/purple_tile.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CpConvertSuccessScreen extends StatelessWidget {
  const CpConvertSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandedBase(
      upperChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Conversion Successful',
              style: tUpperTitle,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Your reward points are successfully converted in vPKR.',
              style: tUpperBodyText,
            ),
          ],
        ),
      ),
      lowerChild: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Lottie.asset(
                  'assets/success_indicator.json',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PurpleTileContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'VPKR',
                            style: tPurpleTileText1,
                          ),
                          Text('${66774732.0}', style: tPurpleTileText1)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Added to Wallet',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ],
                ),
              ],
            ),
          ),
          PrimaryActionButton(
            onPress: () => Navigator.pushNamed(context, '/rewards'),
            text: 'Back to Rewards',
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
