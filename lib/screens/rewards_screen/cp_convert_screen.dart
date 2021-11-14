import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show CardActionButton, TopBackButton;
import 'package:cryptocash/screens/rewards_screen/widgets/cp_transactions.dart';
import 'package:cryptocash/screens/rewards_screen/widgets/donations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CpConvertScreen extends StatefulWidget {
  const CpConvertScreen({Key? key}) : super(key: key);

  @override
  _CpConvertScreenState createState() => _CpConvertScreenState();
}

class _CpConvertScreenState extends State<CpConvertScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      heightRatio: 0.5,
      body: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 32, top: 18),
                child: TopBackButton(onPress: () => {}),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 32.0, right: 32, bottom: 18, top: 16),
                child: Text(
                  'Crypto Cash Rewards',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontSize: 24,
                      ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              clipBehavior: Clip.none,
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Palette.darkBlue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24),
                        Text(
                          'Donations',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(height: 16),
                        SizedBox(height: 20),
                        Text(
                          'Recent Rewards',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
