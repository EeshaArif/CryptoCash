import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/coin_bottom_draggable_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoinTile extends StatelessWidget {
  final CryptoCurrency cryptoCurrency;
  final double amount;

  const CoinTile({
    Key? key,
    required this.cryptoCurrency,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          clipBehavior: Clip.none,
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: true,
          builder: (_) {
            return buildCoinBottomDraggableBaseSheet(context);
          },
        );
      },
      child: Container(
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
                  child: SvgPicture.asset(cryptoCurrency.logoAsset),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cryptoCurrency.shortName,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      cryptoCurrency.name,
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
                  amount.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white),
                ),
                Text(
                  cryptoCurrency.name,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
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
      ),
    );
  }

  Widget buildCoinBottomDraggableBaseSheet(BuildContext context) {
    return CoinBottomDraggableSheet(cryptoCurrency: cryptoCurrency);
  }
}
