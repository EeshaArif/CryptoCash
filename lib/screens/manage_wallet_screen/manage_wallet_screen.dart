import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/home_screen/widgets/balance_card.dart';
import 'package:cryptocash/screens/manage_wallet_screen/widgets/coin_tile.dart';
import 'package:cryptocash/screens/manage_wallet_screen/widgets/wallet_action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageWalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      heightRatio: 0.4,
      body: ExpandedBase(
        lowerSheetPadding: EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        upperChild: Column(
          children: [
            TopBackButtonWithPadding(
              text: 'Your Wallet',
            ),
            BalanceCard(
              showActionButton: false,
            )
          ],
        ).pad(
            padding: EdgeInsets.only(
          bottom: 25,
        )),
        lowerChild: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WalletActionButton(text: 'Deposit', onPressed: () {
                  Navigator.pushNamed(context, '/deposit-coin');
                }),
                WalletActionButton(text: 'Withdraw', onPressed: () {
                  Navigator.pushNamed(context, '/withdraw-coin');
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your Coins',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ).pad(
                padding: EdgeInsets.symmetric(
              vertical: 15,
            )),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return CoinTile(
                    cryptoCurrency: Constants.cryptocurrencies[index],
                    amount: 0.00056,
                  ).pad(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                  );
                },
                itemCount: Constants.cryptocurrencies.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
