import 'package:cryptocash/palette.dart';
import 'package:flutter/material.dart';

class BottomDraggableBaseSheet extends StatelessWidget {
  final Widget child;
  final double initialChildSize;
  final double minChildSize;
  final double maxChildSize;
  final bool expand;
  const BottomDraggableBaseSheet({
    Key? key,
    required this.child,
    this.initialChildSize = 0.5,
    this.minChildSize = 0.25,
    this.maxChildSize = 1.0,
    this.expand = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: initialChildSize,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      expand: expand,
      builder: (_, controller) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            color: Palette.darkPurple,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            clipBehavior: Clip.none,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                color: Palette.darkPurple,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Palette.fadedPurple,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    height: 5,
                    width: 40,
                  ),
                  child,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
