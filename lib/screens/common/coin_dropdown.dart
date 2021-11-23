import 'package:cryptocash/constants.dart';
import 'package:cryptocash/palette.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoinDropDown extends StatelessWidget {
  final void Function(CryptoCurrency?)? onChanged;
  final CryptoCurrency value;
  final List<CryptoCurrency> coins;

  const CoinDropDown({
    Key? key,
    required this.onChanged,
    required this.value,
    required this.coins,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 28),
        width: double.infinity,
        height: 64,
        decoration: BoxDecoration(
          color: Palette.purpleTileContainer,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: DropdownButton<CryptoCurrency>(
          dropdownColor: Palette.purpleTileContainer,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          icon: SvgPicture.asset(
            'assets/dropdown.svg',
          ),
          value: value,
          onChanged: onChanged,
          items: [...coins.map((coin) => buildCoinDropdownMenuItem(coin))],
        ),
      ),
    );
  }

  DropdownMenuItem<CryptoCurrency> buildCoinDropdownMenuItem(
      CryptoCurrency cryptoCurrency) {
    return DropdownMenuItem<CryptoCurrency>(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              cryptoCurrency.logoAsset,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            cryptoCurrency.shortName,
            style: Styles.tPurpleTileBoldText,
          ),
        ],
      ),
      value: cryptoCurrency,
    );
  }
}
