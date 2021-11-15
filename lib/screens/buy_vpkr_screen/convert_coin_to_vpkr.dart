import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton, TopBackButton;
import 'package:cryptocash/screens/common/themed_fields.dart'
    show AmountFormField;
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/styles.dart'
    show tNumberTextTitle, tNumberTitle, tUpperAvailable, tUpperConversionRate;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConvertCoinToVpkrScreen extends StatefulWidget {
  const ConvertCoinToVpkrScreen({Key? key}) : super(key: key);

  @override
  _ConvertCoinToVpkrScreenState createState() =>
      _ConvertCoinToVpkrScreenState();
}

class _ConvertCoinToVpkrScreenState extends State<ConvertCoinToVpkrScreen> {
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
            child: TopBackButton(onPress: () => {}, text: 'Buy vPKR'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Stack(
              children: [
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
                    style: tNumberTextTitle,
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
                      style: tUpperConversionRate,
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
            style: tUpperAvailable,
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
            style: tNumberTextTitle,
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${23000.00}',
                style: tNumberTitle,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text('vPKR', style: tNumberTextTitle),
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
                    '/cp-convert-success',
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
