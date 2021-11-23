import 'package:cryptocash/screens/auth_screen/boarding_screen.dart';
import 'package:cryptocash/screens/auth_screen/business_signup_screen/business_setpass_screen.dart';
import 'package:cryptocash/screens/auth_screen/business_signup_screen/business_signup_screen.dart';
import 'package:cryptocash/screens/auth_screen/business_signup_screen/business_verify_screen.dart';
import 'package:cryptocash/screens/auth_screen/login_screen/login_screen.dart';
import 'package:cryptocash/screens/auth_screen/login_screen/loginverify_screen.dart';
import 'package:cryptocash/screens/auth_screen/personal_signup_screen/personal_setpass_screen.dart';
import 'package:cryptocash/screens/auth_screen/personal_signup_screen/personal_signup_screen.dart';
import 'package:cryptocash/screens/auth_screen/personal_signup_screen/personal_verify_screen.dart';
import 'package:cryptocash/screens/auth_screen/reset_pass_verify_screen.dart';
import 'package:cryptocash/screens/auth_screen/resetpass_screen.dart';
import 'package:cryptocash/screens/auth_screen/settranspass_screen.dart';
import 'package:cryptocash/screens/auth_screen/usecase_screen.dart';
import 'package:cryptocash/screens/get_vpkr_screen/convert_coins_screen/get_vpkr_convert_coins_screen.dart';
import 'package:cryptocash/screens/get_vpkr_screen/convert_coins_screen/get_vpkr_purchase_success_screen.dart';
import 'package:cryptocash/screens/get_vpkr_screen/get_vpkr_load_success_screen.dart';
import 'package:cryptocash/screens/get_vpkr_screen/get_vpkr_payment_option_screen.dart';
import 'package:cryptocash/screens/get_vpkr_screen/merchant_load_screen/get_vpkr_merchant_load_screen.dart';
import 'package:cryptocash/screens/home_screen/home_screen.dart';
import 'package:cryptocash/screens/manage_wallet_screen/deposit_screen.dart';
import 'package:cryptocash/screens/manage_wallet_screen/manage_wallet_screen.dart';
import 'package:cryptocash/screens/manage_wallet_screen/withdraw_complete_screen.dart';
import 'package:cryptocash/screens/manage_wallet_screen/withdraw_screen.dart';
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
          settings: settings,
        );
      case '/usecase':
        return MaterialPageRoute(
          builder: (context) => UseCaseScreen(),
          settings: settings,
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
          settings: settings,
        );
      case '/login-verify':
        return MaterialPageRoute(
          builder: (context) => LoginVerifyScreen(),
          settings: settings,
        );
      case '/business-set-pass':
        return MaterialPageRoute(
          builder: (context) => BusinessSetPassScreen(),
          settings: settings,
        );
      case '/business-signup':
        return MaterialPageRoute(
          builder: (context) => BusinessSignupScreen(),
          settings: settings,
        );
      case '/business-verify':
        return MaterialPageRoute(
          builder: (context) => BusinessVerifyScreen(),
          settings: settings,
        );
      case '/personal-signup':
        return MaterialPageRoute(
          builder: (context) => PersonalSignupScreen(),
          settings: settings,
        );
      case '/personal-set-pass':
        return MaterialPageRoute(
          builder: (context) => PersonalSetPassScreen(),
          settings: settings,
        );
      case '/personal-verify':
        return MaterialPageRoute(
          builder: (context) => PersonalVerifyScreen(),
          settings: settings,
        );
      case '/reset-pass-verify':
        return MaterialPageRoute(
          builder: (context) => ResetPassVerifyScreen(),
          settings: settings,
        );
      case '/reset-pass':
        return MaterialPageRoute(
          builder: (context) => ResetPassScreen(),
          settings: settings,
        );
      case '/set-trans-pass':
        return MaterialPageRoute(
          builder: (context) => SetTransPassScreen(),
          settings: settings,
        );
      case '/reset-trans-pass-verify':
        return MaterialPageRoute(
          builder: (context) => ResetTransPassVerifyScreen(),
          settings: settings,
        );
      case '/reset-trans-pass':
        return MaterialPageRoute(
          builder: (context) => ResetTransPassScreen(),
          settings: settings,
        );
      case '/home':
        final _initialIndex = args != null ? args as int : 0;
        return MaterialPageRoute(
          builder: (context) => HomeScreen(
            initialIndex: _initialIndex,
          ),
          settings: settings,
        );
      case '/opened-notification':
        final _notification = args as C2Notification;
        return MaterialPageRoute(
          builder: (context) => OpenedNotificationScreen(
            notification: _notification,
          ),
          settings: settings,
        );
      case '/rewards':
        return MaterialPageRoute(
          builder: (context) => RewardsScreen(),
          settings: settings,
        );
      case '/convert-point-to-vpkr':
        return MaterialPageRoute(
          builder: (context) => ConvertPointToVpkrScreen(),
          settings: settings,
        );
      case '/cp-convert-success':
        return MaterialPageRoute(
          builder: (context) => CpConvertSuccessScreen(),
          settings: settings,
        );
      case '/donation-appreciation':
        return MaterialPageRoute(
          builder: (context) => DonationAppreciationScreen(),
          settings: settings,
        );
      case '/get-vpkr-convert-coins':
        return MaterialPageRoute(
          builder: (context) => GetVpkrConvertCoinsScreen(),
          settings: settings,
        );
      case '/get-vpkr-payment-option':
        return MaterialPageRoute(
          builder: (context) => GetVpkrPaymentOptionScreen(),
          settings: settings,
        );
      case '/get-vpkr-purchase-success':
        return MaterialPageRoute(
          builder: (context) => GetVpkrPurchaseSuccessScreen(),
          settings: settings,
        );
      case '/get-vpkr-merchant-load':
        return MaterialPageRoute(
          builder: (context) => GetVpkrMerchantLoadScreen(),
          settings: settings,
        );
      case '/get-vpkr-load-success':
        return MaterialPageRoute(
          builder: (context) => GetVpkrLoadSuccessScreen(),
          settings: settings,
        );
      case '/scan':
        return MaterialPageRoute(
          builder: (context) => ScanScreen(),
          settings: settings,
        );
      case '/store-connected':
        return MaterialPageRoute(
          builder: (context) => StoreConnectedScreen(),
          settings: settings,
        );
      case '/store-transaction-successful':
        return MaterialPageRoute(
          builder: (context) => StoreTransactionSuccessfulScreen(),
          settings: settings,
        );

      case '/transfer-receipt':
        return MaterialPageRoute(
          builder: (context) => TransferReceiptScreen(),
          settings: settings,
        );
      case '/manage-wallet':
        return MaterialPageRoute(
          builder: (context) => ManageWalletScreen(),
          settings: settings,
        );
      case '/deposit-coin':
        return MaterialPageRoute(
          builder: (context) => DepositScreen(),
          settings: settings,
        );
      case '/withdraw-coin':
        return MaterialPageRoute(
          builder: (context) => WithdrawScreen(),
          settings: settings,
        );
      case '/withdraw-complete':
        return MaterialPageRoute(
          builder: (context) => WithdrawCompleteScreen(),
          settings: settings,
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
