import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final String label;
  const AuthTextFormField({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      // TODO: Add validator
      decoration: InputDecoration(
        labelText: label,
        floatingLabelStyle: TextStyle(color: Colors.white70),
        labelStyle: TextStyle(color: Colors.white12.withOpacity(0.2)),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.white12.withOpacity(0.2), width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.white.withOpacity(0.8), width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
