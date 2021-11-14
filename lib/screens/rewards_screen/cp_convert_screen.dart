import 'package:cryptocash/screens/common/themed_buttons.dart'
    show AmountFormField, PrimaryActionButton, TopBackButton;
import 'package:cryptocash/screens/rewards_screen/widgets/expanded_base.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class CpConvertScreen extends StatefulWidget {
  const CpConvertScreen({Key? key}) : super(key: key);

  @override
  _CpConvertScreenState createState() => _CpConvertScreenState();
}

class _CpConvertScreenState extends State<CpConvertScreen> {
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
                  style: tNumberTextTitle,
                ),
                Text(
                  '01 PKR = 000.23 vPKR',
                  style: tUpperConversionRate,
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
                  onPress: () => {},
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
