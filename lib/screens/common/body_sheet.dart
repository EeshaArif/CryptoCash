import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:flutter/material.dart';

class BodySheet extends StatelessWidget {
  final double height;

  const BodySheet({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Palette.darkBlue,
      ),
    ).bottom();
  }
}
