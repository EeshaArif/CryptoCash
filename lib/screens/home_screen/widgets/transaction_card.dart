import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.purpleTileContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 28,
                height: 28,
                child: Image.asset(
                  transaction.fromAsset,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.from,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    transaction.dateTimeString,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ).pad(
                padding: EdgeInsets.only(
                  left: 15,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                transaction.coinName,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Colors.white),
              ),
              Text(
                '${transaction.cashIn ? '+' : '-'}${transaction.balance.toString()}',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color:
                          transaction.cashIn ? Palette.cashIn : Palette.cashOut,
                    ),
              )
            ],
          )
        ],
      ).pad(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
      ),
    ).pad(
      padding: EdgeInsets.only(
        right: 10,
      ),
    );
  }
}
