import 'package:cryptocash/screens/common/purple_tile.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptocash/constants.dart' show C2Notification;

class NotificationCard extends StatelessWidget {
  final C2Notification notification;
  const NotificationCard({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PurpleTileContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${notification.coinName} ${notification.inFlow ? 'Received' : 'Sent'}',
                style: Styles.tPurpleTileBoldText,
              ),
              Text(
                notification.dateTimeString,
                style: Styles.tPurpleTileDateTimeText,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'You ${notification.inFlow ? 'received' : 'sent'} ${notification.balance} ${notification.coinName} ${notification.inFlow ? 'to' : 'from'} your wallet',
            style: Styles.tPurpleTileSharpText,
          ),
        ],
      ),
    );
  }
}
