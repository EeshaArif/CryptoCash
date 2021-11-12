import 'package:flutter/material.dart';

class PrimaryActionButton extends StatelessWidget {
  final void Function() onPress;
  final String text;
  const PrimaryActionButton({
    Key? key,
    required this.onPress,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Color(0xFFFF6161), Color(0xFFFF9900)],
        ),
      ),
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button,
        ),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 53)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
    );
  }
}

class PrimaryTextButton extends StatelessWidget {
  final void Function() onPress;
  final String text;
  const PrimaryTextButton({
    Key? key,
    required this.onPress,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.8)),
      ),
    );
  }
}
