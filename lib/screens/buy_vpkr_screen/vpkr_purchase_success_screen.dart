import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/purple_tile.dart';
import 'package:cryptocash/screens/common/reward_card.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class VpkrPurchaseSuccessScreen extends StatelessWidget {
  const VpkrPurchaseSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      heightRatio: 0.4,
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Purchase Successful',
                          style: tUpperTitle,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Your vPKR Token have been added to your cryptocash wallet.',
                          style: tUpperBodyText,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ExpandedSheet(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'VPKR',
                                            style: tPurpleTileText1,
                                          ),
                                          Text('${66774732.0}',
                                              style: tPurpleTileText1)
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
                                    SizedBox(
                                      height: 8,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          RewardCard(
                            cardSubtitle: 'Transaction Rewards',
                            cardTitle: 'You earned',
                            points: 1000,
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          PrimaryActionButton(
                            onPress: () =>
                                Navigator.pushNamed(context, '/home'),
                            text: 'Back to Dashboard',
                          ),
                          SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
