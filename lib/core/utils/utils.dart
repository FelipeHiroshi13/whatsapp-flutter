import 'package:flutter/material.dart';

import '../../main.dart';

void showSnackBar({required String content}) {
  if (rootScaffoldMessengerKey.currentState != null) {
    rootScaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(content),
      ),
    );
  }
}
