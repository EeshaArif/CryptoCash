import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class NotificationsScreenBody extends StatefulWidget {
  const NotificationsScreenBody({Key? key}) : super(key: key);

  @override
  _NotificationsScreenBodyState createState() =>
      _NotificationsScreenBodyState();
}

class _NotificationsScreenBodyState extends State<NotificationsScreenBody> {
  bool empty = true;
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
          child: empty
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
                      children: [],
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
