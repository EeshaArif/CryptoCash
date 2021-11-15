import 'package:cryptocash/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

class SecondaryActionButton extends StatelessWidget {
  final void Function() onPress;
  final String text;
  final String iconAsset;
  const SecondaryActionButton({
    Key? key,
    required this.onPress,
    required this.text,
    required this.iconAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconAsset,
            width: 16,
          ),
          SizedBox(width: 15),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .button
                ?.copyWith(color: Palette.darkBlue),
          ),
        ],
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 53)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor:
            MaterialStateProperty.all(Palette.darkBlue.withOpacity(0.2)),
        backgroundColor: MaterialStateProperty.all(Colors.white),
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

class TopBackButton extends StatelessWidget {
  final void Function() onPress;
  final String? text;
  const TopBackButton({
    Key? key,
    this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(32, 53)),
            overlayColor:
                MaterialStateProperty.all(Palette.darkBlue.withOpacity(0.1)),
          ),
          onPressed: () => {
            Navigator.pop(context),
            onPress.call(),
          },
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/arrowsquareleft.svg',
              ),
              SizedBox(width: 8),
              Text(
                text != null ? text.toString() : 'Back',
                style: text != null
                    ? Theme.of(context).textTheme.headline6?.copyWith(
                          fontSize: 20,
                        )
                    : Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.5),
                        ),
              ),
            ],
          ),
        ),
        Expanded(child: SizedBox())
      ],
    );
  }
}

class CardActionButton extends StatelessWidget {
  final void Function() onPress;
  final String text;
  const CardActionButton({
    Key? key,
    required this.onPress,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 45)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.all(Palette.darkOrange),
      ),
    );
  }
}
