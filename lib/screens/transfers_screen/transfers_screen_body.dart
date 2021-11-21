import 'package:cryptocash/screens/common/expanded_base.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
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
          child: empty
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
                      children: [],
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
