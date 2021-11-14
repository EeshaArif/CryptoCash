import 'package:cryptocash/screens/rewards_screen/widgets/donation_points_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DonationCard extends StatelessWidget {
  final void Function() onPress;
  final Color color;
  final String text;
  final int points;
  final String svgAsset;
  const DonationCard({
    Key? key,
    required this.onPress,
    required this.color,
    required this.text,
    required this.points,
    required this.svgAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Stack(
        children: [
          Container(
            width: 168,
            height: 112,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: SvgPicture.asset(
              'assets/donations/svector.svg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset('assets/donations/$svgAsset'),
                Text(
                  text,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 20,
                      ),
                ),
                SizedBox(height: 6),
                DonationPointsCard(points: points),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
