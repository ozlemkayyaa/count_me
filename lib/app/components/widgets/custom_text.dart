import 'package:flutter/material.dart';

Text customText(
        {required String title,
        Color? color,
        double? fontSize,
        FontWeight? fontWeight}) =>
    Text(
      title,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
