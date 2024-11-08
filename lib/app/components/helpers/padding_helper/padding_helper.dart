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
  xxLarge(50);

  final double value;
  const PaddingHelper(this.value);

  EdgeInsets get all => EdgeInsets.all(
        value,
      );

  EdgeInsets get onlyHorizontal => EdgeInsets.symmetric(
        horizontal: value,
      );

  EdgeInsets get onlyVertical => EdgeInsets.symmetric(
        vertical: value,
      );

  EdgeInsets get onlyRight => EdgeInsets.only(
        right: value,
      );

  EdgeInsets get onlyBottom => EdgeInsets.only(
        bottom: value,
      );

  EdgeInsets get symetricVerticalx2 => EdgeInsets.symmetric(
        horizontal: value,
        vertical: value * 2,
      );
}
