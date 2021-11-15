import 'package:cryptocash/screens/auth_screen/widgets/auth_base.dart';
import 'package:cryptocash/screens/auth_screen/widgets/identity_verification_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassVerifyScreen extends StatefulWidget {
  const ForgotPassVerifyScreen({Key? key}) : super(key: key);

  @override
  _ForgotPassVerifyScreenState createState() => _ForgotPassVerifyScreenState();
}

class _ForgotPassVerifyScreenState extends State<ForgotPassVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthBase(
      headerText: 'Reset your Password.',
      child: IdentityVerificationSheet(
        onComplete: (pin) {},
        onResend: () {},
        onVerify: () {},
      ),
    );
  }
}
