import 'package:cryptocash/constants.dart';
import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/common/themed_fields.dart';
import 'package:cryptocash/screens/common/trans_pass_bottom_draggable_sheet.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<CryptoCurrency> coins = [
  CryptoCurrency(
      logoAsset: 'assets/logo.svg',
      shortName: 'vPKR',
      name: 'virtual PKR',
      balance: 5000,
      conversionRate: 1),
  ...Constants.cryptocurrencies
];

class StoreConnectedScreen extends StatefulWidget {
  const StoreConnectedScreen({Key? key}) : super(key: key);

  @override
  _StoreConnectedScreenState createState() => _StoreConnectedScreenState();
}

class _StoreConnectedScreenState extends State<StoreConnectedScreen> {
  CryptoCurrency selectedCurrency = coins.first;
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
          DropdownButtonHideUnderline(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 28),
              width: double.infinity,
              height: 64,
              decoration: BoxDecoration(
                color: Palette.purpleTileContainer,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: DropdownButton<CryptoCurrency>(
                dropdownColor: Palette.purpleTileContainer,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                icon: SvgPicture.asset(
                  'assets/dropdown.svg',
                ),
                value: selectedCurrency,
                onChanged: (value) => {
                  setState(
                    () => {selectedCurrency = value!},
                  ),
                },
                items: [
                  ...coins.map((coin) => buildCoinDropdownMenuItem(coin))
                ],
              ),
            ),
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
          CoinAmountFormField(cryptoCurrency: selectedCurrency),
          SizedBox(
            height: 24,
          ),
          PrimaryActionButton(
            onPress: () => {
              showModalBottomSheet(
                clipBehavior: Clip.none,
                backgroundColor: Colors.transparent,
                context: context,
                isScrollControlled: true,
                builder: (_) {
                  return TransPassBottomDraggableSheet(
                    onConfirm: () => {
                      Navigator.pushNamed(
                        context,
                        '/transaction-successful',
                      ),
                    },
                  );
                },
              ),
            },
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
