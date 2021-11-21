import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/body_navigation_bar.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget? body;
  final double? heightRatio;
  final void Function(int value)? onNavBarTap;
  const BaseScaffold({Key? key, this.body, this.heightRatio, this.onNavBarTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar:
          onNavBarTap != null ? BodyNavigationBar(onTap: onNavBarTap!) : null,
      backgroundColor: Palette.darkBlue,
      body: Stack(
        children: [
          Container(
            height: _size.height * (heightRatio != null ? heightRatio! : 1),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(2, 2),
                colors: [Palette.purple, Palette.orange],
              ),
            ),
          ),
          ...{
            if (body != null) SafeArea(child: body!),
          },
        ],
      ),
    );
  }
}
