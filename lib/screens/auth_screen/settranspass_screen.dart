import 'package:cryptocash/screens/auth_screen/widgets/auth_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton;
import 'package:cryptocash/screens/common/themed_fields.dart'
    show AuthPassFormField;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetTransPassScreen extends StatefulWidget {
  const SetTransPassScreen({Key? key}) : super(key: key);

  @override
  _SetTransPassScreenState createState() => _SetTransPassScreenState();
}

class _SetTransPassScreenState extends State<SetTransPassScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AuthBase(
      headerText: 'Sign Up Complete! Just one more thing...',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              Text('Transaction Password',
                  style: Theme.of(context).textTheme.headline3),
              SizedBox(height: 16),
              Text(
                'We’ve sent a verification OTP on your phone number. Enter OTP to continue.',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.4)),
              ),
              SizedBox(
                height: 32,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    AuthPassFormField(label: 'Enter transaction password'),
                    SizedBox(height: 12),
                    AuthPassFormField(label: 'Confirm transaction password'),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: PrimaryActionButton(
              text: 'Continue',
              onPress: () => {},
            ),
          ),
        ],
      ),
    );
  }
}
