import 'package:cryptocash/constants.dart';
import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/home_screen/widgets/transaction_card.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class TransfersScreenBody extends StatefulWidget {
  const TransfersScreenBody({Key? key}) : super(key: key);

  @override
  _TransfersScreenBodyState createState() => _TransfersScreenBodyState();
}

class _TransfersScreenBodyState extends State<TransfersScreenBody> {
  bool empty = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopBackButtonWithPadding(
          text: 'Transfers',
          onPress: () => {
            Navigator.pushNamed(context, '/home'),
          },
        ),
        Expanded(
          child: Constants.transactions.isEmpty
              ? ExpandedSheet(
                  lowerChild: Center(
                    child: Text(
                      'No Transfers Yet',
                      style: Styles.tPurpleSheetFadedText,
                    ),
                  ),
                )
              : SingleChildScrollView(
                  clipBehavior: Clip.none,
                  child: ExpandedSheet(
                    lowerChild: Column(
                      children: [
                        ...Constants.transactions.map(
                          (e) => TransactionCard(
                            transaction: e,
                          ).pad(
                            padding: EdgeInsets.only(bottom: 8),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
