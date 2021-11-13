import 'package:cryptocash/screens/rewards_screen/widgets/donation_card.dart';
import 'package:flutter/material.dart';

final donations = [
  DonationCard(
    onPress: () => {},
    color: Color(0xFF6197FF).withOpacity(0.32),
    svgAsset: 'lovely.svg',
    text: 'Feed a child',
    points: 360,
  ),
  DonationCard(
    onPress: () => {},
    color: Color(0xFF61FFA0).withOpacity(0.32),
    svgAsset: 'trees.svg',
    text: 'Plant a tree',
    points: 360,
  ),
];

class DonationsList extends StatelessWidget {
  const DonationsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 12,
          );
        },
        physics: BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: donations.length,
        itemBuilder: (_, i) => donations[i],
      ),
    );
  }
}
