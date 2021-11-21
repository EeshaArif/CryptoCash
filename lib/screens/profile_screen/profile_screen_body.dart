import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/profile_screen/widgets/user_info_group.dart';
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
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  UserInfoGroup(
                    info: 'Talan Dokitas',
                    title: 'Name',
                  ),
                  UserInfoGroup(
                    info: '+92 3637827627',
                    title: 'Phone Number',
                  ),
                  UserInfoGroup(
                    info: 'talandokitas@gmail.com',
                    title: 'Email',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CardActionButton(
                    onPress: () => {},
                    text: 'Logout',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
