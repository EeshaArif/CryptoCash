import 'package:cryptocash/screens/auth_screen/widgets/auth_base.dart';
import 'package:cryptocash/screens/auth_screen/widgets/identity_verification_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetTransPassVerifyScreen extends StatefulWidget {
  const ResetTransPassVerifyScreen({Key? key}) : super(key: key);

  @override
  _ResetTransPassVerifyScreenState createState() =>
      _ResetTransPassVerifyScreenState();
}

class _ResetTransPassVerifyScreenState
    extends State<ResetTransPassVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthBase(
      headerText: 'Reset Your Transaction Password',
      child: IdentityVerificationSheet(
        onComplete: (pin) {},
        onResend: () {},
        onVerify: () => Navigator.pushNamed(context, '/reset-trans-pass'),
      ),
    );
  }
}
