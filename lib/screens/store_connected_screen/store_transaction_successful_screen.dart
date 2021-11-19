import 'package:cryptocash/constants.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoreTransactionSuccessfulScreen extends StatelessWidget {
  const StoreTransactionSuccessfulScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpandedBase(
      isLowerChildScrollable: true,
      upperChild:
          TopBackButtonWithPadding(onPress: () => {}, text: 'Store Connected'),
      lowerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                'CPC c3 Service',
                style: Styles.tPurpleSheetLargeText,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '8638673647AEEF8',
                    style: Styles.tPurpleSheetSharpText,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text('TRC20', style: Styles.tPurpleSheetSmallBoldText)
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 1,
                color: Colors.white.withOpacity(0.2),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
          Text(
            'Select Coin',
            style: Styles.tPurpleSheetBoldText,
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Enter Amount',
            style: Styles.tPurpleSheetBoldText,
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 24,
          ),
          PrimaryActionButton(
            onPress: () => {},
            text: 'Pay Now',
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<CryptoCurrency> buildCoinDropdownMenuItem(
      CryptoCurrency cryptoCurrency) {
    return DropdownMenuItem<CryptoCurrency>(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              cryptoCurrency.logoAsset,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            cryptoCurrency.shortName,
            style: Styles.tPurpleTileBoldText,
          ),
        ],
      ),
      value: cryptoCurrency,
    );
  }
}
