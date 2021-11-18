import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class TransactionInfoGroup extends StatelessWidget {
  final String transactionType;
  final String amountTitle;
  final String networkFee;
  final String date;
  final String time;
  const TransactionInfoGroup({
    Key? key,
    required this.transactionType,
    required this.amountTitle,
    required this.networkFee,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Amount $transactionType',
          style: Styles.tPurpleTileBoldText.copyWith(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          amountTitle,
          style: Styles.tPurpleSheetLargeBoldText,
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Network fee: $networkFee',
              style: Styles.tPurpleSheetDateTimeText.copyWith(
                fontSize: 12,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            Row(
              children: [
                Text(
                  date,
                  style: Styles.tPurpleSheetDateTimeText,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  time,
                  style: Styles.tPurpleSheetDateTimeText,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
