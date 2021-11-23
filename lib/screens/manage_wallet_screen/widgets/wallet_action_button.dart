import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletActionButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const WalletActionButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return RawMaterialButton(
      constraints: BoxConstraints(
        minWidth: _size.width * 0.4,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: Palette.purpleTileContainer,
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.tPurpleSheetSmallBoldText,
      ).pad(
          padding: EdgeInsets.symmetric(
        vertical: 15,
      )),
    );
  }
}
