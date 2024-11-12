enum SizedBoxHeight {
  small(8.0),
  medium(16.0),
  large(40.0),
  xxLarge(50.0),
  xxxLarge(80.0),
  top(160.0),
  modal(270);

  final double value;
  const SizedBoxHeight(this.value);
}

enum SizedBoxWidth {
  small(8.0),
  smallMedium(12.0),
  medium(16.0),
  large(40.0);

  final double value;
  const SizedBoxWidth(this.value);
}
