import 'package:flutter/material.dart';
import 'package:whatsapp_ui/auth/screens/login_screen.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/core/commom_widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Welcome to WhatsApp',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 340,
              width: 340,
            ),
            SizedBox(
              height: size.height / 9,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Read our privacy policy',
                style: TextStyle(color: greyColor),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                text: 'AGREE AND CONTINUE',
                onPressed: () => navigateToLoginScreen(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
