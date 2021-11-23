import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/coin_dropdown.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/reward_card.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class DepositScreen extends StatefulWidget {
  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  CryptoCurrency selectedCurrency = Constants.cryptocurrencies.first;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: ExpandedBase(
        upperChild: Column(
          children: [
            TopBackButtonWithPadding(
              text: 'Deposit',
            ),
          ],
        ),
        lowerChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Coin',
              style: Theme.of(context).textTheme.headline6!,
            ),
            CoinDropDown(
              value: selectedCurrency,
              onChanged: (value) => {
                setState(
                  () => {selectedCurrency = value!},
                ),
              },
              coins: Constants.cryptocurrencies,
            ).pad(
                padding: EdgeInsets.only(
              top: 20,
            )),
            Text(
              'Send the selected coin to the following address, to deposit in C2 wallet.',
              style: Styles.tPurpleSheetFadedText,
            ).pad(
                padding: EdgeInsets.only(
              top: 20,
            )),
            TextFormField(
              readOnly: true,
              initialValue: 'DF5256515485GDGVCV',
              decoration: InputDecoration(
                floatingLabelStyle: TextStyle(color: Colors.white70),
                labelStyle: TextStyle(color: Colors.white12.withOpacity(0.2)),
                suffixIcon: IconButton(
                  color: Colors.white12.withOpacity(0.3),
                  icon: Icon(
                    Icons.copy,
                  ),
                  onPressed: () {},
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white12.withOpacity(0.2), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.8), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ).pad(
                padding: EdgeInsets.only(
              top: 20,
            )),
            RewardCard(
              cardSubtitle: 'Earn Deposit Rewards',
              cardTitle: 'You will earn',
              points: 1000,
            ).pad(
                padding: EdgeInsets.only(
              top: 30,
            )),
          ],
        ),
      ),
    );
  }
}
