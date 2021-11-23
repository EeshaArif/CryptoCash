import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/screens/home_screen/widgets/coin_card.dart';
import 'package:flutter/material.dart';

class Coins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Your Coins', style: Theme.of(context).textTheme.headline6),
            RawMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/manage-wallet');
              },
              child: Text(
                'Manage your wallet',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            )
          ],
        ).pad(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...Constants.cryptocurrencies.map(
                (e) => CoinCard(
                  cryptoCurrency: e,
                ).pad(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
              )
            ],
          ).pad(
            padding: EdgeInsets.only(left: 10),
          ),
        ).pad(
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
        )
      ],
    );
  }
}
