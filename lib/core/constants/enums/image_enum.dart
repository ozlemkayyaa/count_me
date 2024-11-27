import 'package:flutter/material.dart';

enum ImageEnum {
  onboarding('onboarding'),
  google('google'),
  appIcon('appIcon'),
  user('user');

  final String value;
  const ImageEnum(this.value);

  String get toPng => 'assets/$value.png';

  Image toImage({double? width, double? height}) {
    return Image.asset(toPng, width: width, height: height);
  }
}
