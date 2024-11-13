import 'package:flutter/material.dart';

enum ImageConstants {
  onboarding('onboarding'),
  google('google'),
  appIcon('appIcon'),
  user('user');

  final String value;
  // ignore: sort_constructors_first
  const ImageConstants(this.value);

  String get toPng => 'assets/$value.png';

  Image toImage({double? width, double? height}) {
    return Image.asset(toPng, width: width, height: height);
  }
}
