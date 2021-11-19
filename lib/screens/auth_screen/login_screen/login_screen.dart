import 'package:cryptocash/screens/auth_screen/widgets/auth_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton;
import 'package:cryptocash/screens/common/themed_fields.dart'
    show AuthPassFormField, AuthPhoneFormField;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AuthBase(
      headerText: 'Welcome Back! Log In to continue',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32),
              Text('Log In to Cryptocash',
                  style: Theme.of(context).textTheme.headline3),
              SizedBox(height: 32),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AuthPhoneFormField(label: 'Enter Phone Number'),
                    SizedBox(height: 12),
                    AuthPassFormField(label: 'Enter Password'),
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/reset-pass-verify'),
                      child: Text(
                        'forgot password?',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.white12.withOpacity(0.2),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: PrimaryActionButton(
              text: 'Continue',
              onPress: () => Navigator.pushNamed(context, '/login-verify'),
            ),
          ),
        ],
      ),
    );
  }
}
