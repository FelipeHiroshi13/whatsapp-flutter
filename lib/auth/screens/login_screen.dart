import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/core/commom_widgets/custom_button.dart';
import 'package:whatsapp_ui/core/constants/app_sizes.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void pickCountry() {
    showCountryPicker(
      context: context,
      onSelect: (_country) {
        setState(() {
          country = _country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('WhatsApp need to verify your phone number'),
            gapH12,
            TextButton(
              onPressed: pickCountry,
              child: const Text('Pick Country'),
            ),
            gapH4,
            Row(
              children: [
                if (country != null) Text('+${country!.phoneCode}'),
                gapW12,
                SizedBox(
                  width: size.width * .7,
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      hintText: 'phone number',
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
              child: CustomButton(text: 'NEXT', onPressed: () {}),
            ),
            gapH20,
          ],
        ),
      ),
    );
  }
}
