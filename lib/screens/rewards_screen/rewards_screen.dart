import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show CardActionButton, TopBackButton;
import 'package:cryptocash/screens/rewards_screen/widgets/cp_transactions.dart';
import 'package:cryptocash/screens/rewards_screen/widgets/donations.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({Key? key}) : super(key: key);

  @override
  _RewardsScreenState createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {
  @override
  Widget build(BuildContext context) {
    return ExpandedBase(
      isLowerChildScrollable: true,
      upperChild: Column(
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
      lowerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RewardsHeader(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Text(
                'Donations',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 16),
              DonationsList(),
              SizedBox(height: 20),
              Text(
                'Recent Rewards',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 16),
              CpTransactions(),
            ],
          ),
        ],
      ),
    );
  }
}

class RewardsHeader extends StatelessWidget {
  const RewardsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Palette.lightPurple,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/cup.svg',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Total Points',
                        style: GoogleFonts.exo2(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(0.56),
                        ),
                      )
                    ],
                  ),
                  Text(
                      12000.toString().replaceAllMapped(
                          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                          (match) => '${match[1]},'),
                      style: Theme.of(context).textTheme.headline2)
                ],
              ),
              // TODO: Fix quality of svg
              SvgPicture.asset('assets/rewards.svg'),
            ],
          ),
          CardActionButton(
            text: 'Convert my points to vPKR',
            onPress: () =>
                Navigator.pushNamed(context, '/convert-point-to-vpkr'),
          ),
        ],
      ),
    );
  }
}
