import 'package:count_me/core/model/daily_nutrition.dart';
import 'package:count_me/core/model/daily_water_intake.dart';
import 'package:count_me/core/model/daily_weight.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_progress.freezed.dart';
part 'daily_progress.g.dart';

@freezed
class DailyProgress with _$DailyProgress {
  factory DailyProgress({
    DateTime? date,
    List<DailyNutrition>? nutritionData,
    List<DailyWeight>? weightData,
    List<DailyWaterIntake>? waterIntakeData,
    Map<String, double>? mealCalories, // breakfast, lunch, vb.
    String? mood, // optional: happy, sad, etc.
    bool? isActive,
    int? streakDays,
  }) = _DailyProgress;

  factory DailyProgress.fromJson(Map<String, dynamic> json) =>
      _$DailyProgressFromJson(json);
}
