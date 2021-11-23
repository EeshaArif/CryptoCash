import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class WithdrawCompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.popUntil(
          context,
          (route) => route.settings.name == '/home',
        );
      },
      child: Scaffold(
        backgroundColor: Palette.darkBlue,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 32,
                  top: 32,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/logo.svg',
                      width: 48.0,
                    ),
                    Text(
                      'CryptoCash',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontSize: 15.0,
                          ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Lottie.asset(
                      'assets/success_indicator.json',
                    ),
                  ),
                  Text('Withdraw Successful!',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontSize: 20,
                          )),
                  Text(
                    'Your withdrawal is successful, you will receive your BTC shortly in your account.',
                    style: Styles.tPurpleSheetFadedText,
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  Text(
                    'To Wallet Address',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontSize: 20,
                        ),
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  Container(
                    width: _size.width,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Palette.purpleTileContainer,
                    ),
                    child: Text(
                      'DF5256515485GDGVCV',
                      style: Styles.tPurpleSheetFadedText.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  Text(
                    'Amount Sent',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontSize: 20,
                        ),
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  Text(
                    '0.2 BTC',
                    style: Styles.tPurpleSheetSmallBoldText.copyWith(
                      fontSize: 30,
                    ),
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  Text(
                    'Network fee: 00.09 BTC',
                    style: Styles.tPurpleSheetFormFieldText.copyWith(
                      fontSize: 12,
                    ),
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 5,
                  )),
                ],
              ).pad(
                  padding: EdgeInsets.symmetric(
                horizontal: 20,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
