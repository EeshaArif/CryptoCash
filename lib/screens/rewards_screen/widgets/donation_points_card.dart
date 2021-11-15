import 'package:cryptocash/palette.dart';
import 'package:flutter/material.dart';

class DonationPointsCard extends StatelessWidget {
  final int points;
  const DonationPointsCard({Key? key, required this.points}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: Palette.donationPointsCard,
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Text('$points pts'),
    );
  }
}
