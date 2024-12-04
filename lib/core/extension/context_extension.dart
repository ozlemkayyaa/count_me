import 'package:flutter/material.dart';

// BuildContext üzerinden MediaQuery'e hızlı erişim sağlar
extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

// Ekran boyutları ve göreceli değerler sağlar
extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get ultraLowValue => height * 0.01; // Ultra küçük birim
  double get extraLowValue => height * 0.02; // Ekstra küçük birim
  double get lowValue => height * 0.03; // Küçük birim
  double get normalValue => height * 0.04; // Normal birim
  double get mediumValue => height * 0.06; // Orta birim
  double get highValue => height * 0.1; // Büyük birim
  double get extraHighValue => height * 0.15; // Ekstra büyük birim
  double get ultraHighValue => height * 0.2; // Ultra büyük birim
}

// Tema ve yazı tipi teması için hızlı erişim sağlar
extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}

// Tüm kenarlar için padding değerleri sağlar
extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingUltraLow => EdgeInsets.all(ultraLowValue);
  EdgeInsets get paddingExtraLow => EdgeInsets.all(extraLowValue);
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);
  EdgeInsets get paddingExtraHigh => EdgeInsets.all(extraHighValue);
  EdgeInsets get paddingUltraHigh => EdgeInsets.all(ultraHighValue);
}

// Simetrik padding değerleri için kısayol sağlar
extension PaddingExtensionSymetric on BuildContext {
  EdgeInsets get paddingExtraLowVertical =>
      EdgeInsets.symmetric(vertical: extraLowValue);
  EdgeInsets get paddingLowVertical => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingNormalVertical =>
      EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get paddingMediumVertical =>
      EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingHighVertical =>
      EdgeInsets.symmetric(vertical: highValue);
  EdgeInsets get paddingExtraHighVertical =>
      EdgeInsets.symmetric(vertical: extraHighValue);
  EdgeInsets get paddingUltraHighVertical =>
      EdgeInsets.symmetric(vertical: ultraHighValue);
  EdgeInsets get paddingUltraLowVertical =>
      EdgeInsets.symmetric(vertical: ultraLowValue);

  EdgeInsets get paddingExtraLowHorizontal =>
      EdgeInsets.symmetric(horizontal: extraLowValue);
  EdgeInsets get paddingLowHorizontal =>
      EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingNormalHorizontal =>
      EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get paddingMediumHorizontal =>
      EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHighHorizontal =>
      EdgeInsets.symmetric(horizontal: highValue);
  EdgeInsets get paddingExtraHighHorizontal =>
      EdgeInsets.symmetric(horizontal: extraHighValue);
  EdgeInsets get paddingUltraHighHorizontal =>
      EdgeInsets.symmetric(horizontal: ultraHighValue);
  EdgeInsets get paddingUltraLowHorizontal =>
      EdgeInsets.symmetric(horizontal: ultraLowValue);
}

// Farklı süreler için kısayol sağlar
extension DurationExtension on BuildContext {
  Duration get lowDuration => const Duration(milliseconds: 500); // Kısa süre
  Duration get normalDuration => const Duration(seconds: 1); // Normal süre
  Duration get longDuration => const Duration(seconds: 2); // Uzun süre
}

// Cihaz boyutuna göre dinamik genişlik ve yükseklik sağlar
extension AdaptiveExtension on BuildContext {
  double dynamicWidth(double percentage) =>
      width * percentage; // Genişlik oranı
  double dynamicHeight(double percentage) =>
      height * percentage; // Yükseklik oranı

  bool get isSmallDevice =>
      width < (mediaQuery.size.shortestSide * 0.6); // Küçük cihazlar
  bool get isLargeDevice =>
      width > (mediaQuery.size.shortestSide * 1.2); // Büyük cihazlar
}

// Simge boyutları için kısa yollar sağlar
extension IconSizeExtension on BuildContext {
  double get smallIconSize => width * 0.05; // Küçük simge boyutu
  double get mediumIconSize => width * 0.08; // Orta simge boyutu
  double get largeIconSize => width * 0.12; // Büyük simge boyutu
}

// Kenar yuvarlama değerleri için kısa yollar sağlar
extension BorderRadiusExtension on BuildContext {
  BorderRadius get extraLowRadius =>
      BorderRadius.circular(extraLowValue); // Ekstra küçük radius
  BorderRadius get lowRadius => BorderRadius.circular(lowValue); // Küçük radius
  BorderRadius get mediumRadius =>
      BorderRadius.circular(mediumValue); // Orta radius
  BorderRadius get highRadius =>
      BorderRadius.circular(highValue); // Büyük radius
  BorderRadius get extraHighRadius =>
      BorderRadius.circular(extraHighValue); // Ekstra büyük radius
  BorderRadius get ultraHighRadius =>
      BorderRadius.circular(ultraHighValue); // Ultra büyük radius
  BorderRadius get ultraLowRadius =>
      BorderRadius.circular(ultraLowValue); // Ultra küçük radius
}

// Platform kontrolü için yardımcı araçlar sağlar
extension PlatformExtension on BuildContext {
  bool get isIOS =>
      Theme.of(this).platform == TargetPlatform.iOS; // iOS cihaz mı?
  bool get isAndroid =>
      Theme.of(this).platform == TargetPlatform.android; // Android cihaz mı?
}
