import 'package:cryptocash/constants.dart';
import 'package:cryptocash/screens/common/bottom_draggable_base_sheet.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoinBottomDraggableSheet extends StatelessWidget {
  final CryptoCurrency cryptoCurrency;

  const CoinBottomDraggableSheet({Key? key, required this.cryptoCurrency})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
