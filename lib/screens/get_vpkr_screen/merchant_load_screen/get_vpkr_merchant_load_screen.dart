import 'dart:math';

import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/screens/common/reward_card.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GetVpkrMerchantLoadScreen extends StatelessWidget {
  const GetVpkrMerchantLoadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Remove GestureDetector to move to success screen when the load has been transferred
    return GestureDetector(
      onTap: () => {
        Navigator.pushNamed(context, '/get-vpkr-load-success'),
      },
      child: ExpandedBase(
        isLowerChildScrollable: true,
        upperChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 32, top: 18, bottom: 8),
              child: TopBackButton(onPress: () => {}, text: 'Merchant Load'),
            ),
            SizedBox(height: 18),
          ],
        ),
        lowerChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Text(
              'Get QR Code Scanned',
              style: Styles.tPurpleSheetBoldText,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'Ask the merchant to scan the following QR Code, to deposit vPKR in your crypto cash wallet',
              style: Styles.tPurpleSheetFadedText,
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: QrImage(
                data: "UserC2ID: 37886FF63DE554A",
                version: QrVersions.auto,
                size: MediaQuery.of(context).size.width - 40,
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RewardCard(
              cardSubtitle: 'Load Rewards',
              cardTitle: 'You will earn',
              points: 1000,
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
