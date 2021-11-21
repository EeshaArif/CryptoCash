import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:flutter/material.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopBackButtonWithPadding(
          text: 'Your Profile',
          onPress: () => {
            Navigator.pushNamed(context, '/home'),
          },
        ),
        Expanded(
          child: SingleChildScrollView(
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
