import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/base_scaffold.dart';
import 'package:flutter/material.dart';

class ExpandedBase extends StatelessWidget {
  final Widget upperChild;
  final Widget lowerChild;
  final bool isLowerChildScrollable;
  const ExpandedBase(
      {Key? key,
      required this.upperChild,
      required this.lowerChild,
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
                    clipBehavior: Clip.none,
                    child: ExpandedSheet(lowerChild: lowerChild),
                  ),
                )
              : Expanded(
                  child: ExpandedSheet(lowerChild: lowerChild),
                ),
        ],
      ),
    );
  }
}

class ExpandedSheet extends StatelessWidget {
  const ExpandedSheet({
    Key? key,
    required this.lowerChild,
  }) : super(key: key);

  final Widget lowerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Palette.darkBlue,
      ),
      child: lowerChild,
    );
  }
}
