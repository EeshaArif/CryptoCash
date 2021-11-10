import 'package:flutter/material.dart';

extension Pad on Widget {
  Widget pad({required EdgeInsetsGeometry padding}) {
    return Padding(
      padding: padding,
      child: this,
    );
  }

  Widget center() {
    return Center(
      child: this,
    );
  }

  Widget bottom() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }
}
