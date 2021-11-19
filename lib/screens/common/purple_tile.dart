import 'package:cryptocash/palette.dart';
import 'package:cryptocash/styles.dart';
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

class MerchantPurpleContainer extends StatelessWidget {
  const MerchantPurpleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PurpleTileContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // TODO: Add the following commented code in business side
          /* CircleAvatar(
                                            child: SvgPicture.asset(
                                              'assets/logo.svg',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('CPC C3 Service',
                                                  style: Styles
                                                      .tPurpleTileBoldText),
                                              Text(
                                                '+92 ${03546782736}',
                                                style: Styles.tPurpleTileText,
                                              ),
                                            ],
                                          ), */
          Text('CPC c3 Service', style: Styles.tPurpleTileBoldText),
          Text('M33487', style: Styles.tPurpleTileBoldText),
        ],
      ),
    );
  }
}
