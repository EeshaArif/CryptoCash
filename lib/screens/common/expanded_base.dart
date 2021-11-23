import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:flutter/material.dart';

class ExpandedBase extends StatelessWidget {
  final Widget upperChild;
  final Widget lowerChild;
  final bool isLowerChildScrollable;
  final EdgeInsetsGeometry? lowerSheetPadding;

  const ExpandedBase(
      {Key? key,
      required this.upperChild,
      required this.lowerChild,
      this.lowerSheetPadding,
      this.isLowerChildScrollable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      heightRatio: 0.4,
      body: Column(
        children: <Widget>[
          upperChild,
          isLowerChildScrollable
              ? Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    clipBehavior: Clip.none,
                    child: ExpandedSheet(
                      lowerChild: lowerChild,
                      padding: lowerSheetPadding,
                    ),
                  ),
                )
              : Expanded(
                  child: ExpandedSheet(
                    lowerChild: lowerChild,
                    padding: lowerSheetPadding,
                  ),
                ),
        ],
      ),
    );
  }
}

class ExpandedSheet extends StatelessWidget {
  final EdgeInsetsGeometry? padding;

  const ExpandedSheet({
    Key? key,
    required this.lowerChild,
    this.padding,
  }) : super(key: key);

  final Widget lowerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
          padding ?? const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        color: Palette.darkBlue,
      ),
      child: lowerChild,
    );
  }
}
