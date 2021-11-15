import 'package:cryptocash/screens/auth_screen/widgets/auth_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton;
import 'package:cryptocash/screens/common/themed_fields.dart'
    show AuthPassFormField;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPassScreen extends StatefulWidget {
  const ResetPassScreen({Key? key}) : super(key: key);

  @override
  _ResetPassScreenState createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AuthBase(
      headerText: 'Reset your Password',
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
              Text('Set New Password',
                  style: Theme.of(context).textTheme.headline3),
              SizedBox(
                height: 32,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    AuthPassFormField(label: 'Enter new Password'),
                    SizedBox(height: 12),
                    AuthPassFormField(label: 'Confirm Password'),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: PrimaryActionButton(
              text: 'Reset',
              onPress: () => Navigator.pushNamed(context, '/login'),
            ),
          ),
        ],
      ),
    );
  }
}
