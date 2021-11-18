import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton, TopBackButton;
import 'package:cryptocash/screens/common/themed_fields.dart'
    show AmountFormField;
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetVpkrConvertCoinsScreen extends StatefulWidget {
  const GetVpkrConvertCoinsScreen({Key? key}) : super(key: key);

  @override
  _GetVpkrConvertCoinsScreenState createState() =>
      _GetVpkrConvertCoinsScreenState();
}

class _GetVpkrConvertCoinsScreenState extends State<GetVpkrConvertCoinsScreen> {
  String selectedCurrency = 'BTC';
  @override
  Widget build(BuildContext context) {
    return ExpandedBase(
      upperChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 32, top: 18, bottom: 16),
            child:
                TopBackButton(onPress: () => {}, text: 'Convert Coins to vPKR'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Stack(
              children: [
                // TODO: Add cupertino picker for ios
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    dropdownColor: Palette.purpleTileContainer,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    icon: SvgPicture.asset(
                      'assets/dropdown.svg',
                    ),
                    focusColor: Colors.white,
                    style: Styles.tNumberTextTitle,
                    value: selectedCurrency,
                    onChanged: (value) => {
                      setState(
                        () => {selectedCurrency = value.toString()},
                      ),
                    },
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          'BTC',
                        ),
                        value: 'BTC',
                      ),
                      DropdownMenuItem(
                        child: Text('ETH'),
                        value: 'ETH',
                      ),
                      DropdownMenuItem(
                        child: Text('USD'),
                        value: 'USD',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      '01 $selectedCurrency = 000.23 vPKR',
                      style: Styles.tUpperConversionRate,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: AmountFormField(),
          ),
          Text(
            'Available $selectedCurrency: ${67}',
            style: Styles.tUpperAvailable,
          ),
          SizedBox(height: 18),
        ],
      ),
      lowerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          Text(
            'You will get',
            style: Styles.tNumberTextTitle,
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${23000.00}',
                style: Styles.tNumberTitle,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text('vPKR', style: Styles.tNumberTextTitle),
              )
            ],
          ),
          SizedBox(height: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PrimaryActionButton(
                  onPress: () => Navigator.pushNamed(
                    context,
                    '/get-vpkr-purchase-success',
                  ),
                  text: 'Continue to Payment',
                ),
                SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
