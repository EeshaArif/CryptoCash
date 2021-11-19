import 'package:cryptocash/extensions.dart';
import 'package:cryptocash/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodyNavigationBar extends StatefulWidget {
  @override
  State<BodyNavigationBar> createState() => _BodyNavigationBarState();
}

class _BodyNavigationBarState extends State<BodyNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Palette.darkPurple,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        // If Scan QR code pressed
        if (value == 2) Navigator.pushNamed(context, '/scan');

        setState(() {
          currentIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/wallet.svg',
          ),
          activeIcon: SvgPicture.asset(
            'assets/wallet.svg',
            color: Colors.white,
          ),
          label: '',
          tooltip: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/transaction.svg'),
          activeIcon: SvgPicture.asset(
            'assets/transaction.svg',
            color: Colors.white,
          ),
          label: '',
          tooltip: 'Transactions',
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Palette.brightOrange,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset('assets/qr.svg'),
          ),
          label: '',
          tooltip: 'Scan QR code',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/notification.svg'),
          activeIcon: SvgPicture.asset(
            'assets/notification.svg',
            color: Colors.white,
          ),
          label: '',
          tooltip: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            size: 30,
            color: Palette.fadedIcon,
          ),
          activeIcon: Icon(
            Icons.account_circle,
            size: 30,
            color: Colors.white,
          ),
          label: '',
          tooltip: 'Profile',
        ),
      ],
    ).bottom();
  }
}
