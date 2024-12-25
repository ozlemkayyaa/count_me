// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyProgressImpl _$$DailyProgressImplFromJson(Map<String, dynamic> json) =>
    _$DailyProgressImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      nutritionData: (json['nutritionData'] as List<dynamic>?)
          ?.map((e) => DailyNutrition.fromJson(e as Map<String, dynamic>))
          .toList(),
      weightData: (json['weightData'] as List<dynamic>?)
          ?.map((e) => DailyWeight.fromJson(e as Map<String, dynamic>))
          .toList(),
      waterIntakeData: (json['waterIntakeData'] as List<dynamic>?)
          ?.map((e) => DailyWaterIntake.fromJson(e as Map<String, dynamic>))
          .toList(),
      mealCalories: (json['mealCalories'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      mood: json['mood'] as String?,
      isActive: json['isActive'] as bool?,
      streakDays: (json['streakDays'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DailyProgressImplToJson(_$DailyProgressImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'nutritionData': instance.nutritionData,
      'weightData': instance.weightData,
      'waterIntakeData': instance.waterIntakeData,
      'mealCalories': instance.mealCalories,
      'mood': instance.mood,
      'isActive': instance.isActive,
      'streakDays': instance.streakDays,
    };
