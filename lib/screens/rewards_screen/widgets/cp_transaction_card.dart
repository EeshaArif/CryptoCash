import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/purple_tile.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum cpType { reward, donation }

class CpTransactionCard extends StatelessWidget {
  final cpType type;
  final String transactionText;
  final String transactionDate;
  final String transactionTime;
  final int points;
  const CpTransactionCard({
    Key? key,
    required this.points,
    required this.type,
    required this.transactionText,
    required this.transactionDate,
    required this.transactionTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PurpleTileContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$transactionText',
                    style: Styles.tPurpleTileText1,
                  ),
                  Text(
                    '$transactionDate at $transactionTime',
                    style: GoogleFonts.exo2(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Text(
                '${type == cpType.reward ? '+' : '-'}$points CP',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: type == cpType.reward
                          ? Palette.cashIn
                          : Palette.cashOut,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
