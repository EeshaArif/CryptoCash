import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BaseScaffold extends StatelessWidget {
  final Widget? body;

  const BaseScaffold({Key? key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: _size.height * 0.4,
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
