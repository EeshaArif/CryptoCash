import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/purple_tile.dart';
import 'package:cryptocash/screens/common/reward_card.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/common/transaction_info_group.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class StoreTransactionSuccessfulScreen extends StatelessWidget {
  const StoreTransactionSuccessfulScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpandedBase(
      isLowerChildScrollable: true,
      upperChild: TopBackButtonWithPadding(
        onPress: () => {
          Navigator.pushNamed(
            context,
            '/home',
          ),
        },
        text: 'Store Connected',
      ),
      lowerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Lottie.asset(
            'assets/success_indicator.json',
          ),
          Text(
            'Transaction Successful',
            style: Styles.tPurpleSheetLargeText,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Your transaction is successful, The Recipient will receive the payments now.',
            style: Styles.tPurpleSheetFadedText,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Payment Sent to',
            style: Styles.tPurpleTileBoldText.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          MerchantPurpleContainer(),
          SizedBox(
            height: 24,
          ),
          TransactionInfoGroup(
            transactionType: 'Sent',
            networkFee: '0.009 BTC',
            amountTitle: '0.2 BTC = 135.18 PKR',
            date: '12-11-21',
            time: '11:15 PM',
          ),
          SizedBox(
            height: 16,
          ),
          RewardCard(
            cardSubtitle: 'Transaction Rewards',
            cardTitle: 'You earned',
            points: 1000,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
