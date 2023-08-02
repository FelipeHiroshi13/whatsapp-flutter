import 'package:flutter/material.dart';

class ErrorState extends StatelessWidget {
  const ErrorState({
    Key? key,
    required this.errorText,
  }) : super(key: key);

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorText),
    );
  }
}
