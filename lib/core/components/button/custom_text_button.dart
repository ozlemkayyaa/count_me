import 'package:flutter/material.dart';

TextButton customTextButton({
  required void Function()? onPressed,
  required Widget child,
  Color? backgroundColor,
}) =>
    TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: child,
    );
