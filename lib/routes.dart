import 'package:cryptocash/screens/auth_screen/boarding_screen.dart';
import 'package:cryptocash/screens/auth_screen/business_signup_screen/business_setpass_screen.dart';
import 'package:cryptocash/screens/auth_screen/business_signup_screen/business_signup_screen.dart';
import 'package:cryptocash/screens/auth_screen/business_signup_screen/business_verify_screen.dart';
import 'package:cryptocash/screens/auth_screen/reset_pass_verify_screen.dart';
import 'package:cryptocash/screens/auth_screen/login_screen/login_screen.dart';
import 'package:cryptocash/screens/auth_screen/login_screen/loginverify_screen.dart';
import 'package:cryptocash/screens/auth_screen/personal_signup_screen/personal_setpass_screen.dart';
import 'package:cryptocash/screens/auth_screen/personal_signup_screen/personal_signup_screen.dart';
import 'package:cryptocash/screens/auth_screen/personal_signup_screen/personal_verify_screen.dart';
import 'package:cryptocash/screens/auth_screen/resetpass_screen.dart';
import 'package:cryptocash/screens/auth_screen/settranspass_screen.dart';
import 'package:cryptocash/screens/auth_screen/usecase_screen.dart';
import 'package:cryptocash/screens/get_vpkr_screen/convert_coins_screen/get_vpkr_convert_coins_screen.dart';
import 'package:cryptocash/screens/get_vpkr_screen/get_vpkr_load_success_screen.dart';
import 'package:cryptocash/screens/get_vpkr_screen/merchant_load_screen/get_vpkr_merchant_load_screen.dart';
import 'package:cryptocash/screens/get_vpkr_screen/get_vpkr_payment_option_screen.dart';
import 'package:cryptocash/screens/get_vpkr_screen/convert_coins_screen/get_vpkr_purchase_success_screen.dart';
import 'package:cryptocash/screens/home_screen/home_screen.dart';
import 'package:cryptocash/screens/notifications_screen/opened_notification_screen.dart';
import 'package:cryptocash/screens/reset_trans_pass_screen/reset_trans_pass_screen.dart';
import 'package:cryptocash/screens/reset_trans_pass_screen/reset_trans_pass_verify_screen.dart';
import 'package:cryptocash/screens/rewards_screen/convert_point_to_vpkr_screen.dart';
import 'package:cryptocash/screens/rewards_screen/cp_convert_success_screen.dart';
import 'package:cryptocash/screens/rewards_screen/donation_appreciation_screen.dart';
import 'package:cryptocash/screens/rewards_screen/rewards_screen.dart';
import 'package:cryptocash/screens/scan_screen/scan_screen.dart';
import 'package:cryptocash/screens/store_connected_screen/store_connected_screen.dart';
import 'package:cryptocash/screens/store_connected_screen/store_transaction_successful_screen.dart';
import 'package:cryptocash/screens/transfers_screen/transfer_receipt_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

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
          builder: (context) => PersonalSignupScreen(),
        );
      case '/personal-set-pass':
        return MaterialPageRoute(
          builder: (context) => PersonalSetPassScreen(),
        );
      case '/personal-verify':
        return MaterialPageRoute(
          builder: (context) => PersonalVerifyScreen(),
        );
      case '/reset-pass-verify':
        return MaterialPageRoute(
          builder: (context) => ResetPassVerifyScreen(),
        );
      case '/reset-pass':
        return MaterialPageRoute(
          builder: (context) => ResetPassScreen(),
        );
      case '/set-trans-pass':
        return MaterialPageRoute(
          builder: (context) => SetTransPassScreen(),
        );
      case '/reset-trans-pass-verify':
        return MaterialPageRoute(
          builder: (context) => ResetTransPassVerifyScreen(),
        );
      case '/reset-trans-pass':
        return MaterialPageRoute(
          builder: (context) => ResetTransPassScreen(),
        );
      case '/home':
        final _initialIndex = args != null ? args as int : 0;
        return MaterialPageRoute(
          builder: (context) => HomeScreen(
            initialIndex: _initialIndex,
          ),
        );
      case '/opened-notification':
        final _notification = args as C2Notification;
        return MaterialPageRoute(
          builder: (context) => OpenedNotificationScreen(
            notification: _notification,
          ),
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
      case '/get-vpkr-convert-coins':
        return MaterialPageRoute(
          builder: (context) => GetVpkrConvertCoinsScreen(),
        );
      case '/get-vpkr-payment-option':
        return MaterialPageRoute(
          builder: (context) => GetVpkrPaymentOptionScreen(),
        );
      case '/get-vpkr-purchase-success':
        return MaterialPageRoute(
          builder: (context) => GetVpkrPurchaseSuccessScreen(),
        );
      case '/get-vpkr-merchant-load':
        return MaterialPageRoute(
          builder: (context) => GetVpkrMerchantLoadScreen(),
        );
      case '/get-vpkr-load-success':
        return MaterialPageRoute(
          builder: (context) => GetVpkrLoadSuccessScreen(),
        );
      case '/scan':
        return MaterialPageRoute(
          builder: (context) => ScanScreen(),
        );
      case '/store-connected':
        return MaterialPageRoute(
          builder: (context) => StoreConnectedScreen(),
        );
      case '/store-transaction-successful':
        return MaterialPageRoute(
          builder: (context) => StoreTransactionSuccessfulScreen(),
        );

      case '/transfer-receipt':
        return MaterialPageRoute(
          builder: (context) => TransferReceiptScreen(),
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
