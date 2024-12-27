// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyProgressImpl _$$DailyProgressImplFromJson(Map<String, dynamic> json) =>
    _$DailyProgressImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => MealModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nutritionData: (json['nutritionData'] as List<dynamic>?)
          ?.map((e) => DailyNutrition.fromJson(e as Map<String, dynamic>))
          .toList(),
      weightData: (json['weightData'] as List<dynamic>?)
          ?.map((e) => WeightModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      waterIntakeData: (json['waterIntakeData'] as List<dynamic>?)
          ?.map((e) => DailyWaterIntake.fromJson(e as Map<String, dynamic>))
          .toList(),
      mood: json['mood'] as String?,
      isActive: json['isActive'] as bool?,
      streakDays: (json['streakDays'] as num?)?.toInt(),
      caloriesGoalMet: json['caloriesGoalMet'] as bool?,
      waterGoalMet: json['waterGoalMet'] as bool?,
    );

Map<String, dynamic> _$$DailyProgressImplToJson(_$DailyProgressImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'meals': instance.meals,
      'nutritionData': instance.nutritionData,
      'weightData': instance.weightData,
      'waterIntakeData': instance.waterIntakeData,
      'mood': instance.mood,
      'isActive': instance.isActive,
      'streakDays': instance.streakDays,
      'caloriesGoalMet': instance.caloriesGoalMet,
      'waterGoalMet': instance.waterGoalMet,
    };
