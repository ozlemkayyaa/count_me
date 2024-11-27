import 'package:easy_localization/easy_localization.dart';

// String için bir özellik eklenir, metni çevirmek için kullanılır.
extension StringLocalization on String {
  // String'in yerelleştirilmiş (çevirilmiş) halini döndürür.
  String get locale => this.tr();
}
