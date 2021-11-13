import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/auth_screen/widgets/identity_verification_sheet.dart';
import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show AuthBackButton;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      heightRatio: 0.5,
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 32),
                            child: AuthBackButton(onPress: () => {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 32),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/logo.svg',
                                  width: 48.0,
                                ),
                                Text(
                                  'CryptoCash',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                        fontSize: 15.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 32.0),
                            child: Text('Welcome to Cryptocash Personal',
                                style: Theme.of(context).textTheme.headline5),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        decoration: BoxDecoration(
                          color: Palette.darkBlue,
                        ),
                        child: IdentityVerificationSheet(
                          onComplete: (pin) {},
                          onResend: () {},
                          onVerify: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
