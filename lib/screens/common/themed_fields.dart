import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show FilteringTextInputFormatter;

// TODO: Add validators
class AuthTextFormField extends StatelessWidget {
  final String label;
  const AuthTextFormField({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
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

class AuthPhoneFormField extends StatelessWidget {
  final String label;
  const AuthPhoneFormField({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      cursorColor: Colors.white,
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

class AuthPassFormField extends StatefulWidget {
  final String label;
  const AuthPassFormField({Key? key, required this.label}) : super(key: key);

  @override
  State<AuthPassFormField> createState() => _AuthPassFormFieldState();
}

class _AuthPassFormFieldState extends State<AuthPassFormField> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isObscure,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        labelText: widget.label,
        floatingLabelStyle: TextStyle(color: Colors.white70),
        labelStyle: TextStyle(color: Colors.white12.withOpacity(0.2)),
        suffixIcon: IconButton(
          color: Colors.white12.withOpacity(0.3),
          icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            setState(
              () {
                _isObscure = !_isObscure;
              },
            );
          },
        ),
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

class AmountFormField extends StatelessWidget {
  const AmountFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      autofocus: true,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'\d*\.?\d*')),
      ],
      decoration: InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      textAlign: TextAlign.center,
      cursorColor: Colors.white,
      // 100000.00.toString(),
      style: tNumberTitle,
    );
  }
}
