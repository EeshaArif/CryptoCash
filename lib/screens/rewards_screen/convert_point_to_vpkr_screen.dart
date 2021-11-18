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
  @override
  Widget build(BuildContext context) {
    return ExpandedBase(
      upperChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 32, top: 18, bottom: 16),
            child: TopBackButton(
                onPress: () => {}, text: 'Convert points to vPKR'),
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
                  '01 PKR = 000.23 vPKR',
                  style: Styles.tUpperConversionRate,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: AmountFormField(),
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
                    '/cp-convert-success',
                  ),
                  text: 'Convert to vPKR',
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
