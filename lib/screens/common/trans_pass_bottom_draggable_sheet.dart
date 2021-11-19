import 'package:cryptocash/palette.dart';
import 'package:cryptocash/screens/common/themed_buttons.dart';
import 'package:cryptocash/screens/common/themed_fields.dart';
import 'package:cryptocash/styles.dart';
import 'package:flutter/material.dart';

class TransPassBottomDraggableSheet extends StatelessWidget {
  final void Function() onConfirm;
  final double initialChildSize;
  final double minChildSize;
  final double maxChildSize;
  final bool expand;
  const TransPassBottomDraggableSheet({
    Key? key,
    required this.onConfirm,
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
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
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
                  mainAxisSize: MainAxisSize.min,
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
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Enter Transaction Password',
                            style: Styles.tDraggableSheetTitle,
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Entering transaction password will verify your identity',
                            style: Styles.tDraggableSheetFadedText,
                          ),
                          SizedBox(height: 16),
                          AuthPassFormField(label: 'Transaction Password'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              SecondaryTextButton(
                                onPress: () => {
                                  Navigator.pushNamed(
                                      context, '/reset-trans-pass-verify'),
                                },
                                text: 'Forgot Password?',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          PrimaryActionButton(
                            onPress: onConfirm,
                            text: 'Confirm Transaction',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
