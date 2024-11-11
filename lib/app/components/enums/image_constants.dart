import 'package:flutter/material.dart';

enum ImageConstants {
  onboarding1('onboarding1'),
  appIcon('app_logo'),
  ;

  final String value;
  // ignore: sort_constructors_first
  const ImageConstants(this.value);

  String get toPng => 'assets/$value.png';

  Image toImage({double? width, double? height}) {
    return Image.asset(toPng, width: width, height: height);
  }
}
