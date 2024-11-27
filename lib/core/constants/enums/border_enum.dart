import 'package:flutter/material.dart';

final class BorderEnum {
  BorderEnum._();
}

///Project's global padding class
enum BorderHelper {
  ///This value is 10
  small(10),

  ///This value is 20
  fix(20.0),

  ///This value is 30
  medium(30),

  ///This value is 48
  large(48),

  ///This value is 60
  xLarge(60),

  ///This value is 74
  xxLarge(74);

  final double value;
  const BorderHelper(this.value);

  BorderRadius get circularRadius => BorderRadius.circular(value);

  BorderRadiusGeometry get onlyTop => BorderRadius.only(
        topLeft: Radius.circular(value),
        topRight: Radius.circular(value),
      );

  BorderRadiusGeometry get onlyBottom => BorderRadius.only(
        bottomLeft: Radius.circular(value),
        bottomRight: Radius.circular(value),
      );

  InputBorder get outlineBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(value),
        borderSide: BorderSide.none,
      );
}
