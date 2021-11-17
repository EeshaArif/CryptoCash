import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton, SecondaryActionButton, TopBackButton;
import 'package:cryptocash/screens/common/themed_fields.dart'
    show AmountFormField;
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/styles.dart'
    show tNumberTextTitle, tNumberTitle, tUpperAvailable, tUpperConversionRate;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetVpkrPaymentOptionScreen extends StatefulWidget {
  const GetVpkrPaymentOptionScreen({Key? key}) : super(key: key);

  @override
  _GetVpkrPaymentOptionScreenState createState() =>
      _GetVpkrPaymentOptionScreenState();
}

class _GetVpkrPaymentOptionScreenState
    extends State<GetVpkrPaymentOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return ExpandedBase(
      upperChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 32, top: 18, bottom: 16),
            child: TopBackButton(onPress: () => {}, text: 'Payment Option'),
          ),
          SizedBox(height: 18),
        ],
      ),
      lowerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          Text(
            'Choose how you want to get vPKR',
            style: tNumberTextTitle,
          ),
          SizedBox(height: 24),
          SecondaryActionButton(
              onPress: () =>
                  {Navigator.pushNamed(context, '/get-vpkr-merchant-load')},
              text: 'Merchant Load',
              iconAsset: 'assets/qr.svg'),
          SizedBox(height: 24),
          SecondaryActionButton(
              onPress: () =>
                  {Navigator.pushNamed(context, '/get-vpkr-convert-coins')},
              text: 'Convert Cryptocurrency',
              iconAsset: 'assets/logo.svg'),
          SizedBox(height: 24),
          SecondaryActionButton(
              onPress: () =>
                  {Navigator.pushNamed(context, '/convert-coin-to-vpkr')},
              text: 'EasyPaisa',
              iconAsset: 'assets/logo.svg'),
          SizedBox(height: 24),
          SecondaryActionButton(
              onPress: () =>
                  {Navigator.pushNamed(context, '/convert-coin-to-vpkr')},
              text: 'JazzCash',
              iconAsset: 'assets/logo.svg'),
          SizedBox(height: 24),
          SecondaryActionButton(
              onPress: () =>
                  {Navigator.pushNamed(context, '/convert-coin-to-vpkr')},
              text: 'Debit/Credit Card',
              iconAsset: 'assets/logo.svg'),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
