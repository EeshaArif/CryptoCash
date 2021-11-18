import 'package:cryptocash/screens/common/purple_tile.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RewardCard extends StatelessWidget {
  final String cardSubtitle;
  final String cardTitle;
  final int points;
  const RewardCard({
    Key? key,
    required this.cardSubtitle,
    required this.cardTitle,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PurpleTileContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cardSubtitle, style: Styles.tRewardsCardSubtitle),
              SizedBox(
                height: 12,
              ),
              Text('$cardTitle $points CP', style: Styles.tRewardsCardTitle),
              Text('for this transaction', style: Styles.tRewardsCardText),
            ],
          ),
          SvgPicture.asset(
            'assets/rewards.svg',
          ),
        ],
      ),
    );
  }
}
