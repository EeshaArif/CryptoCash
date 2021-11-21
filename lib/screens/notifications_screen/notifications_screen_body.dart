import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/notifications_screen/widgets/notification_card.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class NotificationsScreenBody extends StatefulWidget {
  const NotificationsScreenBody({Key? key}) : super(key: key);

  @override
  _NotificationsScreenBodyState createState() =>
      _NotificationsScreenBodyState();
}

class _NotificationsScreenBodyState extends State<NotificationsScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopBackButtonWithPadding(
          text: 'Notifications',
          onPress: () => {
            Navigator.pushNamed(context, '/home'),
          },
        ),
        Expanded(
          child: Constants.notifications.isEmpty
              ? ExpandedSheet(
                  lowerChild: Center(
                    child: Text(
                      'No Notifications Yet',
                      style: Styles.tPurpleSheetFadedText,
                    ),
                  ),
                )
              : SingleChildScrollView(
                  clipBehavior: Clip.none,
                  child: ExpandedSheet(
                    lowerChild: Column(
                      children: [
                        ...Constants.notifications.map(
                          (e) => NotificationCard(
                            notification: e,
                          ).pad(
                            padding: EdgeInsets.only(bottom: 8),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
