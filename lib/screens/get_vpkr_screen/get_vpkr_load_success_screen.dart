import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:cryptocash/screens/common/purple_tile.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/transaction_info_group.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GetVpkrLoadSuccessScreen extends StatelessWidget {
  const GetVpkrLoadSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      heightRatio: 0.4,
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Load Successful',
                          style: Styles.tUpperTitle,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Your payment has been received and amount is loaded to your wallet successfully.',
                          style: Styles.tUpperBodyText,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ExpandedSheet(
                      lowerChild: Column(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Lottie.asset(
                                  'assets/success_indicator.json',
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sent by',
                                      style:
                                          Styles.tPurpleTileBoldText.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    PurpleTileContainer(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          // TODO: Add the following commented code in business side
                                          /* CircleAvatar(
                                            child: SvgPicture.asset(
                                              'assets/logo.svg',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('CPC C3 Service',
                                                  style: Styles
                                                      .tPurpleTileBoldText),
                                              Text(
                                                '+92 ${03546782736}',
                                                style: Styles.tPurpleTileText,
                                              ),
                                            ],
                                          ), */
                                          Text('CPC c3 Service',
                                              style:
                                                  Styles.tPurpleTileBoldText),
                                          Text('M33487',
                                              style:
                                                  Styles.tPurpleTileBoldText),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                  ],
                                ),
                                TransactionInfoGroup(
                                  transactionType: 'Received',
                                  networkFee: '0 vPKR',
                                  amountTitle: '${1000} vPKR',
                                  date: '12-11-21',
                                  time: '11:15 PM',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          PrimaryActionButton(
                            onPress: () =>
                                Navigator.pushNamed(context, '/home'),
                            text: 'Back to Dashboard',
                          ),
                          SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
