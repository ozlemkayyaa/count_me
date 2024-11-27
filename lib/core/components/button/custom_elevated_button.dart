import 'package:flutter/material.dart';

/// Custom ElevatedButton with a customizable onPressed action.
/// Currently has default styling and no child widget.
ElevatedButton customElevatedButton({
  required void Function()? onPressed,
  required Widget child,
  Color? backgroundColor,
}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: const Size(320, 65),
      ),
      onPressed: onPressed,
      child: child,
    );
