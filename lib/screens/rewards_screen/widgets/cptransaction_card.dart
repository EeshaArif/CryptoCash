import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum cpType { reward, donation }

class cpTransactionCard extends StatelessWidget {
  final cpType type;
  final String transactionText;
  final String transactionDate;
  final String transactionTime;
  final int points;
  const cpTransactionCard({
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
        Container(
          padding: const EdgeInsets.only(
            left: 24,
            right: 16,
            top: 18,
            bottom: 18,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF373154),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$transactionText',
                    style: Theme.of(context).textTheme.headline6,
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
                          ? Color(0xFF2DF1C2)
                          : Color(0xFFEC5555),
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
