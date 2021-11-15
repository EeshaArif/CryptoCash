import 'package:cryptocash/palette.dart';
import 'package:flutter/material.dart';

class PurpleTileContainer extends StatelessWidget {
  final Widget child;
  const PurpleTileContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          left: 24,
          right: 16,
          top: 18,
          bottom: 18,
        ),
        decoration: BoxDecoration(
          color: Palette.purpleTileContainer,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: child);
  }
}
