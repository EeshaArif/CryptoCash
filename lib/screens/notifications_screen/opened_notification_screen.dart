import 'package:cryptocash/constants.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/purple_tile.dart';
import 'package:cryptocash/screens/common/reward_card.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/common/transaction_info_group.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class OpenedNotificationScreen extends StatelessWidget {
  final C2Notification notification;
  const OpenedNotificationScreen({Key? key, required this.notification})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpandedBase(
      isLowerChildScrollable: true,
      upperChild: TopBackButtonWithPadding(
        onPress: () => {
          Navigator.pushNamed(context, '/home', arguments: 3),
        },
        text: 'Back to Notifications',
      ),
      lowerChild: notification.inFlow
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Purchase Successful',
                  style: Styles.tPurpleSheetLargeText,
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Your vPKR Token were successfully added to your cryptocash wallet',
                  style: Styles.tPurpleSheetFadedText,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Sent By',
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
                  transactionType: 'Received',
                  networkFee: '0.0 vPKR',
                  amountTitle: '500 vPKR',
                  date: '12-11-21',
                  time: '11:15 PM',
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Transaction Successful',
                  style: Styles.tPurpleSheetLargeText,
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Your transaction was successful, The Recipient has received the payments.',
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
                  amountTitle: '130 vPKR = 135.18 PKR',
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
