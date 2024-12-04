import 'package:flutter/material.dart';

enum IconEnum {
  googleIcon('googleIcon'),
  appIcon('appIcon');

  final String value;
  const IconEnum(this.value);

  String get toPng => 'assets/icons/$value.png';

  Image toImage({double? width, double? height}) {
    return Image.asset(toPng, width: width, height: height);
  }
}
