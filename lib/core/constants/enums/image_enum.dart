import 'package:flutter/material.dart';

enum ImageEnum {
  splashBackground('splashBackground'),
  onboarding('onboarding'),
  user('user');

  final String value;
  const ImageEnum(this.value);

  String get toPng => 'assets/images/$value.png';

  Image toImage({double? width, double? height}) {
    return Image.asset(toPng, width: width, height: height);
  }
}
