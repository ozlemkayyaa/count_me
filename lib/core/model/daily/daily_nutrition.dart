import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_nutrition.freezed.dart';
part 'daily_nutrition.g.dart';

@freezed
class DailyNutrition with _$DailyNutrition {
  factory DailyNutrition({
    DateTime? date, // Günün tarihi
    double? calories, // Toplam kalori
    double? protein, // Protein oranı
    double? fat, // Yağ oranı
    double? carbs, // Karbonhidrat oranı
  }) = _DailyNutrition;

  factory DailyNutrition.fromJson(Map<String, dynamic> json) =>
      _$DailyNutritionFromJson(json);
}
