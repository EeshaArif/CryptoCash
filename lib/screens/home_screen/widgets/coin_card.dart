import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoinCard extends StatelessWidget {
  final CryptoCurrency cryptoCurrency;

  const CoinCard({
    Key? key,
    required this.cryptoCurrency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            Palette.coinCardStartGradient,
            Palette.coinCardEndGradient,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(cryptoCurrency.logoAsset).pad(
                    padding: EdgeInsets.only(
                      right: 10,
                    ),
                  ),
                  Text(
                    cryptoCurrency.shortName,
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
              Text(
                cryptoCurrency.name,
                style: Theme.of(context).textTheme.subtitle1,
              ).pad(
                padding: EdgeInsets.only(
                  top: 7.5,
                ),
              )
            ],
          ).pad(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                cryptoCurrency.balance!.toString(),
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.white,
                    ),
              ).pad(
                padding: EdgeInsets.only(
                  right: 5,
                ),
              ),
              Text(
                cryptoCurrency.shortName,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ).pad(
            padding: EdgeInsets.only(bottom: 5),
          )
        ],
      ).pad(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
      ),
    );
  }
}
