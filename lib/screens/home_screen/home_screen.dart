import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/body_navigation_bar.dart';
import 'package:cryptocash/screens/common/body_sheet.dart';
import 'package:cryptocash/screens/home_screen/widgets/balance_card.dart';
import 'package:cryptocash/screens/home_screen/widgets/coins.dart';
import 'package:cryptocash/screens/home_screen/widgets/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const double kCommonGradientHeightRatio = 0.4;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return BaseScaffold(
      heightRatio: kCommonGradientHeightRatio,
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/logo.svg',
                      ),
                      Text(
                        'CryptoCash',
                        style: Theme.of(context).textTheme.headline3,
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/cup.svg',
                        color: Palette.orange,
                      ).pad(
                        padding: EdgeInsets.only(
                          right: 5,
                        ),
                      ),
                      Text(
                        '5665 Points',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                          iconSize: 40,
                          icon: Icon(
                            Icons.arrow_right_rounded,
                          ).pad(
                            padding: EdgeInsets.only(
                              top: 2,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ).pad(
                padding: EdgeInsets.only(left: 10),
              ),
              BalanceCard().pad(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
              ),
            ],
          ),
          BodySheet(
            height: _size.height * 0.6 + 17.5,
            child: Column(
              children: [
                Coins().pad(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                ),
                Transactions()
              ],
            ),
          ),
          BodyNavigationBar(),
        ],
      ),
    );
  }
}
