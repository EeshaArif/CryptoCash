import 'package:cryptocash/screens/auth_screen/widgets/auth_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton;
import 'package:cryptocash/screens/common/themed_fields.dart'
    show AuthPassFormField;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetTransPassScreen extends StatefulWidget {
  const ResetTransPassScreen({Key? key}) : super(key: key);

  @override
  _ResetTransPassScreenState createState() => _ResetTransPassScreenState();
}

class _ResetTransPassScreenState extends State<ResetTransPassScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AuthBase(
      headerText: 'Reset Your Transaction Password',
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
              Text('Set New Transaction Password',
                  style: Theme.of(context).textTheme.headline3),
              SizedBox(
                height: 32,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    AuthPassFormField(label: 'Enter new Transaction Password'),
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
              onPress: () => Navigator.pushNamed(context, '/home'),
            ),
          ),
        ],
      ),
    );
  }
}
