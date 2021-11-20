import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton, TopBackButton;
import 'package:cryptocash/screens/common/themed_fields.dart'
    show AmountFormField;
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class ConvertPointToVpkrScreen extends StatefulWidget {
  const ConvertPointToVpkrScreen({Key? key}) : super(key: key);

  @override
  _ConvertPointToVpkrScreenState createState() =>
      _ConvertPointToVpkrScreenState();
}

class _ConvertPointToVpkrScreenState extends State<ConvertPointToVpkrScreen> {
  double convertedAmount = 0;
  @override
  Widget build(BuildContext context) {
    return ExpandedBase(
      isLowerChildScrollable: true,
      upperChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 32, top: 18, bottom: 16),
            child: TopBackButton(text: 'Convert points to vPKR'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Points',
                  style: Styles.tNumberTextTitle,
                ),
                Text(
                  '01 CP = 0.23 vPKR',
                  style: Styles.tUpperConversionRate,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: AmountFormField(
              onChanged: (String value) {
                setState(
                  () {
                    value.isNotEmpty
                        ? convertedAmount = double.parse(value) * 0.23
                        : convertedAmount = 0; //selectedCurrency.conversionRate
                  },
                );
              },
            ),
          ),
          Text(
            'Available Points: ${9867}',
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
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '${double.parse(
                      convertedAmount.toStringAsFixed(4),
                    )}',
                    style: Styles.tNumberTitle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('vPKR', style: Styles.tNumberTextTitle),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          PrimaryActionButton(
            onPress: () => Navigator.pushNamed(
              context,
              '/cp-convert-success',
            ),
            text: 'Convert to vPKR',
          ),
        ],
      ),
    );
  }
}
