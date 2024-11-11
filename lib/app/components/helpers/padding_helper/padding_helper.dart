import 'package:flutter/material.dart';

final class PaddingType {
  PaddingType._();
}

///Project's global padding class
enum PaddingHelper {
  ///This value is 5
  xxsmall(5),

  ///This value is 6
  xsmall(6),

  ///This value is 8
  small(8),

  ///This value is 12
  smallMedium(12),

  ///This value is 16
  medium(16),

  ///This value is 18
  mediumLarge(18),

  ///This value is 20
  large(20),

  ///This value is 24
  fixed(24),

  ///This value is 32
  xLarge(32),

  ///This value is 50
  xxLarge(50),

  ///This value is 80
  xxxLarge(80),

  top(160);

  final double value;

  const PaddingHelper(this.value);

  /// Padding All
  EdgeInsets get all => EdgeInsets.all(value);

  /// Padding symmetric
  EdgeInsets get symmetric =>
      EdgeInsets.symmetric(horizontal: value, vertical: value);

  /// Padding only
  EdgeInsets get onlyPadding =>
      EdgeInsets.only(left: value, right: value, top: value, bottom: value);

  EdgeInsets getPadding(
      {bool left = false,
      bool right = false,
      bool top = false,
      bool bottom = false}) {
    return EdgeInsets.only(
      left: left ? value : 0.0,
      right: right ? value : 0.0,
      top: top ? value : 0.0,
      bottom: bottom ? value : 0.0,
    );
  }
}
