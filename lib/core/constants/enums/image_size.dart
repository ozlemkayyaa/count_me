enum ImageSize {
  small(16),

  iconImage(24),

  icon(30),

  meal(50),

  paywall(120),

  profilePhoto(150),

  logo(205),

  water(225),

  high(380),
  doubleHeight(400);

  final double value;

  const ImageSize(this.value);
}
// TODO: media query extension yaz bunları kullanma 