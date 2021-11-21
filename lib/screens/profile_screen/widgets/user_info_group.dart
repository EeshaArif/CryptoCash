import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class UserInfoGroup extends StatelessWidget {
  final String title;
  final String info;
  const UserInfoGroup({Key? key, required this.title, required this.info})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your $title',
          style: Styles.tPurpleSheetBoldText,
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 24,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          child: Text(info, style: Styles.tPurpleSheetProfileText),
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
