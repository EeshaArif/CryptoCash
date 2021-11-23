import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/coin_dropdown.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class WithdrawScreen extends StatefulWidget {
  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  CryptoCurrency selectedCurrency = Constants.cryptocurrencies.first;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return BaseScaffold(
      body: ExpandedBase(
        lowerSheetPadding: EdgeInsets.only(top: 20),
        isLowerChildScrollable: true,
        upperChild: Column(
          children: [
            TopBackButtonWithPadding(
              text: 'Withdraw',
            ),
          ],
        ),
        lowerChild: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Coin',
                    style: Theme.of(context).textTheme.headline6!,
                  ),
                  CoinDropDown(
                    value: selectedCurrency,
                    onChanged: (value) => {
                      setState(
                        () => {selectedCurrency = value!},
                      ),
                    },
                    coins: Constants.cryptocurrencies,
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  Text(
                    'Enter Wallet Address',
                    style: Theme.of(context).textTheme.headline6!,
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  Text(
                    'Enter the wallet address in which you want to transfer your selected coin.',
                    style: Styles.tPurpleSheetFadedText,
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your wallet address',
                      floatingLabelStyle: TextStyle(color: Colors.white70),
                      labelStyle:
                          TextStyle(color: Colors.white12.withOpacity(0.2)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white12.withOpacity(0.2), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.8), width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  Text(
                    'Enter Amount',
                    style: Theme.of(context).textTheme.headline6!,
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Minimum amount 0',
                      floatingLabelStyle: TextStyle(color: Colors.white70),
                      labelStyle:
                          TextStyle(color: Colors.white12.withOpacity(0.2)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white12.withOpacity(0.2), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            selectedCurrency.shortName,
                            style: Styles.tPurpleSheetFadedText.copyWith(
                                color: Colors.white.withOpacity(
                              0.5,
                            )),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Max',
                              style: Styles.tPurpleSheetSmallBoldText,
                            ),
                          )
                        ],
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.8), width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  Text('Available: 0.00002 ${selectedCurrency.shortName}',
                          style: Styles.tPurpleSheetFormFieldText)
                      .pad(padding: EdgeInsets.only(top: 10)),
                ],
              ).pad(
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
              Container(
                height: 1,
                width: _size.width,
                color: Colors.white.withOpacity(0.2),
              ).pad(padding: EdgeInsets.only(top: 20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You will receive',
                    style: Styles.tPurpleSheetFormFieldText,
                  ).pad(
                      padding: EdgeInsets.symmetric(
                    vertical: 10,
                  )),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        '0.00002',
                        style: Styles.tPurpleSheetSmallBoldText.copyWith(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        selectedCurrency.shortName,
                        style: Styles.tPurpleSheetSmallBoldText,
                      ).pad(
                          padding: EdgeInsets.only(
                        left: 5,
                      ))
                    ],
                  ),
                  Text(
                    'Network fee: 00.09 ${selectedCurrency.shortName}',
                    style: Styles.tPurpleSheetFormFieldText.copyWith(
                      fontSize: 12,
                    ),
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 5,
                  )),
                  PrimaryActionButton(
                    onPress: () =>
                        {Navigator.pushNamed(context, '/withdraw-complete')},
                    text: 'Continue to payment',
                  ).pad(
                      padding: EdgeInsets.only(
                    top: 15,
                  )),
                ],
              ).pad(
                  padding: EdgeInsets.symmetric(
                horizontal: 20,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
