import 'package:count_me/core/model/daily/daily_nutrition.dart';
import 'package:count_me/core/model/daily/daily_water_intake.dart';
import 'package:count_me/core/model/meal/meal_model.dart';
import 'package:count_me/core/model/daily/weight_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_progress.freezed.dart';
part 'daily_progress.g.dart';

@freezed
class DailyProgress with _$DailyProgress {
  factory DailyProgress({
    DateTime? date, // Günün tarihi
    List<MealModel>? meals, // Günlük öğünler
    List<DailyNutrition>? nutritionData,
    List<WeightModel>? weightData, // Ağırlık geçmişi
    List<DailyWaterIntake>? waterIntakeData, // Su tüketim geçmişi
    String? mood, // Ruh hali (ör. happy, sad)
    bool? isActive, // Kullanıcı o gün aktif mi?
    int? streakDays, // Kaç gün üst üste devam etmiş?
    bool? caloriesGoalMet, // Günlük kalori hedefi karşılanmış mı?
    bool? waterGoalMet, // Su tüketim hedefi karşılanmış mı?
  }) = _DailyProgress;

  factory DailyProgress.fromJson(Map<String, dynamic> json) =>
      _$DailyProgressFromJson(json);
}
