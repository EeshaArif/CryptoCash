import 'package:cryptocash/screens/auth_screen/widgets/auth_base.dart';
import 'package:cryptocash/screens/auth_screen/widgets/identity_verification_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPassVerifyScreen extends StatefulWidget {
  const ResetPassVerifyScreen({Key? key}) : super(key: key);

  @override
  _ResetPassVerifyScreenState createState() => _ResetPassVerifyScreenState();
}

class _ResetPassVerifyScreenState extends State<ResetPassVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthBase(
      headerText: 'Reset your Password.',
      child: IdentityVerificationSheet(
        onComplete: (pin) {},
        onResend: () {},
        onVerify: () => Navigator.pushNamed(context, '/reset-pass'),
      ),
    );
  }
}
