import 'package:cryptocash/screens/rewards_screen/widgets/cptransaction_card.dart';
import 'package:flutter/material.dart';

class CpTransactions extends StatelessWidget {
  const CpTransactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cpTransactionCard(
          points: 1000,
          transactionDate: '3 May, 2021',
          transactionTime: '4:54 PM',
          type: cpType.reward,
          transactionText: 'Deposit Rewards',
        ),
        cpTransactionCard(
          points: 560,
          transactionDate: '3 May, 2021',
          transactionTime: '4:54 PM',
          type: cpType.donation,
          transactionText: 'Feed a child for a day',
        ),
      ],
    );
  }
}
