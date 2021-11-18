import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/bottom_draggable_base_sheet.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/styles.dart';
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
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      onPressed: () => {
        showModalBottomSheet(
          clipBehavior: Clip.none,
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: true,
          builder: (_) {
            return buildCoinBottomDraggableBaseSheet(context);
          },
        ),
      },
      child: Container(
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
      ),
    );
  }

  BottomDraggableBaseSheet buildCoinBottomDraggableBaseSheet(
      BuildContext context) {
    return BottomDraggableBaseSheet(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                SvgPicture.asset(cryptoCurrency.logoAsset),
                SizedBox(
                  width: 14,
                ),
                Text(cryptoCurrency.shortName, style: Styles.tUpperTitle)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available ${cryptoCurrency.shortName}',
                      style: Styles.tDraggableSheetFadedText,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      cryptoCurrency.balance.toString(),
                      style: Styles.tUpperTitle,
                    ),
                  ],
                ),
                SizedBox(
                  width: 32,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Value in PKR',
                      style: Styles.tDraggableSheetFadedText,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '${cryptoCurrency.balance! * cryptoCurrency.conversionRate}',
                      style: Styles.tUpperTitle,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Today\'s Conversion Rate',
              style: Styles.tDraggableSheetFadedText,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              cryptoCurrency.conversionRate.toString(),
              style: Styles.tUpperTitle,
            ),
            SizedBox(
              height: 64,
            ),
            PrimaryActionButton(
              onPress: () =>
                  {Navigator.pushNamed(context, '/get-vpkr-convert-coins')},
              text: 'Convert to vPKR',
            ),
          ],
        ),
      ),
    );
  }
}
