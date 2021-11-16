import 'package:cryptocash/screens/auth_screen/boarding_screen.dart';
import 'package:cryptocash/screens/auth_screen/business_signup_screen/business_setpass_screen.dart';
import 'package:cryptocash/screens/auth_screen/business_signup_screen/business_signup_screen.dart';
import 'package:cryptocash/screens/auth_screen/business_signup_screen/business_verify_screen.dart';
import 'package:cryptocash/screens/auth_screen/forgotpassverify_screen.dart';
import 'package:cryptocash/screens/auth_screen/login_screen/login_screen.dart';
import 'package:cryptocash/screens/auth_screen/login_screen/loginverify_screen.dart';
import 'package:cryptocash/screens/auth_screen/personal_signup_screen/personal_setpass_screen.dart';
import 'package:cryptocash/screens/auth_screen/personal_signup_screen/personal_verify_screen.dart';
import 'package:cryptocash/screens/auth_screen/resetpass_screen.dart';
import 'package:cryptocash/screens/auth_screen/settranspass_screen.dart';
import 'package:cryptocash/screens/auth_screen/usecase_screen.dart';
import 'package:cryptocash/screens/buy_vpkr_screen/convert_coin_to_vpkr_screen.dart';
import 'package:cryptocash/screens/buy_vpkr_screen/vpkr_purchase_success_screen.dart';
import 'package:cryptocash/screens/home_screen/home_screen.dart';
import 'package:cryptocash/screens/rewards_screen/convert_point_to_vpkr_screen.dart';
import 'package:cryptocash/screens/rewards_screen/cp_convert_success_screen.dart';
import 'package:cryptocash/screens/rewards_screen/donation_appreciation_screen.dart';
import 'package:cryptocash/screens/rewards_screen/rewards_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/boarding':
        return MaterialPageRoute(
          builder: (context) => BoardingScreen(),
        );
      case '/usecase':
        return MaterialPageRoute(
          builder: (context) => UseCaseScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case '/login-verify':
        return MaterialPageRoute(
          builder: (context) => LoginVerifyScreen(),
        );
      case '/business-set-pass':
        return MaterialPageRoute(
          builder: (context) => BusinessSetPassScreen(),
        );
      case '/business-signup':
        return MaterialPageRoute(
          builder: (context) => BusinessSignupScreen(),
        );
      case '/business-verify':
        return MaterialPageRoute(
          builder: (context) => BusinessVerifyScreen(),
        );
      case '/personal-signup':
        return MaterialPageRoute(
          builder: (context) => BusinessSignupScreen(),
        );
      case '/personal-set-pass':
        return MaterialPageRoute(
          builder: (context) => PersonalSetPassScreen(),
        );
      case '/personal-verify':
        return MaterialPageRoute(
          builder: (context) => PersonalVerifyScreen(),
        );
      case '/forgot-pass-verify':
        return MaterialPageRoute(
          builder: (context) => ForgotPassVerifyScreen(),
        );
      case '/reset-pass':
        return MaterialPageRoute(
          builder: (context) => ResetPassScreen(),
        );
      case '/set-trans-pass':
        return MaterialPageRoute(
          builder: (context) => SetTransPassScreen(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case '/rewards':
        return MaterialPageRoute(
          builder: (context) => RewardsScreen(),
        );
      case '/convert-point-to-vpkr':
        return MaterialPageRoute(
          builder: (context) => ConvertPointToVpkrScreen(),
        );
      case '/cp-convert-success':
        return MaterialPageRoute(
          builder: (context) => CpConvertSuccessScreen(),
        );
      case '/donation-appreciation':
        return MaterialPageRoute(
          builder: (context) => DonationAppreciationScreen(),
        );
      case '/convert-coin-to-vpkr':
        return MaterialPageRoute(
          builder: (context) => ConvertCoinToVpkrScreen(),
        );
      case '/vpkr-purchase-success':
        return MaterialPageRoute(
          builder: (context) => VpkrPurchaseSuccessScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        );
    }
  }
}