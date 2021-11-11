import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/screens/home_screen/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Latest Transactions',
                style: Theme.of(context).textTheme.headline6),
            Text(
              'View All',
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ).pad(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ...Constants.transactions.map(
                (e) => TransactionCard(
                  transaction: e,
                ).pad(
                  padding: EdgeInsets.symmetric(vertical: 5),
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
