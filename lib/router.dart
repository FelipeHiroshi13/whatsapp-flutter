import 'package:flutter/material.dart';
import 'package:whatsapp_ui/auth/screens/otp_screen.dart';

import 'auth/screens/login_screen.dart';
import 'core/commom_widgets/error_state.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationId: verificationId,
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorState(
            errorText: 'This page does not exist',
          ),
        ),
      );
  }
}
