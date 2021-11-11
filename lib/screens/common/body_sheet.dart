import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:flutter/material.dart';

class BodySheet extends StatelessWidget {
  final double height;
  final Widget? child;

  const BodySheet({Key? key, required this.height, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Palette.darkBlue,
      ),
    ).bottom();
  }
}
