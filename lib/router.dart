import 'package:flutter/material.dart';

import 'auth/screens/login_screen.dart';
import 'core/commom_widgets/error_state.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
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
