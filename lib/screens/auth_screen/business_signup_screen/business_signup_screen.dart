import 'package:cryptocash/screens/auth_screen/widgets/auth_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton;
import 'package:cryptocash/screens/common/themed_fields.dart'
    show AuthTextFormField;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusinessSignupScreen extends StatefulWidget {
  const BusinessSignupScreen({Key? key}) : super(key: key);

  @override
  _BusinessSignupScreenState createState() => _BusinessSignupScreenState();
}

class _BusinessSignupScreenState extends State<BusinessSignupScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AuthBase(
      headerText: 'Welcome to Cryptocash Business',
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
              Text('Sign up for Cryptocash',
                  style: Theme.of(context).textTheme.headline3),
              SizedBox(
                height: 32,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    AuthTextFormField(label: 'Enter your name'),
                    SizedBox(height: 12),
                    AuthTextFormField(label: 'Enter Email Address'),
                    SizedBox(height: 12),
                    AuthTextFormField(label: 'Enter Phone Number'),
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
