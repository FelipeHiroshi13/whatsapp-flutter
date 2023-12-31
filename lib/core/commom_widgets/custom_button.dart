import 'package:flutter/material.dart';
import 'package:whatsapp_ui/core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: blackColor),
      ),
      style: ElevatedButton.styleFrom(
          primary: tabColor,
          minimumSize: const Size(
            double.infinity,
            50,
          )),
    );
  }
}
