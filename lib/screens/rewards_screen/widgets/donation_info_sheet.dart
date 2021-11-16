import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/bottom_draggable_base_sheet.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton;
import 'package:cryptocash/screens/rewards_screen/widgets/donation_points_card.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DonationInfoSheet extends StatelessWidget {
  final void Function() onRedeem;
  final String svgAsset;
  final String title;
  final String info;
  final int points;
  const DonationInfoSheet({
    Key? key,
    required this.onRedeem,
    required this.info,
    required this.title,
    required this.svgAsset,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomDraggableBaseSheet(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/donations/$svgAsset'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$title for good', style: tUpperTitle),
                DonationPointsCard(points: points),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              '$info',
              style: tUpperBodyText,
            ),
            SizedBox(
              height: 24,
            ),
            PrimaryActionButton(
              onPress: () => {
                onRedeem.call(),
                Navigator.pushNamed(context, '/donation-appreciation'),
              },
              text: 'Redeem Points now for good',
            ),
          ],
        ),
      ),
    );
  }
}
