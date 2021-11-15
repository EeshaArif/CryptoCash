import 'package:cryptocash/screens/auth_screen/widgets/auth_base.dart';
import 'package:cryptocash/screens/auth_screen/widgets/identity_verification_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusinessVerifyScreen extends StatefulWidget {
  const BusinessVerifyScreen({Key? key}) : super(key: key);

  @override
  _BusinessVerifyScreenState createState() => _BusinessVerifyScreenState();
}

class _BusinessVerifyScreenState extends State<BusinessVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthBase(
      headerText: 'Welcome to Cryptocash Business',
      child: IdentityVerificationSheet(
        onComplete: (pin) {},
        onResend: () {},
        onVerify: () {},
      ),
    );
  }
}
