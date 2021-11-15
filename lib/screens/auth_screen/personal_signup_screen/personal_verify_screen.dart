import 'package:cryptocash/screens/auth_screen/widgets/auth_base.dart';
import 'package:cryptocash/screens/auth_screen/widgets/identity_verification_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalVerifyScreen extends StatefulWidget {
  const PersonalVerifyScreen({Key? key}) : super(key: key);

  @override
  _PersonalVerifyScreenState createState() => _PersonalVerifyScreenState();
}

class _PersonalVerifyScreenState extends State<PersonalVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthBase(
      headerText: 'Welcome to Cryptocash Personal',
      child: IdentityVerificationSheet(
        onComplete: (pin) {},
        onResend: () {},
        onVerify: () {},
      ),
    );
  }
}
