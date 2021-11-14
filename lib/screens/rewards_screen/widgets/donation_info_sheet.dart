import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show PrimaryActionButton;
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DonationInfoSheet extends StatelessWidget {
  final void Function() onRedeem;
  final String svgAsset;
  final String title;
  final String info;
  const DonationInfoSheet({
    Key? key,
    required this.onRedeem,
    required this.info,
    required this.title,
    required this.svgAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (_, controller) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            color: Palette.darkPurple,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            clipBehavior: Clip.none,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                color: Palette.darkPurple,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Palette.fadedPurple,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    height: 5,
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/donations/$svgAsset'),
                        Text('$title for good', style: tUpperTitle),
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
                          onPress: onRedeem,
                          text: 'Redeem Points now for good',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
