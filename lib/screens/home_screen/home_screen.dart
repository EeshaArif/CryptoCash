import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/body_navigation_bar.dart';
import 'package:cryptocash/screens/common/body_sheet.dart';
import 'package:cryptocash/screens/home_screen/widgets/balance_card.dart';
import 'package:cryptocash/screens/home_screen/widgets/coins.dart';
import 'package:cryptocash/screens/home_screen/widgets/transactions.dart';
import 'package:cryptocash/screens/notifications_screen/notifications_screen_body.dart';
import 'package:cryptocash/screens/profile_screen/profile_screen_body.dart';
import 'package:cryptocash/screens/transfers_screen/transfers_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const double kCommonGradientHeightRatio = 0.4;

class HomeScreen extends StatefulWidget {
  final int initialIndex;
  const HomeScreen({Key? key, this.initialIndex = 0}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List _widgetOptions = [
    DashboardBody(),
    TransfersScreenBody(),
    null,
    NotificationsScreenBody(),
    ProfileScreenBody(),
  ];
  int? currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      initialNavIndex: currentIndex!,
      onNavBarTap: (value) {
        //if (value == 0) Navigator.pushNamed(context, '/home');
        //if (value == 1) Navigator.pushNamed(context, '/transfers');
        // If Scan QR code pressed
        if (value == 2) Navigator.pushNamed(context, '/scan');
        //if (value == 3) Navigator.pushNamed(context, '/notifications');
        //if (value == 4) Navigator.pushNamed(context, '/profile');
        setState(() {
          currentIndex = value;
        });
      },
      heightRatio: currentIndex == 0 ? kCommonGradientHeightRatio : 0.2,
      body: _widgetOptions.elementAt(currentIndex!),
    );
  }
}

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Stack(
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
                RawMaterialButton(
                  onPressed: () => Navigator.pushNamed(context, '/rewards'),
                  child: Row(
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
                          onPressed: () =>
                              Navigator.pushNamed(context, '/rewards'),
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
          height: _size.height * 0.55 + 17.5,
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
        //BodyNavigationBar(),
      ],
    );
  }
}
