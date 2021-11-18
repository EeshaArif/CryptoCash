import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart'
    show TopBackButton;
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetVpkrPaymentOptionScreen extends StatefulWidget {
  const GetVpkrPaymentOptionScreen({Key? key}) : super(key: key);

  @override
  _GetVpkrPaymentOptionScreenState createState() =>
      _GetVpkrPaymentOptionScreenState();
}

class _GetVpkrPaymentOptionScreenState
    extends State<GetVpkrPaymentOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return ExpandedBase(
      isLowerChildScrollable: true,
      upperChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 32, top: 18, bottom: 8),
            child: TopBackButton(onPress: () => {}, text: 'Payment Option'),
          ),
          SizedBox(height: 18),
        ],
      ),
      lowerChild: Column(
        children: [
          SizedBox(height: 8),
          Text(
            'Choose how you want to get vPKR',
            style: Styles.tNumberTextTitle,
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  onPressed: () => {
                    Navigator.pushNamed(context, '/get-vpkr-convert-coins'),
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: 128,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Palette.fadedPurple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SvgPicture.asset(
                          'assets/logo.svg',
                          fit: BoxFit.contain,
                          width: 200,
                          height: 200,
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                      Text(
                        'Convert Crypto',
                        style: Styles.tRewardsCardSubtitle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  onPressed: () => {
                    Navigator.pushNamed(context, '/get-vpkr-merchant-load'),
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 128,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Palette.darkOrange.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/qr.svg',
                        width: 64,
                        height: 64,
                        color: Colors.white.withOpacity(0.2),
                      ),
                      Text(
                        'Merchant Load',
                        style: Styles.tRewardsCardSubtitle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 64,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'assets/payments/easypaisaimage.png',
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Container(
                  height: 64,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      color: Color(0xff262626)),
                  child: Image.asset(
                    'assets/payments/jazzcashimage.png',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          RawMaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            onPressed: () => {
              // Navigator.pushNamed(context, '/get-vpkr-credit'),
            },
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 64,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Palette.coinCardStartGradient,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/payments/cardpayment.svg',
                      width: 24,
                      color: Color(0xFFE7E7E7),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Debit/Credit Card',
                      style: Styles.tRewardsCardSubtitle.copyWith(
                        fontSize: 16,
                        color: Color(0xFFE7E7E7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
