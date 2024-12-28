import 'package:count_me/core/constants/app/app_key.dart';
import 'package:flutter/material.dart';

class SnackbarManager {
  SnackbarManager._();

  static void showSnackBar({
    required String message,
    Color backgroundColor = Colors.black,
    TextStyle? textStyle,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldMessengerKey?.currentState?.showSnackBar(
        SnackBar(
          backgroundColor: backgroundColor,
          content: Text(
            message,
            style: textStyle ?? const TextStyle(color: Colors.white),
          ),
        ),
      );
    });
  }
}
