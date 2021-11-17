import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width - 20,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(2, 2),
              colors: [
                Colors.white.withOpacity(0.3),
                Color(0xFFBFBEBF).withOpacity(0.3),
                Color(0xFF9D9D9D).withOpacity(0.3)
              ]),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Value',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                '120,230',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'vPKR',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Palette.faded),
              ).pad(
                padding: EdgeInsets.only(left: 5),
              ),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                elevation: MaterialStateProperty.all(0)),
            onPressed: () =>
                Navigator.pushNamed(context, '/get-vpkr-payment-option'),
            child: Container(
              width: _size.width,
              child: Text(
                'Get vPKR',
                style: Theme.of(context).textTheme.button,
              ).center().pad(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                  ),
            ),
          ).pad(
            padding: EdgeInsets.only(top: 10),
          )
        ],
      ).pad(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 20,
          bottom: 15,
        ),
      ),
    );
  }
}
