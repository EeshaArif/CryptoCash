import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
class IdentityVerificationSheet extends StatelessWidget {
  final void Function() onResend;
  final void Function() onVerify;
  final void Function(dynamic pin) onComplete;
  const IdentityVerificationSheet({
    Key? key,
    required this.onResend,
    required this.onVerify,
    required this.onComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
            ),
            Text('Verify your identity',
                style: Theme.of(context).textTheme.headline3),
            SizedBox(
              height: 16,
            ),
            Text(
              'We’ve sent a verification OTP on your phone number. Enter OTP to continue.',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.4)),
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: (MediaQuery.of(context).size.width / 6),
              style: TextStyle(fontSize: 40),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              otpFieldStyle: OtpFieldStyle(
                  focusBorderColor: Colors.white,
                  enabledBorderColor: Colors.white.withOpacity(0.5)),
              onCompleted: onComplete,
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: <Widget>[
                Text('Didn\'t receive an OTP?'),
                TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                        Colors.white24.withOpacity(0.1),
                      ),
                    ),
                    onPressed: onResend,
                    child: Text(
                      'Resend',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                    ))
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: PrimaryActionButton(
            text: 'Verify Identity',
            onPress: onVerify,
          ),
        ),
      ],
    );
  }
}
